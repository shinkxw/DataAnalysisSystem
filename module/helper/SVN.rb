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
