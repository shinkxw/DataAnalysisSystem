#!/usr/bin/env ruby -w
# encoding: GBK
#�ַ��������ȡ��
class ArrReader
	attr_reader :arr#�ַ�������
	attr_reader :index#����
	def initialize(arr)
		@arr = []
		if arr.class.to_s == "Array"
			@arr = arr
		else
			p "ArrReader: can only read array"
		end
		@index = 0
	end
	#��ʾ��ǰ��
	def now
		@arr[@index]
	end
	#�����һ�л�nil
	def next
		if @index < @arr.size - 1
			@index += 1
			return @arr[@index]
		else
			return nil
		end
	end
	#����һ��
	def fallback
		if @index > 0
			@index -= 1
		end
	end
	#��ʾǰ��n��
	def before(n)
		if @index - n >= 0
			@arr[@index]
		else
			p "ArrReader: index can not less than 0"
		end
	end
	#��ʾ���n��
	def behind(n)
		if @index + n >= @arr.size - 1
			@arr[@index]
		else
			p "ArrReader: index can not more than arr_size"
		end
	end
end
