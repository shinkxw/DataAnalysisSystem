#!/usr/bin/env ruby -w
# encoding: GBK
$root = Dir.pwd
$:.unshift($root)
require 'ScriptLoader'#�ű�������

def get_jsid(jsxm, db)
  db.EDU_ZZJG_01_01_JZGJBSJ.find{|js| js.XM == jsxm}.ID
end

path = 'E:\������Ŀ\ƽ��ְҵѧ��ѡ������\2014ѧ��ڶ�ѧ��ѡ�޿�Ŀ¼.xls'
DBEntityForQuery.open('kxw', DBConnector.new('192.168.0.8')) do |db|
  jxbs = db.VIEW_EDU_ZZJX_50_A03_JXBSJ_DISP
  ExcelLoader.open_sheet(path, 'Ŀ¼') do |sheet|
    sheet.each_index do |i|
      next if i < 2
      new_jxb = sheet[i]#��� �ον�ʦ �γ����� �Ͽ�ʱ�� �Ͽεص�
      if (new_jxb[1].include?('��'))
        jsxm_arr = new_jxb[1].split('��')
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