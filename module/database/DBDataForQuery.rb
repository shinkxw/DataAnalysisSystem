#!/usr/bin/env ruby -w
# encoding: GBK
#数据库表数据类
class DBDataForQuery
  include Enumerable
  #初始化
  def initialize(fname_arr, value_arr)
    @fname_value_hash = {}
    fname_arr.each_index{|i| @fname_value_hash[fname_arr[i]] = value_arr[i]}
  end
  #返回值对象
  def method_missing(method_symbol, *pars)
    if /^(?<fname>[^=]+)=$/ =~ method_symbol.to_s
      @fname_value_hash[fname.to_sym] = pars[0]
      return pars[0]
    end
    value = @fname_value_hash[method_symbol]
    return value if value
    super
  end
end
