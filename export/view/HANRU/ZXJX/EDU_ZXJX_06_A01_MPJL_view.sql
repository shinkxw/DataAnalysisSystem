
--������¼��
CREATE VIEW [dbo].[VIEW_EDU_ZXJX_06_A01_MPJL_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ��
      ,a.[MPJS]--������ʦ
      ,a.[MPKC]--�����γ�
      ,a.[MPXS]--����ѧ��
      ,a.[XNID]--ѧ��
      ,a.[XQID]--ѧ��
      ,a.[NJID]--�꼶
      ,a.[BJID]--�༶
      ,a.[MPJG]--�������
      ,a.[MPSJ]--����ʱ��
      ,a.[RRSJ]--¼��ʱ��
      ,a.[BZ]--��ע
      ,a.[JSRKID]--��ʦ�οα��
      ,a.[XLZID]--У����ID
      ,c.SCHOOLID as c_JZGJBSJ_SCHOOLID--��ְ��������������� ѧУ��
      ,c.GH as c_JZGJBSJ_GH--��ְ��������������� ����
      ,c.XM as c_JZGJBSJ_XM--��ְ��������������� ����
      ,c.YWXM as c_JZGJBSJ_YWXM--��ְ��������������� Ӣ������
      ,c.XMPY as c_JZGJBSJ_XMPY--��ְ��������������� ����ƴ��
      ,c.CYM as c_JZGJBSJ_CYM--��ְ��������������� ������
      ,c.XBM as c_JZGJBSJ_XBM--��ְ��������������� �Ա���
      ,[cb].MC as c_JZGJBSJ_XBM_MC--�˵��Ա���� ����
      ,c.CSRQ as c_JZGJBSJ_CSRQ--��ְ��������������� ��������
      ,c.CSDM as c_JZGJBSJ_CSDM--��ְ��������������� ��������
      ,[cc].MC as c_JZGJBSJ_CSDM_MC--�л����񹲺͹������������� ����
      ,c.JG as c_JZGJBSJ_JG--��ְ��������������� ����
      ,c.MZM as c_JZGJBSJ_MZM--��ְ��������������� ������
      ,[cd].MZMC as c_JZGJBSJ_MZM_MZMC--�й����������Ƶ�������ĸƴд���ʹ��� ��������
      ,[cd].ZMDM as c_JZGJBSJ_MZM_ZMDM--�й����������Ƶ�������ĸƴд���ʹ��� ��ĸ����
      ,c.GJDQM as c_JZGJBSJ_GJDQM--��ְ��������������� ����/������
      ,[ce].GJDQMCJC as c_JZGJBSJ_GJDQM_GJDQMCJC--��������͵������ƴ��� ����/�������Ƽ��
      ,[ce].EZMDM as c_JZGJBSJ_GJDQM_EZMDM--��������͵������ƴ��� ����ĸ����
      ,[ce].SZMDM as c_JZGJBSJ_GJDQM_SZMDM--��������͵������ƴ��� ����ĸ����
      ,c.SFZJLXM as c_JZGJBSJ_SFZJLXM--��ְ��������������� ���֤��������
      ,[cf].MC as c_JZGJBSJ_SFZJLXM_MC--���֤�����ʹ���� ����
      ,c.SFZJH as c_JZGJBSJ_SFZJH--��ְ��������������� ���֤����
      ,c.HYZKM as c_JZGJBSJ_HYZKM--��ְ��������������� ����״����
      ,[cg].MC as c_JZGJBSJ_HYZKM_MC--����״������ ����
      ,c.GATQWM as c_JZGJBSJ_GATQWM--��ְ��������������� �۰�̨������
      ,[ch].MC as c_JZGJBSJ_GATQWM_MC--�۰�̨�������� ����
      ,[ch].SM as c_JZGJBSJ_GATQWM_SM--�۰�̨�������� ˵��
      ,c.ZZMMM as c_JZGJBSJ_ZZMMM--��ְ��������������� ������ò��
      ,[ci].MC as c_JZGJBSJ_ZZMMM_MC--������ò���� ����
      ,[ci].JC as c_JZGJBSJ_ZZMMM_JC--������ò���� ���
      ,c.JKZKM as c_JZGJBSJ_JKZKM--��ְ��������������� ����״����
      ,[cj].MC as c_JZGJBSJ_JKZKM_MC--����״��1λ���ִ��� ����
      ,[cj].SM as c_JZGJBSJ_JKZKM_SM--����״��1λ���ִ��� ˵��
      ,c.XYZJM as c_JZGJBSJ_XYZJM--��ְ��������������� �����ڽ���
      ,[ck].MC as c_JZGJBSJ_XYZJM_MC--�ڽ��������� ����
      ,c.XXM as c_JZGJBSJ_XXM--��ְ��������������� Ѫ����
      ,[cl].MC as c_JZGJBSJ_XXM_MC--Ѫ�ʹ���� ����
      ,[cl].JC as c_JZGJBSJ_XXM_JC--Ѫ�ʹ���� ���
      ,c.ZP as c_JZGJBSJ_ZP--��ְ��������������� ��Ƭ
      ,c.SFZJYXQ as c_JZGJBSJ_SFZJYXQ--��ְ��������������� ���֤����Ч��
      ,c.JGH as c_JZGJBSJ_JGH--��ְ��������������� ������
      ,c.JTZZ as c_JZGJBSJ_JTZZ--��ְ��������������� ��ͥסַ
      ,c.XZZ as c_JZGJBSJ_XZZ--��ְ��������������� ��סַ
      ,c.HKSZD as c_JZGJBSJ_HKSZD--��ְ��������������� �������ڵ�
      ,c.HKXZM as c_JZGJBSJ_HKXZM--��ְ��������������� ����������
      ,[cm].MC as c_JZGJBSJ_HKXZM_MC--���������� ����
      ,c.XLM as c_JZGJBSJ_XLM--��ְ��������������� ѧ����
      ,[cn].MC as c_JZGJBSJ_XLM_MC--ѧ������ ����
      ,c.GZNY as c_JZGJBSJ_GZNY--��ְ��������������� �μӹ�������
      ,c.LXNY as c_JZGJBSJ_LXNY--��ְ��������������� ��У����
      ,c.CJNY as c_JZGJBSJ_CJNY--��ְ��������������� �ӽ�����
      ,c.BZLBM as c_JZGJBSJ_BZLBM--��ְ��������������� ���������
      ,[co].MC as c_JZGJBSJ_BZLBM_MC--��Сѧ����������� ����
      ,c.DABH as c_JZGJBSJ_DABH--��ְ��������������� �������
      ,c.DAWB as c_JZGJBSJ_DAWB--��ְ��������������� �����ı�
      ,c.TXDZ as c_JZGJBSJ_TXDZ--��ְ��������������� ͨ�ŵ�ַ
      ,c.LXDH as c_JZGJBSJ_LXDH--��ְ��������������� ��ϵ�绰
      ,c.YZBM as c_JZGJBSJ_YZBM--��ְ��������������� ��������
      ,c.DZXX as c_JZGJBSJ_DZXX--��ְ��������������� ��������
      ,c.ZYDZ as c_JZGJBSJ_ZYDZ--��ְ��������������� ��ҳ��ַ
      ,c.TC as c_JZGJBSJ_TC--��ְ��������������� �س�
      ,c.GWZYM as c_JZGJBSJ_GWZYM--��ְ��������������� ��λְҵ��
      ,[cp].MC as c_JZGJBSJ_GWZYM_MC--��λְҵ����� ����
      ,c.ZYRKXD as c_JZGJBSJ_ZYRKXD--��ְ��������������� ��Ҫ�ο�ѧ��
      ,[cq].MC as c_JZGJBSJ_ZYRKXD_MC--�ο�ѧ�δ���� ����
      ,d.SCHOOLID as d_KC_SCHOOLID--�γ������� ѧУ��
      ,d.KCMC as d_KC_KCMC--�γ������� �γ�����
      ,d.KCM as d_KC_KCM--�γ������� �γ���
      ,[db].MC as d_KC_KCM_MC--��Сѧ�γ̴���� ����
      ,[db].SYXX as d_KC_KCM_SYXX--��Сѧ�γ̴���� ����ѧУ
      ,d.KCDJM as d_KC_KCDJM--�γ������� �γ̵ȼ���
      ,[dc].MC as d_KC_KCDJM_MC--��Сѧ�γ̵ȼ������ ����
      ,d.KCBM as d_KC_KCBM--�γ������� �γ̱���
      ,d.KCJJ as d_KC_KCJJ--�γ������� �γ̼��
      ,d.KCYQ as d_KC_KCYQ--�γ������� �γ�Ҫ��
      ,d.ZXS as d_KC_ZXS--�γ������� ��ѧʱ
      ,d.ZHXS as d_KC_ZHXS--�γ������� ��ѧʱ
      ,d.ZXXS as d_KC_ZXXS--�γ������� ��ѧѧʱ
      ,d.SKFSM as d_KC_SKFSM--�γ������� �ڿη�ʽ��
      ,[dd].MC as d_KC_SKFSM_MC--�ڿη�ʽ����� ����
      ,d.JCBM as d_KC_JCBM--�γ������� �̲ı���
      ,d.CKSM as d_KC_CKSM--�γ������� �ο���Ŀ
      ,d.CDXZ as d_KC_CDXZ--�γ������� ��������
      ,d.SFZK as d_KC_SFZK--�γ������� �Ƿ�����
      ,[de].MC as d_KC_SFZK_MC--�Ƿ��־����� ����
      ,e.SCHOOLID as e_XSXX_SCHOOLID--ѧ��������������� ѧУ��
      ,e.XH as e_XSXX_XH--ѧ��������������� ѧ��
      ,e.XM as e_XSXX_XM--ѧ��������������� ����
      ,e.YWXM as e_XSXX_YWXM--ѧ��������������� Ӣ������
      ,e.XMPY as e_XSXX_XMPY--ѧ��������������� ����ƴ��
      ,e.CYM as e_XSXX_CYM--ѧ��������������� ������
      ,e.XBM as e_XSXX_XBM--ѧ��������������� �Ա���
      ,[eb].MC as e_XSXX_XBM_MC--�˵��Ա���� ����
      ,e.CSRQ as e_XSXX_CSRQ--ѧ��������������� ��������
      ,e.CSDM as e_XSXX_CSDM--ѧ��������������� ��������
      ,[ec].MC as e_XSXX_CSDM_MC--�л����񹲺͹������������� ����
      ,e.JG as e_XSXX_JG--ѧ��������������� ����
      ,e.MZM as e_XSXX_MZM--ѧ��������������� ������
      ,[ed].MZMC as e_XSXX_MZM_MZMC--�й����������Ƶ�������ĸƴд���ʹ��� ��������
      ,[ed].ZMDM as e_XSXX_MZM_ZMDM--�й����������Ƶ�������ĸƴд���ʹ��� ��ĸ����
      ,e.GJDQM as e_XSXX_GJDQM--ѧ��������������� ����/������
      ,[ee].GJDQMCJC as e_XSXX_GJDQM_GJDQMCJC--��������͵������ƴ��� ����/�������Ƽ��
      ,[ee].EZMDM as e_XSXX_GJDQM_EZMDM--��������͵������ƴ��� ����ĸ����
      ,[ee].SZMDM as e_XSXX_GJDQM_SZMDM--��������͵������ƴ��� ����ĸ����
      ,e.SFZJLXM as e_XSXX_SFZJLXM--ѧ��������������� ���֤��������
      ,[ef].MC as e_XSXX_SFZJLXM_MC--���֤�����ʹ���� ����
      ,e.SFZJH as e_XSXX_SFZJH--ѧ��������������� ���֤����
      ,e.HYZKM as e_XSXX_HYZKM--ѧ��������������� ����״����
      ,[eg].MC as e_XSXX_HYZKM_MC--����״������ ����
      ,e.GATQWM as e_XSXX_GATQWM--ѧ��������������� �۰�̨������
      ,[eh].MC as e_XSXX_GATQWM_MC--�۰�̨�������� ����
      ,[eh].SM as e_XSXX_GATQWM_SM--�۰�̨�������� ˵��
      ,e.ZZMMM as e_XSXX_ZZMMM--ѧ��������������� ������ò��
      ,[ei].MC as e_XSXX_ZZMMM_MC--������ò���� ����
      ,[ei].JC as e_XSXX_ZZMMM_JC--������ò���� ���
      ,e.JKZKM as e_XSXX_JKZKM--ѧ��������������� ����״����
      ,[ej].MC as e_XSXX_JKZKM_MC--����״��1λ���ִ��� ����
      ,[ej].SM as e_XSXX_JKZKM_SM--����״��1λ���ִ��� ˵��
      ,e.XYZJM as e_XSXX_XYZJM--ѧ��������������� �����ڽ���
      ,[ek].MC as e_XSXX_XYZJM_MC--�ڽ��������� ����
      ,e.XXM as e_XSXX_XXM--ѧ��������������� Ѫ����
      ,[el].MC as e_XSXX_XXM_MC--Ѫ�ʹ���� ����
      ,[el].JC as e_XSXX_XXM_JC--Ѫ�ʹ���� ���
      ,e.ZP as e_XSXX_ZP--ѧ��������������� ��Ƭ
      ,e.SFZJYXQ as e_XSXX_SFZJYXQ--ѧ��������������� ���֤����Ч��
      ,e.DSZYBZ as e_XSXX_DSZYBZ--ѧ��������������� ������Ů��־
      ,[em].MC as e_XSXX_DSZYBZ_MC--�Ƿ��־����� ����
      ,e.RXNY as e_XSXX_RXNY--ѧ��������������� ��ѧ����
      ,e.NJ as e_XSXX_NJ--ѧ��������������� �꼶
      ,e.BH as e_XSXX_BH--ѧ��������������� ���
      ,e.XSLBM as e_XSXX_XSLBM--ѧ��������������� ѧ�������
      ,[en].MC as e_XSXX_XSLBM_MC--ѧ��������� ����
      ,[en].SM as e_XSXX_XSLBM_SM--ѧ��������� ˵��
      ,e.XZZ as e_XSXX_XZZ--ѧ��������������� ��סַ
      ,e.HKSZD as e_XSXX_HKSZD--ѧ��������������� �������ڵ�
      ,e.HKXZM as e_XSXX_HKXZM--ѧ��������������� ����������
      ,[eo].MC as e_XSXX_HKXZM_MC--���������� ����
      ,e.SFLDRK as e_XSXX_SFLDRK--ѧ��������������� �Ƿ������˿�
      ,[ep].MC as e_XSXX_SFLDRK_MC--�Ƿ��־����� ����
      ,e.TC as e_XSXX_TC--ѧ��������������� �س�
      ,e.LXDH as e_XSXX_LXDH--ѧ��������������� ��ϵ�绰
      ,e.TXDZ as e_XSXX_TXDZ--ѧ��������������� ͨ�ŵ�ַ
      ,e.YZBM as e_XSXX_YZBM--ѧ��������������� ��������
      ,e.DZXX as e_XSXX_DZXX--ѧ��������������� ��������
      ,e.ZYDZ as e_XSXX_ZYDZ--ѧ��������������� ��ҳ��ַ
      ,e.XJH as e_XSXX_XJH--ѧ��������������� ѧ����
      ,e.XSDQZTM as e_XSXX_XSDQZTM--ѧ��������������� ѧ����ǰ״̬��
      ,[eq].MC as e_XSXX_XSDQZTM_MC--ѧ����ǰ״̬����� ����
      ,[eq].SM as e_XSXX_XSDQZTM_SM--ѧ����ǰ״̬����� ˵��
      ,f.SCHOOLID as f_XN_SCHOOLID--ѧ��� ѧУ��
      ,f.XN as f_XN_XN--ѧ��� ѧ��
      ,g.SCHOOLID as g_XQ_SCHOOLID--ѧ�����ݱ� ѧУ��
      ,g.XNID as g_XQ_XNID--ѧ�����ݱ� ѧ��
      ,g.XQM as g_XQ_XQM--ѧ�����ݱ� ѧ����
      ,[gb].MC as g_XQ_XQM_MC--ѧ�ڴ���� ����
      ,g.XQMC as g_XQ_XQMC--ѧ�����ݱ� ѧ������
      ,g.XQKSRQ as g_XQ_XQKSRQ--ѧ�����ݱ� ѧ�ڿ�ʼ����
      ,g.XQJSRQ as g_XQ_XQJSRQ--ѧ�����ݱ� ѧ�ڽ�������
      ,h.SCHOOLID as h_NJ_SCHOOLID--�꼶������� ѧУ��
      ,h.NJMC as h_NJ_NJMC--�꼶������� �꼶����
      ,i.SCHOOLID as i_BJ_SCHOOLID--�༶������� ѧУ��
      ,i.NJ as i_BJ_NJ--�༶������� �꼶��
      ,i.BJ as i_BJ_BJ--�༶������� �༶����
      ,i.JBNY as i_BJ_JBNY--�༶������� ��������
      ,i.BZRGH as i_BJ_BZRGH--�༶������� �����ι���
      ,i.BZXH as i_BJ_BZXH--�༶������� �೤ѧ��
      ,i.BJRYCH as i_BJ_BJRYCH--�༶������� �༶�����ƺ�
      ,i.XZ as i_BJ_XZ--�༶������� ѧ��
      ,i.BJLXM as i_BJ_BJLXM--�༶������� �༶������
      ,[ib].MC as i_BJ_BJLXM_MC--��Сѧ�༶���ʹ���� ����
      ,i.WLLX as i_BJ_WLLX--�༶������� ��������
      ,i.BYRQ as i_BJ_BYRQ--�༶������� ��ҵ����
      ,i.SFSSMZSYJXB as i_BJ_SFSSMZSYJXB--�༶������� �Ƿ���������˫���ѧ��
      ,[ic].MC as i_BJ_SFSSMZSYJXB_MC--�Ƿ��־����� ����
      ,i.SYJXMSM as i_BJ_SYJXMSM--�༶������� ˫���ѧģʽ��
      ,[id].MC as i_BJ_SYJXMSM_MC--��������˫���ѧģʽ����� ����
      ,[id].SM as i_BJ_SYJXMSM_SM--��������˫���ѧģʽ����� ˵��
      ,i.BZRID as i_BJ_BZRID--�༶������� ������ID
      ,j.SCHOOLID as j_XLZ_SCHOOLID--У���ܱ� ѧУID
      ,j.XLID as j_XLZ_XLID--У���ܱ� У��ID
      ,j.NAME as j_XLZ_NAME--У���ܱ� У��������
      ,j.STARTDAY as j_XLZ_STARTDAY--У���ܱ� ��ʼ����
      ,j.ENDDAY as j_XLZ_ENDDAY--У���ܱ� ��������
      ,j.ZJH as j_XLZ_ZJH--У���ܱ� �ܼƻ�

FROM dbo.EDU_ZXJX_06_A01_MPJL AS a LEFT OUTER JOIN
      dbo.EDU_ZXJZ_01_01_JZGJBSJ AS c ON a.MPJS = c.ID /*������ʦ*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZXJX_01_01_KC AS d ON a.MPKC = d.KCH /*�����γ�*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZXXS_01_01_XSXX AS e ON a.MPXS = e.ID /*����ѧ��*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_SYS_01_XN AS f ON a.XNID = f.ID /*ѧ��*/ AND a.SCHOOLID = f.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS g ON a.XQID = g.ID /*ѧ��*/ AND a.SCHOOLID = g.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_02_01_NJ AS h ON a.NJID = h.NJ /*�꼶*/ AND a.SCHOOLID = h.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_03_01_BJ AS i ON a.BJID = i.BH /*�༶*/ AND a.SCHOOLID = i.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ELE_05_XLZ AS j ON a.XLZID = j.ID /*У����ID*/ AND a.SCHOOLID = j.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS [cb] ON c.XBM = [cb].DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [cc] ON c.CSDM = [cc].DM /*��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS [cd] ON c.MZM = [cd].DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS [ce] ON c.GJDQM = [ce].DM /*����/������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS [cf] ON c.SFZJLXM = [cf].DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS [cg] ON c.HYZKM = [cg].DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS [ch] ON c.GATQWM = [ch].DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS [ci] ON c.ZZMMM = [ci].DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS [cj] ON c.JKZKM = [cj].DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS [ck] ON c.XYZJM = [ck].DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS [cl] ON c.XXM = [cl].DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS [cm] ON c.HKXZM = [cm].DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_GB_XL AS [cn] ON c.XLM = [cn].DM /*ѧ����*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXBZLB AS [co] ON c.BZLBM = [co].DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWZY AS [cp] ON c.GWZYM = [cp].DM /*��λְҵ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_RKXD AS [cq] ON c.ZYRKXD = [cq].DM /*��Ҫ�ο�ѧ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXKC AS [db] ON d.KCM = [db].DM /*�γ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXKCDJ AS [dc] ON d.KCDJM = [dc].DM /*�γ̵ȼ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS [dd] ON d.SKFSM = [dd].DM /*�ڿη�ʽ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [de] ON d.SFZK = [de].DM /*�Ƿ�����*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS [eb] ON e.XBM = [eb].DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [ec] ON e.CSDM = [ec].DM /*��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS [ed] ON e.MZM = [ed].DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS [ee] ON e.GJDQM = [ee].DM /*����/������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS [ef] ON e.SFZJLXM = [ef].DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS [eg] ON e.HYZKM = [eg].DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS [eh] ON e.GATQWM = [eh].DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS [ei] ON e.ZZMMM = [ei].DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS [ej] ON e.JKZKM = [ej].DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS [ek] ON e.XYZJM = [ek].DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS [el] ON e.XXM = [el].DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [em] ON e.DSZYBZ = [em].DM /*������Ů��־*/ LEFT OUTER JOIN
      dbo.EDU_JY_XSLB AS [en] ON e.XSLBM = [en].DM /*ѧ�������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS [eo] ON e.HKXZM = [eo].DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [ep] ON e.SFLDRK = [ep].DM /*�Ƿ������˿�*/ LEFT OUTER JOIN
      dbo.EDU_JY_XSDQZT AS [eq] ON e.XSDQZTM = [eq].DM /*ѧ����ǰ״̬��*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS [gb] ON g.XQM = [gb].DM /*ѧ����*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXBJLX AS [ib] ON i.BJLXM = [ib].DM /*�༶������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [ic] ON i.SFSSMZSYJXB = [ic].DM /*�Ƿ���������˫���ѧ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SSMZSYJXMS AS [id] ON i.SYJXMSM = [id].DM /*˫���ѧģʽ��*/
GO
