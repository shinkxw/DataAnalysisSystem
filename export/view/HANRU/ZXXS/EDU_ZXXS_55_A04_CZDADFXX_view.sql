
--�ɳ��������ѡ���
CREATE VIEW [dbo].[VIEW_EDU_ZXXS_55_A04_CZDADFXX_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[DFFSID]--��ַ�ʽID
      ,a.[XXNR]--ѡ������
      ,a.[TPLJ]--ͼƬ·��
      ,c.SCHOOLID as c_CZDADFFS_SCHOOLID--�ɳ�������ַ�ʽ�� ѧУ
      ,c.GNID as c_CZDADFFS_GNID--�ɳ�������ַ�ʽ�� ����ID
      ,c.DFFSMC as c_CZDADFFS_DFFSMC--�ɳ�������ַ�ʽ�� ��ַ�ʽ����
      ,c.DFXMLX as c_CZDADFFS_DFXMLX--�ɳ�������ַ�ʽ�� �����Ŀ����
      ,c.ZT as c_CZDADFFS_ZT--�ɳ�������ַ�ʽ�� ״̬

FROM dbo.EDU_ZXXS_55_A04_CZDADFXX AS a LEFT OUTER JOIN
      dbo.EDU_ZXXS_55_A03_CZDADFFS AS c ON a.DFFSID = c.ID /*��ַ�ʽID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/
GO
