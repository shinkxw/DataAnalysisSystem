
--ѧ�����̴����Ŀ��
CREATE VIEW [dbo].[VIEW_EDU_ZZJG_20_A02_XSPJDFXM_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[DFFSID]--��ַ�ʽID
      ,a.[DFXMMC]--�����Ŀ����
      ,a.[FZ]--��ֵ
      ,c.SCHOOLID as c_XSPJDFFS_SCHOOLID--ѧ�����̴�ַ�ʽ�� ѧУ
      ,c.DFFSMC as c_XSPJDFFS_DFFSMC--ѧ�����̴�ַ�ʽ�� ��ַ�ʽ����
      ,c.ZT as c_XSPJDFFS_ZT--ѧ�����̴�ַ�ʽ�� ״̬

FROM dbo.EDU_ZZJG_20_A02_XSPJDFXM AS a LEFT OUTER JOIN
      dbo.EDU_ZZJG_20_A01_XSPJDFFS AS c ON a.DFFSID = c.ID /*��ַ�ʽID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/
GO
