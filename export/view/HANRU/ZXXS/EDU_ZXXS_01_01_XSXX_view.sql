
--ѧ���������������
CREATE VIEW [dbo].[VIEW_EDU_ZXXS_01_01_XSXX_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ��
      ,a.[XH]--ѧ��
      ,a.[XM]--����
      ,a.[YWXM]--Ӣ������
      ,a.[XMPY]--����ƴ��
      ,a.[CYM]--������
      ,a.[XBM]--�Ա���
      ,a.[CSRQ]--��������
      ,a.[CSDM]--��������
      ,a.[JG]--����
      ,a.[MZM]--������
      ,a.[GJDQM]--����/������
      ,a.[SFZJLXM]--���֤��������
      ,a.[SFZJH]--���֤����
      ,a.[HYZKM]--����״����
      ,a.[GATQWM]--�۰�̨������
      ,a.[ZZMMM]--������ò��
      ,a.[JKZKM]--����״����
      ,a.[XYZJM]--�����ڽ���
      ,a.[XXM]--Ѫ����
      ,a.[ZP]--��Ƭ
      ,a.[SFZJYXQ]--���֤����Ч��
      ,a.[DSZYBZ]--������Ů��־
      ,a.[RXNY]--��ѧ����
      ,a.[NJ]--�꼶
      ,a.[BH]--���
      ,a.[XSLBM]--ѧ�������
      ,a.[XZZ]--��סַ
      ,a.[HKSZD]--�������ڵ�
      ,a.[HKXZM]--����������
      ,a.[SFLDRK]--�Ƿ������˿�
      ,a.[TC]--�س�
      ,a.[LXDH]--��ϵ�绰
      ,a.[TXDZ]--ͨ�ŵ�ַ
      ,a.[YZBM]--��������
      ,a.[DZXX]--��������
      ,a.[ZYDZ]--��ҳ��ַ
      ,a.[XJH]--ѧ����
      ,b.SCHOOLNAME as b_SCHOOL_SCHOOLNAME--ѧУ����
      ,b.SCHOOLTYPE as b_SCHOOL_SCHOOLTYPE--ѧУ����
      ,b.XNID as b_SCHOOL_XNID--ѧ��ID
      ,b.XQID as b_SCHOOL_XQID--ѧ��ID
      ,b.MatchURL as b_SCHOOL_MatchURL--ƥ��url
      ,b.LogLevel as b_SCHOOL_LogLevel--��־����
      ,c.MC as c_RDXB_MC--����
      ,d.MC as d_ZHRMGHGXZQH_MC--����
      ,e.MZMC as e_ZGGMZMCDLMZMPXF_MZMC--��������
      ,e.ZMDM as e_ZGGMZMCDLMZMPXF_ZMDM--��ĸ����
      ,f.GJDQMCJC as f_SJGGHDQMC_GJDQMCJC--����/�������Ƽ��
      ,f.EZMDM as f_SJGGHDQMC_EZMDM--����ĸ����
      ,f.SZMDM as f_SJGGHDQMC_SZMDM--����ĸ����
      ,g.MC as g_SFZJLX_MC--����
      ,h.MC as h_HYZZ_MC--����
      ,i.MC as i_GATQW_MC--����
      ,i.SM as i_GATQW_SM--˵��
      ,j.MC as j_ZZMM_MC--����
      ,j.JC as j_ZZMM_JC--���
      ,k.MC as k_JKZKYWSZ_MC--����
      ,k.SM as k_JKZKYWSZ_SM--˵��
      ,l.MC as l_ZJXY_MC--����
      ,m.MC as m_XX_MC--����
      ,m.JC as m_XX_JC--���
      ,n.MC as n_SFBZ_MC--����
      ,o.SCHOOLID as o_NJ_SCHOOLID--ѧУ��
      ,o.NJMC as o_NJ_NJMC--�꼶����
      ,p.SCHOOLID as p_BJ_SCHOOLID--ѧУ��
      ,p.NJ as p_BJ_NJ--�꼶��
      ,p.BJ as p_BJ_BJ--�༶����
      ,p.JBNY as p_BJ_JBNY--��������
      ,p.BZRGH as p_BJ_BZRGH--�����ι���
      ,p.BZXH as p_BJ_BZXH--�೤ѧ��
      ,p.BJRYCH as p_BJ_BJRYCH--�༶�����ƺ�
      ,p.XZ as p_BJ_XZ--ѧ��
      ,p.BJLXM as p_BJ_BJLXM--�༶������
      ,pb.MC as p_BJ_BJLXM_MC--����
      ,p.WLLX as p_BJ_WLLX--��������
      ,p.BYRQ as p_BJ_BYRQ--��ҵ����
      ,p.SFSSMZSYJXB as p_BJ_SFSSMZSYJXB--�Ƿ���������˫���ѧ��
      ,pc.MC as p_BJ_SFSSMZSYJXB_MC--����
      ,p.SYJXMSM as p_BJ_SYJXMSM--˫���ѧģʽ��
      ,pd.MC as p_BJ_SYJXMSM_MC--����
      ,pd.SM as p_BJ_SYJXMSM_SM--˵��
      ,q.MC as q_XSLB_MC--����
      ,q.SM as q_XSLB_SM--˵��
      ,r.MC as r_HKLB_MC--����
      ,s.MC as s_SFBZ_MC--����

FROM dbo.EDU_ZXXS_01_01_XSXX AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS c ON a.XBM = c.DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS d ON a.CSDM = d.DM /*��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS e ON a.MZM = e.DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS f ON a.GJDQM = f.DM /*����/������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS g ON a.SFZJLXM = g.DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS h ON a.HYZKM = h.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS i ON a.GATQWM = i.DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS j ON a.ZZMMM = j.DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS k ON a.JKZKM = k.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS l ON a.XYZJM = l.DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS m ON a.XXM = m.DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS n ON a.DSZYBZ = n.DM /*������Ů��־*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_02_01_NJ AS o ON a.NJ = o.NJ /*�꼶*/ AND a.SCHOOLID = o.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_03_01_BJ AS p ON a.BH = p.BH /*���*/ AND a.SCHOOLID = p.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_XSLB AS q ON a.XSLBM = q.DM /*ѧ�������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS r ON a.HKXZM = r.DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS s ON a.SFLDRK = s.DM /*�Ƿ������˿�*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXBJLX AS pb ON p.BJLXM = pb.DM /*�༶������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS pc ON p.SFSSMZSYJXB = pc.DM /*�Ƿ���������˫���ѧ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SSMZSYJXMS AS pd ON p.SYJXMSM = pd.DM /*˫���ѧģʽ��*/
GO
