
--��������ѡ���
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_50_A13_PJPFXX_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[PFFSID]--���ַ�ʽID
      ,a.[PFXXMC]--����ѡ������
      ,a.[FZ]--��ֵ
      ,c.SCHOOLID as c_PJPFFS_SCHOOLID--�������ַ�ʽ�� ѧУ
      ,c.PFFSMC as c_PJPFFS_PFFSMC--�������ַ�ʽ�� ���ַ�ʽ����

FROM dbo.EDU_ZZJX_50_A13_PJPFXX AS a LEFT OUTER JOIN
      dbo.EDU_ZZJX_50_A12_PJPFFS AS c ON a.PFFSID = c.ID /*���ַ�ʽID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/
GO
