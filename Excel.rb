#!/usr/bin/env ruby -w
# encoding: GBK
$root = Dir.pwd
$:.unshift($root)
require 'ScriptLoader'#�ű�������

ExcelLoader.open_sheet("#{Dir.pwd}/�༶���ƶ�Ӧ��.xlsx", 'Sheet1') do |sd_arr|
  out_str, last_class_name = '', ''
  sd_arr.each do |row|
    if (row[0] != last_class_name)
      out_str << "#{row[0]}      #{row[1]}      #{row[2]}\n"
      last_class_name = row[0]
    end
  end
  File.open("#{Dir.pwd}/bjzh.txt","w"){|file| file.puts(out_str)}
end
