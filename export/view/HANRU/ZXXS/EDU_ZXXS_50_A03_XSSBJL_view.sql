
--ѧ���ϱ���¼��
CREATE VIEW [dbo].[VIEW_EDU_ZXXS_50_A03_XSSBJL_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[BJID]--�༶ID
      ,a.[XSXXID]--ѧ��ID
      ,a.[QQYYID]--ȱ��ԭ��ID
      ,a.[QQSJ]--ȱ��ʱ��
      ,a.[JTQK]--�������
      ,a.[TW]--����
      ,a.[SFJY]--�Ƿ��ҽ
      ,a.[SFTZJZ]--�Ƿ�֪ͨ�ҳ�
      ,a.[JZLXFS]--�ҳ���ϵ��ʽ
      ,a.[RQ]--����
      ,a.[SBJSID]--�ϱ���ʦID
      ,c.SCHOOLID as c_BJ_SCHOOLID--�༶������� ѧУ��
      ,c.NJ as c_BJ_NJ--�༶������� �꼶��
      ,c.BJ as c_BJ_BJ--�༶������� �༶����
      ,c.JBNY as c_BJ_JBNY--�༶������� ��������
      ,c.BZRGH as c_BJ_BZRGH--�༶������� �����ι���
      ,c.BZXH as c_BJ_BZXH--�༶������� �೤ѧ��
      ,c.BJRYCH as c_BJ_BJRYCH--�༶������� �༶�����ƺ�
      ,c.XZ as c_BJ_XZ--�༶������� ѧ��
      ,c.BJLXM as c_BJ_BJLXM--�༶������� �༶������
      ,[cb].MC as c_BJ_BJLXM_MC--��Сѧ�༶���ʹ���� ����
      ,c.WLLX as c_BJ_WLLX--�༶������� ��������
      ,c.BYRQ as c_BJ_BYRQ--�༶������� ��ҵ����
      ,c.SFSSMZSYJXB as c_BJ_SFSSMZSYJXB--�༶������� �Ƿ���������˫���ѧ��
      ,[cc].MC as c_BJ_SFSSMZSYJXB_MC--�Ƿ��־����� ����
      ,c.SYJXMSM as c_BJ_SYJXMSM--�༶������� ˫���ѧģʽ��
      ,[cd].MC as c_BJ_SYJXMSM_MC--��������˫���ѧģʽ����� ����
      ,[cd].SM as c_BJ_SYJXMSM_SM--��������˫���ѧģʽ����� ˵��
      ,c.BZRID as c_BJ_BZRID--�༶������� ������ID
      ,c.ZT as c_BJ_ZT--�༶������� ״̬
      ,c.PLSX as c_BJ_PLSX--�༶������� ����˳��
      ,c.BJLBID as c_BJ_BJLBID--�༶������� �༶���ID
      ,d.SCHOOLID as d_XSXX_SCHOOLID--ѧ��������������� ѧУ��
      ,d.XH as d_XSXX_XH--ѧ��������������� ѧ��
      ,d.XM as d_XSXX_XM--ѧ��������������� ����
      ,d.YWXM as d_XSXX_YWXM--ѧ��������������� Ӣ������
      ,d.XMPY as d_XSXX_XMPY--ѧ��������������� ����ƴ��
      ,d.CYM as d_XSXX_CYM--ѧ��������������� ������
      ,d.XBM as d_XSXX_XBM--ѧ��������������� �Ա���
      ,[db].MC as d_XSXX_XBM_MC--�˵��Ա���� ����
      ,d.CSRQ as d_XSXX_CSRQ--ѧ��������������� ��������
      ,d.CSDM as d_XSXX_CSDM--ѧ��������������� ��������
      ,[dc].MC as d_XSXX_CSDM_MC--�л����񹲺͹������������� ����
      ,d.JG as d_XSXX_JG--ѧ��������������� ����
      ,d.MZM as d_XSXX_MZM--ѧ��������������� ������
      ,[dd].MZMC as d_XSXX_MZM_MZMC--�й����������Ƶ�������ĸƴд���ʹ��� ��������
      ,[dd].ZMDM as d_XSXX_MZM_ZMDM--�й����������Ƶ�������ĸƴд���ʹ��� ��ĸ����
      ,d.GJDQM as d_XSXX_GJDQM--ѧ��������������� ����/������
      ,[de].GJDQMCJC as d_XSXX_GJDQM_GJDQMCJC--��������͵������ƴ��� ����/�������Ƽ��
      ,[de].EZMDM as d_XSXX_GJDQM_EZMDM--��������͵������ƴ��� ����ĸ����
      ,[de].SZMDM as d_XSXX_GJDQM_SZMDM--��������͵������ƴ��� ����ĸ����
      ,d.SFZJLXM as d_XSXX_SFZJLXM--ѧ��������������� ���֤��������
      ,[df].MC as d_XSXX_SFZJLXM_MC--���֤�����ʹ���� ����
      ,d.SFZJH as d_XSXX_SFZJH--ѧ��������������� ���֤����
      ,d.HYZKM as d_XSXX_HYZKM--ѧ��������������� ����״����
      ,[dg].MC as d_XSXX_HYZKM_MC--����״������ ����
      ,d.GATQWM as d_XSXX_GATQWM--ѧ��������������� �۰�̨������
      ,[dh].MC as d_XSXX_GATQWM_MC--�۰�̨�������� ����
      ,[dh].SM as d_XSXX_GATQWM_SM--�۰�̨�������� ˵��
      ,d.ZZMMM as d_XSXX_ZZMMM--ѧ��������������� ������ò��
      ,[di].MC as d_XSXX_ZZMMM_MC--������ò���� ����
      ,[di].JC as d_XSXX_ZZMMM_JC--������ò���� ���
      ,d.JKZKM as d_XSXX_JKZKM--ѧ��������������� ����״����
      ,[dj].MC as d_XSXX_JKZKM_MC--����״��1λ���ִ��� ����
      ,[dj].SM as d_XSXX_JKZKM_SM--����״��1λ���ִ��� ˵��
      ,d.XYZJM as d_XSXX_XYZJM--ѧ��������������� �����ڽ���
      ,[dk].MC as d_XSXX_XYZJM_MC--�ڽ��������� ����
      ,d.XXM as d_XSXX_XXM--ѧ��������������� Ѫ����
      ,[dl].MC as d_XSXX_XXM_MC--Ѫ�ʹ���� ����
      ,[dl].JC as d_XSXX_XXM_JC--Ѫ�ʹ���� ���
      ,d.ZP as d_XSXX_ZP--ѧ��������������� ��Ƭ
      ,d.SFZJYXQ as d_XSXX_SFZJYXQ--ѧ��������������� ���֤����Ч��
      ,d.DSZYBZ as d_XSXX_DSZYBZ--ѧ��������������� ������Ů��־
      ,[dm].MC as d_XSXX_DSZYBZ_MC--�Ƿ��־����� ����
      ,d.RXNY as d_XSXX_RXNY--ѧ��������������� ��ѧ����
      ,d.NJ as d_XSXX_NJ--ѧ��������������� �꼶
      ,d.BH as d_XSXX_BH--ѧ��������������� ���
      ,d.XSLBM as d_XSXX_XSLBM--ѧ��������������� ѧ�������
      ,[dn].MC as d_XSXX_XSLBM_MC--ѧ��������� ����
      ,[dn].SM as d_XSXX_XSLBM_SM--ѧ��������� ˵��
      ,d.XZZ as d_XSXX_XZZ--ѧ��������������� ��סַ
      ,d.HKSZD as d_XSXX_HKSZD--ѧ��������������� �������ڵ�
      ,d.HKXZM as d_XSXX_HKXZM--ѧ��������������� ����������
      ,[do].MC as d_XSXX_HKXZM_MC--���������� ����
      ,d.SFLDRK as d_XSXX_SFLDRK--ѧ��������������� �Ƿ������˿�
      ,[dp].MC as d_XSXX_SFLDRK_MC--�Ƿ��־����� ����
      ,d.TC as d_XSXX_TC--ѧ��������������� �س�
      ,d.LXDH as d_XSXX_LXDH--ѧ��������������� ��ϵ�绰
      ,d.TXDZ as d_XSXX_TXDZ--ѧ��������������� ͨ�ŵ�ַ
      ,d.YZBM as d_XSXX_YZBM--ѧ��������������� ��������
      ,d.DZXX as d_XSXX_DZXX--ѧ��������������� ��������
      ,d.ZYDZ as d_XSXX_ZYDZ--ѧ��������������� ��ҳ��ַ
      ,d.XJH as d_XSXX_XJH--ѧ��������������� ѧ����
      ,d.XSDQZTM as d_XSXX_XSDQZTM--ѧ��������������� ѧ����ǰ״̬��
      ,[dq].MC as d_XSXX_XSDQZTM_MC--ѧ����ǰ״̬����� ����
      ,[dq].SM as d_XSXX_XSDQZTM_SM--ѧ����ǰ״̬����� ˵��
      ,e.SCHOOLID as e_QQYY_SCHOOLID--ȱ��ԭ��� ѧУ
      ,e.MC as e_QQYY_MC--ȱ��ԭ��� ����
      ,f.MC as f_SFBZ_MC--�Ƿ��־����� ����
      ,g.MC as g_SFBZ_MC--�Ƿ��־����� ����
      ,h.SCHOOLID as h_JZGJBSJ_SCHOOLID--��ְ��������������� ѧУ��
      ,h.GH as h_JZGJBSJ_GH--��ְ��������������� ����
      ,h.XM as h_JZGJBSJ_XM--��ְ��������������� ����
      ,h.YWXM as h_JZGJBSJ_YWXM--��ְ��������������� Ӣ������
      ,h.XMPY as h_JZGJBSJ_XMPY--��ְ��������������� ����ƴ��
      ,h.CYM as h_JZGJBSJ_CYM--��ְ��������������� ������
      ,h.XBM as h_JZGJBSJ_XBM--��ְ��������������� �Ա���
      ,[hb].MC as h_JZGJBSJ_XBM_MC--�˵��Ա���� ����
      ,h.CSRQ as h_JZGJBSJ_CSRQ--��ְ��������������� ��������
      ,h.CSDM as h_JZGJBSJ_CSDM--��ְ��������������� ��������
      ,[hc].MC as h_JZGJBSJ_CSDM_MC--�л����񹲺͹������������� ����
      ,h.JG as h_JZGJBSJ_JG--��ְ��������������� ����
      ,h.MZM as h_JZGJBSJ_MZM--��ְ��������������� ������
      ,[hd].MZMC as h_JZGJBSJ_MZM_MZMC--�й����������Ƶ�������ĸƴд���ʹ��� ��������
      ,[hd].ZMDM as h_JZGJBSJ_MZM_ZMDM--�й����������Ƶ�������ĸƴд���ʹ��� ��ĸ����
      ,h.GJDQM as h_JZGJBSJ_GJDQM--��ְ��������������� ����/������
      ,[he].GJDQMCJC as h_JZGJBSJ_GJDQM_GJDQMCJC--��������͵������ƴ��� ����/�������Ƽ��
      ,[he].EZMDM as h_JZGJBSJ_GJDQM_EZMDM--��������͵������ƴ��� ����ĸ����
      ,[he].SZMDM as h_JZGJBSJ_GJDQM_SZMDM--��������͵������ƴ��� ����ĸ����
      ,h.SFZJLXM as h_JZGJBSJ_SFZJLXM--��ְ��������������� ���֤��������
      ,[hf].MC as h_JZGJBSJ_SFZJLXM_MC--���֤�����ʹ���� ����
      ,h.SFZJH as h_JZGJBSJ_SFZJH--��ְ��������������� ���֤����
      ,h.HYZKM as h_JZGJBSJ_HYZKM--��ְ��������������� ����״����
      ,[hg].MC as h_JZGJBSJ_HYZKM_MC--����״������ ����
      ,h.GATQWM as h_JZGJBSJ_GATQWM--��ְ��������������� �۰�̨������
      ,[hh].MC as h_JZGJBSJ_GATQWM_MC--�۰�̨�������� ����
      ,[hh].SM as h_JZGJBSJ_GATQWM_SM--�۰�̨�������� ˵��
      ,h.ZZMMM as h_JZGJBSJ_ZZMMM--��ְ��������������� ������ò��
      ,[hi].MC as h_JZGJBSJ_ZZMMM_MC--������ò���� ����
      ,[hi].JC as h_JZGJBSJ_ZZMMM_JC--������ò���� ���
      ,h.JKZKM as h_JZGJBSJ_JKZKM--��ְ��������������� ����״����
      ,[hj].MC as h_JZGJBSJ_JKZKM_MC--����״��1λ���ִ��� ����
      ,[hj].SM as h_JZGJBSJ_JKZKM_SM--����״��1λ���ִ��� ˵��
      ,h.XYZJM as h_JZGJBSJ_XYZJM--��ְ��������������� �����ڽ���
      ,[hk].MC as h_JZGJBSJ_XYZJM_MC--�ڽ��������� ����
      ,h.XXM as h_JZGJBSJ_XXM--��ְ��������������� Ѫ����
      ,[hl].MC as h_JZGJBSJ_XXM_MC--Ѫ�ʹ���� ����
      ,[hl].JC as h_JZGJBSJ_XXM_JC--Ѫ�ʹ���� ���
      ,h.ZP as h_JZGJBSJ_ZP--��ְ��������������� ��Ƭ
      ,h.SFZJYXQ as h_JZGJBSJ_SFZJYXQ--��ְ��������������� ���֤����Ч��
      ,h.JGH as h_JZGJBSJ_JGH--��ְ��������������� ������
      ,h.JTZZ as h_JZGJBSJ_JTZZ--��ְ��������������� ��ͥסַ
      ,h.XZZ as h_JZGJBSJ_XZZ--��ְ��������������� ��סַ
      ,h.HKSZD as h_JZGJBSJ_HKSZD--��ְ��������������� �������ڵ�
      ,h.HKXZM as h_JZGJBSJ_HKXZM--��ְ��������������� ����������
      ,[hm].MC as h_JZGJBSJ_HKXZM_MC--���������� ����
      ,h.XLM as h_JZGJBSJ_XLM--��ְ��������������� ѧ����
      ,[hn].MC as h_JZGJBSJ_XLM_MC--ѧ������ ����
      ,h.GZNY as h_JZGJBSJ_GZNY--��ְ��������������� �μӹ�������
      ,h.LXNY as h_JZGJBSJ_LXNY--��ְ��������������� ��У����
      ,h.CJNY as h_JZGJBSJ_CJNY--��ְ��������������� �ӽ�����
      ,h.BZLBM as h_JZGJBSJ_BZLBM--��ְ��������������� ���������
      ,[ho].MC as h_JZGJBSJ_BZLBM_MC--��Сѧ����������� ����
      ,h.DABH as h_JZGJBSJ_DABH--��ְ��������������� �������
      ,h.DAWB as h_JZGJBSJ_DAWB--��ְ��������������� �����ı�
      ,h.TXDZ as h_JZGJBSJ_TXDZ--��ְ��������������� ͨ�ŵ�ַ
      ,h.LXDH as h_JZGJBSJ_LXDH--��ְ��������������� ��ϵ�绰
      ,h.YZBM as h_JZGJBSJ_YZBM--��ְ��������������� ��������
      ,h.DZXX as h_JZGJBSJ_DZXX--��ְ��������������� ��������
      ,h.ZYDZ as h_JZGJBSJ_ZYDZ--��ְ��������������� ��ҳ��ַ
      ,h.TC as h_JZGJBSJ_TC--��ְ��������������� �س�
      ,h.GWZYM as h_JZGJBSJ_GWZYM--��ְ��������������� ��λְҵ��
      ,[hp].MC as h_JZGJBSJ_GWZYM_MC--��λְҵ����� ����
      ,h.ZYRKXD as h_JZGJBSJ_ZYRKXD--��ְ��������������� ��Ҫ�ο�ѧ��
      ,[hq].MC as h_JZGJBSJ_ZYRKXD_MC--�ο�ѧ�δ���� ����
      ,h.JZGLXID as h_JZGJBSJ_JZGLXID--��ְ��������������� ��ְ������ID

FROM dbo.EDU_ZXXS_50_A03_XSSBJL AS a LEFT OUTER JOIN
      dbo.EDU_ZXXX_03_01_BJ AS c ON a.BJID = c.BH /*�༶ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZXXS_01_01_XSXX AS d ON a.XSXXID = d.ID /*ѧ��ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZXXS_50_A01_QQYY AS e ON a.QQYYID = e.ID /*ȱ��ԭ��ID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS f ON a.SFJY = f.DM /*�Ƿ��ҽ*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS g ON a.SFTZJZ = g.DM /*�Ƿ�֪ͨ�ҳ�*/ LEFT OUTER JOIN
      dbo.EDU_ZXJZ_01_01_JZGJBSJ AS h ON a.SBJSID = h.ID /*�ϱ���ʦID*/ AND a.SCHOOLID = h.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXBJLX AS [cb] ON c.BJLXM = [cb].DM /*�༶������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [cc] ON c.SFSSMZSYJXB = [cc].DM /*�Ƿ���������˫���ѧ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SSMZSYJXMS AS [cd] ON c.SYJXMSM = [cd].DM /*˫���ѧģʽ��*/ LEFT OUTER JOIN
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
      dbo.EDU_JY_SFBZ AS [dm] ON d.DSZYBZ = [dm].DM /*������Ů��־*/ LEFT OUTER JOIN
      dbo.EDU_JY_XSLB AS [dn] ON d.XSLBM = [dn].DM /*ѧ�������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS [do] ON d.HKXZM = [do].DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [dp] ON d.SFLDRK = [dp].DM /*�Ƿ������˿�*/ LEFT OUTER JOIN
      dbo.EDU_JY_XSDQZT AS [dq] ON d.XSDQZTM = [dq].DM /*ѧ����ǰ״̬��*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS [hb] ON h.XBM = [hb].DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [hc] ON h.CSDM = [hc].DM /*��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS [hd] ON h.MZM = [hd].DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS [he] ON h.GJDQM = [he].DM /*����/������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS [hf] ON h.SFZJLXM = [hf].DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS [hg] ON h.HYZKM = [hg].DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS [hh] ON h.GATQWM = [hh].DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS [hi] ON h.ZZMMM = [hi].DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS [hj] ON h.JKZKM = [hj].DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS [hk] ON h.XYZJM = [hk].DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS [hl] ON h.XXM = [hl].DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS [hm] ON h.HKXZM = [hm].DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_GB_XL AS [hn] ON h.XLM = [hn].DM /*ѧ����*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXBZLB AS [ho] ON h.BZLBM = [ho].DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWZY AS [hp] ON h.GWZYM = [hp].DM /*��λְҵ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_RKXD AS [hq] ON h.ZYRKXD = [hq].DM /*��Ҫ�ο�ѧ��*/
GO
