
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
      ,a.[GLBJPFJLID]--�����༶���ּ�¼ID
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
      ,j.SCHOOLID as j_DYPJBJPFJL_SCHOOLID--�������۰༶���ּ�¼�� ѧУ
      ,j.XQID as j_DYPJBJPFJL_XQID--�������۰༶���ּ�¼�� ѧ��ID
      ,j.ZCID as j_DYPJBJPFJL_ZCID--�������۰༶���ּ�¼�� �ܴ�ID
      ,j.JSID as j_DYPJBJPFJL_JSID--�������۰༶���ּ�¼�� ��ʦID
      ,j.BJID as j_DYPJBJPFJL_BJID--�������۰༶���ּ�¼�� �༶ID
      ,j.DLID as j_DYPJBJPFJL_DLID--�������۰༶���ּ�¼�� ����ID
      ,j.XLID as j_DYPJBJPFJL_XLID--�������۰༶���ּ�¼�� С��ID
      ,j.SJ as j_DYPJBJPFJL_SJ--�������۰༶���ּ�¼�� ʱ��
      ,j.FZ as j_DYPJBJPFJL_FZ--�������۰༶���ּ�¼�� ��ֵ
      ,j.BZ as j_DYPJBJPFJL_BZ--�������۰༶���ּ�¼�� ��ע
      ,j.ZT as j_DYPJBJPFJL_ZT--�������۰༶���ּ�¼�� ״̬
      ,j.TJSJ as j_DYPJBJPFJL_TJSJ--�������۰༶���ּ�¼�� ���ʱ��
      ,j.XFZT as j_DYPJBJPFJL_XFZT--�������۰༶���ּ�¼�� ����״̬
      ,j.XFSQJSID as j_DYPJBJPFJL_XFSQJSID--�������۰༶���ּ�¼�� ���������ʦID
      ,j.XFSQSJ as j_DYPJBJPFJL_XFSQSJ--�������۰༶���ּ�¼�� ��������ʱ��
      ,j.XFLY as j_DYPJBJPFJL_XFLY--�������۰༶���ּ�¼�� ��������
      ,j.XFCLJG as j_DYPJBJPFJL_XFCLJG--�������۰༶���ּ�¼�� ���ִ�����
      ,j.XFCLJSID as j_DYPJBJPFJL_XFCLJSID--�������۰༶���ּ�¼�� ���ִ����ʦID
      ,j.XFCLSJ as j_DYPJBJPFJL_XFCLSJ--�������۰༶���ּ�¼�� ���ִ���ʱ��
      ,j.CLYJ as j_DYPJBJPFJL_CLYJ--�������۰༶���ּ�¼�� �������
      ,j.SCZT as j_DYPJBJPFJL_SCZT--�������۰༶���ּ�¼�� ɾ��״̬
      ,j.SCJSID as j_DYPJBJPFJL_SCJSID--�������۰༶���ּ�¼�� ɾ����ʦID
      ,j.SCSJ as j_DYPJBJPFJL_SCSJ--�������۰༶���ּ�¼�� ɾ��ʱ��
      ,k.SCHOOLID as k_JZGJBSJ_SCHOOLID--��ְ��������������� ѧУ��
      ,k.GH as k_JZGJBSJ_GH--��ְ��������������� ����
      ,k.XM as k_JZGJBSJ_XM--��ְ��������������� ����
      ,k.YWXM as k_JZGJBSJ_YWXM--��ְ��������������� Ӣ������
      ,k.XMPY as k_JZGJBSJ_XMPY--��ְ��������������� ����ƴ��
      ,k.CYM as k_JZGJBSJ_CYM--��ְ��������������� ������
      ,k.SFZJLXM as k_JZGJBSJ_SFZJLXM--��ְ��������������� ���֤��������
      ,[kb].MC as k_JZGJBSJ_SFZJLXM_MC--���֤�����ʹ���� ����
      ,k.SFZJH as k_JZGJBSJ_SFZJH--��ְ��������������� ���֤����
      ,k.CSRQ as k_JZGJBSJ_CSRQ--��ְ��������������� ��������
      ,k.XBM as k_JZGJBSJ_XBM--��ְ��������������� �Ա���
      ,[kc].MC as k_JZGJBSJ_XBM_MC--�˵��Ա���� ����
      ,k.MZM as k_JZGJBSJ_MZM--��ְ��������������� ������
      ,[kd].MZMC as k_JZGJBSJ_MZM_MZMC--�й����������Ƶ�������ĸƴд���ʹ��� ��������
      ,[kd].ZMDM as k_JZGJBSJ_MZM_ZMDM--�й����������Ƶ�������ĸƴд���ʹ��� ��ĸ����
      ,k.XXM as k_JZGJBSJ_XXM--��ְ��������������� Ѫ����
      ,[ke].MC as k_JZGJBSJ_XXM_MC--Ѫ�ʹ���� ����
      ,[ke].JC as k_JZGJBSJ_XXM_JC--Ѫ�ʹ���� ���
      ,k.JKZKM as k_JZGJBSJ_JKZKM--��ְ��������������� ����״����
      ,[kf].MC as k_JZGJBSJ_JKZKM_MC--����״��1λ���ִ��� ����
      ,[kf].SM as k_JZGJBSJ_JKZKM_SM--����״��1λ���ִ��� ˵��
      ,k.HYZTM as k_JZGJBSJ_HYZTM--��ְ��������������� ����״̬��
      ,[kg].MC as k_JZGJBSJ_HYZTM_MC--����״������ ����
      ,k.ZZMMM as k_JZGJBSJ_ZZMMM--��ְ��������������� ������ò��
      ,[kh].MC as k_JZGJBSJ_ZZMMM_MC--������ò���� ����
      ,[kh].JC as k_JZGJBSJ_ZZMMM_JC--������ò���� ���
      ,k.GATQWM as k_JZGJBSJ_GATQWM--��ְ��������������� �۰�̨������
      ,[ki].MC as k_JZGJBSJ_GATQWM_MC--�۰�̨�������� ����
      ,[ki].SM as k_JZGJBSJ_GATQWM_SM--�۰�̨�������� ˵��
      ,k.JG as k_JZGJBSJ_JG--��ְ��������������� ����
      ,k.GJDQM as k_JZGJBSJ_GJDQM--��ְ��������������� ����/������
      ,[kj].GJDQMCJC as k_JZGJBSJ_GJDQM_GJDQMCJC--��������͵������ƴ��� ����/�������Ƽ��
      ,[kj].EZMDM as k_JZGJBSJ_GJDQM_EZMDM--��������͵������ƴ��� ����ĸ����
      ,[kj].SZMDM as k_JZGJBSJ_GJDQM_SZMDM--��������͵������ƴ��� ����ĸ����
      ,k.CSDXZQHM as k_JZGJBSJ_CSDXZQHM--��ְ��������������� ����������������
      ,[kk].MC as k_JZGJBSJ_CSDXZQHM_MC--�л����񹲺͹������������� ����
      ,k.XYZJM as k_JZGJBSJ_XYZJM--��ְ��������������� �����ڽ���
      ,[kl].MC as k_JZGJBSJ_XYZJM_MC--�ڽ��������� ����
      ,k.JZGHKSZDXZQHM as k_JZGJBSJ_JZGHKSZDXZQHM--��ְ��������������� ��ְ���������ڵ�����������
      ,[km].MC as k_JZGJBSJ_JZGHKSZDXZQHM_MC--�л����񹲺͹������������� ����
      ,k.HKLBM as k_JZGJBSJ_HKLBM--��ְ��������������� ���������
      ,[kn].MC as k_JZGJBSJ_HKLBM_MC--���������� ����
      ,k.DQZZ as k_JZGJBSJ_DQZZ--��ְ��������������� ��ǰסַ
      ,k.DQZZYZBM as k_JZGJBSJ_DQZZYZBM--��ְ��������������� ��ǰסַ��������
      ,k.CJGZNY as k_JZGJBSJ_CJGZNY--��ְ��������������� �μӹ�������
      ,k.CJNY as k_JZGJBSJ_CJNY--��ְ��������������� �ӽ�����
      ,k.LXNY as k_JZGJBSJ_LXNY--��ְ��������������� ��У����
      ,k.BZLBM as k_JZGJBSJ_BZLBM--��ְ��������������� ���������
      ,[ko].MC as k_JZGJBSJ_BZLBM_MC--����������� ����
      ,k.JZGLBM as k_JZGJBSJ_JZGLBM--��ְ��������������� ��ְ�������
      ,[kp].MC as k_JZGJBSJ_JZGLBM_MC--��ְ��������� ����
      ,[kp].SM as k_JZGJBSJ_JZGLBM_SM--��ְ��������� ˵��
      ,k.GWLBM as k_JZGJBSJ_GWLBM--��ְ��������������� ��λ�����
      ,[kq].MC as k_JZGJBSJ_GWLBM_MC--��λ������� ����
      ,k.SFJZJS as k_JZGJBSJ_SFJZJS--��ְ��������������� �Ƿ��ְ��ʦ
      ,[kr].MC as k_JZGJBSJ_SFJZJS_MC--�Ƿ��־����� ����
      ,k.SFSSXJS as k_JZGJBSJ_SFSSXJS--��ְ��������������� �Ƿ�˫ʦ�ͽ�ʦ
      ,[ks].MC as k_JZGJBSJ_SFSSXJS_MC--�Ƿ��־����� ����
      ,k.ZP as k_JZGJBSJ_ZP--��ְ��������������� ��Ƭ(·��)
      ,k.DQZTM as k_JZGJBSJ_DQZTM--��ְ��������������� ��ǰ״̬��
      ,[kt].MC as k_JZGJBSJ_DQZTM_MC--��ְ����ǰ״̬����� ����
      ,k.YDDH as k_JZGJBSJ_YDDH--��ְ��������������� �ƶ��绰
      ,k.GDDH as k_JZGJBSJ_GDDH--��ְ��������������� �̶��绰
      ,k.TXDZYZBM as k_JZGJBSJ_TXDZYZBM--��ְ��������������� ͨ�ŵ�ַ��������
      ,k.TXDZ as k_JZGJBSJ_TXDZ--��ְ��������������� ͨ�ŵ�ַ
      ,k.DZXX as k_JZGJBSJ_DZXX--��ְ��������������� ��������
      ,k.WLDZ as k_JZGJBSJ_WLDZ--��ְ��������������� �����ַ
      ,k.JSTXH as k_JZGJBSJ_JSTXH--��ְ��������������� ��ʱͨѶ��
      ,k.JSKQJS as k_JZGJBSJ_JSKQJS--��ְ��������������� ��ʦ���ڽ�ɫ
      ,k.TeacherGroupId as k_JZGJBSJ_TeacherGroupId--��ְ��������������� ��TeacherGroup�����

FROM dbo.EDU_ZZXS_25_A04_DYPJXSPFJL AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS c ON a.XQID = c.ID /*ѧ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ELE_05_XLZ AS d ON a.ZCID = d.ID /*�ܴ�ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS e ON a.JSID = e.ID /*��ʦID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_02_02_ZZBJ AS f ON a.BJID = f.XZBDM /*�༶ID*/ AND a.SCHOOLID = f.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZXS_01_01_XSXX AS g ON a.XSID = g.ID /*ѧ��ID*/ AND a.SCHOOLID = g.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZXS_25_A01_DYPJDL AS h ON a.DLID = h.ID /*����ID*/ AND a.SCHOOLID = h.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZXS_25_A02_DYPJXL AS i ON a.XLID = i.ID /*С��ID*/ AND a.SCHOOLID = i.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZXS_25_A03_DYPJBJPFJL AS j ON a.GLBJPFJLID = j.ID /*�����༶���ּ�¼ID*/ AND a.SCHOOLID = j.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS k ON a.SCJSID = k.ID /*ɾ����ʦID*/ AND a.SCHOOLID = k.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
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
      dbo.EDU_JY_SFZJLX AS [kb] ON k.SFZJLXM = [kb].DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS [kc] ON k.XBM = [kc].DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS [kd] ON k.MZM = [kd].DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS [ke] ON k.XXM = [ke].DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS [kf] ON k.JKZKM = [kf].DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS [kg] ON k.HYZTM = [kg].DM /*����״̬��*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS [kh] ON k.ZZMMM = [kh].DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS [ki] ON k.GATQWM = [ki].DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS [kj] ON k.GJDQM = [kj].DM /*����/������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [kk] ON k.CSDXZQHM = [kk].DM /*����������������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS [kl] ON k.XYZJM = [kl].DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [km] ON k.JZGHKSZDXZQHM = [km].DM /*��ְ���������ڵ�����������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS [kn] ON k.HKLBM = [kn].DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_BZLB AS [ko] ON k.BZLBM = [ko].DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGLB AS [kp] ON k.JZGLBM = [kp].DM /*��ְ�������*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWLB AS [kq] ON k.GWLBM = [kq].DM /*��λ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [kr] ON k.SFJZJS = [kr].DM /*�Ƿ��ְ��ʦ*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [ks] ON k.SFSSXJS = [ks].DM /*�Ƿ�˫ʦ�ͽ�ʦ*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGDQZT AS [kt] ON k.DQZTM = [kt].DM /*��ǰ״̬��*/
GO
