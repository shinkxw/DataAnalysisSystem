#!/usr/bin/env ruby -w
# encoding: GBK
#元数据版本控制器
class MDVCer
  attr_reader :version_arr#版本对象数组
  attr_reader :work_copy#工作副本
  #初始化
  def initialize(work_area)
    @area,@work_copy = work_area.area,nil
    @ver_path = "#{$root}/data/version/#{@area.name}_area/"
    @work_copy_path = @ver_path + 'WorkCopy.'
    @log_path = "#{$root}/data/#{@area.name}更新日志.txt"
    load_work_copy
    load_area_vision
    @version_arr.sort_by! {|v| v.update_date}.reverse!
    if has_update?
      work_area.backup_work_area
      build_new_version
    end
    build_update_log
    save_version
  end
  #生成更新日志
  def build_update_log
    log = ''
    @version_arr.each{|ver| log << ver.build_log}
    FileWriter.new(@log_path).write_str(log)
  end
  #生成新的版本对象
  def build_new_version
    pre_area = FileLoader.new(@work_copy_path + 'daf').get_obj
    @work_copy = MDVersion.new(@area, pre_area)
    version_arr.unshift(@work_copy)
  end
  #查询工作区是否被更新
  def has_update?;@area.get_ev != @work_copy.ev end
  #保存版本信息文件
  def save_version
    FileWriter.new(@work_copy_path + 'ver').write_obj(@work_copy)
    FileWriter.new(@work_copy_path + 'daf').write_obj(@area)
    #清空文件夹
    @version_arr.each do |version|
      path = @ver_path + version.name + '/'
      FolderWriter.new(path,true).write_obj_hash({version.file_name => version})
    end
  end
  #读取数据域的版本信息
  def load_area_vision
    @version_arr = []
    DirManager.get_dir_name(@ver_path).each do |fname|
      @version_arr << FileLoader.new("#{@ver_path}#{fname}/#{fname}.ver").get_obj
    end
  end
  #读取数据域的工作副本信息
  def load_work_copy
    if File.file?(@work_copy_path + 'ver')
      @work_copy = FileLoader.new(@work_copy_path + 'ver').get_obj
    else
      @work_copy = MDVersion.new(@area, nil, 'WorkCopy')
    end
  end
end