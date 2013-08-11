#!/usr/bin/env ruby -w
# encoding: GBK
#数据分析系统
class DataAnalysisSystem
  attr_reader :work_area#工作环境
  attr_accessor :root#根目录
  #初始化
  def initialize
    $root = Dir.pwd
    $:.unshift($root)
    p "--------------------------------DAS正在加载--------------------------------"
    require 'ScriptLoader'#脚本加载器
    ScriptLoader.load_all($root + "/class")#加载类定义
    ScriptLoader.load_all($root + "/module")#加载模块
    p "--------------------------------DAS加载完毕--------------------------------"
  end
end
DataAnalysisSystem.new
#cli = MainInterface.new.main

t = Time.now
@work_area = AreaManager.load_work_area("ZZZZ")
@work_area.area.is_valid?
#@work_area.work_area.reallocate_namespace
#@work_area.update_by_sql("table")
#das.update_by_daf("EDU_ELE")
@work_area.bulid_sql
@work_area.bulid_view
@work_area.bulid_model
@work_area.bulid_template
@work_area.bulid_tableinfo
@work_area.save_and_close_work_area
p Time.now - t

