
--ѧ����Ϣ���ݱ�
CREATE VIEW [dbo].[VIEW_EDU_ZZXS_01_01_XSXX_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ��
      ,a.[XH]--ѧ��
      ,a.[XM]--����
      ,a.[YWXM]--Ӣ������
      ,a.[XMPY]--����ƴ��
      ,a.[CYM]--������
      ,a.[SFZJLXM]--���֤��������
      ,a.[SFZJH]--���֤����
      ,a.[XBM]--�Ա���
      ,a.[XXM]--Ѫ����
      ,a.[CSRQ]--��������
      ,a.[CSDM]--��������
      ,a.[JG]--����
      ,a.[MZM]--������
      ,a.[HYZKM]--����״����
      ,a.[XYZJM]--�����ڽ���
      ,a.[GATQWM]--�۰�̨������
      ,a.[JKZKM]--����״����
      ,a.[ZZMMM]--������ò��
      ,a.[HKSZDXZQHM]--�������ڵ�����������
      ,a.[HKLBM]--���������
      ,a.[SFSLDRK]--�Ƿ��������˿�
      ,a.[GJDQM]--����/����
      ,a.[TC]--�س�
      ,a.[XSLXDH]--ѧ����ϵ�绰
      ,a.[WLDZ]--�����ַ
      ,a.[JSTXH]--��ʱͨѶ��
      ,a.[DZXX]--��������
      ,a.[ZP]--��Ƭ(·��)
      ,b.SCHOOLNAME as b_SCHOOL_SCHOOLNAME--ѧУ���ñ� ѧУ����
      ,b.SCHOOLTYPE as b_SCHOOL_SCHOOLTYPE--ѧУ���ñ� ѧУ����
      ,b.XNID as b_SCHOOL_XNID--ѧУ���ñ� ѧ��ID
      ,b.XQID as b_SCHOOL_XQID--ѧУ���ñ� ѧ��ID
      ,b.MatchURL as b_SCHOOL_MatchURL--ѧУ���ñ� ƥ��url
      ,b.LogLevel as b_SCHOOL_LogLevel--ѧУ���ñ� ��־����
      ,c.MC as c_SFZJLX_MC--���֤�����ʹ���� ����
      ,d.MC as d_RDXB_MC--�˵��Ա���� ����
      ,e.MC as e_XX_MC--Ѫ�ʹ���� ����
      ,e.JC as e_XX_JC--Ѫ�ʹ���� ���
      ,f.MC as f_ZHRMGHGXZQH_MC--�л����񹲺͹������������� ����
      ,g.MZMC as g_ZGGMZMCDLMZMPXF_MZMC--�й����������Ƶ�������ĸƴд���ʹ��� ��������
      ,g.ZMDM as g_ZGGMZMCDLMZMPXF_ZMDM--�й����������Ƶ�������ĸƴд���ʹ��� ��ĸ����
      ,h.MC as h_HYZZ_MC--����״������ ����
      ,i.MC as i_ZJXY_MC--�ڽ��������� ����
      ,j.MC as j_GATQW_MC--�۰�̨�������� ����
      ,j.SM as j_GATQW_SM--�۰�̨�������� ˵��
      ,k.MC as k_JKZKYWSZ_MC--����״��1λ���ִ��� ����
      ,k.SM as k_JKZKYWSZ_SM--����״��1λ���ִ��� ˵��
      ,l.MC as l_ZZMM_MC--������ò���� ����
      ,l.JC as l_ZZMM_JC--������ò���� ���
      ,m.MC as m_ZHRMGHGXZQH_MC--�л����񹲺͹������������� ����
      ,n.MC as n_HKLB_MC--���������� ����
      ,o.MC as o_SFBZ_MC--�Ƿ��־����� ����
      ,p.GJDQMCJC as p_SJGGHDQMC_GJDQMCJC--��������͵������ƴ��� ����/�������Ƽ��
      ,p.EZMDM as p_SJGGHDQMC_EZMDM--��������͵������ƴ��� ����ĸ����
      ,p.SZMDM as p_SJGGHDQMC_SZMDM--��������͵������ƴ��� ����ĸ����

FROM dbo.EDU_ZZXS_01_01_XSXX AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS c ON a.SFZJLXM = c.DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS d ON a.XBM = d.DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS e ON a.XXM = e.DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS f ON a.CSDM = f.DM /*��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS g ON a.MZM = g.DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS h ON a.HYZKM = h.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS i ON a.XYZJM = i.DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS j ON a.GATQWM = j.DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS k ON a.JKZKM = k.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS l ON a.ZZMMM = l.DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS m ON a.HKSZDXZQHM = m.DM /*�������ڵ�����������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS n ON a.HKLBM = n.DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS o ON a.SFSLDRK = o.DM /*�Ƿ��������˿�*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS p ON a.GJDQM = p.DM /*����/����*/
GO
