#!/usr/bin/env ruby -w
# encoding: GBK
#元数据域管理器
class AreaManager
  @@data_path = "#{$root}/data"
  #获得现有元数据域名列表
  def self.get_all_area_name
    DirManager.get_dir_name(@@data_path).map{|name| $1 if name =~ /(.+?)_area$/}.compact
  end
  #创建新的元数据域
  def self.create_area(area_name)
    unless get_all_area_name.include?(area_name)
      DirManager.make_dir("#{@@data_path}/#{area_name}_area")
      DirManager.make_dir("#{@@data_path}/backup/#{area_name}_area")
    else
      p "AreaManager: 该数据域名已被使用"
    end
  end
  #删除指定名称的元数据域
  def self.delete_area(area_name)
    if get_all_area_name.include?(area_name)
      DirManager.remove_dir("#{@@data_path}/#{area_name}_area")
      DirManager.remove_dir("#{@@data_path}/backup/#{area_name}_area")
    else
      p "AreaManager: 该数据域未找到"
    end
  end
  #将指定名称的元数据域加载为工作区并返回
  def self.load_work_area(area_name)
    area = MDArea.new(area_name)
    file_hash = FolderLoader.new("#{@@data_path}/#{area_name}_area/").get_file_str_hash
    file_hash.each do |file_name,file_str|
      if file_name != "relation.txt"
        new_area = DafAnalyzer.new.analyze(file_str,area_name)
        area.cover_combine(new_area)
      end
    end
    relation_str = file_hash["relation.txt"]
    area.add_table_relation(relation_str) if relation_str != nil
    MDWork_Area.new(area)
  end
end
