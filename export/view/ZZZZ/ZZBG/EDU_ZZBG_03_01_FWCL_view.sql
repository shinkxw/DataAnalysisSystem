
--���Ĵ��������
CREATE VIEW [dbo].[VIEW_EDU_ZZBG_03_01_FWCL_DISP]
AS
SELECT a.[SCHOOLID]--ѧУ��
      ,a.[WJID]--�ļ�ID
      ,a.[NGRID]--�����ID
      ,a.[QFRID]--ǩ����ID
      ,a.[DJRID]--�Ǽ���ID
      ,a.[DZRID]--������ID
      ,a.[JDRID]--У����ID
      ,a.[NGRGH]--����˹���
      ,a.[NGRQ]--�������
      ,a.[QFRGH]--ǩ���˹���
      ,a.[QFRQ]--ǩ������
      ,a.[FSFW]--���ͷ�Χ
      ,a.[FSFSM]--���ͷ�ʽ��
      ,a.[DJRGH]--�Ǽ��˹���
      ,a.[DJRQ]--�Ǽ�����
      ,a.[FWJS]--���ļ���
      ,a.[GWFWRQ]--���ķ�������
      ,a.[CLQK]--�������
      ,a.[DZRGH]--�����˹���
      ,a.[JDRGH]--У���˹���
      ,a.[FZFSM]--��װ��ʽ��
      ,b.XXDM as b_ZZXX_XXDM--ѧУ����
      ,b.XXMC as b_ZZXX_XXMC--ѧУ����
      ,b.XXYWMC as b_ZZXX_XXYWMC--ѧУӢ������
      ,b.XXJBZM as b_ZZXX_XXJBZM--ѧУ�ٰ�����
      ,bb.MC as b_ZZXX_XXJBZM_MC--����
      ,bb.SM as b_ZZXX_XXJBZM_SM--˵��
      ,b.XXZGBMM as b_ZZXX_XXZGBMM--ѧУ���ܲ�����
      ,bc.MC as b_ZZXX_XXZGBMM_MC--����
      ,bc.SM as b_ZZXX_XXZGBMM_SM--˵��
      ,b.XXDZ as b_ZZXX_XXDZ--ѧУ��ַ
      ,b.XXYZBM as b_ZZXX_XXYZBM--ѧУ��������
      ,b.XZQHM as b_ZZXX_XZQHM--����������
      ,bd.MC as b_ZZXX_XZQHM_MC--����
      ,b.JXNY as b_ZZXX_JXNY--��У����
      ,b.XQR as b_ZZXX_XQR--У����
      ,b.CLBJ as b_ZZXX_CLBJ--��������
      ,b.LSYG as b_ZZXX_LSYG--��ʷ�ظ�
      ,b.XXXQS as b_ZZXX_XXXQS--ѧУУ����
      ,b.XXPGLX as b_ZZXX_XXPGLX--ѧУ��������
      ,be.MC as b_ZZXX_XXPGLX_MC--����
      ,b.XXPGQKSM as b_ZZXX_XXPGQKSM--ѧУ�������˵��
      ,b.ZYDZ as b_ZZXX_ZYDZ--��ҳ��ַ
      ,b.FDDBRH as b_ZZXX_FDDBRH--���������˺�
      ,b.FRZSH as b_ZZXX_FRZSH--����֤���
      ,b.LXDH as b_ZZXX_LXDH--��ϵ�绰
      ,b.CZDH as b_ZZXX_CZDH--����绰
      ,b.DZXX as b_ZZXX_DZXX--��������
      ,c.SCHOOLID as c_WJJBSJ_SCHOOLID--ѧУ��
      ,c.WJBH as c_WJJBSJ_WJBH--�ļ����
      ,c.WJWH as c_WJJBSJ_WJWH--�ļ��ĺ�
      ,c.BT as c_WJJBSJ_BT--����
      ,c.ZTC as c_WJJBSJ_ZTC--�����
      ,c.MJM as c_WJJBSJ_MJM--�ܼ���
      ,cb.HYPYDM as c_WJJBSJ_MJM_HYPYDM--����ƴ������
      ,cb.HZDM as c_WJJBSJ_MJM_HZDM--���ִ���
      ,cb.MC as c_WJJBSJ_MJM_MC--����
      ,c.JJCDM as c_WJJBSJ_JJCDM--�����̶���
      ,cc.MC as c_WJJBSJ_JJCDM_MC--����
      ,c.YS as c_WJJBSJ_YS--ҳ��
      ,c.WJFLM as c_WJJBSJ_WJFLM--�ļ�������
      ,cd.MC as c_WJJBSJ_WJFLM_MC--����
      ,cd.SM as c_WJJBSJ_WJFLM_SM--˵��
      ,c.ZW as c_WJJBSJ_ZW--����
      ,c.FJ as c_WJJBSJ_FJ--����
      ,c.FWRQ as c_WJJBSJ_FWRQ--��������
      ,c.CSDW as c_WJJBSJ_CSDW--���͵�λ
      ,d.SCHOOLID as d_JZGJBSJ_SCHOOLID--ѧУ��
      ,d.GH as d_JZGJBSJ_GH--����
      ,d.XM as d_JZGJBSJ_XM--����
      ,d.YWXM as d_JZGJBSJ_YWXM--Ӣ������
      ,d.XMPY as d_JZGJBSJ_XMPY--����ƴ��
      ,d.CYM as d_JZGJBSJ_CYM--������
      ,d.SFZJLXM as d_JZGJBSJ_SFZJLXM--���֤��������
      ,db.MC as d_JZGJBSJ_SFZJLXM_MC--����
      ,d.SFZJH as d_JZGJBSJ_SFZJH--���֤����
      ,d.CSRQ as d_JZGJBSJ_CSRQ--��������
      ,d.XBM as d_JZGJBSJ_XBM--�Ա���
      ,dc.MC as d_JZGJBSJ_XBM_MC--����
      ,d.MZM as d_JZGJBSJ_MZM--������
      ,dd.MZMC as d_JZGJBSJ_MZM_MZMC--��������
      ,dd.ZMDM as d_JZGJBSJ_MZM_ZMDM--��ĸ����
      ,d.XXM as d_JZGJBSJ_XXM--Ѫ����
      ,de.MC as d_JZGJBSJ_XXM_MC--����
      ,de.JC as d_JZGJBSJ_XXM_JC--���
      ,d.JKZKM as d_JZGJBSJ_JKZKM--����״����
      ,df.MC as d_JZGJBSJ_JKZKM_MC--����
      ,df.SM as d_JZGJBSJ_JKZKM_SM--˵��
      ,d.HYZTM as d_JZGJBSJ_HYZTM--����״̬��
      ,dg.MC as d_JZGJBSJ_HYZTM_MC--����
      ,d.ZZMMM as d_JZGJBSJ_ZZMMM--������ò��
      ,dh.MC as d_JZGJBSJ_ZZMMM_MC--����
      ,dh.JC as d_JZGJBSJ_ZZMMM_JC--���
      ,d.GATQWM as d_JZGJBSJ_GATQWM--�۰�̨������
      ,di.MC as d_JZGJBSJ_GATQWM_MC--����
      ,di.SM as d_JZGJBSJ_GATQWM_SM--˵��
      ,d.JG as d_JZGJBSJ_JG--����
      ,d.GJDQM as d_JZGJBSJ_GJDQM--����/������
      ,dj.GJDQMCJC as d_JZGJBSJ_GJDQM_GJDQMCJC--����/�������Ƽ��
      ,dj.EZMDM as d_JZGJBSJ_GJDQM_EZMDM--����ĸ����
      ,dj.SZMDM as d_JZGJBSJ_GJDQM_SZMDM--����ĸ����
      ,d.CSDXZQHM as d_JZGJBSJ_CSDXZQHM--����������������
      ,dk.MC as d_JZGJBSJ_CSDXZQHM_MC--����
      ,d.XYZJM as d_JZGJBSJ_XYZJM--�����ڽ���
      ,dl.MC as d_JZGJBSJ_XYZJM_MC--����
      ,d.JZGHKSZDXZQHM as d_JZGJBSJ_JZGHKSZDXZQHM--��ְ���������ڵ�����������
      ,dm.MC as d_JZGJBSJ_JZGHKSZDXZQHM_MC--����
      ,d.HKLBM as d_JZGJBSJ_HKLBM--���������
      ,dn.MC as d_JZGJBSJ_HKLBM_MC--����
      ,d.DQZZ as d_JZGJBSJ_DQZZ--��ǰסַ
      ,d.DQZZYZBM as d_JZGJBSJ_DQZZYZBM--��ǰסַ��������
      ,d.CJGZNY as d_JZGJBSJ_CJGZNY--�μӹ�������
      ,d.CJNY as d_JZGJBSJ_CJNY--�ӽ�����
      ,d.LXNY as d_JZGJBSJ_LXNY--��У����
      ,d.BZLBM as d_JZGJBSJ_BZLBM--���������
      ,do.MC as d_JZGJBSJ_BZLBM_MC--����
      ,d.JZGLBM as d_JZGJBSJ_JZGLBM--��ְ�������
      ,dp.MC as d_JZGJBSJ_JZGLBM_MC--����
      ,dp.SM as d_JZGJBSJ_JZGLBM_SM--˵��
      ,d.GWLBM as d_JZGJBSJ_GWLBM--��λ�����
      ,dq.MC as d_JZGJBSJ_GWLBM_MC--����
      ,d.SFJZJS as d_JZGJBSJ_SFJZJS--�Ƿ��ְ��ʦ
      ,dr.MC as d_JZGJBSJ_SFJZJS_MC--����
      ,d.SFSSXJS as d_JZGJBSJ_SFSSXJS--�Ƿ�˫ʦ�ͽ�
      ,ds.MC as d_JZGJBSJ_SFSSXJS_MC--����
      ,d.ZP as d_JZGJBSJ_ZP--��Ƭ(·��)
      ,d.DQZTM as d_JZGJBSJ_DQZTM--��ǰ״̬��
      ,dt.MC as d_JZGJBSJ_DQZTM_MC--����
      ,e.SCHOOLID as e_JZGJBSJ_SCHOOLID--ѧУ��
      ,e.GH as e_JZGJBSJ_GH--����
      ,e.XM as e_JZGJBSJ_XM--����
      ,e.YWXM as e_JZGJBSJ_YWXM--Ӣ������
      ,e.XMPY as e_JZGJBSJ_XMPY--����ƴ��
      ,e.CYM as e_JZGJBSJ_CYM--������
      ,e.SFZJLXM as e_JZGJBSJ_SFZJLXM--���֤��������
      ,eb.MC as e_JZGJBSJ_SFZJLXM_MC--����
      ,e.SFZJH as e_JZGJBSJ_SFZJH--���֤����
      ,e.CSRQ as e_JZGJBSJ_CSRQ--��������
      ,e.XBM as e_JZGJBSJ_XBM--�Ա���
      ,ec.MC as e_JZGJBSJ_XBM_MC--����
      ,e.MZM as e_JZGJBSJ_MZM--������
      ,ed.MZMC as e_JZGJBSJ_MZM_MZMC--��������
      ,ed.ZMDM as e_JZGJBSJ_MZM_ZMDM--��ĸ����
      ,e.XXM as e_JZGJBSJ_XXM--Ѫ����
      ,ee.MC as e_JZGJBSJ_XXM_MC--����
      ,ee.JC as e_JZGJBSJ_XXM_JC--���
      ,e.JKZKM as e_JZGJBSJ_JKZKM--����״����
      ,ef.MC as e_JZGJBSJ_JKZKM_MC--����
      ,ef.SM as e_JZGJBSJ_JKZKM_SM--˵��
      ,e.HYZTM as e_JZGJBSJ_HYZTM--����״̬��
      ,eg.MC as e_JZGJBSJ_HYZTM_MC--����
      ,e.ZZMMM as e_JZGJBSJ_ZZMMM--������ò��
      ,eh.MC as e_JZGJBSJ_ZZMMM_MC--����
      ,eh.JC as e_JZGJBSJ_ZZMMM_JC--���
      ,e.GATQWM as e_JZGJBSJ_GATQWM--�۰�̨������
      ,ei.MC as e_JZGJBSJ_GATQWM_MC--����
      ,ei.SM as e_JZGJBSJ_GATQWM_SM--˵��
      ,e.JG as e_JZGJBSJ_JG--����
      ,e.GJDQM as e_JZGJBSJ_GJDQM--����/������
      ,ej.GJDQMCJC as e_JZGJBSJ_GJDQM_GJDQMCJC--����/�������Ƽ��
      ,ej.EZMDM as e_JZGJBSJ_GJDQM_EZMDM--����ĸ����
      ,ej.SZMDM as e_JZGJBSJ_GJDQM_SZMDM--����ĸ����
      ,e.CSDXZQHM as e_JZGJBSJ_CSDXZQHM--����������������
      ,ek.MC as e_JZGJBSJ_CSDXZQHM_MC--����
      ,e.XYZJM as e_JZGJBSJ_XYZJM--�����ڽ���
      ,el.MC as e_JZGJBSJ_XYZJM_MC--����
      ,e.JZGHKSZDXZQHM as e_JZGJBSJ_JZGHKSZDXZQHM--��ְ���������ڵ�����������
      ,em.MC as e_JZGJBSJ_JZGHKSZDXZQHM_MC--����
      ,e.HKLBM as e_JZGJBSJ_HKLBM--���������
      ,en.MC as e_JZGJBSJ_HKLBM_MC--����
      ,e.DQZZ as e_JZGJBSJ_DQZZ--��ǰסַ
      ,e.DQZZYZBM as e_JZGJBSJ_DQZZYZBM--��ǰסַ��������
      ,e.CJGZNY as e_JZGJBSJ_CJGZNY--�μӹ�������
      ,e.CJNY as e_JZGJBSJ_CJNY--�ӽ�����
      ,e.LXNY as e_JZGJBSJ_LXNY--��У����
      ,e.BZLBM as e_JZGJBSJ_BZLBM--���������
      ,eo.MC as e_JZGJBSJ_BZLBM_MC--����
      ,e.JZGLBM as e_JZGJBSJ_JZGLBM--��ְ�������
      ,ep.MC as e_JZGJBSJ_JZGLBM_MC--����
      ,ep.SM as e_JZGJBSJ_JZGLBM_SM--˵��
      ,e.GWLBM as e_JZGJBSJ_GWLBM--��λ�����
      ,eq.MC as e_JZGJBSJ_GWLBM_MC--����
      ,e.SFJZJS as e_JZGJBSJ_SFJZJS--�Ƿ��ְ��ʦ
      ,er.MC as e_JZGJBSJ_SFJZJS_MC--����
      ,e.SFSSXJS as e_JZGJBSJ_SFSSXJS--�Ƿ�˫ʦ�ͽ�
      ,es.MC as e_JZGJBSJ_SFSSXJS_MC--����
      ,e.ZP as e_JZGJBSJ_ZP--��Ƭ(·��)
      ,e.DQZTM as e_JZGJBSJ_DQZTM--��ǰ״̬��
      ,et.MC as e_JZGJBSJ_DQZTM_MC--����
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
      ,i.MC as i_FSFS_MC--����
      ,j.MC as j_GWFZFS_MC--����

FROM dbo.EDU_ZZBG_03_01_FWCL AS a LEFT OUTER JOIN
      dbo.EDU_ZZXX_01_01_ZZXX AS b ON a.SCHOOLID = b.ID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZZBG_01_01_WJJBSJ AS c ON a.WJID = c.ID /*�ļ�ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS d ON a.NGRID = d.ID /*�����ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS e ON a.QFRID = e.ID /*ǩ����ID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS f ON a.DJRID = f.ID /*�Ǽ���ID*/ AND a.SCHOOLID = f.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS g ON a.DZRID = g.ID /*������ID*/ AND a.SCHOOLID = g.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS h ON a.JDRID = h.ID /*У����ID*/ AND a.SCHOOLID = h.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_FSFS AS i ON a.FSFSM = i.DM /*���ͷ�ʽ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWFZFS AS j ON a.FZFSM = j.DM /*��װ��ʽ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bb ON b.XXJBZM = bb.DM /*ѧУ�ٰ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bc ON b.XXZGBMM = bc.DM /*ѧУ���ܲ�����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS bd ON b.XZQHM = bd.DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_PGQK AS be ON b.XXPGLX = be.DM /*ѧУ��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_WXBMZJ AS cb ON c.MJM = cb.DM /*�ܼ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_JJCD AS cc ON c.JJCDM = cc.DM /*�����̶���*/ LEFT OUTER JOIN
      dbo.EDU_JY_WJFL AS cd ON c.WJFLM = cd.DM /*�ļ�������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS db ON d.SFZJLXM = db.DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS dc ON d.XBM = dc.DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS dd ON d.MZM = dd.DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS de ON d.XXM = de.DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS df ON d.JKZKM = df.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS dg ON d.HYZTM = dg.DM /*����״̬��*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS dh ON d.ZZMMM = dh.DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS di ON d.GATQWM = di.DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS dj ON d.GJDQM = dj.DM /*����/������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS dk ON d.CSDXZQHM = dk.DM /*����������������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS dl ON d.XYZJM = dl.DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS dm ON d.JZGHKSZDXZQHM = dm.DM /*��ְ���������ڵ�����������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS dn ON d.HKLBM = dn.DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_BZLB AS do ON d.BZLBM = do.DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGLB AS dp ON d.JZGLBM = dp.DM /*��ְ�������*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWLB AS dq ON d.GWLBM = dq.DM /*��λ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS dr ON d.SFJZJS = dr.DM /*�Ƿ��ְ��ʦ*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS ds ON d.SFSSXJS = ds.DM /*�Ƿ�˫ʦ�ͽ�*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGDQZT AS dt ON d.DQZTM = dt.DM /*��ǰ״̬��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS eb ON e.SFZJLXM = eb.DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS ec ON e.XBM = ec.DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS ed ON e.MZM = ed.DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS ee ON e.XXM = ee.DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS ef ON e.JKZKM = ef.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS eg ON e.HYZTM = eg.DM /*����״̬��*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS eh ON e.ZZMMM = eh.DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS ei ON e.GATQWM = ei.DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS ej ON e.GJDQM = ej.DM /*����/������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS ek ON e.CSDXZQHM = ek.DM /*����������������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS el ON e.XYZJM = el.DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS em ON e.JZGHKSZDXZQHM = em.DM /*��ְ���������ڵ�����������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS en ON e.HKLBM = en.DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_BZLB AS eo ON e.BZLBM = eo.DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGLB AS ep ON e.JZGLBM = ep.DM /*��ְ�������*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWLB AS eq ON e.GWLBM = eq.DM /*��λ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS er ON e.SFJZJS = er.DM /*�Ƿ��ְ��ʦ*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS es ON e.SFSSXJS = es.DM /*�Ƿ�˫ʦ�ͽ�*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGDQZT AS et ON e.DQZTM = et.DM /*��ǰ״̬��*/ LEFT OUTER JOIN
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
