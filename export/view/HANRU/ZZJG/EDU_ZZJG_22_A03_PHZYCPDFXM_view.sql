
--ƽ��ְҵ���������Ŀ��
CREATE VIEW [dbo].[VIEW_EDU_ZZJG_22_A03_PHZYCPDFXM_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[DFFSID]--��ַ�ʽID
      ,a.[DFXMMC]--�����Ŀ����
      ,a.[FZ]--��ֵ
      ,c.SCHOOLID as c_PHZYCPDFFS_SCHOOLID--ƽ��ְҵ������ַ�ʽ�� ѧУ
      ,c.DFFSMC as c_PHZYCPDFFS_DFFSMC--ƽ��ְҵ������ַ�ʽ�� ��ַ�ʽ����
      ,c.ZT as c_PHZYCPDFFS_ZT--ƽ��ְҵ������ַ�ʽ�� ״̬

FROM dbo.EDU_ZZJG_22_A03_PHZYCPDFXM AS a LEFT OUTER JOIN
      dbo.EDU_ZZJG_22_A02_PHZYCPDFFS AS c ON a.DFFSID = c.ID /*��ַ�ʽID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/
GO
