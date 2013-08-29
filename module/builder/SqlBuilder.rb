#!/usr/bin/env ruby -w
# encoding: GBK
#sql���������
class SqlBuilder
  attr_reader :area#�����ɵ�Ԫ����
  attr_reader :sql_str#���ɵ�sql���
  attr_reader :need_delete#�Ƿ�����ɾ�����
  attr_reader :need_data#�Ƿ�����������
  attr_reader :builder_version#�������汾
  attr_accessor :need_data_name_space_arr#��Ҫ�������ݵ������ռ���������
  #��ʼ��
  def initialize(need_delete = true,need_data = false,log = Log.new)
    @area = nil
    @sql_str = nil
    @need_delete = need_delete
    @need_data = need_data
    @builder_version = "0.1"
    @need_data_name_space_arr = []
    @log = log
  end
  #������Ҫ�����ݵı�ű�
  def build_bz(area)
    @area = area
    @sql_str = ""
    @area.select{|np| need_data?(np.name)}.each{|np| add_name_space_script(np)}
    MDDoc.new('sql',"#{@area.name}_bz",@sql_str,'sql')
  end
  #���ɲ���Ҫ�����ݵı�ű�
  def build_yw(area)
    @area = area
    @sql_str = ""
    @area.select{|np| !need_data?(np.name)}.each{|np| add_name_space_script(np)}
    MDDoc.new('sql',"#{@area.name}_yw",@sql_str,'sql')
  end
  #����sql�ű���ϣ��
  def build_hash(area)
    @area = area
    sql_str_hash = {}
    @area.each do |name_space|
      @sql_str = ""
      add_name_space_script(name_space)
      sql_str_hash["#{name_space.name}.sql"] = @sql_str
    end
    MDDoc.new("sql",@area.name,sql_str_hash)
  end
  #���ݱ����б�����ָ������������(�������ݿ����)
  def build_update(area,table_name_arr)
    @area = area
    @sql_str = ""
    @area.each do |name_space|
      name_space.each do |table|
        if table_name_arr.include?(table.name)
          delete_table(table.name)
          add_table_script(table)
          add_table_explanation(table)
          @sql_str << "\n"
        end
      end
    end
    @sql_str
  end
  #����ָ�������ռ�Ľű����
  def add_name_space_script(name_space)
    @sql_str << "--�ռ�����#{name_space.name}  ��������SqlBuilder#{@builder_version}\n"
    delete_name_space(name_space) if @need_delete
    #���ݸ�������Ϣ����������������
    name_space.each do |table|
      add_table_script(table)
      add_data(table) if @need_data || need_data?(name_space.name)
    end
    add_name_space_explanation(name_space)
  end
  #���ɴ�����Ľű����
  def add_table_script(table)
    #�������ע��
    @sql_str << "--#{table.explanation}\n"
    #�������Ԥ������
    @sql_str << "IF NOT EXISTS (SELECT * FROM sys.objects WHERE "
    @sql_str << "object_id = OBJECT_ID(N'[#{table.name}]') AND type in (N'U'))\n"
    #������������
    @sql_str << "BEGIN\nCREATE TABLE [dbo].[#{table.name}](\n"
    #��������ֶ����
    table.field_area.each do |field|
      @sql_str << "\t[#{field.name}]  #{field.type}"
      if field.identity == "T"
        @sql_str << "  identity"
      else
        @sql_str.concat(field.null == "F" ? "  NOT NULL" : "  NULL")
      end
      @sql_str << ",--#{field.explanation}\n"
    end
    #�������������Լ�����
    @sql_str << "CONSTRAINT [PK_#{table.name}] PRIMARY KEY CLUSTERED\n(\n\t["
    @sql_str << table.get_primary_key_name_arr.join("] ASC,\n\t[")
    @sql_str << "] ASC\n)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]\n"
    @sql_str << ") ON [PRIMARY]\nEND\nGO\n\n"
  end
  #��������������
  def add_data(table)
    #������Ԫ�����
    @sql_str << "SET IDENTITY_INSERT [dbo].[#{table.name}] ON\n" if table.field_area.has_identity?#���������ֶ�
    table.data_area.each do |data|
      @sql_str << "INSERT INTO [#{table.name}]([#{data.get_keys.join('] ,[')}]) "
      @sql_str << "VALUES(#{data.map{|_,v| v =~ /^CAST\(/ ? v : "'#{v}'"}.join(', ')})\n"
    end
    @sql_str << "SET IDENTITY_INSERT [dbo].[#{table.name}] OFF\n" if table.field_area.has_identity?#���������ֶ�
    @sql_str << "\n"
  end
  #�������������ռ���ע�����
  def add_name_space_explanation(name_space)
    @sql_str << "--����Ϊ���ע�����\n"
    name_space.each{|table| add_table_explanation(table)}
  end
  #����һ�����ע�����
  def add_table_explanation(table)
    if table.explanation != "" && table.explanation != nil
      @sql_str << "EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'#{table.explanation}' , "
      @sql_str << "@level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'#{table.name}'\nGO\n"
    end
    table.each_field do |field|
      if field.explanation != "" && table.explanation != nil
        @sql_str << "EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'#{field.explanation}' , @level0type=N'SCHEMA',@level0name=N'dbo', "
        @sql_str << "@level1type=N'TABLE',@level1name=N'#{table.name}', @level2type=N'COLUMN',@level2name=N'#{field.name}'\nGO\n"
      end
    end
  end
  #�ж������ռ��Ƿ���Ҫ����������ݽű�
  def need_data?(name_space_name)
    @need_data_name_space_arr.include?(name_space_name)
  end
  #����ɾ�������ռ�ı�����
  def delete_name_space(name_space)
    name_space.each{|table| delete_table(table.name)}
  end
  #���ݱ������ɾ�������
  def delete_table(table_name)
    @sql_str << "\nif exists (select 1 from  sysobjects where  "
    @sql_str << "id = object_id('#{table_name}')\n"
    @sql_str << "            and   type = 'U')\n"
    @sql_str << "   drop table #{table_name}\n"
    @sql_str << "go\n"
  end
end