
--�꼶�������
CREATE VIEW [dbo].[VIEW_EDU_ZXXX_02_01_NJ_DISP]
AS
SELECT a.[SCHOOLID]--ѧУ��
      ,a.[NJ]--�꼶��
      ,a.[NJMC]--�꼶����
      ,b.SCHOOLNAME as b_SCHOOL_SCHOOLNAME--ѧУ����
      ,b.SCHOOLTYPE as b_SCHOOL_SCHOOLTYPE--ѧУ����
      ,b.XNID as b_SCHOOL_XNID--ѧ��ID
      ,b.XQID as b_SCHOOL_XQID--ѧ��ID
      ,b.MatchURL as b_SCHOOL_MatchURL--ƥ��url
      ,b.LogLevel as b_SCHOOL_LogLevel--��־����

FROM dbo.EDU_ZXXX_02_01_NJ AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*ѧУ��*/
GO
