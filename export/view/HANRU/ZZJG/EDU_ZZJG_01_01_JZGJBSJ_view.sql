
--��ְ���������������
CREATE VIEW [dbo].[VIEW_EDU_ZZJG_01_01_JZGJBSJ_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ��
      ,a.[GH]--����
      ,a.[XM]--����
      ,a.[YWXM]--Ӣ������
      ,a.[XMPY]--����ƴ��
      ,a.[CYM]--������
      ,a.[SFZJLXM]--���֤��������
      ,a.[SFZJH]--���֤����
      ,a.[CSRQ]--��������
      ,a.[XBM]--�Ա���
      ,a.[MZM]--������
      ,a.[XXM]--Ѫ����
      ,a.[JKZKM]--����״����
      ,a.[HYZTM]--����״̬��
      ,a.[ZZMMM]--������ò��
      ,a.[GATQWM]--�۰�̨������
      ,a.[JG]--����
      ,a.[GJDQM]--����/������
      ,a.[CSDXZQHM]--����������������
      ,a.[XYZJM]--�����ڽ���
      ,a.[JZGHKSZDXZQHM]--��ְ���������ڵ�����������
      ,a.[HKLBM]--���������
      ,a.[DQZZ]--��ǰסַ
      ,a.[DQZZYZBM]--��ǰסַ��������
      ,a.[CJGZNY]--�μӹ�������
      ,a.[CJNY]--�ӽ�����
      ,a.[LXNY]--��У����
      ,a.[BZLBM]--���������
      ,a.[JZGLBM]--��ְ�������
      ,a.[GWLBM]--��λ�����
      ,a.[SFJZJS]--�Ƿ��ְ��ʦ
      ,a.[SFSSXJS]--�Ƿ�˫ʦ�ͽ�ʦ
      ,a.[ZP]--��Ƭ(·��)
      ,a.[DQZTM]--��ǰ״̬��
      ,a.[YDDH]--�ƶ��绰
      ,a.[GDDH]--�̶��绰
      ,a.[TXDZYZBM]--ͨ�ŵ�ַ��������
      ,a.[TXDZ]--ͨ�ŵ�ַ
      ,a.[DZXX]--��������
      ,a.[WLDZ]--�����ַ
      ,a.[JSTXH]--��ʱͨѶ��
      ,a.[JSKQJS]--��ʦ���ڽ�ɫ
      ,a.[FullTeacherName]--������ʦ����
      ,a.[TeacherGroupId]--��TeacherGroup�����
      ,c.MC as c_SFZJLX_MC--���֤�����ʹ���� ����
      ,d.MC as d_RDXB_MC--�˵��Ա���� ����
      ,e.MZMC as e_ZGGMZMCDLMZMPXF_MZMC--�й����������Ƶ�������ĸƴд���ʹ��� ��������
      ,e.ZMDM as e_ZGGMZMCDLMZMPXF_ZMDM--�й����������Ƶ�������ĸƴд���ʹ��� ��ĸ����
      ,f.MC as f_XX_MC--Ѫ�ʹ���� ����
      ,f.JC as f_XX_JC--Ѫ�ʹ���� ���
      ,g.MC as g_JKZKYWSZ_MC--����״��1λ���ִ��� ����
      ,g.SM as g_JKZKYWSZ_SM--����״��1λ���ִ��� ˵��
      ,h.MC as h_HYZZ_MC--����״������ ����
      ,i.MC as i_ZZMM_MC--������ò���� ����
      ,i.JC as i_ZZMM_JC--������ò���� ���
      ,j.MC as j_GATQW_MC--�۰�̨�������� ����
      ,j.SM as j_GATQW_SM--�۰�̨�������� ˵��
      ,k.GJDQMCJC as k_SJGGHDQMC_GJDQMCJC--��������͵������ƴ��� ����/�������Ƽ��
      ,k.EZMDM as k_SJGGHDQMC_EZMDM--��������͵������ƴ��� ����ĸ����
      ,k.SZMDM as k_SJGGHDQMC_SZMDM--��������͵������ƴ��� ����ĸ����
      ,l.MC as l_ZHRMGHGXZQH_MC--�л����񹲺͹������������� ����
      ,m.MC as m_ZJXY_MC--�ڽ��������� ����
      ,n.MC as n_ZHRMGHGXZQH_MC--�л����񹲺͹������������� ����
      ,o.MC as o_HKLB_MC--���������� ����
      ,p.MC as p_BZLB_MC--����������� ����
      ,q.MC as q_JZGLB_MC--��ְ��������� ����
      ,q.SM as q_JZGLB_SM--��ְ��������� ˵��
      ,r.MC as r_GWLB_MC--��λ������� ����
      ,s.MC as s_SFBZ_MC--�Ƿ��־����� ����
      ,t.MC as t_SFBZ_MC--�Ƿ��־����� ����
      ,u.MC as u_JZGDQZT_MC--��ְ����ǰ״̬����� ����

FROM dbo.EDU_ZZJG_01_01_JZGJBSJ AS a LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS c ON a.SFZJLXM = c.DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS d ON a.XBM = d.DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS e ON a.MZM = e.DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS f ON a.XXM = f.DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS g ON a.JKZKM = g.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS h ON a.HYZTM = h.DM /*����״̬��*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS i ON a.ZZMMM = i.DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS j ON a.GATQWM = j.DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS k ON a.GJDQM = k.DM /*����/������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS l ON a.CSDXZQHM = l.DM /*����������������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS m ON a.XYZJM = m.DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS n ON a.JZGHKSZDXZQHM = n.DM /*��ְ���������ڵ�����������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS o ON a.HKLBM = o.DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_BZLB AS p ON a.BZLBM = p.DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGLB AS q ON a.JZGLBM = q.DM /*��ְ�������*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWLB AS r ON a.GWLBM = r.DM /*��λ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS s ON a.SFJZJS = s.DM /*�Ƿ��ְ��ʦ*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS t ON a.SFSSXJS = t.DM /*�Ƿ�˫ʦ�ͽ�ʦ*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGDQZT AS u ON a.DQZTM = u.DM /*��ǰ״̬��*/
GO
