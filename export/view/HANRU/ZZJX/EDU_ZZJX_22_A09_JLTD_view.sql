
--����Ͷ�ݱ�
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_22_A09_JLTD_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[SXSID]--ʵϰ��ID
      ,a.[ComID]--��ҵID
      ,a.[GWID]--��λID
      ,a.[JLNR]--��������
      ,a.[TDSJ]--Ͷ��ʱ��
      ,a.[SFCK]--�Ƿ�鿴
      ,a.[FKNR]--��������
      ,c.SCHOOLID as c_SXSGL_SCHOOLID--ʵϰ������� ѧУ
      ,c.SZBID as c_SXSGL_SZBID--ʵϰ������� ʵϰ��ID
      ,c.StuID as c_SXSGL_StuID--ʵϰ������� ѧ��ID
      ,c.Status as c_SXSGL_Status--ʵϰ������� ʵϰ��״̬
      ,c.SXXYS as c_SXSGL_SXXYS--ʵϰ������� ʵϰЭ����
      ,c.SXSXM as c_SXSGL_SXSXM--ʵϰ������� ʵϰ������
      ,c.XQID as c_SXSGL_XQID--ʵϰ������� ѧ��ID
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
      ,e.SCHOOLID as e_GWXX_SCHOOLID--��λ��Ϣ�� ѧУ
      ,e.ComID as e_GWXX_ComID--��λ��Ϣ�� ��ҵID
      ,e.JobName as e_GWXX_JobName--��λ��Ϣ�� ��λ����
      ,e.WorkType as e_GWXX_WorkType--��λ��Ϣ�� ������ʽ
      ,e.Sex as e_GWXX_Sex--��λ��Ϣ�� �Ա�Ҫ��
      ,e.monthlypay as e_GWXX_monthlypay--��λ��Ϣ�� ��λн��
      ,e.LanguageRequire as e_GWXX_LanguageRequire--��λ��Ϣ�� ����Ҫ��
      ,e.WorkPlace as e_GWXX_WorkPlace--��λ��Ϣ�� �����ص�
      ,e.Computer as e_GWXX_Computer--��λ��Ϣ�� �����ˮƽ
      ,e.ZPRS as e_GWXX_ZPRS--��λ��Ϣ�� ��Ƹ����
      ,e.education as e_GWXX_education--��λ��Ϣ�� ѧ��Ҫ��
      ,e.Age as e_GWXX_Age--��λ��Ϣ�� ����Ҫ��
      ,e.GWJJ as e_GWXX_GWJJ--��λ��Ϣ�� ��λ���
      ,e.Major as e_GWXX_Major--��λ��Ϣ�� רҵҪ��
      ,e.Base as e_GWXX_Base--��λ��Ϣ�� �������
      ,e.experience as e_GWXX_experience--��λ��Ϣ�� ��������
      ,e.GWSHZT as e_GWXX_GWSHZT--��λ��Ϣ�� ��λ���״̬
      ,e.Status as e_GWXX_Status--��λ��Ϣ�� ��λ��ǰ״̬
      ,e.SFZD as e_GWXX_SFZD--��λ��Ϣ�� �Ƿ��ö�

FROM dbo.EDU_ZZJX_22_A09_JLTD AS a LEFT OUTER JOIN
      dbo.EDU_ZZJX_21_A02_SXSGL AS c ON a.SXSID = c.ID /*ʵϰ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_20_A01_QYGL AS d ON a.ComID = d.ID /*��ҵID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_20_A03_GWXX AS e ON a.GWID = e.ID /*��λID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУ*/
GO
