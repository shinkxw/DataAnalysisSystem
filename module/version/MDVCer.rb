#!/usr/bin/env ruby -w
# encoding: GBK
#元数据版本控制器
class MDVCer
  @@version_path = "#{$root}/data/version"
  #初始化
  def initialize(area_name)
    @area_name = area_name
  end
  #查询工作区是否被更新
  def has_update?
    
  end
  #生成版本库文件
  def build_vc_data
    "#{@@version_path}/#{area_name}_area/now/"
  end
  #读取版本日志,获得版本索引
  def load_vision_Log
    
  end
end