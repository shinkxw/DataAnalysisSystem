#!/usr/bin/env ruby -w
# encoding: GBK
#����������
class BaseBuilder
	attr_accessor :log#��־����
	#��ʼ��
	def initialize(log = [])
		@log = log
	end
	#����
	def build(enter)
	end
end