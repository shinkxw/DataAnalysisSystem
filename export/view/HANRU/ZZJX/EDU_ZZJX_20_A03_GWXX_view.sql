
--��λ��Ϣ��
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_20_A03_GWXX_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[ComID]--��ҵID
      ,a.[JobName]--��λ����
      ,a.[PubTime]--��Ƹ��ʼʱ��
      ,a.[EndTime]--��Ƹ����ʱ��
      ,a.[WorkType]--������ʽ
      ,a.[Sex]--�Ա�Ҫ��
      ,a.[monthlypay]--��λн��
      ,a.[LanguageRequire]--����Ҫ��
      ,a.[WorkPlace]--�����ص�
      ,a.[Computer]--�����ˮƽ
      ,a.[ZPRS]--��Ƹ����
      ,a.[education]--ѧ��Ҫ��
      ,a.[Age]--����Ҫ��
      ,a.[GWJJ]--��λ���
      ,a.[Major]--רҵҪ��
      ,a.[Base]--�������
      ,a.[experience]--��������
      ,a.[GWSHZT]--��λ���״̬
      ,a.[Status]--��λ��ǰ״̬
      ,a.[SFZD]--�Ƿ��ö�
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

FROM dbo.EDU_ZZJX_20_A03_GWXX AS a LEFT OUTER JOIN
      dbo.EDU_ZZJX_20_A01_QYGL AS c ON a.ComID = c.ID /*��ҵID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/
GO
