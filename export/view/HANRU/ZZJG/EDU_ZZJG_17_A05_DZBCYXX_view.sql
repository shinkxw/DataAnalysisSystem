
--��֧����Ա��Ϣ��
CREATE VIEW [dbo].[VIEW_EDU_ZZJG_17_A05_DZBCYXX_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[DYXXID]--��Ա��ϢID
      ,a.[JZGJBSJID]--�̹�������ϢID
      ,a.[DZBID]--��֧��ID
      ,a.[DZBZWID]--��֧��ְλID
      ,a.[TJJSID]--��ӽ�ʦID
      ,a.[TJSJ]--���ʱ��
      ,c.SCHOOLID as c_DYXX_SCHOOLID--��Ա��Ϣ�� ѧУ
      ,c.JZGJBSJID as c_DYXX_JZGJBSJID--��Ա��Ϣ�� �̹�������ϢID
      ,c.RDSJ as c_DYXX_RDSJ--��Ա��Ϣ�� �뵳ʱ��
      ,c.RDDD as c_DYXX_RDDD--��Ա��Ϣ�� �뵳�ص�
      ,c.RDJSR as c_DYXX_RDJSR--��Ա��Ϣ�� �뵳������
      ,c.DQZT as c_DYXX_DQZT--��Ա��Ϣ�� ��ǰ״̬
      ,c.TJJSID as c_DYXX_TJJSID--��Ա��Ϣ�� ��ӽ�ʦID
      ,c.TJSJ as c_DYXX_TJSJ--��Ա��Ϣ�� ���ʱ��
      ,c.BZ as c_DYXX_BZ--��Ա��Ϣ�� ��ע
      ,d.SCHOOLID as d_JZGJBSJ_SCHOOLID--��ְ��������������� ѧУ��
      ,d.GH as d_JZGJBSJ_GH--��ְ��������������� ����
      ,d.XM as d_JZGJBSJ_XM--��ְ��������������� ����
      ,d.YWXM as d_JZGJBSJ_YWXM--��ְ��������������� Ӣ������
      ,d.XMPY as d_JZGJBSJ_XMPY--��ְ��������������� ����ƴ��
      ,d.CYM as d_JZGJBSJ_CYM--��ְ��������������� ������
      ,d.XBM as d_JZGJBSJ_XBM--��ְ��������������� �Ա���
      ,[db].MC as d_JZGJBSJ_XBM_MC--�˵��Ա���� ����
      ,d.CSRQ as d_JZGJBSJ_CSRQ--��ְ��������������� ��������
      ,d.CSDM as d_JZGJBSJ_CSDM--��ְ��������������� ��������
      ,[dc].MC as d_JZGJBSJ_CSDM_MC--�л����񹲺͹������������� ����
      ,d.JG as d_JZGJBSJ_JG--��ְ��������������� ����
      ,d.MZM as d_JZGJBSJ_MZM--��ְ��������������� ������
      ,[dd].MZMC as d_JZGJBSJ_MZM_MZMC--�й����������Ƶ�������ĸƴд���ʹ��� ��������
      ,[dd].ZMDM as d_JZGJBSJ_MZM_ZMDM--�й����������Ƶ�������ĸƴд���ʹ��� ��ĸ����
      ,d.GJDQM as d_JZGJBSJ_GJDQM--��ְ��������������� ����/������
      ,[de].GJDQMCJC as d_JZGJBSJ_GJDQM_GJDQMCJC--��������͵������ƴ��� ����/�������Ƽ��
      ,[de].EZMDM as d_JZGJBSJ_GJDQM_EZMDM--��������͵������ƴ��� ����ĸ����
      ,[de].SZMDM as d_JZGJBSJ_GJDQM_SZMDM--��������͵������ƴ��� ����ĸ����
      ,d.SFZJLXM as d_JZGJBSJ_SFZJLXM--��ְ��������������� ���֤��������
      ,[df].MC as d_JZGJBSJ_SFZJLXM_MC--���֤�����ʹ���� ����
      ,d.SFZJH as d_JZGJBSJ_SFZJH--��ְ��������������� ���֤����
      ,d.HYZKM as d_JZGJBSJ_HYZKM--��ְ��������������� ����״����
      ,[dg].MC as d_JZGJBSJ_HYZKM_MC--����״������ ����
      ,d.GATQWM as d_JZGJBSJ_GATQWM--��ְ��������������� �۰�̨������
      ,[dh].MC as d_JZGJBSJ_GATQWM_MC--�۰�̨�������� ����
      ,[dh].SM as d_JZGJBSJ_GATQWM_SM--�۰�̨�������� ˵��
      ,d.ZZMMM as d_JZGJBSJ_ZZMMM--��ְ��������������� ������ò��
      ,[di].MC as d_JZGJBSJ_ZZMMM_MC--������ò���� ����
      ,[di].JC as d_JZGJBSJ_ZZMMM_JC--������ò���� ���
      ,d.JKZKM as d_JZGJBSJ_JKZKM--��ְ��������������� ����״����
      ,[dj].MC as d_JZGJBSJ_JKZKM_MC--����״��1λ���ִ��� ����
      ,[dj].SM as d_JZGJBSJ_JKZKM_SM--����״��1λ���ִ��� ˵��
      ,d.XYZJM as d_JZGJBSJ_XYZJM--��ְ��������������� �����ڽ���
      ,[dk].MC as d_JZGJBSJ_XYZJM_MC--�ڽ��������� ����
      ,d.XXM as d_JZGJBSJ_XXM--��ְ��������������� Ѫ����
      ,[dl].MC as d_JZGJBSJ_XXM_MC--Ѫ�ʹ���� ����
      ,[dl].JC as d_JZGJBSJ_XXM_JC--Ѫ�ʹ���� ���
      ,d.ZP as d_JZGJBSJ_ZP--��ְ��������������� ��Ƭ
      ,d.SFZJYXQ as d_JZGJBSJ_SFZJYXQ--��ְ��������������� ���֤����Ч��
      ,d.JGH as d_JZGJBSJ_JGH--��ְ��������������� ������
      ,d.JTZZ as d_JZGJBSJ_JTZZ--��ְ��������������� ��ͥסַ
      ,d.XZZ as d_JZGJBSJ_XZZ--��ְ��������������� ��סַ
      ,d.HKSZD as d_JZGJBSJ_HKSZD--��ְ��������������� �������ڵ�
      ,d.HKXZM as d_JZGJBSJ_HKXZM--��ְ��������������� ����������
      ,[dm].MC as d_JZGJBSJ_HKXZM_MC--���������� ����
      ,d.XLM as d_JZGJBSJ_XLM--��ְ��������������� ѧ����
      ,[dn].MC as d_JZGJBSJ_XLM_MC--ѧ������ ����
      ,d.GZNY as d_JZGJBSJ_GZNY--��ְ��������������� �μӹ�������
      ,d.LXNY as d_JZGJBSJ_LXNY--��ְ��������������� ��У����
      ,d.CJNY as d_JZGJBSJ_CJNY--��ְ��������������� �ӽ�����
      ,d.BZLBM as d_JZGJBSJ_BZLBM--��ְ��������������� ���������
      ,[do].MC as d_JZGJBSJ_BZLBM_MC--��Сѧ����������� ����
      ,d.DABH as d_JZGJBSJ_DABH--��ְ��������������� �������
      ,d.DAWB as d_JZGJBSJ_DAWB--��ְ��������������� �����ı�
      ,d.TXDZ as d_JZGJBSJ_TXDZ--��ְ��������������� ͨ�ŵ�ַ
      ,d.LXDH as d_JZGJBSJ_LXDH--��ְ��������������� ��ϵ�绰
      ,d.YZBM as d_JZGJBSJ_YZBM--��ְ��������������� ��������
      ,d.DZXX as d_JZGJBSJ_DZXX--��ְ��������������� ��������
      ,d.ZYDZ as d_JZGJBSJ_ZYDZ--��ְ��������������� ��ҳ��ַ
      ,d.TC as d_JZGJBSJ_TC--��ְ��������������� �س�
      ,d.GWZYM as d_JZGJBSJ_GWZYM--��ְ��������������� ��λְҵ��
      ,[dp].MC as d_JZGJBSJ_GWZYM_MC--��λְҵ����� ����
      ,d.ZYRKXD as d_JZGJBSJ_ZYRKXD--��ְ��������������� ��Ҫ�ο�ѧ��
      ,[dq].MC as d_JZGJBSJ_ZYRKXD_MC--�ο�ѧ�δ���� ����
      ,e.SCHOOLID as e_DZBSJ_SCHOOLID--��֧�����ݱ� ѧУ
      ,e.DZBMC as e_DZBSJ_DZBMC--��֧�����ݱ� ��֧������
      ,e.SS as e_DZBSJ_SS--��֧�����ݱ� ����
      ,e.BZ as e_DZBSJ_BZ--��֧�����ݱ� ��ע
      ,f.SCHOOLID as f_DZBZWSJ_SCHOOLID--��֧��ְλ���ݱ� ѧУ
      ,f.DZBID as f_DZBZWSJ_DZBID--��֧��ְλ���ݱ� ��֧��ID
      ,f.ZWMC as f_DZBZWSJ_ZWMC--��֧��ְλ���ݱ� ְλ����
      ,f.GZNR as f_DZBZWSJ_GZNR--��֧��ְλ���ݱ� ��������
      ,f.BZ as f_DZBZWSJ_BZ--��֧��ְλ���ݱ� ��ע
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

FROM dbo.EDU_ZZJG_17_A05_DZBCYXX AS a LEFT OUTER JOIN
      dbo.EDU_ZZJG_17_A01_DYXX AS c ON a.DYXXID = c.ID /*��Ա��ϢID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZXJZ_01_01_JZGJBSJ AS d ON a.JZGJBSJID = d.ID /*�̹�������ϢID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_17_A03_DZBSJ AS e ON a.DZBID = e.ID /*��֧��ID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_17_A04_DZBZWSJ AS f ON a.DZBZWID = f.ID /*��֧��ְλID*/ AND a.SCHOOLID = f.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZXJZ_01_01_JZGJBSJ AS g ON a.TJJSID = g.ID /*��ӽ�ʦID*/ AND a.SCHOOLID = g.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS [db] ON d.XBM = [db].DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [dc] ON d.CSDM = [dc].DM /*��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS [dd] ON d.MZM = [dd].DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS [de] ON d.GJDQM = [de].DM /*����/������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS [df] ON d.SFZJLXM = [df].DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS [dg] ON d.HYZKM = [dg].DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS [dh] ON d.GATQWM = [dh].DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS [di] ON d.ZZMMM = [di].DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS [dj] ON d.JKZKM = [dj].DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS [dk] ON d.XYZJM = [dk].DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS [dl] ON d.XXM = [dl].DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS [dm] ON d.HKXZM = [dm].DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_GB_XL AS [dn] ON d.XLM = [dn].DM /*ѧ����*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXBZLB AS [do] ON d.BZLBM = [do].DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWZY AS [dp] ON d.GWZYM = [dp].DM /*��λְҵ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_RKXD AS [dq] ON d.ZYRKXD = [dq].DM /*��Ҫ�ο�ѧ��*/ LEFT OUTER JOIN
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
