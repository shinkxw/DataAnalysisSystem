#!/usr/bin/env ruby -w
# encoding: GBK
#生成器父类
class BaseBuilder
	attr_accessor :log#日志对象
	#初始化
	def initialize(log = [])
		@log = log
	end
	#生成
	def build(enter)
	end
end