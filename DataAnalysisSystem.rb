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
#MainInterface.new
#ManageAreaInterface.new

t = Time.now
@work_area = AreaManager.load_work_area("ZXXX")
#@work_area.area.reallocate_namespace
#@work_area.area.delete_all_table_data
#@work_area.update_by_sql("table")
#@work_area.update_by_daf("EDU_ELE")

@work_area.export_sql
@work_area.export_view(false)
@work_area.export_model
@work_area.export_template

@work_area.export_tableinfo
@work_area.save_and_close_work_area
p Time.now - t

