
--��У���Գɼ����������
CREATE VIEW [dbo].[VIEW_EDU_ZXXS_02_06_ZXKSCJ_DISP]
AS
SELECT a.[ID]--���Գɼ���
      ,a.[SCHOOLID]--ѧУ��
      ,a.[XSXXID]--ѧ��ID
      ,a.[XN]--ѧ�꣨�ȣ�
      ,a.[XQM]--ѧ����
      ,a.[KSRQ]--��������
      ,a.[KCH]--�γ̺�
      ,a.[KSFSM]--���Է�ʽ��
      ,a.[KSXZM]--����������
      ,a.[KSXSM]--������ʽ��
      ,a.[FSLKSCJ]--�����࿼�Գɼ�
      ,a.[DJLKSCJ]--�ȼ��࿼�Գɼ�
      ,a.[KCCJ]--�γ̳ɼ�
      ,a.[KCDJCJM]--�γ̵ȼ��ɼ���
      ,a.[RKJSGH]--�ον�ʦ����
      ,a.[CJLRRH]--�ɼ�¼���˺�
      ,a.[CJLRRQ]--�ɼ�¼������
      ,a.[CJLRSJ]--�ɼ�¼��ʱ��
      ,a.[XQID]--ѧ��
      ,a.[XNID]--ѧ��
      ,a.[SSKSID]--��������ID
      ,a.[RKJSID]--�ον�ʦID
      ,a.[CJLRRID]--�ɼ�¼����ID
      ,c.SCHOOLID as c_XSXX_SCHOOLID--ѧ��������������� ѧУ��
      ,c.XH as c_XSXX_XH--ѧ��������������� ѧ��
      ,c.XM as c_XSXX_XM--ѧ��������������� ����
      ,c.YWXM as c_XSXX_YWXM--ѧ��������������� Ӣ������
      ,c.XMPY as c_XSXX_XMPY--ѧ��������������� ����ƴ��
      ,c.CYM as c_XSXX_CYM--ѧ��������������� ������
      ,c.XBM as c_XSXX_XBM--ѧ��������������� �Ա���
      ,cb.MC as c_XSXX_XBM_MC--�˵��Ա���� ����
      ,c.CSRQ as c_XSXX_CSRQ--ѧ��������������� ��������
      ,c.CSDM as c_XSXX_CSDM--ѧ��������������� ��������
      ,cc.MC as c_XSXX_CSDM_MC--�л����񹲺͹������������� ����
      ,c.JG as c_XSXX_JG--ѧ��������������� ����
      ,c.MZM as c_XSXX_MZM--ѧ��������������� ������
      ,cd.MZMC as c_XSXX_MZM_MZMC--�й����������Ƶ�������ĸƴд���ʹ��� ��������
      ,cd.ZMDM as c_XSXX_MZM_ZMDM--�й����������Ƶ�������ĸƴд���ʹ��� ��ĸ����
      ,c.GJDQM as c_XSXX_GJDQM--ѧ��������������� ����/������
      ,ce.GJDQMCJC as c_XSXX_GJDQM_GJDQMCJC--��������͵������ƴ��� ����/�������Ƽ��
      ,ce.EZMDM as c_XSXX_GJDQM_EZMDM--��������͵������ƴ��� ����ĸ����
      ,ce.SZMDM as c_XSXX_GJDQM_SZMDM--��������͵������ƴ��� ����ĸ����
      ,c.SFZJLXM as c_XSXX_SFZJLXM--ѧ��������������� ���֤��������
      ,cf.MC as c_XSXX_SFZJLXM_MC--���֤�����ʹ���� ����
      ,c.SFZJH as c_XSXX_SFZJH--ѧ��������������� ���֤����
      ,c.HYZKM as c_XSXX_HYZKM--ѧ��������������� ����״����
      ,cg.MC as c_XSXX_HYZKM_MC--����״������ ����
      ,c.GATQWM as c_XSXX_GATQWM--ѧ��������������� �۰�̨������
      ,ch.MC as c_XSXX_GATQWM_MC--�۰�̨�������� ����
      ,ch.SM as c_XSXX_GATQWM_SM--�۰�̨�������� ˵��
      ,c.ZZMMM as c_XSXX_ZZMMM--ѧ��������������� ������ò��
      ,ci.MC as c_XSXX_ZZMMM_MC--������ò���� ����
      ,ci.JC as c_XSXX_ZZMMM_JC--������ò���� ���
      ,c.JKZKM as c_XSXX_JKZKM--ѧ��������������� ����״����
      ,cj.MC as c_XSXX_JKZKM_MC--����״��1λ���ִ��� ����
      ,cj.SM as c_XSXX_JKZKM_SM--����״��1λ���ִ��� ˵��
      ,c.XYZJM as c_XSXX_XYZJM--ѧ��������������� �����ڽ���
      ,ck.MC as c_XSXX_XYZJM_MC--�ڽ��������� ����
      ,c.XXM as c_XSXX_XXM--ѧ��������������� Ѫ����
      ,cl.MC as c_XSXX_XXM_MC--Ѫ�ʹ���� ����
      ,cl.JC as c_XSXX_XXM_JC--Ѫ�ʹ���� ���
      ,c.ZP as c_XSXX_ZP--ѧ��������������� ��Ƭ
      ,c.SFZJYXQ as c_XSXX_SFZJYXQ--ѧ��������������� ���֤����Ч��
      ,c.DSZYBZ as c_XSXX_DSZYBZ--ѧ��������������� ������Ů��־
      ,cm.MC as c_XSXX_DSZYBZ_MC--�Ƿ��־����� ����
      ,c.RXNY as c_XSXX_RXNY--ѧ��������������� ��ѧ����
      ,c.NJ as c_XSXX_NJ--ѧ��������������� �꼶
      ,c.BH as c_XSXX_BH--ѧ��������������� ���
      ,c.XSLBM as c_XSXX_XSLBM--ѧ��������������� ѧ�������
      ,cn.MC as c_XSXX_XSLBM_MC--ѧ��������� ����
      ,cn.SM as c_XSXX_XSLBM_SM--ѧ��������� ˵��
      ,c.XZZ as c_XSXX_XZZ--ѧ��������������� ��סַ
      ,c.HKSZD as c_XSXX_HKSZD--ѧ��������������� �������ڵ�
      ,c.HKXZM as c_XSXX_HKXZM--ѧ��������������� ����������
      ,co.MC as c_XSXX_HKXZM_MC--���������� ����
      ,c.SFLDRK as c_XSXX_SFLDRK--ѧ��������������� �Ƿ������˿�
      ,cp.MC as c_XSXX_SFLDRK_MC--�Ƿ��־����� ����
      ,c.TC as c_XSXX_TC--ѧ��������������� �س�
      ,c.LXDH as c_XSXX_LXDH--ѧ��������������� ��ϵ�绰
      ,c.TXDZ as c_XSXX_TXDZ--ѧ��������������� ͨ�ŵ�ַ
      ,c.YZBM as c_XSXX_YZBM--ѧ��������������� ��������
      ,c.DZXX as c_XSXX_DZXX--ѧ��������������� ��������
      ,c.ZYDZ as c_XSXX_ZYDZ--ѧ��������������� ��ҳ��ַ
      ,c.XJH as c_XSXX_XJH--ѧ��������������� ѧ����
      ,d.MC as d_XQ_MC--ѧ�ڴ���� ����
      ,e.SCHOOLID as e_KC_SCHOOLID--�γ������� ѧУ��
      ,e.KCMC as e_KC_KCMC--�γ������� �γ�����
      ,e.KCM as e_KC_KCM--�γ������� �γ���
      ,eb.MC as e_KC_KCM_MC--��Сѧ�γ̴���� ����
      ,eb.SYXX as e_KC_KCM_SYXX--��Сѧ�γ̴���� ����ѧУ
      ,e.KCDJM as e_KC_KCDJM--�γ������� �γ̵ȼ���
      ,ec.MC as e_KC_KCDJM_MC--��Сѧ�γ̵ȼ������ ����
      ,e.KCBM as e_KC_KCBM--�γ������� �γ̱���
      ,e.KCJJ as e_KC_KCJJ--�γ������� �γ̼��
      ,e.KCYQ as e_KC_KCYQ--�γ������� �γ�Ҫ��
      ,e.ZXS as e_KC_ZXS--�γ������� ��ѧʱ
      ,e.ZHXS as e_KC_ZHXS--�γ������� ��ѧʱ
      ,e.ZXXS as e_KC_ZXXS--�γ������� ��ѧѧʱ
      ,e.SKFSM as e_KC_SKFSM--�γ������� �ڿη�ʽ��
      ,ed.MC as e_KC_SKFSM_MC--�ڿη�ʽ����� ����
      ,e.JCBM as e_KC_JCBM--�γ������� �̲ı���
      ,e.CKSM as e_KC_CKSM--�γ������� �ο���Ŀ
      ,e.CDXZ as e_KC_CDXZ--�γ������� ��������
      ,e.SFZK as e_KC_SFZK--�γ������� �Ƿ�����
      ,ee.MC as e_KC_SFZK_MC--�Ƿ��־����� ����
      ,f.MC as f_KSFS_MC--���Է�ʽ����� ����
      ,f.SM as f_KSFS_SM--���Է�ʽ����� ˵��
      ,g.MC as g_KSXZ_MC--�������ʴ���� ����
      ,g.SM as g_KSXZ_SM--�������ʴ���� ˵��
      ,h.MC as h_KSXS_MC--������ʽ����� ����
      ,i.SCHOOLID as i_XQ_SCHOOLID--ѧ�����ݱ� ѧУ��
      ,i.XNID as i_XQ_XNID--ѧ�����ݱ� ѧ��
      ,i.XQM as i_XQ_XQM--ѧ�����ݱ� ѧ����
      ,ib.MC as i_XQ_XQM_MC--ѧ�ڴ���� ����
      ,i.XQMC as i_XQ_XQMC--ѧ�����ݱ� ѧ������
      ,i.XQKSRQ as i_XQ_XQKSRQ--ѧ�����ݱ� ѧ�ڿ�ʼ����
      ,i.XQJSRQ as i_XQ_XQJSRQ--ѧ�����ݱ� ѧ�ڽ�������
      ,j.SCHOOLID as j_XN_SCHOOLID--ѧ��� ѧУ��
      ,j.XN as j_XN_XN--ѧ��� ѧ��
      ,k.SCHOOLID as k_KS_SCHOOLID--�������ݱ� ѧУ��
      ,k.XNID as k_KS_XNID--�������ݱ� ѧ��
      ,k.XQID as k_KS_XQID--�������ݱ� ѧ��
      ,k.KSMC as k_KS_KSMC--�������ݱ� ��������
      ,k.KSKSSJ as k_KS_KSKSSJ--�������ݱ� ���Կ�ʼʱ��
      ,k.KSJSSJ as k_KS_KSJSSJ--�������ݱ� ���Խ���ʱ��
      ,k.DFKSSJ as k_KS_DFKSSJ--�������ݱ� �Ƿֿ�ʼʱ��
      ,k.DFJSSJ as k_KS_DFJSSJ--�������ݱ� �Ƿֽ���ʱ��
      ,l.SCHOOLID as l_JZGJBSJ_SCHOOLID--��ְ��������������� ѧУ��
      ,l.GH as l_JZGJBSJ_GH--��ְ��������������� ����
      ,l.XM as l_JZGJBSJ_XM--��ְ��������������� ����
      ,l.YWXM as l_JZGJBSJ_YWXM--��ְ��������������� Ӣ������
      ,l.XMPY as l_JZGJBSJ_XMPY--��ְ��������������� ����ƴ��
      ,l.CYM as l_JZGJBSJ_CYM--��ְ��������������� ������
      ,l.XBM as l_JZGJBSJ_XBM--��ְ��������������� �Ա���
      ,lb.MC as l_JZGJBSJ_XBM_MC--�˵��Ա���� ����
      ,l.CSRQ as l_JZGJBSJ_CSRQ--��ְ��������������� ��������
      ,l.CSDM as l_JZGJBSJ_CSDM--��ְ��������������� ��������
      ,lc.MC as l_JZGJBSJ_CSDM_MC--�л����񹲺͹������������� ����
      ,l.JG as l_JZGJBSJ_JG--��ְ��������������� ����
      ,l.MZM as l_JZGJBSJ_MZM--��ְ��������������� ������
      ,ld.MZMC as l_JZGJBSJ_MZM_MZMC--�й����������Ƶ�������ĸƴд���ʹ��� ��������
      ,ld.ZMDM as l_JZGJBSJ_MZM_ZMDM--�й����������Ƶ�������ĸƴд���ʹ��� ��ĸ����
      ,l.GJDQM as l_JZGJBSJ_GJDQM--��ְ��������������� ����/������
      ,le.GJDQMCJC as l_JZGJBSJ_GJDQM_GJDQMCJC--��������͵������ƴ��� ����/�������Ƽ��
      ,le.EZMDM as l_JZGJBSJ_GJDQM_EZMDM--��������͵������ƴ��� ����ĸ����
      ,le.SZMDM as l_JZGJBSJ_GJDQM_SZMDM--��������͵������ƴ��� ����ĸ����
      ,l.SFZJLXM as l_JZGJBSJ_SFZJLXM--��ְ��������������� ���֤��������
      ,lf.MC as l_JZGJBSJ_SFZJLXM_MC--���֤�����ʹ���� ����
      ,l.SFZJH as l_JZGJBSJ_SFZJH--��ְ��������������� ���֤����
      ,l.HYZKM as l_JZGJBSJ_HYZKM--��ְ��������������� ����״����
      ,lg.MC as l_JZGJBSJ_HYZKM_MC--����״������ ����
      ,l.GATQWM as l_JZGJBSJ_GATQWM--��ְ��������������� �۰�̨������
      ,lh.MC as l_JZGJBSJ_GATQWM_MC--�۰�̨�������� ����
      ,lh.SM as l_JZGJBSJ_GATQWM_SM--�۰�̨�������� ˵��
      ,l.ZZMMM as l_JZGJBSJ_ZZMMM--��ְ��������������� ������ò��
      ,li.MC as l_JZGJBSJ_ZZMMM_MC--������ò���� ����
      ,li.JC as l_JZGJBSJ_ZZMMM_JC--������ò���� ���
      ,l.JKZKM as l_JZGJBSJ_JKZKM--��ְ��������������� ����״����
      ,lj.MC as l_JZGJBSJ_JKZKM_MC--����״��1λ���ִ��� ����
      ,lj.SM as l_JZGJBSJ_JKZKM_SM--����״��1λ���ִ��� ˵��
      ,l.XYZJM as l_JZGJBSJ_XYZJM--��ְ��������������� �����ڽ���
      ,lk.MC as l_JZGJBSJ_XYZJM_MC--�ڽ��������� ����
      ,l.XXM as l_JZGJBSJ_XXM--��ְ��������������� Ѫ����
      ,ll.MC as l_JZGJBSJ_XXM_MC--Ѫ�ʹ���� ����
      ,ll.JC as l_JZGJBSJ_XXM_JC--Ѫ�ʹ���� ���
      ,l.ZP as l_JZGJBSJ_ZP--��ְ��������������� ��Ƭ
      ,l.SFZJYXQ as l_JZGJBSJ_SFZJYXQ--��ְ��������������� ���֤����Ч��
      ,l.JGH as l_JZGJBSJ_JGH--��ְ��������������� ������
      ,l.JTZZ as l_JZGJBSJ_JTZZ--��ְ��������������� ��ͥסַ
      ,l.XZZ as l_JZGJBSJ_XZZ--��ְ��������������� ��סַ
      ,l.HKSZD as l_JZGJBSJ_HKSZD--��ְ��������������� �������ڵ�
      ,l.HKXZM as l_JZGJBSJ_HKXZM--��ְ��������������� ����������
      ,lm.MC as l_JZGJBSJ_HKXZM_MC--���������� ����
      ,l.XLM as l_JZGJBSJ_XLM--��ְ��������������� ѧ����
      ,ln.MC as l_JZGJBSJ_XLM_MC--ѧ������ ����
      ,l.GZNY as l_JZGJBSJ_GZNY--��ְ��������������� �μӹ�������
      ,l.LXNY as l_JZGJBSJ_LXNY--��ְ��������������� ��У����
      ,l.CJNY as l_JZGJBSJ_CJNY--��ְ��������������� �ӽ�����
      ,l.BZLBM as l_JZGJBSJ_BZLBM--��ְ��������������� ���������
      ,lo.MC as l_JZGJBSJ_BZLBM_MC--��Сѧ����������� ����
      ,l.DABH as l_JZGJBSJ_DABH--��ְ��������������� �������
      ,l.DAWB as l_JZGJBSJ_DAWB--��ְ��������������� �����ı�
      ,l.TXDZ as l_JZGJBSJ_TXDZ--��ְ��������������� ͨ�ŵ�ַ
      ,l.LXDH as l_JZGJBSJ_LXDH--��ְ��������������� ��ϵ�绰
      ,l.YZBM as l_JZGJBSJ_YZBM--��ְ��������������� ��������
      ,l.DZXX as l_JZGJBSJ_DZXX--��ְ��������������� ��������
      ,l.ZYDZ as l_JZGJBSJ_ZYDZ--��ְ��������������� ��ҳ��ַ
      ,l.TC as l_JZGJBSJ_TC--��ְ��������������� �س�
      ,l.GWZYM as l_JZGJBSJ_GWZYM--��ְ��������������� ��λְҵ��
      ,lp.MC as l_JZGJBSJ_GWZYM_MC--��λְҵ����� ����
      ,l.ZYRKXD as l_JZGJBSJ_ZYRKXD--��ְ��������������� ��Ҫ�ο�ѧ��
      ,lq.MC as l_JZGJBSJ_ZYRKXD_MC--�ο�ѧ�δ���� ����
      ,m.SCHOOLID as m_JZGJBSJ_SCHOOLID--��ְ��������������� ѧУ��
      ,m.GH as m_JZGJBSJ_GH--��ְ��������������� ����
      ,m.XM as m_JZGJBSJ_XM--��ְ��������������� ����
      ,m.YWXM as m_JZGJBSJ_YWXM--��ְ��������������� Ӣ������
      ,m.XMPY as m_JZGJBSJ_XMPY--��ְ��������������� ����ƴ��
      ,m.CYM as m_JZGJBSJ_CYM--��ְ��������������� ������
      ,m.XBM as m_JZGJBSJ_XBM--��ְ��������������� �Ա���
      ,mb.MC as m_JZGJBSJ_XBM_MC--�˵��Ա���� ����
      ,m.CSRQ as m_JZGJBSJ_CSRQ--��ְ��������������� ��������
      ,m.CSDM as m_JZGJBSJ_CSDM--��ְ��������������� ��������
      ,mc.MC as m_JZGJBSJ_CSDM_MC--�л����񹲺͹������������� ����
      ,m.JG as m_JZGJBSJ_JG--��ְ��������������� ����
      ,m.MZM as m_JZGJBSJ_MZM--��ְ��������������� ������
      ,md.MZMC as m_JZGJBSJ_MZM_MZMC--�й����������Ƶ�������ĸƴд���ʹ��� ��������
      ,md.ZMDM as m_JZGJBSJ_MZM_ZMDM--�й����������Ƶ�������ĸƴд���ʹ��� ��ĸ����
      ,m.GJDQM as m_JZGJBSJ_GJDQM--��ְ��������������� ����/������
      ,me.GJDQMCJC as m_JZGJBSJ_GJDQM_GJDQMCJC--��������͵������ƴ��� ����/�������Ƽ��
      ,me.EZMDM as m_JZGJBSJ_GJDQM_EZMDM--��������͵������ƴ��� ����ĸ����
      ,me.SZMDM as m_JZGJBSJ_GJDQM_SZMDM--��������͵������ƴ��� ����ĸ����
      ,m.SFZJLXM as m_JZGJBSJ_SFZJLXM--��ְ��������������� ���֤��������
      ,mf.MC as m_JZGJBSJ_SFZJLXM_MC--���֤�����ʹ���� ����
      ,m.SFZJH as m_JZGJBSJ_SFZJH--��ְ��������������� ���֤����
      ,m.HYZKM as m_JZGJBSJ_HYZKM--��ְ��������������� ����״����
      ,mg.MC as m_JZGJBSJ_HYZKM_MC--����״������ ����
      ,m.GATQWM as m_JZGJBSJ_GATQWM--��ְ��������������� �۰�̨������
      ,mh.MC as m_JZGJBSJ_GATQWM_MC--�۰�̨�������� ����
      ,mh.SM as m_JZGJBSJ_GATQWM_SM--�۰�̨�������� ˵��
      ,m.ZZMMM as m_JZGJBSJ_ZZMMM--��ְ��������������� ������ò��
      ,mi.MC as m_JZGJBSJ_ZZMMM_MC--������ò���� ����
      ,mi.JC as m_JZGJBSJ_ZZMMM_JC--������ò���� ���
      ,m.JKZKM as m_JZGJBSJ_JKZKM--��ְ��������������� ����״����
      ,mj.MC as m_JZGJBSJ_JKZKM_MC--����״��1λ���ִ��� ����
      ,mj.SM as m_JZGJBSJ_JKZKM_SM--����״��1λ���ִ��� ˵��
      ,m.XYZJM as m_JZGJBSJ_XYZJM--��ְ��������������� �����ڽ���
      ,mk.MC as m_JZGJBSJ_XYZJM_MC--�ڽ��������� ����
      ,m.XXM as m_JZGJBSJ_XXM--��ְ��������������� Ѫ����
      ,ml.MC as m_JZGJBSJ_XXM_MC--Ѫ�ʹ���� ����
      ,ml.JC as m_JZGJBSJ_XXM_JC--Ѫ�ʹ���� ���
      ,m.ZP as m_JZGJBSJ_ZP--��ְ��������������� ��Ƭ
      ,m.SFZJYXQ as m_JZGJBSJ_SFZJYXQ--��ְ��������������� ���֤����Ч��
      ,m.JGH as m_JZGJBSJ_JGH--��ְ��������������� ������
      ,m.JTZZ as m_JZGJBSJ_JTZZ--��ְ��������������� ��ͥסַ
      ,m.XZZ as m_JZGJBSJ_XZZ--��ְ��������������� ��סַ
      ,m.HKSZD as m_JZGJBSJ_HKSZD--��ְ��������������� �������ڵ�
      ,m.HKXZM as m_JZGJBSJ_HKXZM--��ְ��������������� ����������
      ,mm.MC as m_JZGJBSJ_HKXZM_MC--���������� ����
      ,m.XLM as m_JZGJBSJ_XLM--��ְ��������������� ѧ����
      ,mn.MC as m_JZGJBSJ_XLM_MC--ѧ������ ����
      ,m.GZNY as m_JZGJBSJ_GZNY--��ְ��������������� �μӹ�������
      ,m.LXNY as m_JZGJBSJ_LXNY--��ְ��������������� ��У����
      ,m.CJNY as m_JZGJBSJ_CJNY--��ְ��������������� �ӽ�����
      ,m.BZLBM as m_JZGJBSJ_BZLBM--��ְ��������������� ���������
      ,mo.MC as m_JZGJBSJ_BZLBM_MC--��Сѧ����������� ����
      ,m.DABH as m_JZGJBSJ_DABH--��ְ��������������� �������
      ,m.DAWB as m_JZGJBSJ_DAWB--��ְ��������������� �����ı�
      ,m.TXDZ as m_JZGJBSJ_TXDZ--��ְ��������������� ͨ�ŵ�ַ
      ,m.LXDH as m_JZGJBSJ_LXDH--��ְ��������������� ��ϵ�绰
      ,m.YZBM as m_JZGJBSJ_YZBM--��ְ��������������� ��������
      ,m.DZXX as m_JZGJBSJ_DZXX--��ְ��������������� ��������
      ,m.ZYDZ as m_JZGJBSJ_ZYDZ--��ְ��������������� ��ҳ��ַ
      ,m.TC as m_JZGJBSJ_TC--��ְ��������������� �س�
      ,m.GWZYM as m_JZGJBSJ_GWZYM--��ְ��������������� ��λְҵ��
      ,mp.MC as m_JZGJBSJ_GWZYM_MC--��λְҵ����� ����
      ,m.ZYRKXD as m_JZGJBSJ_ZYRKXD--��ְ��������������� ��Ҫ�ο�ѧ��
      ,mq.MC as m_JZGJBSJ_ZYRKXD_MC--�ο�ѧ�δ���� ����

FROM dbo.EDU_ZXXS_02_06_ZXKSCJ AS a LEFT OUTER JOIN
      dbo.EDU_ZXXS_01_01_XSXX AS c ON a.XSXXID = c.ID /*ѧ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS d ON a.XQM = d.DM /*ѧ����*/ LEFT OUTER JOIN
      dbo.EDU_ZXJX_01_01_KC AS e ON a.KCH = e.KCH /*�γ̺�*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_KSFS AS f ON a.KSFSM = f.DM /*���Է�ʽ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_KSXZ AS g ON a.KSXZM = g.DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_JY_KSXS AS h ON a.KSXSM = h.DM /*������ʽ��*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS i ON a.XQID = i.ID /*ѧ��*/ AND a.SCHOOLID = i.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_SYS_01_XN AS j ON a.XNID = j.ID /*ѧ��*/ AND a.SCHOOLID = j.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZXJX_05_A01_KS AS k ON a.SSKSID = k.ID /*��������ID*/ AND a.SCHOOLID = k.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZXJZ_01_01_JZGJBSJ AS l ON a.RKJSID = l.ID /*�ον�ʦID*/ AND a.SCHOOLID = l.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZXJZ_01_01_JZGJBSJ AS m ON a.CJLRRID = m.ID /*�ɼ�¼����ID*/ AND a.SCHOOLID = m.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS cb ON c.XBM = cb.DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS cc ON c.CSDM = cc.DM /*��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS cd ON c.MZM = cd.DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS ce ON c.GJDQM = ce.DM /*����/������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS cf ON c.SFZJLXM = cf.DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS cg ON c.HYZKM = cg.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS ch ON c.GATQWM = ch.DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS ci ON c.ZZMMM = ci.DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS cj ON c.JKZKM = cj.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS ck ON c.XYZJM = ck.DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS cl ON c.XXM = cl.DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS cm ON c.DSZYBZ = cm.DM /*������Ů��־*/ LEFT OUTER JOIN
      dbo.EDU_JY_XSLB AS cn ON c.XSLBM = cn.DM /*ѧ�������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS co ON c.HKXZM = co.DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS cp ON c.SFLDRK = cp.DM /*�Ƿ������˿�*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXKC AS eb ON e.KCM = eb.DM /*�γ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXKCDJ AS ec ON e.KCDJM = ec.DM /*�γ̵ȼ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS ed ON e.SKFSM = ed.DM /*�ڿη�ʽ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS ee ON e.SFZK = ee.DM /*�Ƿ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS ib ON i.XQM = ib.DM /*ѧ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS lb ON l.XBM = lb.DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS lc ON l.CSDM = lc.DM /*��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS ld ON l.MZM = ld.DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS le ON l.GJDQM = le.DM /*����/������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS lf ON l.SFZJLXM = lf.DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS lg ON l.HYZKM = lg.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS lh ON l.GATQWM = lh.DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS li ON l.ZZMMM = li.DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS lj ON l.JKZKM = lj.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS lk ON l.XYZJM = lk.DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS ll ON l.XXM = ll.DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS lm ON l.HKXZM = lm.DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_GB_XL AS ln ON l.XLM = ln.DM /*ѧ����*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXBZLB AS lo ON l.BZLBM = lo.DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWZY AS lp ON l.GWZYM = lp.DM /*��λְҵ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_RKXD AS lq ON l.ZYRKXD = lq.DM /*��Ҫ�ο�ѧ��*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS mb ON m.XBM = mb.DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS mc ON m.CSDM = mc.DM /*��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS md ON m.MZM = md.DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS me ON m.GJDQM = me.DM /*����/������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS mf ON m.SFZJLXM = mf.DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS mg ON m.HYZKM = mg.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS mh ON m.GATQWM = mh.DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS mi ON m.ZZMMM = mi.DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS mj ON m.JKZKM = mj.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS mk ON m.XYZJM = mk.DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS ml ON m.XXM = ml.DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS mm ON m.HKXZM = mm.DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_GB_XL AS mn ON m.XLM = mn.DM /*ѧ����*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXBZLB AS mo ON m.BZLBM = mo.DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWZY AS mp ON m.GWZYM = mp.DM /*��λְҵ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_RKXD AS mq ON m.ZYRKXD = mq.DM /*��Ҫ�ο�ѧ��*/
GO
