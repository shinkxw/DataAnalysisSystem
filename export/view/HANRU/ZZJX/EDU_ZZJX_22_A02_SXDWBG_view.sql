
--ʵϰ��λ�����
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_22_A02_SXDWBG_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[StuID]-- ���ѧ��ID
      ,a.[OrgJobID]--���ǰ��λID
      ,a.[OrgComID]--���ǰ��ҵID
      ,a.[NowJobID]--������λID
      ,a.[NowComID]--�������ҵID
      ,c.SCHOOLID as c_XSXX_SCHOOLID--ѧ����Ϣ���ݱ� ѧУ��
      ,c.XH as c_XSXX_XH--ѧ����Ϣ���ݱ� ѧ��
      ,c.XM as c_XSXX_XM--ѧ����Ϣ���ݱ� ����
      ,c.YWXM as c_XSXX_YWXM--ѧ����Ϣ���ݱ� Ӣ������
      ,c.XMPY as c_XSXX_XMPY--ѧ����Ϣ���ݱ� ����ƴ��
      ,c.CYM as c_XSXX_CYM--ѧ����Ϣ���ݱ� ������
      ,c.SFZJLXM as c_XSXX_SFZJLXM--ѧ����Ϣ���ݱ� ���֤��������
      ,cb.MC as c_XSXX_SFZJLXM_MC--���֤�����ʹ���� ����
      ,c.SFZJH as c_XSXX_SFZJH--ѧ����Ϣ���ݱ� ���֤����
      ,c.XBM as c_XSXX_XBM--ѧ����Ϣ���ݱ� �Ա���
      ,cc.MC as c_XSXX_XBM_MC--�˵��Ա���� ����
      ,c.XXM as c_XSXX_XXM--ѧ����Ϣ���ݱ� Ѫ����
      ,cd.MC as c_XSXX_XXM_MC--Ѫ�ʹ���� ����
      ,cd.JC as c_XSXX_XXM_JC--Ѫ�ʹ���� ���
      ,c.CSRQ as c_XSXX_CSRQ--ѧ����Ϣ���ݱ� ��������
      ,c.CSDM as c_XSXX_CSDM--ѧ����Ϣ���ݱ� ��������
      ,ce.MC as c_XSXX_CSDM_MC--�л����񹲺͹������������� ����
      ,c.JG as c_XSXX_JG--ѧ����Ϣ���ݱ� ����
      ,c.MZM as c_XSXX_MZM--ѧ����Ϣ���ݱ� ������
      ,cf.MZMC as c_XSXX_MZM_MZMC--�й����������Ƶ�������ĸƴд���ʹ��� ��������
      ,cf.ZMDM as c_XSXX_MZM_ZMDM--�й����������Ƶ�������ĸƴд���ʹ��� ��ĸ����
      ,c.HYZKM as c_XSXX_HYZKM--ѧ����Ϣ���ݱ� ����״����
      ,cg.MC as c_XSXX_HYZKM_MC--����״������ ����
      ,c.XYZJM as c_XSXX_XYZJM--ѧ����Ϣ���ݱ� �����ڽ���
      ,ch.MC as c_XSXX_XYZJM_MC--�ڽ��������� ����
      ,c.GATQWM as c_XSXX_GATQWM--ѧ����Ϣ���ݱ� �۰�̨������
      ,ci.MC as c_XSXX_GATQWM_MC--�۰�̨�������� ����
      ,ci.SM as c_XSXX_GATQWM_SM--�۰�̨�������� ˵��
      ,c.JKZKM as c_XSXX_JKZKM--ѧ����Ϣ���ݱ� ����״����
      ,cj.MC as c_XSXX_JKZKM_MC--����״��1λ���ִ��� ����
      ,cj.SM as c_XSXX_JKZKM_SM--����״��1λ���ִ��� ˵��
      ,c.ZZMMM as c_XSXX_ZZMMM--ѧ����Ϣ���ݱ� ������ò��
      ,ck.MC as c_XSXX_ZZMMM_MC--������ò���� ����
      ,ck.JC as c_XSXX_ZZMMM_JC--������ò���� ���
      ,c.HKSZDXZQHM as c_XSXX_HKSZDXZQHM--ѧ����Ϣ���ݱ� �������ڵ�����������
      ,cl.MC as c_XSXX_HKSZDXZQHM_MC--�л����񹲺͹������������� ����
      ,c.HKLBM as c_XSXX_HKLBM--ѧ����Ϣ���ݱ� ���������
      ,cm.MC as c_XSXX_HKLBM_MC--���������� ����
      ,c.SFSLDRK as c_XSXX_SFSLDRK--ѧ����Ϣ���ݱ� �Ƿ��������˿�
      ,cn.MC as c_XSXX_SFSLDRK_MC--�Ƿ��־����� ����
      ,c.GJDQM as c_XSXX_GJDQM--ѧ����Ϣ���ݱ� ����/����
      ,co.GJDQMCJC as c_XSXX_GJDQM_GJDQMCJC--��������͵������ƴ��� ����/�������Ƽ��
      ,co.EZMDM as c_XSXX_GJDQM_EZMDM--��������͵������ƴ��� ����ĸ����
      ,co.SZMDM as c_XSXX_GJDQM_SZMDM--��������͵������ƴ��� ����ĸ����
      ,c.TC as c_XSXX_TC--ѧ����Ϣ���ݱ� �س�
      ,c.XSLXDH as c_XSXX_XSLXDH--ѧ����Ϣ���ݱ� ѧ����ϵ�绰
      ,c.WLDZ as c_XSXX_WLDZ--ѧ����Ϣ���ݱ� �����ַ
      ,c.JSTXH as c_XSXX_JSTXH--ѧ����Ϣ���ݱ� ��ʱͨѶ��
      ,c.DZXX as c_XSXX_DZXX--ѧ����Ϣ���ݱ� ��������
      ,c.ZP as c_XSXX_ZP--ѧ����Ϣ���ݱ� ��Ƭ(·��)
      ,d.SCHOOLID as d_GWXX_SCHOOLID--��λ��Ϣ�� ѧУ
      ,d.ComID as d_GWXX_ComID--��λ��Ϣ�� ��ҵID
      ,d.JobName as d_GWXX_JobName--��λ��Ϣ�� ��λ����
      ,d.PubTime as d_GWXX_PubTime--��λ��Ϣ�� ��Ƹ��ʼʱ��
      ,d.EndTime as d_GWXX_EndTime--��λ��Ϣ�� ��Ƹ����ʱ��
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
      ,f.PubTime as f_GWXX_PubTime--��λ��Ϣ�� ��Ƹ��ʼʱ��
      ,f.EndTime as f_GWXX_EndTime--��λ��Ϣ�� ��Ƹ����ʱ��
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
      dbo.EDU_ZZXS_01_01_XSXX AS c ON a.StuID = c.ID /* ���ѧ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_20_A03_GWXX AS d ON a.OrgJobID = d.ID /*���ǰ��λID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_20_A01_QYGL AS e ON a.OrgComID = e.ID /*���ǰ��ҵID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_20_A03_GWXX AS f ON a.NowJobID = f.ID /*������λID*/ AND a.SCHOOLID = f.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_20_A01_QYGL AS g ON a.NowComID = g.ID /*�������ҵID*/ AND a.SCHOOLID = g.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS cb ON c.SFZJLXM = cb.DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS cc ON c.XBM = cc.DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS cd ON c.XXM = cd.DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS ce ON c.CSDM = ce.DM /*��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS cf ON c.MZM = cf.DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS cg ON c.HYZKM = cg.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS ch ON c.XYZJM = ch.DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS ci ON c.GATQWM = ci.DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS cj ON c.JKZKM = cj.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS ck ON c.ZZMMM = ck.DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS cl ON c.HKSZDXZQHM = cl.DM /*�������ڵ�����������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS cm ON c.HKLBM = cm.DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS cn ON c.SFSLDRK = cn.DM /*�Ƿ��������˿�*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS co ON c.GJDQM = co.DM /*����/����*/
GO
