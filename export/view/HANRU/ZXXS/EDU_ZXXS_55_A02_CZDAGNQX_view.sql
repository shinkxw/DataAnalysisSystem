
--�ɳ���������Ȩ�ޱ�
CREATE VIEW [dbo].[VIEW_EDU_ZXXS_55_A02_CZDAGNQX_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[GNID]--����ID
      ,a.[YHLX]--�û�����
      ,a.[QXMC]--Ȩ������
      ,a.[ZT]--״̬
      ,c.SCHOOLID as c_CZDAGN_SCHOOLID--�ɳ��������ܱ� ѧУ
      ,c.GNMC as c_CZDAGN_GNMC--�ɳ��������ܱ� ��������
      ,c.XSCKWZ as c_CZDAGN_XSCKWZ--�ɳ��������ܱ� ѧ���鿴��ַ
      ,c.XSBJWZ as c_CZDAGN_XSBJWZ--�ɳ��������ܱ� ѧ���༭��ַ
      ,c.JSCKWZ as c_CZDAGN_JSCKWZ--�ɳ��������ܱ� ��ʦ�鿴��ַ
      ,c.BZRBJWZ as c_CZDAGN_BZRBJWZ--�ɳ��������ܱ� �����α༭��ַ
      ,c.SFXYDF as c_CZDAGN_SFXYDF--�ɳ��������ܱ� �Ƿ���Ҫ���
      ,c.DFFSID as c_CZDAGN_DFFSID--�ɳ��������ܱ� ��ַ�ʽID
      ,c.PLSX as c_CZDAGN_PLSX--�ɳ��������ܱ� ����˳��
      ,c.ZT as c_CZDAGN_ZT--�ɳ��������ܱ� ״̬

FROM dbo.EDU_ZXXS_55_A02_CZDAGNQX AS a LEFT OUTER JOIN
      dbo.EDU_ZXXS_55_A01_CZDAGN AS c ON a.GNID = c.ID /*����ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/
GO
