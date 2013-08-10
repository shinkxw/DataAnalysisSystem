#!/usr/bin/env ruby -w
# encoding: GBK
#��������
class BaseInterface
	attr_reader :statu#��ǰ״̬
	attr_reader :input#�û�����
	#��ʼ��
	def initialize
		@statu = nil
		@input = nil
	end
	#��ѭ��
	def main
		start
		loop do
			before_input
			get_input
			after_input
			break if @statu == "quit" 
		end
		terminate
	end
	#��ʼ����
	def start
	end
	#����ǰ����
	def before_input
	end
	#�������
	def get_input
		@input = gets.delete("\n")
	end
	#��������
	def after_input
	end
	# ��������
	def terminate
	end
end
