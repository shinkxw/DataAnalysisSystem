
--ѧ���
CREATE VIEW [dbo].[VIEW_EDU_SYS_01_XN_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ��
      ,a.[XN]--ѧ��
      ,b.SCHOOLNAME as b_SCHOOL_SCHOOLNAME--ѧУ���ñ� ѧУ����
      ,b.SCHOOLTYPE as b_SCHOOL_SCHOOLTYPE--ѧУ���ñ� ѧУ����
      ,b.XNID as b_SCHOOL_XNID--ѧУ���ñ� ѧ��ID
      ,b.XQID as b_SCHOOL_XQID--ѧУ���ñ� ѧ��ID
      ,b.MatchURL as b_SCHOOL_MatchURL--ѧУ���ñ� ƥ��url
      ,b.MenhuURL as b_SCHOOL_MenhuURL--ѧУ���ñ� �Ż�url
      ,b.MenhuWebid as b_SCHOOL_MenhuWebid--ѧУ���ñ� �Ż�webid
      ,b.LogLevel as b_SCHOOL_LogLevel--ѧУ���ñ� ��־����
      ,b.ModuleIdList as b_SCHOOL_ModuleIdList--ѧУ���ñ� Ȩ���б�

FROM dbo.EDU_SYS_01_XN AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*ѧУ��*/
GO
