#!/usr/bin/env ruby -w
# encoding: GBK
$root = Dir.pwd
$:.unshift($root)
require 'ScriptLoader'#脚本加载器

DBEntityForQuery.open('HanruEdu', DBConnector.new('192.168.0.8')) do |db|
  #p db.select{|table| table.name.length > 36}
  #p db.EDU_ZZJG_01_01_JZGJBSJ.find{|d| d.schoolid == 1 && d.gh == '2'}
  
  db.select{|t| t.fields.any?{|f| f.name.upcase == "SCHOOLID"}}.sort_by {|t| t.name}.each do |table|
    puts "DELETE FROM [HANRUEDU].[dbo].[#{table.name}] WHERE SCHOOLID=@SCHOOLID"
  end
  
  #~ school_hash = db.EDU_ZYZX_01_A01_ZYML.group_by{|d| d.SCHOOLID}
  #~ school_hash.each do |schoolid, school_arr|
    #~ ml_hash = school_arr.group_by{|d| d.FMLID}
    #~ fml_arr = []
    #~ lsml_arr = [DBDataForQuery.new([:ID,:FMLIDLB],[0,':0:'])]
    #~ until lsml_arr.empty?
      #~ fml_arr = lsml_arr
      #~ lsml_arr = []
      #~ fml_arr.each do |fml|
        #~ ml_arr = ml_hash[fml.ID]
        #~ next unless ml_arr
        #~ ml_arr.each do |ml|
          #~ ml.FMLIDLB = fml.FMLIDLB + ml.ID.to_s + ':'
          #~ lsml_arr << ml
        #~ end
      #~ end
    #~ end
  #~ end
end