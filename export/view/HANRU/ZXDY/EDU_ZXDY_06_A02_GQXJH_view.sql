
--�����½�����
CREATE VIEW [dbo].[VIEW_EDU_ZXDY_06_A02_GQXJH_DISP]
AS
SELECT a.[ID]--�����½�����ID
      ,a.[SCHOOLID]--ѧУID
      ,a.[XQID]--ѧ��ID
      ,a.[ZCID]--�ܴ�ID
      ,a.[JHZT]--��������
      ,a.[JHNR]--��������
      ,c.SCHOOLID as c_XQ_SCHOOLID--ѧ�����ݱ� ѧУ��
      ,c.XNID as c_XQ_XNID--ѧ�����ݱ� ѧ��
      ,c.XQM as c_XQ_XQM--ѧ�����ݱ� ѧ����
      ,[cb].MC as c_XQ_XQM_MC--ѧ�ڴ���� ����
      ,c.XQMC as c_XQ_XQMC--ѧ�����ݱ� ѧ������
      ,c.XQKSRQ as c_XQ_XQKSRQ--ѧ�����ݱ� ѧ�ڿ�ʼ����
      ,c.XQJSRQ as c_XQ_XQJSRQ--ѧ�����ݱ� ѧ�ڽ�������
      ,c.BaseProjectInfoID as c_XQ_BaseProjectInfoID--ѧ�����ݱ� ��BaseProjectInfo���
      ,d.SCHOOLID as d_ZZZC_SCHOOLID--ֵ���ܴα� ѧУID
      ,d.XQID as d_ZZZC_XQID--ֵ���ܴα� ѧ��ID
      ,d.ZCM as d_ZZZC_ZCM--ֵ���ܴα� �ܴ���
      ,d.XQKSRQ as d_ZZZC_XQKSRQ--ֵ���ܴα� ��ʼ����
      ,d.XQJSRQ as d_ZZZC_XQJSRQ--ֵ���ܴα� ��������

FROM dbo.EDU_ZXDY_06_A02_GQXJH AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS c ON a.XQID = c.ID /*ѧ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZXDY_04_A06_ZZZC AS d ON a.ZCID = d.ID /*�ܴ�ID*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS [cb] ON c.XQM = [cb].DM /*ѧ����*/
GO
