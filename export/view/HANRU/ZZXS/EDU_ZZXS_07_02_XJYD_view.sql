
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
      ,b.SCHOOLID as b_XSXX_SCHOOLID--ѧ����Ϣ���ݱ� ѧУ��
      ,b.XH as b_XSXX_XH--ѧ����Ϣ���ݱ� ѧ��
      ,b.XM as b_XSXX_XM--ѧ����Ϣ���ݱ� ����
      ,b.YWXM as b_XSXX_YWXM--ѧ����Ϣ���ݱ� Ӣ������
      ,b.XMPY as b_XSXX_XMPY--ѧ����Ϣ���ݱ� ����ƴ��
      ,b.CYM as b_XSXX_CYM--ѧ����Ϣ���ݱ� ������
      ,b.SFZJLXM as b_XSXX_SFZJLXM--ѧ����Ϣ���ݱ� ���֤��������
      ,bb.MC as b_XSXX_SFZJLXM_MC--���֤�����ʹ���� ����
      ,b.SFZJH as b_XSXX_SFZJH--ѧ����Ϣ���ݱ� ���֤����
      ,b.XBM as b_XSXX_XBM--ѧ����Ϣ���ݱ� �Ա���
      ,bc.MC as b_XSXX_XBM_MC--�˵��Ա���� ����
      ,b.XXM as b_XSXX_XXM--ѧ����Ϣ���ݱ� Ѫ����
      ,bd.MC as b_XSXX_XXM_MC--Ѫ�ʹ���� ����
      ,bd.JC as b_XSXX_XXM_JC--Ѫ�ʹ���� ���
      ,b.CSRQ as b_XSXX_CSRQ--ѧ����Ϣ���ݱ� ��������
      ,b.CSDM as b_XSXX_CSDM--ѧ����Ϣ���ݱ� ��������
      ,be.MC as b_XSXX_CSDM_MC--�л����񹲺͹������������� ����
      ,b.JG as b_XSXX_JG--ѧ����Ϣ���ݱ� ����
      ,b.MZM as b_XSXX_MZM--ѧ����Ϣ���ݱ� ������
      ,bf.MZMC as b_XSXX_MZM_MZMC--�й����������Ƶ�������ĸƴд���ʹ��� ��������
      ,bf.ZMDM as b_XSXX_MZM_ZMDM--�й����������Ƶ�������ĸƴд���ʹ��� ��ĸ����
      ,b.HYZKM as b_XSXX_HYZKM--ѧ����Ϣ���ݱ� ����״����
      ,bg.MC as b_XSXX_HYZKM_MC--����״������ ����
      ,b.XYZJM as b_XSXX_XYZJM--ѧ����Ϣ���ݱ� �����ڽ���
      ,bh.MC as b_XSXX_XYZJM_MC--�ڽ��������� ����
      ,b.GATQWM as b_XSXX_GATQWM--ѧ����Ϣ���ݱ� �۰�̨������
      ,bi.MC as b_XSXX_GATQWM_MC--�۰�̨�������� ����
      ,bi.SM as b_XSXX_GATQWM_SM--�۰�̨�������� ˵��
      ,b.JKZKM as b_XSXX_JKZKM--ѧ����Ϣ���ݱ� ����״����
      ,bj.MC as b_XSXX_JKZKM_MC--����״��1λ���ִ��� ����
      ,bj.SM as b_XSXX_JKZKM_SM--����״��1λ���ִ��� ˵��
      ,b.ZZMMM as b_XSXX_ZZMMM--ѧ����Ϣ���ݱ� ������ò��
      ,bk.MC as b_XSXX_ZZMMM_MC--������ò���� ����
      ,bk.JC as b_XSXX_ZZMMM_JC--������ò���� ���
      ,b.HKSZDXZQHM as b_XSXX_HKSZDXZQHM--ѧ����Ϣ���ݱ� �������ڵ�����������
      ,bl.MC as b_XSXX_HKSZDXZQHM_MC--�л����񹲺͹������������� ����
      ,b.HKLBM as b_XSXX_HKLBM--ѧ����Ϣ���ݱ� ���������
      ,bm.MC as b_XSXX_HKLBM_MC--���������� ����
      ,b.SFSLDRK as b_XSXX_SFSLDRK--ѧ����Ϣ���ݱ� �Ƿ��������˿�
      ,bn.MC as b_XSXX_SFSLDRK_MC--�Ƿ��־����� ����
      ,b.GJDQM as b_XSXX_GJDQM--ѧ����Ϣ���ݱ� ����/����
      ,bo.GJDQMCJC as b_XSXX_GJDQM_GJDQMCJC--��������͵������ƴ��� ����/�������Ƽ��
      ,bo.EZMDM as b_XSXX_GJDQM_EZMDM--��������͵������ƴ��� ����ĸ����
      ,bo.SZMDM as b_XSXX_GJDQM_SZMDM--��������͵������ƴ��� ����ĸ����
      ,b.TC as b_XSXX_TC--ѧ����Ϣ���ݱ� �س�
      ,b.XSLXDH as b_XSXX_XSLXDH--ѧ����Ϣ���ݱ� ѧ����ϵ�绰
      ,b.WLDZ as b_XSXX_WLDZ--ѧ����Ϣ���ݱ� �����ַ
      ,b.JSTXH as b_XSXX_JSTXH--ѧ����Ϣ���ݱ� ��ʱͨѶ��
      ,b.DZXX as b_XSXX_DZXX--ѧ����Ϣ���ݱ� ��������
      ,b.ZP as b_XSXX_ZP--ѧ����Ϣ���ݱ� ��Ƭ(·��)
      ,c.SCHOOLNAME as c_SCHOOL_SCHOOLNAME--ѧУ���ñ� ѧУ����
      ,c.SCHOOLTYPE as c_SCHOOL_SCHOOLTYPE--ѧУ���ñ� ѧУ����
      ,c.XNID as c_SCHOOL_XNID--ѧУ���ñ� ѧ��ID
      ,c.XQID as c_SCHOOL_XQID--ѧУ���ñ� ѧ��ID
      ,c.MatchURL as c_SCHOOL_MatchURL--ѧУ���ñ� ƥ��url
      ,c.LogLevel as c_SCHOOL_LogLevel--ѧУ���ñ� ��־����
      ,d.MC as d_XJYDLB_MC--ѧ���춯������� ����
      ,e.MC as e_XJYDYY_MC--ѧ���춯ԭ������ ����
      ,f.SCHOOLID as f_JZGJBSJ_SCHOOLID--��ְ��������������� ѧУ��
      ,f.GH as f_JZGJBSJ_GH--��ְ��������������� ����
      ,f.XM as f_JZGJBSJ_XM--��ְ��������������� ����
      ,f.YWXM as f_JZGJBSJ_YWXM--��ְ��������������� Ӣ������
      ,f.XMPY as f_JZGJBSJ_XMPY--��ְ��������������� ����ƴ��
      ,f.CYM as f_JZGJBSJ_CYM--��ְ��������������� ������
      ,f.SFZJLXM as f_JZGJBSJ_SFZJLXM--��ְ��������������� ���֤��������
      ,fb.MC as f_JZGJBSJ_SFZJLXM_MC--���֤�����ʹ���� ����
      ,f.SFZJH as f_JZGJBSJ_SFZJH--��ְ��������������� ���֤����
      ,f.CSRQ as f_JZGJBSJ_CSRQ--��ְ��������������� ��������
      ,f.XBM as f_JZGJBSJ_XBM--��ְ��������������� �Ա���
      ,fc.MC as f_JZGJBSJ_XBM_MC--�˵��Ա���� ����
      ,f.MZM as f_JZGJBSJ_MZM--��ְ��������������� ������
      ,fd.MZMC as f_JZGJBSJ_MZM_MZMC--�й����������Ƶ�������ĸƴд���ʹ��� ��������
      ,fd.ZMDM as f_JZGJBSJ_MZM_ZMDM--�й����������Ƶ�������ĸƴд���ʹ��� ��ĸ����
      ,f.XXM as f_JZGJBSJ_XXM--��ְ��������������� Ѫ����
      ,fe.MC as f_JZGJBSJ_XXM_MC--Ѫ�ʹ���� ����
      ,fe.JC as f_JZGJBSJ_XXM_JC--Ѫ�ʹ���� ���
      ,f.JKZKM as f_JZGJBSJ_JKZKM--��ְ��������������� ����״����
      ,ff.MC as f_JZGJBSJ_JKZKM_MC--����״��1λ���ִ��� ����
      ,ff.SM as f_JZGJBSJ_JKZKM_SM--����״��1λ���ִ��� ˵��
      ,f.HYZTM as f_JZGJBSJ_HYZTM--��ְ��������������� ����״̬��
      ,fg.MC as f_JZGJBSJ_HYZTM_MC--����״������ ����
      ,f.ZZMMM as f_JZGJBSJ_ZZMMM--��ְ��������������� ������ò��
      ,fh.MC as f_JZGJBSJ_ZZMMM_MC--������ò���� ����
      ,fh.JC as f_JZGJBSJ_ZZMMM_JC--������ò���� ���
      ,f.GATQWM as f_JZGJBSJ_GATQWM--��ְ��������������� �۰�̨������
      ,fi.MC as f_JZGJBSJ_GATQWM_MC--�۰�̨�������� ����
      ,fi.SM as f_JZGJBSJ_GATQWM_SM--�۰�̨�������� ˵��
      ,f.JG as f_JZGJBSJ_JG--��ְ��������������� ����
      ,f.GJDQM as f_JZGJBSJ_GJDQM--��ְ��������������� ����/������
      ,fj.GJDQMCJC as f_JZGJBSJ_GJDQM_GJDQMCJC--��������͵������ƴ��� ����/�������Ƽ��
      ,fj.EZMDM as f_JZGJBSJ_GJDQM_EZMDM--��������͵������ƴ��� ����ĸ����
      ,fj.SZMDM as f_JZGJBSJ_GJDQM_SZMDM--��������͵������ƴ��� ����ĸ����
      ,f.CSDXZQHM as f_JZGJBSJ_CSDXZQHM--��ְ��������������� ����������������
      ,fk.MC as f_JZGJBSJ_CSDXZQHM_MC--�л����񹲺͹������������� ����
      ,f.XYZJM as f_JZGJBSJ_XYZJM--��ְ��������������� �����ڽ���
      ,fl.MC as f_JZGJBSJ_XYZJM_MC--�ڽ��������� ����
      ,f.JZGHKSZDXZQHM as f_JZGJBSJ_JZGHKSZDXZQHM--��ְ��������������� ��ְ���������ڵ�����������
      ,fm.MC as f_JZGJBSJ_JZGHKSZDXZQHM_MC--�л����񹲺͹������������� ����
      ,f.HKLBM as f_JZGJBSJ_HKLBM--��ְ��������������� ���������
      ,fn.MC as f_JZGJBSJ_HKLBM_MC--���������� ����
      ,f.DQZZ as f_JZGJBSJ_DQZZ--��ְ��������������� ��ǰסַ
      ,f.DQZZYZBM as f_JZGJBSJ_DQZZYZBM--��ְ��������������� ��ǰסַ��������
      ,f.CJGZNY as f_JZGJBSJ_CJGZNY--��ְ��������������� �μӹ�������
      ,f.CJNY as f_JZGJBSJ_CJNY--��ְ��������������� �ӽ�����
      ,f.LXNY as f_JZGJBSJ_LXNY--��ְ��������������� ��У����
      ,f.BZLBM as f_JZGJBSJ_BZLBM--��ְ��������������� ���������
      ,fo.MC as f_JZGJBSJ_BZLBM_MC--����������� ����
      ,f.JZGLBM as f_JZGJBSJ_JZGLBM--��ְ��������������� ��ְ�������
      ,fp.MC as f_JZGJBSJ_JZGLBM_MC--��ְ��������� ����
      ,fp.SM as f_JZGJBSJ_JZGLBM_SM--��ְ��������� ˵��
      ,f.GWLBM as f_JZGJBSJ_GWLBM--��ְ��������������� ��λ�����
      ,fq.MC as f_JZGJBSJ_GWLBM_MC--��λ������� ����
      ,f.SFJZJS as f_JZGJBSJ_SFJZJS--��ְ��������������� �Ƿ��ְ��ʦ
      ,fr.MC as f_JZGJBSJ_SFJZJS_MC--�Ƿ��־����� ����
      ,f.SFSSXJS as f_JZGJBSJ_SFSSXJS--��ְ��������������� �Ƿ�˫ʦ�ͽ�
      ,fs.MC as f_JZGJBSJ_SFSSXJS_MC--�Ƿ��־����� ����
      ,f.ZP as f_JZGJBSJ_ZP--��ְ��������������� ��Ƭ(·��)
      ,f.DQZTM as f_JZGJBSJ_DQZTM--��ְ��������������� ��ǰ״̬��
      ,ft.MC as f_JZGJBSJ_DQZTM_MC--��ְ����ǰ״̬����� ����
      ,f.YDDH as f_JZGJBSJ_YDDH--��ְ��������������� �ƶ��绰
      ,f.GDDH as f_JZGJBSJ_GDDH--��ְ��������������� �̶��绰
      ,f.TXDZYZBM as f_JZGJBSJ_TXDZYZBM--��ְ��������������� ͨ�ŵ�ַ��������
      ,f.TXDZ as f_JZGJBSJ_TXDZ--��ְ��������������� ͨ�ŵ�ַ
      ,f.DZXX as f_JZGJBSJ_DZXX--��ְ��������������� ��������
      ,f.WLDZ as f_JZGJBSJ_WLDZ--��ְ��������������� �����ַ
      ,f.JSTXH as f_JZGJBSJ_JSTXH--��ְ��������������� ��ʱͨѶ��
      ,g.SCHOOLID as g_ZYXX_SCHOOLID--רҵ������Ϣ���ݱ� ѧУ��
      ,g.ZYDM as g_ZYXX_ZYDM--רҵ������Ϣ���ݱ� רҵ����
      ,gb.ZYMLLB as g_ZYXX_ZYDM_ZYMLLB--�Խ�רҵ���� רҵĿ¼���
      ,gb.MC as g_ZYXX_ZYDM_MC--�Խ�רҵ���� ����
      ,g.ZYMC as g_ZYXX_ZYMC--רҵ������Ϣ���ݱ� רҵ����
      ,g.ZYYWMC as g_ZYXX_ZYYWMC--רҵ������Ϣ���ݱ� רҵӢ������
      ,g.XZ as g_ZYXX_XZ--רҵ������Ϣ���ݱ� ѧ��
      ,g.ZYFXMC as g_ZYXX_ZYFXMC--רҵ������Ϣ���ݱ� רҵ��������
      ,g.ZYJC as g_ZYXX_ZYJC--רҵ������Ϣ���ݱ� רҵ���
      ,g.JLNY as g_ZYXX_JLNY--רҵ������Ϣ���ݱ� ��������
      ,g.ZYJSS as g_ZYXX_ZYJSS--רҵ������Ϣ���ݱ� רҵ��ʦ��
      ,g.KSJGH as g_ZYXX_KSJGH--רҵ������Ϣ���ݱ� ���������
      ,g.ZXF as g_ZYXX_ZXF--רҵ������Ϣ���ݱ� ��ѧ��
      ,g.SSZYML as g_ZYXX_SSZYML--רҵ������Ϣ���ݱ� ����רҵĿ¼
      ,gc.MC as g_ZYXX_SSZYML_MC--רҵĿ¼���� ����
      ,g.ZYLB as g_ZYXX_ZYLB--רҵ������Ϣ���ݱ� רҵ�������
      ,h.SCHOOLID as h_ZZBJ_SCHOOLID--ѧУ�༶���ݱ� ѧУ��
      ,h.ZYXXID as h_ZZBJ_ZYXXID--ѧУ�༶���ݱ� רҵ������Ϣ
      ,h.ZZNJID as h_ZZBJ_ZZNJID--ѧУ�༶���ݱ� ѧУ�꼶���ݱ�
      ,h.XZBMC as h_ZZBJ_XZBMC--ѧУ�༶���ݱ� ����������
      ,h.JBNY as h_ZZBJ_JBNY--ѧУ�༶���ݱ� ��������
      ,h.BZRGH as h_ZZBJ_BZRGH--ѧУ�༶���ݱ� �����ι���
      ,h.JSBH as h_ZZBJ_JSBH--ѧУ�༶���ݱ� ���ұ��
      ,h.NANSRS as h_ZZBJ_NANSRS--ѧУ�༶���ݱ� ��������
      ,h.NVSRS as h_ZZBJ_NVSRS--ѧУ�༶���ݱ� Ů������
      ,h.ZRS as h_ZZBJ_ZRS--ѧУ�༶���ݱ� ������
      ,h.BZXH as h_ZZBJ_BZXH--ѧУ�༶���ݱ� �೤ѧ��
      ,h.JXJH as h_ZZBJ_JXJH--ѧУ�༶���ݱ� ��ѧ�ƻ�
      ,h.JGH as h_ZZBJ_JGH--ѧУ�༶���ݱ� ������
      ,h.XQDM as h_ZZBJ_XQDM--ѧУ�༶���ݱ� У������
      ,i.SCHOOLID as i_ZZNJ_SCHOOLID--ѧУ�꼶���ݱ� ѧУ��
      ,i.NJMC as i_ZZNJ_NJMC--ѧУ�꼶���ݱ� �꼶����
      ,i.SSNF as i_ZZNJ_SSNF--ѧУ�꼶���ݱ� �������
      ,i.NJZT as i_ZZNJ_NJZT--ѧУ�꼶���ݱ� �꼶״̬
      ,ib.MC as i_ZZNJ_NJZT_MC--�Ƿ��־����� ����
      ,j.SCHOOLID as j_ZYXX_SCHOOLID--רҵ������Ϣ���ݱ� ѧУ��
      ,j.ZYDM as j_ZYXX_ZYDM--רҵ������Ϣ���ݱ� רҵ����
      ,jb.ZYMLLB as j_ZYXX_ZYDM_ZYMLLB--�Խ�רҵ���� רҵĿ¼���
      ,jb.MC as j_ZYXX_ZYDM_MC--�Խ�רҵ���� ����
      ,j.ZYMC as j_ZYXX_ZYMC--רҵ������Ϣ���ݱ� רҵ����
      ,j.ZYYWMC as j_ZYXX_ZYYWMC--רҵ������Ϣ���ݱ� רҵӢ������
      ,j.XZ as j_ZYXX_XZ--רҵ������Ϣ���ݱ� ѧ��
      ,j.ZYFXMC as j_ZYXX_ZYFXMC--רҵ������Ϣ���ݱ� רҵ��������
      ,j.ZYJC as j_ZYXX_ZYJC--רҵ������Ϣ���ݱ� רҵ���
      ,j.JLNY as j_ZYXX_JLNY--רҵ������Ϣ���ݱ� ��������
      ,j.ZYJSS as j_ZYXX_ZYJSS--רҵ������Ϣ���ݱ� רҵ��ʦ��
      ,j.KSJGH as j_ZYXX_KSJGH--רҵ������Ϣ���ݱ� ���������
      ,j.ZXF as j_ZYXX_ZXF--רҵ������Ϣ���ݱ� ��ѧ��
      ,j.SSZYML as j_ZYXX_SSZYML--רҵ������Ϣ���ݱ� ����רҵĿ¼
      ,jc.MC as j_ZYXX_SSZYML_MC--רҵĿ¼���� ����
      ,j.ZYLB as j_ZYXX_ZYLB--רҵ������Ϣ���ݱ� רҵ�������
      ,k.SCHOOLID as k_ZZBJ_SCHOOLID--ѧУ�༶���ݱ� ѧУ��
      ,k.ZYXXID as k_ZZBJ_ZYXXID--ѧУ�༶���ݱ� רҵ������Ϣ
      ,k.ZZNJID as k_ZZBJ_ZZNJID--ѧУ�༶���ݱ� ѧУ�꼶���ݱ�
      ,k.XZBMC as k_ZZBJ_XZBMC--ѧУ�༶���ݱ� ����������
      ,k.JBNY as k_ZZBJ_JBNY--ѧУ�༶���ݱ� ��������
      ,k.BZRGH as k_ZZBJ_BZRGH--ѧУ�༶���ݱ� �����ι���
      ,k.JSBH as k_ZZBJ_JSBH--ѧУ�༶���ݱ� ���ұ��
      ,k.NANSRS as k_ZZBJ_NANSRS--ѧУ�༶���ݱ� ��������
      ,k.NVSRS as k_ZZBJ_NVSRS--ѧУ�༶���ݱ� Ů������
      ,k.ZRS as k_ZZBJ_ZRS--ѧУ�༶���ݱ� ������
      ,k.BZXH as k_ZZBJ_BZXH--ѧУ�༶���ݱ� �೤ѧ��
      ,k.JXJH as k_ZZBJ_JXJH--ѧУ�༶���ݱ� ��ѧ�ƻ�
      ,k.JGH as k_ZZBJ_JGH--ѧУ�༶���ݱ� ������
      ,k.XQDM as k_ZZBJ_XQDM--ѧУ�༶���ݱ� У������
      ,l.SCHOOLID as l_ZZNJ_SCHOOLID--ѧУ�꼶���ݱ� ѧУ��
      ,l.NJMC as l_ZZNJ_NJMC--ѧУ�꼶���ݱ� �꼶����
      ,l.SSNF as l_ZZNJ_SSNF--ѧУ�꼶���ݱ� �������
      ,l.NJZT as l_ZZNJ_NJZT--ѧУ�꼶���ݱ� �꼶״̬
      ,lb.MC as l_ZZNJ_NJZT_MC--�Ƿ��־����� ����

FROM dbo.EDU_ZZXS_07_02_XJYD AS a LEFT OUTER JOIN
      dbo.EDU_ZZXS_01_01_XSXX AS b ON a.XSXXID = b.ID /*ѧ��ID*/ AND a.SCHOOLID = b.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS c ON a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
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
