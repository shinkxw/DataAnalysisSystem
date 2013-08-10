#!/usr/bin/env ruby -w
# encoding: GBK
#����ƥ���޸���
class Code_Changer
	@@change_num = 0#�޸Ĵ���
	#�޸�ָ��Ŀ¼�µ����д����ļ�
	def self.change_all(loading_path)
		change(loading_path)
		directory_name_arr = get_directory(loading_path)
		directory_name_arr.each do |directory_name|
			new_loading_path = loading_path + "/" + directory_name
			change_all(new_loading_path)
		end
		@@change_num
	end
	#�޸�ָ��Ŀ¼�е����д����ļ�
	def self.change(loading_path)
		change_folder(loading_path)
	end
	#����ָ��Ŀ¼�е�����Ŀ¼��
	def self.get_directory(path)
		result = []
		Dir.foreach(path) do |file|
			result.push(file) if File.directory?(path+"/"+file) && file != "." && file != ".." && file != "APPSITE"
		end
		result
	end
	#ƥ�䲢�޸�ָ��Ŀ¼�е����д����ļ�
	def self.change_folder(path)
		Dir.foreach(path) do |file|
			change_code("#{path}/#{file}")if File.extname(file) == ".cshtml" && File.extname(file) == ".cs"
		end
	end
	#����ļ���ʽ
	def self.get_encode(file_path)
		File.open("#{file_path}","r:GBK") do |file|
			if file.read.valid_encoding?
				return "GBK"
			else
				return "UTF-8"
			end
		end
	end
	#ƥ�䲢�޸�ָ���ļ�
	def self.change_code(file_path)
		encode = get_encode(file_path)
		file_str = ""
		File.open("#{file_path}","r:#{encode}") do |file|
			str_arr = file.readlines
			str_arr.each do |str|
				#@Url.Content\("[^~]
				#src="[^@]
				#onclick
				if str =~ /^[^"]*?if[^=<>!]*?(=(?!=|~)(?!<>!)).*?$/
						puts file_path
						puts str
						@@change_num += 1
						p ""

				end
				file_str.concat(str)
			end
		end
		#~ File.open(file_path,"w:#{encode}") do |file|
			#~ file.puts(file_str)
		#~ end
	end
end
#root = Dir.pwd
p Code_Changer.change_all("D:/������/HanruEdu_ZZZZ/����/Trunk")

