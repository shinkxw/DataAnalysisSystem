
--ѧ��������Ϣ��
CREATE VIEW [dbo].[VIEW_EDU_ZZXS_18_A04_XSCFXX_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[XSXXID]--ѧ��ID
      ,a.[WJLXID]--Υ������ID
      ,a.[XQID]--ѧ��ID
      ,a.[DQZT]--��ǰ״̬
      ,a.[WJQK]--Υ�����
      ,a.[JYCFLXID]--���鴦������ID
      ,a.[SBSJ]--�ϱ�ʱ��
      ,a.[SBJSID]--�ϱ���ʦID
      ,a.[ZZCFLXID]--���մ�������ID
      ,a.[SHSJ]--���ʱ��
      ,a.[SHJSID]--��˽�ʦID
      ,a.[BZ]--��ע
      ,a.[FSSJ]--����ʱ��
      ,a.[JCSJ]--���ʱ��
      ,a.[JCJSID]--�����ʦID
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
      ,c.RXXQID as c_XSXX_RXXQID--ѧ����Ϣ���ݱ� ��ѧѧ��ID
      ,d.SCHOOLID as d_WJLX_SCHOOLID--Υ�����ͱ� ѧУ
      ,d.WJLXMC as d_WJLX_WJLXMC--Υ�����ͱ� Υ����������
      ,d.WJNRFW as d_WJLX_WJNRFW--Υ�����ͱ� Υ�����ݷ�Χ
      ,d.BZ as d_WJLX_BZ--Υ�����ͱ� ��ע
      ,e.SCHOOLID as e_XQ_SCHOOLID--ѧ�����ݱ� ѧУ��
      ,e.XNID as e_XQ_XNID--ѧ�����ݱ� ѧ��
      ,e.XQM as e_XQ_XQM--ѧ�����ݱ� ѧ����
      ,[eb].MC as e_XQ_XQM_MC--ѧ�ڴ���� ����
      ,e.XQMC as e_XQ_XQMC--ѧ�����ݱ� ѧ������
      ,e.XQKSRQ as e_XQ_XQKSRQ--ѧ�����ݱ� ѧ�ڿ�ʼ����
      ,e.XQJSRQ as e_XQ_XQJSRQ--ѧ�����ݱ� ѧ�ڽ�������
      ,f.SCHOOLID as f_CFLX_SCHOOLID--�������ͱ� ѧУ
      ,f.CFLXMC as f_CFLX_CFLXMC--�������ͱ� ������������
      ,f.CFGLDW as f_CFLX_CFGLDW--�������ͱ� ���ֹ���λ
      ,f.SFCZCKQ as f_CFLX_SFCZCKQ--�������ͱ� �Ƿ���ڲ鿴��
      ,[fb].MC as f_CFLX_SFCZCKQ_MC--�Ƿ��־����� ����
      ,f.CKQ as f_CFLX_CKQ--�������ͱ� �鿴��
      ,f.SFYXJC as f_CFLX_SFYXJC--�������ͱ� �Ƿ�������
      ,[fc].MC as f_CFLX_SFYXJC_MC--�Ƿ��־����� ����
      ,f.BZ as f_CFLX_BZ--�������ͱ� ��ע
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
      ,h.SCHOOLID as h_CFLX_SCHOOLID--�������ͱ� ѧУ
      ,h.CFLXMC as h_CFLX_CFLXMC--�������ͱ� ������������
      ,h.CFGLDW as h_CFLX_CFGLDW--�������ͱ� ���ֹ���λ
      ,h.SFCZCKQ as h_CFLX_SFCZCKQ--�������ͱ� �Ƿ���ڲ鿴��
      ,[hb].MC as h_CFLX_SFCZCKQ_MC--�Ƿ��־����� ����
      ,h.CKQ as h_CFLX_CKQ--�������ͱ� �鿴��
      ,h.SFYXJC as h_CFLX_SFYXJC--�������ͱ� �Ƿ�������
      ,[hc].MC as h_CFLX_SFYXJC_MC--�Ƿ��־����� ����
      ,h.BZ as h_CFLX_BZ--�������ͱ� ��ע
      ,i.SCHOOLID as i_JZGJBSJ_SCHOOLID--��ְ��������������� ѧУ��
      ,i.GH as i_JZGJBSJ_GH--��ְ��������������� ����
      ,i.XM as i_JZGJBSJ_XM--��ְ��������������� ����
      ,i.YWXM as i_JZGJBSJ_YWXM--��ְ��������������� Ӣ������
      ,i.XMPY as i_JZGJBSJ_XMPY--��ְ��������������� ����ƴ��
      ,i.CYM as i_JZGJBSJ_CYM--��ְ��������������� ������
      ,i.SFZJLXM as i_JZGJBSJ_SFZJLXM--��ְ��������������� ���֤��������
      ,[ib].MC as i_JZGJBSJ_SFZJLXM_MC--���֤�����ʹ���� ����
      ,i.SFZJH as i_JZGJBSJ_SFZJH--��ְ��������������� ���֤����
      ,i.CSRQ as i_JZGJBSJ_CSRQ--��ְ��������������� ��������
      ,i.XBM as i_JZGJBSJ_XBM--��ְ��������������� �Ա���
      ,[ic].MC as i_JZGJBSJ_XBM_MC--�˵��Ա���� ����
      ,i.MZM as i_JZGJBSJ_MZM--��ְ��������������� ������
      ,[id].MZMC as i_JZGJBSJ_MZM_MZMC--�й����������Ƶ�������ĸƴд���ʹ��� ��������
      ,[id].ZMDM as i_JZGJBSJ_MZM_ZMDM--�й����������Ƶ�������ĸƴд���ʹ��� ��ĸ����
      ,i.XXM as i_JZGJBSJ_XXM--��ְ��������������� Ѫ����
      ,[ie].MC as i_JZGJBSJ_XXM_MC--Ѫ�ʹ���� ����
      ,[ie].JC as i_JZGJBSJ_XXM_JC--Ѫ�ʹ���� ���
      ,i.JKZKM as i_JZGJBSJ_JKZKM--��ְ��������������� ����״����
      ,[if].MC as i_JZGJBSJ_JKZKM_MC--����״��1λ���ִ��� ����
      ,[if].SM as i_JZGJBSJ_JKZKM_SM--����״��1λ���ִ��� ˵��
      ,i.HYZTM as i_JZGJBSJ_HYZTM--��ְ��������������� ����״̬��
      ,[ig].MC as i_JZGJBSJ_HYZTM_MC--����״������ ����
      ,i.ZZMMM as i_JZGJBSJ_ZZMMM--��ְ��������������� ������ò��
      ,[ih].MC as i_JZGJBSJ_ZZMMM_MC--������ò���� ����
      ,[ih].JC as i_JZGJBSJ_ZZMMM_JC--������ò���� ���
      ,i.GATQWM as i_JZGJBSJ_GATQWM--��ְ��������������� �۰�̨������
      ,[ii].MC as i_JZGJBSJ_GATQWM_MC--�۰�̨�������� ����
      ,[ii].SM as i_JZGJBSJ_GATQWM_SM--�۰�̨�������� ˵��
      ,i.JG as i_JZGJBSJ_JG--��ְ��������������� ����
      ,i.GJDQM as i_JZGJBSJ_GJDQM--��ְ��������������� ����/������
      ,[ij].GJDQMCJC as i_JZGJBSJ_GJDQM_GJDQMCJC--��������͵������ƴ��� ����/�������Ƽ��
      ,[ij].EZMDM as i_JZGJBSJ_GJDQM_EZMDM--��������͵������ƴ��� ����ĸ����
      ,[ij].SZMDM as i_JZGJBSJ_GJDQM_SZMDM--��������͵������ƴ��� ����ĸ����
      ,i.CSDXZQHM as i_JZGJBSJ_CSDXZQHM--��ְ��������������� ����������������
      ,[ik].MC as i_JZGJBSJ_CSDXZQHM_MC--�л����񹲺͹������������� ����
      ,i.XYZJM as i_JZGJBSJ_XYZJM--��ְ��������������� �����ڽ���
      ,[il].MC as i_JZGJBSJ_XYZJM_MC--�ڽ��������� ����
      ,i.JZGHKSZDXZQHM as i_JZGJBSJ_JZGHKSZDXZQHM--��ְ��������������� ��ְ���������ڵ�����������
      ,[im].MC as i_JZGJBSJ_JZGHKSZDXZQHM_MC--�л����񹲺͹������������� ����
      ,i.HKLBM as i_JZGJBSJ_HKLBM--��ְ��������������� ���������
      ,[in].MC as i_JZGJBSJ_HKLBM_MC--���������� ����
      ,i.DQZZ as i_JZGJBSJ_DQZZ--��ְ��������������� ��ǰסַ
      ,i.DQZZYZBM as i_JZGJBSJ_DQZZYZBM--��ְ��������������� ��ǰסַ��������
      ,i.CJGZNY as i_JZGJBSJ_CJGZNY--��ְ��������������� �μӹ�������
      ,i.CJNY as i_JZGJBSJ_CJNY--��ְ��������������� �ӽ�����
      ,i.LXNY as i_JZGJBSJ_LXNY--��ְ��������������� ��У����
      ,i.BZLBM as i_JZGJBSJ_BZLBM--��ְ��������������� ���������
      ,[io].MC as i_JZGJBSJ_BZLBM_MC--����������� ����
      ,i.JZGLBM as i_JZGJBSJ_JZGLBM--��ְ��������������� ��ְ�������
      ,[ip].MC as i_JZGJBSJ_JZGLBM_MC--��ְ��������� ����
      ,[ip].SM as i_JZGJBSJ_JZGLBM_SM--��ְ��������� ˵��
      ,i.GWLBM as i_JZGJBSJ_GWLBM--��ְ��������������� ��λ�����
      ,[iq].MC as i_JZGJBSJ_GWLBM_MC--��λ������� ����
      ,i.SFJZJS as i_JZGJBSJ_SFJZJS--��ְ��������������� �Ƿ��ְ��ʦ
      ,[ir].MC as i_JZGJBSJ_SFJZJS_MC--�Ƿ��־����� ����
      ,i.SFSSXJS as i_JZGJBSJ_SFSSXJS--��ְ��������������� �Ƿ�˫ʦ�ͽ�ʦ
      ,[is].MC as i_JZGJBSJ_SFSSXJS_MC--�Ƿ��־����� ����
      ,i.ZP as i_JZGJBSJ_ZP--��ְ��������������� ��Ƭ(·��)
      ,i.DQZTM as i_JZGJBSJ_DQZTM--��ְ��������������� ��ǰ״̬��
      ,[it].MC as i_JZGJBSJ_DQZTM_MC--��ְ����ǰ״̬����� ����
      ,i.YDDH as i_JZGJBSJ_YDDH--��ְ��������������� �ƶ��绰
      ,i.GDDH as i_JZGJBSJ_GDDH--��ְ��������������� �̶��绰
      ,i.TXDZYZBM as i_JZGJBSJ_TXDZYZBM--��ְ��������������� ͨ�ŵ�ַ��������
      ,i.TXDZ as i_JZGJBSJ_TXDZ--��ְ��������������� ͨ�ŵ�ַ
      ,i.DZXX as i_JZGJBSJ_DZXX--��ְ��������������� ��������
      ,i.WLDZ as i_JZGJBSJ_WLDZ--��ְ��������������� �����ַ
      ,i.JSTXH as i_JZGJBSJ_JSTXH--��ְ��������������� ��ʱͨѶ��
      ,j.SCHOOLID as j_JZGJBSJ_SCHOOLID--��ְ��������������� ѧУ��
      ,j.GH as j_JZGJBSJ_GH--��ְ��������������� ����
      ,j.XM as j_JZGJBSJ_XM--��ְ��������������� ����
      ,j.YWXM as j_JZGJBSJ_YWXM--��ְ��������������� Ӣ������
      ,j.XMPY as j_JZGJBSJ_XMPY--��ְ��������������� ����ƴ��
      ,j.CYM as j_JZGJBSJ_CYM--��ְ��������������� ������
      ,j.SFZJLXM as j_JZGJBSJ_SFZJLXM--��ְ��������������� ���֤��������
      ,[jb].MC as j_JZGJBSJ_SFZJLXM_MC--���֤�����ʹ���� ����
      ,j.SFZJH as j_JZGJBSJ_SFZJH--��ְ��������������� ���֤����
      ,j.CSRQ as j_JZGJBSJ_CSRQ--��ְ��������������� ��������
      ,j.XBM as j_JZGJBSJ_XBM--��ְ��������������� �Ա���
      ,[jc].MC as j_JZGJBSJ_XBM_MC--�˵��Ա���� ����
      ,j.MZM as j_JZGJBSJ_MZM--��ְ��������������� ������
      ,[jd].MZMC as j_JZGJBSJ_MZM_MZMC--�й����������Ƶ�������ĸƴд���ʹ��� ��������
      ,[jd].ZMDM as j_JZGJBSJ_MZM_ZMDM--�й����������Ƶ�������ĸƴд���ʹ��� ��ĸ����
      ,j.XXM as j_JZGJBSJ_XXM--��ְ��������������� Ѫ����
      ,[je].MC as j_JZGJBSJ_XXM_MC--Ѫ�ʹ���� ����
      ,[je].JC as j_JZGJBSJ_XXM_JC--Ѫ�ʹ���� ���
      ,j.JKZKM as j_JZGJBSJ_JKZKM--��ְ��������������� ����״����
      ,[jf].MC as j_JZGJBSJ_JKZKM_MC--����״��1λ���ִ��� ����
      ,[jf].SM as j_JZGJBSJ_JKZKM_SM--����״��1λ���ִ��� ˵��
      ,j.HYZTM as j_JZGJBSJ_HYZTM--��ְ��������������� ����״̬��
      ,[jg].MC as j_JZGJBSJ_HYZTM_MC--����״������ ����
      ,j.ZZMMM as j_JZGJBSJ_ZZMMM--��ְ��������������� ������ò��
      ,[jh].MC as j_JZGJBSJ_ZZMMM_MC--������ò���� ����
      ,[jh].JC as j_JZGJBSJ_ZZMMM_JC--������ò���� ���
      ,j.GATQWM as j_JZGJBSJ_GATQWM--��ְ��������������� �۰�̨������
      ,[ji].MC as j_JZGJBSJ_GATQWM_MC--�۰�̨�������� ����
      ,[ji].SM as j_JZGJBSJ_GATQWM_SM--�۰�̨�������� ˵��
      ,j.JG as j_JZGJBSJ_JG--��ְ��������������� ����
      ,j.GJDQM as j_JZGJBSJ_GJDQM--��ְ��������������� ����/������
      ,[jj].GJDQMCJC as j_JZGJBSJ_GJDQM_GJDQMCJC--��������͵������ƴ��� ����/�������Ƽ��
      ,[jj].EZMDM as j_JZGJBSJ_GJDQM_EZMDM--��������͵������ƴ��� ����ĸ����
      ,[jj].SZMDM as j_JZGJBSJ_GJDQM_SZMDM--��������͵������ƴ��� ����ĸ����
      ,j.CSDXZQHM as j_JZGJBSJ_CSDXZQHM--��ְ��������������� ����������������
      ,[jk].MC as j_JZGJBSJ_CSDXZQHM_MC--�л����񹲺͹������������� ����
      ,j.XYZJM as j_JZGJBSJ_XYZJM--��ְ��������������� �����ڽ���
      ,[jl].MC as j_JZGJBSJ_XYZJM_MC--�ڽ��������� ����
      ,j.JZGHKSZDXZQHM as j_JZGJBSJ_JZGHKSZDXZQHM--��ְ��������������� ��ְ���������ڵ�����������
      ,[jm].MC as j_JZGJBSJ_JZGHKSZDXZQHM_MC--�л����񹲺͹������������� ����
      ,j.HKLBM as j_JZGJBSJ_HKLBM--��ְ��������������� ���������
      ,[jn].MC as j_JZGJBSJ_HKLBM_MC--���������� ����
      ,j.DQZZ as j_JZGJBSJ_DQZZ--��ְ��������������� ��ǰסַ
      ,j.DQZZYZBM as j_JZGJBSJ_DQZZYZBM--��ְ��������������� ��ǰסַ��������
      ,j.CJGZNY as j_JZGJBSJ_CJGZNY--��ְ��������������� �μӹ�������
      ,j.CJNY as j_JZGJBSJ_CJNY--��ְ��������������� �ӽ�����
      ,j.LXNY as j_JZGJBSJ_LXNY--��ְ��������������� ��У����
      ,j.BZLBM as j_JZGJBSJ_BZLBM--��ְ��������������� ���������
      ,[jo].MC as j_JZGJBSJ_BZLBM_MC--����������� ����
      ,j.JZGLBM as j_JZGJBSJ_JZGLBM--��ְ��������������� ��ְ�������
      ,[jp].MC as j_JZGJBSJ_JZGLBM_MC--��ְ��������� ����
      ,[jp].SM as j_JZGJBSJ_JZGLBM_SM--��ְ��������� ˵��
      ,j.GWLBM as j_JZGJBSJ_GWLBM--��ְ��������������� ��λ�����
      ,[jq].MC as j_JZGJBSJ_GWLBM_MC--��λ������� ����
      ,j.SFJZJS as j_JZGJBSJ_SFJZJS--��ְ��������������� �Ƿ��ְ��ʦ
      ,[jr].MC as j_JZGJBSJ_SFJZJS_MC--�Ƿ��־����� ����
      ,j.SFSSXJS as j_JZGJBSJ_SFSSXJS--��ְ��������������� �Ƿ�˫ʦ�ͽ�ʦ
      ,[js].MC as j_JZGJBSJ_SFSSXJS_MC--�Ƿ��־����� ����
      ,j.ZP as j_JZGJBSJ_ZP--��ְ��������������� ��Ƭ(·��)
      ,j.DQZTM as j_JZGJBSJ_DQZTM--��ְ��������������� ��ǰ״̬��
      ,[jt].MC as j_JZGJBSJ_DQZTM_MC--��ְ����ǰ״̬����� ����
      ,j.YDDH as j_JZGJBSJ_YDDH--��ְ��������������� �ƶ��绰
      ,j.GDDH as j_JZGJBSJ_GDDH--��ְ��������������� �̶��绰
      ,j.TXDZYZBM as j_JZGJBSJ_TXDZYZBM--��ְ��������������� ͨ�ŵ�ַ��������
      ,j.TXDZ as j_JZGJBSJ_TXDZ--��ְ��������������� ͨ�ŵ�ַ
      ,j.DZXX as j_JZGJBSJ_DZXX--��ְ��������������� ��������
      ,j.WLDZ as j_JZGJBSJ_WLDZ--��ְ��������������� �����ַ
      ,j.JSTXH as j_JZGJBSJ_JSTXH--��ְ��������������� ��ʱͨѶ��

FROM dbo.EDU_ZZXS_18_A04_XSCFXX AS a LEFT OUTER JOIN
      dbo.EDU_ZZXS_01_01_XSXX AS c ON a.XSXXID = c.ID /*ѧ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZXS_18_A01_WJLX AS d ON a.WJLXID = d.ID /*Υ������ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS e ON a.XQID = e.ID /*ѧ��ID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZXS_18_A02_CFLX AS f ON a.JYCFLXID = f.ID /*���鴦������ID*/ AND a.SCHOOLID = f.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS g ON a.SBJSID = g.ID /*�ϱ���ʦID*/ AND a.SCHOOLID = g.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZXS_18_A02_CFLX AS h ON a.ZZCFLXID = h.ID /*���մ�������ID*/ AND a.SCHOOLID = h.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS i ON a.SHJSID = i.ID /*��˽�ʦID*/ AND a.SCHOOLID = i.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS j ON a.JCJSID = j.ID /*�����ʦID*/ AND a.SCHOOLID = j.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
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
      dbo.EDU_JY_XQ AS [eb] ON e.XQM = [eb].DM /*ѧ����*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [fb] ON f.SFCZCKQ = [fb].DM /*�Ƿ���ڲ鿴��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [fc] ON f.SFYXJC = [fc].DM /*�Ƿ�������*/ LEFT OUTER JOIN
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
      dbo.EDU_JY_SFBZ AS [hb] ON h.SFCZCKQ = [hb].DM /*�Ƿ���ڲ鿴��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [hc] ON h.SFYXJC = [hc].DM /*�Ƿ�������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS [ib] ON i.SFZJLXM = [ib].DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS [ic] ON i.XBM = [ic].DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS [id] ON i.MZM = [id].DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS [ie] ON i.XXM = [ie].DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS [if] ON i.JKZKM = [if].DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS [ig] ON i.HYZTM = [ig].DM /*����״̬��*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS [ih] ON i.ZZMMM = [ih].DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS [ii] ON i.GATQWM = [ii].DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS [ij] ON i.GJDQM = [ij].DM /*����/������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [ik] ON i.CSDXZQHM = [ik].DM /*����������������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS [il] ON i.XYZJM = [il].DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [im] ON i.JZGHKSZDXZQHM = [im].DM /*��ְ���������ڵ�����������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS [in] ON i.HKLBM = [in].DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_BZLB AS [io] ON i.BZLBM = [io].DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGLB AS [ip] ON i.JZGLBM = [ip].DM /*��ְ�������*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWLB AS [iq] ON i.GWLBM = [iq].DM /*��λ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [ir] ON i.SFJZJS = [ir].DM /*�Ƿ��ְ��ʦ*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [is] ON i.SFSSXJS = [is].DM /*�Ƿ�˫ʦ�ͽ�ʦ*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGDQZT AS [it] ON i.DQZTM = [it].DM /*��ǰ״̬��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS [jb] ON j.SFZJLXM = [jb].DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS [jc] ON j.XBM = [jc].DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS [jd] ON j.MZM = [jd].DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS [je] ON j.XXM = [je].DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS [jf] ON j.JKZKM = [jf].DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS [jg] ON j.HYZTM = [jg].DM /*����״̬��*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS [jh] ON j.ZZMMM = [jh].DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS [ji] ON j.GATQWM = [ji].DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS [jj] ON j.GJDQM = [jj].DM /*����/������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [jk] ON j.CSDXZQHM = [jk].DM /*����������������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS [jl] ON j.XYZJM = [jl].DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [jm] ON j.JZGHKSZDXZQHM = [jm].DM /*��ְ���������ڵ�����������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS [jn] ON j.HKLBM = [jn].DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_BZLB AS [jo] ON j.BZLBM = [jo].DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGLB AS [jp] ON j.JZGLBM = [jp].DM /*��ְ�������*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWLB AS [jq] ON j.GWLBM = [jq].DM /*��λ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [jr] ON j.SFJZJS = [jr].DM /*�Ƿ��ְ��ʦ*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [js] ON j.SFSSXJS = [js].DM /*�Ƿ�˫ʦ�ͽ�ʦ*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGDQZT AS [jt] ON j.DQZTM = [jt].DM /*��ǰ״̬��*/
GO
