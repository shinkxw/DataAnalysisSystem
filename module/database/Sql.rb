#!/usr/bin/env ruby -w
# encoding: GBK
#数据库脚本输出类
class Sql
  #查询数据源中的数据库名
  def self.get_db_name;'select name from sys.databases' end
  #查询当前数据库所有表名
  def self.get_all_tname
    "select name from sysobjects where xtype='U' and category=0"
  end
  #查询当前数据库所有视图名
  def self.get_all_vname
    "select name from sysobjects where xtype='V' and category=0"
  end
  #查询指定表的字段信息
  def self.get_tf_info(table_name)
    "SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME= '#{table_name}'"
  end
  #查询指定表的主键信息
  def self.get_table_pk(table_name)
    sql = "SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE "
    sql << "WHERE TABLE_NAME='#{table_name}'"
  end
  #查询指定表的自增主键信息
  def self.get_table_idpk(table_name)
    sql = "select name from sys.columns where object_id=object_id("
    sql << "'#{table_name}') and is_identity=1"
  end
  #查询指定表的说明信息
  def self.get_table_exp(table_name)
    sql = "SELECT *FROM ::fn_listextendedproperty (NULL, 'user', "
    sql << "'dbo', 'table', '#{table_name}', default, default)"
  end
  #查询指定表字段的说明信息
  def self.get_tfield_exp(table_name)
    sql = "SELECT *FROM ::fn_listextendedproperty (NULL, 'user', "
    sql << "'dbo', 'table', '#{table_name}', 'column', default)"
  end
  #查询指定表的数据
  def self.get_tdata(table_name);"select * from #{table_name}" end
  #删除指定名称视图
  def self.delete_view(view_name);"DROP VIEW #{view_name}" end
  #根据元数据建表
  def self.create_table(table)
    builder = SqlBuilder.new
    builder.add_table_script(table,sql = '')
    builder.add_table_explanation(table,sql)
    #标准表则添加数据
    builder.need_data_name_space_arr = %w(EDU_GB EDU_JY EDU_ZJ EDU_ZZ)
    builder.add_data(table,sql) if builder.need_data?(table.name_space_name)
    sql
  end
  #删除指定表
  def self.delete_table(table_name);"DROP TABLE #{table_name}" end
  #添加字段
  def self.add_field(field)
    "ALTER TABLE #{field.table.name} ADD #{field.name} #{field.type}"
  end
  #删除字段
  def self.delete_field(field)
    "ALTER TABLE #{field.table.name} DROP COLUMN #{field.name}"
  end
  #修改字段类型
  def self.update_ftype(field)
    "ALTER TABLE #{field.table.name} ALTER COLUMN #{field.name} #{field.type}"
  end
  #设字段可以为空
  def self.field_null(f)
    "ALTER TABLE #{f.table.name} ALTER COLUMN #{f.name} #{f.type} NULL"
  end
  #设字段不可为空
  def self.field_not_null(f)
    sql = "update #{f.table.name} set #{f.name} =#{f.defv} where #{f.name} is null\n"
    sql << "ALTER TABLE #{f.table.name} ALTER COLUMN #{f.name} #{f.type} NOT NULL"
  end
  #添加表注释
  def self.add_texp(table)
    sql = "EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'#{table.explanation}' , "
    sql << "@level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'#{table.name}'\nGO\n"
  end
  #修改表注释
  def self.update_texp(table)
    sql = "EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'#{table.explanation}' , "
    sql << "@level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'#{table.name}'\nGO\n"
  end
  #添加字段注释
  def self.add_fexp(field)
    sql = "EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'#{field.explanation}' , @level0type=N'SCHEMA',@level0name=N'dbo', "
    sql << "@level1type=N'TABLE',@level1name=N'#{field.table.name}', @level2type=N'COLUMN',@level2name=N'#{field.name}'\nGO\n"
  end
  #修改字段注释
  def self.update_fexp(field)
    sql = "EXEC sys.sp_updateextendedproperty @name=N'MS_Description', @value=N'#{field.explanation}' , @level0type=N'SCHEMA',@level0name=N'dbo', "
    sql << "@level1type=N'TABLE',@level1name=N'#{field.table.name}', @level2type=N'COLUMN',@level2name=N'#{field.name}'\nGO\n"
  end
  #根据配置获得表连接查询sql语句
  #第一个元素是主表名，第二个元素为hash表，键为表名，值为连接条件hash, 第三个元素为数据库实体
  def self.get_join_sql(mtname, jc, db)
    select_sql = "SELECT "
    from_sql = "\nFROM "
    fns = db.get_table_fname(mtname)
    msn = mtname.split("_")[-1]
    select_sql << fns.collect{|fn| "#{msn}.#{fn} as #{msn}_#{fn}"}.join("\n,")
    from_sql << "dbo.#{mtname} AS #{msn}"
    jc.each_key do |tname|
      fns = db.get_table_fname(tname)
      sn = tname.split("_")[-1]
      fns.each{|fn| select_sql << "\n,#{sn}.[#{fn}] as #{sn}_#{fn}"}
      from_sql << " LEFT OUTER JOIN\ndbo.#{tname} AS #{sn} ON "
      j_config = jc[tname]
      from_sql << j_config.map{|k,v| "#{msn}.#{k} = #{sn}.#{v}"}.join(" AND ")
    end
    select_sql << from_sql
  end
end