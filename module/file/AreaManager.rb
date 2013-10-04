#!/usr/bin/env ruby -w
# encoding: GBK
#元数据域管理器
class AreaManager
  @@data_path = "#{$root}/data"
  @@db_conn = nil
  #设置共用数据库连接器
  def self.set_conn(conn);@@db_conn = conn end
  #自数据库获取表信息以新建一个元数据域
  def self.create_area_from_db(area_name,db)
    create_area(area_name)
    MDWork_Area.new(db.get_db_area(area_name)).save_and_close_work_area
  end
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
  #将指定名称的元数据域加载为元数据
  def self.load_area(area_name)
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
    area
  end
  #同时加载指定名称的元数据域与指定数据库实体并传给块
  def self.load_area_and_db(area_name,db_name = nil,&block)
    if db_name && @@db_conn
      open(area_name) do |work_area|
        DBEntity.open(db_name,@@db_conn){|db| yield(work_area,db)}
      end
    elsif db_name
      puts 'AreaManager：未配置数据库连接'
    else
      open(area_name,&block)
    end
  end
  #将指定名称的元数据域加载为工作区并传给块
  def self.open(area_name)
    timer = Timer.new('area_open')
    work_area = load_work_area(area_name)
    if block_given?
      begin
        yield work_area
      ensure
        work_area.save_and_close_work_area
      end
    end
    puts "耗时#{timer.gap}秒"
  end
  #将指定名称的元数据域加载为工作区并返回
  def self.load_work_area(area_name);MDWork_Area.new(load_area(area_name)) end
end
