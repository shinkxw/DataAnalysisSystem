#!/usr/bin/env ruby -w
# encoding: GBK
#计时器
class Timer
  @@time_hash = {}
  def self.tick(tag = '');puts "#{"#{tag}: " if tag != ''}#{gap(tag)}" end
  #获得时间间隔
  def self.gap(tag = '')
    old_time = @@time_hash[tag]
    @@time_hash[tag] = now
    old_time ? now - old_time : 0.0
  end
  #获得当前时间
  def self.now;Time.now end
  #初始化
  def initialize(tag = '');@tag,@time = tag,now end
  #实例方法
  def tick;puts "#{"#{@tag}: " if @tag != ''}#{gap}" end
  def gap
    old_time,@time = @time,now
    now - old_time
  end
  def now;self.class.now end
end
