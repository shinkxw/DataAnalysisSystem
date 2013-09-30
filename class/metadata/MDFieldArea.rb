#!/usr/bin/env ruby -w
# encoding: GBK
#Ԫ���ݱ��ֶ�����
class MDFieldArea
  include Enumerable
  attr_reader :field_arr#�����ֶ�����
  attr_accessor :config#�ֶ�������
  #��ʼ��
  def initialize(config = "")
    @field_arr = []
    @config = config
  end
  #�����ֶ�
  def add_field(field)
    if field.class.to_s == "MDField"
      @field_arr.push(field)
    else
      p "MDFieldArea can only put MDField"
    end
  end
  #�����ֶ�
  def each;@field_arr.each{|field| yield(field)} end
end
