
--����ѡ���
CREATE VIEW [dbo].[VIEW_EDU_ZZJG_11_A02_KPXX_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[XXMC]--ѡ������
      ,a.[KPFSID]--������ʽID
      ,a.[KPFZ]--������ֵ
      ,c.SCHOOLID as c_KPFS_SCHOOLID--������ʽ�� ѧУ
      ,c.KPFSMC as c_KPFS_KPFSMC--������ʽ�� ������ʽ����

FROM dbo.EDU_ZZJG_11_A02_KPXX AS a LEFT OUTER JOIN
      dbo.EDU_ZZJG_11_A03_KPFS AS c ON a.KPFSID = c.ID /*������ʽID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/
GO
