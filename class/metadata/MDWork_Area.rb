#!/usr/bin/env ruby -w
# encoding: GBK
#工作区类
class MDWork_Area
	attr_reader :area#元数据域
	$update_table_name_arr = []
	@@data_path = "#{$root}/data"
	@@temporary_path = "#{$root}/data/temporary"
	@@backup_path = "#{$root}/data/backup"
	@@enter_path = "#{$root}/enter"
	@@backup_max_num = 5
	#初始化
	def initialize(area)
		@area = area
		@doc = nil
		save_to_temporary
		backup_work_area
	end
	#自数据库脚本更新数据
	def update_by_sql(sql_file_name)
		str_arr = FileLoader.new("#{@@enter_path}/sql/#{sql_file_name}.sql").get_str_arr
		sql_area = SqlSSAnalyzer.new().analyze(str_arr)
		sql_area.reallocate_namespace
		@area.update_by(sql_area)
		reset_doc
	end
	#自daf格式文件更新数据
	def update_by_daf(daf_file_name)
		out_hash = {}
		str_arr = FileLoader.new("#{@@enter_path}/dafdata/#{daf_file_name}.txt").get_str_arr
		daf_area = DafAnalyzer.new().analyze(str_arr)
		daf_area.reallocate_namespace
		@area.update_by(daf_area)
		reset_doc
		out_hash["sql_update.sql"] = SqlBuilder.new().build_update(@work_area,$update_table_name_arr.uniq)
		FolderWriter.new("#{$root}/export/update/#{@work_area.name}_#{Time.now.strftime("%m%d")}/",true).write_str_hash(out_hash)
	end
	#固化元数据并关闭工作环境
	def save_and_close_work_area
		DirManager.clear_dir("#{$root}/data/temporary")#清空临时文件夹
		save_data
		@area = nil
	end
	#固化数据
	def save_data
		reset_doc
		folder_path = "#{@@data_path}/#{@area.name}_area/"
		DirManager.clear_dir(folder_path)#清空文件夹
		@doc.hash_out(folder_path)
	end
	#将文档存入临时区
	def save_to_temporary
		reset_doc if @doc == nil
		DirManager.clear_dir(@@temporary_path)#清空文件夹
		@doc.hash_out("#{@@temporary_path}/")
	end
	#备份文档
	def backup_work_area
		reset_doc if @doc == nil
		@doc.hash_out("#{@@backup_path}/#{@area.name}_area/#{Time.now.strftime("%y%m%d %H%M%S")}/")
		clean_backup
	end
	#清理指定元数据的备份区
	def clean_backup
		dir_path_arr = DirManager.get_dir_path("#{@@backup_path}/#{@area.name}_area/")
		if dir_path_arr.size > @@backup_max_num
			dir_path_arr.sort! {|a, b| File::ctime(a) <=> File::ctime(b)}
			dir_path_arr.pop(@@backup_max_num)
			dir_path_arr.each do |dir_path|
				DirManager.remove_dir(dir_path)
				puts "MDDoc: 备份#{dir_path}已删除"
			end
		end
	end
	#使用元数据生成Sql脚本
	def bulid_sql(build_folder = true, need_delete = true, need_data = false)
		builder = SqlBuilder.new(need_delete,need_data)
		builder.need_data_name_space_arr = ["EDU_SYS","EDU_ELE","EDU_GB","EDU_JY","EDU_ZJ","EDU_ZZ"]
		build_folder ? builder.build_hash(@area).export : builder.build(@area).export
	end
	#使用元数据生成创建视图语句
	def bulid_view(build_folder = true)
		builder = ViewBuilder.new(nil)
		build_folder ? builder.build_hash(@area).export : builder.build(@area).export
	end
	#使用元数据生成实体验证数据
	def bulid_model;ModelBuilder.new.build(@area).export end
	#使用元数据生成模板数据
	def bulid_template;TemplateBuilder.new.build(@area).export end
	#使用元数据生成表信息
	def bulid_tableinfo;TableinfoBuilder.new.build(@area).export end
	#重新生成元数据文档
	def reset_doc;@doc = DafBuilder.new(true).build(@area) end
end
