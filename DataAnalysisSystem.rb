#!/usr/bin/env ruby -w
# encoding: GBK
#���ݷ���ϵͳ
class DataAnalysisSystem
  attr_reader :work_area#��������
  attr_accessor :root#��Ŀ¼
  #��ʼ��
  def initialize
    $root = Dir.pwd
    $:.unshift($root)
    p "--------------------------------DAS���ڼ���--------------------------------"
    require 'ScriptLoader'#�ű�������
    ScriptLoader.load_all($root + "/class")#�����ඨ��
    ScriptLoader.load_all($root + "/module")#����ģ��
    p "--------------------------------DAS�������--------------------------------"
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

