
--ʵϰͶ�߱�
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_22_A05_SXTS_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[ComID]--��ҵID
      ,a.[StuID]--ѧ��ID
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
      ,d.SCHOOLID as d_XSXX_SCHOOLID--ѧ����Ϣ���ݱ� ѧУ��
      ,d.XH as d_XSXX_XH--ѧ����Ϣ���ݱ� ѧ��
      ,d.XM as d_XSXX_XM--ѧ����Ϣ���ݱ� ����
      ,d.YWXM as d_XSXX_YWXM--ѧ����Ϣ���ݱ� Ӣ������
      ,d.XMPY as d_XSXX_XMPY--ѧ����Ϣ���ݱ� ����ƴ��
      ,d.CYM as d_XSXX_CYM--ѧ����Ϣ���ݱ� ������
      ,d.SFZJLXM as d_XSXX_SFZJLXM--ѧ����Ϣ���ݱ� ���֤��������
      ,db.MC as d_XSXX_SFZJLXM_MC--���֤�����ʹ���� ����
      ,d.SFZJH as d_XSXX_SFZJH--ѧ����Ϣ���ݱ� ���֤����
      ,d.XBM as d_XSXX_XBM--ѧ����Ϣ���ݱ� �Ա���
      ,dc.MC as d_XSXX_XBM_MC--�˵��Ա���� ����
      ,d.XXM as d_XSXX_XXM--ѧ����Ϣ���ݱ� Ѫ����
      ,dd.MC as d_XSXX_XXM_MC--Ѫ�ʹ���� ����
      ,dd.JC as d_XSXX_XXM_JC--Ѫ�ʹ���� ���
      ,d.CSRQ as d_XSXX_CSRQ--ѧ����Ϣ���ݱ� ��������
      ,d.CSDM as d_XSXX_CSDM--ѧ����Ϣ���ݱ� ��������
      ,de.MC as d_XSXX_CSDM_MC--�л����񹲺͹������������� ����
      ,d.JG as d_XSXX_JG--ѧ����Ϣ���ݱ� ����
      ,d.MZM as d_XSXX_MZM--ѧ����Ϣ���ݱ� ������
      ,df.MZMC as d_XSXX_MZM_MZMC--�й����������Ƶ�������ĸƴд���ʹ��� ��������
      ,df.ZMDM as d_XSXX_MZM_ZMDM--�й����������Ƶ�������ĸƴд���ʹ��� ��ĸ����
      ,d.HYZKM as d_XSXX_HYZKM--ѧ����Ϣ���ݱ� ����״����
      ,dg.MC as d_XSXX_HYZKM_MC--����״������ ����
      ,d.XYZJM as d_XSXX_XYZJM--ѧ����Ϣ���ݱ� �����ڽ���
      ,dh.MC as d_XSXX_XYZJM_MC--�ڽ��������� ����
      ,d.GATQWM as d_XSXX_GATQWM--ѧ����Ϣ���ݱ� �۰�̨������
      ,di.MC as d_XSXX_GATQWM_MC--�۰�̨�������� ����
      ,di.SM as d_XSXX_GATQWM_SM--�۰�̨�������� ˵��
      ,d.JKZKM as d_XSXX_JKZKM--ѧ����Ϣ���ݱ� ����״����
      ,dj.MC as d_XSXX_JKZKM_MC--����״��1λ���ִ��� ����
      ,dj.SM as d_XSXX_JKZKM_SM--����״��1λ���ִ��� ˵��
      ,d.ZZMMM as d_XSXX_ZZMMM--ѧ����Ϣ���ݱ� ������ò��
      ,dk.MC as d_XSXX_ZZMMM_MC--������ò���� ����
      ,dk.JC as d_XSXX_ZZMMM_JC--������ò���� ���
      ,d.HKSZDXZQHM as d_XSXX_HKSZDXZQHM--ѧ����Ϣ���ݱ� �������ڵ�����������
      ,dl.MC as d_XSXX_HKSZDXZQHM_MC--�л����񹲺͹������������� ����
      ,d.HKLBM as d_XSXX_HKLBM--ѧ����Ϣ���ݱ� ���������
      ,dm.MC as d_XSXX_HKLBM_MC--���������� ����
      ,d.SFSLDRK as d_XSXX_SFSLDRK--ѧ����Ϣ���ݱ� �Ƿ��������˿�
      ,dn.MC as d_XSXX_SFSLDRK_MC--�Ƿ��־����� ����
      ,d.GJDQM as d_XSXX_GJDQM--ѧ����Ϣ���ݱ� ����/����
      ,do.GJDQMCJC as d_XSXX_GJDQM_GJDQMCJC--��������͵������ƴ��� ����/�������Ƽ��
      ,do.EZMDM as d_XSXX_GJDQM_EZMDM--��������͵������ƴ��� ����ĸ����
      ,do.SZMDM as d_XSXX_GJDQM_SZMDM--��������͵������ƴ��� ����ĸ����
      ,d.TC as d_XSXX_TC--ѧ����Ϣ���ݱ� �س�
      ,d.XSLXDH as d_XSXX_XSLXDH--ѧ����Ϣ���ݱ� ѧ����ϵ�绰
      ,d.WLDZ as d_XSXX_WLDZ--ѧ����Ϣ���ݱ� �����ַ
      ,d.JSTXH as d_XSXX_JSTXH--ѧ����Ϣ���ݱ� ��ʱͨѶ��
      ,d.DZXX as d_XSXX_DZXX--ѧ����Ϣ���ݱ� ��������
      ,d.ZP as d_XSXX_ZP--ѧ����Ϣ���ݱ� ��Ƭ(·��)

FROM dbo.EDU_ZZJX_22_A05_SXTS AS a LEFT OUTER JOIN
      dbo.EDU_ZZJX_20_A01_QYGL AS c ON a.ComID = c.ID /*��ҵID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZXS_01_01_XSXX AS d ON a.StuID = d.ID /*ѧ��ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS db ON d.SFZJLXM = db.DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS dc ON d.XBM = dc.DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS dd ON d.XXM = dd.DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS de ON d.CSDM = de.DM /*��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS df ON d.MZM = df.DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS dg ON d.HYZKM = dg.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS dh ON d.XYZJM = dh.DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS di ON d.GATQWM = di.DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS dj ON d.JKZKM = dj.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS dk ON d.ZZMMM = dk.DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS dl ON d.HKSZDXZQHM = dl.DM /*�������ڵ�����������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS dm ON d.HKLBM = dm.DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS dn ON d.SFSLDRK = dn.DM /*�Ƿ��������˿�*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS do ON d.GJDQM = do.DM /*����/����*/
GO
