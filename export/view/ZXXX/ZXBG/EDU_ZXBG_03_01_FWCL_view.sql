
--���Ĵ��������
CREATE VIEW [dbo].[VIEW_EDU_ZXBG_03_01_FWCL_DISP]
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
      ,b.XXDM as b_ZXXX_XXDM--ѧУ����
      ,b.XXMC as b_ZXXX_XXMC--ѧУ����
      ,b.XXYWMC as b_ZXXX_XXYWMC--ѧУӢ������
      ,b.XXDZ as b_ZXXX_XXDZ--ѧУ��ַ
      ,b.XXYZBM as b_ZXXX_XXYZBM--ѧУ��������
      ,b.XZQHM as b_ZXXX_XZQHM--����������
      ,b.JXNY as b_ZXXX_JXNY--��У����
      ,b.XQR as b_ZXXX_XQR--У����
      ,b.XXBXLXM as b_ZXXX_XXBXLXM--ѧУ��ѧ������
      ,b.XXZGBMM as b_ZXXX_XXZGBMM--ѧУ���ܲ�����
      ,b.FDDBRH as b_ZXXX_FDDBRH--���������˺�
      ,b.FRZSH as b_ZXXX_FRZSH--����֤���
      ,b.XZGH as b_ZXXX_XZGH--У������
      ,b.XZXM as b_ZXXX_XZXM--У������
      ,b.DWFZRH as b_ZXXX_DWFZRH--��ί�����˺�
      ,b.ZZJGM as b_ZXXX_ZZJGM--��֯������
      ,b.LXDH as b_ZXXX_LXDH--��ϵ�绰
      ,b.CZDH as b_ZXXX_CZDH--����绰
      ,b.DZXX as b_ZXXX_DZXX--��������
      ,b.ZYDZ as b_ZXXX_ZYDZ--��ҳ��ַ
      ,b.LSYG as b_ZXXX_LSYG--��ʷ�ظ�
      ,b.XXBBM as b_ZXXX_XXBBM--ѧУ�����
      ,b.SSZGDWM as b_ZXXX_SSZGDWM--�������ܵ�λ��
      ,b.SZDCXLXM as b_ZXXX_SZDCXLXM--���ڵس���������
      ,b.SZDJJSXM as b_ZXXX_SZDJJSXM--���ڵؾ���������
      ,b.SZDMZSX as b_ZXXX_SZDMZSX--���ڵ���������
      ,b.XXXZ as b_ZXXX_XXXZ--Сѧѧ��
      ,b.XXRXNL as b_ZXXX_XXRXNL--Сѧ��ѧ����
      ,b.CZXZ as b_ZXXX_CZXZ--����ѧ��
      ,b.CZRXNL as b_ZXXX_CZRXNL--������ѧ����
      ,b.GZXZ as b_ZXXX_GZXZ--����ѧ��
      ,b.ZJXYYM as b_ZXXX_ZJXYYM--����ѧ������
      ,b.FJXYYM as b_ZXXX_FJXYYM--����ѧ������
      ,b.ZSBJ as b_ZXXX_ZSBJ--�����뾶
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
      ,d.XBM as d_JZGJBSJ_XBM--�Ա���
      ,db.MC as d_JZGJBSJ_XBM_MC--����
      ,d.CSRQ as d_JZGJBSJ_CSRQ--��������
      ,d.CSDM as d_JZGJBSJ_CSDM--��������
      ,dc.MC as d_JZGJBSJ_CSDM_MC--����
      ,d.JG as d_JZGJBSJ_JG--����
      ,d.MZM as d_JZGJBSJ_MZM--������
      ,dd.MZMC as d_JZGJBSJ_MZM_MZMC--��������
      ,dd.ZMDM as d_JZGJBSJ_MZM_ZMDM--��ĸ����
      ,d.GJDQM as d_JZGJBSJ_GJDQM--����/������
      ,de.GJDQMCJC as d_JZGJBSJ_GJDQM_GJDQMCJC--����/�������Ƽ��
      ,de.EZMDM as d_JZGJBSJ_GJDQM_EZMDM--����ĸ����
      ,de.SZMDM as d_JZGJBSJ_GJDQM_SZMDM--����ĸ����
      ,d.SFZJLXM as d_JZGJBSJ_SFZJLXM--���֤��������
      ,df.MC as d_JZGJBSJ_SFZJLXM_MC--����
      ,d.SFZJH as d_JZGJBSJ_SFZJH--���֤����
      ,d.HYZKM as d_JZGJBSJ_HYZKM--����״����
      ,d.GATQWM as d_JZGJBSJ_GATQWM--�۰�̨������
      ,dg.MC as d_JZGJBSJ_GATQWM_MC--����
      ,dg.SM as d_JZGJBSJ_GATQWM_SM--˵��
      ,d.ZZMMM as d_JZGJBSJ_ZZMMM--������ò��
      ,dh.MC as d_JZGJBSJ_ZZMMM_MC--����
      ,dh.JC as d_JZGJBSJ_ZZMMM_JC--���
      ,d.JKZKM as d_JZGJBSJ_JKZKM--����״����
      ,di.MC as d_JZGJBSJ_JKZKM_MC--����
      ,di.SM as d_JZGJBSJ_JKZKM_SM--˵��
      ,d.XYZJM as d_JZGJBSJ_XYZJM--�����ڽ���
      ,dj.MC as d_JZGJBSJ_XYZJM_MC--����
      ,d.XXM as d_JZGJBSJ_XXM--Ѫ����
      ,dk.MC as d_JZGJBSJ_XXM_MC--����
      ,dk.JC as d_JZGJBSJ_XXM_JC--���
      ,d.ZP as d_JZGJBSJ_ZP--��Ƭ
      ,d.SFZJYXQ as d_JZGJBSJ_SFZJYXQ--���֤����Ч��
      ,d.JGH as d_JZGJBSJ_JGH--������
      ,d.JTZZ as d_JZGJBSJ_JTZZ--��ͥסַ
      ,d.XZZ as d_JZGJBSJ_XZZ--��סַ
      ,d.HKSZD as d_JZGJBSJ_HKSZD--�������ڵ�
      ,d.HKXZM as d_JZGJBSJ_HKXZM--����������
      ,d.XLM as d_JZGJBSJ_XLM--ѧ����
      ,d.GZNY as d_JZGJBSJ_GZNY--�μӹ�������
      ,d.LXNY as d_JZGJBSJ_LXNY--��У����
      ,d.CJNY as d_JZGJBSJ_CJNY--�ӽ�����
      ,d.BZLBM as d_JZGJBSJ_BZLBM--���������
      ,d.DABH as d_JZGJBSJ_DABH--�������
      ,d.DAWB as d_JZGJBSJ_DAWB--�����ı�
      ,d.TXDZ as d_JZGJBSJ_TXDZ--ͨ�ŵ�ַ
      ,d.LXDH as d_JZGJBSJ_LXDH--��ϵ�绰
      ,d.YZBM as d_JZGJBSJ_YZBM--��������
      ,d.DZXX as d_JZGJBSJ_DZXX--��������
      ,d.ZYDZ as d_JZGJBSJ_ZYDZ--��ҳ��ַ
      ,d.TC as d_JZGJBSJ_TC--�س�
      ,d.GWZYM as d_JZGJBSJ_GWZYM--��λְҵ��
      ,d.ZYRKXD as d_JZGJBSJ_ZYRKXD--��Ҫ�ο�ѧ��
      ,e.SCHOOLID as e_JZGJBSJ_SCHOOLID--ѧУ��
      ,e.GH as e_JZGJBSJ_GH--����
      ,e.XM as e_JZGJBSJ_XM--����
      ,e.YWXM as e_JZGJBSJ_YWXM--Ӣ������
      ,e.XMPY as e_JZGJBSJ_XMPY--����ƴ��
      ,e.CYM as e_JZGJBSJ_CYM--������
      ,e.XBM as e_JZGJBSJ_XBM--�Ա���
      ,eb.MC as e_JZGJBSJ_XBM_MC--����
      ,e.CSRQ as e_JZGJBSJ_CSRQ--��������
      ,e.CSDM as e_JZGJBSJ_CSDM--��������
      ,ec.MC as e_JZGJBSJ_CSDM_MC--����
      ,e.JG as e_JZGJBSJ_JG--����
      ,e.MZM as e_JZGJBSJ_MZM--������
      ,ed.MZMC as e_JZGJBSJ_MZM_MZMC--��������
      ,ed.ZMDM as e_JZGJBSJ_MZM_ZMDM--��ĸ����
      ,e.GJDQM as e_JZGJBSJ_GJDQM--����/������
      ,ee.GJDQMCJC as e_JZGJBSJ_GJDQM_GJDQMCJC--����/�������Ƽ��
      ,ee.EZMDM as e_JZGJBSJ_GJDQM_EZMDM--����ĸ����
      ,ee.SZMDM as e_JZGJBSJ_GJDQM_SZMDM--����ĸ����
      ,e.SFZJLXM as e_JZGJBSJ_SFZJLXM--���֤��������
      ,ef.MC as e_JZGJBSJ_SFZJLXM_MC--����
      ,e.SFZJH as e_JZGJBSJ_SFZJH--���֤����
      ,e.HYZKM as e_JZGJBSJ_HYZKM--����״����
      ,e.GATQWM as e_JZGJBSJ_GATQWM--�۰�̨������
      ,eg.MC as e_JZGJBSJ_GATQWM_MC--����
      ,eg.SM as e_JZGJBSJ_GATQWM_SM--˵��
      ,e.ZZMMM as e_JZGJBSJ_ZZMMM--������ò��
      ,eh.MC as e_JZGJBSJ_ZZMMM_MC--����
      ,eh.JC as e_JZGJBSJ_ZZMMM_JC--���
      ,e.JKZKM as e_JZGJBSJ_JKZKM--����״����
      ,ei.MC as e_JZGJBSJ_JKZKM_MC--����
      ,ei.SM as e_JZGJBSJ_JKZKM_SM--˵��
      ,e.XYZJM as e_JZGJBSJ_XYZJM--�����ڽ���
      ,ej.MC as e_JZGJBSJ_XYZJM_MC--����
      ,e.XXM as e_JZGJBSJ_XXM--Ѫ����
      ,ek.MC as e_JZGJBSJ_XXM_MC--����
      ,ek.JC as e_JZGJBSJ_XXM_JC--���
      ,e.ZP as e_JZGJBSJ_ZP--��Ƭ
      ,e.SFZJYXQ as e_JZGJBSJ_SFZJYXQ--���֤����Ч��
      ,e.JGH as e_JZGJBSJ_JGH--������
      ,e.JTZZ as e_JZGJBSJ_JTZZ--��ͥסַ
      ,e.XZZ as e_JZGJBSJ_XZZ--��סַ
      ,e.HKSZD as e_JZGJBSJ_HKSZD--�������ڵ�
      ,e.HKXZM as e_JZGJBSJ_HKXZM--����������
      ,e.XLM as e_JZGJBSJ_XLM--ѧ����
      ,e.GZNY as e_JZGJBSJ_GZNY--�μӹ�������
      ,e.LXNY as e_JZGJBSJ_LXNY--��У����
      ,e.CJNY as e_JZGJBSJ_CJNY--�ӽ�����
      ,e.BZLBM as e_JZGJBSJ_BZLBM--���������
      ,e.DABH as e_JZGJBSJ_DABH--�������
      ,e.DAWB as e_JZGJBSJ_DAWB--�����ı�
      ,e.TXDZ as e_JZGJBSJ_TXDZ--ͨ�ŵ�ַ
      ,e.LXDH as e_JZGJBSJ_LXDH--��ϵ�绰
      ,e.YZBM as e_JZGJBSJ_YZBM--��������
      ,e.DZXX as e_JZGJBSJ_DZXX--��������
      ,e.ZYDZ as e_JZGJBSJ_ZYDZ--��ҳ��ַ
      ,e.TC as e_JZGJBSJ_TC--�س�
      ,e.GWZYM as e_JZGJBSJ_GWZYM--��λְҵ��
      ,e.ZYRKXD as e_JZGJBSJ_ZYRKXD--��Ҫ�ο�ѧ��
      ,f.SCHOOLID as f_JZGJBSJ_SCHOOLID--ѧУ��
      ,f.GH as f_JZGJBSJ_GH--����
      ,f.XM as f_JZGJBSJ_XM--����
      ,f.YWXM as f_JZGJBSJ_YWXM--Ӣ������
      ,f.XMPY as f_JZGJBSJ_XMPY--����ƴ��
      ,f.CYM as f_JZGJBSJ_CYM--������
      ,f.XBM as f_JZGJBSJ_XBM--�Ա���
      ,fb.MC as f_JZGJBSJ_XBM_MC--����
      ,f.CSRQ as f_JZGJBSJ_CSRQ--��������
      ,f.CSDM as f_JZGJBSJ_CSDM--��������
      ,fc.MC as f_JZGJBSJ_CSDM_MC--����
      ,f.JG as f_JZGJBSJ_JG--����
      ,f.MZM as f_JZGJBSJ_MZM--������
      ,fd.MZMC as f_JZGJBSJ_MZM_MZMC--��������
      ,fd.ZMDM as f_JZGJBSJ_MZM_ZMDM--��ĸ����
      ,f.GJDQM as f_JZGJBSJ_GJDQM--����/������
      ,fe.GJDQMCJC as f_JZGJBSJ_GJDQM_GJDQMCJC--����/�������Ƽ��
      ,fe.EZMDM as f_JZGJBSJ_GJDQM_EZMDM--����ĸ����
      ,fe.SZMDM as f_JZGJBSJ_GJDQM_SZMDM--����ĸ����
      ,f.SFZJLXM as f_JZGJBSJ_SFZJLXM--���֤��������
      ,ff.MC as f_JZGJBSJ_SFZJLXM_MC--����
      ,f.SFZJH as f_JZGJBSJ_SFZJH--���֤����
      ,f.HYZKM as f_JZGJBSJ_HYZKM--����״����
      ,f.GATQWM as f_JZGJBSJ_GATQWM--�۰�̨������
      ,fg.MC as f_JZGJBSJ_GATQWM_MC--����
      ,fg.SM as f_JZGJBSJ_GATQWM_SM--˵��
      ,f.ZZMMM as f_JZGJBSJ_ZZMMM--������ò��
      ,fh.MC as f_JZGJBSJ_ZZMMM_MC--����
      ,fh.JC as f_JZGJBSJ_ZZMMM_JC--���
      ,f.JKZKM as f_JZGJBSJ_JKZKM--����״����
      ,fi.MC as f_JZGJBSJ_JKZKM_MC--����
      ,fi.SM as f_JZGJBSJ_JKZKM_SM--˵��
      ,f.XYZJM as f_JZGJBSJ_XYZJM--�����ڽ���
      ,fj.MC as f_JZGJBSJ_XYZJM_MC--����
      ,f.XXM as f_JZGJBSJ_XXM--Ѫ����
      ,fk.MC as f_JZGJBSJ_XXM_MC--����
      ,fk.JC as f_JZGJBSJ_XXM_JC--���
      ,f.ZP as f_JZGJBSJ_ZP--��Ƭ
      ,f.SFZJYXQ as f_JZGJBSJ_SFZJYXQ--���֤����Ч��
      ,f.JGH as f_JZGJBSJ_JGH--������
      ,f.JTZZ as f_JZGJBSJ_JTZZ--��ͥסַ
      ,f.XZZ as f_JZGJBSJ_XZZ--��סַ
      ,f.HKSZD as f_JZGJBSJ_HKSZD--�������ڵ�
      ,f.HKXZM as f_JZGJBSJ_HKXZM--����������
      ,f.XLM as f_JZGJBSJ_XLM--ѧ����
      ,f.GZNY as f_JZGJBSJ_GZNY--�μӹ�������
      ,f.LXNY as f_JZGJBSJ_LXNY--��У����
      ,f.CJNY as f_JZGJBSJ_CJNY--�ӽ�����
      ,f.BZLBM as f_JZGJBSJ_BZLBM--���������
      ,f.DABH as f_JZGJBSJ_DABH--�������
      ,f.DAWB as f_JZGJBSJ_DAWB--�����ı�
      ,f.TXDZ as f_JZGJBSJ_TXDZ--ͨ�ŵ�ַ
      ,f.LXDH as f_JZGJBSJ_LXDH--��ϵ�绰
      ,f.YZBM as f_JZGJBSJ_YZBM--��������
      ,f.DZXX as f_JZGJBSJ_DZXX--��������
      ,f.ZYDZ as f_JZGJBSJ_ZYDZ--��ҳ��ַ
      ,f.TC as f_JZGJBSJ_TC--�س�
      ,f.GWZYM as f_JZGJBSJ_GWZYM--��λְҵ��
      ,f.ZYRKXD as f_JZGJBSJ_ZYRKXD--��Ҫ�ο�ѧ��
      ,g.SCHOOLID as g_JZGJBSJ_SCHOOLID--ѧУ��
      ,g.GH as g_JZGJBSJ_GH--����
      ,g.XM as g_JZGJBSJ_XM--����
      ,g.YWXM as g_JZGJBSJ_YWXM--Ӣ������
      ,g.XMPY as g_JZGJBSJ_XMPY--����ƴ��
      ,g.CYM as g_JZGJBSJ_CYM--������
      ,g.XBM as g_JZGJBSJ_XBM--�Ա���
      ,gb.MC as g_JZGJBSJ_XBM_MC--����
      ,g.CSRQ as g_JZGJBSJ_CSRQ--��������
      ,g.CSDM as g_JZGJBSJ_CSDM--��������
      ,gc.MC as g_JZGJBSJ_CSDM_MC--����
      ,g.JG as g_JZGJBSJ_JG--����
      ,g.MZM as g_JZGJBSJ_MZM--������
      ,gd.MZMC as g_JZGJBSJ_MZM_MZMC--��������
      ,gd.ZMDM as g_JZGJBSJ_MZM_ZMDM--��ĸ����
      ,g.GJDQM as g_JZGJBSJ_GJDQM--����/������
      ,ge.GJDQMCJC as g_JZGJBSJ_GJDQM_GJDQMCJC--����/�������Ƽ��
      ,ge.EZMDM as g_JZGJBSJ_GJDQM_EZMDM--����ĸ����
      ,ge.SZMDM as g_JZGJBSJ_GJDQM_SZMDM--����ĸ����
      ,g.SFZJLXM as g_JZGJBSJ_SFZJLXM--���֤��������
      ,gf.MC as g_JZGJBSJ_SFZJLXM_MC--����
      ,g.SFZJH as g_JZGJBSJ_SFZJH--���֤����
      ,g.HYZKM as g_JZGJBSJ_HYZKM--����״����
      ,g.GATQWM as g_JZGJBSJ_GATQWM--�۰�̨������
      ,gg.MC as g_JZGJBSJ_GATQWM_MC--����
      ,gg.SM as g_JZGJBSJ_GATQWM_SM--˵��
      ,g.ZZMMM as g_JZGJBSJ_ZZMMM--������ò��
      ,gh.MC as g_JZGJBSJ_ZZMMM_MC--����
      ,gh.JC as g_JZGJBSJ_ZZMMM_JC--���
      ,g.JKZKM as g_JZGJBSJ_JKZKM--����״����
      ,gi.MC as g_JZGJBSJ_JKZKM_MC--����
      ,gi.SM as g_JZGJBSJ_JKZKM_SM--˵��
      ,g.XYZJM as g_JZGJBSJ_XYZJM--�����ڽ���
      ,gj.MC as g_JZGJBSJ_XYZJM_MC--����
      ,g.XXM as g_JZGJBSJ_XXM--Ѫ����
      ,gk.MC as g_JZGJBSJ_XXM_MC--����
      ,gk.JC as g_JZGJBSJ_XXM_JC--���
      ,g.ZP as g_JZGJBSJ_ZP--��Ƭ
      ,g.SFZJYXQ as g_JZGJBSJ_SFZJYXQ--���֤����Ч��
      ,g.JGH as g_JZGJBSJ_JGH--������
      ,g.JTZZ as g_JZGJBSJ_JTZZ--��ͥסַ
      ,g.XZZ as g_JZGJBSJ_XZZ--��סַ
      ,g.HKSZD as g_JZGJBSJ_HKSZD--�������ڵ�
      ,g.HKXZM as g_JZGJBSJ_HKXZM--����������
      ,g.XLM as g_JZGJBSJ_XLM--ѧ����
      ,g.GZNY as g_JZGJBSJ_GZNY--�μӹ�������
      ,g.LXNY as g_JZGJBSJ_LXNY--��У����
      ,g.CJNY as g_JZGJBSJ_CJNY--�ӽ�����
      ,g.BZLBM as g_JZGJBSJ_BZLBM--���������
      ,g.DABH as g_JZGJBSJ_DABH--�������
      ,g.DAWB as g_JZGJBSJ_DAWB--�����ı�
      ,g.TXDZ as g_JZGJBSJ_TXDZ--ͨ�ŵ�ַ
      ,g.LXDH as g_JZGJBSJ_LXDH--��ϵ�绰
      ,g.YZBM as g_JZGJBSJ_YZBM--��������
      ,g.DZXX as g_JZGJBSJ_DZXX--��������
      ,g.ZYDZ as g_JZGJBSJ_ZYDZ--��ҳ��ַ
      ,g.TC as g_JZGJBSJ_TC--�س�
      ,g.GWZYM as g_JZGJBSJ_GWZYM--��λְҵ��
      ,g.ZYRKXD as g_JZGJBSJ_ZYRKXD--��Ҫ�ο�ѧ��
      ,h.SCHOOLID as h_JZGJBSJ_SCHOOLID--ѧУ��
      ,h.GH as h_JZGJBSJ_GH--����
      ,h.XM as h_JZGJBSJ_XM--����
      ,h.YWXM as h_JZGJBSJ_YWXM--Ӣ������
      ,h.XMPY as h_JZGJBSJ_XMPY--����ƴ��
      ,h.CYM as h_JZGJBSJ_CYM--������
      ,h.XBM as h_JZGJBSJ_XBM--�Ա���
      ,hb.MC as h_JZGJBSJ_XBM_MC--����
      ,h.CSRQ as h_JZGJBSJ_CSRQ--��������
      ,h.CSDM as h_JZGJBSJ_CSDM--��������
      ,hc.MC as h_JZGJBSJ_CSDM_MC--����
      ,h.JG as h_JZGJBSJ_JG--����
      ,h.MZM as h_JZGJBSJ_MZM--������
      ,hd.MZMC as h_JZGJBSJ_MZM_MZMC--��������
      ,hd.ZMDM as h_JZGJBSJ_MZM_ZMDM--��ĸ����
      ,h.GJDQM as h_JZGJBSJ_GJDQM--����/������
      ,he.GJDQMCJC as h_JZGJBSJ_GJDQM_GJDQMCJC--����/�������Ƽ��
      ,he.EZMDM as h_JZGJBSJ_GJDQM_EZMDM--����ĸ����
      ,he.SZMDM as h_JZGJBSJ_GJDQM_SZMDM--����ĸ����
      ,h.SFZJLXM as h_JZGJBSJ_SFZJLXM--���֤��������
      ,hf.MC as h_JZGJBSJ_SFZJLXM_MC--����
      ,h.SFZJH as h_JZGJBSJ_SFZJH--���֤����
      ,h.HYZKM as h_JZGJBSJ_HYZKM--����״����
      ,h.GATQWM as h_JZGJBSJ_GATQWM--�۰�̨������
      ,hg.MC as h_JZGJBSJ_GATQWM_MC--����
      ,hg.SM as h_JZGJBSJ_GATQWM_SM--˵��
      ,h.ZZMMM as h_JZGJBSJ_ZZMMM--������ò��
      ,hh.MC as h_JZGJBSJ_ZZMMM_MC--����
      ,hh.JC as h_JZGJBSJ_ZZMMM_JC--���
      ,h.JKZKM as h_JZGJBSJ_JKZKM--����״����
      ,hi.MC as h_JZGJBSJ_JKZKM_MC--����
      ,hi.SM as h_JZGJBSJ_JKZKM_SM--˵��
      ,h.XYZJM as h_JZGJBSJ_XYZJM--�����ڽ���
      ,hj.MC as h_JZGJBSJ_XYZJM_MC--����
      ,h.XXM as h_JZGJBSJ_XXM--Ѫ����
      ,hk.MC as h_JZGJBSJ_XXM_MC--����
      ,hk.JC as h_JZGJBSJ_XXM_JC--���
      ,h.ZP as h_JZGJBSJ_ZP--��Ƭ
      ,h.SFZJYXQ as h_JZGJBSJ_SFZJYXQ--���֤����Ч��
      ,h.JGH as h_JZGJBSJ_JGH--������
      ,h.JTZZ as h_JZGJBSJ_JTZZ--��ͥסַ
      ,h.XZZ as h_JZGJBSJ_XZZ--��סַ
      ,h.HKSZD as h_JZGJBSJ_HKSZD--�������ڵ�
      ,h.HKXZM as h_JZGJBSJ_HKXZM--����������
      ,h.XLM as h_JZGJBSJ_XLM--ѧ����
      ,h.GZNY as h_JZGJBSJ_GZNY--�μӹ�������
      ,h.LXNY as h_JZGJBSJ_LXNY--��У����
      ,h.CJNY as h_JZGJBSJ_CJNY--�ӽ�����
      ,h.BZLBM as h_JZGJBSJ_BZLBM--���������
      ,h.DABH as h_JZGJBSJ_DABH--�������
      ,h.DAWB as h_JZGJBSJ_DAWB--�����ı�
      ,h.TXDZ as h_JZGJBSJ_TXDZ--ͨ�ŵ�ַ
      ,h.LXDH as h_JZGJBSJ_LXDH--��ϵ�绰
      ,h.YZBM as h_JZGJBSJ_YZBM--��������
      ,h.DZXX as h_JZGJBSJ_DZXX--��������
      ,h.ZYDZ as h_JZGJBSJ_ZYDZ--��ҳ��ַ
      ,h.TC as h_JZGJBSJ_TC--�س�
      ,h.GWZYM as h_JZGJBSJ_GWZYM--��λְҵ��
      ,h.ZYRKXD as h_JZGJBSJ_ZYRKXD--��Ҫ�ο�ѧ��
      ,i.MC as i_FSFS_MC--����
      ,j.MC as j_GWFZFS_MC--����

FROM dbo.EDU_ZXBG_03_01_FWCL AS a LEFT OUTER JOIN
      dbo.EDU_ZXXX_01_01_ZXXX AS b ON a.SCHOOLID = b.ID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZXBG_01_01_WJJBSJ AS c ON a.WJID = c.ID /*�ļ�ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZXJZ_01_01_JZGJBSJ AS d ON a.NGRID = d.ID /*�����ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZXJZ_01_01_JZGJBSJ AS e ON a.QFRID = e.ID /*ǩ����ID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZXJZ_01_01_JZGJBSJ AS f ON a.DJRID = f.ID /*�Ǽ���ID*/ AND a.SCHOOLID = f.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZXJZ_01_01_JZGJBSJ AS g ON a.DZRID = g.ID /*������ID*/ AND a.SCHOOLID = g.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZXJZ_01_01_JZGJBSJ AS h ON a.JDRID = h.ID /*У����ID*/ AND a.SCHOOLID = h.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_FSFS AS i ON a.FSFSM = i.DM /*���ͷ�ʽ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWFZFS AS j ON a.FZFSM = j.DM /*��װ��ʽ��*/ LEFT OUTER JOIN
      dbo.EDU_GB_WXBMZJ AS cb ON c.MJM = cb.DM /*�ܼ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_JJCD AS cc ON c.JJCDM = cc.DM /*�����̶���*/ LEFT OUTER JOIN
      dbo.EDU_JY_WJFL AS cd ON c.WJFLM = cd.DM /*�ļ�������*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS db ON d.XBM = db.DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS dc ON d.CSDM = dc.DM /*��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS dd ON d.MZM = dd.DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS de ON d.GJDQM = de.DM /*����/������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS df ON d.SFZJLXM = df.DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS dg ON d.GATQWM = dg.DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS dh ON d.ZZMMM = dh.DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS di ON d.JKZKM = di.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS dj ON d.XYZJM = dj.DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS dk ON d.XXM = dk.DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS eb ON e.XBM = eb.DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS ec ON e.CSDM = ec.DM /*��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS ed ON e.MZM = ed.DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS ee ON e.GJDQM = ee.DM /*����/������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS ef ON e.SFZJLXM = ef.DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS eg ON e.GATQWM = eg.DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS eh ON e.ZZMMM = eh.DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS ei ON e.JKZKM = ei.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS ej ON e.XYZJM = ej.DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS ek ON e.XXM = ek.DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS fb ON f.XBM = fb.DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS fc ON f.CSDM = fc.DM /*��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS fd ON f.MZM = fd.DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS fe ON f.GJDQM = fe.DM /*����/������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS ff ON f.SFZJLXM = ff.DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS fg ON f.GATQWM = fg.DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS fh ON f.ZZMMM = fh.DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS fi ON f.JKZKM = fi.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS fj ON f.XYZJM = fj.DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS fk ON f.XXM = fk.DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS gb ON g.XBM = gb.DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS gc ON g.CSDM = gc.DM /*��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS gd ON g.MZM = gd.DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS ge ON g.GJDQM = ge.DM /*����/������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS gf ON g.SFZJLXM = gf.DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS gg ON g.GATQWM = gg.DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS gh ON g.ZZMMM = gh.DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS gi ON g.JKZKM = gi.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS gj ON g.XYZJM = gj.DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS gk ON g.XXM = gk.DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS hb ON h.XBM = hb.DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS hc ON h.CSDM = hc.DM /*��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS hd ON h.MZM = hd.DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS he ON h.GJDQM = he.DM /*����/������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS hf ON h.SFZJLXM = hf.DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS hg ON h.GATQWM = hg.DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS hh ON h.ZZMMM = hh.DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS hi ON h.JKZKM = hi.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS hj ON h.XYZJM = hj.DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS hk ON h.XXM = hk.DM /*Ѫ����*/
GO
