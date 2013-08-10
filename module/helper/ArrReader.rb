#!/usr/bin/env ruby -w
# encoding: GBK
#字符串数组读取器
class ArrReader
	attr_reader :arr#字符串数组
	attr_reader :index#索引
	def initialize(arr)
		@arr = []
		if arr.class.to_s == "Array"
			@arr = arr
		else
			p "ArrReader: can only read array"
		end
		@index = 0
	end
	#显示当前行
	def now
		@arr[@index]
	end
	#获得下一行或nil
	def next
		if @index < @arr.size - 1
			@index += 1
			return @arr[@index]
		else
			return nil
		end
	end
	#回退一行
	def fallback
		if @index > 0
			@index -= 1
		end
	end
	#显示前第n行
	def before(n)
		if @index - n >= 0
			@arr[@index]
		else
			p "ArrReader: index can not less than 0"
		end
	end
	#显示后第n行
	def behind(n)
		if @index + n >= @arr.size - 1
			@arr[@index]
		else
			p "ArrReader: index can not more than arr_size"
		end
	end
end
