#!/usr/bin/env ruby -w
# encoding: GBK
#�ļ���ȡ��
class FileLoader
	attr_reader :file_path#�ļ�·��
	attr_accessor :encode#�ļ���ȡд������ʽ
	#��ʼ��
	def initialize(file_path,encode = "GBK")
		@file_path = file_path
		@encode = encode
	end
	#���ļ�����ַ���
	def get_str
		result = ""
		File.open("#{@file_path}","r:#{@encode}") do |file|
			result = file.read
		end
		result
	end
	#���ļ�����ַ�������
	def get_str_arr
		result = []
		File.open("#{@file_path}","r:#{@encode}") do |file|
			result = file.readlines
		end
		result
	end
end
