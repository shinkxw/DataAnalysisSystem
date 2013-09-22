#!/usr/bin/env ruby -w
# encoding: GBK
#��ʱ��
class Timer
  @@time_hash = {}
  def self.tick(tag = '');puts "#{"#{tag}: " if tag != ''}#{get_gap(tag)}" end
  #���ʱ����
  def self.get_gap(tag = '')
    old_time = @@time_hash[tag]
    @@time_hash[tag] = now
    old_time ? now - old_time : 0.0
  end
  #��õ�ǰʱ��
  def self.now;Time.now end
end

