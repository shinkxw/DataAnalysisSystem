#!/usr/bin/env ruby -w
# encoding: GBK
#SVN������
class SVN
  @@Preset_comm = 'TortoiseProc /command:'
  #�ύ
  def self.commit(path)
    if update(path)#�����Ƿ�ɹ�
      system "#{@@Preset_comm}commit /path:\"#{path}\""
    end
  end
  #����
  def self.update(path)
    system "#{@@Preset_comm}update /path:\"#{path}\" /closeonend:3"
  end
end
