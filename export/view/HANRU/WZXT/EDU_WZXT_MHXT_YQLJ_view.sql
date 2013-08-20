
--��������
CREATE VIEW [dbo].[VIEW_EDU_WZXT_MHXT_YQLJ_DISP]
AS
SELECT a.[ID]--��������ID
      ,a.[SCHOOLID]--ѧУ��
      ,a.[WEBID]--��վID
      ,a.[TITLE]--����
      ,a.[TYPEID]--����
      ,a.[IMAGEURL]--ͼƬ
      ,a.[URL]--����
      ,b.SCHOOLNAME as b_SCHOOL_SCHOOLNAME--ѧУ����
      ,b.SCHOOLTYPE as b_SCHOOL_SCHOOLTYPE--ѧУ����
      ,b.XNID as b_SCHOOL_XNID--ѧ��ID
      ,b.XQID as b_SCHOOL_XQID--ѧ��ID
      ,b.MatchURL as b_SCHOOL_MatchURL--ƥ��url
      ,b.LogLevel as b_SCHOOL_LogLevel--��־����
      ,c.SCHOOLID as c_WZPZ_SCHOOLID--ѧУ��
      ,c.WEBNAME as c_WZPZ_WEBNAME--��վ��
      ,c.STATUID as c_WZPZ_STATUID--�Ƿ���
      ,c.WEBURL as c_WZPZ_WEBURL--��ַ
      ,c.CSSID as c_WZPZ_CSSID--��վ��ʽ
      ,d.SCHOOLID as d_YQLJLX_SCHOOLID--ѧУ��
      ,d.WEBID as d_YQLJLX_WEBID--��վID
      ,d.NAME as d_YQLJLX_NAME--������
      ,d.SHOWSTYLE as d_YQLJLX_SHOWSTYLE--��ʾ��ʽ

FROM dbo.EDU_WZXT_MHXT_YQLJ AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_WZXT_MHXT_WZPZ AS c ON a.WEBID = c.WEBID /*��վID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_WZXT_MHXT_YQLJLX AS d ON a.TYPEID = d.ID /*����*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ��*/ AND a.WEBID = d.WEBID /*��վID*/
GO