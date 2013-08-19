
--ͶƱ��Ŀѡ��
CREATE VIEW [dbo].[VIEW_EDU_WZXT_TPXT_TPXX_DISP]
AS
SELECT a.[ID]--ͶƱ��Ŀѡ��ID
      ,a.[SCHOOLID]--ѧУ��
      ,a.[WEBID]--��վID
      ,a.[TPID]--ͶƱ
      ,a.[TMID]--ͶƱ��Ŀ
      ,a.[TITLE]--����
      ,a.[SUMTP]--��ѡ����
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
      ,d.SCHOOLID as d_TPSZ_SCHOOLID--ѧУ��
      ,d.WEBID as d_TPSZ_WEBID--��վID
      ,d.TITLE as d_TPSZ_TITLE--����
      ,d.CONTENT as d_TPSZ_CONTENT--����
      ,d.SHOWSTYLEID as d_TPSZ_SHOWSTYLEID--��ʾ��ʽ
      ,d.CSSID as d_TPSZ_CSSID--��ʾ��ʽ
      ,d.LOGINNAMELIST as d_TPSZ_LOGINNAMELIST--ͶƱ��
      ,d.STARTSTATU as d_TPSZ_STARTSTATU--�Ƿ���
      ,e.SCHOOLID as e_TPTM_SCHOOLID--ѧУ��
      ,e.WEBID as e_TPTM_WEBID--��վID
      ,e.TPID as e_TPTM_TPID--ͶƱ
      ,e.TYPEID as e_TPTM_TYPEID--ͶƱ��ʽ
      ,e.TITLE as e_TPTM_TITLE--����
      ,e.CONTENT as e_TPTM_CONTENT--����

FROM dbo.EDU_WZXT_TPXT_TPXX AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_WZXT_MHXT_WZPZ AS c ON a.WEBID = c.WEBID /*��վID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_WZXT_TPXT_TPSZ AS d ON a.TPID = d.ID /*ͶƱ*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ��*/ AND a.WEBID = d.WEBID /*��վID*/ LEFT OUTER JOIN
      dbo.EDU_WZXT_TPXT_TPTM AS e ON a.TMID = e.ID /*ͶƱ��Ŀ*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУ��*/ AND a.WEBID = e.WEBID /*��վID*/
GO
