
--ƽ��ְҵ�����ύ��¼��
CREATE VIEW [dbo].[VIEW_EDU_ZZJG_22_A07_PHZYCPTJJL_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[XQID]--ѧ��ID
      ,a.[PJJSID]--���۽�ʦID
      ,a.[TJSJ]--�ύʱ��
      ,c.SCHOOLID as c_XQ_SCHOOLID--ѧ�����ݱ� ѧУ��
      ,c.XNID as c_XQ_XNID--ѧ�����ݱ� ѧ��
      ,c.XQM as c_XQ_XQM--ѧ�����ݱ� ѧ����
      ,[cb].MC as c_XQ_XQM_MC--ѧ�ڴ���� ����
      ,c.XQMC as c_XQ_XQMC--ѧ�����ݱ� ѧ������
      ,c.XQKSRQ as c_XQ_XQKSRQ--ѧ�����ݱ� ѧ�ڿ�ʼ����
      ,c.XQJSRQ as c_XQ_XQJSRQ--ѧ�����ݱ� ѧ�ڽ�������
      ,c.BaseProjectInfoID as c_XQ_BaseProjectInfoID--ѧ�����ݱ� ��BaseProjectInfo���
      ,d.SCHOOLID as d_PHZYKPJS_SCHOOLID--ƽ��ְҵ������ʦ�� ѧУ
      ,d.XQID as d_PHZYKPJS_XQID--ƽ��ְҵ������ʦ�� ѧ��ID
      ,d.JSID as d_PHZYKPJS_JSID--ƽ��ְҵ������ʦ�� ��ʦID
      ,d.XSZW as d_PHZYKPJS_XSZW--ƽ��ְҵ������ʦ�� ��ʾְ��
      ,d.TJZW as d_PHZYKPJS_TJZW--ƽ��ְҵ������ʦ�� ͳ��ְ��
      ,d.JXB as d_PHZYKPJS_JXB--ƽ��ְҵ������ʦ�� ��ѧ��
      ,d.JYZ as d_PHZYKPJS_JYZ--ƽ��ְҵ������ʦ�� ������
      ,d.XM as d_PHZYKPJS_XM--ƽ��ְҵ������ʦ�� ����
      ,d.SFKPQX as d_PHZYKPJS_SFKPQX--ƽ��ְҵ������ʦ�� �Ƿ����ȫУ
      ,d.SFBQXP as d_PHZYKPJS_SFBQXP--ƽ��ְҵ������ʦ�� �Ƿ�ȫУ��
      ,d.SFJRBMHP as d_PHZYKPJS_SFJRBMHP--ƽ��ְҵ������ʦ�� �Ƿ���벿�Ż���
      ,d.SFBBQXP as d_PHZYKPJS_SFBBQXP--ƽ��ְҵ������ʦ�� �Ƿ񲻱�ȫУ��

FROM dbo.EDU_ZZJG_22_A07_PHZYCPTJJL AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS c ON a.XQID = c.ID /*ѧ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_22_A05_PHZYKPJS AS d ON a.PJJSID = d.ID /*���۽�ʦID*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS [cb] ON c.XQM = [cb].DM /*ѧ����*/
GO
