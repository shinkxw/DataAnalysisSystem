
--ѧ���ɼ��������
CREATE VIEW [dbo].[VIEW_EDU_ZZXS_06_01_XSCJ_DISP]
AS
SELECT a.[XSXXID]--ѧ��ID
      ,a.[SCHOOLID]--ѧУID
      ,a.[KCH]--�γ̺�
      ,a.[XQID]--ѧ��ID
      ,a.[KCMC]--�γ�����
      ,a.[XF]--ѧ��
      ,a.[XQMC]--ѧ������
      ,a.[PSCJ]--ƽʱ�ɼ�
      ,a.[CJ]--�ɼ�
      ,a.[KSXZ]--��������
      ,a.[RKJGID]--�ον̹�ID
      ,a.[RKJGH]--�ον̹���
      ,a.[CJLRJGID]--�ɼ�¼��̹�ID
      ,a.[CJLRJGH]--�ɼ�¼��̹���
      ,a.[CJLRRQ]--�ɼ�¼������
      ,a.[QZCJ]--���гɼ�
      ,a.[QMCJ]--��ĩ�ɼ�
      ,b.SCHOOLID as b_XSXX_SCHOOLID--ѧУ��
      ,b.XH as b_XSXX_XH--ѧ��
      ,b.XM as b_XSXX_XM--����
      ,b.YWXM as b_XSXX_YWXM--Ӣ������
      ,b.XMPY as b_XSXX_XMPY--����ƴ��
      ,b.CYM as b_XSXX_CYM--������
      ,b.SFZJLXM as b_XSXX_SFZJLXM--���֤��������
      ,bb.MC as b_XSXX_SFZJLXM_MC--����
      ,b.SFZJH as b_XSXX_SFZJH--���֤����
      ,b.XBM as b_XSXX_XBM--�Ա���
      ,bc.MC as b_XSXX_XBM_MC--����
      ,b.XXM as b_XSXX_XXM--Ѫ����
      ,bd.MC as b_XSXX_XXM_MC--����
      ,bd.JC as b_XSXX_XXM_JC--���
      ,b.CSRQ as b_XSXX_CSRQ--��������
      ,b.CSDM as b_XSXX_CSDM--��������
      ,be.MC as b_XSXX_CSDM_MC--����
      ,b.JG as b_XSXX_JG--����
      ,b.MZM as b_XSXX_MZM--������
      ,bf.MZMC as b_XSXX_MZM_MZMC--��������
      ,bf.ZMDM as b_XSXX_MZM_ZMDM--��ĸ����
      ,b.HYZKM as b_XSXX_HYZKM--����״����
      ,bg.MC as b_XSXX_HYZKM_MC--����
      ,b.XYZJM as b_XSXX_XYZJM--�����ڽ���
      ,bh.MC as b_XSXX_XYZJM_MC--����
      ,b.GATQWM as b_XSXX_GATQWM--�۰�̨������
      ,bi.MC as b_XSXX_GATQWM_MC--����
      ,bi.SM as b_XSXX_GATQWM_SM--˵��
      ,b.JKZKM as b_XSXX_JKZKM--����״����
      ,bj.MC as b_XSXX_JKZKM_MC--����
      ,bj.SM as b_XSXX_JKZKM_SM--˵��
      ,b.ZZMMM as b_XSXX_ZZMMM--������ò��
      ,bk.MC as b_XSXX_ZZMMM_MC--����
      ,bk.JC as b_XSXX_ZZMMM_JC--���
      ,b.HKSZDXZQHM as b_XSXX_HKSZDXZQHM--�������ڵ�����������
      ,bl.MC as b_XSXX_HKSZDXZQHM_MC--����
      ,b.HKLBM as b_XSXX_HKLBM--���������
      ,bm.MC as b_XSXX_HKLBM_MC--����
      ,b.SFSLDRK as b_XSXX_SFSLDRK--�Ƿ��������˿�
      ,bn.MC as b_XSXX_SFSLDRK_MC--����
      ,b.GJDQM as b_XSXX_GJDQM--����/����
      ,bo.GJDQMCJC as b_XSXX_GJDQM_GJDQMCJC--����/�������Ƽ��
      ,bo.EZMDM as b_XSXX_GJDQM_EZMDM--����ĸ����
      ,bo.SZMDM as b_XSXX_GJDQM_SZMDM--����ĸ����
      ,b.TC as b_XSXX_TC--�س�
      ,b.XSLXDH as b_XSXX_XSLXDH--ѧ����ϵ�绰
      ,b.WLDZ as b_XSXX_WLDZ--�����ַ
      ,b.JSTXH as b_XSXX_JSTXH--��ʱͨѶ��
      ,b.DZXX as b_XSXX_DZXX--��������
      ,b.ZP as b_XSXX_ZP--��Ƭ(·��)
      ,c.SCHOOLNAME as c_SCHOOL_SCHOOLNAME--ѧУ����
      ,c.SCHOOLTYPE as c_SCHOOL_SCHOOLTYPE--ѧУ����
      ,c.XNID as c_SCHOOL_XNID--ѧ��ID
      ,c.XQID as c_SCHOOL_XQID--ѧ��ID
      ,c.MatchURL as c_SCHOOL_MatchURL--ƥ��url
      ,c.LogLevel as c_SCHOOL_LogLevel--��־����
      ,d.SCHOOLID as d_KC_SCHOOLID--ѧУID
      ,d.KCMC as d_KC_KCMC--�γ�����
      ,d.KCYWM as d_KC_KCYWM--�γ�Ӣ����
      ,d.KCBM as d_KC_KCBM--�γ̱���
      ,d.KCJS as d_KC_KCJS--�γ̽���
      ,d.XF as d_KC_XF--ѧ��
      ,d.ZXS as d_KC_ZXS--��ѧʱ
      ,d.LLXS as d_KC_LLXS--����ѧʱ
      ,d.SJXS as d_KC_SJXS--ʵ��ѧʱ
      ,d.QTXS as d_KC_QTXS--����ѧʱ
      ,d.CKSM as d_KC_CKSM--�ο���Ŀ
      ,d.KKDW as d_KC_KKDW--���ε�λ
      ,d.KSXS as d_KC_KSXS--������ʽ
      ,db.MC as d_KC_KSXS_MC--����
      ,d.SKFSM as d_KC_SKFSM--�ڿη�ʽ��
      ,dc.MC as d_KC_SKFSM_MC--����
      ,d.KCFY as d_KC_KCFY--�γ̷���
      ,e.SCHOOLID as e_XQ_SCHOOLID--ѧУ��
      ,e.XNID as e_XQ_XNID--ѧ��
      ,e.XQM as e_XQ_XQM--ѧ����
      ,eb.MC as e_XQ_XQM_MC--����
      ,e.XQMC as e_XQ_XQMC--ѧ������
      ,e.XQKSRQ as e_XQ_XQKSRQ--ѧ�ڿ�ʼ����
      ,e.XQJSRQ as e_XQ_XQJSRQ--ѧ�ڽ�������
      ,f.MC as f_KSXZ_MC--����
      ,f.SM as f_KSXZ_SM--˵��
      ,g.SCHOOLID as g_JZGJBSJ_SCHOOLID--ѧУ��
      ,g.GH as g_JZGJBSJ_GH--����
      ,g.XM as g_JZGJBSJ_XM--����
      ,g.YWXM as g_JZGJBSJ_YWXM--Ӣ������
      ,g.XMPY as g_JZGJBSJ_XMPY--����ƴ��
      ,g.CYM as g_JZGJBSJ_CYM--������
      ,g.SFZJLXM as g_JZGJBSJ_SFZJLXM--���֤��������
      ,gb.MC as g_JZGJBSJ_SFZJLXM_MC--����
      ,g.SFZJH as g_JZGJBSJ_SFZJH--���֤����
      ,g.CSRQ as g_JZGJBSJ_CSRQ--��������
      ,g.XBM as g_JZGJBSJ_XBM--�Ա���
      ,gc.MC as g_JZGJBSJ_XBM_MC--����
      ,g.MZM as g_JZGJBSJ_MZM--������
      ,gd.MZMC as g_JZGJBSJ_MZM_MZMC--��������
      ,gd.ZMDM as g_JZGJBSJ_MZM_ZMDM--��ĸ����
      ,g.XXM as g_JZGJBSJ_XXM--Ѫ����
      ,ge.MC as g_JZGJBSJ_XXM_MC--����
      ,ge.JC as g_JZGJBSJ_XXM_JC--���
      ,g.JKZKM as g_JZGJBSJ_JKZKM--����״����
      ,gf.MC as g_JZGJBSJ_JKZKM_MC--����
      ,gf.SM as g_JZGJBSJ_JKZKM_SM--˵��
      ,g.HYZTM as g_JZGJBSJ_HYZTM--����״̬��
      ,gg.MC as g_JZGJBSJ_HYZTM_MC--����
      ,g.ZZMMM as g_JZGJBSJ_ZZMMM--������ò��
      ,gh.MC as g_JZGJBSJ_ZZMMM_MC--����
      ,gh.JC as g_JZGJBSJ_ZZMMM_JC--���
      ,g.GATQWM as g_JZGJBSJ_GATQWM--�۰�̨������
      ,gi.MC as g_JZGJBSJ_GATQWM_MC--����
      ,gi.SM as g_JZGJBSJ_GATQWM_SM--˵��
      ,g.JG as g_JZGJBSJ_JG--����
      ,g.GJDQM as g_JZGJBSJ_GJDQM--����/������
      ,gj.GJDQMCJC as g_JZGJBSJ_GJDQM_GJDQMCJC--����/�������Ƽ��
      ,gj.EZMDM as g_JZGJBSJ_GJDQM_EZMDM--����ĸ����
      ,gj.SZMDM as g_JZGJBSJ_GJDQM_SZMDM--����ĸ����
      ,g.CSDXZQHM as g_JZGJBSJ_CSDXZQHM--����������������
      ,gk.MC as g_JZGJBSJ_CSDXZQHM_MC--����
      ,g.XYZJM as g_JZGJBSJ_XYZJM--�����ڽ���
      ,gl.MC as g_JZGJBSJ_XYZJM_MC--����
      ,g.JZGHKSZDXZQHM as g_JZGJBSJ_JZGHKSZDXZQHM--��ְ���������ڵ�����������
      ,gm.MC as g_JZGJBSJ_JZGHKSZDXZQHM_MC--����
      ,g.HKLBM as g_JZGJBSJ_HKLBM--���������
      ,gn.MC as g_JZGJBSJ_HKLBM_MC--����
      ,g.DQZZ as g_JZGJBSJ_DQZZ--��ǰסַ
      ,g.DQZZYZBM as g_JZGJBSJ_DQZZYZBM--��ǰסַ��������
      ,g.CJGZNY as g_JZGJBSJ_CJGZNY--�μӹ�������
      ,g.CJNY as g_JZGJBSJ_CJNY--�ӽ�����
      ,g.LXNY as g_JZGJBSJ_LXNY--��У����
      ,g.BZLBM as g_JZGJBSJ_BZLBM--���������
      ,go.MC as g_JZGJBSJ_BZLBM_MC--����
      ,g.JZGLBM as g_JZGJBSJ_JZGLBM--��ְ�������
      ,gp.MC as g_JZGJBSJ_JZGLBM_MC--����
      ,gp.SM as g_JZGJBSJ_JZGLBM_SM--˵��
      ,g.GWLBM as g_JZGJBSJ_GWLBM--��λ�����
      ,gq.MC as g_JZGJBSJ_GWLBM_MC--����
      ,g.SFJZJS as g_JZGJBSJ_SFJZJS--�Ƿ��ְ��ʦ
      ,gr.MC as g_JZGJBSJ_SFJZJS_MC--����
      ,g.SFSSXJS as g_JZGJBSJ_SFSSXJS--�Ƿ�˫ʦ�ͽ�
      ,gs.MC as g_JZGJBSJ_SFSSXJS_MC--����
      ,g.ZP as g_JZGJBSJ_ZP--��Ƭ(·��)
      ,g.DQZTM as g_JZGJBSJ_DQZTM--��ǰ״̬��
      ,gt.MC as g_JZGJBSJ_DQZTM_MC--����
      ,g.YDDH as g_JZGJBSJ_YDDH--�ƶ��绰
      ,g.GDDH as g_JZGJBSJ_GDDH--�̶��绰
      ,g.TXDZYZBM as g_JZGJBSJ_TXDZYZBM--ͨ�ŵ�ַ��������
      ,g.TXDZ as g_JZGJBSJ_TXDZ--ͨ�ŵ�ַ
      ,g.DZXX as g_JZGJBSJ_DZXX--��������
      ,g.WLDZ as g_JZGJBSJ_WLDZ--�����ַ
      ,g.JSTXH as g_JZGJBSJ_JSTXH--��ʱͨѶ��
      ,h.SCHOOLID as h_JZGJBSJ_SCHOOLID--ѧУ��
      ,h.GH as h_JZGJBSJ_GH--����
      ,h.XM as h_JZGJBSJ_XM--����
      ,h.YWXM as h_JZGJBSJ_YWXM--Ӣ������
      ,h.XMPY as h_JZGJBSJ_XMPY--����ƴ��
      ,h.CYM as h_JZGJBSJ_CYM--������
      ,h.SFZJLXM as h_JZGJBSJ_SFZJLXM--���֤��������
      ,hb.MC as h_JZGJBSJ_SFZJLXM_MC--����
      ,h.SFZJH as h_JZGJBSJ_SFZJH--���֤����
      ,h.CSRQ as h_JZGJBSJ_CSRQ--��������
      ,h.XBM as h_JZGJBSJ_XBM--�Ա���
      ,hc.MC as h_JZGJBSJ_XBM_MC--����
      ,h.MZM as h_JZGJBSJ_MZM--������
      ,hd.MZMC as h_JZGJBSJ_MZM_MZMC--��������
      ,hd.ZMDM as h_JZGJBSJ_MZM_ZMDM--��ĸ����
      ,h.XXM as h_JZGJBSJ_XXM--Ѫ����
      ,he.MC as h_JZGJBSJ_XXM_MC--����
      ,he.JC as h_JZGJBSJ_XXM_JC--���
      ,h.JKZKM as h_JZGJBSJ_JKZKM--����״����
      ,hf.MC as h_JZGJBSJ_JKZKM_MC--����
      ,hf.SM as h_JZGJBSJ_JKZKM_SM--˵��
      ,h.HYZTM as h_JZGJBSJ_HYZTM--����״̬��
      ,hg.MC as h_JZGJBSJ_HYZTM_MC--����
      ,h.ZZMMM as h_JZGJBSJ_ZZMMM--������ò��
      ,hh.MC as h_JZGJBSJ_ZZMMM_MC--����
      ,hh.JC as h_JZGJBSJ_ZZMMM_JC--���
      ,h.GATQWM as h_JZGJBSJ_GATQWM--�۰�̨������
      ,hi.MC as h_JZGJBSJ_GATQWM_MC--����
      ,hi.SM as h_JZGJBSJ_GATQWM_SM--˵��
      ,h.JG as h_JZGJBSJ_JG--����
      ,h.GJDQM as h_JZGJBSJ_GJDQM--����/������
      ,hj.GJDQMCJC as h_JZGJBSJ_GJDQM_GJDQMCJC--����/�������Ƽ��
      ,hj.EZMDM as h_JZGJBSJ_GJDQM_EZMDM--����ĸ����
      ,hj.SZMDM as h_JZGJBSJ_GJDQM_SZMDM--����ĸ����
      ,h.CSDXZQHM as h_JZGJBSJ_CSDXZQHM--����������������
      ,hk.MC as h_JZGJBSJ_CSDXZQHM_MC--����
      ,h.XYZJM as h_JZGJBSJ_XYZJM--�����ڽ���
      ,hl.MC as h_JZGJBSJ_XYZJM_MC--����
      ,h.JZGHKSZDXZQHM as h_JZGJBSJ_JZGHKSZDXZQHM--��ְ���������ڵ�����������
      ,hm.MC as h_JZGJBSJ_JZGHKSZDXZQHM_MC--����
      ,h.HKLBM as h_JZGJBSJ_HKLBM--���������
      ,hn.MC as h_JZGJBSJ_HKLBM_MC--����
      ,h.DQZZ as h_JZGJBSJ_DQZZ--��ǰסַ
      ,h.DQZZYZBM as h_JZGJBSJ_DQZZYZBM--��ǰסַ��������
      ,h.CJGZNY as h_JZGJBSJ_CJGZNY--�μӹ�������
      ,h.CJNY as h_JZGJBSJ_CJNY--�ӽ�����
      ,h.LXNY as h_JZGJBSJ_LXNY--��У����
      ,h.BZLBM as h_JZGJBSJ_BZLBM--���������
      ,ho.MC as h_JZGJBSJ_BZLBM_MC--����
      ,h.JZGLBM as h_JZGJBSJ_JZGLBM--��ְ�������
      ,hp.MC as h_JZGJBSJ_JZGLBM_MC--����
      ,hp.SM as h_JZGJBSJ_JZGLBM_SM--˵��
      ,h.GWLBM as h_JZGJBSJ_GWLBM--��λ�����
      ,hq.MC as h_JZGJBSJ_GWLBM_MC--����
      ,h.SFJZJS as h_JZGJBSJ_SFJZJS--�Ƿ��ְ��ʦ
      ,hr.MC as h_JZGJBSJ_SFJZJS_MC--����
      ,h.SFSSXJS as h_JZGJBSJ_SFSSXJS--�Ƿ�˫ʦ�ͽ�
      ,hs.MC as h_JZGJBSJ_SFSSXJS_MC--����
      ,h.ZP as h_JZGJBSJ_ZP--��Ƭ(·��)
      ,h.DQZTM as h_JZGJBSJ_DQZTM--��ǰ״̬��
      ,ht.MC as h_JZGJBSJ_DQZTM_MC--����
      ,h.YDDH as h_JZGJBSJ_YDDH--�ƶ��绰
      ,h.GDDH as h_JZGJBSJ_GDDH--�̶��绰
      ,h.TXDZYZBM as h_JZGJBSJ_TXDZYZBM--ͨ�ŵ�ַ��������
      ,h.TXDZ as h_JZGJBSJ_TXDZ--ͨ�ŵ�ַ
      ,h.DZXX as h_JZGJBSJ_DZXX--��������
      ,h.WLDZ as h_JZGJBSJ_WLDZ--�����ַ
      ,h.JSTXH as h_JZGJBSJ_JSTXH--��ʱͨѶ��

FROM dbo.EDU_ZZXS_06_01_XSCJ AS a LEFT OUTER JOIN
      dbo.EDU_ZZXS_01_01_XSXX AS b ON a.XSXXID = b.ID /*ѧ��ID*/ AND a.SCHOOLID = b.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS c ON a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_01_02_KC AS d ON a.KCH = d.KCH /*�γ̺�*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS e ON a.XQID = e.ID /*ѧ��ID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_JY_KSXZ AS f ON a.KSXZ = f.DM /*��������*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS g ON a.RKJGID = g.ID /*�ον̹�ID*/ AND a.SCHOOLID = g.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS h ON a.CJLRJGID = h.ID /*�ɼ�¼��̹�ID*/ AND a.SCHOOLID = h.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS bb ON b.SFZJLXM = bb.DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS bc ON b.XBM = bc.DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS bd ON b.XXM = bd.DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS be ON b.CSDM = be.DM /*��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS bf ON b.MZM = bf.DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS bg ON b.HYZKM = bg.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS bh ON b.XYZJM = bh.DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS bi ON b.GATQWM = bi.DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS bj ON b.JKZKM = bj.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS bk ON b.ZZMMM = bk.DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS bl ON b.HKSZDXZQHM = bl.DM /*�������ڵ�����������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS bm ON b.HKLBM = bm.DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS bn ON b.SFSLDRK = bn.DM /*�Ƿ��������˿�*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS bo ON b.GJDQM = bo.DM /*����/����*/ LEFT OUTER JOIN
      dbo.EDU_JY_KSXS AS db ON d.KSXS = db.DM /*������ʽ*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS dc ON d.SKFSM = dc.DM /*�ڿη�ʽ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS eb ON e.XQM = eb.DM /*ѧ����*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS gb ON g.SFZJLXM = gb.DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS gc ON g.XBM = gc.DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS gd ON g.MZM = gd.DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS ge ON g.XXM = ge.DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS gf ON g.JKZKM = gf.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS gg ON g.HYZTM = gg.DM /*����״̬��*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS gh ON g.ZZMMM = gh.DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS gi ON g.GATQWM = gi.DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS gj ON g.GJDQM = gj.DM /*����/������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS gk ON g.CSDXZQHM = gk.DM /*����������������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS gl ON g.XYZJM = gl.DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS gm ON g.JZGHKSZDXZQHM = gm.DM /*��ְ���������ڵ�����������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS gn ON g.HKLBM = gn.DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_BZLB AS go ON g.BZLBM = go.DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGLB AS gp ON g.JZGLBM = gp.DM /*��ְ�������*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWLB AS gq ON g.GWLBM = gq.DM /*��λ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS gr ON g.SFJZJS = gr.DM /*�Ƿ��ְ��ʦ*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS gs ON g.SFSSXJS = gs.DM /*�Ƿ�˫ʦ�ͽ�*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGDQZT AS gt ON g.DQZTM = gt.DM /*��ǰ״̬��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS hb ON h.SFZJLXM = hb.DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS hc ON h.XBM = hc.DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS hd ON h.MZM = hd.DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS he ON h.XXM = he.DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS hf ON h.JKZKM = hf.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS hg ON h.HYZTM = hg.DM /*����״̬��*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS hh ON h.ZZMMM = hh.DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS hi ON h.GATQWM = hi.DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS hj ON h.GJDQM = hj.DM /*����/������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS hk ON h.CSDXZQHM = hk.DM /*����������������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS hl ON h.XYZJM = hl.DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS hm ON h.JZGHKSZDXZQHM = hm.DM /*��ְ���������ڵ�����������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS hn ON h.HKLBM = hn.DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_BZLB AS ho ON h.BZLBM = ho.DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGLB AS hp ON h.JZGLBM = hp.DM /*��ְ�������*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWLB AS hq ON h.GWLBM = hq.DM /*��λ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS hr ON h.SFJZJS = hr.DM /*�Ƿ��ְ��ʦ*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS hs ON h.SFSSXJS = hs.DM /*�Ƿ�˫ʦ�ͽ�*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGDQZT AS ht ON h.DQZTM = ht.DM /*��ǰ״̬��*/
GO
