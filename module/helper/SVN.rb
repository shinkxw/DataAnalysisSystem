#!/usr/bin/env ruby -w
# encoding: GBK
#SVN操作类
class SVN
  @@Preset_comm = 'TortoiseProc /command:'
  #安全提交
  def self.safe_commit(path)
    commit(path) if update(path)#更新是否成功
  end
  #提交
  def self.commit(path)
    system %(#{@@Preset_comm}commit /path:"#{path}")
  end
  #更新
  def self.update(path)
    system %(#{@@Preset_comm}update /path:"#{path}" /closeonend:3)
  end
end
