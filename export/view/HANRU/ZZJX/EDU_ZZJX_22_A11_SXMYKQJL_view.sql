
--ʵϰÿ�¿��ڼ�¼��
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_22_A11_SXMYKQJL_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[SXSID]--ʵϰ��ID
      ,a.[QYID]--��ҵID
      ,a.[SJ]--ʱ��
      ,a.[SJGR]--ʵ�ʹ���
      ,a.[SJTS]--�¼�����
      ,a.[KGTS]--��������
      ,a.[BJTS]--��������
      ,a.[GXTS]--��������
      ,a.[CDTS]--�ٵ�����
      ,a.[ZTTS]--��������
      ,c.SCHOOLID as c_SXSGL_SCHOOLID--ʵϰ������� ѧУ
      ,c.SZBID as c_SXSGL_SZBID--ʵϰ������� ʵϰ��ID
      ,c.StuID as c_SXSGL_StuID--ʵϰ������� ѧ��ID
      ,c.ZT as c_SXSGL_ZT--ʵϰ������� ʵϰ��״̬
      ,c.SFSJSXXYS as c_SXSGL_SFSJSXXYS--ʵϰ������� �Ƿ��Ͻ�ʵϰЭ����
      ,c.SXSXM as c_SXSGL_SXSXM--ʵϰ������� ʵϰ������
      ,c.XQID as c_SXSGL_XQID--ʵϰ������� ѧ��ID
      ,c.DQSXGWID as c_SXSGL_DQSXGWID--ʵϰ������� ��ǰʵϰ��λID
      ,c.ZGCS as c_SXSGL_ZGCS--ʵϰ������� ת�ڴ���
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

FROM dbo.EDU_ZZJX_22_A11_SXMYKQJL AS a LEFT OUTER JOIN
      dbo.EDU_ZZJX_21_A02_SXSGL AS c ON a.SXSID = c.ID /*ʵϰ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_20_A01_QYGL AS d ON a.QYID = d.ID /*��ҵID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/
GO
