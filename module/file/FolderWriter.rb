#!/usr/bin/env ruby -w
# encoding: GBK
#文件夹写入器
class FolderWriter
  attr_reader :folder_Path#文件夹路径
  attr_reader :mkdir#能否新建文件夹
  attr_accessor :type#文件写入方式 w 覆盖 a 更新
  attr_accessor :encode#文件读取写入编码格式
  #初始化
  def initialize(folder_Path,mkdir = false,type = "w",encode = "GBK")
    @type = type
    @mkdir = mkdir
    @folder_Path = folder_Path
    @encode = encode
  end
  #将一个哈希表中的数据写入文件夹，键值为文件名
  def write_str_hash(file_hash)
    #file_name_arr = file_hash.keys
    file_hash.each do |file_name,str|
      if @mkdir && "#{folder_Path}#{file_name}" =~ /(.+)\/[^\/]+?\.[^\/]+$/
        DirManager.make_dir("#{$1}")
      end
      FileWriter.new("#{folder_Path}#{file_name}").write_str(str)
    end
  end
end
