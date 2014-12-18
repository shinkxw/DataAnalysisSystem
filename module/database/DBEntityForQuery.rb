#!/usr/bin/env ruby -w
# encoding: GBK
#���ݿ�ʵ�壬��ִ�в�ѯ����������������ָ�
class DBEntityForQuery < DBEntity
  include Enumerable
  #��ʼ��
  def initialize(conn,db_name)
    super(conn,db_name)
    db_init()
  end
  #��ʼ�����ݿ����Ϣ
  def db_init
    @table_hash = {}
    @table_arr = get_table_name_arr.map{|tname| DBTableForQuery.new(tname, self)}
    @view_arr = get_view_name_arr.map{|vname| DBTableForQuery.new(vname, self)}
    (@table_arr + @view_arr).each{|table| @table_hash[table.name.upcase] = table}
  end
  #���ر����
  def method_missing(method_symbol, *pars)
    table = @table_hash[method_symbol.to_s.upcase]
    return table if table
    super
  end
  def each;@table_arr.each{|table| yield(table)} end
end