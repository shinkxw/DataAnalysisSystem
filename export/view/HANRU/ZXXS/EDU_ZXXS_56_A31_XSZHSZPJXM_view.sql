
--ѧ���ۺ�����������Ŀ��
CREATE VIEW [dbo].[VIEW_EDU_ZXXS_56_A31_XSZHSZPJXM_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[XMMC]--��Ŀ����
      ,a.[YS]--Ҫ��
      ,a.[GJBX]--�ؼ�����
      ,a.[ZWPDDFFSID]--����������ַ�ʽID
      ,a.[XZPDDFFSID]--С��������ַ�ʽID
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

FROM dbo.EDU_ZXXS_56_A31_XSZHSZPJXM AS a LEFT OUTER JOIN
      dbo.EDU_ZXXS_55_A03_CZDADFFS AS c ON a.ZWPDDFFSID = c.ID /*����������ַ�ʽID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZXXS_55_A03_CZDADFFS AS d ON a.XZPDDFFSID = d.ID /*С��������ַ�ʽID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/
GO
