
--�����������۱�
CREATE VIEW [dbo].[VIEW_EDU_ZYFZ_02_A05_GZNRPL_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[GZNRID]--��������ID
      ,a.[PLNR]--��������
      ,a.[PLR]--������
      ,a.[PLSJ]--����ʱ��
      ,c.SCHOOLID as c_GZNR_SCHOOLID--�������ݱ� ѧУ
      ,c.BT as c_GZNR_BT--�������ݱ� ����
      ,c.GJC as c_GZNR_GJC--�������ݱ� �ؼ���
      ,c.SSLMID as c_GZNR_SSLMID--�������ݱ� ������ĿID
      ,c.SSXKID as c_GZNR_SSXKID--�������ݱ� ����ѧ��ID
      ,c.SSNJID as c_GZNR_SSNJID--�������ݱ� �����꼶ID
      ,c.SFGK as c_GZNR_SFGK--�������ݱ� �Ƿ񹫿�
      ,[cb].MC as c_GZNR_SFGK_MC--�Ƿ��־����� ����
      ,c.NR as c_GZNR_NR--�������ݱ� ����
      ,c.FBRID as c_GZNR_FBRID--�������ݱ� ������ID
      ,c.FBSJ as c_GZNR_FBSJ--�������ݱ� ����ʱ��
      ,c.LLL as c_GZNR_LLL--�������ݱ� �����
      ,c.XQID as c_GZNR_XQID--�������ݱ� ѧ��ID

FROM dbo.EDU_ZYFZ_02_A05_GZNRPL AS a LEFT OUTER JOIN
      dbo.EDU_ZYFZ_02_A04_GZNR AS c ON a.GZNRID = c.ID /*��������ID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [cb] ON c.SFGK = [cb].DM /*�Ƿ񹫿�*/
GO
