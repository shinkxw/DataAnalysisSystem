
--ֵ�ܸ�λ���ݱ�
CREATE VIEW [dbo].[VIEW_EDU_ZXDY_04_A01_ZZGW_DISP]
AS
SELECT a.[ID]--ֵ�ܸ�λ��ID
      ,a.[SCHOOLID]--ѧУID
      ,a.[XQID]--ѧ��ID
      ,a.[GWGZNR]--��λ��������
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

FROM dbo.EDU_ZXDY_04_A01_ZZGW AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS c ON a.XQID = c.ID /*ѧ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS cb ON c.XQM = cb.DM /*ѧ����*/
GO
