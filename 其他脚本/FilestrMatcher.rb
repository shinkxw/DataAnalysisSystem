#!/usr/bin/env ruby -w
# encoding: UTF-8
#文件字符串匹配器
class FilestrMatcher
  attr_accessor :folder_path#指定搜索文件目录路径
  attr_accessor :ignore_folder_name_arr#需忽略文件夹名称数组
  attr_accessor :file_extname_arr#需进行匹配的文件后缀数组，nil则全匹配
  #初始化
  def initialize(folder_path = Dir.pwd)
    @folder_path = folder_path
    @ignore_folder_name_arr = [".",".."]
    @file_extname_arr = nil
  end
  #查找所有匹配的字符串
  def search_matchstr(decide,change)
    change_num = 0
    file_str_hash = {}
    @file_path_arr = []
    search_all_matched_file_path
    @file_path_arr.each do |file_path|
      file_str = ""
      file_str_arr = get_file_str_arr(file_path)
      file_str_arr.each do |str|
        str.force_encoding('GBK') if !str.valid_encoding?#str = str.encode('UTF-8')
        if decide.call(str)
          puts file_path
          puts str
          puts str = change.call(str)
          change_num += 1
        end
        #file_str << str
      end
      file_str_hash[file_path] = file_str
    end
    puts "共匹配到#{change_num}处字符串".encode('GBK')
    file_str_hash
  end
  #查找并修改所有匹配的字符串
  def search_and_modify_matchstr(decide,change)
    file_str_hash = search_matchstr(decide,change)
    file_str_hash.each{|k,v| cover_file(k,v)}
  end
  #寻找指定文件夹下所有匹配的文件路径
  def search_all_matched_file_path(folder_path = @folder_path)
    @file_path_arr += search_matched_file_path(folder_path)
    directory_name_arr = get_directory(folder_path)
    directory_name_arr.each do |directory_name|
      new_folder_path = folder_path + "/" + directory_name
      search_all_matched_file_path(new_folder_path)
    end
  end
  #返回指定目录中的所有未被忽略的目录名
  def get_directory(path)
    Dir.open(path){|d| d.select{|f| File.directory?(path+"/"+f)}.reject{|f| @ignore_folder_name_arr.include?(f)}}
  end
  #寻找指定文件夹中所有匹配的文件路径
  def search_matched_file_path(path)
    Dir.open(path){|d| d.select{|f| File.file?(path+"/"+f) && need_match?(f)}.map{|f| path+"/"+f}}
  end
  #判断文件是否需要进行匹配
  def need_match?(file_name)
    @file_extname_arr == nil || @file_extname_arr.include?(File.extname(file_name))
  end
  #使用正确的编码打开文件并返回字符串数组
  def get_file_str_arr(file_path)
    File.open("#{file_path}","r:UTF-8") do |file|
      file.readlines
    end
  end
  #覆盖文件
  def cover_file(file_path,file_str)
    File.open(file_path,"w:GBK"){|file| file.puts(file_str)}
  end
end
fm = FilestrMatcher.new("D:/技术部/代码/Trunk".encode('GBK'))
fm.ignore_folder_name_arr += ["Common".encode('GBK'),"Web".encode('GBK')]
fm.file_extname_arr = [".cs",".cshtml"]
decide = Proc.new do |str|
  #^[^\/]+?[^\(]"[^\/<]\/[^\/>]+?[^<]\/[^\/]+?[^<]\/[^\/]  路径错误
  str =~ /index_jsonstr"/
end
change = Proc.new{|str| ""}
fm.search_matchstr(decide,change)
#fm.search_and_modify_matchstr(decide,change)


