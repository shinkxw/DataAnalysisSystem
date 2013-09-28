
--ͶƱ��Ŀ
CREATE VIEW [dbo].[VIEW_EDU_WZXT_TPXT_TPTM_DISP]
AS
SELECT a.[ID]--ͶƱ��ĿID
      ,a.[SCHOOLID]--ѧУ��
      ,a.[WEBID]--��վID
      ,a.[TPID]--ͶƱ
      ,a.[TYPEID]--ͶƱ��ʽ
      ,a.[TITLE]--����
      ,a.[CONTENT]--����
      ,c.SCHOOLID as c_WZPZ_SCHOOLID--��վ���� ѧУ��
      ,c.WEBNAME as c_WZPZ_WEBNAME--��վ���� ��վ��
      ,c.STATUID as c_WZPZ_STATUID--��վ���� �Ƿ���
      ,c.WEBURL as c_WZPZ_WEBURL--��վ���� ��ַ
      ,c.CSSID as c_WZPZ_CSSID--��վ���� ��վ��ʽ
      ,c.URL as c_WZPZ_URL--��վ���� ������ַ
      ,d.SCHOOLID as d_TPSZ_SCHOOLID--ͶƱ���� ѧУ��
      ,d.WEBID as d_TPSZ_WEBID--ͶƱ���� ��վID
      ,d.TITLE as d_TPSZ_TITLE--ͶƱ���� ����
      ,d.CONTENT as d_TPSZ_CONTENT--ͶƱ���� ����
      ,d.SHOWSTYLEID as d_TPSZ_SHOWSTYLEID--ͶƱ���� ��ʾ��ʽ
      ,d.CSSID as d_TPSZ_CSSID--ͶƱ���� ��ʾ��ʽ
      ,d.LOGINNAMELIST as d_TPSZ_LOGINNAMELIST--ͶƱ���� ͶƱ��
      ,d.STARTSTATU as d_TPSZ_STARTSTATU--ͶƱ���� �Ƿ���

FROM dbo.EDU_WZXT_TPXT_TPTM AS a LEFT OUTER JOIN
      dbo.EDU_WZXT_MHXT_WZPZ AS c ON a.WEBID = c.WEBID /*��վID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_WZXT_TPXT_TPSZ AS d ON a.TPID = d.ID /*ͶƱ*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ��*/ AND a.WEBID = d.WEBID /*��վID*/
GO
