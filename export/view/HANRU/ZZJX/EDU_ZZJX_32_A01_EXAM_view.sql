
--���Ա�
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_32_A01_EXAM_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[Name]--��������
      ,a.[CJKSKMLM]--�μӿ��Կ�Ŀ�б�
      ,a.[StartDate]--��ʼ����
      ,a.[EndDate]--��ֹ����
      ,a.[XqID]--ѧ��ID
      ,a.[DffsID]--�Ƿַ�ʽ
      ,c.SCHOOLID as c_XQ_SCHOOLID--ѧ�����ݱ� ѧУ��
      ,c.XNID as c_XQ_XNID--ѧ�����ݱ� ѧ��
      ,c.XQM as c_XQ_XQM--ѧ�����ݱ� ѧ����
      ,[cb].MC as c_XQ_XQM_MC--ѧ�ڴ���� ����
      ,c.XQMC as c_XQ_XQMC--ѧ�����ݱ� ѧ������
      ,c.XQKSRQ as c_XQ_XQKSRQ--ѧ�����ݱ� ѧ�ڿ�ʼ����
      ,c.XQJSRQ as c_XQ_XQJSRQ--ѧ�����ݱ� ѧ�ڽ�������

FROM dbo.EDU_ZZJX_32_A01_EXAM AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS c ON a.XqID = c.ID /*ѧ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS [cb] ON c.XQM = [cb].DM /*ѧ����*/
GO
