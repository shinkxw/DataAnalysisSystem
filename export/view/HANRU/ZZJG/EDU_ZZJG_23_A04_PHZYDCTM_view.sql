
--ƽ��ְҵ������Ŀ��
CREATE VIEW [dbo].[VIEW_EDU_ZZJG_23_A04_PHZYDCTM_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[DFFSID]--��ַ�ʽID
      ,a.[DCMCID]--��������ID
      ,a.[DCXM]--������Ŀ
      ,a.[DCZB]--����ָ��
      ,a.[ZT]--״̬
      ,c.SCHOOLID as c_PHZYDCDFFS_SCHOOLID--ƽ��ְҵ�����ַ�ʽ�� ѧУ
      ,c.DFFSMC as c_PHZYDCDFFS_DFFSMC--ƽ��ְҵ�����ַ�ʽ�� ��ַ�ʽ����
      ,c.ZT as c_PHZYDCDFFS_ZT--ƽ��ְҵ�����ַ�ʽ�� ״̬
      ,d.SCHOOLID as d_PHZYDCMC_SCHOOLID--ƽ��ְҵ�������Ʊ� ѧУ
      ,d.DCMC as d_PHZYDCMC_DCMC--ƽ��ְҵ�������Ʊ� ��������
      ,d.BZ as d_PHZYDCMC_BZ--ƽ��ְҵ�������Ʊ� ��ע
      ,d.ZT as d_PHZYDCMC_ZT--ƽ��ְҵ�������Ʊ� ״̬

FROM dbo.EDU_ZZJG_23_A04_PHZYDCTM AS a LEFT OUTER JOIN
      dbo.EDU_ZZJG_23_A02_PHZYDCDFFS AS c ON a.DFFSID = c.ID /*��ַ�ʽID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_23_A01_PHZYDCMC AS d ON a.DCMCID = d.ID /*��������ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/
GO
