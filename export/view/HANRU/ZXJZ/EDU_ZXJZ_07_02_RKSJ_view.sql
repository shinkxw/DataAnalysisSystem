
--�ο����������
CREATE VIEW [dbo].[VIEW_EDU_ZXJZ_07_02_RKSJ_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ��
      ,a.[JZGJBSJID]--��ְ���������������
      ,a.[RKKCH]--�οογ̺�
      ,a.[RKQSNY]--�ο���ʼ����
      ,a.[RKZZNY]--�ο���ֹ����
      ,a.[RKZXS]--�ο���ѧʱ
      ,a.[RKXDM]--�ο�ѧ����
      ,a.[RKJSM]--�ον�ɫ��
      ,a.[SKBJ]--�ڿΰ༶
      ,a.[SKRS]--�ڿ�����
      ,a.[ZKS]--�ܿ�ʱ
      ,a.[SFLT]--�Ƿ�����
      ,b.SCHOOLNAME as b_SCHOOL_SCHOOLNAME--ѧУ����
      ,b.SCHOOLTYPE as b_SCHOOL_SCHOOLTYPE--ѧУ����
      ,b.XNID as b_SCHOOL_XNID--ѧ��ID
      ,b.XQID as b_SCHOOL_XQID--ѧ��ID
      ,b.MatchURL as b_SCHOOL_MatchURL--ƥ��url
      ,b.LogLevel as b_SCHOOL_LogLevel--��־����
      ,c.SCHOOLID as c_JZGJBSJ_SCHOOLID--ѧУ��
      ,c.GH as c_JZGJBSJ_GH--����
      ,c.XM as c_JZGJBSJ_XM--����
      ,c.YWXM as c_JZGJBSJ_YWXM--Ӣ������
      ,c.XMPY as c_JZGJBSJ_XMPY--����ƴ��
      ,c.CYM as c_JZGJBSJ_CYM--������
      ,c.XBM as c_JZGJBSJ_XBM--�Ա���
      ,cb.MC as c_JZGJBSJ_XBM_MC--����
      ,c.CSRQ as c_JZGJBSJ_CSRQ--��������
      ,c.CSDM as c_JZGJBSJ_CSDM--��������
      ,cc.MC as c_JZGJBSJ_CSDM_MC--����
      ,c.JG as c_JZGJBSJ_JG--����
      ,c.MZM as c_JZGJBSJ_MZM--������
      ,cd.MZMC as c_JZGJBSJ_MZM_MZMC--��������
      ,cd.ZMDM as c_JZGJBSJ_MZM_ZMDM--��ĸ����
      ,c.GJDQM as c_JZGJBSJ_GJDQM--����/������
      ,ce.GJDQMCJC as c_JZGJBSJ_GJDQM_GJDQMCJC--����/�������Ƽ��
      ,ce.EZMDM as c_JZGJBSJ_GJDQM_EZMDM--����ĸ����
      ,ce.SZMDM as c_JZGJBSJ_GJDQM_SZMDM--����ĸ����
      ,c.SFZJLXM as c_JZGJBSJ_SFZJLXM--����֤��������
      ,cf.MC as c_JZGJBSJ_SFZJLXM_MC--����
      ,c.SFZJH as c_JZGJBSJ_SFZJH--����֤����
      ,c.HYZKM as c_JZGJBSJ_HYZKM--����״����
      ,cg.MC as c_JZGJBSJ_HYZKM_MC--����
      ,c.GATQWM as c_JZGJBSJ_GATQWM--�۰�̨������
      ,ch.MC as c_JZGJBSJ_GATQWM_MC--����
      ,ch.SM as c_JZGJBSJ_GATQWM_SM--˵��
      ,c.ZZMMM as c_JZGJBSJ_ZZMMM--������ò��
      ,ci.MC as c_JZGJBSJ_ZZMMM_MC--����
      ,ci.JC as c_JZGJBSJ_ZZMMM_JC--���
      ,c.JKZKM as c_JZGJBSJ_JKZKM--����״����
      ,cj.MC as c_JZGJBSJ_JKZKM_MC--����
      ,cj.SM as c_JZGJBSJ_JKZKM_SM--˵��
      ,c.XYZJM as c_JZGJBSJ_XYZJM--�����ڽ���
      ,ck.MC as c_JZGJBSJ_XYZJM_MC--����
      ,c.XXM as c_JZGJBSJ_XXM--Ѫ����
      ,cl.MC as c_JZGJBSJ_XXM_MC--����
      ,cl.JC as c_JZGJBSJ_XXM_JC--���
      ,c.ZP as c_JZGJBSJ_ZP--��Ƭ
      ,c.SFZJYXQ as c_JZGJBSJ_SFZJYXQ--����֤����Ч��
      ,c.JGH as c_JZGJBSJ_JGH--������
      ,c.JTZZ as c_JZGJBSJ_JTZZ--��ͥסַ
      ,c.XZZ as c_JZGJBSJ_XZZ--��סַ
      ,c.HKSZD as c_JZGJBSJ_HKSZD--�������ڵ�
      ,c.HKXZM as c_JZGJBSJ_HKXZM--����������
      ,cm.MC as c_JZGJBSJ_HKXZM_MC--����
      ,c.XLM as c_JZGJBSJ_XLM--ѧ����
      ,cn.MC as c_JZGJBSJ_XLM_MC--����
      ,c.GZNY as c_JZGJBSJ_GZNY--�μӹ�������
      ,c.LXNY as c_JZGJBSJ_LXNY--��У����
      ,c.CJNY as c_JZGJBSJ_CJNY--�ӽ�����
      ,c.BZLBM as c_JZGJBSJ_BZLBM--���������
      ,co.MC as c_JZGJBSJ_BZLBM_MC--����
      ,c.DABH as c_JZGJBSJ_DABH--�������
      ,c.DAWB as c_JZGJBSJ_DAWB--�����ı�
      ,c.TXDZ as c_JZGJBSJ_TXDZ--ͨ�ŵ�ַ
      ,c.LXDH as c_JZGJBSJ_LXDH--��ϵ�绰
      ,c.YZBM as c_JZGJBSJ_YZBM--��������
      ,c.DZXX as c_JZGJBSJ_DZXX--��������
      ,c.ZYDZ as c_JZGJBSJ_ZYDZ--��ҳ��ַ
      ,c.TC as c_JZGJBSJ_TC--�س�
      ,c.GWZYM as c_JZGJBSJ_GWZYM--��λְҵ��
      ,cp.MC as c_JZGJBSJ_GWZYM_MC--����
      ,c.ZYRKXD as c_JZGJBSJ_ZYRKXD--��Ҫ�ο�ѧ��
      ,cq.MC as c_JZGJBSJ_ZYRKXD_MC--����
      ,d.SCHOOLID as d_KC_SCHOOLID--ѧУ��
      ,d.KCMC as d_KC_KCMC--�γ�����
      ,d.KCM as d_KC_KCM--�γ���
      ,db.MC as d_KC_KCM_MC--����
      ,db.SYXX as d_KC_KCM_SYXX--����ѧУ
      ,d.KCDJM as d_KC_KCDJM--�γ̵ȼ���
      ,dc.MC as d_KC_KCDJM_MC--����
      ,d.KCBM as d_KC_KCBM--�γ̱���
      ,d.KCJJ as d_KC_KCJJ--�γ̼��
      ,d.KCYQ as d_KC_KCYQ--�γ�Ҫ��
      ,d.ZXS as d_KC_ZXS--��ѧʱ
      ,d.ZHXS as d_KC_ZHXS--��ѧʱ
      ,d.ZXXS as d_KC_ZXXS--��ѧѧʱ
      ,d.SKFSM as d_KC_SKFSM--�ڿη�ʽ��
      ,dd.MC as d_KC_SKFSM_MC--����
      ,d.JCBM as d_KC_JCBM--�̲ı���
      ,d.CKSM as d_KC_CKSM--�ο���Ŀ
      ,d.CDXZ as d_KC_CDXZ--��������
      ,d.SFZK as d_KC_SFZK--�Ƿ�����
      ,de.MC as d_KC_SFZK_MC--����
      ,e.MC as e_RKXD_MC--����
      ,f.MC as f_RKJS_MC--����
      ,g.SCHOOLID as g_BJ_SCHOOLID--ѧУ��
      ,g.NJ as g_BJ_NJ--�꼶��
      ,g.BJ as g_BJ_BJ--�༶����
      ,g.JBNY as g_BJ_JBNY--��������
      ,g.BZRGH as g_BJ_BZRGH--�����ι���
      ,g.BZXH as g_BJ_BZXH--�೤ѧ��
      ,g.BJRYCH as g_BJ_BJRYCH--�༶�����ƺ�
      ,g.XZ as g_BJ_XZ--ѧ��
      ,g.BJLXM as g_BJ_BJLXM--�༶������
      ,gb.MC as g_BJ_BJLXM_MC--����
      ,g.WLLX as g_BJ_WLLX--��������
      ,g.BYRQ as g_BJ_BYRQ--��ҵ����
      ,g.SFSSMZSYJXB as g_BJ_SFSSMZSYJXB--�Ƿ���������˫���ѧ��
      ,gc.MC as g_BJ_SFSSMZSYJXB_MC--����
      ,g.SYJXMSM as g_BJ_SYJXMSM--˫���ѧģʽ��
      ,gd.MC as g_BJ_SYJXMSM_MC--����
      ,gd.SM as g_BJ_SYJXMSM_SM--˵��
      ,h.MC as h_SFBZ_MC--����

FROM dbo.EDU_ZXJZ_07_02_RKSJ AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZXJZ_01_01_JZGJBSJ AS c ON a.JZGJBSJID = c.ID /*��ְ���������������*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZXJX_01_01_KC AS d ON a.RKKCH = d.KCH /*�οογ̺�*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_RKXD AS e ON a.RKXDM = e.DM /*�ο�ѧ����*/ LEFT OUTER JOIN
      dbo.EDU_JY_RKJS AS f ON a.RKJSM = f.DM /*�ον�ɫ��*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_03_01_BJ AS g ON a.SKBJ = g.BH /*�ڿΰ༶*/ AND a.SCHOOLID = g.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS h ON a.SFLT = h.DM /*�Ƿ�����*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS cb ON c.XBM = cb.DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS cc ON c.CSDM = cc.DM /*��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS cd ON c.MZM = cd.DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS ce ON c.GJDQM = ce.DM /*����/������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS cf ON c.SFZJLXM = cf.DM /*����֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS cg ON c.HYZKM = cg.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS ch ON c.GATQWM = ch.DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS ci ON c.ZZMMM = ci.DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS cj ON c.JKZKM = cj.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS ck ON c.XYZJM = ck.DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS cl ON c.XXM = cl.DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS cm ON c.HKXZM = cm.DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_GB_XL AS cn ON c.XLM = cn.DM /*ѧ����*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXBZLB AS co ON c.BZLBM = co.DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWZY AS cp ON c.GWZYM = cp.DM /*��λְҵ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_RKXD AS cq ON c.ZYRKXD = cq.DM /*��Ҫ�ο�ѧ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXKC AS db ON d.KCM = db.DM /*�γ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXKCDJ AS dc ON d.KCDJM = dc.DM /*�γ̵ȼ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS dd ON d.SKFSM = dd.DM /*�ڿη�ʽ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS de ON d.SFZK = de.DM /*�Ƿ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXBJLX AS gb ON g.BJLXM = gb.DM /*�༶������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS gc ON g.SFSSMZSYJXB = gc.DM /*�Ƿ���������˫���ѧ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SSMZSYJXMS AS gd ON g.SYJXMSM = gd.DM /*˫���ѧģʽ��*/
GO