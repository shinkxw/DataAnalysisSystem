#!/usr/bin/env ruby -w
# encoding: GBK
#Ԫ���ݰ汾����
class MDVersion
  attr_reader :name#�汾����,���汾��Ϣ�ļ���
  attr_reader :update_date#��������
  attr_reader :ev#����ֵ
  attr_reader :pre_ev#ǰһ���汾������ֵ,�����汾Ϊnil
  attr_reader :diff#��ǰһ���汾�Ĳ������,�����汾Ϊnil
  #��ʼ��
  def initialize(area,pre_area,name = Time.now.strftime("%y��%m��%d��%Hʱ%M��%S��"))
    @name = name
    @update_date = Time.now
    @ev = area.get_ev if area
    @pre_ev = pre_area.get_ev if pre_area
    @diff = MDDiffer.new.compare_area(pre_area,area) if area && pre_area
  end
  #���汾�������л�
  def to_str;Marshal.dump(self) end
end