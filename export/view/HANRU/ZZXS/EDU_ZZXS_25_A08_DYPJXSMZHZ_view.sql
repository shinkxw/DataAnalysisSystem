
--��������ѧ��ÿ�ܻ��ܱ�
CREATE VIEW [dbo].[VIEW_EDU_ZZXS_25_A08_DYPJXSMZHZ_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[XQID]--ѧ��ID
      ,a.[ZCID]--�ܴ�ID
      ,a.[XSID]--ѧ��ID
      ,a.[ZZF]--���ܷ�
      ,a.[TJJSID]--��ӽ�ʦID
      ,a.[TJSJ]--���ʱ��
      ,a.[BJID]--�༶ID
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
      ,e.SCHOOLID as e_XSXX_SCHOOLID--ѧ����Ϣ���ݱ� ѧУ��
      ,e.XH as e_XSXX_XH--ѧ����Ϣ���ݱ� ѧ��
      ,e.XM as e_XSXX_XM--ѧ����Ϣ���ݱ� ����
      ,e.YWXM as e_XSXX_YWXM--ѧ����Ϣ���ݱ� Ӣ������
      ,e.XMPY as e_XSXX_XMPY--ѧ����Ϣ���ݱ� ����ƴ��
      ,e.CYM as e_XSXX_CYM--ѧ����Ϣ���ݱ� ������
      ,e.SFZJLXM as e_XSXX_SFZJLXM--ѧ����Ϣ���ݱ� ���֤��������
      ,[eb].MC as e_XSXX_SFZJLXM_MC--���֤�����ʹ���� ����
      ,e.SFZJH as e_XSXX_SFZJH--ѧ����Ϣ���ݱ� ���֤����
      ,e.XBM as e_XSXX_XBM--ѧ����Ϣ���ݱ� �Ա���
      ,[ec].MC as e_XSXX_XBM_MC--�˵��Ա���� ����
      ,e.XXM as e_XSXX_XXM--ѧ����Ϣ���ݱ� Ѫ����
      ,[ed].MC as e_XSXX_XXM_MC--Ѫ�ʹ���� ����
      ,[ed].JC as e_XSXX_XXM_JC--Ѫ�ʹ���� ���
      ,e.CSRQ as e_XSXX_CSRQ--ѧ����Ϣ���ݱ� ��������
      ,e.CSDM as e_XSXX_CSDM--ѧ����Ϣ���ݱ� ��������
      ,[ee].MC as e_XSXX_CSDM_MC--�л����񹲺͹������������� ����
      ,e.JG as e_XSXX_JG--ѧ����Ϣ���ݱ� ����
      ,e.MZM as e_XSXX_MZM--ѧ����Ϣ���ݱ� ������
      ,[ef].MZMC as e_XSXX_MZM_MZMC--�й����������Ƶ�������ĸƴд���ʹ��� ��������
      ,[ef].ZMDM as e_XSXX_MZM_ZMDM--�й����������Ƶ�������ĸƴд���ʹ��� ��ĸ����
      ,e.HYZKM as e_XSXX_HYZKM--ѧ����Ϣ���ݱ� ����״����
      ,[eg].MC as e_XSXX_HYZKM_MC--����״������ ����
      ,e.XYZJM as e_XSXX_XYZJM--ѧ����Ϣ���ݱ� �����ڽ���
      ,[eh].MC as e_XSXX_XYZJM_MC--�ڽ��������� ����
      ,e.GATQWM as e_XSXX_GATQWM--ѧ����Ϣ���ݱ� �۰�̨������
      ,[ei].MC as e_XSXX_GATQWM_MC--�۰�̨�������� ����
      ,[ei].SM as e_XSXX_GATQWM_SM--�۰�̨�������� ˵��
      ,e.JKZKM as e_XSXX_JKZKM--ѧ����Ϣ���ݱ� ����״����
      ,[ej].MC as e_XSXX_JKZKM_MC--����״��1λ���ִ��� ����
      ,[ej].SM as e_XSXX_JKZKM_SM--����״��1λ���ִ��� ˵��
      ,e.ZZMMM as e_XSXX_ZZMMM--ѧ����Ϣ���ݱ� ������ò��
      ,[ek].MC as e_XSXX_ZZMMM_MC--������ò���� ����
      ,[ek].JC as e_XSXX_ZZMMM_JC--������ò���� ���
      ,e.HKSZDXZQHM as e_XSXX_HKSZDXZQHM--ѧ����Ϣ���ݱ� �������ڵ�����������
      ,[el].MC as e_XSXX_HKSZDXZQHM_MC--�л����񹲺͹������������� ����
      ,e.HKLBM as e_XSXX_HKLBM--ѧ����Ϣ���ݱ� ���������
      ,[em].MC as e_XSXX_HKLBM_MC--���������� ����
      ,e.SFSLDRK as e_XSXX_SFSLDRK--ѧ����Ϣ���ݱ� �Ƿ��������˿�
      ,[en].MC as e_XSXX_SFSLDRK_MC--�Ƿ��־����� ����
      ,e.GJDQM as e_XSXX_GJDQM--ѧ����Ϣ���ݱ� ����/����
      ,[eo].GJDQMCJC as e_XSXX_GJDQM_GJDQMCJC--��������͵������ƴ��� ����/�������Ƽ��
      ,[eo].EZMDM as e_XSXX_GJDQM_EZMDM--��������͵������ƴ��� ����ĸ����
      ,[eo].SZMDM as e_XSXX_GJDQM_SZMDM--��������͵������ƴ��� ����ĸ����
      ,e.TC as e_XSXX_TC--ѧ����Ϣ���ݱ� �س�
      ,e.XSLXDH as e_XSXX_XSLXDH--ѧ����Ϣ���ݱ� ѧ����ϵ�绰
      ,e.WLDZ as e_XSXX_WLDZ--ѧ����Ϣ���ݱ� �����ַ
      ,e.JSTXH as e_XSXX_JSTXH--ѧ����Ϣ���ݱ� ��ʱͨѶ��
      ,e.DZXX as e_XSXX_DZXX--ѧ����Ϣ���ݱ� ��������
      ,e.ZP as e_XSXX_ZP--ѧ����Ϣ���ݱ� ��Ƭ(·��)
      ,e.RXXQID as e_XSXX_RXXQID--ѧ����Ϣ���ݱ� ��ѧѧ��ID
      ,e.NFCKH as e_XSXX_NFCKH--ѧ����Ϣ���ݱ� NFC����
      ,f.SCHOOLID as f_JZGJBSJ_SCHOOLID--��ְ��������������� ѧУ��
      ,f.GH as f_JZGJBSJ_GH--��ְ��������������� ����
      ,f.XM as f_JZGJBSJ_XM--��ְ��������������� ����
      ,f.YWXM as f_JZGJBSJ_YWXM--��ְ��������������� Ӣ������
      ,f.XMPY as f_JZGJBSJ_XMPY--��ְ��������������� ����ƴ��
      ,f.CYM as f_JZGJBSJ_CYM--��ְ��������������� ������
      ,f.SFZJLXM as f_JZGJBSJ_SFZJLXM--��ְ��������������� ���֤��������
      ,[fb].MC as f_JZGJBSJ_SFZJLXM_MC--���֤�����ʹ���� ����
      ,f.SFZJH as f_JZGJBSJ_SFZJH--��ְ��������������� ���֤����
      ,f.CSRQ as f_JZGJBSJ_CSRQ--��ְ��������������� ��������
      ,f.XBM as f_JZGJBSJ_XBM--��ְ��������������� �Ա���
      ,[fc].MC as f_JZGJBSJ_XBM_MC--�˵��Ա���� ����
      ,f.MZM as f_JZGJBSJ_MZM--��ְ��������������� ������
      ,[fd].MZMC as f_JZGJBSJ_MZM_MZMC--�й����������Ƶ�������ĸƴд���ʹ��� ��������
      ,[fd].ZMDM as f_JZGJBSJ_MZM_ZMDM--�й����������Ƶ�������ĸƴд���ʹ��� ��ĸ����
      ,f.XXM as f_JZGJBSJ_XXM--��ְ��������������� Ѫ����
      ,[fe].MC as f_JZGJBSJ_XXM_MC--Ѫ�ʹ���� ����
      ,[fe].JC as f_JZGJBSJ_XXM_JC--Ѫ�ʹ���� ���
      ,f.JKZKM as f_JZGJBSJ_JKZKM--��ְ��������������� ����״����
      ,[ff].MC as f_JZGJBSJ_JKZKM_MC--����״��1λ���ִ��� ����
      ,[ff].SM as f_JZGJBSJ_JKZKM_SM--����״��1λ���ִ��� ˵��
      ,f.HYZTM as f_JZGJBSJ_HYZTM--��ְ��������������� ����״̬��
      ,[fg].MC as f_JZGJBSJ_HYZTM_MC--����״������ ����
      ,f.ZZMMM as f_JZGJBSJ_ZZMMM--��ְ��������������� ������ò��
      ,[fh].MC as f_JZGJBSJ_ZZMMM_MC--������ò���� ����
      ,[fh].JC as f_JZGJBSJ_ZZMMM_JC--������ò���� ���
      ,f.GATQWM as f_JZGJBSJ_GATQWM--��ְ��������������� �۰�̨������
      ,[fi].MC as f_JZGJBSJ_GATQWM_MC--�۰�̨�������� ����
      ,[fi].SM as f_JZGJBSJ_GATQWM_SM--�۰�̨�������� ˵��
      ,f.JG as f_JZGJBSJ_JG--��ְ��������������� ����
      ,f.GJDQM as f_JZGJBSJ_GJDQM--��ְ��������������� ����/������
      ,[fj].GJDQMCJC as f_JZGJBSJ_GJDQM_GJDQMCJC--��������͵������ƴ��� ����/�������Ƽ��
      ,[fj].EZMDM as f_JZGJBSJ_GJDQM_EZMDM--��������͵������ƴ��� ����ĸ����
      ,[fj].SZMDM as f_JZGJBSJ_GJDQM_SZMDM--��������͵������ƴ��� ����ĸ����
      ,f.CSDXZQHM as f_JZGJBSJ_CSDXZQHM--��ְ��������������� ����������������
      ,[fk].MC as f_JZGJBSJ_CSDXZQHM_MC--�л����񹲺͹������������� ����
      ,f.XYZJM as f_JZGJBSJ_XYZJM--��ְ��������������� �����ڽ���
      ,[fl].MC as f_JZGJBSJ_XYZJM_MC--�ڽ��������� ����
      ,f.JZGHKSZDXZQHM as f_JZGJBSJ_JZGHKSZDXZQHM--��ְ��������������� ��ְ���������ڵ�����������
      ,[fm].MC as f_JZGJBSJ_JZGHKSZDXZQHM_MC--�л����񹲺͹������������� ����
      ,f.HKLBM as f_JZGJBSJ_HKLBM--��ְ��������������� ���������
      ,[fn].MC as f_JZGJBSJ_HKLBM_MC--���������� ����
      ,f.DQZZ as f_JZGJBSJ_DQZZ--��ְ��������������� ��ǰסַ
      ,f.DQZZYZBM as f_JZGJBSJ_DQZZYZBM--��ְ��������������� ��ǰסַ��������
      ,f.CJGZNY as f_JZGJBSJ_CJGZNY--��ְ��������������� �μӹ�������
      ,f.CJNY as f_JZGJBSJ_CJNY--��ְ��������������� �ӽ�����
      ,f.LXNY as f_JZGJBSJ_LXNY--��ְ��������������� ��У����
      ,f.BZLBM as f_JZGJBSJ_BZLBM--��ְ��������������� ���������
      ,[fo].MC as f_JZGJBSJ_BZLBM_MC--����������� ����
      ,f.JZGLBM as f_JZGJBSJ_JZGLBM--��ְ��������������� ��ְ�������
      ,[fp].MC as f_JZGJBSJ_JZGLBM_MC--��ְ��������� ����
      ,[fp].SM as f_JZGJBSJ_JZGLBM_SM--��ְ��������� ˵��
      ,f.GWLBM as f_JZGJBSJ_GWLBM--��ְ��������������� ��λ�����
      ,[fq].MC as f_JZGJBSJ_GWLBM_MC--��λ������� ����
      ,f.SFJZJS as f_JZGJBSJ_SFJZJS--��ְ��������������� �Ƿ��ְ��ʦ
      ,[fr].MC as f_JZGJBSJ_SFJZJS_MC--�Ƿ��־����� ����
      ,f.SFSSXJS as f_JZGJBSJ_SFSSXJS--��ְ��������������� �Ƿ�˫ʦ�ͽ�ʦ
      ,[fs].MC as f_JZGJBSJ_SFSSXJS_MC--�Ƿ��־����� ����
      ,f.ZP as f_JZGJBSJ_ZP--��ְ��������������� ��Ƭ(·��)
      ,f.DQZTM as f_JZGJBSJ_DQZTM--��ְ��������������� ��ǰ״̬��
      ,[ft].MC as f_JZGJBSJ_DQZTM_MC--��ְ����ǰ״̬����� ����
      ,f.YDDH as f_JZGJBSJ_YDDH--��ְ��������������� �ƶ��绰
      ,f.GDDH as f_JZGJBSJ_GDDH--��ְ��������������� �̶��绰
      ,f.TXDZYZBM as f_JZGJBSJ_TXDZYZBM--��ְ��������������� ͨ�ŵ�ַ��������
      ,f.TXDZ as f_JZGJBSJ_TXDZ--��ְ��������������� ͨ�ŵ�ַ
      ,f.DZXX as f_JZGJBSJ_DZXX--��ְ��������������� ��������
      ,f.WLDZ as f_JZGJBSJ_WLDZ--��ְ��������������� �����ַ
      ,f.JSTXH as f_JZGJBSJ_JSTXH--��ְ��������������� ��ʱͨѶ��
      ,f.JSKQJS as f_JZGJBSJ_JSKQJS--��ְ��������������� ��ʦ���ڽ�ɫ
      ,f.TeacherGroupId as f_JZGJBSJ_TeacherGroupId--��ְ��������������� ��TeacherGroup�����
      ,f.PersonalCard1 as f_JZGJBSJ_PersonalCard1--��ְ��������������� ���˿�1
      ,f.PersonalCard2 as f_JZGJBSJ_PersonalCard2--��ְ��������������� ���˿�2
      ,f.PersonalCard3 as f_JZGJBSJ_PersonalCard3--��ְ��������������� ���˿�3
      ,g.SCHOOLID as g_ZZBJ_SCHOOLID--ѧУ�༶���ݱ� ѧУ��
      ,g.ZYXXID as g_ZZBJ_ZYXXID--ѧУ�༶���ݱ� רҵ������Ϣ
      ,g.ZZNJID as g_ZZBJ_ZZNJID--ѧУ�༶���ݱ� ѧУ�꼶���ݱ�
      ,g.XZBMC as g_ZZBJ_XZBMC--ѧУ�༶���ݱ� ����������
      ,g.JBNY as g_ZZBJ_JBNY--ѧУ�༶���ݱ� ��������
      ,g.BZRGH as g_ZZBJ_BZRGH--ѧУ�༶���ݱ� �����ι���
      ,g.JSBH as g_ZZBJ_JSBH--ѧУ�༶���ݱ� ���ұ��
      ,g.NANSRS as g_ZZBJ_NANSRS--ѧУ�༶���ݱ� ��������
      ,g.NVSRS as g_ZZBJ_NVSRS--ѧУ�༶���ݱ� Ů������
      ,g.ZRS as g_ZZBJ_ZRS--ѧУ�༶���ݱ� ������
      ,g.BZXH as g_ZZBJ_BZXH--ѧУ�༶���ݱ� �೤ѧ��
      ,g.JXJH as g_ZZBJ_JXJH--ѧУ�༶���ݱ� ��ѧ�ƻ�
      ,g.JGH as g_ZZBJ_JGH--ѧУ�༶���ݱ� ������
      ,g.XQDM as g_ZZBJ_XQDM--ѧУ�༶���ݱ� У������
      ,g.BZRID as g_ZZBJ_BZRID--ѧУ�༶���ݱ� ������ID
      ,g.PLSX as g_ZZBJ_PLSX--ѧУ�༶���ݱ� ����˳��
      ,g.ID as g_ZZBJ_ID--ѧУ�༶���ݱ� ��Record���

FROM dbo.EDU_ZZXS_25_A08_DYPJXSMZHZ AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS c ON a.XQID = c.ID /*ѧ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ELE_05_XLZ AS d ON a.ZCID = d.ID /*�ܴ�ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZXS_01_01_XSXX AS e ON a.XSID = e.ID /*ѧ��ID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS f ON a.TJJSID = f.ID /*��ӽ�ʦID*/ AND a.SCHOOLID = f.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_02_02_ZZBJ AS g ON a.BJID = g.XZBDM /*�༶ID*/ AND a.SCHOOLID = g.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS [cb] ON c.XQM = [cb].DM /*ѧ����*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS [eb] ON e.SFZJLXM = [eb].DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS [ec] ON e.XBM = [ec].DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS [ed] ON e.XXM = [ed].DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [ee] ON e.CSDM = [ee].DM /*��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS [ef] ON e.MZM = [ef].DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS [eg] ON e.HYZKM = [eg].DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS [eh] ON e.XYZJM = [eh].DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS [ei] ON e.GATQWM = [ei].DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS [ej] ON e.JKZKM = [ej].DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS [ek] ON e.ZZMMM = [ek].DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [el] ON e.HKSZDXZQHM = [el].DM /*�������ڵ�����������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS [em] ON e.HKLBM = [em].DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [en] ON e.SFSLDRK = [en].DM /*�Ƿ��������˿�*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS [eo] ON e.GJDQM = [eo].DM /*����/����*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS [fb] ON f.SFZJLXM = [fb].DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS [fc] ON f.XBM = [fc].DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS [fd] ON f.MZM = [fd].DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS [fe] ON f.XXM = [fe].DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS [ff] ON f.JKZKM = [ff].DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS [fg] ON f.HYZTM = [fg].DM /*����״̬��*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS [fh] ON f.ZZMMM = [fh].DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS [fi] ON f.GATQWM = [fi].DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS [fj] ON f.GJDQM = [fj].DM /*����/������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [fk] ON f.CSDXZQHM = [fk].DM /*����������������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS [fl] ON f.XYZJM = [fl].DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [fm] ON f.JZGHKSZDXZQHM = [fm].DM /*��ְ���������ڵ�����������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS [fn] ON f.HKLBM = [fn].DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_BZLB AS [fo] ON f.BZLBM = [fo].DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGLB AS [fp] ON f.JZGLBM = [fp].DM /*��ְ�������*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWLB AS [fq] ON f.GWLBM = [fq].DM /*��λ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [fr] ON f.SFJZJS = [fr].DM /*�Ƿ��ְ��ʦ*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [fs] ON f.SFSSXJS = [fs].DM /*�Ƿ�˫ʦ�ͽ�ʦ*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGDQZT AS [ft] ON f.DQZTM = [ft].DM /*��ǰ״̬��*/
GO
