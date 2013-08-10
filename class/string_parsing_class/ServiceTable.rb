#!/usr/bin/env ruby -w
# encoding: GBK
class ServiceTable
	attr_reader :name#表名
	attr_reader :explanation #表说明
	attr_reader :field_arr#表中字段域
	#初始化
	def initialize(name,explanation)
		@name = name
		@explanation = explanation
		@field_arr = []
	end
	#转换为元数据
	def to_mdtable
		mdtable = MDTable.new(@name,@explanation,"")
		mdtable.add_field(MDField.new(self,"SCHOOLID","int","F","T","学校名","学校ID"))
		@field_arr.each do |field|
			mdtable.add_field(field.to_mdfield(self))
		end
		add_primary_key(mdtable)
		mdtable
	end
	#增加字段
	def add_field(field)
		result = true
		if field.class.to_s == "ServiceTableField"
			@field_arr.push(field)
		else
			p "ServiceTable can only put ServiceTableField"
			result = false
		end
		result
	end
	#增加主键
	def add_primary_key(table)
		field = table.field_area.field_arr[1]
		field.p = "T" if field.null == "F"
	end
	#迭代字段
	def each_field
		@field_arr.each do |field|
			yield(field)
		end
	end
end