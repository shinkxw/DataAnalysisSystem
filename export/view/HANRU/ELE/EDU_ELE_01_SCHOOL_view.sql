
--ѧУ���ñ�
CREATE VIEW [dbo].[VIEW_EDU_ELE_01_SCHOOL_DISP]
AS
SELECT a.[SCHOOLID]--ѧУID
      ,a.[SCHOOLNAME]--ѧУ����
      ,a.[SCHOOLTYPE]--ѧУ����
      ,a.[XNID]--ѧ��ID
      ,a.[XQID]--ѧ��ID
      ,a.[MatchURL]--ƥ��url
      ,a.[MenhuURL]--�Ż�url
      ,a.[MenhuWebid]--�Ż�webid
      ,a.[LogLevel]--��־����
      ,a.[ModuleIdList]--Ȩ���б�
      ,a.[EnableStatus]--����״̬
      ,a.[CreateTime]--����ʱ��
      ,a.[YXTID]--��УͨID
      ,a.[LOGO]--ͼ��
      ,a.[SBDM]--ʶ�����
      ,c.SCHOOLID as c_XQ_SCHOOLID--ѧ�����ݱ� ѧУ��
      ,c.XNID as c_XQ_XNID--ѧ�����ݱ� ѧ��
      ,c.XQM as c_XQ_XQM--ѧ�����ݱ� ѧ����
      ,[cb].MC as c_XQ_XQM_MC--ѧ�ڴ���� ����
      ,c.XQMC as c_XQ_XQMC--ѧ�����ݱ� ѧ������
      ,c.XQKSRQ as c_XQ_XQKSRQ--ѧ�����ݱ� ѧ�ڿ�ʼ����
      ,c.XQJSRQ as c_XQ_XQJSRQ--ѧ�����ݱ� ѧ�ڽ�������

FROM dbo.EDU_ELE_01_SCHOOL AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS c ON a.XQID = c.ID /*ѧ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS [cb] ON c.XQM = [cb].DM /*ѧ����*/
GO
