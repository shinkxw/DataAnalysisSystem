#!/usr/bin/env ruby -w
# encoding: GBK
#�ĵ���
class MDDoc
	@@export_path = "#{$root}/export"
	#��ʼ��
	def initialize(type,name,data,file_type = "txt")
		@type = type#�ĵ���ʽ
		@name = name#�ĵ���
		@data = data#�ĵ�����
		@file_type = file_type#�ļ���ʽ
	end
	#���չ�������ĵ�
	def export
		case @data.class.to_s
		when "Hash"
			DirManager.remove_dir("#{@@export_path}/#{@type}/#{@name}")#ɾ���ļ���
			hash_out("#{@@export_path}/#{@type}/#{@name}/")
		when "String"
			str_out("#{@@export_path}/#{@type}/#{@name}.#{@file_type}")
		else
			puts "MDDoc: �޷�������ĵ����#{@data.class.to_s}"
		end
	end
	#����ϣ��ʽ�ĵ�������ļ���
	def hash_out(path)
		FolderWriter.new(path,true).write_str_hash(@data)
	end
	#���ַ�����ʽ�ĵ�������ļ���
	def str_out(path)
		FileWriter.new(path).write_str(@data)
	end
end
