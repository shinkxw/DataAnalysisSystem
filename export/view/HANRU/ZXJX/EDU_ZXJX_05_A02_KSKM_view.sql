
--���Կ�Ŀ���ݱ�
CREATE VIEW [dbo].[VIEW_EDU_ZXJX_05_A02_KSKM_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ��
      ,a.[SSKSID]--��������ID
      ,a.[JSRKID]--��ʦ�οα��
      ,a.[KCMC]--�γ�����
      ,a.[NJMC]--�꼶����
      ,a.[BJMC]--�༶����
      ,a.[CJZF]--�ɼ��ܷ�
      ,c.SCHOOLID as c_KS_SCHOOLID--�������ݱ� ѧУ��
      ,c.XNID as c_KS_XNID--�������ݱ� ѧ��
      ,c.XQID as c_KS_XQID--�������ݱ� ѧ��
      ,c.KSMC as c_KS_KSMC--�������ݱ� ��������
      ,c.KSKSSJ as c_KS_KSKSSJ--�������ݱ� ���Կ�ʼʱ��
      ,c.KSJSSJ as c_KS_KSJSSJ--�������ݱ� ���Խ���ʱ��
      ,c.DFKSSJ as c_KS_DFKSSJ--�������ݱ� �Ƿֿ�ʼʱ��
      ,c.DFJSSJ as c_KS_DFJSSJ--�������ݱ� �Ƿֽ���ʱ��
      ,c.DFKS as c_KS_DFKS--�������ݱ� �Ƿַ�ʽ
      ,d.SCHOOLID as d_RKSJ_SCHOOLID--�ο���������� ѧУ��
      ,d.JZGJBSJID as d_RKSJ_JZGJBSJID--�ο���������� ��ְ���������������
      ,d.RKKCH as d_RKSJ_RKKCH--�ο���������� �οογ̺�
      ,d.RKQSNY as d_RKSJ_RKQSNY--�ο���������� �ο���ʼ����
      ,d.RKZZNY as d_RKSJ_RKZZNY--�ο���������� �ο���ֹ����
      ,d.RKZXS as d_RKSJ_RKZXS--�ο���������� �ο���ѧʱ
      ,d.RKXDM as d_RKSJ_RKXDM--�ο���������� �ο�ѧ����
      ,[db].MC as d_RKSJ_RKXDM_MC--�ο�ѧ�δ���� ����
      ,d.RKJSM as d_RKSJ_RKJSM--�ο���������� �ον�ɫ��
      ,[dc].MC as d_RKSJ_RKJSM_MC--�ον�ɫ����� ����
      ,d.SKBJ as d_RKSJ_SKBJ--�ο���������� �ڿΰ༶
      ,d.SKRS as d_RKSJ_SKRS--�ο���������� �ڿ�����
      ,d.ZKS as d_RKSJ_ZKS--�ο���������� �ܿ�ʱ
      ,d.SFLT as d_RKSJ_SFLT--�ο���������� �Ƿ�����
      ,[dd].MC as d_RKSJ_SFLT_MC--�Ƿ��־����� ����
      ,d.NJID as d_RKSJ_NJID--�ο���������� �꼶��
      ,d.XQID as d_RKSJ_XQID--�ο���������� ѧ��
      ,d.XNID as d_RKSJ_XNID--�ο���������� ѧ��

FROM dbo.EDU_ZXJX_05_A02_KSKM AS a LEFT OUTER JOIN
      dbo.EDU_ZXJX_05_A01_KS AS c ON a.SSKSID = c.ID /*��������ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZXJZ_07_02_RKSJ AS d ON a.JSRKID = d.ID /*��ʦ�οα��*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_RKXD AS [db] ON d.RKXDM = [db].DM /*�ο�ѧ����*/ LEFT OUTER JOIN
      dbo.EDU_JY_RKJS AS [dc] ON d.RKJSM = [dc].DM /*�ον�ɫ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [dd] ON d.SFLT = [dd].DM /*�Ƿ�����*/
GO
