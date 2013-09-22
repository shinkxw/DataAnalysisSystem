#!/usr/bin/env ruby -w
# encoding: GBK
#SVN操作类
class SVN
  @@Preset_comm = 'TortoiseProc /command:'
  #提交
  def self.commit(path)
    if update(path)#更新是否成功
      system "#{@@Preset_comm}commit /path:\"#{path}\""
    end
  end
  #更新
  def self.update(path)
    system "#{@@Preset_comm}update /path:\"#{path}\" /closeonend:1"
  end
end
#~ /closeonend:0 不自动关闭对话框
#~ /closeonend:1 如果没发生错误则自动关闭对话框
#~ /closeonend:2 如果没发生错误和冲突则自动关闭对话框
#~ /closeonend:3如果没有错误、冲突和合并，会自动关闭
#~ /closeonend:4如果没有错误、冲突和合并，会自动关闭