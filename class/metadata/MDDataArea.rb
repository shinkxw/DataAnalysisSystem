#!/usr/bin/env ruby -w
# encoding: GBK
#Ԫ���ݱ���������
class MDDataArea
  include Enumerable
  attr_reader :data_arr#������������
  attr_accessor :config#����������
  #��ʼ��
  def initialize(config = "")
    @data_arr = []
    @config = config
  end
  #�������
  def add_data(data)
    if data.class.to_s == "MDData"
      @data_arr.push(data)
    else
      p "MDDataArea can only put MDData"
    end
  end
  #��������
  def each;@data_arr.each{|data| yield(data)} end
end
