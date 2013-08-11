#!/usr/bin/env ruby -w
# encoding: GBK
enter = []
export = ""
File.open("#{Dir.pwd}/JYT1006.txt","r") do |file|
	enter = file.readlines
end

enter.each do |str|
	export.concat(str) if str =~ /^表/
end


#将字符串写入文件
File.open("#{Dir.pwd}/1006tablename.txt","w") do |file|
	file.puts(export)
end