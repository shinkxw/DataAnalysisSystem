
--�������ݱ�
CREATE VIEW [dbo].[VIEW_EDU_ZZJG_11_A04_KPSJ_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[XNID]--ѧ��ID
      ,a.[XQID]--ѧ��ID
      ,a.[KPMC]--��������
      ,a.[BPRIDLB]--������ID�б�
      ,a.[KSSJ]--��ʼʱ��
      ,a.[JSSJ]--����ʱ��
      ,a.[ZT]--״̬
      ,c.SCHOOLID as c_XN_SCHOOLID--ѧ��� ѧУ��
      ,c.XN as c_XN_XN--ѧ��� ѧ��
      ,d.SCHOOLID as d_XQ_SCHOOLID--ѧ�����ݱ� ѧУ��
      ,d.XNID as d_XQ_XNID--ѧ�����ݱ� ѧ��
      ,d.XQM as d_XQ_XQM--ѧ�����ݱ� ѧ����
      ,[db].MC as d_XQ_XQM_MC--ѧ�ڴ���� ����
      ,d.XQMC as d_XQ_XQMC--ѧ�����ݱ� ѧ������
      ,d.XQKSRQ as d_XQ_XQKSRQ--ѧ�����ݱ� ѧ�ڿ�ʼ����
      ,d.XQJSRQ as d_XQ_XQJSRQ--ѧ�����ݱ� ѧ�ڽ�������

FROM dbo.EDU_ZZJG_11_A04_KPSJ AS a LEFT OUTER JOIN
      dbo.EDU_SYS_01_XN AS c ON a.XNID = c.ID /*ѧ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS d ON a.XQID = d.ID /*ѧ��ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS [db] ON d.XQM = [db].DM /*ѧ����*/
GO
