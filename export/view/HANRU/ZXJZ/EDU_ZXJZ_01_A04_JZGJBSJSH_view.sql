
--��ְ���������������(���)
CREATE VIEW [dbo].[VIEW_EDU_ZXJZ_01_A04_JZGJBSJSH_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ��
      ,a.[GH]--����
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
      ,a.[JGH]--������
      ,a.[JTZZ]--��ͥסַ
      ,a.[XZZ]--��סַ
      ,a.[HKSZD]--�������ڵ�
      ,a.[HKXZM]--����������
      ,a.[XLM]--ѧ����
      ,a.[GZNY]--�μӹ�������
      ,a.[LXNY]--��У����
      ,a.[CJNY]--�ӽ�����
      ,a.[BZLBM]--���������
      ,a.[DABH]--�������
      ,a.[DAWB]--�����ı�
      ,a.[TXDZ]--ͨ�ŵ�ַ
      ,a.[LXDH]--��ϵ�绰
      ,a.[YZBM]--��������
      ,a.[DZXX]--��������
      ,a.[ZYDZ]--��ҳ��ַ
      ,a.[TC]--�س�
      ,a.[GWZYM]--��λְҵ��
      ,a.[ZYRKXD]--��Ҫ�ο�ѧ��
      ,a.[JZGLXID]--��ְ������ID
      ,c.MC as c_RDXB_MC--�˵��Ա���� ����
      ,d.MC as d_ZHRMGHGXZQH_MC--�л����񹲺͹������������� ����
      ,e.MZMC as e_ZGGMZMCDLMZMPXF_MZMC--�й����������Ƶ�������ĸƴд���ʹ��� ��������
      ,e.ZMDM as e_ZGGMZMCDLMZMPXF_ZMDM--�й����������Ƶ�������ĸƴд���ʹ��� ��ĸ����
      ,f.GJDQMCJC as f_SJGGHDQMC_GJDQMCJC--��������͵������ƴ��� ����/�������Ƽ��
      ,f.EZMDM as f_SJGGHDQMC_EZMDM--��������͵������ƴ��� ����ĸ����
      ,f.SZMDM as f_SJGGHDQMC_SZMDM--��������͵������ƴ��� ����ĸ����
      ,g.MC as g_SFZJLX_MC--���֤�����ʹ���� ����
      ,h.MC as h_HYZZ_MC--����״������ ����
      ,i.MC as i_GATQW_MC--�۰�̨�������� ����
      ,i.SM as i_GATQW_SM--�۰�̨�������� ˵��
      ,j.MC as j_ZZMM_MC--������ò���� ����
      ,j.JC as j_ZZMM_JC--������ò���� ���
      ,k.MC as k_JKZKYWSZ_MC--����״��1λ���ִ��� ����
      ,k.SM as k_JKZKYWSZ_SM--����״��1λ���ִ��� ˵��
      ,l.MC as l_ZJXY_MC--�ڽ��������� ����
      ,m.MC as m_XX_MC--Ѫ�ʹ���� ����
      ,m.JC as m_XX_JC--Ѫ�ʹ���� ���
      ,n.MC as n_HKLB_MC--���������� ����
      ,o.MC as o_XL_MC--ѧ������ ����
      ,p.MC as p_ZXXBZLB_MC--��Сѧ����������� ����
      ,q.MC as q_GWZY_MC--��λְҵ����� ����
      ,r.MC as r_RKXD_MC--�ο�ѧ�δ���� ����
      ,s.SCHOOLID as s_JZGLX_SCHOOLID--��ְ�����ͱ� ѧУ
      ,s.LXMC as s_JZGLX_LXMC--��ְ�����ͱ� ��������

FROM dbo.EDU_ZXJZ_01_A04_JZGJBSJSH AS a LEFT OUTER JOIN
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
      dbo.EDU_GB_HKLB AS n ON a.HKXZM = n.DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_GB_XL AS o ON a.XLM = o.DM /*ѧ����*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXBZLB AS p ON a.BZLBM = p.DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWZY AS q ON a.GWZYM = q.DM /*��λְҵ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_RKXD AS r ON a.ZYRKXD = r.DM /*��Ҫ�ο�ѧ��*/ LEFT OUTER JOIN
      dbo.EDU_ZXJZ_01_A07_JZGLX AS s ON a.JZGLXID = s.ID /*��ְ������ID*/ AND a.SCHOOLID = s.SCHOOLID /*ѧУ��*/
GO
