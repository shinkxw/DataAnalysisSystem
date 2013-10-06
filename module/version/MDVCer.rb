#!/usr/bin/env ruby -w
# encoding: GBK
#元数据版本控制器
class MDVCer
  attr_reader :version_arr#版本对象数组
  attr_reader :work_copy#工作副本
  #初始化
  def initialize(area)
    @area,@work_copy = area,nil
    @ver_path = "#{$root}/data/version/#{@area.name}_area/"
    @work_copy_path = @ver_path + 'WorkCopy.ver'
    load_work_copy
    puts '当前特征值: ' + @work_copy.ev.to_s
    load_area_vision
    build_new_version if has_update?
    build_update_log
    save_version
  end
  #生成更新日志
  def build_update_log
    
  end
  #生成新的版本对象
  def build_new_version
    pre_area = FileLoader.new(@ver_path + 'WorkCopy.daf').get_obj
    @work_copy = MDVersion.new(@area, pre_area)
    version_arr << @work_copy
  end
  #查询工作区是否被更新
  def has_update?;@area.get_ev != @work_copy.ev end
  #保存版本信息文件
  def save_version
    FileWriter.new(@work_copy_path).write_obj(@work_copy)
    FileWriter.new(@ver_path + 'WorkCopy.daf').write_obj(@area)
    #清空文件夹
    @version_arr.each do |version|
      path = @ver_path + version.name + '/'
      FolderWriter.new(path,true).write_obj_hash({version.file_name => version.to_str})
    end
  end
  #读取数据域的版本信息
  def load_area_vision
    @version_arr = []
    DirManager.get_dir_path(@ver_path).each do |path|
      str_arr = FolderLoader.new(path + '/','.ver').get_file_str_arr
      @version_arr + str_arr.map{|str| Marshal.load(str)}
    end
  end
  #读取数据域的工作副本信息
  def load_work_copy
    if File.file?(@work_copy_path)
      @work_copy = FileLoader.new(@work_copy_path).get_obj
    else
      @work_copy = MDVersion.new(@area, nil, 'WorkCopy')
    end
  end
end