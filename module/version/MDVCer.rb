#!/usr/bin/env ruby -w
# encoding: GBK
#Ԫ���ݰ汾������
class MDVCer
  @@version_path = "#{$root}/data/version"
  #��ʼ��
  def initialize(area_name)
    @area_name = area_name
  end
  #��ѯ�������Ƿ񱻸���
  def has_update?
    
  end
  #���ɰ汾���ļ�
  def build_vc_data
    "#{@@version_path}/#{area_name}_area/now/"
  end
  #��ȡ�汾��־,��ð汾����
  def load_vision_Log
    
  end
end