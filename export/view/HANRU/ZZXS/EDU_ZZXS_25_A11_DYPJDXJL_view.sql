
--�������۶��ż�¼��
CREATE VIEW [dbo].[VIEW_EDU_ZZXS_25_A11_DYPJDXJL_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУID
      ,a.[XQID]--ѧ��ID
      ,a.[GLXSPFJLID]--����ѧ�����ּ�¼ID
      ,a.[BJID]--�༶ID
      ,a.[XSID]--ѧ��ID
      ,a.[DHHM]--�绰����
      ,a.[DXNR]--��������
      ,a.[PFJSID]--���ֽ�ʦID
      ,a.[TJSJ]--���ʱ��
      ,a.[TJJSID]--��ӽ�ʦID
      ,a.[FSZT]--����״̬
      ,a.[FSSJ]--����ʱ��
      ,a.[FSJSID]--���ͽ�ʦID
      ,c.SCHOOLID as c_XQ_SCHOOLID--ѧ�����ݱ� ѧУ��
      ,c.XNID as c_XQ_XNID--ѧ�����ݱ� ѧ��
      ,c.XQM as c_XQ_XQM--ѧ�����ݱ� ѧ����
      ,[cb].MC as c_XQ_XQM_MC--ѧ�ڴ���� ����
      ,c.XQMC as c_XQ_XQMC--ѧ�����ݱ� ѧ������
      ,c.XQKSRQ as c_XQ_XQKSRQ--ѧ�����ݱ� ѧ�ڿ�ʼ����
      ,c.XQJSRQ as c_XQ_XQJSRQ--ѧ�����ݱ� ѧ�ڽ�������
      ,c.BaseProjectInfoID as c_XQ_BaseProjectInfoID--ѧ�����ݱ� ��BaseProjectInfo���
      ,d.SCHOOLID as d_DYPJXSPFJL_SCHOOLID--��������ѧ�����ּ�¼�� ѧУ
      ,d.XQID as d_DYPJXSPFJL_XQID--��������ѧ�����ּ�¼�� ѧ��ID
      ,d.ZCID as d_DYPJXSPFJL_ZCID--��������ѧ�����ּ�¼�� �ܴ�ID
      ,d.JSID as d_DYPJXSPFJL_JSID--��������ѧ�����ּ�¼�� ��ʦID
      ,d.BJID as d_DYPJXSPFJL_BJID--��������ѧ�����ּ�¼�� �༶ID
      ,d.XSID as d_DYPJXSPFJL_XSID--��������ѧ�����ּ�¼�� ѧ��ID
      ,d.DLID as d_DYPJXSPFJL_DLID--��������ѧ�����ּ�¼�� ����ID
      ,d.XLID as d_DYPJXSPFJL_XLID--��������ѧ�����ּ�¼�� С��ID
      ,d.SJ as d_DYPJXSPFJL_SJ--��������ѧ�����ּ�¼�� ʱ��
      ,d.FZ as d_DYPJXSPFJL_FZ--��������ѧ�����ּ�¼�� ��ֵ
      ,d.BZ as d_DYPJXSPFJL_BZ--��������ѧ�����ּ�¼�� ��ע
      ,d.ZT as d_DYPJXSPFJL_ZT--��������ѧ�����ּ�¼�� ״̬
      ,d.TJSJ as d_DYPJXSPFJL_TJSJ--��������ѧ�����ּ�¼�� ���ʱ��
      ,d.SCZT as d_DYPJXSPFJL_SCZT--��������ѧ�����ּ�¼�� ɾ��״̬
      ,d.SCJSID as d_DYPJXSPFJL_SCJSID--��������ѧ�����ּ�¼�� ɾ����ʦID
      ,d.SCSJ as d_DYPJXSPFJL_SCSJ--��������ѧ�����ּ�¼�� ɾ��ʱ��
      ,e.SCHOOLID as e_ZZBJ_SCHOOLID--ѧУ�༶���ݱ� ѧУ��
      ,e.ZYXXID as e_ZZBJ_ZYXXID--ѧУ�༶���ݱ� רҵ������Ϣ
      ,e.ZZNJID as e_ZZBJ_ZZNJID--ѧУ�༶���ݱ� ѧУ�꼶���ݱ�
      ,e.XZBMC as e_ZZBJ_XZBMC--ѧУ�༶���ݱ� ����������
      ,e.JBNY as e_ZZBJ_JBNY--ѧУ�༶���ݱ� ��������
      ,e.BZRGH as e_ZZBJ_BZRGH--ѧУ�༶���ݱ� �����ι���
      ,e.JSBH as e_ZZBJ_JSBH--ѧУ�༶���ݱ� ���ұ��
      ,e.NANSRS as e_ZZBJ_NANSRS--ѧУ�༶���ݱ� ��������
      ,e.NVSRS as e_ZZBJ_NVSRS--ѧУ�༶���ݱ� Ů������
      ,e.ZRS as e_ZZBJ_ZRS--ѧУ�༶���ݱ� ������
      ,e.BZXH as e_ZZBJ_BZXH--ѧУ�༶���ݱ� �೤ѧ��
      ,e.JXJH as e_ZZBJ_JXJH--ѧУ�༶���ݱ� ��ѧ�ƻ�
      ,e.JGH as e_ZZBJ_JGH--ѧУ�༶���ݱ� ������
      ,e.XQDM as e_ZZBJ_XQDM--ѧУ�༶���ݱ� У������
      ,e.BZRID as e_ZZBJ_BZRID--ѧУ�༶���ݱ� ������ID
      ,e.PLSX as e_ZZBJ_PLSX--ѧУ�༶���ݱ� ����˳��
      ,e.ID as e_ZZBJ_ID--ѧУ�༶���ݱ� ��Record���
      ,f.SCHOOLID as f_XSXX_SCHOOLID--ѧ����Ϣ���ݱ� ѧУ��
      ,f.XH as f_XSXX_XH--ѧ����Ϣ���ݱ� ѧ��
      ,f.XM as f_XSXX_XM--ѧ����Ϣ���ݱ� ����
      ,f.YWXM as f_XSXX_YWXM--ѧ����Ϣ���ݱ� Ӣ������
      ,f.XMPY as f_XSXX_XMPY--ѧ����Ϣ���ݱ� ����ƴ��
      ,f.CYM as f_XSXX_CYM--ѧ����Ϣ���ݱ� ������
      ,f.SFZJLXM as f_XSXX_SFZJLXM--ѧ����Ϣ���ݱ� ���֤��������
      ,[fb].MC as f_XSXX_SFZJLXM_MC--���֤�����ʹ���� ����
      ,f.SFZJH as f_XSXX_SFZJH--ѧ����Ϣ���ݱ� ���֤����
      ,f.XBM as f_XSXX_XBM--ѧ����Ϣ���ݱ� �Ա���
      ,[fc].MC as f_XSXX_XBM_MC--�˵��Ա���� ����
      ,f.XXM as f_XSXX_XXM--ѧ����Ϣ���ݱ� Ѫ����
      ,[fd].MC as f_XSXX_XXM_MC--Ѫ�ʹ���� ����
      ,[fd].JC as f_XSXX_XXM_JC--Ѫ�ʹ���� ���
      ,f.CSRQ as f_XSXX_CSRQ--ѧ����Ϣ���ݱ� ��������
      ,f.CSDM as f_XSXX_CSDM--ѧ����Ϣ���ݱ� ��������
      ,[fe].MC as f_XSXX_CSDM_MC--�л����񹲺͹������������� ����
      ,f.JG as f_XSXX_JG--ѧ����Ϣ���ݱ� ����
      ,f.MZM as f_XSXX_MZM--ѧ����Ϣ���ݱ� ������
      ,[ff].MZMC as f_XSXX_MZM_MZMC--�й����������Ƶ�������ĸƴд���ʹ��� ��������
      ,[ff].ZMDM as f_XSXX_MZM_ZMDM--�й����������Ƶ�������ĸƴд���ʹ��� ��ĸ����
      ,f.HYZKM as f_XSXX_HYZKM--ѧ����Ϣ���ݱ� ����״����
      ,[fg].MC as f_XSXX_HYZKM_MC--����״������ ����
      ,f.XYZJM as f_XSXX_XYZJM--ѧ����Ϣ���ݱ� �����ڽ���
      ,[fh].MC as f_XSXX_XYZJM_MC--�ڽ��������� ����
      ,f.GATQWM as f_XSXX_GATQWM--ѧ����Ϣ���ݱ� �۰�̨������
      ,[fi].MC as f_XSXX_GATQWM_MC--�۰�̨�������� ����
      ,[fi].SM as f_XSXX_GATQWM_SM--�۰�̨�������� ˵��
      ,f.JKZKM as f_XSXX_JKZKM--ѧ����Ϣ���ݱ� ����״����
      ,[fj].MC as f_XSXX_JKZKM_MC--����״��1λ���ִ��� ����
      ,[fj].SM as f_XSXX_JKZKM_SM--����״��1λ���ִ��� ˵��
      ,f.ZZMMM as f_XSXX_ZZMMM--ѧ����Ϣ���ݱ� ������ò��
      ,[fk].MC as f_XSXX_ZZMMM_MC--������ò���� ����
      ,[fk].JC as f_XSXX_ZZMMM_JC--������ò���� ���
      ,f.HKSZDXZQHM as f_XSXX_HKSZDXZQHM--ѧ����Ϣ���ݱ� �������ڵ�����������
      ,[fl].MC as f_XSXX_HKSZDXZQHM_MC--�л����񹲺͹������������� ����
      ,f.HKLBM as f_XSXX_HKLBM--ѧ����Ϣ���ݱ� ���������
      ,[fm].MC as f_XSXX_HKLBM_MC--���������� ����
      ,f.SFSLDRK as f_XSXX_SFSLDRK--ѧ����Ϣ���ݱ� �Ƿ��������˿�
      ,[fn].MC as f_XSXX_SFSLDRK_MC--�Ƿ��־����� ����
      ,f.GJDQM as f_XSXX_GJDQM--ѧ����Ϣ���ݱ� ����/����
      ,[fo].GJDQMCJC as f_XSXX_GJDQM_GJDQMCJC--��������͵������ƴ��� ����/�������Ƽ��
      ,[fo].EZMDM as f_XSXX_GJDQM_EZMDM--��������͵������ƴ��� ����ĸ����
      ,[fo].SZMDM as f_XSXX_GJDQM_SZMDM--��������͵������ƴ��� ����ĸ����
      ,f.TC as f_XSXX_TC--ѧ����Ϣ���ݱ� �س�
      ,f.XSLXDH as f_XSXX_XSLXDH--ѧ����Ϣ���ݱ� ѧ����ϵ�绰
      ,f.WLDZ as f_XSXX_WLDZ--ѧ����Ϣ���ݱ� �����ַ
      ,f.JSTXH as f_XSXX_JSTXH--ѧ����Ϣ���ݱ� ��ʱͨѶ��
      ,f.DZXX as f_XSXX_DZXX--ѧ����Ϣ���ݱ� ��������
      ,f.ZP as f_XSXX_ZP--ѧ����Ϣ���ݱ� ��Ƭ(·��)
      ,f.RXXQID as f_XSXX_RXXQID--ѧ����Ϣ���ݱ� ��ѧѧ��ID
      ,f.NFCKH as f_XSXX_NFCKH--ѧ����Ϣ���ݱ� NFC����
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
      ,g.JSKQJS as g_JZGJBSJ_JSKQJS--��ְ��������������� ��ʦ���ڽ�ɫ
      ,g.TeacherGroupId as g_JZGJBSJ_TeacherGroupId--��ְ��������������� ��TeacherGroup�����
      ,g.PersonalCard1 as g_JZGJBSJ_PersonalCard1--��ְ��������������� ���˿�1
      ,g.PersonalCard2 as g_JZGJBSJ_PersonalCard2--��ְ��������������� ���˿�2
      ,g.PersonalCard3 as g_JZGJBSJ_PersonalCard3--��ְ��������������� ���˿�3
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
      ,h.JSKQJS as h_JZGJBSJ_JSKQJS--��ְ��������������� ��ʦ���ڽ�ɫ
      ,h.TeacherGroupId as h_JZGJBSJ_TeacherGroupId--��ְ��������������� ��TeacherGroup�����
      ,h.PersonalCard1 as h_JZGJBSJ_PersonalCard1--��ְ��������������� ���˿�1
      ,h.PersonalCard2 as h_JZGJBSJ_PersonalCard2--��ְ��������������� ���˿�2
      ,h.PersonalCard3 as h_JZGJBSJ_PersonalCard3--��ְ��������������� ���˿�3
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
      ,i.JSKQJS as i_JZGJBSJ_JSKQJS--��ְ��������������� ��ʦ���ڽ�ɫ
      ,i.TeacherGroupId as i_JZGJBSJ_TeacherGroupId--��ְ��������������� ��TeacherGroup�����
      ,i.PersonalCard1 as i_JZGJBSJ_PersonalCard1--��ְ��������������� ���˿�1
      ,i.PersonalCard2 as i_JZGJBSJ_PersonalCard2--��ְ��������������� ���˿�2
      ,i.PersonalCard3 as i_JZGJBSJ_PersonalCard3--��ְ��������������� ���˿�3

FROM dbo.EDU_ZZXS_25_A11_DYPJDXJL AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS c ON a.XQID = c.ID /*ѧ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZXS_25_A04_DYPJXSPFJL AS d ON a.GLXSPFJLID = d.ID /*����ѧ�����ּ�¼ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_02_02_ZZBJ AS e ON a.BJID = e.XZBDM /*�༶ID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZXS_01_01_XSXX AS f ON a.XSID = f.ID /*ѧ��ID*/ AND a.SCHOOLID = f.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS g ON a.PFJSID = g.ID /*���ֽ�ʦID*/ AND a.SCHOOLID = g.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS h ON a.TJJSID = h.ID /*��ӽ�ʦID*/ AND a.SCHOOLID = h.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS i ON a.FSJSID = i.ID /*���ͽ�ʦID*/ AND a.SCHOOLID = i.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS [cb] ON c.XQM = [cb].DM /*ѧ����*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS [fb] ON f.SFZJLXM = [fb].DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS [fc] ON f.XBM = [fc].DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS [fd] ON f.XXM = [fd].DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [fe] ON f.CSDM = [fe].DM /*��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS [ff] ON f.MZM = [ff].DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS [fg] ON f.HYZKM = [fg].DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS [fh] ON f.XYZJM = [fh].DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS [fi] ON f.GATQWM = [fi].DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS [fj] ON f.JKZKM = [fj].DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS [fk] ON f.ZZMMM = [fk].DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [fl] ON f.HKSZDXZQHM = [fl].DM /*�������ڵ�����������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS [fm] ON f.HKLBM = [fm].DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [fn] ON f.SFSLDRK = [fn].DM /*�Ƿ��������˿�*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS [fo] ON f.GJDQM = [fo].DM /*����/����*/ LEFT OUTER JOIN
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
      dbo.EDU_JY_JZGDQZT AS [it] ON i.DQZTM = [it].DM /*��ǰ״̬��*/
GO
