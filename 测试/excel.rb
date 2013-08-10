#!/usr/bin/env ruby -w
# encoding: GBK
require 'win32ole'
class ExcelLoader
	attr_reader :excel#OLE excel 服务
	attr_accessor :root#根目录
	#初始化
	def initialize
		@root = Dir.pwd
		@excel = WIN32OLE::new('excel.Application')
		@excel.Visible = false
	end
	def load_excel(xls_file_name,sheet_num)
		out_str = ""
    @excel.WorkBooks.Open("#{@root}/#{xls_file_name}.xls")
		for i in 2 .. sheet_num
			s_name = "Table #{i}"
			out_str.concat("#{s_name}\n")
			@excel.WorkSheets(s_name).Activate
			cols = @excel.WorkSheets(s_name).UsedRange.Columns.Count
			rows = @excel.WorkSheets(s_name).UsedRange.Rows.Count
			for row in 1..rows
				break if @excel.Cells(row, 1).value.to_s == ""
				for col in 1..cols
					str = @excel.Cells(row, col).value.to_s.gsub(/\s/,"")
					out_str.concat("#{str == "" ? "NULL" : str}---")
				end
				out_str.concat("\n")
			end
			out_str.concat("\n\n")
		end
    @excel.WorkBooks.Close()
		out_str
	end
end
excel_loader = ExcelLoader.new
str = excel_loader.load_excel("1006",341)
File.open("#{Dir.pwd}/1004.txt","w") do |file|
	file.puts(str)
end