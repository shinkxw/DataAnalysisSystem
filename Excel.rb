#!/usr/bin/env ruby -w
# encoding: GBK
$root = Dir.pwd
$:.unshift($root)
require 'ScriptLoader'#脚本加载器

path = 'C:/Users/Administrator/Desktop'
ExcelLoader.open_sheet("#{path}/班级名称对应表.xlsx", 'Sheet1') do |sd_arr|
  out_str, last_class_name = '', ''
  sd_arr.each do |row|
    if (row[0] != last_class_name)
      out_str << "UPDATE [HANRUEDU].[dbo].[EDU_ZZJX_02_02_ZZBJ] SET [XZBMC] = '#{row[0]}' WHERE [XZBMC] = '#{row[1]}'\n"
      last_class_name = row[0]
    end
  end
  File.open("#{path}/bjzh.txt","w"){|file| file.puts(out_str)}
end
