
--������¼��
CREATE VIEW [dbo].[VIEW_EDU_ZXJX_06_A01_MPJL_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ��
      ,a.[XNID]--ѧ��
      ,a.[XQID]--ѧ��
      ,a.[NJID]--�꼶
      ,a.[BJID]--�༶
      ,a.[MPJS]--������ʦ
      ,a.[MPKC]--�����γ�
      ,a.[MPXS]--����ѧ��
      ,a.[MPJG]--�������
      ,a.[MPSJ]--����ʱ��
      ,a.[RRSJ]--¼��ʱ��
      ,a.[BZ]--��ע
      ,c.SCHOOLID as c_XN_SCHOOLID--ѧ��� ѧУ��
      ,c.XN as c_XN_XN--ѧ��� ѧ��
      ,d.SCHOOLID as d_XQ_SCHOOLID--ѧ�����ݱ� ѧУ��
      ,d.XNID as d_XQ_XNID--ѧ�����ݱ� ѧ��
      ,d.XQM as d_XQ_XQM--ѧ�����ݱ� ѧ����
      ,db.MC as d_XQ_XQM_MC--ѧ�ڴ���� ����
      ,d.XQMC as d_XQ_XQMC--ѧ�����ݱ� ѧ������
      ,d.XQKSRQ as d_XQ_XQKSRQ--ѧ�����ݱ� ѧ�ڿ�ʼ����
      ,d.XQJSRQ as d_XQ_XQJSRQ--ѧ�����ݱ� ѧ�ڽ�������
      ,e.SCHOOLID as e_NJ_SCHOOLID--�꼶������� ѧУ��
      ,e.NJMC as e_NJ_NJMC--�꼶������� �꼶����
      ,f.SCHOOLID as f_BJ_SCHOOLID--�༶������� ѧУ��
      ,f.NJ as f_BJ_NJ--�༶������� �꼶��
      ,f.BJ as f_BJ_BJ--�༶������� �༶����
      ,f.JBNY as f_BJ_JBNY--�༶������� ��������
      ,f.BZRGH as f_BJ_BZRGH--�༶������� �����ι���
      ,f.BZXH as f_BJ_BZXH--�༶������� �೤ѧ��
      ,f.BJRYCH as f_BJ_BJRYCH--�༶������� �༶�����ƺ�
      ,f.XZ as f_BJ_XZ--�༶������� ѧ��
      ,f.BJLXM as f_BJ_BJLXM--�༶������� �༶������
      ,fb.MC as f_BJ_BJLXM_MC--��Сѧ�༶���ʹ���� ����
      ,f.WLLX as f_BJ_WLLX--�༶������� ��������
      ,f.BYRQ as f_BJ_BYRQ--�༶������� ��ҵ����
      ,f.SFSSMZSYJXB as f_BJ_SFSSMZSYJXB--�༶������� �Ƿ���������˫���ѧ��
      ,fc.MC as f_BJ_SFSSMZSYJXB_MC--�Ƿ��־����� ����
      ,f.SYJXMSM as f_BJ_SYJXMSM--�༶������� ˫���ѧģʽ��
      ,fd.MC as f_BJ_SYJXMSM_MC--��������˫���ѧģʽ����� ����
      ,fd.SM as f_BJ_SYJXMSM_SM--��������˫���ѧģʽ����� ˵��
      ,g.SCHOOLID as g_JZGJBSJ_SCHOOLID--��ְ��������������� ѧУ��
      ,g.GH as g_JZGJBSJ_GH--��ְ��������������� ����
      ,g.XM as g_JZGJBSJ_XM--��ְ��������������� ����
      ,g.YWXM as g_JZGJBSJ_YWXM--��ְ��������������� Ӣ������
      ,g.XMPY as g_JZGJBSJ_XMPY--��ְ��������������� ����ƴ��
      ,g.CYM as g_JZGJBSJ_CYM--��ְ��������������� ������
      ,g.XBM as g_JZGJBSJ_XBM--��ְ��������������� �Ա���
      ,gb.MC as g_JZGJBSJ_XBM_MC--�˵��Ա���� ����
      ,g.CSRQ as g_JZGJBSJ_CSRQ--��ְ��������������� ��������
      ,g.CSDM as g_JZGJBSJ_CSDM--��ְ��������������� ��������
      ,gc.MC as g_JZGJBSJ_CSDM_MC--�л����񹲺͹������������� ����
      ,g.JG as g_JZGJBSJ_JG--��ְ��������������� ����
      ,g.MZM as g_JZGJBSJ_MZM--��ְ��������������� ������
      ,gd.MZMC as g_JZGJBSJ_MZM_MZMC--�й����������Ƶ�������ĸƴд���ʹ��� ��������
      ,gd.ZMDM as g_JZGJBSJ_MZM_ZMDM--�й����������Ƶ�������ĸƴд���ʹ��� ��ĸ����
      ,g.GJDQM as g_JZGJBSJ_GJDQM--��ְ��������������� ����/������
      ,ge.GJDQMCJC as g_JZGJBSJ_GJDQM_GJDQMCJC--��������͵������ƴ��� ����/�������Ƽ��
      ,ge.EZMDM as g_JZGJBSJ_GJDQM_EZMDM--��������͵������ƴ��� ����ĸ����
      ,ge.SZMDM as g_JZGJBSJ_GJDQM_SZMDM--��������͵������ƴ��� ����ĸ����
      ,g.SFZJLXM as g_JZGJBSJ_SFZJLXM--��ְ��������������� ���֤��������
      ,gf.MC as g_JZGJBSJ_SFZJLXM_MC--���֤�����ʹ���� ����
      ,g.SFZJH as g_JZGJBSJ_SFZJH--��ְ��������������� ���֤����
      ,g.HYZKM as g_JZGJBSJ_HYZKM--��ְ��������������� ����״����
      ,gg.MC as g_JZGJBSJ_HYZKM_MC--����״������ ����
      ,g.GATQWM as g_JZGJBSJ_GATQWM--��ְ��������������� �۰�̨������
      ,gh.MC as g_JZGJBSJ_GATQWM_MC--�۰�̨�������� ����
      ,gh.SM as g_JZGJBSJ_GATQWM_SM--�۰�̨�������� ˵��
      ,g.ZZMMM as g_JZGJBSJ_ZZMMM--��ְ��������������� ������ò��
      ,gi.MC as g_JZGJBSJ_ZZMMM_MC--������ò���� ����
      ,gi.JC as g_JZGJBSJ_ZZMMM_JC--������ò���� ���
      ,g.JKZKM as g_JZGJBSJ_JKZKM--��ְ��������������� ����״����
      ,gj.MC as g_JZGJBSJ_JKZKM_MC--����״��1λ���ִ��� ����
      ,gj.SM as g_JZGJBSJ_JKZKM_SM--����״��1λ���ִ��� ˵��
      ,g.XYZJM as g_JZGJBSJ_XYZJM--��ְ��������������� �����ڽ���
      ,gk.MC as g_JZGJBSJ_XYZJM_MC--�ڽ��������� ����
      ,g.XXM as g_JZGJBSJ_XXM--��ְ��������������� Ѫ����
      ,gl.MC as g_JZGJBSJ_XXM_MC--Ѫ�ʹ���� ����
      ,gl.JC as g_JZGJBSJ_XXM_JC--Ѫ�ʹ���� ���
      ,g.ZP as g_JZGJBSJ_ZP--��ְ��������������� ��Ƭ
      ,g.SFZJYXQ as g_JZGJBSJ_SFZJYXQ--��ְ��������������� ���֤����Ч��
      ,g.JGH as g_JZGJBSJ_JGH--��ְ��������������� ������
      ,g.JTZZ as g_JZGJBSJ_JTZZ--��ְ��������������� ��ͥסַ
      ,g.XZZ as g_JZGJBSJ_XZZ--��ְ��������������� ��סַ
      ,g.HKSZD as g_JZGJBSJ_HKSZD--��ְ��������������� �������ڵ�
      ,g.HKXZM as g_JZGJBSJ_HKXZM--��ְ��������������� ����������
      ,gm.MC as g_JZGJBSJ_HKXZM_MC--���������� ����
      ,g.XLM as g_JZGJBSJ_XLM--��ְ��������������� ѧ����
      ,gn.MC as g_JZGJBSJ_XLM_MC--ѧ������ ����
      ,g.GZNY as g_JZGJBSJ_GZNY--��ְ��������������� �μӹ�������
      ,g.LXNY as g_JZGJBSJ_LXNY--��ְ��������������� ��У����
      ,g.CJNY as g_JZGJBSJ_CJNY--��ְ��������������� �ӽ�����
      ,g.BZLBM as g_JZGJBSJ_BZLBM--��ְ��������������� ���������
      ,go.MC as g_JZGJBSJ_BZLBM_MC--��Сѧ����������� ����
      ,g.DABH as g_JZGJBSJ_DABH--��ְ��������������� �������
      ,g.DAWB as g_JZGJBSJ_DAWB--��ְ��������������� �����ı�
      ,g.TXDZ as g_JZGJBSJ_TXDZ--��ְ��������������� ͨ�ŵ�ַ
      ,g.LXDH as g_JZGJBSJ_LXDH--��ְ��������������� ��ϵ�绰
      ,g.YZBM as g_JZGJBSJ_YZBM--��ְ��������������� ��������
      ,g.DZXX as g_JZGJBSJ_DZXX--��ְ��������������� ��������
      ,g.ZYDZ as g_JZGJBSJ_ZYDZ--��ְ��������������� ��ҳ��ַ
      ,g.TC as g_JZGJBSJ_TC--��ְ��������������� �س�
      ,g.GWZYM as g_JZGJBSJ_GWZYM--��ְ��������������� ��λְҵ��
      ,gp.MC as g_JZGJBSJ_GWZYM_MC--��λְҵ����� ����
      ,g.ZYRKXD as g_JZGJBSJ_ZYRKXD--��ְ��������������� ��Ҫ�ο�ѧ��
      ,gq.MC as g_JZGJBSJ_ZYRKXD_MC--�ο�ѧ�δ���� ����
      ,h.SCHOOLID as h_KC_SCHOOLID--�γ������� ѧУ��
      ,h.KCMC as h_KC_KCMC--�γ������� �γ�����
      ,h.KCM as h_KC_KCM--�γ������� �γ���
      ,hb.MC as h_KC_KCM_MC--��Сѧ�γ̴���� ����
      ,hb.SYXX as h_KC_KCM_SYXX--��Сѧ�γ̴���� ����ѧУ
      ,h.KCDJM as h_KC_KCDJM--�γ������� �γ̵ȼ���
      ,hc.MC as h_KC_KCDJM_MC--��Сѧ�γ̵ȼ������ ����
      ,h.KCBM as h_KC_KCBM--�γ������� �γ̱���
      ,h.KCJJ as h_KC_KCJJ--�γ������� �γ̼��
      ,h.KCYQ as h_KC_KCYQ--�γ������� �γ�Ҫ��
      ,h.ZXS as h_KC_ZXS--�γ������� ��ѧʱ
      ,h.ZHXS as h_KC_ZHXS--�γ������� ��ѧʱ
      ,h.ZXXS as h_KC_ZXXS--�γ������� ��ѧѧʱ
      ,h.SKFSM as h_KC_SKFSM--�γ������� �ڿη�ʽ��
      ,hd.MC as h_KC_SKFSM_MC--�ڿη�ʽ����� ����
      ,h.JCBM as h_KC_JCBM--�γ������� �̲ı���
      ,h.CKSM as h_KC_CKSM--�γ������� �ο���Ŀ
      ,h.CDXZ as h_KC_CDXZ--�γ������� ��������
      ,h.SFZK as h_KC_SFZK--�γ������� �Ƿ�����
      ,he.MC as h_KC_SFZK_MC--�Ƿ��־����� ����
      ,i.SCHOOLID as i_XSXX_SCHOOLID--ѧ��������������� ѧУ��
      ,i.XH as i_XSXX_XH--ѧ��������������� ѧ��
      ,i.XM as i_XSXX_XM--ѧ��������������� ����
      ,i.YWXM as i_XSXX_YWXM--ѧ��������������� Ӣ������
      ,i.XMPY as i_XSXX_XMPY--ѧ��������������� ����ƴ��
      ,i.CYM as i_XSXX_CYM--ѧ��������������� ������
      ,i.XBM as i_XSXX_XBM--ѧ��������������� �Ա���
      ,ib.MC as i_XSXX_XBM_MC--�˵��Ա���� ����
      ,i.CSRQ as i_XSXX_CSRQ--ѧ��������������� ��������
      ,i.CSDM as i_XSXX_CSDM--ѧ��������������� ��������
      ,ic.MC as i_XSXX_CSDM_MC--�л����񹲺͹������������� ����
      ,i.JG as i_XSXX_JG--ѧ��������������� ����
      ,i.MZM as i_XSXX_MZM--ѧ��������������� ������
      ,id.MZMC as i_XSXX_MZM_MZMC--�й����������Ƶ�������ĸƴд���ʹ��� ��������
      ,id.ZMDM as i_XSXX_MZM_ZMDM--�й����������Ƶ�������ĸƴд���ʹ��� ��ĸ����
      ,i.GJDQM as i_XSXX_GJDQM--ѧ��������������� ����/������
      ,ie.GJDQMCJC as i_XSXX_GJDQM_GJDQMCJC--��������͵������ƴ��� ����/�������Ƽ��
      ,ie.EZMDM as i_XSXX_GJDQM_EZMDM--��������͵������ƴ��� ����ĸ����
      ,ie.SZMDM as i_XSXX_GJDQM_SZMDM--��������͵������ƴ��� ����ĸ����
      ,i.SFZJLXM as i_XSXX_SFZJLXM--ѧ��������������� ���֤��������
      ,if.MC as i_XSXX_SFZJLXM_MC--���֤�����ʹ���� ����
      ,i.SFZJH as i_XSXX_SFZJH--ѧ��������������� ���֤����
      ,i.HYZKM as i_XSXX_HYZKM--ѧ��������������� ����״����
      ,ig.MC as i_XSXX_HYZKM_MC--����״������ ����
      ,i.GATQWM as i_XSXX_GATQWM--ѧ��������������� �۰�̨������
      ,ih.MC as i_XSXX_GATQWM_MC--�۰�̨�������� ����
      ,ih.SM as i_XSXX_GATQWM_SM--�۰�̨�������� ˵��
      ,i.ZZMMM as i_XSXX_ZZMMM--ѧ��������������� ������ò��
      ,ii.MC as i_XSXX_ZZMMM_MC--������ò���� ����
      ,ii.JC as i_XSXX_ZZMMM_JC--������ò���� ���
      ,i.JKZKM as i_XSXX_JKZKM--ѧ��������������� ����״����
      ,ij.MC as i_XSXX_JKZKM_MC--����״��1λ���ִ��� ����
      ,ij.SM as i_XSXX_JKZKM_SM--����״��1λ���ִ��� ˵��
      ,i.XYZJM as i_XSXX_XYZJM--ѧ��������������� �����ڽ���
      ,ik.MC as i_XSXX_XYZJM_MC--�ڽ��������� ����
      ,i.XXM as i_XSXX_XXM--ѧ��������������� Ѫ����
      ,il.MC as i_XSXX_XXM_MC--Ѫ�ʹ���� ����
      ,il.JC as i_XSXX_XXM_JC--Ѫ�ʹ���� ���
      ,i.ZP as i_XSXX_ZP--ѧ��������������� ��Ƭ
      ,i.SFZJYXQ as i_XSXX_SFZJYXQ--ѧ��������������� ���֤����Ч��
      ,i.DSZYBZ as i_XSXX_DSZYBZ--ѧ��������������� ������Ů��־
      ,im.MC as i_XSXX_DSZYBZ_MC--�Ƿ��־����� ����
      ,i.RXNY as i_XSXX_RXNY--ѧ��������������� ��ѧ����
      ,i.NJ as i_XSXX_NJ--ѧ��������������� �꼶
      ,i.BH as i_XSXX_BH--ѧ��������������� ���
      ,i.XSLBM as i_XSXX_XSLBM--ѧ��������������� ѧ�������
      ,in.MC as i_XSXX_XSLBM_MC--ѧ��������� ����
      ,in.SM as i_XSXX_XSLBM_SM--ѧ��������� ˵��
      ,i.XZZ as i_XSXX_XZZ--ѧ��������������� ��סַ
      ,i.HKSZD as i_XSXX_HKSZD--ѧ��������������� �������ڵ�
      ,i.HKXZM as i_XSXX_HKXZM--ѧ��������������� ����������
      ,io.MC as i_XSXX_HKXZM_MC--���������� ����
      ,i.SFLDRK as i_XSXX_SFLDRK--ѧ��������������� �Ƿ������˿�
      ,ip.MC as i_XSXX_SFLDRK_MC--�Ƿ��־����� ����
      ,i.TC as i_XSXX_TC--ѧ��������������� �س�
      ,i.LXDH as i_XSXX_LXDH--ѧ��������������� ��ϵ�绰
      ,i.TXDZ as i_XSXX_TXDZ--ѧ��������������� ͨ�ŵ�ַ
      ,i.YZBM as i_XSXX_YZBM--ѧ��������������� ��������
      ,i.DZXX as i_XSXX_DZXX--ѧ��������������� ��������
      ,i.ZYDZ as i_XSXX_ZYDZ--ѧ��������������� ��ҳ��ַ
      ,i.XJH as i_XSXX_XJH--ѧ��������������� ѧ����

FROM dbo.EDU_ZXJX_06_A01_MPJL AS a LEFT OUTER JOIN
      dbo.EDU_SYS_01_XN AS c ON a.XNID = c.ID /*ѧ��*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS d ON a.XQID = d.ID /*ѧ��*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_02_01_NJ AS e ON a.NJID = e.NJ /*�꼶*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_03_01_BJ AS f ON a.BJID = f.BH /*�༶*/ AND a.SCHOOLID = f.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZXJZ_01_01_JZGJBSJ AS g ON a.MPJS = g.ID /*������ʦ*/ AND a.SCHOOLID = g.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZXJX_01_01_KC AS h ON a.MPKC = h.KCH /*�����γ�*/ AND a.SCHOOLID = h.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZXXS_01_01_XSXX AS i ON a.MPXS = i.ID /*����ѧ��*/ AND a.SCHOOLID = i.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS db ON d.XQM = db.DM /*ѧ����*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXBJLX AS fb ON f.BJLXM = fb.DM /*�༶������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS fc ON f.SFSSMZSYJXB = fc.DM /*�Ƿ���������˫���ѧ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SSMZSYJXMS AS fd ON f.SYJXMSM = fd.DM /*˫���ѧģʽ��*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS gb ON g.XBM = gb.DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS gc ON g.CSDM = gc.DM /*��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS gd ON g.MZM = gd.DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS ge ON g.GJDQM = ge.DM /*����/������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS gf ON g.SFZJLXM = gf.DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS gg ON g.HYZKM = gg.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS gh ON g.GATQWM = gh.DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS gi ON g.ZZMMM = gi.DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS gj ON g.JKZKM = gj.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS gk ON g.XYZJM = gk.DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS gl ON g.XXM = gl.DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS gm ON g.HKXZM = gm.DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_GB_XL AS gn ON g.XLM = gn.DM /*ѧ����*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXBZLB AS go ON g.BZLBM = go.DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWZY AS gp ON g.GWZYM = gp.DM /*��λְҵ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_RKXD AS gq ON g.ZYRKXD = gq.DM /*��Ҫ�ο�ѧ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXKC AS hb ON h.KCM = hb.DM /*�γ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXKCDJ AS hc ON h.KCDJM = hc.DM /*�γ̵ȼ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS hd ON h.SKFSM = hd.DM /*�ڿη�ʽ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS he ON h.SFZK = he.DM /*�Ƿ�����*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS ib ON i.XBM = ib.DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS ic ON i.CSDM = ic.DM /*��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS id ON i.MZM = id.DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS ie ON i.GJDQM = ie.DM /*����/������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS if ON i.SFZJLXM = if.DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS ig ON i.HYZKM = ig.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS ih ON i.GATQWM = ih.DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS ii ON i.ZZMMM = ii.DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS ij ON i.JKZKM = ij.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS ik ON i.XYZJM = ik.DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS il ON i.XXM = il.DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS im ON i.DSZYBZ = im.DM /*������Ů��־*/ LEFT OUTER JOIN
      dbo.EDU_JY_XSLB AS in ON i.XSLBM = in.DM /*ѧ�������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS io ON i.HKXZM = io.DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS ip ON i.SFLDRK = ip.DM /*�Ƿ������˿�*/
GO
