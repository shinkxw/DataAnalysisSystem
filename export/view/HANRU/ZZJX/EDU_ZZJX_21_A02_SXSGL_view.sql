
--ʵϰ�������
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_21_A02_SXSGL_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[ComID]--��ҵID
      ,a.[JobID]--��λID
      ,a.[SZBID]--ʵϰ��ID
      ,a.[StuID]--ѧ��ID
      ,a.[Resume]--����
      ,a.[GSSHZT]--��˾���״̬
      ,a.[TypeID]--¼ȡ����
      ,a.[Status]--ʵϰ��״̬
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
      ,c.Abstract as c_QYGL_Abstract--��ҵ����� ��˾���
      ,c.Status as c_QYGL_Status--��ҵ����� ���״̬
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
      ,d.abstract as d_GWXX_abstract--��λ��Ϣ�� ��λ���
      ,d.Major as d_GWXX_Major--��λ��Ϣ�� רҵҪ��
      ,d.Base as d_GWXX_Base--��λ��Ϣ�� �������
      ,d.experience as d_GWXX_experience--��λ��Ϣ�� ��������
      ,d.GWSHZT as d_GWXX_GWSHZT--��λ��Ϣ�� ��λ���״̬
      ,d.Status as d_GWXX_Status--��λ��Ϣ�� ��λ��ǰ״̬
      ,e.SCHOOLID as e_SXBJGL_SCHOOLID--ʵϰ�༶����� ѧУ
      ,e.XNID as e_SXBJGL_XNID--ʵϰ�༶����� ѧ��ID
      ,e.XQID as e_SXBJGL_XQID--ʵϰ�༶����� ѧ��ID
      ,e.BZRID as e_SXBJGL_BZRID--ʵϰ�༶����� ������ID
      ,f.SCHOOLID as f_XSXX_SCHOOLID--ѧ����Ϣ���ݱ� ѧУ��
      ,f.XH as f_XSXX_XH--ѧ����Ϣ���ݱ� ѧ��
      ,f.XM as f_XSXX_XM--ѧ����Ϣ���ݱ� ����
      ,f.YWXM as f_XSXX_YWXM--ѧ����Ϣ���ݱ� Ӣ������
      ,f.XMPY as f_XSXX_XMPY--ѧ����Ϣ���ݱ� ����ƴ��
      ,f.CYM as f_XSXX_CYM--ѧ����Ϣ���ݱ� ������
      ,f.SFZJLXM as f_XSXX_SFZJLXM--ѧ����Ϣ���ݱ� ���֤��������
      ,fb.MC as f_XSXX_SFZJLXM_MC--���֤�����ʹ���� ����
      ,f.SFZJH as f_XSXX_SFZJH--ѧ����Ϣ���ݱ� ���֤����
      ,f.XBM as f_XSXX_XBM--ѧ����Ϣ���ݱ� �Ա���
      ,fc.MC as f_XSXX_XBM_MC--�˵��Ա���� ����
      ,f.XXM as f_XSXX_XXM--ѧ����Ϣ���ݱ� Ѫ����
      ,fd.MC as f_XSXX_XXM_MC--Ѫ�ʹ���� ����
      ,fd.JC as f_XSXX_XXM_JC--Ѫ�ʹ���� ���
      ,f.CSRQ as f_XSXX_CSRQ--ѧ����Ϣ���ݱ� ��������
      ,f.CSDM as f_XSXX_CSDM--ѧ����Ϣ���ݱ� ��������
      ,fe.MC as f_XSXX_CSDM_MC--�л����񹲺͹������������� ����
      ,f.JG as f_XSXX_JG--ѧ����Ϣ���ݱ� ����
      ,f.MZM as f_XSXX_MZM--ѧ����Ϣ���ݱ� ������
      ,ff.MZMC as f_XSXX_MZM_MZMC--�й����������Ƶ�������ĸƴд���ʹ��� ��������
      ,ff.ZMDM as f_XSXX_MZM_ZMDM--�й����������Ƶ�������ĸƴд���ʹ��� ��ĸ����
      ,f.HYZKM as f_XSXX_HYZKM--ѧ����Ϣ���ݱ� ����״����
      ,fg.MC as f_XSXX_HYZKM_MC--����״������ ����
      ,f.XYZJM as f_XSXX_XYZJM--ѧ����Ϣ���ݱ� �����ڽ���
      ,fh.MC as f_XSXX_XYZJM_MC--�ڽ��������� ����
      ,f.GATQWM as f_XSXX_GATQWM--ѧ����Ϣ���ݱ� �۰�̨������
      ,fi.MC as f_XSXX_GATQWM_MC--�۰�̨�������� ����
      ,fi.SM as f_XSXX_GATQWM_SM--�۰�̨�������� ˵��
      ,f.JKZKM as f_XSXX_JKZKM--ѧ����Ϣ���ݱ� ����״����
      ,fj.MC as f_XSXX_JKZKM_MC--����״��1λ���ִ��� ����
      ,fj.SM as f_XSXX_JKZKM_SM--����״��1λ���ִ��� ˵��
      ,f.ZZMMM as f_XSXX_ZZMMM--ѧ����Ϣ���ݱ� ������ò��
      ,fk.MC as f_XSXX_ZZMMM_MC--������ò���� ����
      ,fk.JC as f_XSXX_ZZMMM_JC--������ò���� ���
      ,f.HKSZDXZQHM as f_XSXX_HKSZDXZQHM--ѧ����Ϣ���ݱ� �������ڵ�����������
      ,fl.MC as f_XSXX_HKSZDXZQHM_MC--�л����񹲺͹������������� ����
      ,f.HKLBM as f_XSXX_HKLBM--ѧ����Ϣ���ݱ� ���������
      ,fm.MC as f_XSXX_HKLBM_MC--���������� ����
      ,f.SFSLDRK as f_XSXX_SFSLDRK--ѧ����Ϣ���ݱ� �Ƿ��������˿�
      ,fn.MC as f_XSXX_SFSLDRK_MC--�Ƿ��־����� ����
      ,f.GJDQM as f_XSXX_GJDQM--ѧ����Ϣ���ݱ� ����/����
      ,fo.GJDQMCJC as f_XSXX_GJDQM_GJDQMCJC--��������͵������ƴ��� ����/�������Ƽ��
      ,fo.EZMDM as f_XSXX_GJDQM_EZMDM--��������͵������ƴ��� ����ĸ����
      ,fo.SZMDM as f_XSXX_GJDQM_SZMDM--��������͵������ƴ��� ����ĸ����
      ,f.TC as f_XSXX_TC--ѧ����Ϣ���ݱ� �س�
      ,f.XSLXDH as f_XSXX_XSLXDH--ѧ����Ϣ���ݱ� ѧ����ϵ�绰
      ,f.WLDZ as f_XSXX_WLDZ--ѧ����Ϣ���ݱ� �����ַ
      ,f.JSTXH as f_XSXX_JSTXH--ѧ����Ϣ���ݱ� ��ʱͨѶ��
      ,f.DZXX as f_XSXX_DZXX--ѧ����Ϣ���ݱ� ��������
      ,f.ZP as f_XSXX_ZP--ѧ����Ϣ���ݱ� ��Ƭ(·��)

FROM dbo.EDU_ZZJX_21_A02_SXSGL AS a LEFT OUTER JOIN
      dbo.EDU_ZZJX_20_A01_QYGL AS c ON a.ComID = c.ID /*��ҵID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_20_A03_GWXX AS d ON a.JobID = d.ID /*��λID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_21_A01_SXBJGL AS e ON a.SZBID = e.ID /*ʵϰ��ID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZXS_01_01_XSXX AS f ON a.StuID = f.ID /*ѧ��ID*/ AND a.SCHOOLID = f.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS fb ON f.SFZJLXM = fb.DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS fc ON f.XBM = fc.DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS fd ON f.XXM = fd.DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS fe ON f.CSDM = fe.DM /*��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS ff ON f.MZM = ff.DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS fg ON f.HYZKM = fg.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS fh ON f.XYZJM = fh.DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS fi ON f.GATQWM = fi.DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS fj ON f.JKZKM = fj.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS fk ON f.ZZMMM = fk.DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS fl ON f.HKSZDXZQHM = fl.DM /*�������ڵ�����������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS fm ON f.HKLBM = fm.DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS fn ON f.SFSLDRK = fn.DM /*�Ƿ��������˿�*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS fo ON f.GJDQM = fo.DM /*����/����*/
GO
