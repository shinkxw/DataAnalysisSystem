#!/usr/bin/env ruby -w
# encoding: GBK
#文档类
class MDDoc
	@@export_path = "#{$root}/export"
	#初始化
	def initialize(type,name,data,file_type = "txt")
		@type = type#文档格式
		@name = name#文档名
		@data = data#文档数据
		@file_type = file_type#文件格式
	end
	#按照惯例输出文档
	def export
		case @data.class.to_s
		when "Hash"
			DirManager.remove_dir("#{@@export_path}/#{@type}/#{@name}")#删除文件夹
			hash_out("#{@@export_path}/#{@type}/#{@name}/")
		when "String"
			str_out("#{@@export_path}/#{@type}/#{@name}.#{@file_type}")
		else
			puts "MDDoc: 无法输出的文档类别：#{@data.class.to_s}"
		end
	end
	#将哈希形式文档输出至文件夹
	def hash_out(path)
		FolderWriter.new(path,true).write_str_hash(@data)
	end
	#将字符串形式文档输出至文件夹
	def str_out(path)
		FileWriter.new(path).write_str(@data)
	end
end
