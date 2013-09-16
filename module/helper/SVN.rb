#!/usr/bin/env ruby -w
# encoding: GBK
#SVN操作类
class SVN
  #提交
  def self.commit(path)
    if update(path)#更新是否成功
      cmd = "svn commit #{path} -m \"DAS auto commit\""
      system cmd
    end
  end
  #更新
  def self.update(path)
    cmd = "svn update #{path}"
    system cmd
  end
end
#p `TortoiseProc /command:commit /path:"D:\技术部\代码\Trunk\DB\SQL\"`
#~ /closeonend:0 不自动关闭对话框
#~ /closeonend:1 如果没发生错误则自动关闭对话框
#~ /closeonend:2 如果没发生错误和冲突则自动关闭对话框
#~ /closeonend:3如果没有错误、冲突和合并，会自动关闭
#~ /closeonend:4如果没有错误、冲突和合并，会自动关闭