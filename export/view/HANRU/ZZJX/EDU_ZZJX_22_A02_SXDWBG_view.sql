
--ʵϰ��λ�����
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_22_A02_SXDWBG_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[SXSID]--���ʵϰ��ID
      ,a.[OrgJobID]--���ǰ��λID
      ,a.[OrgComID]--���ǰ��ҵID
      ,a.[NowJobID]--������λID
      ,a.[NowComID]--�������ҵID
      ,c.SCHOOLID as c_SXSGL_SCHOOLID--ʵϰ������� ѧУ
      ,c.SZBID as c_SXSGL_SZBID--ʵϰ������� ʵϰ��ID
      ,c.StuID as c_SXSGL_StuID--ʵϰ������� ѧ��ID
      ,c.Status as c_SXSGL_Status--ʵϰ������� ʵϰ��״̬
      ,c.SXXYS as c_SXSGL_SXXYS--ʵϰ������� ʵϰЭ����
      ,c.SXSXM as c_SXSGL_SXSXM--ʵϰ������� ʵϰ������
      ,c.XQID as c_SXSGL_XQID--ʵϰ������� ѧ��ID
      ,d.SCHOOLID as d_GWXX_SCHOOLID--��λ��Ϣ�� ѧУ
      ,d.ComID as d_GWXX_ComID--��λ��Ϣ�� ��ҵID
      ,d.JobName as d_GWXX_JobName--��λ��Ϣ�� ��λ����
      ,d.WorkType as d_GWXX_WorkType--��λ��Ϣ�� ������ʽ
      ,d.Sex as d_GWXX_Sex--��λ��Ϣ�� �Ա�Ҫ��
      ,d.monthlypay as d_GWXX_monthlypay--��λ��Ϣ�� ��λн��
      ,d.LanguageRequire as d_GWXX_LanguageRequire--��λ��Ϣ�� ����Ҫ��
      ,d.WorkPlace as d_GWXX_WorkPlace--��λ��Ϣ�� �����ص�
      ,d.Computer as d_GWXX_Computer--��λ��Ϣ�� �����ˮƽ
      ,d.ZPRS as d_GWXX_ZPRS--��λ��Ϣ�� ��Ƹ����
      ,d.education as d_GWXX_education--��λ��Ϣ�� ѧ��Ҫ��
      ,d.Age as d_GWXX_Age--��λ��Ϣ�� ����Ҫ��
      ,d.GWJJ as d_GWXX_GWJJ--��λ��Ϣ�� ��λ���
      ,d.Major as d_GWXX_Major--��λ��Ϣ�� רҵҪ��
      ,d.Base as d_GWXX_Base--��λ��Ϣ�� �������
      ,d.experience as d_GWXX_experience--��λ��Ϣ�� ��������
      ,d.GWSHZT as d_GWXX_GWSHZT--��λ��Ϣ�� ��λ���״̬
      ,d.Status as d_GWXX_Status--��λ��Ϣ�� ��λ��ǰ״̬
      ,d.SFZD as d_GWXX_SFZD--��λ��Ϣ�� �Ƿ��ö�
      ,e.SCHOOLID as e_QYGL_SCHOOLID--��ҵ����� ѧУ
      ,e.Name as e_QYGL_Name--��ҵ����� ��ҵ����
      ,e.UserName as e_QYGL_UserName--��ҵ����� �û���
      ,e.Password as e_QYGL_Password--��ҵ����� ����
      ,e.UserID as e_QYGL_UserID--��ҵ����� �û���id(Ԥ��)
      ,e.QYXZ as e_QYGL_QYXZ--��ҵ����� ��ҵ����
      ,e.QYGM as e_QYGL_QYGM--��ҵ����� ��֯��ģ
      ,e.ZZJG as e_QYGL_ZZJG--��ҵ����� ��֯����
      ,e.ZYJYFW as e_QYGL_ZYJYFW--��ҵ����� ��Ҫ��Ӫ��Χ
      ,e.License as e_QYGL_License--��ҵ����� Ӫҵִ��
      ,e.CompanyType as e_QYGL_CompanyType--��ҵ����� ��ҵ����
      ,e.QYRS as e_QYGL_QYRS--��ҵ����� ��ҵ����
      ,e.Regcapital as e_QYGL_Regcapital--��ҵ����� ע���ʽ�
      ,e.PostNum as e_QYGL_PostNum--��ҵ����� �ʱ�
      ,e.Fox as e_QYGL_Fox--��ҵ����� ����
      ,e.Manager as e_QYGL_Manager--��ҵ����� ������
      ,e.Job as e_QYGL_Job--��ҵ����� ְλ
      ,e.Cellphone as e_QYGL_Cellphone--��ҵ����� �ֻ�����
      ,e.OfficNum as e_QYGL_OfficNum--��ҵ����� ��˾�绰
      ,e.Email as e_QYGL_Email--��ҵ����� �����ʼ�
      ,e.qq as e_QYGL_qq--��ҵ����� qq
      ,e.MSN as e_QYGL_MSN--��ҵ����� msn
      ,e.Address as e_QYGL_Address--��ҵ����� ��˾��ַ
      ,e.Website as e_QYGL_Website--��ҵ����� ��ַ
      ,e.GSJJ as e_QYGL_GSJJ--��ҵ����� ��˾���
      ,e.Status as e_QYGL_Status--��ҵ����� ���״̬
      ,f.SCHOOLID as f_GWXX_SCHOOLID--��λ��Ϣ�� ѧУ
      ,f.ComID as f_GWXX_ComID--��λ��Ϣ�� ��ҵID
      ,f.JobName as f_GWXX_JobName--��λ��Ϣ�� ��λ����
      ,f.WorkType as f_GWXX_WorkType--��λ��Ϣ�� ������ʽ
      ,f.Sex as f_GWXX_Sex--��λ��Ϣ�� �Ա�Ҫ��
      ,f.monthlypay as f_GWXX_monthlypay--��λ��Ϣ�� ��λн��
      ,f.LanguageRequire as f_GWXX_LanguageRequire--��λ��Ϣ�� ����Ҫ��
      ,f.WorkPlace as f_GWXX_WorkPlace--��λ��Ϣ�� �����ص�
      ,f.Computer as f_GWXX_Computer--��λ��Ϣ�� �����ˮƽ
      ,f.ZPRS as f_GWXX_ZPRS--��λ��Ϣ�� ��Ƹ����
      ,f.education as f_GWXX_education--��λ��Ϣ�� ѧ��Ҫ��
      ,f.Age as f_GWXX_Age--��λ��Ϣ�� ����Ҫ��
      ,f.GWJJ as f_GWXX_GWJJ--��λ��Ϣ�� ��λ���
      ,f.Major as f_GWXX_Major--��λ��Ϣ�� רҵҪ��
      ,f.Base as f_GWXX_Base--��λ��Ϣ�� �������
      ,f.experience as f_GWXX_experience--��λ��Ϣ�� ��������
      ,f.GWSHZT as f_GWXX_GWSHZT--��λ��Ϣ�� ��λ���״̬
      ,f.Status as f_GWXX_Status--��λ��Ϣ�� ��λ��ǰ״̬
      ,f.SFZD as f_GWXX_SFZD--��λ��Ϣ�� �Ƿ��ö�
      ,g.SCHOOLID as g_QYGL_SCHOOLID--��ҵ����� ѧУ
      ,g.Name as g_QYGL_Name--��ҵ����� ��ҵ����
      ,g.UserName as g_QYGL_UserName--��ҵ����� �û���
      ,g.Password as g_QYGL_Password--��ҵ����� ����
      ,g.UserID as g_QYGL_UserID--��ҵ����� �û���id(Ԥ��)
      ,g.QYXZ as g_QYGL_QYXZ--��ҵ����� ��ҵ����
      ,g.QYGM as g_QYGL_QYGM--��ҵ����� ��֯��ģ
      ,g.ZZJG as g_QYGL_ZZJG--��ҵ����� ��֯����
      ,g.ZYJYFW as g_QYGL_ZYJYFW--��ҵ����� ��Ҫ��Ӫ��Χ
      ,g.License as g_QYGL_License--��ҵ����� Ӫҵִ��
      ,g.CompanyType as g_QYGL_CompanyType--��ҵ����� ��ҵ����
      ,g.QYRS as g_QYGL_QYRS--��ҵ����� ��ҵ����
      ,g.Regcapital as g_QYGL_Regcapital--��ҵ����� ע���ʽ�
      ,g.PostNum as g_QYGL_PostNum--��ҵ����� �ʱ�
      ,g.Fox as g_QYGL_Fox--��ҵ����� ����
      ,g.Manager as g_QYGL_Manager--��ҵ����� ������
      ,g.Job as g_QYGL_Job--��ҵ����� ְλ
      ,g.Cellphone as g_QYGL_Cellphone--��ҵ����� �ֻ�����
      ,g.OfficNum as g_QYGL_OfficNum--��ҵ����� ��˾�绰
      ,g.Email as g_QYGL_Email--��ҵ����� �����ʼ�
      ,g.qq as g_QYGL_qq--��ҵ����� qq
      ,g.MSN as g_QYGL_MSN--��ҵ����� msn
      ,g.Address as g_QYGL_Address--��ҵ����� ��˾��ַ
      ,g.Website as g_QYGL_Website--��ҵ����� ��ַ
      ,g.GSJJ as g_QYGL_GSJJ--��ҵ����� ��˾���
      ,g.Status as g_QYGL_Status--��ҵ����� ���״̬

FROM dbo.EDU_ZZJX_22_A02_SXDWBG AS a LEFT OUTER JOIN
      dbo.EDU_ZZJX_21_A02_SXSGL AS c ON a.SXSID = c.ID /*���ʵϰ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_20_A03_GWXX AS d ON a.OrgJobID = d.ID /*���ǰ��λID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_20_A01_QYGL AS e ON a.OrgComID = e.ID /*���ǰ��ҵID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_20_A03_GWXX AS f ON a.NowJobID = f.ID /*������λID*/ AND a.SCHOOLID = f.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_20_A01_QYGL AS g ON a.NowComID = g.ID /*�������ҵID*/ AND a.SCHOOLID = g.SCHOOLID /*ѧУ*/
GO
