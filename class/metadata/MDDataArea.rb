#!/usr/bin/env ruby -w
# encoding: GBK
#元数据表数据域类
class MDDataArea
  include Enumerable
  attr_reader :data_arr#域中数据数组
  attr_accessor :config#数据域配置
  #初始化
  def initialize(config = "")
    @data_arr = []
    @config = config
  end
  #添加数据
  def add_data(data)
    if data.class.to_s == "MDData"
      @data_arr.push(data)
    else
      p "MDDataArea can only put MDData"
    end
  end
  #迭代数据
  def each;@data_arr.each{|data| yield(data)} end
end
