#!/usr/bin/env ruby -w
# encoding: GBK
#Ԫ���ݱ�������
class MDData
	attr_reader :key_value_hash#���ݼ�ֵ�Թ�ϣ��
	#��ʼ��
	def initialize(hash)
		@key_value_hash = {}
		hash.each_key do |key|
			add_key_value(key,hash[key])
		end
	end
	#��Ӽ�ֵ��
	def add_key_value(key,value)
		result = true
		if @key_value_hash[key] == nil
			@key_value_hash[key] = value
		else
			result = false
			p "the MDData_key is repeat"
		end
		result
	end
	#���ݼ�ȡֵ
	def get_value(key);@key_value_hash[key] end
	#������м�
	def get_keys;@key_value_hash.keys end
end