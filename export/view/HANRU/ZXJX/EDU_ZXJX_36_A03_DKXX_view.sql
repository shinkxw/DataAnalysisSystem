
--������Ϣ��
CREATE VIEW [dbo].[VIEW_EDU_ZXJX_36_A03_DKXX_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[XDKJSID]--����ν�ʦID
      ,a.[XDKRQ]--���������
      ,a.[XDKSDID]--�����ʱ��ID
      ,a.[XDKJCID]--����νڴ�ID
      ,a.[XDKKCID]--����ογ�ID
      ,a.[DKJSID]--���ν�ʦID
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
      ,c.JZGLXID as c_JZGJBSJ_JZGLXID--��ְ��������������� ��ְ������ID
      ,d.SCHOOLID as d_SD_SCHOOLID--ʱ�� ѧУ��
      ,d.MC as d_SD_MC--ʱ�� ����
      ,e.SCHOOLID as e_JC_SCHOOLID--�ڴ� ѧУ��
      ,e.SDID as e_JC_SDID--�ڴ� ����ʱ��ID
      ,e.MC as e_JC_MC--�ڴ� ����
      ,e.KSXS as e_JC_KSXS--�ڴ� ��ʼСʱ
      ,e.KSFZ as e_JC_KSFZ--�ڴ� ��ʼ����
      ,e.JSXS as e_JC_JSXS--�ڴ� ����Сʱ
      ,e.JSFZ as e_JC_JSFZ--�ڴ� ��������
      ,f.SCHOOLID as f_KC_SCHOOLID--�γ������� ѧУ��
      ,f.KCMC as f_KC_KCMC--�γ������� �γ�����
      ,f.KCM as f_KC_KCM--�γ������� �γ���
      ,[fb].MC as f_KC_KCM_MC--��Сѧ�γ̴���� ����
      ,[fb].SYXX as f_KC_KCM_SYXX--��Сѧ�γ̴���� ����ѧУ
      ,f.KCDJM as f_KC_KCDJM--�γ������� �γ̵ȼ���
      ,[fc].MC as f_KC_KCDJM_MC--��Сѧ�γ̵ȼ������ ����
      ,f.KCBM as f_KC_KCBM--�γ������� �γ̱���
      ,f.KCJJ as f_KC_KCJJ--�γ������� �γ̼��
      ,f.KCYQ as f_KC_KCYQ--�γ������� �γ�Ҫ��
      ,f.ZXS as f_KC_ZXS--�γ������� ��ѧʱ
      ,f.ZHXS as f_KC_ZHXS--�γ������� ��ѧʱ
      ,f.ZXXS as f_KC_ZXXS--�γ������� ��ѧѧʱ
      ,f.SKFSM as f_KC_SKFSM--�γ������� �ڿη�ʽ��
      ,[fd].MC as f_KC_SKFSM_MC--�ڿη�ʽ����� ����
      ,f.JCBM as f_KC_JCBM--�γ������� �̲ı���
      ,f.CKSM as f_KC_CKSM--�γ������� �ο���Ŀ
      ,f.CDXZ as f_KC_CDXZ--�γ������� ��������
      ,f.SFZK as f_KC_SFZK--�γ������� �Ƿ�����
      ,[fe].MC as f_KC_SFZK_MC--�Ƿ��־����� ����
      ,f.PLSX as f_KC_PLSX--�γ������� ����˳��
      ,g.SCHOOLID as g_JZGJBSJ_SCHOOLID--��ְ��������������� ѧУ��
      ,g.GH as g_JZGJBSJ_GH--��ְ��������������� ����
      ,g.XM as g_JZGJBSJ_XM--��ְ��������������� ����
      ,g.YWXM as g_JZGJBSJ_YWXM--��ְ��������������� Ӣ������
      ,g.XMPY as g_JZGJBSJ_XMPY--��ְ��������������� ����ƴ��
      ,g.CYM as g_JZGJBSJ_CYM--��ְ��������������� ������
      ,g.XBM as g_JZGJBSJ_XBM--��ְ��������������� �Ա���
      ,[gb].MC as g_JZGJBSJ_XBM_MC--�˵��Ա���� ����
      ,g.CSRQ as g_JZGJBSJ_CSRQ--��ְ��������������� ��������
      ,g.CSDM as g_JZGJBSJ_CSDM--��ְ��������������� ��������
      ,[gc].MC as g_JZGJBSJ_CSDM_MC--�л����񹲺͹������������� ����
      ,g.JG as g_JZGJBSJ_JG--��ְ��������������� ����
      ,g.MZM as g_JZGJBSJ_MZM--��ְ��������������� ������
      ,[gd].MZMC as g_JZGJBSJ_MZM_MZMC--�й����������Ƶ�������ĸƴд���ʹ��� ��������
      ,[gd].ZMDM as g_JZGJBSJ_MZM_ZMDM--�й����������Ƶ�������ĸƴд���ʹ��� ��ĸ����
      ,g.GJDQM as g_JZGJBSJ_GJDQM--��ְ��������������� ����/������
      ,[ge].GJDQMCJC as g_JZGJBSJ_GJDQM_GJDQMCJC--��������͵������ƴ��� ����/�������Ƽ��
      ,[ge].EZMDM as g_JZGJBSJ_GJDQM_EZMDM--��������͵������ƴ��� ����ĸ����
      ,[ge].SZMDM as g_JZGJBSJ_GJDQM_SZMDM--��������͵������ƴ��� ����ĸ����
      ,g.SFZJLXM as g_JZGJBSJ_SFZJLXM--��ְ��������������� ���֤��������
      ,[gf].MC as g_JZGJBSJ_SFZJLXM_MC--���֤�����ʹ���� ����
      ,g.SFZJH as g_JZGJBSJ_SFZJH--��ְ��������������� ���֤����
      ,g.HYZKM as g_JZGJBSJ_HYZKM--��ְ��������������� ����״����
      ,[gg].MC as g_JZGJBSJ_HYZKM_MC--����״������ ����
      ,g.GATQWM as g_JZGJBSJ_GATQWM--��ְ��������������� �۰�̨������
      ,[gh].MC as g_JZGJBSJ_GATQWM_MC--�۰�̨�������� ����
      ,[gh].SM as g_JZGJBSJ_GATQWM_SM--�۰�̨�������� ˵��
      ,g.ZZMMM as g_JZGJBSJ_ZZMMM--��ְ��������������� ������ò��
      ,[gi].MC as g_JZGJBSJ_ZZMMM_MC--������ò���� ����
      ,[gi].JC as g_JZGJBSJ_ZZMMM_JC--������ò���� ���
      ,g.JKZKM as g_JZGJBSJ_JKZKM--��ְ��������������� ����״����
      ,[gj].MC as g_JZGJBSJ_JKZKM_MC--����״��1λ���ִ��� ����
      ,[gj].SM as g_JZGJBSJ_JKZKM_SM--����״��1λ���ִ��� ˵��
      ,g.XYZJM as g_JZGJBSJ_XYZJM--��ְ��������������� �����ڽ���
      ,[gk].MC as g_JZGJBSJ_XYZJM_MC--�ڽ��������� ����
      ,g.XXM as g_JZGJBSJ_XXM--��ְ��������������� Ѫ����
      ,[gl].MC as g_JZGJBSJ_XXM_MC--Ѫ�ʹ���� ����
      ,[gl].JC as g_JZGJBSJ_XXM_JC--Ѫ�ʹ���� ���
      ,g.ZP as g_JZGJBSJ_ZP--��ְ��������������� ��Ƭ
      ,g.SFZJYXQ as g_JZGJBSJ_SFZJYXQ--��ְ��������������� ���֤����Ч��
      ,g.JGH as g_JZGJBSJ_JGH--��ְ��������������� ������
      ,g.JTZZ as g_JZGJBSJ_JTZZ--��ְ��������������� ��ͥסַ
      ,g.XZZ as g_JZGJBSJ_XZZ--��ְ��������������� ��סַ
      ,g.HKSZD as g_JZGJBSJ_HKSZD--��ְ��������������� �������ڵ�
      ,g.HKXZM as g_JZGJBSJ_HKXZM--��ְ��������������� ����������
      ,[gm].MC as g_JZGJBSJ_HKXZM_MC--���������� ����
      ,g.XLM as g_JZGJBSJ_XLM--��ְ��������������� ѧ����
      ,[gn].MC as g_JZGJBSJ_XLM_MC--ѧ������ ����
      ,g.GZNY as g_JZGJBSJ_GZNY--��ְ��������������� �μӹ�������
      ,g.LXNY as g_JZGJBSJ_LXNY--��ְ��������������� ��У����
      ,g.CJNY as g_JZGJBSJ_CJNY--��ְ��������������� �ӽ�����
      ,g.BZLBM as g_JZGJBSJ_BZLBM--��ְ��������������� ���������
      ,[go].MC as g_JZGJBSJ_BZLBM_MC--��Сѧ����������� ����
      ,g.DABH as g_JZGJBSJ_DABH--��ְ��������������� �������
      ,g.DAWB as g_JZGJBSJ_DAWB--��ְ��������������� �����ı�
      ,g.TXDZ as g_JZGJBSJ_TXDZ--��ְ��������������� ͨ�ŵ�ַ
      ,g.LXDH as g_JZGJBSJ_LXDH--��ְ��������������� ��ϵ�绰
      ,g.YZBM as g_JZGJBSJ_YZBM--��ְ��������������� ��������
      ,g.DZXX as g_JZGJBSJ_DZXX--��ְ��������������� ��������
      ,g.ZYDZ as g_JZGJBSJ_ZYDZ--��ְ��������������� ��ҳ��ַ
      ,g.TC as g_JZGJBSJ_TC--��ְ��������������� �س�
      ,g.GWZYM as g_JZGJBSJ_GWZYM--��ְ��������������� ��λְҵ��
      ,[gp].MC as g_JZGJBSJ_GWZYM_MC--��λְҵ����� ����
      ,g.ZYRKXD as g_JZGJBSJ_ZYRKXD--��ְ��������������� ��Ҫ�ο�ѧ��
      ,[gq].MC as g_JZGJBSJ_ZYRKXD_MC--�ο�ѧ�δ���� ����
      ,g.JZGLXID as g_JZGJBSJ_JZGLXID--��ְ��������������� ��ְ������ID

FROM dbo.EDU_ZXJX_36_A03_DKXX AS a LEFT OUTER JOIN
      dbo.EDU_ZXJZ_01_01_JZGJBSJ AS c ON a.XDKJSID = c.ID /*����ν�ʦID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ELE_05_SD AS d ON a.XDKSDID = d.ID /*�����ʱ��ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ELE_05_JC AS e ON a.XDKJCID = e.ID /*����νڴ�ID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZXJX_01_01_KC AS f ON a.XDKKCID = f.KCH /*����ογ�ID*/ AND a.SCHOOLID = f.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZXJZ_01_01_JZGJBSJ AS g ON a.DKJSID = g.ID /*���ν�ʦID*/ AND a.SCHOOLID = g.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
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
      dbo.EDU_JY_ZXXKC AS [fb] ON f.KCM = [fb].DM /*�γ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXKCDJ AS [fc] ON f.KCDJM = [fc].DM /*�γ̵ȼ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS [fd] ON f.SKFSM = [fd].DM /*�ڿη�ʽ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [fe] ON f.SFZK = [fe].DM /*�Ƿ�����*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS [gb] ON g.XBM = [gb].DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [gc] ON g.CSDM = [gc].DM /*��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS [gd] ON g.MZM = [gd].DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS [ge] ON g.GJDQM = [ge].DM /*����/������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS [gf] ON g.SFZJLXM = [gf].DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS [gg] ON g.HYZKM = [gg].DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS [gh] ON g.GATQWM = [gh].DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS [gi] ON g.ZZMMM = [gi].DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS [gj] ON g.JKZKM = [gj].DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS [gk] ON g.XYZJM = [gk].DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS [gl] ON g.XXM = [gl].DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS [gm] ON g.HKXZM = [gm].DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_GB_XL AS [gn] ON g.XLM = [gn].DM /*ѧ����*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXBZLB AS [go] ON g.BZLBM = [go].DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWZY AS [gp] ON g.GWZYM = [gp].DM /*��λְҵ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_RKXD AS [gq] ON g.ZYRKXD = [gq].DM /*��Ҫ�ο�ѧ��*/
GO
