
--�ɳ�������ַ�ʽ��
CREATE VIEW [dbo].[VIEW_EDU_ZXXS_55_A03_CZDADFFS_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[GNID]--����ID
      ,a.[DFFSMC]--��ַ�ʽ����
      ,a.[DFXMLX]--�����Ŀ����
      ,a.[ZT]--״̬
      ,c.SCHOOLID as c_CZDAGN_SCHOOLID--�ɳ��������ܱ� ѧУ
      ,c.GNMC as c_CZDAGN_GNMC--�ɳ��������ܱ� ��������
      ,c.WZ as c_CZDAGN_WZ--�ɳ��������ܱ� ��ַ
      ,c.PLSX as c_CZDAGN_PLSX--�ɳ��������ܱ� ����˳��
      ,c.ZT as c_CZDAGN_ZT--�ɳ��������ܱ� ״̬

FROM dbo.EDU_ZXXS_55_A03_CZDADFFS AS a LEFT OUTER JOIN
      dbo.EDU_ZXXS_55_A01_CZDAGN AS c ON a.GNID = c.ID /*����ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/
GO
