
--��������ѧ�����ּ�¼��
CREATE VIEW [dbo].[VIEW_EDU_ZZXS_25_A04_DYPJXSPFJL_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[XQID]--ѧ��ID
      ,a.[ZCID]--�ܴ�ID
      ,a.[JSID]--��ʦID
      ,a.[BJID]--�༶ID
      ,a.[XSID]--ѧ��ID
      ,a.[DLID]--����ID
      ,a.[XLID]--С��ID
      ,a.[SJ]--ʱ��
      ,a.[FZ]--��ֵ
      ,a.[BZ]--��ע
      ,a.[ZT]--״̬
      ,a.[TJSJ]--���ʱ��
      ,a.[SCZT]--ɾ��״̬
      ,a.[SCJSID]--ɾ����ʦID
      ,a.[SCSJ]--ɾ��ʱ��
      ,c.SCHOOLID as c_XQ_SCHOOLID--ѧ�����ݱ� ѧУ��
      ,c.XNID as c_XQ_XNID--ѧ�����ݱ� ѧ��
      ,c.XQM as c_XQ_XQM--ѧ�����ݱ� ѧ����
      ,[cb].MC as c_XQ_XQM_MC--ѧ�ڴ���� ����
      ,c.XQMC as c_XQ_XQMC--ѧ�����ݱ� ѧ������
      ,c.XQKSRQ as c_XQ_XQKSRQ--ѧ�����ݱ� ѧ�ڿ�ʼ����
      ,c.XQJSRQ as c_XQ_XQJSRQ--ѧ�����ݱ� ѧ�ڽ�������
      ,c.BaseProjectInfoID as c_XQ_BaseProjectInfoID--ѧ�����ݱ� ��BaseProjectInfo���
      ,d.SCHOOLID as d_XLZ_SCHOOLID--У���ܱ� ѧУID
      ,d.XLID as d_XLZ_XLID--У���ܱ� У��ID
      ,d.NAME as d_XLZ_NAME--У���ܱ� У��������
      ,d.STARTDAY as d_XLZ_STARTDAY--У���ܱ� ��ʼ����
      ,d.ENDDAY as d_XLZ_ENDDAY--У���ܱ� ��������
      ,d.ZJH as d_XLZ_ZJH--У���ܱ� �ܼƻ�
      ,e.SCHOOLID as e_JZGJBSJ_SCHOOLID--��ְ��������������� ѧУ��
      ,e.GH as e_JZGJBSJ_GH--��ְ��������������� ����
      ,e.XM as e_JZGJBSJ_XM--��ְ��������������� ����
      ,e.YWXM as e_JZGJBSJ_YWXM--��ְ��������������� Ӣ������
      ,e.XMPY as e_JZGJBSJ_XMPY--��ְ��������������� ����ƴ��
      ,e.CYM as e_JZGJBSJ_CYM--��ְ��������������� ������
      ,e.SFZJLXM as e_JZGJBSJ_SFZJLXM--��ְ��������������� ���֤��������
      ,[eb].MC as e_JZGJBSJ_SFZJLXM_MC--���֤�����ʹ���� ����
      ,e.SFZJH as e_JZGJBSJ_SFZJH--��ְ��������������� ���֤����
      ,e.CSRQ as e_JZGJBSJ_CSRQ--��ְ��������������� ��������
      ,e.XBM as e_JZGJBSJ_XBM--��ְ��������������� �Ա���
      ,[ec].MC as e_JZGJBSJ_XBM_MC--�˵��Ա���� ����
      ,e.MZM as e_JZGJBSJ_MZM--��ְ��������������� ������
      ,[ed].MZMC as e_JZGJBSJ_MZM_MZMC--�й����������Ƶ�������ĸƴд���ʹ��� ��������
      ,[ed].ZMDM as e_JZGJBSJ_MZM_ZMDM--�й����������Ƶ�������ĸƴд���ʹ��� ��ĸ����
      ,e.XXM as e_JZGJBSJ_XXM--��ְ��������������� Ѫ����
      ,[ee].MC as e_JZGJBSJ_XXM_MC--Ѫ�ʹ���� ����
      ,[ee].JC as e_JZGJBSJ_XXM_JC--Ѫ�ʹ���� ���
      ,e.JKZKM as e_JZGJBSJ_JKZKM--��ְ��������������� ����״����
      ,[ef].MC as e_JZGJBSJ_JKZKM_MC--����״��1λ���ִ��� ����
      ,[ef].SM as e_JZGJBSJ_JKZKM_SM--����״��1λ���ִ��� ˵��
      ,e.HYZTM as e_JZGJBSJ_HYZTM--��ְ��������������� ����״̬��
      ,[eg].MC as e_JZGJBSJ_HYZTM_MC--����״������ ����
      ,e.ZZMMM as e_JZGJBSJ_ZZMMM--��ְ��������������� ������ò��
      ,[eh].MC as e_JZGJBSJ_ZZMMM_MC--������ò���� ����
      ,[eh].JC as e_JZGJBSJ_ZZMMM_JC--������ò���� ���
      ,e.GATQWM as e_JZGJBSJ_GATQWM--��ְ��������������� �۰�̨������
      ,[ei].MC as e_JZGJBSJ_GATQWM_MC--�۰�̨�������� ����
      ,[ei].SM as e_JZGJBSJ_GATQWM_SM--�۰�̨�������� ˵��
      ,e.JG as e_JZGJBSJ_JG--��ְ��������������� ����
      ,e.GJDQM as e_JZGJBSJ_GJDQM--��ְ��������������� ����/������
      ,[ej].GJDQMCJC as e_JZGJBSJ_GJDQM_GJDQMCJC--��������͵������ƴ��� ����/�������Ƽ��
      ,[ej].EZMDM as e_JZGJBSJ_GJDQM_EZMDM--��������͵������ƴ��� ����ĸ����
      ,[ej].SZMDM as e_JZGJBSJ_GJDQM_SZMDM--��������͵������ƴ��� ����ĸ����
      ,e.CSDXZQHM as e_JZGJBSJ_CSDXZQHM--��ְ��������������� ����������������
      ,[ek].MC as e_JZGJBSJ_CSDXZQHM_MC--�л����񹲺͹������������� ����
      ,e.XYZJM as e_JZGJBSJ_XYZJM--��ְ��������������� �����ڽ���
      ,[el].MC as e_JZGJBSJ_XYZJM_MC--�ڽ��������� ����
      ,e.JZGHKSZDXZQHM as e_JZGJBSJ_JZGHKSZDXZQHM--��ְ��������������� ��ְ���������ڵ�����������
      ,[em].MC as e_JZGJBSJ_JZGHKSZDXZQHM_MC--�л����񹲺͹������������� ����
      ,e.HKLBM as e_JZGJBSJ_HKLBM--��ְ��������������� ���������
      ,[en].MC as e_JZGJBSJ_HKLBM_MC--���������� ����
      ,e.DQZZ as e_JZGJBSJ_DQZZ--��ְ��������������� ��ǰסַ
      ,e.DQZZYZBM as e_JZGJBSJ_DQZZYZBM--��ְ��������������� ��ǰסַ��������
      ,e.CJGZNY as e_JZGJBSJ_CJGZNY--��ְ��������������� �μӹ�������
      ,e.CJNY as e_JZGJBSJ_CJNY--��ְ��������������� �ӽ�����
      ,e.LXNY as e_JZGJBSJ_LXNY--��ְ��������������� ��У����
      ,e.BZLBM as e_JZGJBSJ_BZLBM--��ְ��������������� ���������
      ,[eo].MC as e_JZGJBSJ_BZLBM_MC--����������� ����
      ,e.JZGLBM as e_JZGJBSJ_JZGLBM--��ְ��������������� ��ְ�������
      ,[ep].MC as e_JZGJBSJ_JZGLBM_MC--��ְ��������� ����
      ,[ep].SM as e_JZGJBSJ_JZGLBM_SM--��ְ��������� ˵��
      ,e.GWLBM as e_JZGJBSJ_GWLBM--��ְ��������������� ��λ�����
      ,[eq].MC as e_JZGJBSJ_GWLBM_MC--��λ������� ����
      ,e.SFJZJS as e_JZGJBSJ_SFJZJS--��ְ��������������� �Ƿ��ְ��ʦ
      ,[er].MC as e_JZGJBSJ_SFJZJS_MC--�Ƿ��־����� ����
      ,e.SFSSXJS as e_JZGJBSJ_SFSSXJS--��ְ��������������� �Ƿ�˫ʦ�ͽ�ʦ
      ,[es].MC as e_JZGJBSJ_SFSSXJS_MC--�Ƿ��־����� ����
      ,e.ZP as e_JZGJBSJ_ZP--��ְ��������������� ��Ƭ(·��)
      ,e.DQZTM as e_JZGJBSJ_DQZTM--��ְ��������������� ��ǰ״̬��
      ,[et].MC as e_JZGJBSJ_DQZTM_MC--��ְ����ǰ״̬����� ����
      ,e.YDDH as e_JZGJBSJ_YDDH--��ְ��������������� �ƶ��绰
      ,e.GDDH as e_JZGJBSJ_GDDH--��ְ��������������� �̶��绰
      ,e.TXDZYZBM as e_JZGJBSJ_TXDZYZBM--��ְ��������������� ͨ�ŵ�ַ��������
      ,e.TXDZ as e_JZGJBSJ_TXDZ--��ְ��������������� ͨ�ŵ�ַ
      ,e.DZXX as e_JZGJBSJ_DZXX--��ְ��������������� ��������
      ,e.WLDZ as e_JZGJBSJ_WLDZ--��ְ��������������� �����ַ
      ,e.JSTXH as e_JZGJBSJ_JSTXH--��ְ��������������� ��ʱͨѶ��
      ,e.JSKQJS as e_JZGJBSJ_JSKQJS--��ְ��������������� ��ʦ���ڽ�ɫ
      ,e.TeacherGroupId as e_JZGJBSJ_TeacherGroupId--��ְ��������������� ��TeacherGroup�����
      ,e.PersonalCard1 as e_JZGJBSJ_PersonalCard1--��ְ��������������� ���˿�1
      ,e.PersonalCard2 as e_JZGJBSJ_PersonalCard2--��ְ��������������� ���˿�2
      ,e.PersonalCard3 as e_JZGJBSJ_PersonalCard3--��ְ��������������� ���˿�3
      ,f.SCHOOLID as f_ZZBJ_SCHOOLID--ѧУ�༶���ݱ� ѧУ��
      ,f.ZYXXID as f_ZZBJ_ZYXXID--ѧУ�༶���ݱ� רҵ������Ϣ
      ,f.ZZNJID as f_ZZBJ_ZZNJID--ѧУ�༶���ݱ� ѧУ�꼶���ݱ�
      ,f.XZBMC as f_ZZBJ_XZBMC--ѧУ�༶���ݱ� ����������
      ,f.JBNY as f_ZZBJ_JBNY--ѧУ�༶���ݱ� ��������
      ,f.BZRGH as f_ZZBJ_BZRGH--ѧУ�༶���ݱ� �����ι���
      ,f.JSBH as f_ZZBJ_JSBH--ѧУ�༶���ݱ� ���ұ��
      ,f.NANSRS as f_ZZBJ_NANSRS--ѧУ�༶���ݱ� ��������
      ,f.NVSRS as f_ZZBJ_NVSRS--ѧУ�༶���ݱ� Ů������
      ,f.ZRS as f_ZZBJ_ZRS--ѧУ�༶���ݱ� ������
      ,f.BZXH as f_ZZBJ_BZXH--ѧУ�༶���ݱ� �೤ѧ��
      ,f.JXJH as f_ZZBJ_JXJH--ѧУ�༶���ݱ� ��ѧ�ƻ�
      ,f.JGH as f_ZZBJ_JGH--ѧУ�༶���ݱ� ������
      ,f.XQDM as f_ZZBJ_XQDM--ѧУ�༶���ݱ� У������
      ,f.BZRID as f_ZZBJ_BZRID--ѧУ�༶���ݱ� ������ID
      ,f.PLSX as f_ZZBJ_PLSX--ѧУ�༶���ݱ� ����˳��
      ,f.ID as f_ZZBJ_ID--ѧУ�༶���ݱ� ��Record���
      ,g.SCHOOLID as g_XSXX_SCHOOLID--ѧ����Ϣ���ݱ� ѧУ��
      ,g.XH as g_XSXX_XH--ѧ����Ϣ���ݱ� ѧ��
      ,g.XM as g_XSXX_XM--ѧ����Ϣ���ݱ� ����
      ,g.YWXM as g_XSXX_YWXM--ѧ����Ϣ���ݱ� Ӣ������
      ,g.XMPY as g_XSXX_XMPY--ѧ����Ϣ���ݱ� ����ƴ��
      ,g.CYM as g_XSXX_CYM--ѧ����Ϣ���ݱ� ������
      ,g.SFZJLXM as g_XSXX_SFZJLXM--ѧ����Ϣ���ݱ� ���֤��������
      ,[gb].MC as g_XSXX_SFZJLXM_MC--���֤�����ʹ���� ����
      ,g.SFZJH as g_XSXX_SFZJH--ѧ����Ϣ���ݱ� ���֤����
      ,g.XBM as g_XSXX_XBM--ѧ����Ϣ���ݱ� �Ա���
      ,[gc].MC as g_XSXX_XBM_MC--�˵��Ա���� ����
      ,g.XXM as g_XSXX_XXM--ѧ����Ϣ���ݱ� Ѫ����
      ,[gd].MC as g_XSXX_XXM_MC--Ѫ�ʹ���� ����
      ,[gd].JC as g_XSXX_XXM_JC--Ѫ�ʹ���� ���
      ,g.CSRQ as g_XSXX_CSRQ--ѧ����Ϣ���ݱ� ��������
      ,g.CSDM as g_XSXX_CSDM--ѧ����Ϣ���ݱ� ��������
      ,[ge].MC as g_XSXX_CSDM_MC--�л����񹲺͹������������� ����
      ,g.JG as g_XSXX_JG--ѧ����Ϣ���ݱ� ����
      ,g.MZM as g_XSXX_MZM--ѧ����Ϣ���ݱ� ������
      ,[gf].MZMC as g_XSXX_MZM_MZMC--�й����������Ƶ�������ĸƴд���ʹ��� ��������
      ,[gf].ZMDM as g_XSXX_MZM_ZMDM--�й����������Ƶ�������ĸƴд���ʹ��� ��ĸ����
      ,g.HYZKM as g_XSXX_HYZKM--ѧ����Ϣ���ݱ� ����״����
      ,[gg].MC as g_XSXX_HYZKM_MC--����״������ ����
      ,g.XYZJM as g_XSXX_XYZJM--ѧ����Ϣ���ݱ� �����ڽ���
      ,[gh].MC as g_XSXX_XYZJM_MC--�ڽ��������� ����
      ,g.GATQWM as g_XSXX_GATQWM--ѧ����Ϣ���ݱ� �۰�̨������
      ,[gi].MC as g_XSXX_GATQWM_MC--�۰�̨�������� ����
      ,[gi].SM as g_XSXX_GATQWM_SM--�۰�̨�������� ˵��
      ,g.JKZKM as g_XSXX_JKZKM--ѧ����Ϣ���ݱ� ����״����
      ,[gj].MC as g_XSXX_JKZKM_MC--����״��1λ���ִ��� ����
      ,[gj].SM as g_XSXX_JKZKM_SM--����״��1λ���ִ��� ˵��
      ,g.ZZMMM as g_XSXX_ZZMMM--ѧ����Ϣ���ݱ� ������ò��
      ,[gk].MC as g_XSXX_ZZMMM_MC--������ò���� ����
      ,[gk].JC as g_XSXX_ZZMMM_JC--������ò���� ���
      ,g.HKSZDXZQHM as g_XSXX_HKSZDXZQHM--ѧ����Ϣ���ݱ� �������ڵ�����������
      ,[gl].MC as g_XSXX_HKSZDXZQHM_MC--�л����񹲺͹������������� ����
      ,g.HKLBM as g_XSXX_HKLBM--ѧ����Ϣ���ݱ� ���������
      ,[gm].MC as g_XSXX_HKLBM_MC--���������� ����
      ,g.SFSLDRK as g_XSXX_SFSLDRK--ѧ����Ϣ���ݱ� �Ƿ��������˿�
      ,[gn].MC as g_XSXX_SFSLDRK_MC--�Ƿ��־����� ����
      ,g.GJDQM as g_XSXX_GJDQM--ѧ����Ϣ���ݱ� ����/����
      ,[go].GJDQMCJC as g_XSXX_GJDQM_GJDQMCJC--��������͵������ƴ��� ����/�������Ƽ��
      ,[go].EZMDM as g_XSXX_GJDQM_EZMDM--��������͵������ƴ��� ����ĸ����
      ,[go].SZMDM as g_XSXX_GJDQM_SZMDM--��������͵������ƴ��� ����ĸ����
      ,g.TC as g_XSXX_TC--ѧ����Ϣ���ݱ� �س�
      ,g.XSLXDH as g_XSXX_XSLXDH--ѧ����Ϣ���ݱ� ѧ����ϵ�绰
      ,g.WLDZ as g_XSXX_WLDZ--ѧ����Ϣ���ݱ� �����ַ
      ,g.JSTXH as g_XSXX_JSTXH--ѧ����Ϣ���ݱ� ��ʱͨѶ��
      ,g.DZXX as g_XSXX_DZXX--ѧ����Ϣ���ݱ� ��������
      ,g.ZP as g_XSXX_ZP--ѧ����Ϣ���ݱ� ��Ƭ(·��)
      ,g.RXXQID as g_XSXX_RXXQID--ѧ����Ϣ���ݱ� ��ѧѧ��ID
      ,g.NFCKH as g_XSXX_NFCKH--ѧ����Ϣ���ݱ� NFC����
      ,h.SCHOOLID as h_DYPJDL_SCHOOLID--�������۴���� ѧУ
      ,h.PFDXLX as h_DYPJDL_PFDXLX--�������۴���� ���ֶ�������
      ,h.MC as h_DYPJDL_MC--�������۴���� ����
      ,h.PLSX as h_DYPJDL_PLSX--�������۴���� ����˳��
      ,i.SCHOOLID as i_DYPJXL_SCHOOLID--��������С��� ѧУ
      ,i.PFDXLX as i_DYPJXL_PFDXLX--��������С��� ���ֶ�������
      ,i.DLID as i_DYPJXL_DLID--��������С��� ����ID
      ,i.MC as i_DYPJXL_MC--��������С��� ����
      ,i.MRFZ as i_DYPJXL_MRFZ--��������С��� Ĭ�Ϸ�ֵ
      ,i.NFXGFZ as i_DYPJXL_NFXGFZ--��������С��� �ܷ��޸ķ�ֵ
      ,i.FZSX as i_DYPJXL_FZSX--��������С��� ��ֵ����
      ,i.FZXX as i_DYPJXL_FZXX--��������С��� ��ֵ����
      ,i.PLSX as i_DYPJXL_PLSX--��������С��� ����˳��
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
      ,j.JSKQJS as j_JZGJBSJ_JSKQJS--��ְ��������������� ��ʦ���ڽ�ɫ
      ,j.TeacherGroupId as j_JZGJBSJ_TeacherGroupId--��ְ��������������� ��TeacherGroup�����
      ,j.PersonalCard1 as j_JZGJBSJ_PersonalCard1--��ְ��������������� ���˿�1
      ,j.PersonalCard2 as j_JZGJBSJ_PersonalCard2--��ְ��������������� ���˿�2
      ,j.PersonalCard3 as j_JZGJBSJ_PersonalCard3--��ְ��������������� ���˿�3

FROM dbo.EDU_ZZXS_25_A04_DYPJXSPFJL AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS c ON a.XQID = c.ID /*ѧ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ELE_05_XLZ AS d ON a.ZCID = d.ID /*�ܴ�ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS e ON a.JSID = e.ID /*��ʦID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_02_02_ZZBJ AS f ON a.BJID = f.XZBDM /*�༶ID*/ AND a.SCHOOLID = f.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZXS_01_01_XSXX AS g ON a.XSID = g.ID /*ѧ��ID*/ AND a.SCHOOLID = g.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZXS_25_A01_DYPJDL AS h ON a.DLID = h.ID /*����ID*/ AND a.SCHOOLID = h.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZXS_25_A02_DYPJXL AS i ON a.XLID = i.ID /*С��ID*/ AND a.SCHOOLID = i.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS j ON a.SCJSID = j.ID /*ɾ����ʦID*/ AND a.SCHOOLID = j.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS [cb] ON c.XQM = [cb].DM /*ѧ����*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS [eb] ON e.SFZJLXM = [eb].DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS [ec] ON e.XBM = [ec].DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS [ed] ON e.MZM = [ed].DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS [ee] ON e.XXM = [ee].DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS [ef] ON e.JKZKM = [ef].DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS [eg] ON e.HYZTM = [eg].DM /*����״̬��*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS [eh] ON e.ZZMMM = [eh].DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS [ei] ON e.GATQWM = [ei].DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS [ej] ON e.GJDQM = [ej].DM /*����/������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [ek] ON e.CSDXZQHM = [ek].DM /*����������������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS [el] ON e.XYZJM = [el].DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [em] ON e.JZGHKSZDXZQHM = [em].DM /*��ְ���������ڵ�����������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS [en] ON e.HKLBM = [en].DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_BZLB AS [eo] ON e.BZLBM = [eo].DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGLB AS [ep] ON e.JZGLBM = [ep].DM /*��ְ�������*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWLB AS [eq] ON e.GWLBM = [eq].DM /*��λ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [er] ON e.SFJZJS = [er].DM /*�Ƿ��ְ��ʦ*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [es] ON e.SFSSXJS = [es].DM /*�Ƿ�˫ʦ�ͽ�ʦ*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGDQZT AS [et] ON e.DQZTM = [et].DM /*��ǰ״̬��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS [gb] ON g.SFZJLXM = [gb].DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS [gc] ON g.XBM = [gc].DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS [gd] ON g.XXM = [gd].DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [ge] ON g.CSDM = [ge].DM /*��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS [gf] ON g.MZM = [gf].DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS [gg] ON g.HYZKM = [gg].DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS [gh] ON g.XYZJM = [gh].DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS [gi] ON g.GATQWM = [gi].DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS [gj] ON g.JKZKM = [gj].DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS [gk] ON g.ZZMMM = [gk].DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [gl] ON g.HKSZDXZQHM = [gl].DM /*�������ڵ�����������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS [gm] ON g.HKLBM = [gm].DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [gn] ON g.SFSLDRK = [gn].DM /*�Ƿ��������˿�*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS [go] ON g.GJDQM = [go].DM /*����/����*/ LEFT OUTER JOIN
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
