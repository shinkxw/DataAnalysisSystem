
--ӦƸ��ʦ���ݱ�
CREATE VIEW [dbo].[VIEW_EDU_ZZJG_16_A02_YPJSSJ_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ��
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
      ,a.[BZLBM]--���������
      ,a.[JZGLBM]--��ְ�������
      ,a.[GWLBM]--��λ�����
      ,a.[SFJZJS]--�Ƿ��ְ��ʦ
      ,a.[SFSSXJS]--�Ƿ�˫ʦ�ͽ�ʦ
      ,a.[ZP]--��Ƭ(·��)
      ,a.[YDDH]--�ƶ��绰
      ,a.[GDDH]--�̶��绰
      ,a.[TXDZYZBM]--ͨ�ŵ�ַ��������
      ,a.[TXDZ]--ͨ�ŵ�ַ
      ,a.[DZXX]--��������
      ,a.[WLDZ]--�����ַ
      ,a.[JSTXH]--��ʱͨѶ��
      ,a.[BZ]--��ע
      ,a.[TJSJ]--���ʱ��
      ,a.[TJJSID]--��ӽ�ʦID
      ,a.[SHJG]--��˽��
      ,a.[SHSJ]--���ʱ��
      ,a.[SHJSID]--��˽�ʦID
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
      ,u.SCHOOLID as u_JZGJBSJ_SCHOOLID--��ְ��������������� ѧУ��
      ,u.GH as u_JZGJBSJ_GH--��ְ��������������� ����
      ,u.XM as u_JZGJBSJ_XM--��ְ��������������� ����
      ,u.YWXM as u_JZGJBSJ_YWXM--��ְ��������������� Ӣ������
      ,u.XMPY as u_JZGJBSJ_XMPY--��ְ��������������� ����ƴ��
      ,u.CYM as u_JZGJBSJ_CYM--��ְ��������������� ������
      ,u.SFZJLXM as u_JZGJBSJ_SFZJLXM--��ְ��������������� ���֤��������
      ,[ub].MC as u_JZGJBSJ_SFZJLXM_MC--���֤�����ʹ���� ����
      ,u.SFZJH as u_JZGJBSJ_SFZJH--��ְ��������������� ���֤����
      ,u.CSRQ as u_JZGJBSJ_CSRQ--��ְ��������������� ��������
      ,u.XBM as u_JZGJBSJ_XBM--��ְ��������������� �Ա���
      ,[uc].MC as u_JZGJBSJ_XBM_MC--�˵��Ա���� ����
      ,u.MZM as u_JZGJBSJ_MZM--��ְ��������������� ������
      ,[ud].MZMC as u_JZGJBSJ_MZM_MZMC--�й����������Ƶ�������ĸƴд���ʹ��� ��������
      ,[ud].ZMDM as u_JZGJBSJ_MZM_ZMDM--�й����������Ƶ�������ĸƴд���ʹ��� ��ĸ����
      ,u.XXM as u_JZGJBSJ_XXM--��ְ��������������� Ѫ����
      ,[ue].MC as u_JZGJBSJ_XXM_MC--Ѫ�ʹ���� ����
      ,[ue].JC as u_JZGJBSJ_XXM_JC--Ѫ�ʹ���� ���
      ,u.JKZKM as u_JZGJBSJ_JKZKM--��ְ��������������� ����״����
      ,[uf].MC as u_JZGJBSJ_JKZKM_MC--����״��1λ���ִ��� ����
      ,[uf].SM as u_JZGJBSJ_JKZKM_SM--����״��1λ���ִ��� ˵��
      ,u.HYZTM as u_JZGJBSJ_HYZTM--��ְ��������������� ����״̬��
      ,[ug].MC as u_JZGJBSJ_HYZTM_MC--����״������ ����
      ,u.ZZMMM as u_JZGJBSJ_ZZMMM--��ְ��������������� ������ò��
      ,[uh].MC as u_JZGJBSJ_ZZMMM_MC--������ò���� ����
      ,[uh].JC as u_JZGJBSJ_ZZMMM_JC--������ò���� ���
      ,u.GATQWM as u_JZGJBSJ_GATQWM--��ְ��������������� �۰�̨������
      ,[ui].MC as u_JZGJBSJ_GATQWM_MC--�۰�̨�������� ����
      ,[ui].SM as u_JZGJBSJ_GATQWM_SM--�۰�̨�������� ˵��
      ,u.JG as u_JZGJBSJ_JG--��ְ��������������� ����
      ,u.GJDQM as u_JZGJBSJ_GJDQM--��ְ��������������� ����/������
      ,[uj].GJDQMCJC as u_JZGJBSJ_GJDQM_GJDQMCJC--��������͵������ƴ��� ����/�������Ƽ��
      ,[uj].EZMDM as u_JZGJBSJ_GJDQM_EZMDM--��������͵������ƴ��� ����ĸ����
      ,[uj].SZMDM as u_JZGJBSJ_GJDQM_SZMDM--��������͵������ƴ��� ����ĸ����
      ,u.CSDXZQHM as u_JZGJBSJ_CSDXZQHM--��ְ��������������� ����������������
      ,[uk].MC as u_JZGJBSJ_CSDXZQHM_MC--�л����񹲺͹������������� ����
      ,u.XYZJM as u_JZGJBSJ_XYZJM--��ְ��������������� �����ڽ���
      ,[ul].MC as u_JZGJBSJ_XYZJM_MC--�ڽ��������� ����
      ,u.JZGHKSZDXZQHM as u_JZGJBSJ_JZGHKSZDXZQHM--��ְ��������������� ��ְ���������ڵ�����������
      ,[um].MC as u_JZGJBSJ_JZGHKSZDXZQHM_MC--�л����񹲺͹������������� ����
      ,u.HKLBM as u_JZGJBSJ_HKLBM--��ְ��������������� ���������
      ,[un].MC as u_JZGJBSJ_HKLBM_MC--���������� ����
      ,u.DQZZ as u_JZGJBSJ_DQZZ--��ְ��������������� ��ǰסַ
      ,u.DQZZYZBM as u_JZGJBSJ_DQZZYZBM--��ְ��������������� ��ǰסַ��������
      ,u.CJGZNY as u_JZGJBSJ_CJGZNY--��ְ��������������� �μӹ�������
      ,u.CJNY as u_JZGJBSJ_CJNY--��ְ��������������� �ӽ�����
      ,u.LXNY as u_JZGJBSJ_LXNY--��ְ��������������� ��У����
      ,u.BZLBM as u_JZGJBSJ_BZLBM--��ְ��������������� ���������
      ,[uo].MC as u_JZGJBSJ_BZLBM_MC--����������� ����
      ,u.JZGLBM as u_JZGJBSJ_JZGLBM--��ְ��������������� ��ְ�������
      ,[up].MC as u_JZGJBSJ_JZGLBM_MC--��ְ��������� ����
      ,[up].SM as u_JZGJBSJ_JZGLBM_SM--��ְ��������� ˵��
      ,u.GWLBM as u_JZGJBSJ_GWLBM--��ְ��������������� ��λ�����
      ,[uq].MC as u_JZGJBSJ_GWLBM_MC--��λ������� ����
      ,u.SFJZJS as u_JZGJBSJ_SFJZJS--��ְ��������������� �Ƿ��ְ��ʦ
      ,[ur].MC as u_JZGJBSJ_SFJZJS_MC--�Ƿ��־����� ����
      ,u.SFSSXJS as u_JZGJBSJ_SFSSXJS--��ְ��������������� �Ƿ�˫ʦ�ͽ�ʦ
      ,[us].MC as u_JZGJBSJ_SFSSXJS_MC--�Ƿ��־����� ����
      ,u.ZP as u_JZGJBSJ_ZP--��ְ��������������� ��Ƭ(·��)
      ,u.DQZTM as u_JZGJBSJ_DQZTM--��ְ��������������� ��ǰ״̬��
      ,[ut].MC as u_JZGJBSJ_DQZTM_MC--��ְ����ǰ״̬����� ����
      ,u.YDDH as u_JZGJBSJ_YDDH--��ְ��������������� �ƶ��绰
      ,u.GDDH as u_JZGJBSJ_GDDH--��ְ��������������� �̶��绰
      ,u.TXDZYZBM as u_JZGJBSJ_TXDZYZBM--��ְ��������������� ͨ�ŵ�ַ��������
      ,u.TXDZ as u_JZGJBSJ_TXDZ--��ְ��������������� ͨ�ŵ�ַ
      ,u.DZXX as u_JZGJBSJ_DZXX--��ְ��������������� ��������
      ,u.WLDZ as u_JZGJBSJ_WLDZ--��ְ��������������� �����ַ
      ,u.JSTXH as u_JZGJBSJ_JSTXH--��ְ��������������� ��ʱͨѶ��
      ,v.SCHOOLID as v_JZGJBSJ_SCHOOLID--��ְ��������������� ѧУ��
      ,v.GH as v_JZGJBSJ_GH--��ְ��������������� ����
      ,v.XM as v_JZGJBSJ_XM--��ְ��������������� ����
      ,v.YWXM as v_JZGJBSJ_YWXM--��ְ��������������� Ӣ������
      ,v.XMPY as v_JZGJBSJ_XMPY--��ְ��������������� ����ƴ��
      ,v.CYM as v_JZGJBSJ_CYM--��ְ��������������� ������
      ,v.SFZJLXM as v_JZGJBSJ_SFZJLXM--��ְ��������������� ���֤��������
      ,[vb].MC as v_JZGJBSJ_SFZJLXM_MC--���֤�����ʹ���� ����
      ,v.SFZJH as v_JZGJBSJ_SFZJH--��ְ��������������� ���֤����
      ,v.CSRQ as v_JZGJBSJ_CSRQ--��ְ��������������� ��������
      ,v.XBM as v_JZGJBSJ_XBM--��ְ��������������� �Ա���
      ,[vc].MC as v_JZGJBSJ_XBM_MC--�˵��Ա���� ����
      ,v.MZM as v_JZGJBSJ_MZM--��ְ��������������� ������
      ,[vd].MZMC as v_JZGJBSJ_MZM_MZMC--�й����������Ƶ�������ĸƴд���ʹ��� ��������
      ,[vd].ZMDM as v_JZGJBSJ_MZM_ZMDM--�й����������Ƶ�������ĸƴд���ʹ��� ��ĸ����
      ,v.XXM as v_JZGJBSJ_XXM--��ְ��������������� Ѫ����
      ,[ve].MC as v_JZGJBSJ_XXM_MC--Ѫ�ʹ���� ����
      ,[ve].JC as v_JZGJBSJ_XXM_JC--Ѫ�ʹ���� ���
      ,v.JKZKM as v_JZGJBSJ_JKZKM--��ְ��������������� ����״����
      ,[vf].MC as v_JZGJBSJ_JKZKM_MC--����״��1λ���ִ��� ����
      ,[vf].SM as v_JZGJBSJ_JKZKM_SM--����״��1λ���ִ��� ˵��
      ,v.HYZTM as v_JZGJBSJ_HYZTM--��ְ��������������� ����״̬��
      ,[vg].MC as v_JZGJBSJ_HYZTM_MC--����״������ ����
      ,v.ZZMMM as v_JZGJBSJ_ZZMMM--��ְ��������������� ������ò��
      ,[vh].MC as v_JZGJBSJ_ZZMMM_MC--������ò���� ����
      ,[vh].JC as v_JZGJBSJ_ZZMMM_JC--������ò���� ���
      ,v.GATQWM as v_JZGJBSJ_GATQWM--��ְ��������������� �۰�̨������
      ,[vi].MC as v_JZGJBSJ_GATQWM_MC--�۰�̨�������� ����
      ,[vi].SM as v_JZGJBSJ_GATQWM_SM--�۰�̨�������� ˵��
      ,v.JG as v_JZGJBSJ_JG--��ְ��������������� ����
      ,v.GJDQM as v_JZGJBSJ_GJDQM--��ְ��������������� ����/������
      ,[vj].GJDQMCJC as v_JZGJBSJ_GJDQM_GJDQMCJC--��������͵������ƴ��� ����/�������Ƽ��
      ,[vj].EZMDM as v_JZGJBSJ_GJDQM_EZMDM--��������͵������ƴ��� ����ĸ����
      ,[vj].SZMDM as v_JZGJBSJ_GJDQM_SZMDM--��������͵������ƴ��� ����ĸ����
      ,v.CSDXZQHM as v_JZGJBSJ_CSDXZQHM--��ְ��������������� ����������������
      ,[vk].MC as v_JZGJBSJ_CSDXZQHM_MC--�л����񹲺͹������������� ����
      ,v.XYZJM as v_JZGJBSJ_XYZJM--��ְ��������������� �����ڽ���
      ,[vl].MC as v_JZGJBSJ_XYZJM_MC--�ڽ��������� ����
      ,v.JZGHKSZDXZQHM as v_JZGJBSJ_JZGHKSZDXZQHM--��ְ��������������� ��ְ���������ڵ�����������
      ,[vm].MC as v_JZGJBSJ_JZGHKSZDXZQHM_MC--�л����񹲺͹������������� ����
      ,v.HKLBM as v_JZGJBSJ_HKLBM--��ְ��������������� ���������
      ,[vn].MC as v_JZGJBSJ_HKLBM_MC--���������� ����
      ,v.DQZZ as v_JZGJBSJ_DQZZ--��ְ��������������� ��ǰסַ
      ,v.DQZZYZBM as v_JZGJBSJ_DQZZYZBM--��ְ��������������� ��ǰסַ��������
      ,v.CJGZNY as v_JZGJBSJ_CJGZNY--��ְ��������������� �μӹ�������
      ,v.CJNY as v_JZGJBSJ_CJNY--��ְ��������������� �ӽ�����
      ,v.LXNY as v_JZGJBSJ_LXNY--��ְ��������������� ��У����
      ,v.BZLBM as v_JZGJBSJ_BZLBM--��ְ��������������� ���������
      ,[vo].MC as v_JZGJBSJ_BZLBM_MC--����������� ����
      ,v.JZGLBM as v_JZGJBSJ_JZGLBM--��ְ��������������� ��ְ�������
      ,[vp].MC as v_JZGJBSJ_JZGLBM_MC--��ְ��������� ����
      ,[vp].SM as v_JZGJBSJ_JZGLBM_SM--��ְ��������� ˵��
      ,v.GWLBM as v_JZGJBSJ_GWLBM--��ְ��������������� ��λ�����
      ,[vq].MC as v_JZGJBSJ_GWLBM_MC--��λ������� ����
      ,v.SFJZJS as v_JZGJBSJ_SFJZJS--��ְ��������������� �Ƿ��ְ��ʦ
      ,[vr].MC as v_JZGJBSJ_SFJZJS_MC--�Ƿ��־����� ����
      ,v.SFSSXJS as v_JZGJBSJ_SFSSXJS--��ְ��������������� �Ƿ�˫ʦ�ͽ�ʦ
      ,[vs].MC as v_JZGJBSJ_SFSSXJS_MC--�Ƿ��־����� ����
      ,v.ZP as v_JZGJBSJ_ZP--��ְ��������������� ��Ƭ(·��)
      ,v.DQZTM as v_JZGJBSJ_DQZTM--��ְ��������������� ��ǰ״̬��
      ,[vt].MC as v_JZGJBSJ_DQZTM_MC--��ְ����ǰ״̬����� ����
      ,v.YDDH as v_JZGJBSJ_YDDH--��ְ��������������� �ƶ��绰
      ,v.GDDH as v_JZGJBSJ_GDDH--��ְ��������������� �̶��绰
      ,v.TXDZYZBM as v_JZGJBSJ_TXDZYZBM--��ְ��������������� ͨ�ŵ�ַ��������
      ,v.TXDZ as v_JZGJBSJ_TXDZ--��ְ��������������� ͨ�ŵ�ַ
      ,v.DZXX as v_JZGJBSJ_DZXX--��ְ��������������� ��������
      ,v.WLDZ as v_JZGJBSJ_WLDZ--��ְ��������������� �����ַ
      ,v.JSTXH as v_JZGJBSJ_JSTXH--��ְ��������������� ��ʱͨѶ��

FROM dbo.EDU_ZZJG_16_A02_YPJSSJ AS a LEFT OUTER JOIN
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
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS u ON a.TJJSID = u.ID /*��ӽ�ʦID*/ AND a.SCHOOLID = u.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS v ON a.SHJSID = v.ID /*��˽�ʦID*/ AND a.SCHOOLID = v.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS [ub] ON u.SFZJLXM = [ub].DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS [uc] ON u.XBM = [uc].DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS [ud] ON u.MZM = [ud].DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS [ue] ON u.XXM = [ue].DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS [uf] ON u.JKZKM = [uf].DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS [ug] ON u.HYZTM = [ug].DM /*����״̬��*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS [uh] ON u.ZZMMM = [uh].DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS [ui] ON u.GATQWM = [ui].DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS [uj] ON u.GJDQM = [uj].DM /*����/������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [uk] ON u.CSDXZQHM = [uk].DM /*����������������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS [ul] ON u.XYZJM = [ul].DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [um] ON u.JZGHKSZDXZQHM = [um].DM /*��ְ���������ڵ�����������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS [un] ON u.HKLBM = [un].DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_BZLB AS [uo] ON u.BZLBM = [uo].DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGLB AS [up] ON u.JZGLBM = [up].DM /*��ְ�������*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWLB AS [uq] ON u.GWLBM = [uq].DM /*��λ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [ur] ON u.SFJZJS = [ur].DM /*�Ƿ��ְ��ʦ*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [us] ON u.SFSSXJS = [us].DM /*�Ƿ�˫ʦ�ͽ�ʦ*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGDQZT AS [ut] ON u.DQZTM = [ut].DM /*��ǰ״̬��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS [vb] ON v.SFZJLXM = [vb].DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS [vc] ON v.XBM = [vc].DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS [vd] ON v.MZM = [vd].DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS [ve] ON v.XXM = [ve].DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS [vf] ON v.JKZKM = [vf].DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS [vg] ON v.HYZTM = [vg].DM /*����״̬��*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS [vh] ON v.ZZMMM = [vh].DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS [vi] ON v.GATQWM = [vi].DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS [vj] ON v.GJDQM = [vj].DM /*����/������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [vk] ON v.CSDXZQHM = [vk].DM /*����������������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS [vl] ON v.XYZJM = [vl].DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [vm] ON v.JZGHKSZDXZQHM = [vm].DM /*��ְ���������ڵ�����������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS [vn] ON v.HKLBM = [vn].DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_BZLB AS [vo] ON v.BZLBM = [vo].DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGLB AS [vp] ON v.JZGLBM = [vp].DM /*��ְ�������*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWLB AS [vq] ON v.GWLBM = [vq].DM /*��λ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [vr] ON v.SFJZJS = [vr].DM /*�Ƿ��ְ��ʦ*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [vs] ON v.SFSSXJS = [vs].DM /*�Ƿ�˫ʦ�ͽ�ʦ*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGDQZT AS [vt] ON v.DQZTM = [vt].DM /*��ǰ״̬��*/
GO
