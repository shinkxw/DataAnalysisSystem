
--��ʦ�ƻ��
CREATE VIEW [dbo].[VIEW_EDU_ZXXS_57_A11_DSZHD_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[XQID]--ѧ��ID
      ,a.[DSID]--��ʦID
      ,a.[HDMC]--�����
      ,a.[HDNR]--�����
      ,a.[KSSJ]--��ʼʱ��
      ,a.[JSSJ]--����ʱ��
      ,a.[BZ]--��ע
      ,a.[XSIDLB]--ѧ��ID�б�
      ,a.[XSXMLB]--ѧ�������б�
      ,c.SCHOOLID as c_XQ_SCHOOLID--ѧ�����ݱ� ѧУ��
      ,c.XNID as c_XQ_XNID--ѧ�����ݱ� ѧ��
      ,c.XQM as c_XQ_XQM--ѧ�����ݱ� ѧ����
      ,[cb].MC as c_XQ_XQM_MC--ѧ�ڴ���� ����
      ,c.XQMC as c_XQ_XQMC--ѧ�����ݱ� ѧ������
      ,c.XQKSRQ as c_XQ_XQKSRQ--ѧ�����ݱ� ѧ�ڿ�ʼ����
      ,c.XQJSRQ as c_XQ_XQJSRQ--ѧ�����ݱ� ѧ�ڽ�������
      ,d.SCHOOLID as d_DSZDS_SCHOOLID--��ʦ�Ƶ�ʦ�� ѧУ
      ,d.XQID as d_DSZDS_XQID--��ʦ�Ƶ�ʦ�� ѧ��ID
      ,d.JSID as d_DSZDS_JSID--��ʦ�Ƶ�ʦ�� ��ʦID
      ,d.JUESEID as d_DSZDS_JUESEID--��ʦ�Ƶ�ʦ�� ��ɫID
      ,d.TJSJ as d_DSZDS_TJSJ--��ʦ�Ƶ�ʦ�� ���ʱ��

FROM dbo.EDU_ZXXS_57_A11_DSZHD AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS c ON a.XQID = c.ID /*ѧ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZXXS_57_A03_DSZDS AS d ON a.DSID = d.ID /*��ʦID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS [cb] ON c.XQM = [cb].DM /*ѧ����*/
GO
