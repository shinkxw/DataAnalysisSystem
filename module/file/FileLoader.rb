#!/usr/bin/env ruby -w
# encoding: GBK
#文件读取器
class FileLoader
	attr_reader :file_path#文件路径
	attr_accessor :encode#文件读取写入编码格式
	#初始化
	def initialize(file_path,encode = "GBK")
		@file_path = file_path
		@encode = encode
	end
	#从文件获得字符串
	def get_str
		result = ""
		File.open("#{@file_path}","r:#{@encode}") do |file|
			result = file.read
		end
		result
	end
	#从文件获得字符串数组
	def get_str_arr
		result = []
		File.open("#{@file_path}","r:#{@encode}") do |file|
			result = file.readlines
		end
		result
	end
end
