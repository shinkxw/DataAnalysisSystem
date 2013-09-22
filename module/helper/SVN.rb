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
    system "#{@@Preset_comm}update /path:\"#{path}\" /closeonend:3"
  end
end
