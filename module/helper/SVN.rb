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

system 'TortoiseProc /command:update /path:"D:\������\����\Trunk\DB" /closeonend:1'
system 'TortoiseProc /command:commit /path:"D:\������\����\Trunk\DB\" /closeonend:1'

#~ /closeonend:0 ���Զ��رնԻ���
#~ /closeonend:1 ���û�����������Զ��رնԻ���
#~ /closeonend:2 ���û��������ͳ�ͻ���Զ��رնԻ���
#~ /closeonend:3���û�д��󡢳�ͻ�ͺϲ������Զ��ر�
#~ /closeonend:4���û�д��󡢳�ͻ�ͺϲ������Զ��ر�