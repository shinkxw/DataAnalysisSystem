
--ӦƸ��ʦ���ݱ�
CREATE VIEW [dbo].[VIEW_EDU_ZZJG_16_A02_YPJSSJ_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ��
      ,a.[YPGWID]--ӦƸ��λID
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
      ,c.SCHOOLID as c_ZPGWSJ_SCHOOLID--��Ƹ��λ���ݱ� ѧУ��
      ,c.ZPGWMC as c_ZPGWSJ_ZPGWMC--��Ƹ��λ���ݱ� ��Ƹ��λ����
      ,c.ZWMC as c_ZPGWSJ_ZWMC--��Ƹ��λ���ݱ� ְ������
      ,c.ZPRS as c_ZPGWSJ_ZPRS--��Ƹ��λ���ݱ� ��Ƹ����
      ,c.GWQSNY as c_ZPGWSJ_GWQSNY--��Ƹ��λ���ݱ� ��λ��ʼ����
      ,c.GWJSNY as c_ZPGWSJ_GWJSNY--��Ƹ��λ���ݱ� ��λ��������
      ,c.SFKQ as c_ZPGWSJ_SFKQ--��Ƹ��λ���ݱ� �Ƿ���
      ,[cb].MC as c_ZPGWSJ_SFKQ_MC--�Ƿ��־����� ����
      ,d.MC as d_SFZJLX_MC--���֤�����ʹ���� ����
      ,e.MC as e_RDXB_MC--�˵��Ա���� ����
      ,f.MZMC as f_ZGGMZMCDLMZMPXF_MZMC--�й����������Ƶ�������ĸƴд���ʹ��� ��������
      ,f.ZMDM as f_ZGGMZMCDLMZMPXF_ZMDM--�й����������Ƶ�������ĸƴд���ʹ��� ��ĸ����
      ,g.MC as g_XX_MC--Ѫ�ʹ���� ����
      ,g.JC as g_XX_JC--Ѫ�ʹ���� ���
      ,h.MC as h_JKZKYWSZ_MC--����״��1λ���ִ��� ����
      ,h.SM as h_JKZKYWSZ_SM--����״��1λ���ִ��� ˵��
      ,i.MC as i_HYZZ_MC--����״������ ����
      ,j.MC as j_ZZMM_MC--������ò���� ����
      ,j.JC as j_ZZMM_JC--������ò���� ���
      ,k.MC as k_GATQW_MC--�۰�̨�������� ����
      ,k.SM as k_GATQW_SM--�۰�̨�������� ˵��
      ,l.GJDQMCJC as l_SJGGHDQMC_GJDQMCJC--��������͵������ƴ��� ����/�������Ƽ��
      ,l.EZMDM as l_SJGGHDQMC_EZMDM--��������͵������ƴ��� ����ĸ����
      ,l.SZMDM as l_SJGGHDQMC_SZMDM--��������͵������ƴ��� ����ĸ����
      ,m.MC as m_ZHRMGHGXZQH_MC--�л����񹲺͹������������� ����
      ,n.MC as n_ZJXY_MC--�ڽ��������� ����
      ,o.MC as o_ZHRMGHGXZQH_MC--�л����񹲺͹������������� ����
      ,p.MC as p_HKLB_MC--���������� ����
      ,q.MC as q_BZLB_MC--����������� ����
      ,r.MC as r_JZGLB_MC--��ְ��������� ����
      ,r.SM as r_JZGLB_SM--��ְ��������� ˵��
      ,s.MC as s_GWLB_MC--��λ������� ����
      ,t.MC as t_SFBZ_MC--�Ƿ��־����� ����
      ,u.MC as u_SFBZ_MC--�Ƿ��־����� ����
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
      ,v.JSKQJS as v_JZGJBSJ_JSKQJS--��ְ��������������� ��ʦ���ڽ�ɫ
      ,v.FullTeacherName as v_JZGJBSJ_FullTeacherName--��ְ��������������� ������ʦ����
      ,v.RecordID as v_JZGJBSJ_RecordID--��ְ��������������� ��¼ID
      ,v.TeacherGroupId as v_JZGJBSJ_TeacherGroupId--��ְ��������������� ��TeacherGroup�����
      ,w.SCHOOLID as w_JZGJBSJ_SCHOOLID--��ְ��������������� ѧУ��
      ,w.GH as w_JZGJBSJ_GH--��ְ��������������� ����
      ,w.XM as w_JZGJBSJ_XM--��ְ��������������� ����
      ,w.YWXM as w_JZGJBSJ_YWXM--��ְ��������������� Ӣ������
      ,w.XMPY as w_JZGJBSJ_XMPY--��ְ��������������� ����ƴ��
      ,w.CYM as w_JZGJBSJ_CYM--��ְ��������������� ������
      ,w.SFZJLXM as w_JZGJBSJ_SFZJLXM--��ְ��������������� ���֤��������
      ,[wb].MC as w_JZGJBSJ_SFZJLXM_MC--���֤�����ʹ���� ����
      ,w.SFZJH as w_JZGJBSJ_SFZJH--��ְ��������������� ���֤����
      ,w.CSRQ as w_JZGJBSJ_CSRQ--��ְ��������������� ��������
      ,w.XBM as w_JZGJBSJ_XBM--��ְ��������������� �Ա���
      ,[wc].MC as w_JZGJBSJ_XBM_MC--�˵��Ա���� ����
      ,w.MZM as w_JZGJBSJ_MZM--��ְ��������������� ������
      ,[wd].MZMC as w_JZGJBSJ_MZM_MZMC--�й����������Ƶ�������ĸƴд���ʹ��� ��������
      ,[wd].ZMDM as w_JZGJBSJ_MZM_ZMDM--�й����������Ƶ�������ĸƴд���ʹ��� ��ĸ����
      ,w.XXM as w_JZGJBSJ_XXM--��ְ��������������� Ѫ����
      ,[we].MC as w_JZGJBSJ_XXM_MC--Ѫ�ʹ���� ����
      ,[we].JC as w_JZGJBSJ_XXM_JC--Ѫ�ʹ���� ���
      ,w.JKZKM as w_JZGJBSJ_JKZKM--��ְ��������������� ����״����
      ,[wf].MC as w_JZGJBSJ_JKZKM_MC--����״��1λ���ִ��� ����
      ,[wf].SM as w_JZGJBSJ_JKZKM_SM--����״��1λ���ִ��� ˵��
      ,w.HYZTM as w_JZGJBSJ_HYZTM--��ְ��������������� ����״̬��
      ,[wg].MC as w_JZGJBSJ_HYZTM_MC--����״������ ����
      ,w.ZZMMM as w_JZGJBSJ_ZZMMM--��ְ��������������� ������ò��
      ,[wh].MC as w_JZGJBSJ_ZZMMM_MC--������ò���� ����
      ,[wh].JC as w_JZGJBSJ_ZZMMM_JC--������ò���� ���
      ,w.GATQWM as w_JZGJBSJ_GATQWM--��ְ��������������� �۰�̨������
      ,[wi].MC as w_JZGJBSJ_GATQWM_MC--�۰�̨�������� ����
      ,[wi].SM as w_JZGJBSJ_GATQWM_SM--�۰�̨�������� ˵��
      ,w.JG as w_JZGJBSJ_JG--��ְ��������������� ����
      ,w.GJDQM as w_JZGJBSJ_GJDQM--��ְ��������������� ����/������
      ,[wj].GJDQMCJC as w_JZGJBSJ_GJDQM_GJDQMCJC--��������͵������ƴ��� ����/�������Ƽ��
      ,[wj].EZMDM as w_JZGJBSJ_GJDQM_EZMDM--��������͵������ƴ��� ����ĸ����
      ,[wj].SZMDM as w_JZGJBSJ_GJDQM_SZMDM--��������͵������ƴ��� ����ĸ����
      ,w.CSDXZQHM as w_JZGJBSJ_CSDXZQHM--��ְ��������������� ����������������
      ,[wk].MC as w_JZGJBSJ_CSDXZQHM_MC--�л����񹲺͹������������� ����
      ,w.XYZJM as w_JZGJBSJ_XYZJM--��ְ��������������� �����ڽ���
      ,[wl].MC as w_JZGJBSJ_XYZJM_MC--�ڽ��������� ����
      ,w.JZGHKSZDXZQHM as w_JZGJBSJ_JZGHKSZDXZQHM--��ְ��������������� ��ְ���������ڵ�����������
      ,[wm].MC as w_JZGJBSJ_JZGHKSZDXZQHM_MC--�л����񹲺͹������������� ����
      ,w.HKLBM as w_JZGJBSJ_HKLBM--��ְ��������������� ���������
      ,[wn].MC as w_JZGJBSJ_HKLBM_MC--���������� ����
      ,w.DQZZ as w_JZGJBSJ_DQZZ--��ְ��������������� ��ǰסַ
      ,w.DQZZYZBM as w_JZGJBSJ_DQZZYZBM--��ְ��������������� ��ǰסַ��������
      ,w.CJGZNY as w_JZGJBSJ_CJGZNY--��ְ��������������� �μӹ�������
      ,w.CJNY as w_JZGJBSJ_CJNY--��ְ��������������� �ӽ�����
      ,w.LXNY as w_JZGJBSJ_LXNY--��ְ��������������� ��У����
      ,w.BZLBM as w_JZGJBSJ_BZLBM--��ְ��������������� ���������
      ,[wo].MC as w_JZGJBSJ_BZLBM_MC--����������� ����
      ,w.JZGLBM as w_JZGJBSJ_JZGLBM--��ְ��������������� ��ְ�������
      ,[wp].MC as w_JZGJBSJ_JZGLBM_MC--��ְ��������� ����
      ,[wp].SM as w_JZGJBSJ_JZGLBM_SM--��ְ��������� ˵��
      ,w.GWLBM as w_JZGJBSJ_GWLBM--��ְ��������������� ��λ�����
      ,[wq].MC as w_JZGJBSJ_GWLBM_MC--��λ������� ����
      ,w.SFJZJS as w_JZGJBSJ_SFJZJS--��ְ��������������� �Ƿ��ְ��ʦ
      ,[wr].MC as w_JZGJBSJ_SFJZJS_MC--�Ƿ��־����� ����
      ,w.SFSSXJS as w_JZGJBSJ_SFSSXJS--��ְ��������������� �Ƿ�˫ʦ�ͽ�ʦ
      ,[ws].MC as w_JZGJBSJ_SFSSXJS_MC--�Ƿ��־����� ����
      ,w.ZP as w_JZGJBSJ_ZP--��ְ��������������� ��Ƭ(·��)
      ,w.DQZTM as w_JZGJBSJ_DQZTM--��ְ��������������� ��ǰ״̬��
      ,[wt].MC as w_JZGJBSJ_DQZTM_MC--��ְ����ǰ״̬����� ����
      ,w.YDDH as w_JZGJBSJ_YDDH--��ְ��������������� �ƶ��绰
      ,w.GDDH as w_JZGJBSJ_GDDH--��ְ��������������� �̶��绰
      ,w.TXDZYZBM as w_JZGJBSJ_TXDZYZBM--��ְ��������������� ͨ�ŵ�ַ��������
      ,w.TXDZ as w_JZGJBSJ_TXDZ--��ְ��������������� ͨ�ŵ�ַ
      ,w.DZXX as w_JZGJBSJ_DZXX--��ְ��������������� ��������
      ,w.WLDZ as w_JZGJBSJ_WLDZ--��ְ��������������� �����ַ
      ,w.JSTXH as w_JZGJBSJ_JSTXH--��ְ��������������� ��ʱͨѶ��
      ,w.JSKQJS as w_JZGJBSJ_JSKQJS--��ְ��������������� ��ʦ���ڽ�ɫ
      ,w.FullTeacherName as w_JZGJBSJ_FullTeacherName--��ְ��������������� ������ʦ����
      ,w.RecordID as w_JZGJBSJ_RecordID--��ְ��������������� ��¼ID
      ,w.TeacherGroupId as w_JZGJBSJ_TeacherGroupId--��ְ��������������� ��TeacherGroup�����

FROM dbo.EDU_ZZJG_16_A02_YPJSSJ AS a LEFT OUTER JOIN
      dbo.EDU_ZZJG_16_A01_ZPGWSJ AS c ON a.YPGWID = c.ID /*ӦƸ��λID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS d ON a.SFZJLXM = d.DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS e ON a.XBM = e.DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS f ON a.MZM = f.DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS g ON a.XXM = g.DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS h ON a.JKZKM = h.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS i ON a.HYZTM = i.DM /*����״̬��*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS j ON a.ZZMMM = j.DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS k ON a.GATQWM = k.DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS l ON a.GJDQM = l.DM /*����/������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS m ON a.CSDXZQHM = m.DM /*����������������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS n ON a.XYZJM = n.DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS o ON a.JZGHKSZDXZQHM = o.DM /*��ְ���������ڵ�����������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS p ON a.HKLBM = p.DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_BZLB AS q ON a.BZLBM = q.DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGLB AS r ON a.JZGLBM = r.DM /*��ְ�������*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWLB AS s ON a.GWLBM = s.DM /*��λ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS t ON a.SFJZJS = t.DM /*�Ƿ��ְ��ʦ*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS u ON a.SFSSXJS = u.DM /*�Ƿ�˫ʦ�ͽ�ʦ*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS v ON a.TJJSID = v.ID /*��ӽ�ʦID*/ AND a.SCHOOLID = v.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS w ON a.SHJSID = w.ID /*��˽�ʦID*/ AND a.SCHOOLID = w.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [cb] ON c.SFKQ = [cb].DM /*�Ƿ���*/ LEFT OUTER JOIN
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
      dbo.EDU_JY_JZGDQZT AS [vt] ON v.DQZTM = [vt].DM /*��ǰ״̬��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS [wb] ON w.SFZJLXM = [wb].DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS [wc] ON w.XBM = [wc].DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS [wd] ON w.MZM = [wd].DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS [we] ON w.XXM = [we].DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS [wf] ON w.JKZKM = [wf].DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS [wg] ON w.HYZTM = [wg].DM /*����״̬��*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS [wh] ON w.ZZMMM = [wh].DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS [wi] ON w.GATQWM = [wi].DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS [wj] ON w.GJDQM = [wj].DM /*����/������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [wk] ON w.CSDXZQHM = [wk].DM /*����������������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS [wl] ON w.XYZJM = [wl].DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [wm] ON w.JZGHKSZDXZQHM = [wm].DM /*��ְ���������ڵ�����������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS [wn] ON w.HKLBM = [wn].DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_BZLB AS [wo] ON w.BZLBM = [wo].DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGLB AS [wp] ON w.JZGLBM = [wp].DM /*��ְ�������*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWLB AS [wq] ON w.GWLBM = [wq].DM /*��λ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [wr] ON w.SFJZJS = [wr].DM /*�Ƿ��ְ��ʦ*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [ws] ON w.SFSSXJS = [ws].DM /*�Ƿ�˫ʦ�ͽ�ʦ*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGDQZT AS [wt] ON w.DQZTM = [wt].DM /*��ǰ״̬��*/
GO
