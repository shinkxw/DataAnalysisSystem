
--ѧ�����ݱ�
CREATE VIEW [dbo].[VIEW_EDU_ELE_01_XQ_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ��
      ,a.[XNID]--ѧ��
      ,a.[XQM]--ѧ����
      ,a.[XQMC]--ѧ������
      ,a.[XQKSRQ]--ѧ�ڿ�ʼ����
      ,a.[XQJSRQ]--ѧ�ڽ�������
      ,b.SCHOOLNAME as b_SCHOOL_SCHOOLNAME--ѧУ����
      ,b.SCHOOLTYPE as b_SCHOOL_SCHOOLTYPE--ѧУ����
      ,b.XNID as b_SCHOOL_XNID--ѧ��ID
      ,b.XQID as b_SCHOOL_XQID--ѧ��ID
      ,b.MatchURL as b_SCHOOL_MatchURL--ƥ��url
      ,b.LogLevel as b_SCHOOL_LogLevel--��־����
      ,c.SCHOOLID as c_XN_SCHOOLID--ѧУ��
      ,c.XN as c_XN_XN--ѧ��
      ,d.MC as d_XQ_MC--����

FROM dbo.EDU_ELE_01_XQ AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_SYS_01_XN AS c ON a.XNID = c.ID /*ѧ��*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS d ON a.XQM = d.DM /*ѧ����*/
GO
