
--ѧ���춯���������
CREATE VIEW [dbo].[VIEW_EDU_ZXXS_07_A02_XJYD_DISP]
AS
SELECT a.[ID]--ѧ���춯����
      ,a.[XSXXID]--ѧ��ID
      ,a.[SCHOOLID]--ѧУID
      ,a.[YDLBM]--�춯�����
      ,a.[YDRQ]--�춯����
      ,a.[YDYYM]--�춯ԭ����
      ,a.[SPRQ]--��������
      ,a.[SPWH]--�����ĺ�
      ,a.[JBRID]--������ID
      ,a.[JBRGH]--�����˹���
      ,a.[YDLYXXM]--�춯��ԴѧУ��
      ,a.[YDQXXXM]--�춯ȥ��ѧУ��
      ,a.[YDSM]--�춯˵��
      ,a.[YBH]--ԭ���
      ,a.[YNJ]--ԭ�꼶
      ,a.[XBH]--�ְ��
      ,a.[XNJ]--���꼶
      ,b.SCHOOLID as b_XSXX_SCHOOLID--ѧ��������������� ѧУ��
      ,b.XH as b_XSXX_XH--ѧ��������������� ѧ��
      ,b.XM as b_XSXX_XM--ѧ��������������� ����
      ,b.YWXM as b_XSXX_YWXM--ѧ��������������� Ӣ������
      ,b.XMPY as b_XSXX_XMPY--ѧ��������������� ����ƴ��
      ,b.CYM as b_XSXX_CYM--ѧ��������������� ������
      ,b.XBM as b_XSXX_XBM--ѧ��������������� �Ա���
      ,[bb].MC as b_XSXX_XBM_MC--�˵��Ա���� ����
      ,b.CSRQ as b_XSXX_CSRQ--ѧ��������������� ��������
      ,b.CSDM as b_XSXX_CSDM--ѧ��������������� ��������
      ,[bc].MC as b_XSXX_CSDM_MC--�л����񹲺͹������������� ����
      ,b.JG as b_XSXX_JG--ѧ��������������� ����
      ,b.MZM as b_XSXX_MZM--ѧ��������������� ������
      ,[bd].MZMC as b_XSXX_MZM_MZMC--�й����������Ƶ�������ĸƴд���ʹ��� ��������
      ,[bd].ZMDM as b_XSXX_MZM_ZMDM--�й����������Ƶ�������ĸƴд���ʹ��� ��ĸ����
      ,b.GJDQM as b_XSXX_GJDQM--ѧ��������������� ����/������
      ,[be].GJDQMCJC as b_XSXX_GJDQM_GJDQMCJC--��������͵������ƴ��� ����/�������Ƽ��
      ,[be].EZMDM as b_XSXX_GJDQM_EZMDM--��������͵������ƴ��� ����ĸ����
      ,[be].SZMDM as b_XSXX_GJDQM_SZMDM--��������͵������ƴ��� ����ĸ����
      ,b.SFZJLXM as b_XSXX_SFZJLXM--ѧ��������������� ���֤��������
      ,[bf].MC as b_XSXX_SFZJLXM_MC--���֤�����ʹ���� ����
      ,b.SFZJH as b_XSXX_SFZJH--ѧ��������������� ���֤����
      ,b.HYZKM as b_XSXX_HYZKM--ѧ��������������� ����״����
      ,[bg].MC as b_XSXX_HYZKM_MC--����״������ ����
      ,b.GATQWM as b_XSXX_GATQWM--ѧ��������������� �۰�̨������
      ,[bh].MC as b_XSXX_GATQWM_MC--�۰�̨�������� ����
      ,[bh].SM as b_XSXX_GATQWM_SM--�۰�̨�������� ˵��
      ,b.ZZMMM as b_XSXX_ZZMMM--ѧ��������������� ������ò��
      ,[bi].MC as b_XSXX_ZZMMM_MC--������ò���� ����
      ,[bi].JC as b_XSXX_ZZMMM_JC--������ò���� ���
      ,b.JKZKM as b_XSXX_JKZKM--ѧ��������������� ����״����
      ,[bj].MC as b_XSXX_JKZKM_MC--����״��1λ���ִ��� ����
      ,[bj].SM as b_XSXX_JKZKM_SM--����״��1λ���ִ��� ˵��
      ,b.XYZJM as b_XSXX_XYZJM--ѧ��������������� �����ڽ���
      ,[bk].MC as b_XSXX_XYZJM_MC--�ڽ��������� ����
      ,b.XXM as b_XSXX_XXM--ѧ��������������� Ѫ����
      ,[bl].MC as b_XSXX_XXM_MC--Ѫ�ʹ���� ����
      ,[bl].JC as b_XSXX_XXM_JC--Ѫ�ʹ���� ���
      ,b.ZP as b_XSXX_ZP--ѧ��������������� ��Ƭ
      ,b.SFZJYXQ as b_XSXX_SFZJYXQ--ѧ��������������� ���֤����Ч��
      ,b.DSZYBZ as b_XSXX_DSZYBZ--ѧ��������������� ������Ů��־
      ,[bm].MC as b_XSXX_DSZYBZ_MC--�Ƿ��־����� ����
      ,b.RXNY as b_XSXX_RXNY--ѧ��������������� ��ѧ����
      ,b.NJ as b_XSXX_NJ--ѧ��������������� �꼶
      ,b.BH as b_XSXX_BH--ѧ��������������� ���
      ,b.XSLBM as b_XSXX_XSLBM--ѧ��������������� ѧ�������
      ,[bn].MC as b_XSXX_XSLBM_MC--ѧ��������� ����
      ,[bn].SM as b_XSXX_XSLBM_SM--ѧ��������� ˵��
      ,b.XZZ as b_XSXX_XZZ--ѧ��������������� ��סַ
      ,b.HKSZD as b_XSXX_HKSZD--ѧ��������������� �������ڵ�
      ,b.HKXZM as b_XSXX_HKXZM--ѧ��������������� ����������
      ,[bo].MC as b_XSXX_HKXZM_MC--���������� ����
      ,b.SFLDRK as b_XSXX_SFLDRK--ѧ��������������� �Ƿ������˿�
      ,[bp].MC as b_XSXX_SFLDRK_MC--�Ƿ��־����� ����
      ,b.TC as b_XSXX_TC--ѧ��������������� �س�
      ,b.LXDH as b_XSXX_LXDH--ѧ��������������� ��ϵ�绰
      ,b.TXDZ as b_XSXX_TXDZ--ѧ��������������� ͨ�ŵ�ַ
      ,b.YZBM as b_XSXX_YZBM--ѧ��������������� ��������
      ,b.DZXX as b_XSXX_DZXX--ѧ��������������� ��������
      ,b.ZYDZ as b_XSXX_ZYDZ--ѧ��������������� ��ҳ��ַ
      ,b.XJH as b_XSXX_XJH--ѧ��������������� ѧ����
      ,b.XSDQZTM as b_XSXX_XSDQZTM--ѧ��������������� ѧ����ǰ״̬��
      ,[bq].MC as b_XSXX_XSDQZTM_MC--ѧ����ǰ״̬����� ����
      ,[bq].SM as b_XSXX_XSDQZTM_SM--ѧ����ǰ״̬����� ˵��
      ,d.MC as d_XJYDLB_MC--ѧ���춯������� ����
      ,e.MC as e_XJYDYY_MC--ѧ���춯ԭ������ ����
      ,f.SCHOOLID as f_JZGJBSJ_SCHOOLID--��ְ��������������� ѧУ��
      ,f.GH as f_JZGJBSJ_GH--��ְ��������������� ����
      ,f.XM as f_JZGJBSJ_XM--��ְ��������������� ����
      ,f.YWXM as f_JZGJBSJ_YWXM--��ְ��������������� Ӣ������
      ,f.XMPY as f_JZGJBSJ_XMPY--��ְ��������������� ����ƴ��
      ,f.CYM as f_JZGJBSJ_CYM--��ְ��������������� ������
      ,f.XBM as f_JZGJBSJ_XBM--��ְ��������������� �Ա���
      ,[fb].MC as f_JZGJBSJ_XBM_MC--�˵��Ա���� ����
      ,f.CSRQ as f_JZGJBSJ_CSRQ--��ְ��������������� ��������
      ,f.CSDM as f_JZGJBSJ_CSDM--��ְ��������������� ��������
      ,[fc].MC as f_JZGJBSJ_CSDM_MC--�л����񹲺͹������������� ����
      ,f.JG as f_JZGJBSJ_JG--��ְ��������������� ����
      ,f.MZM as f_JZGJBSJ_MZM--��ְ��������������� ������
      ,[fd].MZMC as f_JZGJBSJ_MZM_MZMC--�й����������Ƶ�������ĸƴд���ʹ��� ��������
      ,[fd].ZMDM as f_JZGJBSJ_MZM_ZMDM--�й����������Ƶ�������ĸƴд���ʹ��� ��ĸ����
      ,f.GJDQM as f_JZGJBSJ_GJDQM--��ְ��������������� ����/������
      ,[fe].GJDQMCJC as f_JZGJBSJ_GJDQM_GJDQMCJC--��������͵������ƴ��� ����/�������Ƽ��
      ,[fe].EZMDM as f_JZGJBSJ_GJDQM_EZMDM--��������͵������ƴ��� ����ĸ����
      ,[fe].SZMDM as f_JZGJBSJ_GJDQM_SZMDM--��������͵������ƴ��� ����ĸ����
      ,f.SFZJLXM as f_JZGJBSJ_SFZJLXM--��ְ��������������� ���֤��������
      ,[ff].MC as f_JZGJBSJ_SFZJLXM_MC--���֤�����ʹ���� ����
      ,f.SFZJH as f_JZGJBSJ_SFZJH--��ְ��������������� ���֤����
      ,f.HYZKM as f_JZGJBSJ_HYZKM--��ְ��������������� ����״����
      ,[fg].MC as f_JZGJBSJ_HYZKM_MC--����״������ ����
      ,f.GATQWM as f_JZGJBSJ_GATQWM--��ְ��������������� �۰�̨������
      ,[fh].MC as f_JZGJBSJ_GATQWM_MC--�۰�̨�������� ����
      ,[fh].SM as f_JZGJBSJ_GATQWM_SM--�۰�̨�������� ˵��
      ,f.ZZMMM as f_JZGJBSJ_ZZMMM--��ְ��������������� ������ò��
      ,[fi].MC as f_JZGJBSJ_ZZMMM_MC--������ò���� ����
      ,[fi].JC as f_JZGJBSJ_ZZMMM_JC--������ò���� ���
      ,f.JKZKM as f_JZGJBSJ_JKZKM--��ְ��������������� ����״����
      ,[fj].MC as f_JZGJBSJ_JKZKM_MC--����״��1λ���ִ��� ����
      ,[fj].SM as f_JZGJBSJ_JKZKM_SM--����״��1λ���ִ��� ˵��
      ,f.XYZJM as f_JZGJBSJ_XYZJM--��ְ��������������� �����ڽ���
      ,[fk].MC as f_JZGJBSJ_XYZJM_MC--�ڽ��������� ����
      ,f.XXM as f_JZGJBSJ_XXM--��ְ��������������� Ѫ����
      ,[fl].MC as f_JZGJBSJ_XXM_MC--Ѫ�ʹ���� ����
      ,[fl].JC as f_JZGJBSJ_XXM_JC--Ѫ�ʹ���� ���
      ,f.ZP as f_JZGJBSJ_ZP--��ְ��������������� ��Ƭ
      ,f.SFZJYXQ as f_JZGJBSJ_SFZJYXQ--��ְ��������������� ���֤����Ч��
      ,f.JGH as f_JZGJBSJ_JGH--��ְ��������������� ������
      ,f.JTZZ as f_JZGJBSJ_JTZZ--��ְ��������������� ��ͥסַ
      ,f.XZZ as f_JZGJBSJ_XZZ--��ְ��������������� ��סַ
      ,f.HKSZD as f_JZGJBSJ_HKSZD--��ְ��������������� �������ڵ�
      ,f.HKXZM as f_JZGJBSJ_HKXZM--��ְ��������������� ����������
      ,[fm].MC as f_JZGJBSJ_HKXZM_MC--���������� ����
      ,f.XLM as f_JZGJBSJ_XLM--��ְ��������������� ѧ����
      ,[fn].MC as f_JZGJBSJ_XLM_MC--ѧ������ ����
      ,f.GZNY as f_JZGJBSJ_GZNY--��ְ��������������� �μӹ�������
      ,f.LXNY as f_JZGJBSJ_LXNY--��ְ��������������� ��У����
      ,f.CJNY as f_JZGJBSJ_CJNY--��ְ��������������� �ӽ�����
      ,f.BZLBM as f_JZGJBSJ_BZLBM--��ְ��������������� ���������
      ,[fo].MC as f_JZGJBSJ_BZLBM_MC--��Сѧ����������� ����
      ,f.DABH as f_JZGJBSJ_DABH--��ְ��������������� �������
      ,f.DAWB as f_JZGJBSJ_DAWB--��ְ��������������� �����ı�
      ,f.TXDZ as f_JZGJBSJ_TXDZ--��ְ��������������� ͨ�ŵ�ַ
      ,f.LXDH as f_JZGJBSJ_LXDH--��ְ��������������� ��ϵ�绰
      ,f.YZBM as f_JZGJBSJ_YZBM--��ְ��������������� ��������
      ,f.DZXX as f_JZGJBSJ_DZXX--��ְ��������������� ��������
      ,f.ZYDZ as f_JZGJBSJ_ZYDZ--��ְ��������������� ��ҳ��ַ
      ,f.TC as f_JZGJBSJ_TC--��ְ��������������� �س�
      ,f.GWZYM as f_JZGJBSJ_GWZYM--��ְ��������������� ��λְҵ��
      ,[fp].MC as f_JZGJBSJ_GWZYM_MC--��λְҵ����� ����
      ,f.ZYRKXD as f_JZGJBSJ_ZYRKXD--��ְ��������������� ��Ҫ�ο�ѧ��
      ,[fq].MC as f_JZGJBSJ_ZYRKXD_MC--�ο�ѧ�δ���� ����
      ,f.JZGLXID as f_JZGJBSJ_JZGLXID--��ְ��������������� ��ְ������ID
      ,g.SCHOOLID as g_BJ_SCHOOLID--�༶������� ѧУ��
      ,g.NJ as g_BJ_NJ--�༶������� �꼶��
      ,g.BJ as g_BJ_BJ--�༶������� �༶����
      ,g.JBNY as g_BJ_JBNY--�༶������� ��������
      ,g.BZRGH as g_BJ_BZRGH--�༶������� �����ι���
      ,g.BZXH as g_BJ_BZXH--�༶������� �೤ѧ��
      ,g.BJRYCH as g_BJ_BJRYCH--�༶������� �༶�����ƺ�
      ,g.XZ as g_BJ_XZ--�༶������� ѧ��
      ,g.BJLXM as g_BJ_BJLXM--�༶������� �༶������
      ,[gb].MC as g_BJ_BJLXM_MC--��Сѧ�༶���ʹ���� ����
      ,g.WLLX as g_BJ_WLLX--�༶������� ��������
      ,g.BYRQ as g_BJ_BYRQ--�༶������� ��ҵ����
      ,g.SFSSMZSYJXB as g_BJ_SFSSMZSYJXB--�༶������� �Ƿ���������˫���ѧ��
      ,[gc].MC as g_BJ_SFSSMZSYJXB_MC--�Ƿ��־����� ����
      ,g.SYJXMSM as g_BJ_SYJXMSM--�༶������� ˫���ѧģʽ��
      ,[gd].MC as g_BJ_SYJXMSM_MC--��������˫���ѧģʽ����� ����
      ,[gd].SM as g_BJ_SYJXMSM_SM--��������˫���ѧģʽ����� ˵��
      ,g.BZRID as g_BJ_BZRID--�༶������� ������ID
      ,g.ZT as g_BJ_ZT--�༶������� ״̬
      ,g.PLSX as g_BJ_PLSX--�༶������� ����˳��
      ,g.BJLBID as g_BJ_BJLBID--�༶������� �༶���ID
      ,h.SCHOOLID as h_NJ_SCHOOLID--�꼶������� ѧУ��
      ,h.NJMC as h_NJ_NJMC--�꼶������� �꼶����
      ,h.ZT as h_NJ_ZT--�꼶������� ״̬
      ,h.PLSX as h_NJ_PLSX--�꼶������� ����˳��
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
      ,i.ZT as i_BJ_ZT--�༶������� ״̬
      ,i.PLSX as i_BJ_PLSX--�༶������� ����˳��
      ,i.BJLBID as i_BJ_BJLBID--�༶������� �༶���ID
      ,j.SCHOOLID as j_NJ_SCHOOLID--�꼶������� ѧУ��
      ,j.NJMC as j_NJ_NJMC--�꼶������� �꼶����
      ,j.ZT as j_NJ_ZT--�꼶������� ״̬
      ,j.PLSX as j_NJ_PLSX--�꼶������� ����˳��

FROM dbo.EDU_ZXXS_07_A02_XJYD AS a LEFT OUTER JOIN
      dbo.EDU_ZXXS_01_01_XSXX AS b ON a.XSXXID = b.ID /*ѧ��ID*/ AND a.SCHOOLID = b.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_JY_XJYDLB AS d ON a.YDLBM = d.DM /*�춯�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XJYDYY AS e ON a.YDYYM = e.DM /*�춯ԭ����*/ LEFT OUTER JOIN
      dbo.EDU_ZXJZ_01_01_JZGJBSJ AS f ON a.JBRID = f.ID /*������ID*/ AND a.SCHOOLID = f.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_03_01_BJ AS g ON a.YBH = g.BH /*ԭ���*/ AND a.SCHOOLID = g.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_02_01_NJ AS h ON a.YNJ = h.NJ /*ԭ�꼶*/ AND a.SCHOOLID = h.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_03_01_BJ AS i ON a.XBH = i.BH /*�ְ��*/ AND a.SCHOOLID = i.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_02_01_NJ AS j ON a.XNJ = j.NJ /*���꼶*/ AND a.SCHOOLID = j.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS [bb] ON b.XBM = [bb].DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [bc] ON b.CSDM = [bc].DM /*��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS [bd] ON b.MZM = [bd].DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS [be] ON b.GJDQM = [be].DM /*����/������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS [bf] ON b.SFZJLXM = [bf].DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS [bg] ON b.HYZKM = [bg].DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS [bh] ON b.GATQWM = [bh].DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS [bi] ON b.ZZMMM = [bi].DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS [bj] ON b.JKZKM = [bj].DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS [bk] ON b.XYZJM = [bk].DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS [bl] ON b.XXM = [bl].DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [bm] ON b.DSZYBZ = [bm].DM /*������Ů��־*/ LEFT OUTER JOIN
      dbo.EDU_JY_XSLB AS [bn] ON b.XSLBM = [bn].DM /*ѧ�������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS [bo] ON b.HKXZM = [bo].DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [bp] ON b.SFLDRK = [bp].DM /*�Ƿ������˿�*/ LEFT OUTER JOIN
      dbo.EDU_JY_XSDQZT AS [bq] ON b.XSDQZTM = [bq].DM /*ѧ����ǰ״̬��*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS [fb] ON f.XBM = [fb].DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [fc] ON f.CSDM = [fc].DM /*��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS [fd] ON f.MZM = [fd].DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS [fe] ON f.GJDQM = [fe].DM /*����/������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS [ff] ON f.SFZJLXM = [ff].DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS [fg] ON f.HYZKM = [fg].DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS [fh] ON f.GATQWM = [fh].DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS [fi] ON f.ZZMMM = [fi].DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS [fj] ON f.JKZKM = [fj].DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS [fk] ON f.XYZJM = [fk].DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS [fl] ON f.XXM = [fl].DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS [fm] ON f.HKXZM = [fm].DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_GB_XL AS [fn] ON f.XLM = [fn].DM /*ѧ����*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXBZLB AS [fo] ON f.BZLBM = [fo].DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWZY AS [fp] ON f.GWZYM = [fp].DM /*��λְҵ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_RKXD AS [fq] ON f.ZYRKXD = [fq].DM /*��Ҫ�ο�ѧ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXBJLX AS [gb] ON g.BJLXM = [gb].DM /*�༶������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [gc] ON g.SFSSMZSYJXB = [gc].DM /*�Ƿ���������˫���ѧ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SSMZSYJXMS AS [gd] ON g.SYJXMSM = [gd].DM /*˫���ѧģʽ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXBJLX AS [ib] ON i.BJLXM = [ib].DM /*�༶������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [ic] ON i.SFSSMZSYJXB = [ic].DM /*�Ƿ���������˫���ѧ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SSMZSYJXMS AS [id] ON i.SYJXMSM = [id].DM /*˫���ѧģʽ��*/
GO
