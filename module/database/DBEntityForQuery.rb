#!/usr/bin/env ruby -w
# encoding: GBK
#���ݿ�ʵ�壬��ִ�в�ѯ����������������ָ�
class DBEntityForQuery < DBEntity
  #��ʼ��
  def initialize(conn,db_name)
    super(conn,db_name)
    db_init()
  end
  #��ʼ�����ݿ����Ϣ
  def db_init
    @table_hash = {}
    get_table_name_arr.each do |table_name|
      @table_hash[table_name.to_sym] = table_name
    end
  end
  #���ر����
  def method_missing(method_symbol, *pars)
    table = @table_hash[method_symbol]
    return table if table
    super
  end
end