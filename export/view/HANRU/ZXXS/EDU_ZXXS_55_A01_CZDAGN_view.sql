
--�ɳ��������ܱ�
CREATE VIEW [dbo].[VIEW_EDU_ZXXS_55_A01_CZDAGN_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[GNMC]--��������
      ,a.[XSCKWZ]--ѧ���鿴��ַ
      ,a.[XSBJWZ]--ѧ���༭��ַ
      ,a.[JSCKWZ]--��ʦ�鿴��ַ
      ,a.[BZRBJWZ]--�����α༭��ַ
      ,a.[SFXYDF]--�Ƿ���Ҫ���
      ,a.[DFFSID]--��ַ�ʽID
      ,a.[PLSX]--����˳��
      ,a.[ZT]--״̬
      ,c.SCHOOLID as c_CZDADFFS_SCHOOLID--�ɳ�������ַ�ʽ�� ѧУ
      ,c.DFFSMC as c_CZDADFFS_DFFSMC--�ɳ�������ַ�ʽ�� ��ַ�ʽ����
      ,c.DFXMLX as c_CZDADFFS_DFXMLX--�ɳ�������ַ�ʽ�� �����Ŀ����
      ,c.ZT as c_CZDADFFS_ZT--�ɳ�������ַ�ʽ�� ״̬

FROM dbo.EDU_ZXXS_55_A01_CZDAGN AS a LEFT OUTER JOIN
      dbo.EDU_ZXXS_55_A03_CZDADFFS AS c ON a.DFFSID = c.ID /*��ַ�ʽID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/
GO
