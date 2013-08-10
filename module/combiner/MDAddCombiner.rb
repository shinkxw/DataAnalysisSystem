#!/usr/bin/env ruby -w
# encoding: GBK
#��ǿ��Ԫ���ݺϳ���
class MDAddCombiner
	attr_reader :old_area#�Ѻϳɵ�Ԫ����
	attr_reader :new_area#���ϳɵ�Ԫ����
	attr_reader :builder_version#�ϳ����汾
	attr_reader :name_space_ignore#���������ռ���б����ݵĺϳ�
	attr_accessor :log#��־����
	#��ʼ��
	def initialize(name_space_ignore = true,log = [])
		@old_area = nil
		@new_area = nil
		@combiner_version = "0.1"
		@name_space_ignore = name_space_ignore
		@log = log
	end
	#ʹ���µ����ݲ�ǿ������,�������ӱ�,�ֶ�������
	def combine(new_area)
		if @old_area == nil
			@old_area = new_area
		else
			@new_area = new_area
			to_combine
		end
		@old_area
	end
	#�ϳ�DAF����
	def to_combine
		if @name_space_ignore
			old_table_arr = @old_area.get_table_arr
			old_table_arr.each do |old_table|
				new_table = @new_area.find_table(old_table.name)
				table_combine(old_table,new_table) if new_table != nil
			end
		end
	end
	#��������кϳ�
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


