#!/usr/bin/env ruby -w
# encoding: GBK
#SVN������
class SVN
  #�ύ
  def self.commit(path)
    if update(path)#�����Ƿ�ɹ�
      cmd = "svn commit #{path} -m \"DAS auto commit\""
      system cmd
    end
  end
  #����
  def self.update(path)
    cmd = "svn update #{path}"
    system cmd
  end
end
