
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
      ,k.SCHOOLID as k_JZGJBSJ_SCHOOLID--��ְ��������������� ѧУ��
      ,k.GH as k_JZGJBSJ_GH--��ְ��������������� ����
      ,k.XM as k_JZGJBSJ_XM--��ְ��������������� ����
      ,k.YWXM as k_JZGJBSJ_YWXM--��ְ��������������� Ӣ������
      ,k.XMPY as k_JZGJBSJ_XMPY--��ְ��������������� ����ƴ��
      ,k.CYM as k_JZGJBSJ_CYM--��ְ��������������� ������
      ,k.XBM as k_JZGJBSJ_XBM--��ְ��������������� �Ա���
      ,kb.MC as k_JZGJBSJ_XBM_MC--�˵��Ա���� ����
      ,k.CSRQ as k_JZGJBSJ_CSRQ--��ְ��������������� ��������
      ,k.CSDM as k_JZGJBSJ_CSDM--��ְ��������������� ��������
      ,kc.MC as k_JZGJBSJ_CSDM_MC--�л����񹲺͹������������� ����
      ,k.JG as k_JZGJBSJ_JG--��ְ��������������� ����
      ,k.MZM as k_JZGJBSJ_MZM--��ְ��������������� ������
      ,kd.MZMC as k_JZGJBSJ_MZM_MZMC--�й����������Ƶ�������ĸƴд���ʹ��� ��������
      ,kd.ZMDM as k_JZGJBSJ_MZM_ZMDM--�й����������Ƶ�������ĸƴд���ʹ��� ��ĸ����
      ,k.GJDQM as k_JZGJBSJ_GJDQM--��ְ��������������� ����/������
      ,ke.GJDQMCJC as k_JZGJBSJ_GJDQM_GJDQMCJC--��������͵������ƴ��� ����/�������Ƽ��
      ,ke.EZMDM as k_JZGJBSJ_GJDQM_EZMDM--��������͵������ƴ��� ����ĸ����
      ,ke.SZMDM as k_JZGJBSJ_GJDQM_SZMDM--��������͵������ƴ��� ����ĸ����
      ,k.SFZJLXM as k_JZGJBSJ_SFZJLXM--��ְ��������������� ���֤��������
      ,kf.MC as k_JZGJBSJ_SFZJLXM_MC--���֤�����ʹ���� ����
      ,k.SFZJH as k_JZGJBSJ_SFZJH--��ְ��������������� ���֤����
      ,k.HYZKM as k_JZGJBSJ_HYZKM--��ְ��������������� ����״����
      ,kg.MC as k_JZGJBSJ_HYZKM_MC--����״������ ����
      ,k.GATQWM as k_JZGJBSJ_GATQWM--��ְ��������������� �۰�̨������
      ,kh.MC as k_JZGJBSJ_GATQWM_MC--�۰�̨�������� ����
      ,kh.SM as k_JZGJBSJ_GATQWM_SM--�۰�̨�������� ˵��
      ,k.ZZMMM as k_JZGJBSJ_ZZMMM--��ְ��������������� ������ò��
      ,ki.MC as k_JZGJBSJ_ZZMMM_MC--������ò���� ����
      ,ki.JC as k_JZGJBSJ_ZZMMM_JC--������ò���� ���
      ,k.JKZKM as k_JZGJBSJ_JKZKM--��ְ��������������� ����״����
      ,kj.MC as k_JZGJBSJ_JKZKM_MC--����״��1λ���ִ��� ����
      ,kj.SM as k_JZGJBSJ_JKZKM_SM--����״��1λ���ִ��� ˵��
      ,k.XYZJM as k_JZGJBSJ_XYZJM--��ְ��������������� �����ڽ���
      ,kk.MC as k_JZGJBSJ_XYZJM_MC--�ڽ��������� ����
      ,k.XXM as k_JZGJBSJ_XXM--��ְ��������������� Ѫ����
      ,kl.MC as k_JZGJBSJ_XXM_MC--Ѫ�ʹ���� ����
      ,kl.JC as k_JZGJBSJ_XXM_JC--Ѫ�ʹ���� ���
      ,k.ZP as k_JZGJBSJ_ZP--��ְ��������������� ��Ƭ
      ,k.SFZJYXQ as k_JZGJBSJ_SFZJYXQ--��ְ��������������� ���֤����Ч��
      ,k.JGH as k_JZGJBSJ_JGH--��ְ��������������� ������
      ,k.JTZZ as k_JZGJBSJ_JTZZ--��ְ��������������� ��ͥסַ
      ,k.XZZ as k_JZGJBSJ_XZZ--��ְ��������������� ��סַ
      ,k.HKSZD as k_JZGJBSJ_HKSZD--��ְ��������������� �������ڵ�
      ,k.HKXZM as k_JZGJBSJ_HKXZM--��ְ��������������� ����������
      ,km.MC as k_JZGJBSJ_HKXZM_MC--���������� ����
      ,k.XLM as k_JZGJBSJ_XLM--��ְ��������������� ѧ����
      ,kn.MC as k_JZGJBSJ_XLM_MC--ѧ������ ����
      ,k.GZNY as k_JZGJBSJ_GZNY--��ְ��������������� �μӹ�������
      ,k.LXNY as k_JZGJBSJ_LXNY--��ְ��������������� ��У����
      ,k.CJNY as k_JZGJBSJ_CJNY--��ְ��������������� �ӽ�����
      ,k.BZLBM as k_JZGJBSJ_BZLBM--��ְ��������������� ���������
      ,ko.MC as k_JZGJBSJ_BZLBM_MC--��Сѧ����������� ����
      ,k.DABH as k_JZGJBSJ_DABH--��ְ��������������� �������
      ,k.DAWB as k_JZGJBSJ_DAWB--��ְ��������������� �����ı�
      ,k.TXDZ as k_JZGJBSJ_TXDZ--��ְ��������������� ͨ�ŵ�ַ
      ,k.LXDH as k_JZGJBSJ_LXDH--��ְ��������������� ��ϵ�绰
      ,k.YZBM as k_JZGJBSJ_YZBM--��ְ��������������� ��������
      ,k.DZXX as k_JZGJBSJ_DZXX--��ְ��������������� ��������
      ,k.ZYDZ as k_JZGJBSJ_ZYDZ--��ְ��������������� ��ҳ��ַ
      ,k.TC as k_JZGJBSJ_TC--��ְ��������������� �س�
      ,k.GWZYM as k_JZGJBSJ_GWZYM--��ְ��������������� ��λְҵ��
      ,kp.MC as k_JZGJBSJ_GWZYM_MC--��λְҵ����� ����
      ,k.ZYRKXD as k_JZGJBSJ_ZYRKXD--��ְ��������������� ��Ҫ�ο�ѧ��
      ,kq.MC as k_JZGJBSJ_ZYRKXD_MC--�ο�ѧ�δ���� ����
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

FROM dbo.EDU_ZXXS_02_06_ZXKSCJ AS a LEFT OUTER JOIN
      dbo.EDU_ZXXS_01_01_XSXX AS c ON a.XSXXID = c.ID /*ѧ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS d ON a.XQM = d.DM /*ѧ����*/ LEFT OUTER JOIN
      dbo.EDU_ZXJX_01_01_KC AS e ON a.KCH = e.KCH /*�γ̺�*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_KSFS AS f ON a.KSFSM = f.DM /*���Է�ʽ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_KSXZ AS g ON a.KSXZM = g.DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_JY_KSXS AS h ON a.KSXSM = h.DM /*������ʽ��*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS i ON a.XQID = i.ID /*ѧ��*/ AND a.SCHOOLID = i.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_SYS_01_XN AS j ON a.XNID = j.ID /*ѧ��*/ AND a.SCHOOLID = j.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZXJZ_01_01_JZGJBSJ AS k ON a.RKJSID = k.ID /*�ον�ʦID*/ AND a.SCHOOLID = k.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZXJZ_01_01_JZGJBSJ AS l ON a.CJLRRID = l.ID /*�ɼ�¼����ID*/ AND a.SCHOOLID = l.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
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
      dbo.EDU_GB_RDXB AS kb ON k.XBM = kb.DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS kc ON k.CSDM = kc.DM /*��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS kd ON k.MZM = kd.DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS ke ON k.GJDQM = ke.DM /*����/������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS kf ON k.SFZJLXM = kf.DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS kg ON k.HYZKM = kg.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS kh ON k.GATQWM = kh.DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS ki ON k.ZZMMM = ki.DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS kj ON k.JKZKM = kj.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS kk ON k.XYZJM = kk.DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS kl ON k.XXM = kl.DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS km ON k.HKXZM = km.DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_GB_XL AS kn ON k.XLM = kn.DM /*ѧ����*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXBZLB AS ko ON k.BZLBM = ko.DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWZY AS kp ON k.GWZYM = kp.DM /*��λְҵ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_RKXD AS kq ON k.ZYRKXD = kq.DM /*��Ҫ�ο�ѧ��*/ LEFT OUTER JOIN
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
      dbo.EDU_JY_RKXD AS lq ON l.ZYRKXD = lq.DM /*��Ҫ�ο�ѧ��*/
GO
