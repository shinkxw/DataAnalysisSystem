#!/usr/bin/env ruby -w
# encoding: GBK
class ServiceTable
	attr_reader :name#����
	attr_reader :explanation #��˵��
	attr_reader :field_arr#�����ֶ���
	#��ʼ��
	def initialize(name,explanation)
		@name = name
		@explanation = explanation
		@field_arr = []
	end
	#ת��ΪԪ����
	def to_mdtable
		mdtable = MDTable.new(@name,@explanation,"")
		mdtable.add_field(MDField.new(self,"SCHOOLID","int","F","T","ѧУ��","ѧУID"))
		@field_arr.each do |field|
			mdtable.add_field(field.to_mdfield(self))
		end
		add_primary_key(mdtable)
		mdtable
	end
	#�����ֶ�
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
	#��������
	def add_primary_key(table)
		field = table.field_area.field_arr[1]
		field.p = "T" if field.null == "F"
	end
	#�����ֶ�
	def each_field
		@field_arr.each do |field|
			yield(field)
		end
	end
end