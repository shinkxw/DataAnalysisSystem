#!/usr/bin/env ruby -w
# encoding: GBK
#Ԫ���ݱ�������
class MDData
  include Enumerable
  attr_accessor :name#��������
  #��ʼ��
  def initialize(hash)
    @name = ''
    @key_value_hash = {}#���ݼ�ֵ�Թ�ϣ��
    hash.each{|k,v| add_key_value(k,v)}
  end
  #��Ӽ�ֵ��
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
  #���ݼ�ȡֵ
  def get_value(key);@key_value_hash[key] end
  #������м�
  def get_keys;@key_value_hash.keys end
  #�������ݼ�ֵ��
  def each;@key_value_hash.each{|k,v| yield(k,v)} end
end
