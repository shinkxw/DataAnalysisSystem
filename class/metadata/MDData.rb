#!/usr/bin/env ruby -w
# encoding: GBK
#元数据表数据类
class MDData
  include Enumerable
  attr_reader :key_value_hash#数据键值对哈希表
  #初始化
  def initialize(hash)
    @key_value_hash = {}
    hash.each{|k,v| add_key_value(k,v)}
  end
  #添加键值对
  def add_key_value(key,value)
    result = true
    if @key_value_hash[key] == nil
      @key_value_hash[key] = value
    else
      result = false
      p "the MDData_key is repeat"
    end
    result
  end
  #根据键取值
  def get_value(key);@key_value_hash[key] end
  #获得所有键
  def get_keys;@key_value_hash.keys end
  #迭代数据键值对
  def each;@key_value_hash.each{|k,v| yield(k,v)} end
end
