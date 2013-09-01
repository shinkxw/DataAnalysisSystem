#!/usr/bin/env ruby -w
# encoding: GBK
#日志类
class Log
  attr_reader :log_arr#日志数据数组
  attr_reader :type#日志对象类型(c 控制台,f 文件,cf 控制台+文件)
  attr_reader :write_type#日志写入方式(w 覆盖,a 更新)
  attr_accessor :name#日志文件名
  attr_accessor :path#日志文件目录
  #初始化
  def initialize(type = "c",write_type = "a",name = "log",path = "log/")
    @log_arr = []
    @type = type
    @write_type = write_type
    @name = name
    @path = path
  end
  #放入日志
  def push(log)
    @log_arr.push(log)
    puts log
  end
end
