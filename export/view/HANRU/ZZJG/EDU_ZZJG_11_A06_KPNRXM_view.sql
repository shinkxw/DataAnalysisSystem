
--����������Ŀ��
CREATE VIEW [dbo].[VIEW_EDU_ZZJG_11_A06_KPNRXM_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[XMMC]--��Ŀ����
      ,a.[XMXX]--��Ŀ��Ϣ
      ,a.[KPNRID]--��������ID
      ,a.[KPFSID]--������ʽID
      ,a.[QZ]--Ȩ��
      ,c.SCHOOLID as c_KPNRSJ_SCHOOLID--�����������ݱ� ѧУ
      ,c.KPNRMC as c_KPNRSJ_KPNRMC--�����������ݱ� ������������
      ,c.KPNRLX as c_KPNRSJ_KPNRLX--�����������ݱ� ������������
      ,c.KPZTID as c_KPNRSJ_KPZTID--�����������ݱ� ��������ID
      ,[cb].MC as c_KPNRSJ_KPZTID_MC--����������� ����
      ,d.SCHOOLID as d_KPFS_SCHOOLID--������ʽ�� ѧУ
      ,d.KPFSMC as d_KPFS_KPFSMC--������ʽ�� ������ʽ����

FROM dbo.EDU_ZZJG_11_A06_KPNRXM AS a LEFT OUTER JOIN
      dbo.EDU_ZZJG_11_A05_KPNRSJ AS c ON a.KPNRID = c.ID /*��������ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_11_A03_KPFS AS d ON a.KPFSID = d.ID /*������ʽID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_KPZT AS [cb] ON c.KPZTID = [cb].DM /*��������ID*/
GO
