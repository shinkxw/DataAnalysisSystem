#!/usr/bin/env ruby -w
# encoding: GBK
#补强型元数据合成器
class MDAddCombiner
	attr_reader :old_area#已合成的元数据
	attr_reader :new_area#待合成的元数据
	attr_reader :builder_version#合成器版本
	attr_reader :name_space_ignore#忽略命名空间进行表数据的合成
	attr_accessor :log#日志对象
	#初始化
	def initialize(name_space_ignore = true,log = [])
		@old_area = nil
		@new_area = nil
		@combiner_version = "0.1"
		@name_space_ignore = name_space_ignore
		@log = log
	end
	#使用新的数据补强旧数据,即不增加表,字段与数据
	def combine(new_area)
		if @old_area == nil
			@old_area = new_area
		else
			@new_area = new_area
			to_combine
		end
		@old_area
	end
	#合成DAF数据
	def to_combine
		if @name_space_ignore
			old_table_arr = @old_area.get_table_arr
			old_table_arr.each do |old_table|
				new_table = @new_area.find_table(old_table.name)
				table_combine(old_table,new_table) if new_table != nil
			end
		end
	end
	#对两表进行合成
	def table_combine(old_table,new_table)
		old_table.explanation = new_table.explanation if old_table.explanation == ""
		old_table.remark = new_table.remark if old_table.remark == ""
		old_table.each_field do |old_field|
			new_field = new_table.find_field(old_field.name)
			if new_field != nil
				old_field.explanation = new_field.explanation if old_field.explanation == ""
				old_field.remark = new_field.remark if (old_field.remark == "" || old_field.remark == nil)
			end
		end
	end
end


