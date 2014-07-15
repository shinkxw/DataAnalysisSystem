#!/usr/bin/env ruby -w
# encoding: GBK
#数据库表数据类
class DBDataForQuery
  include Enumerable
  #初始化
  def initialize(field_arr, value_arr)
    @fname_value_hash = {}
    field_arr.each_index{|i| @fname_value_hash[field_arr[i].name] = value_arr[i]}
    @fname_field_hash = {}
    field_arr.each{|field| @fname_field_hash[field.name] = field}
  end
  #返回值对象
  def method_missing(method_symbol, *pars)
    value = @fname_value_hash[method_symbol.to_s.upcase]
    return value if value
    super
  end
end
