
--ʵϰͶ�߱�
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_22_A05_SXTS_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[ComID]--��ҵID
      ,a.[SXSID]--ʵϰ��ID
      ,a.[TsTime]--Ͷ��ʱ��
      ,a.[TsReason]--Ͷ��ԭ��
      ,a.[TsResult]--Ͷ�߽��
      ,a.[ComSuggest]--Ͷ�߽���
      ,a.[TypeID]--Ͷ������
      ,c.SCHOOLID as c_QYGL_SCHOOLID--��ҵ����� ѧУ
      ,c.Name as c_QYGL_Name--��ҵ����� ��ҵ����
      ,c.UserName as c_QYGL_UserName--��ҵ����� �û���
      ,c.Password as c_QYGL_Password--��ҵ����� ����
      ,c.UserID as c_QYGL_UserID--��ҵ����� �û���id(Ԥ��)
      ,c.QYXZ as c_QYGL_QYXZ--��ҵ����� ��ҵ����
      ,c.QYGM as c_QYGL_QYGM--��ҵ����� ��֯��ģ
      ,c.ZZJG as c_QYGL_ZZJG--��ҵ����� ��֯����
      ,c.ZYJYFW as c_QYGL_ZYJYFW--��ҵ����� ��Ҫ��Ӫ��Χ
      ,c.License as c_QYGL_License--��ҵ����� Ӫҵִ��
      ,c.CompanyType as c_QYGL_CompanyType--��ҵ����� ��ҵ����
      ,c.QYRS as c_QYGL_QYRS--��ҵ����� ��ҵ����
      ,c.Regcapital as c_QYGL_Regcapital--��ҵ����� ע���ʽ�
      ,c.PostNum as c_QYGL_PostNum--��ҵ����� �ʱ�
      ,c.Fox as c_QYGL_Fox--��ҵ����� ����
      ,c.Manager as c_QYGL_Manager--��ҵ����� ������
      ,c.Job as c_QYGL_Job--��ҵ����� ְλ
      ,c.Cellphone as c_QYGL_Cellphone--��ҵ����� �ֻ�����
      ,c.OfficNum as c_QYGL_OfficNum--��ҵ����� ��˾�绰
      ,c.Email as c_QYGL_Email--��ҵ����� �����ʼ�
      ,c.qq as c_QYGL_qq--��ҵ����� qq
      ,c.MSN as c_QYGL_MSN--��ҵ����� msn
      ,c.Address as c_QYGL_Address--��ҵ����� ��˾��ַ
      ,c.Website as c_QYGL_Website--��ҵ����� ��ַ
      ,c.GSJJ as c_QYGL_GSJJ--��ҵ����� ��˾���
      ,c.Status as c_QYGL_Status--��ҵ����� ���״̬
      ,d.SCHOOLID as d_SXSGL_SCHOOLID--ʵϰ������� ѧУ
      ,d.SZBID as d_SXSGL_SZBID--ʵϰ������� ʵϰ��ID
      ,d.StuID as d_SXSGL_StuID--ʵϰ������� ѧ��ID
      ,d.ZT as d_SXSGL_ZT--ʵϰ������� ʵϰ��״̬
      ,d.SFSJSXXYS as d_SXSGL_SFSJSXXYS--ʵϰ������� �Ƿ��Ͻ�ʵϰЭ����
      ,d.SXSXM as d_SXSGL_SXSXM--ʵϰ������� ʵϰ������
      ,d.XQID as d_SXSGL_XQID--ʵϰ������� ѧ��ID
      ,d.DQSXGWID as d_SXSGL_DQSXGWID--ʵϰ������� ��ǰʵϰ��λID

FROM dbo.EDU_ZZJX_22_A05_SXTS AS a LEFT OUTER JOIN
      dbo.EDU_ZZJX_20_A01_QYGL AS c ON a.ComID = c.ID /*��ҵID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_21_A02_SXSGL AS d ON a.SXSID = d.ID /*ʵϰ��ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/
GO
