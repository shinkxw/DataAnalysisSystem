#!/usr/bin/env ruby -w
# encoding: GBK
#Ǩ��������
class MigrateData
  attr_reader :database_name
  #��ʼ��
  def initialize(db_name,conn)
    @conn = conn
    open_database(db_name)
  end
  #�����ݿ�
  def open_database(db_name)
    @db_name = db_name
    @conn.open(@db_name)
  end
  #���ָ�������Ϣ
  def get_table_info(table_name)
    sql = "select * from #{table_name}"
    results = @conn.query(sql)
    puts @conn.fields.join(" ")
    puts results.size
    results.each{|result| puts result.inspect}
  end
end






