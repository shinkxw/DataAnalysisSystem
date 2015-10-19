#!/usr/bin/env ruby -w
# encoding: GBK
#工作区类
class MDWork_Area
  attr_reader :area#元数据域
  @@data_path = "#{$root}/data"
  @@temporary_path = "#{@@data_path}/temporary"
  @@backup_path = "#{@@data_path}/backup"
  @@enter_path = "#{$root}/enter"
  @@backup_max_num = 1
  #初始化
  def initialize(area)
    @area,@doc = area,nil
    @area.is_valid?
    @area.sort_table
    save_to_temporary
    #backup_work_area
  end
  #输出所有
  def export_all(need_commit = true)
    @vc = MDVCer.new(self)
    if (need_commit)
      fs_config = {'@sql'=>"#{$fs_root}/BASE",'@view'=>"#{$fs_root}/VIEW",
                  '@tableinfo'=>"#{$fs_root}/表信息",
                  'HANRU_bz'=>$fs_root,'HANRU_yw'=>$fs_root,'HANRU_view'=>$fs_root}
      MDDoc.set_fsc(fs_config)
    end
    export_sql;export_sql(false)
    export_view;export_view(false)
    export_model;export_template
    export_tableinfo;
    MDDoc.set_fsc(nil) if need_commit
    #SVN.commit($fs_root) if need_commit
  end
  #固化元数据并关闭工作环境
  def save_and_close_work_area
    save_data
    DirManager.clear_dir(@@temporary_path)#清空临时文件夹
    @area = nil
  end
  #固化数据
  def save_data
    reset_doc
    folder_path = "#{@@data_path}/#{@area.name}_area/"
    DirManager.clear_dir(folder_path)#清空文件夹
    @doc.hash_out(folder_path)
  end
  #将文档存入临时区
  def save_to_temporary
    reset_doc if @doc == nil
    DirManager.clear_dir(@@temporary_path)#清空文件夹
    @doc.hash_out("#{@@temporary_path}/")
  end
  #备份文档
  def backup_work_area
    reset_doc if @doc == nil
    @doc.hash_out("#{@@backup_path}/#{@area.name}_area/#{Time.now.strftime("%y%m%d %H%M%S")}/")
    clean_backup
  end
  #清理指定元数据的备份区
  def clean_backup
    dir_path_arr = DirManager.get_dir_path("#{@@backup_path}/#{@area.name}_area/")
    if dir_path_arr.size > @@backup_max_num
      dir_path_arr.sort! {|a, b| File::ctime(a) <=> File::ctime(b)}
      dir_path_arr.pop(@@backup_max_num)
      dir_path_arr.each{|dir_path| DirManager.remove_dir(dir_path)}
    end
  end
  #输出Sql脚本
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
  #输出创建视图语句
  def export_view(build_folder = true, need_delete = true)
    builder = ViewBuilder.new(need_delete)
    build_folder ? builder.build_hash(@area).export : builder.build(@area).export
  end
  #输出实体验证数据
  def export_model;ModelBuilder.new.build(@area).export end
  #输出模板数据
  def export_template;TemplateBuilder.new.build(@area).export end
  #输出标准模板数据
  def export_bztemplate;BzTemplateBuilder.new.build(@area).export end
  #输出表信息
  def export_tableinfo;TableinfoBuilder.new.build(@area).export end
  #输出Word版表信息
  def export_wordinfo;WordinfoBuilder.build(@area).export end
  #输出自定义信息
  def auto_export(name,build_proc);Builder.build(name,@area,build_proc).export end
  #输出测试数据
  def export_testdata(config);TestdataBuilder.new.build_sd(@area,config).export end
  #输出数据迁移脚本
  def export_migrate_config
    build_proc = Proc.new do |str|
      export = {}
      @area.get_table_arr do |table|
        ostr = ""
        table.field_area.each do |field|
          ostr << "             #{field.name}: { fn: '', p: Proc.new{|i| ''}},\n"
        end
        export["#{table.library_name.upcase}/#{table.name}.txt"] = ostr
      end
      export
    end
    auto_export('migrate_config',build_proc)
  end
  private#重新生成元数据文档
  def reset_doc;@doc = DafBuilder.new.build(@area) end
end
