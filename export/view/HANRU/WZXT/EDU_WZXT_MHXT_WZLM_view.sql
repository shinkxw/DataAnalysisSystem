
--��վ��Ŀ��������
CREATE VIEW [dbo].[VIEW_EDU_WZXT_MHXT_WZLM_DISP]
AS
SELECT a.[ID]--��վ��Ŀ��������ID
      ,a.[SCHOOLID]--ѧУ��
      ,a.[WEBID]--��վID
      ,a.[LMSHOWSTYLE]--��Ŀʹ������
      ,a.[NAME]--��Ŀ����
      ,a.[URL]--��Ŀ����
      ,a.[IMAGEURL]--ͼƬ����
      ,a.[DEPTH]--�㼶
      ,a.[PID]--��Ŀ¼
      ,a.[LISTSHOWSTYLE]--�б���ʾ��ʽ
      ,a.[ORDERTYPE]--����ʽ
      ,a.[SHOWNUMBER]--��ʾ����
      ,a.[OPENFLAG]--������
      ,a.[LLQX]--���Ȩ��
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
      ,d.SCHOOLID as d_WZLM_SCHOOLID--ѧУ��
      ,d.WEBID as d_WZLM_WEBID--��վID
      ,d.LMSHOWSTYLE as d_WZLM_LMSHOWSTYLE--��Ŀʹ������
      ,d.NAME as d_WZLM_NAME--��Ŀ����
      ,d.URL as d_WZLM_URL--��Ŀ����
      ,d.IMAGEURL as d_WZLM_IMAGEURL--ͼƬ����
      ,d.DEPTH as d_WZLM_DEPTH--�㼶
      ,d.PID as d_WZLM_PID--��Ŀ¼
      ,d.LISTSHOWSTYLE as d_WZLM_LISTSHOWSTYLE--�б���ʾ��ʽ
      ,d.ORDERTYPE as d_WZLM_ORDERTYPE--����ʽ
      ,d.SHOWNUMBER as d_WZLM_SHOWNUMBER--��ʾ����
      ,d.OPENFLAG as d_WZLM_OPENFLAG--������
      ,d.LLQX as d_WZLM_LLQX--���Ȩ��

FROM dbo.EDU_WZXT_MHXT_WZLM AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_WZXT_MHXT_WZPZ AS c ON a.WEBID = c.WEBID /*��վID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_WZXT_MHXT_WZLM AS d ON a.PID = d.ID /*��Ŀ¼*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ��*/ AND a.WEBID = d.WEBID /*��վID*/
GO
