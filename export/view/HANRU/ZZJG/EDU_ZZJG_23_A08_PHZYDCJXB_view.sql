
--ƽ��ְҵ�����ѧ����
CREATE VIEW [dbo].[VIEW_EDU_ZZJG_23_A08_PHZYDCJXB_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[DCMCID]--��������ID
      ,a.[JXBMC]--��ѧ������
      ,a.[MESX]--��������
      ,c.SCHOOLID as c_PHZYDCMC_SCHOOLID--ƽ��ְҵ�������Ʊ� ѧУ
      ,c.DCMC as c_PHZYDCMC_DCMC--ƽ��ְҵ�������Ʊ� ��������
      ,c.BZ as c_PHZYDCMC_BZ--ƽ��ְҵ�������Ʊ� ��ע
      ,c.ZT as c_PHZYDCMC_ZT--ƽ��ְҵ�������Ʊ� ״̬

FROM dbo.EDU_ZZJG_23_A08_PHZYDCJXB AS a LEFT OUTER JOIN
      dbo.EDU_ZZJG_23_A01_PHZYDCMC AS c ON a.DCMCID = c.ID /*��������ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/
GO
