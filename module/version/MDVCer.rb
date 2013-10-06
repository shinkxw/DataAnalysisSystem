#!/usr/bin/env ruby -w
# encoding: GBK
#元数据版本控制器
class MDVCer
  attr_reader :version_arr#版本对象数组
  #初始化
  def initialize(area)
    @area = area
    @ver_path = "#{$root}/data/version/#{@area.name}_area/"
  end
  #查询工作区是否被更新
  def has_update?
    
  end
  #生成版本库文件
  def build_vc_data
    
  end
  #读取版本日志,获得版本索引
  def load_vision_Log
    
  end
end