
--�������۰༶ÿ�ܻ��ܱ�
CREATE VIEW [dbo].[VIEW_EDU_ZZXS_25_A06_DYPJBJMZHZ_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[XQID]--ѧ��ID
      ,a.[ZCID]--�ܴ�ID
      ,a.[BJID]--�༶ID
      ,a.[ZZF]--���ܷ�
      ,a.[ZF]--�ܷ�
      ,a.[DDID]--�ȵ�ID
      ,a.[DDPJJSID]--�ȵ�������ʦID
      ,a.[TJJSID]--��ӽ�ʦID
      ,a.[TJSJ]--���ʱ��
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
      ,f.SCHOOLID as f_DYPJBJDD_SCHOOLID--�������۰༶�ȵڱ� ѧУ
      ,f.MC as f_DYPJBJDD_MC--�������۰༶�ȵڱ� �ȵ�����
      ,f.PLSX as f_DYPJBJDD_PLSX--�������۰༶�ȵڱ� ����˳��
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

FROM dbo.EDU_ZZXS_25_A06_DYPJBJMZHZ AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS c ON a.XQID = c.ID /*ѧ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ELE_05_XLZ AS d ON a.ZCID = d.ID /*�ܴ�ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_02_02_ZZBJ AS e ON a.BJID = e.XZBDM /*�༶ID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZXS_25_A05_DYPJBJDD AS f ON a.DDID = f.ID /*�ȵ�ID*/ AND a.SCHOOLID = f.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS g ON a.DDPJJSID = g.ID /*�ȵ�������ʦID*/ AND a.SCHOOLID = g.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS h ON a.TJJSID = h.ID /*��ӽ�ʦID*/ AND a.SCHOOLID = h.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS [cb] ON c.XQM = [cb].DM /*ѧ����*/ LEFT OUTER JOIN
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
      dbo.EDU_JY_JZGDQZT AS [ht] ON h.DQZTM = [ht].DM /*��ǰ״̬��*/
GO
