#!/usr/bin/env ruby -w
# encoding: GBK
#元数据版本对象
class MDVersion
  attr_reader :name#版本名称,即版本信息文件名
  attr_reader :update_date#更新日期
  attr_reader :ev#特征值
  attr_reader :pre_ev#前一个版本的特征值,独立版本为nil
  attr_reader :diff#与前一个版本的差异对象,独立版本为nil
  #初始化
  def initialize(area,pre_area,name = Time.now.strftime("%y年%m月%d日%H时%M分%S秒"))
    @name = name
    @update_date = Time.now
    @ev = area.get_ev if area
    @pre_ev = pre_area.get_ev if pre_area
    @diff = MDDiffer.new.compare_area(pre_area,area) if area && pre_area
  end
  #生成更新日志
  def build_log
    str = "版本号：#{@name}\n"
    str << "日期：#{@update_date}\n"
    str << "特征值：#{@ev ? @ev : '无'}\n"
    str << "上一个版本特征值：#{@pre_ev ? @pre_ev : '无'}\n"
    str << @diff.build_log if @diff
    str << "\n"
  end
  #文件名
  def file_name;@name + '.ver' end
end