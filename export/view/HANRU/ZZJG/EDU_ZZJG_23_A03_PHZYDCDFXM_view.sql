
--ƽ��ְҵ��������Ŀ��
CREATE VIEW [dbo].[VIEW_EDU_ZZJG_23_A03_PHZYDCDFXM_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[DFFSID]--��ַ�ʽID
      ,a.[DFXMMC]--�����Ŀ����
      ,a.[FZ]--��ֵ
      ,c.SCHOOLID as c_PHZYDCDFFS_SCHOOLID--ƽ��ְҵ�����ַ�ʽ�� ѧУ
      ,c.DFFSMC as c_PHZYDCDFFS_DFFSMC--ƽ��ְҵ�����ַ�ʽ�� ��ַ�ʽ����
      ,c.ZT as c_PHZYDCDFFS_ZT--ƽ��ְҵ�����ַ�ʽ�� ״̬

FROM dbo.EDU_ZZJG_23_A03_PHZYDCDFXM AS a LEFT OUTER JOIN
      dbo.EDU_ZZJG_23_A02_PHZYDCDFFS AS c ON a.DFFSID = c.ID /*��ַ�ʽID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/
GO
