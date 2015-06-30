#!/usr/bin/env ruby -w
# encoding: GBK
$root = Dir.pwd
$:.unshift($root)
require 'ScriptLoader'#脚本加载器

def get_jsid(jsxm, db)
  db.EDU_ZZJG_01_01_JZGJBSJ.find{|js| js.XM == jsxm}.ID
end

path = 'E:\经手项目\平湖职业学生选课评教\2014学年第二学期选修课目录.xls'
DBEntityForQuery.open('kxw', DBConnector.new('192.168.0.8')) do |db|
  jxbs = db.VIEW_EDU_ZZJX_50_A03_JXBSJ_DISP
  ExcelLoader.open_sheet(path, '目录') do |sheet|
    sheet.each_index do |i|
      next if i < 2
      new_jxb = sheet[i]#序号 任课教师 课程名称 上课时间 上课地点
      if (new_jxb[1].include?('、'))
        jsxm_arr = new_jxb[1].split('、')
        old_jxbs = jxbs.find_all{|jxb| new_jxb[2] == jxb.KCMC && new_jxb[1].include?(jxb.e_JZGJBSJ_XM) && jxb.SKDD == new_jxb[4] && jxb.f_KKSJ_SKSJ == new_jxb[3]}
        old_jxbs.each do |jxb|
          dqxm_arr = jsxm_arr.find_all{|xm| xm != jxb.e_JZGJBSJ_XM}
          jsxmlb = dqxm_arr.join(',')
          jsidlb = ',' << dqxm_arr.map{|xm| get_jsid(xm, db)}.join(',') << ','
          puts "UPDATE [kxw].[dbo].[EDU_ZZJX_50_A03_JXBSJ] SET [QTJSIDLB] = '#{jsidlb}',[QTJSMCLB] = '#{jsxmlb}' WHERE [ID] = #{jxb.ID} AND [SCHOOLID] = 1"
        end
        #puts "#{old_jxbs.map{|oj| oj.e_JZGJBSJ_XM}.join(' | ')} -> #{jsxmlb} #{jsidlb}"
      end
    end
  end

end