
--����ʱ���
CREATE VIEW [dbo].[VIEW_EDU_ZXJX_52_A01_KSSJ_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[KSID]--����ID
      ,a.[KSRQ]--��������
      ,a.[KSSJ]--����ʱ��
      ,a.[BZ]--��ע
      ,a.[CCMC]--��������
      ,c.SCHOOLID as c_KS_SCHOOLID--�������ݱ� ѧУ��
      ,c.XNID as c_KS_XNID--�������ݱ� ѧ��
      ,c.XQID as c_KS_XQID--�������ݱ� ѧ��
      ,c.KSMC as c_KS_KSMC--�������ݱ� ��������
      ,c.KSKSSJ as c_KS_KSKSSJ--�������ݱ� ���Կ�ʼʱ��
      ,c.KSJSSJ as c_KS_KSJSSJ--�������ݱ� ���Խ���ʱ��
      ,c.DFKSSJ as c_KS_DFKSSJ--�������ݱ� �Ƿֿ�ʼʱ��
      ,c.DFJSSJ as c_KS_DFJSSJ--�������ݱ� �Ƿֽ���ʱ��
      ,c.DFKS as c_KS_DFKS--�������ݱ� �Ƿַ�ʽ
      ,c.SFYXCX as c_KS_SFYXCX--�������ݱ� �Ƿ������ѯ
      ,[cb].MC as c_KS_SFYXCX_MC--�Ƿ��־����� ����
      ,c.SFXYPK as c_KS_SFXYPK--�������ݱ� �Ƿ���Ҫ�ſ�
      ,[cc].MC as c_KS_SFXYPK_MC--�Ƿ��־����� ����

FROM dbo.EDU_ZXJX_52_A01_KSSJ AS a LEFT OUTER JOIN
      dbo.EDU_ZXJX_05_A01_KS AS c ON a.KSID = c.ID /*����ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [cb] ON c.SFYXCX = [cb].DM /*�Ƿ������ѯ*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [cc] ON c.SFXYPK = [cc].DM /*�Ƿ���Ҫ�ſ�*/
GO
