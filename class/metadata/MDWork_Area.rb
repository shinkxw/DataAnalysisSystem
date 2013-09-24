#!/usr/bin/env ruby -w
# encoding: GBK
#��������
class MDWork_Area
  attr_reader :area#Ԫ������
  @@data_path = "#{$root}/data"
  @@temporary_path = "#{@@data_path}/temporary"
  @@backup_path = "#{@@data_path}/backup"
  @@enter_path = "#{$root}/enter"
  @@backup_max_num = 5
  #��ʼ��
  def initialize(area)
    @area = area
    @doc = nil
    @area.is_valid?
    save_to_temporary
    backup_work_area
  end
  #�������
  def export_all(need_commit = false)
    fs_root = 'D:\������\����\Trunk\DB\SQL'
    fs_config = {'@sql'=>"#{fs_root}/BASE",
                 '@view'=>"#{fs_root}/VIEW",
                 'HANRU_bz'=>fs_root,
                 'HANRU_yw'=>fs_root,
                 'HANRU_view'=>fs_root}
    MDDoc.set_fsc(fs_config)
    export_sql
    export_sql(false)
    export_view
    export_view(false)
    export_model
    export_template
    export_tableinfo
    export_migrate_config
    MDDoc.set_fsc(nil)
    SVN.commit('D:\������\����\Trunk\DB\SQL') if need_commit
  end
  #�̻�Ԫ���ݲ��رչ�������
  def save_and_close_work_area
    save_data
    DirManager.clear_dir(@@temporary_path)#�����ʱ�ļ���
    @area = nil
  end
  #�̻�����
  def save_data
    reset_doc
    folder_path = "#{@@data_path}/#{@area.name}_area/"
    DirManager.clear_dir(folder_path)#����ļ���
    @doc.hash_out(folder_path)
  end
  #���ĵ�������ʱ��
  def save_to_temporary
    reset_doc if @doc == nil
    DirManager.clear_dir(@@temporary_path)#����ļ���
    @doc.hash_out("#{@@temporary_path}/")
  end
  #�����ĵ�
  def backup_work_area
    reset_doc if @doc == nil
    @doc.hash_out("#{@@backup_path}/#{@area.name}_area/#{Time.now.strftime("%y%m%d %H%M%S")}/")
    clean_backup
  end
  #����ָ��Ԫ���ݵı�����
  def clean_backup
    dir_path_arr = DirManager.get_dir_path("#{@@backup_path}/#{@area.name}_area/")
    if dir_path_arr.size > @@backup_max_num
      dir_path_arr.sort! {|a, b| File::ctime(a) <=> File::ctime(b)}
      dir_path_arr.pop(@@backup_max_num)
      dir_path_arr.each do |dir_path|
        DirManager.remove_dir(dir_path)
        #puts "MDWork_Area: ����#{dir_path}��ɾ��"
      end
    end
  end
  #��ʾ�������������ݿ��Ĳ���(˵����)
  def show_db_diff(db,is_exp = true)
    diff = compare_db(db)
    diff.has_diff? ? diff.send('show_diff' << (is_exp ? '' : '2')) : puts('û�в���')
  end
  #ʹ�ñ�������������ݿ��ṹ
  def update_db(db)
    puts "\n��ʼ�������ݿ�"
    diff = compare_db(db)
    if diff.has_diff?
      puts "\n���������ߵĲ���:\n"#��ʾ����
      diff.show_diff
      puts "\n���ڸ������ݿ����..."#ʹ�ýű������촦����
      diff.db_transform(db)
      puts "\n�ٴαȽ����߲���..."
      diff = compare_db(db)
      if diff.has_diff?
        puts "\n���ݿ������²�δ�ɹ���"#����
        puts 'δ��������Ϊ��'#��ʾδ��������
        diff.show_diff
      else
        puts "\n����ɾ��������ͼ..."
        db.delete_all_view#ɾ��������ͼ
        puts "\n����������ͼ..."
        view_str = ViewBuilder.new(true).build(@area).get_data_str
        db.execute(view_str)
        puts "\n���ݿ���³ɹ�"
      end
    else
      puts '���ݿ��ṹ�빤����һ�£��������'
    end
  end
  #��ָ�����ݿ��еı�ṹ���бȽ�
  def compare_db(db)
    puts '�Ƚ���...'
    MDDiffer.new.compare_area(db.get_db_area,@area)
  end
  #���Sql�ű�
  def export_sql(build_folder = true, need_delete = true, need_data = false)
    builder = SqlBuilder.new(need_delete,need_data)
    builder.need_data_name_space_arr = %w(EDU_GB EDU_JY EDU_ZJ EDU_ZZ EDU_SYS)
    if build_folder
      builder.build_hash(@area).export
    else
      builder.build_bz(@area).export
      builder.build_yw(@area).export
    end
  end
  #���������ͼ���
  def export_view(build_folder = true, need_delete = true)
    builder = ViewBuilder.new(need_delete)
    build_folder ? builder.build_hash(@area).export : builder.build(@area).export
  end
  #���ʵ����֤����
  def export_model;ModelBuilder.new.build(@area).export end
  #���ģ������
  def export_template;TemplateBuilder.new.build(@area).export end
  #�������Ϣ
  def export_tableinfo;TableinfoBuilder.new.build(@area).export end
  #����Զ�����Ϣ
  def auto_export(name,build_proc);Builder.build(name,@area,build_proc).export end
  #�����������
  def export_testdata(config);TestdataBuilder.new.build_sd(@area,config).export end
  #�������Ǩ�ƽű�
  def export_migrate_config
    build_proc = Proc.new do |str|
      export = {}
      area.each do |name_space|
        name_space.each do |table|
          ostr = ""
          table.field_area.each do |field|
            ostr << "             #{field.name}: { fn: '', p: Proc.new{|i| ''}},\n"
          end
          export["#{table.library_name.upcase}/#{table.name}.txt"] = ostr
        end
      end
      export
    end
    auto_export('migrate_config',build_proc)
  end
  private#��������Ԫ�����ĵ�
  def reset_doc;@doc = DafBuilder.new.build(@area) end
end
