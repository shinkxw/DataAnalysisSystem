
--��ϰ�ƻ���
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_36_A01_JXJH_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[XQID]--ѧ��ID
      ,a.[JHMC]--�ƻ�����
      ,a.[KSSJ]--��ʼʱ��
      ,a.[JSSJ]--����ʱ��
      ,a.[JXDWID]--��ϰ��λ
      ,a.[JXNR]--��ϰ����
      ,a.[JXXS]--��ϰѧ��
      ,a.[SFKQ]--�Ƿ���
      ,c.SCHOOLID as c_XQ_SCHOOLID--ѧ�����ݱ� ѧУ��
      ,c.XNID as c_XQ_XNID--ѧ�����ݱ� ѧ��
      ,c.XQM as c_XQ_XQM--ѧ�����ݱ� ѧ����
      ,[cb].MC as c_XQ_XQM_MC--ѧ�ڴ���� ����
      ,c.XQMC as c_XQ_XQMC--ѧ�����ݱ� ѧ������
      ,c.XQKSRQ as c_XQ_XQKSRQ--ѧ�����ݱ� ѧ�ڿ�ʼ����
      ,c.XQJSRQ as c_XQ_XQJSRQ--ѧ�����ݱ� ѧ�ڽ�������
      ,d.SCHOOLID as d_QYGL_SCHOOLID--��ҵ����� ѧУ
      ,d.Name as d_QYGL_Name--��ҵ����� ��ҵ����
      ,d.UserName as d_QYGL_UserName--��ҵ����� �û���
      ,d.Password as d_QYGL_Password--��ҵ����� ����
      ,d.UserID as d_QYGL_UserID--��ҵ����� �û���id(Ԥ��)
      ,d.QYXZ as d_QYGL_QYXZ--��ҵ����� ��ҵ����
      ,d.QYGM as d_QYGL_QYGM--��ҵ����� ��֯��ģ
      ,d.ZZJG as d_QYGL_ZZJG--��ҵ����� ��֯����
      ,d.ZYJYFW as d_QYGL_ZYJYFW--��ҵ����� ��Ҫ��Ӫ��Χ
      ,d.License as d_QYGL_License--��ҵ����� Ӫҵִ��
      ,d.CompanyType as d_QYGL_CompanyType--��ҵ����� ��ҵ����
      ,d.QYRS as d_QYGL_QYRS--��ҵ����� ��ҵ����
      ,d.Regcapital as d_QYGL_Regcapital--��ҵ����� ע���ʽ�
      ,d.PostNum as d_QYGL_PostNum--��ҵ����� �ʱ�
      ,d.Fox as d_QYGL_Fox--��ҵ����� ����
      ,d.Manager as d_QYGL_Manager--��ҵ����� ������
      ,d.Job as d_QYGL_Job--��ҵ����� ְλ
      ,d.Cellphone as d_QYGL_Cellphone--��ҵ����� �ֻ�����
      ,d.OfficNum as d_QYGL_OfficNum--��ҵ����� ��˾�绰
      ,d.Email as d_QYGL_Email--��ҵ����� �����ʼ�
      ,d.qq as d_QYGL_qq--��ҵ����� qq
      ,d.MSN as d_QYGL_MSN--��ҵ����� msn
      ,d.Address as d_QYGL_Address--��ҵ����� ��˾��ַ
      ,d.Website as d_QYGL_Website--��ҵ����� ��ַ
      ,d.GSJJ as d_QYGL_GSJJ--��ҵ����� ��˾���
      ,d.Status as d_QYGL_Status--��ҵ����� ���״̬

FROM dbo.EDU_ZZJX_36_A01_JXJH AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS c ON a.XQID = c.ID /*ѧ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_20_A01_QYGL AS d ON a.JXDWID = d.ID /*��ϰ��λ*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS [cb] ON c.XQM = [cb].DM /*ѧ����*/
GO
