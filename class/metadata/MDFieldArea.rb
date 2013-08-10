#!/usr/bin/env ruby -w
# encoding: GBK
#元数据表字段域类
class MDFieldArea
	include Enumerable
	attr_reader :field_arr#域中字段数组
	attr_accessor :config#字段域配置
	#初始化
	def initialize(config = "")
		@field_arr = []
		@config = config
	end
	#增加字段
	def add_field(field)
		if field.class.to_s == "MDField"
			@field_arr.push(field)
		else
			p "MDFieldArea can only put MDField"
		end
	end
	#是否存在自增字段
	def has_identity?;find{|field| field.identity == "T"} end
	#迭代字段
	def each;@field_arr.each{|field| yield(field)} end
end
