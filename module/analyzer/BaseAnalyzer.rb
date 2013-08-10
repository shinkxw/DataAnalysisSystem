#!/usr/bin/env ruby -w
# encoding: GBK
#解析器父类
class BaseAnalyzer
	attr_accessor :log#日志对象
	#初始化
	def initialize(log = [])
		@log = log
	end
	#解析数据
	def analyze(enter)
	end
end