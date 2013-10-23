#!/usr/bin/env ruby -w
# encoding: GBK
#Ԫ���ݰ汾������
class MDVCer
  attr_reader :version_arr#�汾��������
  attr_reader :work_copy#��������
  #��ʼ��
  def initialize(work_area)
    @area,@work_copy = work_area.area,nil
    @ver_path = "#{$root}/data/version/#{@area.name}_area/"
    @work_copy_path = @ver_path + 'WorkCopy.'
    @log_path = "#{$root}/data/#{@area.name}������־.txt"
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
  #���ɸ�����־
  def build_update_log
    log = ''
    @version_arr.each{|ver| log << ver.build_log}
    FileWriter.new(@log_path).write_str(log)
  end
  #�����µİ汾����
  def build_new_version
    pre_area = FileLoader.new(@work_copy_path + 'daf').get_obj
    @work_copy = MDVersion.new(@area, pre_area)
    version_arr.unshift(@work_copy)
  end
  #��ѯ�������Ƿ񱻸���
  def has_update?;@area.get_ev != @work_copy.ev end
  #����汾��Ϣ�ļ�
  def save_version
    FileWriter.new(@work_copy_path + 'ver').write_obj(@work_copy)
    FileWriter.new(@work_copy_path + 'daf').write_obj(@area)
    #����ļ���
    @version_arr.each do |version|
      path = @ver_path + version.name + '/'
      FolderWriter.new(path,true).write_obj_hash({version.file_name => version})
    end
  end
  #��ȡ������İ汾��Ϣ
  def load_area_vision
    @version_arr = []
    DirManager.get_dir_name(@ver_path).each do |fname|
      @version_arr << FileLoader.new("#{@ver_path}#{fname}/#{fname}.ver").get_obj
    end
  end
  #��ȡ������Ĺ���������Ϣ
  def load_work_copy
    if File.file?(@work_copy_path + 'ver')
      @work_copy = FileLoader.new(@work_copy_path + 'ver').get_obj
    else
      @work_copy = MDVersion.new(@area, nil, 'WorkCopy')
    end
  end
end