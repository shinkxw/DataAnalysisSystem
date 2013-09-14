#!/usr/bin/env ruby -w
# encoding: GBK
#文件同步器
class FileSynchronizer
  attr_accessor :file_path#文件路径关键词与同步位置hash表
  #attr_accessor :file_path#文件路径
  #初始化
  def initialize(type,name,data,file_type = "txt")
    @type = type#文档格式
    @name = name#文档名
    @data = data#文档数据
    @file_type = file_type#文件格式
  end
  #获得文档的字符串形式
  def get_data_str
    #~ 'HANRU_bz'
    #~ 'HANRU_yw'
    #~ 'HANRU_view'
    #~ 'sql/HANRU/'
    #~ 'view/HANRU/'
  end
end
