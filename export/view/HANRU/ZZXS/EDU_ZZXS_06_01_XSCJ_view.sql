
--ѧ���ɼ��������
CREATE VIEW [dbo].[VIEW_EDU_ZZXS_06_01_XSCJ_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУID
      ,a.[XSXXID]--ѧ��ID
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
      ,a.[KCQDID]--�γ��嵥ID
      ,a.[CJLXID]--�ɼ�����ID
      ,a.[ZYXXID]--רҵID
      ,a.[NJID]--�꼶ID
      ,a.[BJID]--�༶ID
      ,c.SCHOOLID as c_XSXX_SCHOOLID--ѧ����Ϣ���ݱ� ѧУ��
      ,c.XH as c_XSXX_XH--ѧ����Ϣ���ݱ� ѧ��
      ,c.XM as c_XSXX_XM--ѧ����Ϣ���ݱ� ����
      ,c.YWXM as c_XSXX_YWXM--ѧ����Ϣ���ݱ� Ӣ������
      ,c.XMPY as c_XSXX_XMPY--ѧ����Ϣ���ݱ� ����ƴ��
      ,c.CYM as c_XSXX_CYM--ѧ����Ϣ���ݱ� ������
      ,c.SFZJLXM as c_XSXX_SFZJLXM--ѧ����Ϣ���ݱ� ���֤��������
      ,[cb].MC as c_XSXX_SFZJLXM_MC--���֤�����ʹ���� ����
      ,c.SFZJH as c_XSXX_SFZJH--ѧ����Ϣ���ݱ� ���֤����
      ,c.XBM as c_XSXX_XBM--ѧ����Ϣ���ݱ� �Ա���
      ,[cc].MC as c_XSXX_XBM_MC--�˵��Ա���� ����
      ,c.XXM as c_XSXX_XXM--ѧ����Ϣ���ݱ� Ѫ����
      ,[cd].MC as c_XSXX_XXM_MC--Ѫ�ʹ���� ����
      ,[cd].JC as c_XSXX_XXM_JC--Ѫ�ʹ���� ���
      ,c.CSRQ as c_XSXX_CSRQ--ѧ����Ϣ���ݱ� ��������
      ,c.CSDM as c_XSXX_CSDM--ѧ����Ϣ���ݱ� ��������
      ,[ce].MC as c_XSXX_CSDM_MC--�л����񹲺͹������������� ����
      ,c.JG as c_XSXX_JG--ѧ����Ϣ���ݱ� ����
      ,c.MZM as c_XSXX_MZM--ѧ����Ϣ���ݱ� ������
      ,[cf].MZMC as c_XSXX_MZM_MZMC--�й����������Ƶ�������ĸƴд���ʹ��� ��������
      ,[cf].ZMDM as c_XSXX_MZM_ZMDM--�й����������Ƶ�������ĸƴд���ʹ��� ��ĸ����
      ,c.HYZKM as c_XSXX_HYZKM--ѧ����Ϣ���ݱ� ����״����
      ,[cg].MC as c_XSXX_HYZKM_MC--����״������ ����
      ,c.XYZJM as c_XSXX_XYZJM--ѧ����Ϣ���ݱ� �����ڽ���
      ,[ch].MC as c_XSXX_XYZJM_MC--�ڽ��������� ����
      ,c.GATQWM as c_XSXX_GATQWM--ѧ����Ϣ���ݱ� �۰�̨������
      ,[ci].MC as c_XSXX_GATQWM_MC--�۰�̨�������� ����
      ,[ci].SM as c_XSXX_GATQWM_SM--�۰�̨�������� ˵��
      ,c.JKZKM as c_XSXX_JKZKM--ѧ����Ϣ���ݱ� ����״����
      ,[cj].MC as c_XSXX_JKZKM_MC--����״��1λ���ִ��� ����
      ,[cj].SM as c_XSXX_JKZKM_SM--����״��1λ���ִ��� ˵��
      ,c.ZZMMM as c_XSXX_ZZMMM--ѧ����Ϣ���ݱ� ������ò��
      ,[ck].MC as c_XSXX_ZZMMM_MC--������ò���� ����
      ,[ck].JC as c_XSXX_ZZMMM_JC--������ò���� ���
      ,c.HKSZDXZQHM as c_XSXX_HKSZDXZQHM--ѧ����Ϣ���ݱ� �������ڵ�����������
      ,[cl].MC as c_XSXX_HKSZDXZQHM_MC--�л����񹲺͹������������� ����
      ,c.HKLBM as c_XSXX_HKLBM--ѧ����Ϣ���ݱ� ���������
      ,[cm].MC as c_XSXX_HKLBM_MC--���������� ����
      ,c.SFSLDRK as c_XSXX_SFSLDRK--ѧ����Ϣ���ݱ� �Ƿ��������˿�
      ,[cn].MC as c_XSXX_SFSLDRK_MC--�Ƿ��־����� ����
      ,c.GJDQM as c_XSXX_GJDQM--ѧ����Ϣ���ݱ� ����/����
      ,[co].GJDQMCJC as c_XSXX_GJDQM_GJDQMCJC--��������͵������ƴ��� ����/�������Ƽ��
      ,[co].EZMDM as c_XSXX_GJDQM_EZMDM--��������͵������ƴ��� ����ĸ����
      ,[co].SZMDM as c_XSXX_GJDQM_SZMDM--��������͵������ƴ��� ����ĸ����
      ,c.TC as c_XSXX_TC--ѧ����Ϣ���ݱ� �س�
      ,c.XSLXDH as c_XSXX_XSLXDH--ѧ����Ϣ���ݱ� ѧ����ϵ�绰
      ,c.WLDZ as c_XSXX_WLDZ--ѧ����Ϣ���ݱ� �����ַ
      ,c.JSTXH as c_XSXX_JSTXH--ѧ����Ϣ���ݱ� ��ʱͨѶ��
      ,c.DZXX as c_XSXX_DZXX--ѧ����Ϣ���ݱ� ��������
      ,c.ZP as c_XSXX_ZP--ѧ����Ϣ���ݱ� ��Ƭ(·��)
      ,d.SCHOOLID as d_KC_SCHOOLID--�γ���������� ѧУID
      ,d.KCMC as d_KC_KCMC--�γ���������� �γ�����
      ,d.KCYWM as d_KC_KCYWM--�γ���������� �γ�Ӣ����
      ,d.KCBM as d_KC_KCBM--�γ���������� �γ̱���
      ,d.KCJS as d_KC_KCJS--�γ���������� �γ̽���
      ,d.XF as d_KC_XF--�γ���������� ѧ��
      ,d.ZXS as d_KC_ZXS--�γ���������� ��ѧʱ
      ,d.LLXS as d_KC_LLXS--�γ���������� ����ѧʱ
      ,d.SJXS as d_KC_SJXS--�γ���������� ʵ��ѧʱ
      ,d.QTXS as d_KC_QTXS--�γ���������� ����ѧʱ
      ,d.CKSM as d_KC_CKSM--�γ���������� �ο���Ŀ
      ,d.KKDW as d_KC_KKDW--�γ���������� ���ε�λ
      ,d.KSXS as d_KC_KSXS--�γ���������� ������ʽ
      ,[db].MC as d_KC_KSXS_MC--������ʽ����� ����
      ,d.SKFSM as d_KC_SKFSM--�γ���������� �ڿη�ʽ��
      ,[dc].MC as d_KC_SKFSM_MC--�ڿη�ʽ����� ����
      ,d.KCFY as d_KC_KCFY--�γ���������� �γ̷���
      ,e.SCHOOLID as e_XQ_SCHOOLID--ѧ�����ݱ� ѧУ��
      ,e.XNID as e_XQ_XNID--ѧ�����ݱ� ѧ��
      ,e.XQM as e_XQ_XQM--ѧ�����ݱ� ѧ����
      ,[eb].MC as e_XQ_XQM_MC--ѧ�ڴ���� ����
      ,e.XQMC as e_XQ_XQMC--ѧ�����ݱ� ѧ������
      ,e.XQKSRQ as e_XQ_XQKSRQ--ѧ�����ݱ� ѧ�ڿ�ʼ����
      ,e.XQJSRQ as e_XQ_XQJSRQ--ѧ�����ݱ� ѧ�ڽ�������
      ,f.MC as f_KSXZ_MC--�������ʴ���� ����
      ,f.SM as f_KSXZ_SM--�������ʴ���� ˵��
      ,g.SCHOOLID as g_JZGJBSJ_SCHOOLID--��ְ��������������� ѧУ��
      ,g.GH as g_JZGJBSJ_GH--��ְ��������������� ����
      ,g.XM as g_JZGJBSJ_XM--��ְ��������������� ����
      ,g.YWXM as g_JZGJBSJ_YWXM--��ְ��������������� Ӣ������
      ,g.XMPY as g_JZGJBSJ_XMPY--��ְ��������������� ����ƴ��
      ,g.CYM as g_JZGJBSJ_CYM--��ְ��������������� ������
      ,g.SFZJLXM as g_JZGJBSJ_SFZJLXM--��ְ��������������� ���֤��������
      ,[gb].MC as g_JZGJBSJ_SFZJLXM_MC--���֤�����ʹ���� ����
      ,g.SFZJH as g_JZGJBSJ_SFZJH--��ְ��������������� ���֤����
      ,g.CSRQ as g_JZGJBSJ_CSRQ--��ְ��������������� ��������
      ,g.XBM as g_JZGJBSJ_XBM--��ְ��������������� �Ա���
      ,[gc].MC as g_JZGJBSJ_XBM_MC--�˵��Ա���� ����
      ,g.MZM as g_JZGJBSJ_MZM--��ְ��������������� ������
      ,[gd].MZMC as g_JZGJBSJ_MZM_MZMC--�й����������Ƶ�������ĸƴд���ʹ��� ��������
      ,[gd].ZMDM as g_JZGJBSJ_MZM_ZMDM--�й����������Ƶ�������ĸƴд���ʹ��� ��ĸ����
      ,g.XXM as g_JZGJBSJ_XXM--��ְ��������������� Ѫ����
      ,[ge].MC as g_JZGJBSJ_XXM_MC--Ѫ�ʹ���� ����
      ,[ge].JC as g_JZGJBSJ_XXM_JC--Ѫ�ʹ���� ���
      ,g.JKZKM as g_JZGJBSJ_JKZKM--��ְ��������������� ����״����
      ,[gf].MC as g_JZGJBSJ_JKZKM_MC--����״��1λ���ִ��� ����
      ,[gf].SM as g_JZGJBSJ_JKZKM_SM--����״��1λ���ִ��� ˵��
      ,g.HYZTM as g_JZGJBSJ_HYZTM--��ְ��������������� ����״̬��
      ,[gg].MC as g_JZGJBSJ_HYZTM_MC--����״������ ����
      ,g.ZZMMM as g_JZGJBSJ_ZZMMM--��ְ��������������� ������ò��
      ,[gh].MC as g_JZGJBSJ_ZZMMM_MC--������ò���� ����
      ,[gh].JC as g_JZGJBSJ_ZZMMM_JC--������ò���� ���
      ,g.GATQWM as g_JZGJBSJ_GATQWM--��ְ��������������� �۰�̨������
      ,[gi].MC as g_JZGJBSJ_GATQWM_MC--�۰�̨�������� ����
      ,[gi].SM as g_JZGJBSJ_GATQWM_SM--�۰�̨�������� ˵��
      ,g.JG as g_JZGJBSJ_JG--��ְ��������������� ����
      ,g.GJDQM as g_JZGJBSJ_GJDQM--��ְ��������������� ����/������
      ,[gj].GJDQMCJC as g_JZGJBSJ_GJDQM_GJDQMCJC--��������͵������ƴ��� ����/�������Ƽ��
      ,[gj].EZMDM as g_JZGJBSJ_GJDQM_EZMDM--��������͵������ƴ��� ����ĸ����
      ,[gj].SZMDM as g_JZGJBSJ_GJDQM_SZMDM--��������͵������ƴ��� ����ĸ����
      ,g.CSDXZQHM as g_JZGJBSJ_CSDXZQHM--��ְ��������������� ����������������
      ,[gk].MC as g_JZGJBSJ_CSDXZQHM_MC--�л����񹲺͹������������� ����
      ,g.XYZJM as g_JZGJBSJ_XYZJM--��ְ��������������� �����ڽ���
      ,[gl].MC as g_JZGJBSJ_XYZJM_MC--�ڽ��������� ����
      ,g.JZGHKSZDXZQHM as g_JZGJBSJ_JZGHKSZDXZQHM--��ְ��������������� ��ְ���������ڵ�����������
      ,[gm].MC as g_JZGJBSJ_JZGHKSZDXZQHM_MC--�л����񹲺͹������������� ����
      ,g.HKLBM as g_JZGJBSJ_HKLBM--��ְ��������������� ���������
      ,[gn].MC as g_JZGJBSJ_HKLBM_MC--���������� ����
      ,g.DQZZ as g_JZGJBSJ_DQZZ--��ְ��������������� ��ǰסַ
      ,g.DQZZYZBM as g_JZGJBSJ_DQZZYZBM--��ְ��������������� ��ǰסַ��������
      ,g.CJGZNY as g_JZGJBSJ_CJGZNY--��ְ��������������� �μӹ�������
      ,g.CJNY as g_JZGJBSJ_CJNY--��ְ��������������� �ӽ�����
      ,g.LXNY as g_JZGJBSJ_LXNY--��ְ��������������� ��У����
      ,g.BZLBM as g_JZGJBSJ_BZLBM--��ְ��������������� ���������
      ,[go].MC as g_JZGJBSJ_BZLBM_MC--����������� ����
      ,g.JZGLBM as g_JZGJBSJ_JZGLBM--��ְ��������������� ��ְ�������
      ,[gp].MC as g_JZGJBSJ_JZGLBM_MC--��ְ��������� ����
      ,[gp].SM as g_JZGJBSJ_JZGLBM_SM--��ְ��������� ˵��
      ,g.GWLBM as g_JZGJBSJ_GWLBM--��ְ��������������� ��λ�����
      ,[gq].MC as g_JZGJBSJ_GWLBM_MC--��λ������� ����
      ,g.SFJZJS as g_JZGJBSJ_SFJZJS--��ְ��������������� �Ƿ��ְ��ʦ
      ,[gr].MC as g_JZGJBSJ_SFJZJS_MC--�Ƿ��־����� ����
      ,g.SFSSXJS as g_JZGJBSJ_SFSSXJS--��ְ��������������� �Ƿ�˫ʦ�ͽ�ʦ
      ,[gs].MC as g_JZGJBSJ_SFSSXJS_MC--�Ƿ��־����� ����
      ,g.ZP as g_JZGJBSJ_ZP--��ְ��������������� ��Ƭ(·��)
      ,g.DQZTM as g_JZGJBSJ_DQZTM--��ְ��������������� ��ǰ״̬��
      ,[gt].MC as g_JZGJBSJ_DQZTM_MC--��ְ����ǰ״̬����� ����
      ,g.YDDH as g_JZGJBSJ_YDDH--��ְ��������������� �ƶ��绰
      ,g.GDDH as g_JZGJBSJ_GDDH--��ְ��������������� �̶��绰
      ,g.TXDZYZBM as g_JZGJBSJ_TXDZYZBM--��ְ��������������� ͨ�ŵ�ַ��������
      ,g.TXDZ as g_JZGJBSJ_TXDZ--��ְ��������������� ͨ�ŵ�ַ
      ,g.DZXX as g_JZGJBSJ_DZXX--��ְ��������������� ��������
      ,g.WLDZ as g_JZGJBSJ_WLDZ--��ְ��������������� �����ַ
      ,g.JSTXH as g_JZGJBSJ_JSTXH--��ְ��������������� ��ʱͨѶ��
      ,h.SCHOOLID as h_JZGJBSJ_SCHOOLID--��ְ��������������� ѧУ��
      ,h.GH as h_JZGJBSJ_GH--��ְ��������������� ����
      ,h.XM as h_JZGJBSJ_XM--��ְ��������������� ����
      ,h.YWXM as h_JZGJBSJ_YWXM--��ְ��������������� Ӣ������
      ,h.XMPY as h_JZGJBSJ_XMPY--��ְ��������������� ����ƴ��
      ,h.CYM as h_JZGJBSJ_CYM--��ְ��������������� ������
      ,h.SFZJLXM as h_JZGJBSJ_SFZJLXM--��ְ��������������� ���֤��������
      ,[hb].MC as h_JZGJBSJ_SFZJLXM_MC--���֤�����ʹ���� ����
      ,h.SFZJH as h_JZGJBSJ_SFZJH--��ְ��������������� ���֤����
      ,h.CSRQ as h_JZGJBSJ_CSRQ--��ְ��������������� ��������
      ,h.XBM as h_JZGJBSJ_XBM--��ְ��������������� �Ա���
      ,[hc].MC as h_JZGJBSJ_XBM_MC--�˵��Ա���� ����
      ,h.MZM as h_JZGJBSJ_MZM--��ְ��������������� ������
      ,[hd].MZMC as h_JZGJBSJ_MZM_MZMC--�й����������Ƶ�������ĸƴд���ʹ��� ��������
      ,[hd].ZMDM as h_JZGJBSJ_MZM_ZMDM--�й����������Ƶ�������ĸƴд���ʹ��� ��ĸ����
      ,h.XXM as h_JZGJBSJ_XXM--��ְ��������������� Ѫ����
      ,[he].MC as h_JZGJBSJ_XXM_MC--Ѫ�ʹ���� ����
      ,[he].JC as h_JZGJBSJ_XXM_JC--Ѫ�ʹ���� ���
      ,h.JKZKM as h_JZGJBSJ_JKZKM--��ְ��������������� ����״����
      ,[hf].MC as h_JZGJBSJ_JKZKM_MC--����״��1λ���ִ��� ����
      ,[hf].SM as h_JZGJBSJ_JKZKM_SM--����״��1λ���ִ��� ˵��
      ,h.HYZTM as h_JZGJBSJ_HYZTM--��ְ��������������� ����״̬��
      ,[hg].MC as h_JZGJBSJ_HYZTM_MC--����״������ ����
      ,h.ZZMMM as h_JZGJBSJ_ZZMMM--��ְ��������������� ������ò��
      ,[hh].MC as h_JZGJBSJ_ZZMMM_MC--������ò���� ����
      ,[hh].JC as h_JZGJBSJ_ZZMMM_JC--������ò���� ���
      ,h.GATQWM as h_JZGJBSJ_GATQWM--��ְ��������������� �۰�̨������
      ,[hi].MC as h_JZGJBSJ_GATQWM_MC--�۰�̨�������� ����
      ,[hi].SM as h_JZGJBSJ_GATQWM_SM--�۰�̨�������� ˵��
      ,h.JG as h_JZGJBSJ_JG--��ְ��������������� ����
      ,h.GJDQM as h_JZGJBSJ_GJDQM--��ְ��������������� ����/������
      ,[hj].GJDQMCJC as h_JZGJBSJ_GJDQM_GJDQMCJC--��������͵������ƴ��� ����/�������Ƽ��
      ,[hj].EZMDM as h_JZGJBSJ_GJDQM_EZMDM--��������͵������ƴ��� ����ĸ����
      ,[hj].SZMDM as h_JZGJBSJ_GJDQM_SZMDM--��������͵������ƴ��� ����ĸ����
      ,h.CSDXZQHM as h_JZGJBSJ_CSDXZQHM--��ְ��������������� ����������������
      ,[hk].MC as h_JZGJBSJ_CSDXZQHM_MC--�л����񹲺͹������������� ����
      ,h.XYZJM as h_JZGJBSJ_XYZJM--��ְ��������������� �����ڽ���
      ,[hl].MC as h_JZGJBSJ_XYZJM_MC--�ڽ��������� ����
      ,h.JZGHKSZDXZQHM as h_JZGJBSJ_JZGHKSZDXZQHM--��ְ��������������� ��ְ���������ڵ�����������
      ,[hm].MC as h_JZGJBSJ_JZGHKSZDXZQHM_MC--�л����񹲺͹������������� ����
      ,h.HKLBM as h_JZGJBSJ_HKLBM--��ְ��������������� ���������
      ,[hn].MC as h_JZGJBSJ_HKLBM_MC--���������� ����
      ,h.DQZZ as h_JZGJBSJ_DQZZ--��ְ��������������� ��ǰסַ
      ,h.DQZZYZBM as h_JZGJBSJ_DQZZYZBM--��ְ��������������� ��ǰסַ��������
      ,h.CJGZNY as h_JZGJBSJ_CJGZNY--��ְ��������������� �μӹ�������
      ,h.CJNY as h_JZGJBSJ_CJNY--��ְ��������������� �ӽ�����
      ,h.LXNY as h_JZGJBSJ_LXNY--��ְ��������������� ��У����
      ,h.BZLBM as h_JZGJBSJ_BZLBM--��ְ��������������� ���������
      ,[ho].MC as h_JZGJBSJ_BZLBM_MC--����������� ����
      ,h.JZGLBM as h_JZGJBSJ_JZGLBM--��ְ��������������� ��ְ�������
      ,[hp].MC as h_JZGJBSJ_JZGLBM_MC--��ְ��������� ����
      ,[hp].SM as h_JZGJBSJ_JZGLBM_SM--��ְ��������� ˵��
      ,h.GWLBM as h_JZGJBSJ_GWLBM--��ְ��������������� ��λ�����
      ,[hq].MC as h_JZGJBSJ_GWLBM_MC--��λ������� ����
      ,h.SFJZJS as h_JZGJBSJ_SFJZJS--��ְ��������������� �Ƿ��ְ��ʦ
      ,[hr].MC as h_JZGJBSJ_SFJZJS_MC--�Ƿ��־����� ����
      ,h.SFSSXJS as h_JZGJBSJ_SFSSXJS--��ְ��������������� �Ƿ�˫ʦ�ͽ�ʦ
      ,[hs].MC as h_JZGJBSJ_SFSSXJS_MC--�Ƿ��־����� ����
      ,h.ZP as h_JZGJBSJ_ZP--��ְ��������������� ��Ƭ(·��)
      ,h.DQZTM as h_JZGJBSJ_DQZTM--��ְ��������������� ��ǰ״̬��
      ,[ht].MC as h_JZGJBSJ_DQZTM_MC--��ְ����ǰ״̬����� ����
      ,h.YDDH as h_JZGJBSJ_YDDH--��ְ��������������� �ƶ��绰
      ,h.GDDH as h_JZGJBSJ_GDDH--��ְ��������������� �̶��绰
      ,h.TXDZYZBM as h_JZGJBSJ_TXDZYZBM--��ְ��������������� ͨ�ŵ�ַ��������
      ,h.TXDZ as h_JZGJBSJ_TXDZ--��ְ��������������� ͨ�ŵ�ַ
      ,h.DZXX as h_JZGJBSJ_DZXX--��ְ��������������� ��������
      ,h.WLDZ as h_JZGJBSJ_WLDZ--��ְ��������������� �����ַ
      ,h.JSTXH as h_JZGJBSJ_JSTXH--��ְ��������������� ��ʱͨѶ��
      ,i.SCHOOLID as i_JXJHKCQD_SCHOOLID--��ѧ�ƻ��γ��嵥��������� ѧУID
      ,i.JXJHID as i_JXJHKCQD_JXJHID--��ѧ�ƻ��γ��嵥��������� ��ѧ�ƻ�ID
      ,i.KCH as i_JXJHKCQD_KCH--��ѧ�ƻ��γ��嵥��������� �γ̺�
      ,i.JHBH as i_JXJHKCQD_JHBH--��ѧ�ƻ��γ��嵥��������� �ƻ����
      ,i.XQID as i_JXJHKCQD_XQID--��ѧ�ƻ��γ��嵥��������� ѧ��ID
      ,i.KCMC as i_JXJHKCQD_KCMC--��ѧ�ƻ��γ��嵥��������� �γ�����
      ,i.YXKC as i_JXJHKCQD_YXKC--��ѧ�ƻ��γ��嵥��������� Ԥ�޿γ�
      ,i.SFHXKC as i_JXJHKCQD_SFHXKC--��ѧ�ƻ��γ��嵥��������� �Ƿ���ģ��Ǹɣ�
      ,[ib].MC as i_JXJHKCQD_SFHXKC_MC--�ڿη�ʽ����� ����
      ,i.KCFLM as i_JXJHKCQD_KCFLM--��ѧ�ƻ��γ��嵥��������� �γ̷�����
      ,[ic].MC as i_JXJHKCQD_KCFLM_MC--�γ̷������ ����
      ,i.KCSXM as i_JXJHKCQD_KCSXM--��ѧ�ƻ��γ��嵥��������� �γ�������
      ,[id].MC as i_JXJHKCQD_KCSXM_MC--�γ����Դ���� ����
      ,[id].SM as i_JXJHKCQD_KCSXM_SM--�γ����Դ���� ˵��
      ,i.ZXXQ as i_JXJHKCQD_ZXXQ--��ѧ�ƻ��γ��嵥��������� ִ��ѧ��
      ,i.ZKS as i_JXJHKCQD_ZKS--��ѧ�ƻ��γ��嵥��������� �ܿ�ʱ
      ,i.LLKS as i_JXJHKCQD_LLKS--��ѧ�ƻ��γ��嵥��������� ���ۿ�ʱ
      ,i.SJKS as i_JXJHKCQD_SJKS--��ѧ�ƻ��γ��嵥��������� ʵ����ʱ
      ,i.XF as i_JXJHKCQD_XF--��ѧ�ƻ��γ��嵥��������� ѧ��
      ,j.SCHOOLID as j_XSCJLX_SCHOOLID--ѧ���ɼ����ͱ� ѧУID
      ,j.LXMC as j_XSCJLX_LXMC--ѧ���ɼ����ͱ� ��������
      ,j.QZ as j_XSCJLX_QZ--ѧ���ɼ����ͱ� Ȩ��
      ,j.KCQDID as j_XSCJLX_KCQDID--ѧ���ɼ����ͱ� �γ��嵥ID
      ,k.SCHOOLID as k_ZYXX_SCHOOLID--רҵ������Ϣ���ݱ� ѧУ��
      ,k.ZYDM as k_ZYXX_ZYDM--רҵ������Ϣ���ݱ� רҵ����
      ,[kb].ZYMLLB as k_ZYXX_ZYDM_ZYMLLB--�Խ�רҵ���� רҵĿ¼���
      ,[kb].MC as k_ZYXX_ZYDM_MC--�Խ�רҵ���� ����
      ,k.ZYMC as k_ZYXX_ZYMC--רҵ������Ϣ���ݱ� רҵ����
      ,k.ZYYWMC as k_ZYXX_ZYYWMC--רҵ������Ϣ���ݱ� רҵӢ������
      ,k.XZ as k_ZYXX_XZ--רҵ������Ϣ���ݱ� ѧ��
      ,k.ZYFXMC as k_ZYXX_ZYFXMC--רҵ������Ϣ���ݱ� רҵ��������
      ,k.ZYJC as k_ZYXX_ZYJC--רҵ������Ϣ���ݱ� רҵ���
      ,k.JLNY as k_ZYXX_JLNY--רҵ������Ϣ���ݱ� ��������
      ,k.ZYJSS as k_ZYXX_ZYJSS--רҵ������Ϣ���ݱ� רҵ��ʦ��
      ,k.KSJGH as k_ZYXX_KSJGH--רҵ������Ϣ���ݱ� ���������
      ,k.ZXF as k_ZYXX_ZXF--רҵ������Ϣ���ݱ� ��ѧ��
      ,k.SSZYML as k_ZYXX_SSZYML--רҵ������Ϣ���ݱ� ����רҵĿ¼
      ,[kc].MC as k_ZYXX_SSZYML_MC--רҵĿ¼���� ����
      ,k.ZYLB as k_ZYXX_ZYLB--רҵ������Ϣ���ݱ� רҵ�������
      ,l.SCHOOLID as l_ZZNJ_SCHOOLID--ѧУ�꼶���ݱ� ѧУ��
      ,l.NJMC as l_ZZNJ_NJMC--ѧУ�꼶���ݱ� �꼶����
      ,l.SSNF as l_ZZNJ_SSNF--ѧУ�꼶���ݱ� �������
      ,l.NJZT as l_ZZNJ_NJZT--ѧУ�꼶���ݱ� �꼶״̬
      ,[lb].MC as l_ZZNJ_NJZT_MC--�Ƿ��־����� ����
      ,m.SCHOOLID as m_ZZBJ_SCHOOLID--ѧУ�༶���ݱ� ѧУ��
      ,m.ZYXXID as m_ZZBJ_ZYXXID--ѧУ�༶���ݱ� רҵ������Ϣ
      ,m.ZZNJID as m_ZZBJ_ZZNJID--ѧУ�༶���ݱ� ѧУ�꼶���ݱ�
      ,m.XZBMC as m_ZZBJ_XZBMC--ѧУ�༶���ݱ� ����������
      ,m.JBNY as m_ZZBJ_JBNY--ѧУ�༶���ݱ� ��������
      ,m.BZRGH as m_ZZBJ_BZRGH--ѧУ�༶���ݱ� �����ι���
      ,m.JSBH as m_ZZBJ_JSBH--ѧУ�༶���ݱ� ���ұ��
      ,m.NANSRS as m_ZZBJ_NANSRS--ѧУ�༶���ݱ� ��������
      ,m.NVSRS as m_ZZBJ_NVSRS--ѧУ�༶���ݱ� Ů������
      ,m.ZRS as m_ZZBJ_ZRS--ѧУ�༶���ݱ� ������
      ,m.BZXH as m_ZZBJ_BZXH--ѧУ�༶���ݱ� �೤ѧ��
      ,m.JXJH as m_ZZBJ_JXJH--ѧУ�༶���ݱ� ��ѧ�ƻ�
      ,m.JGH as m_ZZBJ_JGH--ѧУ�༶���ݱ� ������
      ,m.XQDM as m_ZZBJ_XQDM--ѧУ�༶���ݱ� У������
      ,m.BZRID as m_ZZBJ_BZRID--ѧУ�༶���ݱ� ������ID

FROM dbo.EDU_ZZXS_06_01_XSCJ AS a LEFT OUTER JOIN
      dbo.EDU_ZZXS_01_01_XSXX AS c ON a.XSXXID = c.ID /*ѧ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_01_02_KC AS d ON a.KCH = d.KCH /*�γ̺�*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS e ON a.XQID = e.ID /*ѧ��ID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_JY_KSXZ AS f ON a.KSXZ = f.DM /*��������*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS g ON a.RKJGID = g.ID /*�ον̹�ID*/ AND a.SCHOOLID = g.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS h ON a.CJLRJGID = h.ID /*�ɼ�¼��̹�ID*/ AND a.SCHOOLID = h.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_03_03_JXJHKCQD AS i ON a.KCQDID = i.ID /*�γ��嵥ID*/ AND a.SCHOOLID = i.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZXS_06_02_XSCJLX AS j ON a.CJLXID = j.ID /*�ɼ�����ID*/ AND a.SCHOOLID = j.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_01_01_ZYXX AS k ON a.ZYXXID = k.ZYBH /*רҵID*/ AND a.SCHOOLID = k.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_02_01_ZZNJ AS l ON a.NJID = l.NJDM /*�꼶ID*/ AND a.SCHOOLID = l.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_02_02_ZZBJ AS m ON a.BJID = m.XZBDM /*�༶ID*/ AND a.SCHOOLID = m.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS [cb] ON c.SFZJLXM = [cb].DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS [cc] ON c.XBM = [cc].DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS [cd] ON c.XXM = [cd].DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [ce] ON c.CSDM = [ce].DM /*��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS [cf] ON c.MZM = [cf].DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS [cg] ON c.HYZKM = [cg].DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS [ch] ON c.XYZJM = [ch].DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS [ci] ON c.GATQWM = [ci].DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS [cj] ON c.JKZKM = [cj].DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS [ck] ON c.ZZMMM = [ck].DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [cl] ON c.HKSZDXZQHM = [cl].DM /*�������ڵ�����������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS [cm] ON c.HKLBM = [cm].DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [cn] ON c.SFSLDRK = [cn].DM /*�Ƿ��������˿�*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS [co] ON c.GJDQM = [co].DM /*����/����*/ LEFT OUTER JOIN
      dbo.EDU_JY_KSXS AS [db] ON d.KSXS = [db].DM /*������ʽ*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS [dc] ON d.SKFSM = [dc].DM /*�ڿη�ʽ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS [eb] ON e.XQM = [eb].DM /*ѧ����*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS [gb] ON g.SFZJLXM = [gb].DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS [gc] ON g.XBM = [gc].DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS [gd] ON g.MZM = [gd].DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS [ge] ON g.XXM = [ge].DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS [gf] ON g.JKZKM = [gf].DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS [gg] ON g.HYZTM = [gg].DM /*����״̬��*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS [gh] ON g.ZZMMM = [gh].DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS [gi] ON g.GATQWM = [gi].DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS [gj] ON g.GJDQM = [gj].DM /*����/������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [gk] ON g.CSDXZQHM = [gk].DM /*����������������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS [gl] ON g.XYZJM = [gl].DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [gm] ON g.JZGHKSZDXZQHM = [gm].DM /*��ְ���������ڵ�����������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS [gn] ON g.HKLBM = [gn].DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_BZLB AS [go] ON g.BZLBM = [go].DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGLB AS [gp] ON g.JZGLBM = [gp].DM /*��ְ�������*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWLB AS [gq] ON g.GWLBM = [gq].DM /*��λ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [gr] ON g.SFJZJS = [gr].DM /*�Ƿ��ְ��ʦ*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [gs] ON g.SFSSXJS = [gs].DM /*�Ƿ�˫ʦ�ͽ�ʦ*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGDQZT AS [gt] ON g.DQZTM = [gt].DM /*��ǰ״̬��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS [hb] ON h.SFZJLXM = [hb].DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS [hc] ON h.XBM = [hc].DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS [hd] ON h.MZM = [hd].DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS [he] ON h.XXM = [he].DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS [hf] ON h.JKZKM = [hf].DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS [hg] ON h.HYZTM = [hg].DM /*����״̬��*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS [hh] ON h.ZZMMM = [hh].DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS [hi] ON h.GATQWM = [hi].DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS [hj] ON h.GJDQM = [hj].DM /*����/������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [hk] ON h.CSDXZQHM = [hk].DM /*����������������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS [hl] ON h.XYZJM = [hl].DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [hm] ON h.JZGHKSZDXZQHM = [hm].DM /*��ְ���������ڵ�����������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS [hn] ON h.HKLBM = [hn].DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_BZLB AS [ho] ON h.BZLBM = [ho].DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGLB AS [hp] ON h.JZGLBM = [hp].DM /*��ְ�������*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWLB AS [hq] ON h.GWLBM = [hq].DM /*��λ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [hr] ON h.SFJZJS = [hr].DM /*�Ƿ��ְ��ʦ*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [hs] ON h.SFSSXJS = [hs].DM /*�Ƿ�˫ʦ�ͽ�ʦ*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGDQZT AS [ht] ON h.DQZTM = [ht].DM /*��ǰ״̬��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS [ib] ON i.SFHXKC = [ib].DM /*�Ƿ���ģ��Ǹɣ�*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_KCFL AS [ic] ON i.KCFLM = [ic].DM /*�γ̷�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_KCSX AS [id] ON i.KCSXM = [id].DM /*�γ�������*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZJZY AS [kb] ON k.ZYDM = [kb].DM /*רҵ����*/ AND k.SSZYML = [kb].ZYMLLB /*����רҵĿ¼*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZYML AS [kc] ON k.SSZYML = [kc].DM /*����רҵĿ¼*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [lb] ON l.NJZT = [lb].DM /*�꼶״̬*/
GO
