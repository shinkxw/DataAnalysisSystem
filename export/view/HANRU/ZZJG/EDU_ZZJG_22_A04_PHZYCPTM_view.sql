
--ƽ��ְҵ������Ŀ��
CREATE VIEW [dbo].[VIEW_EDU_ZZJG_22_A04_PHZYCPTM_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[DFFSID]--��ַ�ʽID
      ,a.[CPMCID]--��������ID
      ,a.[CPXM]--������Ŀ
      ,a.[CPZB]--����ָ��
      ,a.[ZT]--״̬
      ,c.SCHOOLID as c_PHZYCPDFFS_SCHOOLID--ƽ��ְҵ������ַ�ʽ�� ѧУ
      ,c.DFFSMC as c_PHZYCPDFFS_DFFSMC--ƽ��ְҵ������ַ�ʽ�� ��ַ�ʽ����
      ,c.ZT as c_PHZYCPDFFS_ZT--ƽ��ְҵ������ַ�ʽ�� ״̬
      ,d.SCHOOLID as d_PHZYCPMC_SCHOOLID--ƽ��ְҵ�������Ʊ� ѧУ
      ,d.KPMC as d_PHZYCPMC_KPMC--ƽ��ְҵ�������Ʊ� ��������
      ,d.BZ as d_PHZYCPMC_BZ--ƽ��ְҵ�������Ʊ� ��ע

FROM dbo.EDU_ZZJG_22_A04_PHZYCPTM AS a LEFT OUTER JOIN
      dbo.EDU_ZZJG_22_A02_PHZYCPDFFS AS c ON a.DFFSID = c.ID /*��ַ�ʽID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_22_A01_PHZYCPMC AS d ON a.CPMCID = d.ID /*��������ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/
GO
