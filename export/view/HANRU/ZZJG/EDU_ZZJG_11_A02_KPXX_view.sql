
--����ѡ���
CREATE VIEW [dbo].[VIEW_EDU_ZZJG_11_A02_KPXX_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[XXMC]--ѡ������
      ,a.[KPFSID]--������ʽID
      ,a.[KPFZID]--������ֵID
      ,c.SCHOOLID as c_KPFS_SCHOOLID--������ʽ�� ѧУ
      ,c.KPFSMC as c_KPFS_KPFSMC--������ʽ�� ������ʽ����
      ,d.SCHOOLID as d_KPFZ_SCHOOLID--������ֵ�� ѧУ
      ,d.FZMC as d_KPFZ_FZMC--������ֵ�� ��ֵ����
      ,d.FSZ as d_KPFZ_FSZ--������ֵ�� ����ֵ

FROM dbo.EDU_ZZJG_11_A02_KPXX AS a LEFT OUTER JOIN
      dbo.EDU_ZZJG_11_A03_KPFS AS c ON a.KPFSID = c.ID /*������ʽID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_11_A01_KPFZ AS d ON a.KPFZID = d.ID /*������ֵID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/
GO
