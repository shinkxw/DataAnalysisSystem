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
    system "#{@@Preset_comm}update /path:\"#{path}\" /closeonend:1"
  end
end
#~ /closeonend:0 ���Զ��رնԻ���
#~ /closeonend:1 ���û�����������Զ��رնԻ���
#~ /closeonend:2 ���û��������ͳ�ͻ���Զ��رնԻ���
#~ /closeonend:3���û�д��󡢳�ͻ�ͺϲ������Զ��ر�
#~ /closeonend:4���û�д��󡢳�ͻ�ͺϲ������Զ��ر�