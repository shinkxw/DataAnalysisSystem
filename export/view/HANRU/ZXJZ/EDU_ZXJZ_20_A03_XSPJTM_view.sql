
--ѧ��������Ŀ��
CREATE VIEW [dbo].[VIEW_EDU_ZXJZ_20_A03_XSPJTM_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[DFFSID]--��ַ�ʽID
      ,a.[PJXM]--������Ŀ
      ,a.[PJZB]--����ָ��
      ,a.[ZT]--״̬
      ,c.SCHOOLID as c_XSPJDFFS_SCHOOLID--ѧ�����̴�ַ�ʽ�� ѧУ
      ,c.DFFSMC as c_XSPJDFFS_DFFSMC--ѧ�����̴�ַ�ʽ�� ��ַ�ʽ����
      ,c.ZT as c_XSPJDFFS_ZT--ѧ�����̴�ַ�ʽ�� ״̬

FROM dbo.EDU_ZXJZ_20_A03_XSPJTM AS a LEFT OUTER JOIN
      dbo.EDU_ZXJZ_20_A01_XSPJDFFS AS c ON a.DFFSID = c.ID /*��ַ�ʽID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/
GO
