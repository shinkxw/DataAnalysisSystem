#!/usr/bin/env ruby -w
# encoding: GBK
#���ݿ��������
class DBDataForQuery
  include Enumerable
  #��ʼ��
  def initialize(field_arr, value_arr)
    @fname_value_hash = {}
    field_arr.each_index{|i| @fname_value_hash[field_arr[i].name] = value_arr[i]}
    @fname_field_hash = {}
    field_arr.each{|field| @fname_field_hash[field.name] = field}
  end
  #����ֵ����
  def method_missing(method_symbol, *pars)
    value = @fname_value_hash[method_symbol.to_s.upcase]
    return value if value
    super
  end
end
