
--ѧ���춯���������
CREATE VIEW [dbo].[VIEW_EDU_ZZXS_07_02_XJYD_DISP]
AS
SELECT a.[ID]--ѧ���춯����
      ,a.[XSXXID]--ѧ��ID
      ,a.[SCHOOLID]--ѧУID
      ,a.[YDLBM]--�춯�����
      ,a.[YDRQ]--�춯����
      ,a.[YDYYM]--�춯ԭ����
      ,a.[SPRQ]--��������
      ,a.[SPWH]--�����ĺ�
      ,a.[JBRID]--������ID
      ,a.[JBRGH]--�����˹���
      ,a.[YDLYXXM]--�춯��ԴѧУ��
      ,a.[YDQXXXM]--�춯ȥ��ѧУ��
      ,a.[YDSM]--�춯˵��
      ,a.[YZYM]--ԭרҵ��
      ,a.[YZYID]--ԭרҵID
      ,a.[YBH]--ԭ���
      ,a.[YNJ]--ԭ�꼶
      ,a.[XZYM]--��רҵ��
      ,a.[XZYID]--��רҵID
      ,a.[XBH]--�ְ��
      ,a.[XNJ]--���꼶
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
      ,c.XXDM as c_ZZXX_XXDM--ѧУ����
      ,c.XXMC as c_ZZXX_XXMC--ѧУ����
      ,c.XXYWMC as c_ZZXX_XXYWMC--ѧУӢ������
      ,c.XXJBZM as c_ZZXX_XXJBZM--ѧУ�ٰ�����
      ,cb.MC as c_ZZXX_XXJBZM_MC--����
      ,cb.SM as c_ZZXX_XXJBZM_SM--˵��
      ,c.XXZGBMM as c_ZZXX_XXZGBMM--ѧУ���ܲ�����
      ,cc.MC as c_ZZXX_XXZGBMM_MC--����
      ,cc.SM as c_ZZXX_XXZGBMM_SM--˵��
      ,c.XXDZ as c_ZZXX_XXDZ--ѧУ��ַ
      ,c.XXYZBM as c_ZZXX_XXYZBM--ѧУ��������
      ,c.XZQHM as c_ZZXX_XZQHM--����������
      ,cd.MC as c_ZZXX_XZQHM_MC--����
      ,c.JXNY as c_ZZXX_JXNY--��У����
      ,c.XQR as c_ZZXX_XQR--У����
      ,c.CLBJ as c_ZZXX_CLBJ--��������
      ,c.LSYG as c_ZZXX_LSYG--��ʷ�ظ�
      ,c.XXXQS as c_ZZXX_XXXQS--ѧУУ����
      ,c.XXPGLX as c_ZZXX_XXPGLX--ѧУ��������
      ,ce.MC as c_ZZXX_XXPGLX_MC--����
      ,c.XXPGQKSM as c_ZZXX_XXPGQKSM--ѧУ�������˵��
      ,c.ZYDZ as c_ZZXX_ZYDZ--��ҳ��ַ
      ,c.FDDBRH as c_ZZXX_FDDBRH--���������˺�
      ,c.FRZSH as c_ZZXX_FRZSH--����֤���
      ,c.LXDH as c_ZZXX_LXDH--��ϵ�绰
      ,c.CZDH as c_ZZXX_CZDH--����绰
      ,c.DZXX as c_ZZXX_DZXX--��������
      ,d.MC as d_XJYDLB_MC--����
      ,e.MC as e_XJYDYY_MC--����
      ,f.SCHOOLID as f_JZGJBSJ_SCHOOLID--ѧУ��
      ,f.GH as f_JZGJBSJ_GH--����
      ,f.XM as f_JZGJBSJ_XM--����
      ,f.YWXM as f_JZGJBSJ_YWXM--Ӣ������
      ,f.XMPY as f_JZGJBSJ_XMPY--����ƴ��
      ,f.CYM as f_JZGJBSJ_CYM--������
      ,f.SFZJLXM as f_JZGJBSJ_SFZJLXM--���֤��������
      ,fb.MC as f_JZGJBSJ_SFZJLXM_MC--����
      ,f.SFZJH as f_JZGJBSJ_SFZJH--���֤����
      ,f.CSRQ as f_JZGJBSJ_CSRQ--��������
      ,f.XBM as f_JZGJBSJ_XBM--�Ա���
      ,fc.MC as f_JZGJBSJ_XBM_MC--����
      ,f.MZM as f_JZGJBSJ_MZM--������
      ,fd.MZMC as f_JZGJBSJ_MZM_MZMC--��������
      ,fd.ZMDM as f_JZGJBSJ_MZM_ZMDM--��ĸ����
      ,f.XXM as f_JZGJBSJ_XXM--Ѫ����
      ,fe.MC as f_JZGJBSJ_XXM_MC--����
      ,fe.JC as f_JZGJBSJ_XXM_JC--���
      ,f.JKZKM as f_JZGJBSJ_JKZKM--����״����
      ,ff.MC as f_JZGJBSJ_JKZKM_MC--����
      ,ff.SM as f_JZGJBSJ_JKZKM_SM--˵��
      ,f.HYZTM as f_JZGJBSJ_HYZTM--����״̬��
      ,fg.MC as f_JZGJBSJ_HYZTM_MC--����
      ,f.ZZMMM as f_JZGJBSJ_ZZMMM--������ò��
      ,fh.MC as f_JZGJBSJ_ZZMMM_MC--����
      ,fh.JC as f_JZGJBSJ_ZZMMM_JC--���
      ,f.GATQWM as f_JZGJBSJ_GATQWM--�۰�̨������
      ,fi.MC as f_JZGJBSJ_GATQWM_MC--����
      ,fi.SM as f_JZGJBSJ_GATQWM_SM--˵��
      ,f.JG as f_JZGJBSJ_JG--����
      ,f.GJDQM as f_JZGJBSJ_GJDQM--����/������
      ,fj.GJDQMCJC as f_JZGJBSJ_GJDQM_GJDQMCJC--����/�������Ƽ��
      ,fj.EZMDM as f_JZGJBSJ_GJDQM_EZMDM--����ĸ����
      ,fj.SZMDM as f_JZGJBSJ_GJDQM_SZMDM--����ĸ����
      ,f.CSDXZQHM as f_JZGJBSJ_CSDXZQHM--����������������
      ,fk.MC as f_JZGJBSJ_CSDXZQHM_MC--����
      ,f.XYZJM as f_JZGJBSJ_XYZJM--�����ڽ���
      ,fl.MC as f_JZGJBSJ_XYZJM_MC--����
      ,f.JZGHKSZDXZQHM as f_JZGJBSJ_JZGHKSZDXZQHM--��ְ���������ڵ�����������
      ,fm.MC as f_JZGJBSJ_JZGHKSZDXZQHM_MC--����
      ,f.HKLBM as f_JZGJBSJ_HKLBM--���������
      ,fn.MC as f_JZGJBSJ_HKLBM_MC--����
      ,f.DQZZ as f_JZGJBSJ_DQZZ--��ǰסַ
      ,f.DQZZYZBM as f_JZGJBSJ_DQZZYZBM--��ǰסַ��������
      ,f.CJGZNY as f_JZGJBSJ_CJGZNY--�μӹ�������
      ,f.CJNY as f_JZGJBSJ_CJNY--�ӽ�����
      ,f.LXNY as f_JZGJBSJ_LXNY--��У����
      ,f.BZLBM as f_JZGJBSJ_BZLBM--���������
      ,fo.MC as f_JZGJBSJ_BZLBM_MC--����
      ,f.JZGLBM as f_JZGJBSJ_JZGLBM--��ְ�������
      ,fp.MC as f_JZGJBSJ_JZGLBM_MC--����
      ,fp.SM as f_JZGJBSJ_JZGLBM_SM--˵��
      ,f.GWLBM as f_JZGJBSJ_GWLBM--��λ�����
      ,fq.MC as f_JZGJBSJ_GWLBM_MC--����
      ,f.SFJZJS as f_JZGJBSJ_SFJZJS--�Ƿ��ְ��ʦ
      ,fr.MC as f_JZGJBSJ_SFJZJS_MC--����
      ,f.SFSSXJS as f_JZGJBSJ_SFSSXJS--�Ƿ�˫ʦ�ͽ�
      ,fs.MC as f_JZGJBSJ_SFSSXJS_MC--����
      ,f.ZP as f_JZGJBSJ_ZP--��Ƭ(·��)
      ,f.DQZTM as f_JZGJBSJ_DQZTM--��ǰ״̬��
      ,ft.MC as f_JZGJBSJ_DQZTM_MC--����
      ,g.SCHOOLID as g_ZYXX_SCHOOLID--ѧУ��
      ,g.ZYDM as g_ZYXX_ZYDM--רҵ����
      ,gb.ZYMLLB as g_ZYXX_ZYDM_ZYMLLB--רҵĿ¼���
      ,gb.MC as g_ZYXX_ZYDM_MC--����
      ,g.ZYMC as g_ZYXX_ZYMC--רҵ����
      ,g.ZYYWMC as g_ZYXX_ZYYWMC--רҵӢ������
      ,g.XZ as g_ZYXX_XZ--ѧ��
      ,g.ZYFXMC as g_ZYXX_ZYFXMC--רҵ��������
      ,g.ZYJC as g_ZYXX_ZYJC--רҵ���
      ,g.JLNY as g_ZYXX_JLNY--��������
      ,g.ZYJSS as g_ZYXX_ZYJSS--רҵ��ʦ��
      ,g.KSJGH as g_ZYXX_KSJGH--���������
      ,g.ZXF as g_ZYXX_ZXF--��ѧ��
      ,g.SSZYML as g_ZYXX_SSZYML--����רҵĿ¼
      ,gc.MC as g_ZYXX_SSZYML_MC--����
      ,g.ZYLB as g_ZYXX_ZYLB--רҵ�������
      ,h.SCHOOLID as h_ZZBJ_SCHOOLID--ѧУ��
      ,h.ZYXXID as h_ZZBJ_ZYXXID--רҵ������Ϣ
      ,h.ZZNJID as h_ZZBJ_ZZNJID--ѧУ�꼶���ݱ�
      ,h.XZBMC as h_ZZBJ_XZBMC--����������
      ,h.JBNY as h_ZZBJ_JBNY--��������
      ,h.BZRGH as h_ZZBJ_BZRGH--�����ι���
      ,h.JSBH as h_ZZBJ_JSBH--���ұ��
      ,h.NANSRS as h_ZZBJ_NANSRS--��������
      ,h.NVSRS as h_ZZBJ_NVSRS--Ů������
      ,h.ZRS as h_ZZBJ_ZRS--������
      ,h.BZXH as h_ZZBJ_BZXH--�೤ѧ��
      ,h.JXJH as h_ZZBJ_JXJH--��ѧ�ƻ�
      ,h.JGH as h_ZZBJ_JGH--������
      ,h.XQDM as h_ZZBJ_XQDM--У������
      ,i.SCHOOLID as i_ZZNJ_SCHOOLID--ѧУ��
      ,i.NJMC as i_ZZNJ_NJMC--�꼶����
      ,i.SSNF as i_ZZNJ_SSNF--�������
      ,i.NJZT as i_ZZNJ_NJZT--�꼶״̬
      ,ib.MC as i_ZZNJ_NJZT_MC--����
      ,j.SCHOOLID as j_ZYXX_SCHOOLID--ѧУ��
      ,j.ZYDM as j_ZYXX_ZYDM--רҵ����
      ,jb.ZYMLLB as j_ZYXX_ZYDM_ZYMLLB--רҵĿ¼���
      ,jb.MC as j_ZYXX_ZYDM_MC--����
      ,j.ZYMC as j_ZYXX_ZYMC--רҵ����
      ,j.ZYYWMC as j_ZYXX_ZYYWMC--רҵӢ������
      ,j.XZ as j_ZYXX_XZ--ѧ��
      ,j.ZYFXMC as j_ZYXX_ZYFXMC--רҵ��������
      ,j.ZYJC as j_ZYXX_ZYJC--רҵ���
      ,j.JLNY as j_ZYXX_JLNY--��������
      ,j.ZYJSS as j_ZYXX_ZYJSS--רҵ��ʦ��
      ,j.KSJGH as j_ZYXX_KSJGH--���������
      ,j.ZXF as j_ZYXX_ZXF--��ѧ��
      ,j.SSZYML as j_ZYXX_SSZYML--����רҵĿ¼
      ,jc.MC as j_ZYXX_SSZYML_MC--����
      ,j.ZYLB as j_ZYXX_ZYLB--רҵ�������
      ,k.SCHOOLID as k_ZZBJ_SCHOOLID--ѧУ��
      ,k.ZYXXID as k_ZZBJ_ZYXXID--רҵ������Ϣ
      ,k.ZZNJID as k_ZZBJ_ZZNJID--ѧУ�꼶���ݱ�
      ,k.XZBMC as k_ZZBJ_XZBMC--����������
      ,k.JBNY as k_ZZBJ_JBNY--��������
      ,k.BZRGH as k_ZZBJ_BZRGH--�����ι���
      ,k.JSBH as k_ZZBJ_JSBH--���ұ��
      ,k.NANSRS as k_ZZBJ_NANSRS--��������
      ,k.NVSRS as k_ZZBJ_NVSRS--Ů������
      ,k.ZRS as k_ZZBJ_ZRS--������
      ,k.BZXH as k_ZZBJ_BZXH--�೤ѧ��
      ,k.JXJH as k_ZZBJ_JXJH--��ѧ�ƻ�
      ,k.JGH as k_ZZBJ_JGH--������
      ,k.XQDM as k_ZZBJ_XQDM--У������
      ,l.SCHOOLID as l_ZZNJ_SCHOOLID--ѧУ��
      ,l.NJMC as l_ZZNJ_NJMC--�꼶����
      ,l.SSNF as l_ZZNJ_SSNF--�������
      ,l.NJZT as l_ZZNJ_NJZT--�꼶״̬
      ,lb.MC as l_ZZNJ_NJZT_MC--����

FROM dbo.EDU_ZZXS_07_02_XJYD AS a LEFT OUTER JOIN
      dbo.EDU_ZZXS_01_01_XSXX AS b ON a.XSXXID = b.ID /*ѧ��ID*/ AND a.SCHOOLID = b.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZXX_01_01_ZZXX AS c ON a.SCHOOLID = c.ID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_JY_XJYDLB AS d ON a.YDLBM = d.DM /*�춯�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XJYDYY AS e ON a.YDYYM = e.DM /*�춯ԭ����*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS f ON a.JBRID = f.ID /*������ID*/ AND a.SCHOOLID = f.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_01_01_ZYXX AS g ON a.YZYID = g.ZYBH /*ԭרҵID*/ AND a.SCHOOLID = g.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_02_02_ZZBJ AS h ON a.YBH = h.XZBDM /*ԭ���*/ AND a.SCHOOLID = h.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_02_01_ZZNJ AS i ON a.YNJ = i.NJDM /*ԭ�꼶*/ AND a.SCHOOLID = i.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_01_01_ZYXX AS j ON a.XZYID = j.ZYBH /*��רҵID*/ AND a.SCHOOLID = j.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_02_02_ZZBJ AS k ON a.XBH = k.XZBDM /*�ְ��*/ AND a.SCHOOLID = k.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_02_01_ZZNJ AS l ON a.XNJ = l.NJDM /*���꼶*/ AND a.SCHOOLID = l.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
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
      dbo.EDU_JY_XXJYJGJBZ AS cb ON c.XXJBZM = cb.DM /*ѧУ�ٰ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS cc ON c.XXZGBMM = cc.DM /*ѧУ���ܲ�����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS cd ON c.XZQHM = cd.DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_PGQK AS ce ON c.XXPGLX = ce.DM /*ѧУ��������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS fb ON f.SFZJLXM = fb.DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS fc ON f.XBM = fc.DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS fd ON f.MZM = fd.DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS fe ON f.XXM = fe.DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS ff ON f.JKZKM = ff.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS fg ON f.HYZTM = fg.DM /*����״̬��*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS fh ON f.ZZMMM = fh.DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS fi ON f.GATQWM = fi.DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS fj ON f.GJDQM = fj.DM /*����/������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS fk ON f.CSDXZQHM = fk.DM /*����������������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS fl ON f.XYZJM = fl.DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS fm ON f.JZGHKSZDXZQHM = fm.DM /*��ְ���������ڵ�����������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS fn ON f.HKLBM = fn.DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_BZLB AS fo ON f.BZLBM = fo.DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGLB AS fp ON f.JZGLBM = fp.DM /*��ְ�������*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWLB AS fq ON f.GWLBM = fq.DM /*��λ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS fr ON f.SFJZJS = fr.DM /*�Ƿ��ְ��ʦ*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS fs ON f.SFSSXJS = fs.DM /*�Ƿ�˫ʦ�ͽ�*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGDQZT AS ft ON f.DQZTM = ft.DM /*��ǰ״̬��*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZJZY AS gb ON g.ZYDM = gb.DM /*רҵ����*/ AND g.SSZYML = gb.ZYMLLB /*����רҵĿ¼*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZYML AS gc ON g.SSZYML = gc.DM /*����רҵĿ¼*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS ib ON i.NJZT = ib.DM /*�꼶״̬*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZJZY AS jb ON j.ZYDM = jb.DM /*רҵ����*/ AND j.SSZYML = jb.ZYMLLB /*����רҵĿ¼*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZYML AS jc ON j.SSZYML = jc.DM /*����רҵĿ¼*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS lb ON l.NJZT = lb.DM /*�꼶״̬*/
GO
