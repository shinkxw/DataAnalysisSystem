#!/usr/bin/env ruby -w
# encoding: GBK
#����������
class BaseAnalyzer
	attr_accessor :log#��־����
	#��ʼ��
	def initialize(log = [])
		@log = log
	end
	#��������
	def analyze(enter)
	end
end