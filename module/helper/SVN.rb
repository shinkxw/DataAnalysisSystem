#!/usr/bin/env ruby -w
# encoding: GBK
#SVN������
class SVN
  @@Preset_comm = 'TortoiseProc /command:'
  #��ȫ�ύ
  def self.safe_commit(path)
    commit(path) if update(path)#�����Ƿ�ɹ�
  end
  #�ύ
  def self.commit(path)
    system %(#{@@Preset_comm}commit /path:"#{path}")
  end
  #����
  def self.update(path)
    system %(#{@@Preset_comm}update /path:"#{path}" /closeonend:3)
  end
end
