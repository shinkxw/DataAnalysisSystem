
--��ʦ�ƽ�ɫģ���
CREATE VIEW [dbo].[VIEW_EDU_ZXXS_57_A06_DSZJSMB_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[XQID]--ѧ��ID
      ,a.[JSID]--��ɫID
      ,a.[MC]--����
      ,a.[BJT]--����ͼ
      ,a.[TJSJ]--���ʱ��
      ,c.SCHOOLID as c_XQ_SCHOOLID--ѧ�����ݱ� ѧУ��
      ,c.XNID as c_XQ_XNID--ѧ�����ݱ� ѧ��
      ,c.XQM as c_XQ_XQM--ѧ�����ݱ� ѧ����
      ,[cb].MC as c_XQ_XQM_MC--ѧ�ڴ���� ����
      ,c.XQMC as c_XQ_XQMC--ѧ�����ݱ� ѧ������
      ,c.XQKSRQ as c_XQ_XQKSRQ--ѧ�����ݱ� ѧ�ڿ�ʼ����
      ,c.XQJSRQ as c_XQ_XQJSRQ--ѧ�����ݱ� ѧ�ڽ�������
      ,d.SCHOOLID as d_DSZJS_SCHOOLID--��ʦ�ƽ�ɫ�� ѧУ
      ,d.XQID as d_DSZJS_XQID--��ʦ�ƽ�ɫ�� ѧ��ID
      ,d.JSMC as d_DSZJS_JSMC--��ʦ�ƽ�ɫ�� ��ɫ����
      ,d.GNIDLB as d_DSZJS_GNIDLB--��ʦ�ƽ�ɫ�� ����ID�б�
      ,d.GNMCLB as d_DSZJS_GNMCLB--��ʦ�ƽ�ɫ�� ���������б�

FROM dbo.EDU_ZXXS_57_A06_DSZJSMB AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS c ON a.XQID = c.ID /*ѧ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZXXS_57_A02_DSZJS AS d ON a.JSID = d.ID /*��ɫID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS [cb] ON c.XQM = [cb].DM /*ѧ����*/
GO
