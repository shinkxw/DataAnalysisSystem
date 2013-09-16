#!/usr/bin/env ruby -w
# encoding: GBK
#Ԫ���ݱ�������
class MDData
  include Enumerable
  #��ʼ��
  def initialize(hash)
    @key_value_hash = {}#���ݼ�ֵ�Թ�ϣ��
    hash.each{|k,v| add_key_value(k,v)}
  end
  #��Ӽ�ֵ��
  def add_key_value(key,value)
    result = true
    if @key_value_hash[key] == nil
      @key_value_hash[key] = convert_value(value)
    else
      result = false
      p "the MDData_key is repeat"
    end
    result
  end
  #����ֵ�����ͽ���ת��
  def convert_value(v)
    case v.class.to_s
    when 'String', 'Fixnum', 'NilClass'; v
    when 'Time'
      #"CAST('#{v.year}-#{v.month}-#{v.day} #{v.hour}:#{v.min}:#{v.sec}' AS DateTime)"
      v
    else 
      puts "����Ϊ#{v.class}�����ݲ�δ����"
      v
    end
  end
  #���ݼ�ȡֵ
  def get_value(key);@key_value_hash[key] end
  #������м�
  def get_keys;@key_value_hash.keys end
  #�������ݼ�ֵ��
  def each;@key_value_hash.each{|k,v| yield(k,v)} end
end
