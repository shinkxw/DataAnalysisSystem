
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
      ,b.SCHOOLNAME as b_SCHOOL_SCHOOLNAME--ѧУ���ñ� ѧУ����
      ,b.SCHOOLTYPE as b_SCHOOL_SCHOOLTYPE--ѧУ���ñ� ѧУ����
      ,b.XNID as b_SCHOOL_XNID--ѧУ���ñ� ѧ��ID
      ,b.XQID as b_SCHOOL_XQID--ѧУ���ñ� ѧ��ID
      ,b.MatchURL as b_SCHOOL_MatchURL--ѧУ���ñ� ƥ��url
      ,b.LogLevel as b_SCHOOL_LogLevel--ѧУ���ñ� ��־����
      ,c.SCHOOLID as c_WZPZ_SCHOOLID--��վ���� ѧУ��
      ,c.WEBNAME as c_WZPZ_WEBNAME--��վ���� ��վ��
      ,c.STATUID as c_WZPZ_STATUID--��վ���� �Ƿ���
      ,c.WEBURL as c_WZPZ_WEBURL--��վ���� ��ַ
      ,c.CSSID as c_WZPZ_CSSID--��վ���� ��վ��ʽ
      ,d.SCHOOLID as d_TPSZ_SCHOOLID--ͶƱ���� ѧУ��
      ,d.WEBID as d_TPSZ_WEBID--ͶƱ���� ��վID
      ,d.TITLE as d_TPSZ_TITLE--ͶƱ���� ����
      ,d.CONTENT as d_TPSZ_CONTENT--ͶƱ���� ����
      ,d.SHOWSTYLEID as d_TPSZ_SHOWSTYLEID--ͶƱ���� ��ʾ��ʽ
      ,d.CSSID as d_TPSZ_CSSID--ͶƱ���� ��ʾ��ʽ
      ,d.LOGINNAMELIST as d_TPSZ_LOGINNAMELIST--ͶƱ���� ͶƱ��
      ,d.STARTSTATU as d_TPSZ_STARTSTATU--ͶƱ���� �Ƿ���
      ,e.SCHOOLID as e_TPTM_SCHOOLID--ͶƱ��Ŀ ѧУ��
      ,e.WEBID as e_TPTM_WEBID--ͶƱ��Ŀ ��վID
      ,e.TPID as e_TPTM_TPID--ͶƱ��Ŀ ͶƱ
      ,e.TYPEID as e_TPTM_TYPEID--ͶƱ��Ŀ ͶƱ��ʽ
      ,e.TITLE as e_TPTM_TITLE--ͶƱ��Ŀ ����
      ,e.CONTENT as e_TPTM_CONTENT--ͶƱ��Ŀ ����

FROM dbo.EDU_WZXT_TPXT_TPXX AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_WZXT_MHXT_WZPZ AS c ON a.WEBID = c.WEBID /*��վID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_WZXT_TPXT_TPSZ AS d ON a.TPID = d.ID /*ͶƱ*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ��*/ AND a.WEBID = d.WEBID /*��վID*/ LEFT OUTER JOIN
      dbo.EDU_WZXT_TPXT_TPTM AS e ON a.TMID = e.ID /*ͶƱ��Ŀ*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУ��*/ AND a.WEBID = e.WEBID /*��վID*/
GO
