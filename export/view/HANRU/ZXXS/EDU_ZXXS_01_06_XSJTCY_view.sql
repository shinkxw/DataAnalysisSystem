
--ѧ����ͥ��Ա���ݱ�
CREATE VIEW [dbo].[VIEW_EDU_ZXXS_01_06_XSJTCY_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ��
      ,a.[XSXXID]--ѧ����Ϣ���ݱ�
      ,a.[GXM]--��ϵ��
      ,a.[CYXM]--��Ա����
      ,a.[CSNY]--��������
      ,a.[MZM]--������
      ,a.[GJDQM]--����/������
      ,a.[JKZKM]--����״����
      ,a.[CYGZDW]--��Ա������λ
      ,a.[CYM]--��ҵ��
      ,a.[ZYJSZWM]--רҵ����ְ����
      ,a.[ZWJBM]--ְ�񼶱���
      ,a.[DH]--�绰
      ,a.[DZXX]--��������
      ,a.[SFJHR]--�Ƿ�໤��
      ,a.[XBM]--�Ա���
      ,a.[XLM]--ѧ����
      ,a.[LXDZ]--��ϵ��ַ
      ,a.[SJHM]--�ֻ�����
      ,b.SCHOOLNAME as b_SCHOOL_SCHOOLNAME--ѧУ����
      ,b.SCHOOLTYPE as b_SCHOOL_SCHOOLTYPE--ѧУ����
      ,b.XNID as b_SCHOOL_XNID--ѧ��ID
      ,b.XQID as b_SCHOOL_XQID--ѧ��ID
      ,b.MatchURL as b_SCHOOL_MatchURL--ƥ��url
      ,b.LogLevel as b_SCHOOL_LogLevel--��־����
      ,c.SCHOOLID as c_XSXX_SCHOOLID--ѧУ��
      ,c.XH as c_XSXX_XH--ѧ��
      ,c.XM as c_XSXX_XM--����
      ,c.YWXM as c_XSXX_YWXM--Ӣ������
      ,c.XMPY as c_XSXX_XMPY--����ƴ��
      ,c.CYM as c_XSXX_CYM--������
      ,c.XBM as c_XSXX_XBM--�Ա���
      ,cb.MC as c_XSXX_XBM_MC--����
      ,c.CSRQ as c_XSXX_CSRQ--��������
      ,c.CSDM as c_XSXX_CSDM--��������
      ,cc.MC as c_XSXX_CSDM_MC--����
      ,c.JG as c_XSXX_JG--����
      ,c.MZM as c_XSXX_MZM--������
      ,cd.MZMC as c_XSXX_MZM_MZMC--��������
      ,cd.ZMDM as c_XSXX_MZM_ZMDM--��ĸ����
      ,c.GJDQM as c_XSXX_GJDQM--����/������
      ,ce.GJDQMCJC as c_XSXX_GJDQM_GJDQMCJC--����/�������Ƽ��
      ,ce.EZMDM as c_XSXX_GJDQM_EZMDM--����ĸ����
      ,ce.SZMDM as c_XSXX_GJDQM_SZMDM--����ĸ����
      ,c.SFZJLXM as c_XSXX_SFZJLXM--���֤��������
      ,cf.MC as c_XSXX_SFZJLXM_MC--����
      ,c.SFZJH as c_XSXX_SFZJH--���֤����
      ,c.HYZKM as c_XSXX_HYZKM--����״����
      ,cg.MC as c_XSXX_HYZKM_MC--����
      ,c.GATQWM as c_XSXX_GATQWM--�۰�̨������
      ,ch.MC as c_XSXX_GATQWM_MC--����
      ,ch.SM as c_XSXX_GATQWM_SM--˵��
      ,c.ZZMMM as c_XSXX_ZZMMM--������ò��
      ,ci.MC as c_XSXX_ZZMMM_MC--����
      ,ci.JC as c_XSXX_ZZMMM_JC--���
      ,c.JKZKM as c_XSXX_JKZKM--����״����
      ,cj.MC as c_XSXX_JKZKM_MC--����
      ,cj.SM as c_XSXX_JKZKM_SM--˵��
      ,c.XYZJM as c_XSXX_XYZJM--�����ڽ���
      ,ck.MC as c_XSXX_XYZJM_MC--����
      ,c.XXM as c_XSXX_XXM--Ѫ����
      ,cl.MC as c_XSXX_XXM_MC--����
      ,cl.JC as c_XSXX_XXM_JC--���
      ,c.ZP as c_XSXX_ZP--��Ƭ
      ,c.SFZJYXQ as c_XSXX_SFZJYXQ--���֤����Ч��
      ,c.DSZYBZ as c_XSXX_DSZYBZ--������Ů��־
      ,cm.MC as c_XSXX_DSZYBZ_MC--����
      ,c.RXNY as c_XSXX_RXNY--��ѧ����
      ,c.NJ as c_XSXX_NJ--�꼶
      ,c.BH as c_XSXX_BH--���
      ,c.XSLBM as c_XSXX_XSLBM--ѧ�������
      ,cn.MC as c_XSXX_XSLBM_MC--����
      ,cn.SM as c_XSXX_XSLBM_SM--˵��
      ,c.XZZ as c_XSXX_XZZ--��סַ
      ,c.HKSZD as c_XSXX_HKSZD--�������ڵ�
      ,c.HKXZM as c_XSXX_HKXZM--����������
      ,co.MC as c_XSXX_HKXZM_MC--����
      ,c.SFLDRK as c_XSXX_SFLDRK--�Ƿ������˿�
      ,cp.MC as c_XSXX_SFLDRK_MC--����
      ,c.TC as c_XSXX_TC--�س�
      ,c.LXDH as c_XSXX_LXDH--��ϵ�绰
      ,c.TXDZ as c_XSXX_TXDZ--ͨ�ŵ�ַ
      ,c.YZBM as c_XSXX_YZBM--��������
      ,c.DZXX as c_XSXX_DZXX--��������
      ,c.ZYDZ as c_XSXX_ZYDZ--��ҳ��ַ
      ,c.XJH as c_XSXX_XJH--ѧ����
      ,d.MC as d_JTGX_MC--����
      ,e.MZMC as e_ZGGMZMCDLMZMPXF_MZMC--��������
      ,e.ZMDM as e_ZGGMZMCDLMZMPXF_ZMDM--��ĸ����
      ,f.GJDQMCJC as f_SJGGHDQMC_GJDQMCJC--����/�������Ƽ��
      ,f.EZMDM as f_SJGGHDQMC_EZMDM--����ĸ����
      ,f.SZMDM as f_SJGGHDQMC_SZMDM--����ĸ����
      ,g.MC as g_JKZKYWSZ_MC--����
      ,g.SM as g_JKZKYWSZ_SM--˵��
      ,h.MC as h_CYZK_MC--����
      ,h.SM as h_CYZK_SM--˵��
      ,i.MC as i_ZYJSZW_MC--����
      ,j.MC as j_ZWJBDM_MC--����
      ,k.MC as k_SFBZ_MC--����
      ,l.MC as l_RDXB_MC--����
      ,m.MC as m_XL_MC--����

FROM dbo.EDU_ZXXS_01_06_XSJTCY AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZXXS_01_01_XSXX AS c ON a.XSXXID = c.ID /*ѧ����Ϣ���ݱ�*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_GB_JTGX AS d ON a.GXM = d.DM /*��ϵ��*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS e ON a.MZM = e.DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS f ON a.GJDQM = f.DM /*����/������*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS g ON a.JKZKM = g.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_CYZK AS h ON a.CYM = h.DM /*��ҵ��*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZYJSZW AS i ON a.ZYJSZWM = i.DM /*רҵ����ְ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZWJBDM AS j ON a.ZWJBM = j.DM /*ְ�񼶱���*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS k ON a.SFJHR = k.DM /*�Ƿ�໤��*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS l ON a.XBM = l.DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_GB_XL AS m ON a.XLM = m.DM /*ѧ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS cb ON c.XBM = cb.DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS cc ON c.CSDM = cc.DM /*��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS cd ON c.MZM = cd.DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS ce ON c.GJDQM = ce.DM /*����/������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS cf ON c.SFZJLXM = cf.DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS cg ON c.HYZKM = cg.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS ch ON c.GATQWM = ch.DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS ci ON c.ZZMMM = ci.DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS cj ON c.JKZKM = cj.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS ck ON c.XYZJM = ck.DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS cl ON c.XXM = cl.DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS cm ON c.DSZYBZ = cm.DM /*������Ů��־*/ LEFT OUTER JOIN
      dbo.EDU_JY_XSLB AS cn ON c.XSLBM = cn.DM /*ѧ�������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS co ON c.HKXZM = co.DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS cp ON c.SFLDRK = cp.DM /*�Ƿ������˿�*/
GO
