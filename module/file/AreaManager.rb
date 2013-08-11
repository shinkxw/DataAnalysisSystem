#!/usr/bin/env ruby -w
# encoding: GBK
#Ԫ�����������
class AreaManager
  @@data_path = "#{$root}/data"
  #�������Ԫ���������б�
  def self.get_all_area_name
    DirManager.get_dir_name(@@data_path).map{|name| $1 if name =~ /(.+?)_area$/}.compact
  end
  #�����µ�Ԫ������
  def self.create_area(area_name)
    unless get_all_area_name.include?(area_name)
      DirManager.make_dir("#{@@data_path}/#{area_name}_area")
      DirManager.make_dir("#{@@data_path}/backup/#{area_name}_area")
    else
      p "AreaManager: �����������ѱ�ʹ��"
    end
  end
  #ɾ��ָ�����Ƶ�Ԫ������
  def self.delete_area(area_name)
    if get_all_area_name.include?(area_name)
      DirManager.remove_dir("#{@@data_path}/#{area_name}_area")
      DirManager.remove_dir("#{@@data_path}/backup/#{area_name}_area")
    else
      p "AreaManager: ��������δ�ҵ�"
    end
  end
  #��ָ�����Ƶ�Ԫ���������Ϊ������������
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
