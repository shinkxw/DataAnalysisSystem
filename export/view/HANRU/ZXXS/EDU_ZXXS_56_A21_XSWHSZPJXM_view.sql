
--ѧ���Ļ�����������Ŀ��
CREATE VIEW [dbo].[VIEW_EDU_ZXXS_56_A21_XSWHSZPJXM_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[KCMC]--�γ�����
      ,a.[PJXM]--������Ŀ
      ,a.[CJDFFSID]--�ɼ���ַ�ʽID
      ,a.[PJDFFSID]--���۴�ַ�ʽID
      ,a.[PLSX]--����˳��
      ,a.[ZT]--״̬
      ,c.SCHOOLID as c_CZDADFFS_SCHOOLID--�ɳ�������ַ�ʽ�� ѧУ
      ,c.DFFSMC as c_CZDADFFS_DFFSMC--�ɳ�������ַ�ʽ�� ��ַ�ʽ����
      ,c.DFXMLX as c_CZDADFFS_DFXMLX--�ɳ�������ַ�ʽ�� �����Ŀ����
      ,c.ZT as c_CZDADFFS_ZT--�ɳ�������ַ�ʽ�� ״̬
      ,d.SCHOOLID as d_CZDADFFS_SCHOOLID--�ɳ�������ַ�ʽ�� ѧУ
      ,d.DFFSMC as d_CZDADFFS_DFFSMC--�ɳ�������ַ�ʽ�� ��ַ�ʽ����
      ,d.DFXMLX as d_CZDADFFS_DFXMLX--�ɳ�������ַ�ʽ�� �����Ŀ����
      ,d.ZT as d_CZDADFFS_ZT--�ɳ�������ַ�ʽ�� ״̬

FROM dbo.EDU_ZXXS_56_A21_XSWHSZPJXM AS a LEFT OUTER JOIN
      dbo.EDU_ZXXS_55_A03_CZDADFFS AS c ON a.CJDFFSID = c.ID /*�ɼ���ַ�ʽID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZXXS_55_A03_CZDADFFS AS d ON a.PJDFFSID = d.ID /*���۴�ַ�ʽID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/
GO
