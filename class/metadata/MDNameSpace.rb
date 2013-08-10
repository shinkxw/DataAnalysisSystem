#!/usr/bin/env ruby -w
# encoding: GBK
#Ԫ���������ռ���
class MDNameSpace
	include Enumerable
	attr_reader :name#�����ռ�����
	attr_reader :table_arr#�����ռ��б������
	attr_accessor :provider#�����ռ��ṩ��
	attr_accessor :generation_time#�����ռ�����ʱ��
	attr_accessor :config#�����ռ�����
	#��ʼ��
	def initialize(name,provider,generation_time,config = "")
		@name = name
		@table_arr = []
		@provider = provider
		@generation_time = generation_time
		@config = config
	end
	#���ӱ�
	def add_table(table)
		if table.class.to_s == "MDTable"
			@table_arr.push(table)
		else p "MDNameSpace can only put MDTable"
		end
	end
	#���ұ��������ظñ����,���򷵻�nil
	def find_table(table_name);find{|table| table.name == table_name} end
	#ʹ�ø����ͷ�ʽ�ϳ��µ������ռ�
	def cover_combine(new_name_space)
		new_name_space.each do |new_table|
			old_table = find_table(new_table.name)
			if old_table != nil
				old_table = new_table
				p "MDNameSpace: ��#{old_table.name}�ѱ�����"
			else 
				add_table(new_table)
			end
		end
	end
	#���������ռ䣬�����Ǳ��ɾ��
	def update_by(new_name_space)
		new_name_space.each do |new_table|
			old_table = find_table(new_table.name)
			if old_table != nil
				old_table.update_by(new_table)
			else
				add_table(new_table)
				p "MDNameSpace: �������µı�:#{new_table.name}"
				$update_table_name_arr.push(new_table.name)
			end
		end
	end
	#�ж������ռ������Ƿ���Ч
	def is_valid?
		each do |table|
			p "MDNameSpace: ��#{table.name}û���ֶ�" if table.get_field_size == 0
			p "MDNameSpace: ��#{table.name}�ֶ����ظ�" if table.get_field_name_arr.uniq! != nil
			table.each_field do |field|
				p "MDNameSpace: �ֶ�#{field.name}��������ȴ����������" if field.identity == "T" && field.p == "F"
				p "MDNameSpace: �ֶ�#{field.name}Ϊ��������Ϊ��" if field.p == "T" && field.null == "T"
			end#�����ݼ�ֵ�ظ� ���ݵļ�ֵӦ�����ֶ� �ǿ��ֶ�ֵ�ж�
		end
		true
	end
	#���������ռ��б������
	def get_table_num;@table_arr.size end
	#��������ռ������б���������
	def get_table_name_arr;map{|table| table.name} end
	#������
	def each;@table_arr.each{|table| yield(table)} end
end
