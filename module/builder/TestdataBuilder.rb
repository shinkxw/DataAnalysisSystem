#!/usr/bin/env ruby -w
# encoding: GBK
#测试数据生成器
class TestdataBuilder
  attr_reader :area#待生成的元数据
  attr_reader :sql_str#生成的sql语句
  attr_reader :need_delete#是否增加删除语句
  attr_reader :need_data#是否添加数据语句
  attr_reader :builder_version#生成器版本
  attr_accessor :need_data_name_space_arr#需要生成数据的命名空间名称数组
  #初始化
  def initialize(need_delete = true,need_data = false,log = Log.new)
    @area = nil
    @sql_str = nil
    @need_delete = need_delete
    @need_data = need_data
    @builder_version = "0.1"
    @need_data_name_space_arr = []
    @log = log
  end
  #生成sql脚本
  def build(area)
    @area = area
    @sql_str = ""
    @area.each do |name_space|
      add_name_space_script(name_space)
    end
    MDDoc.new("sql",@area.name,@sql_str,"sql")
  end
  #生成sql脚本哈希表
  def build_hash(area)
    @area = area
    @sql_str_hash = {}
    @area.each do |name_space|
      @sql_str = ""
      add_name_space_script(name_space)
      @sql_str_hash["#{name_space.name}.sql"] = @sql_str
    end
    MDDoc.new("sql",@area.name,@sql_str_hash)
  end
  #根据表名列表生成指定表的生成语句(用于数据库更新)
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
  #生成指定命名空间的脚本语句
  def add_name_space_script(name_space)
    @sql_str << "--空间名：#{name_space.name}  生成器：SqlBuilder#{@builder_version}\n"
    delete_name_space(name_space) if @need_delete
    #根据各个表信息输出创建表及内容语句
    name_space.each do |table|
      add_table_script(table)
      add_data(table) if @need_data || @need_data_name_space_arr.include?(name_space.name)
    end
    add_name_space_explanation(name_space)
  end
  #生成创建表的脚本语句
  def add_table_script(table)
    #输出中文注释
    @sql_str << "--#{table.explanation}\n"
    #输出建表预置文字
    @sql_str << "IF NOT EXISTS (SELECT * FROM sys.objects WHERE "
    @sql_str << "object_id = OBJECT_ID(N'[#{table.name}]') AND type in (N'U'))\n"
    #输出创建表语句
    @sql_str << "BEGIN\nCREATE TABLE [dbo].[#{table.name}](\n"
    #输出创建字段语句
    table.field_area.each do |field|
      @sql_str << "\t[#{field.name}]  #{field.type}"
      if field.identity == "T"
        @sql_str << "  identity"
      else
        @sql_str.concat(field.null == "F" ? "  NOT NULL" : "  NULL")
      end
      @sql_str << ",--#{field.explanation}\n"
    end
    #输出创建主键与约束语句
    @sql_str << "CONSTRAINT [PK_#{table.name}] PRIMARY KEY CLUSTERED\n(\n\t"
    pArr = table.get_primary_key_name_arr
    
    firstflag = true
    pArr.each do |p|
      if firstflag
        firstflag = false
        @sql_str << "[#{p}] ASC"
      else
        @sql_str << ",\n\t[#{p}] ASC"
      end
    end
    @sql_str << "\n)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]\n"
    @sql_str << ") ON [PRIMARY]\nEND\nGO\n\n"
  end
  #生成添加数据语句
  def add_data(table)
    #输出添加元素语句
    @sql_str << "SET IDENTITY_INSERT [dbo].[#{table.name}] ON\n" if table.field_area.has_identity?#存在自增字段
    table.data_area.each do |data|
      str_arr = get_data_add_str(data.key_value_hash)
      #字段名
      @sql_str << "INSERT INTO [#{table.name}](#{str_arr[0]}) "
      #字段值
      @sql_str << "VALUES(#{str_arr[1]})\n"
    end
    @sql_str << "SET IDENTITY_INSERT [dbo].[#{table.name}] OFF\n" if table.field_area.has_identity?#存在自增字段
    @sql_str << "\n"
  end
  #生成整个命名空间表的注释语句
  def add_name_space_explanation(name_space)
    @sql_str << "--以下为添加注释语句\n"
    name_space.each do |table|
      add_table_explanation(table)
    end
  end
  #生成一个表的注释语句
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
  #生成删除整个空间的表的语句
  def delete_name_space(name_space)
    name_space.table_arr.each do |table|
      delete_table(table.name)
    end
  end
  #根据表名输出删除表语句
  def delete_table(table_name)
    @sql_str << "\nif exists (select 1 from  sysobjects where  "
    @sql_str << "id = object_id('#{table_name}')\n"
    @sql_str << "            and   type = 'U')\n"
    @sql_str << "   drop table #{table_name}\n"
    @sql_str << "go\n"
  end
  #根据数据哈希表产生添加用字符串
  def get_data_add_str(hash)
    str_arr = []
    key_str = ""
    value_str = ""
    i = 1
    hash.keys.each do |key|
      key_str.concat(i == 1 ? "[#{key}]" : " ,[#{key}]")
      if hash[key] =~ /CAST\((.+?) AS /
        value_str.concat(i == 1 ? "#{hash[key]}" : ", #{hash[key]}")
      else
        value_str.concat(i == 1 ? "'#{hash[key]}'" : ", '#{hash[key]}'")
      end
      i += 1
    end
    str_arr.push(key_str).push(value_str)
  end
end

