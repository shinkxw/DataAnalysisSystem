
--��վ����
CREATE VIEW [dbo].[VIEW_EDU_WZXT_MHXT_WZPZ_DISP]
AS
SELECT a.[WEBID]--��վID
      ,a.[SCHOOLID]--ѧУ��
      ,a.[WEBNAME]--��վ��
      ,a.[STATUID]--�Ƿ���
      ,a.[WEBURL]--��ַ
      ,a.[CSSID]--��վ��ʽ
      ,b.SCHOOLID as b_WZPZ_SCHOOLID--ѧУ��
      ,b.WEBNAME as b_WZPZ_WEBNAME--��վ��
      ,b.STATUID as b_WZPZ_STATUID--�Ƿ���
      ,b.WEBURL as b_WZPZ_WEBURL--��ַ
      ,b.CSSID as b_WZPZ_CSSID--��վ��ʽ
      ,c.SCHOOLNAME as c_SCHOOL_SCHOOLNAME--ѧУ����
      ,c.SCHOOLTYPE as c_SCHOOL_SCHOOLTYPE--ѧУ����
      ,c.XNID as c_SCHOOL_XNID--ѧ��ID
      ,c.XQID as c_SCHOOL_XQID--ѧ��ID
      ,c.MatchURL as c_SCHOOL_MatchURL--ƥ��url
      ,c.LogLevel as c_SCHOOL_LogLevel--��־����
      ,d.SCHOOLID as d_WZYS_SCHOOLID--ѧУ��
      ,d.WEBID as d_WZYS_WEBID--��վID
      ,d.NAME as d_WZYS_NAME--��ʽ��
      ,d.SHOWIMG as d_WZYS_SHOWIMG--Ч��ͼ

FROM dbo.EDU_WZXT_MHXT_WZPZ AS a LEFT OUTER JOIN
      dbo.EDU_WZXT_MHXT_WZPZ AS b ON a.WEBID = b.WEBID /*��վID*/ AND a.SCHOOLID = b.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS c ON a.SCHOOLID = c.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_WZXT_MHXT_WZYS AS d ON a.CSSID = d.ID /*��վ��ʽ*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ��*/ AND a.WEBID = d.WEBID /*��վID*/
GO
