
--�����½�����
CREATE VIEW [dbo].[VIEW_EDU_ZXDY_06_A02_GQXJH_DISP]
AS
SELECT a.[ID]--�����½�����ID
      ,a.[SCHOOLID]--ѧУID
      ,a.[XQID]--ѧ��ID
      ,a.[ZCID]--�ܴ�ID
      ,a.[JHZT]--��������
      ,a.[JHNR]--��������
      ,b.SCHOOLNAME as b_SCHOOL_SCHOOLNAME--ѧУ����
      ,b.SCHOOLTYPE as b_SCHOOL_SCHOOLTYPE--ѧУ����
      ,b.XNID as b_SCHOOL_XNID--ѧ��ID
      ,b.XQID as b_SCHOOL_XQID--ѧ��ID
      ,b.MatchURL as b_SCHOOL_MatchURL--ƥ��url
      ,b.LogLevel as b_SCHOOL_LogLevel--��־����
      ,c.SCHOOLID as c_XQ_SCHOOLID--ѧУ��
      ,c.XNID as c_XQ_XNID--ѧ��
      ,c.XQM as c_XQ_XQM--ѧ����
      ,cb.MC as c_XQ_XQM_MC--����
      ,c.XQMC as c_XQ_XQMC--ѧ������
      ,c.XQKSRQ as c_XQ_XQKSRQ--ѧ�ڿ�ʼ����
      ,c.XQJSRQ as c_XQ_XQJSRQ--ѧ�ڽ�������
      ,d.SCHOOLID as d_ZZZC_SCHOOLID--ѧУID
      ,d.XQID as d_ZZZC_XQID--ѧ��ID
      ,d.ZCM as d_ZZZC_ZCM--�ܴ���
      ,d.XQKSRQ as d_ZZZC_XQKSRQ--��ʼ����
      ,d.XQJSRQ as d_ZZZC_XQJSRQ--��������

FROM dbo.EDU_ZXDY_06_A02_GQXJH AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS c ON a.XQID = c.ID /*ѧ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZXDY_04_A06_ZZZC AS d ON a.ZCID = d.ID /*�ܴ�ID*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS cb ON c.XQM = cb.DM /*ѧ����*/
GO
