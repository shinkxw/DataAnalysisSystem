#!/usr/bin/env ruby -w
# encoding: GBK
#Ԫ���ݰ汾������
class MDVCer
  attr_reader :version_arr#�汾��������
  #��ʼ��
  def initialize(area)
    @area = area
    @ver_path = "#{$root}/data/version/#{@area.name}_area/"
  end
  #��ѯ�������Ƿ񱻸���
  def has_update?
    
  end
  #���ɰ汾���ļ�
  def build_vc_data
    
  end
  #��ȡ�汾��־,��ð汾����
  def load_vision_Log
    
  end
end