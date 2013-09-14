#!/usr/bin/env ruby -w
# encoding: GBK
#文件同步器
class FileSynchronizer
  attr_accessor :file_path#文件路径关键词与同步位置hash表
  #attr_accessor :file_path#文件路径
  #初始化
  def initialize(config)
    
  end
  #获得文档的字符串形式
  def get_data_str
    #~ 'HANRU_bz'
    #~ 'HANRU_yw'
    #~ 'HANRU_view'
    #~ 'sql/HANRU/'
    #~ 'view/HANRU/'
  end
  #根据文件路径判断并执行文件同步操作
  def sy_file(path,str)
    puts 'file: ' << path
  end
  #根据文件夹路径判断并执行文件夹同步操作
  def sy_folder(path,hash)
    puts 'folder: ' << path
  end
end
