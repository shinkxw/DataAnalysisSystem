
--��������¼��
CREATE VIEW [dbo].[VIEW_EDU_ZXXS_56_A41_JKJCJL_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[XQID]--ѧ��ID
      ,a.[XSID]--ѧ��ID
      ,a.[NJID]--�꼶ID
      ,a.[BJID]--�༶ID
      ,a.[TJRQ]--�������
      ,a.[ZLYSL]--����������
      ,a.[ZJZSL]--���������
      ,a.[ZJZDS]--���������
      ,a.[YLYSL]--����������
      ,a.[YJZSL]--�ҽ�������
      ,a.[YJZDS]--�ҽ�������
      ,a.[TLZ]--������
      ,a.[TLY]--������
      ,a.[FYJYYZK]--������Ӫ��״��
      ,a.[SG]--���
      ,a.[TZ]--����
      ,a.[FHL]--�λ���
      ,a.[XY]--Ѫѹ
      ,a.[MB]--����
      ,a.[SY]--ɳ��
      ,a.[SJ]--ɫ��
      ,a.[BB]--�ǲ�
      ,a.[KQ]--��ǻ
      ,a.[XZF]--���ࡢ��
      ,a.[GPCW]--��Ƣ��θ��
      ,a.[JZSZ]--��������֫
      ,a.[PZ]--ƽ��
      ,a.[PF]--Ƥ��
      ,a.[CLB]--��Ⱦ��
      ,a.[XT]--��͸
      ,a.[JWBS]--������ʷ
      ,a.[XYQM]--Уҽǩ��
      ,a.[JZQM]--�ҳ�ǩ��
      ,a.[DJYHID]--�Ǽ��û�ID
      ,a.[BZ]--��ע
      ,c.SCHOOLID as c_XQ_SCHOOLID--ѧ�����ݱ� ѧУ��
      ,c.XNID as c_XQ_XNID--ѧ�����ݱ� ѧ��
      ,c.XQM as c_XQ_XQM--ѧ�����ݱ� ѧ����
      ,[cb].MC as c_XQ_XQM_MC--ѧ�ڴ���� ����
      ,c.XQMC as c_XQ_XQMC--ѧ�����ݱ� ѧ������
      ,c.XQKSRQ as c_XQ_XQKSRQ--ѧ�����ݱ� ѧ�ڿ�ʼ����
      ,c.XQJSRQ as c_XQ_XQJSRQ--ѧ�����ݱ� ѧ�ڽ�������
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
      ,e.SCHOOLID as e_NJ_SCHOOLID--�꼶������� ѧУ��
      ,e.NJMC as e_NJ_NJMC--�꼶������� �꼶����
      ,e.ZT as e_NJ_ZT--�꼶������� ״̬
      ,e.PLSX as e_NJ_PLSX--�꼶������� ����˳��
      ,f.SCHOOLID as f_BJ_SCHOOLID--�༶������� ѧУ��
      ,f.NJ as f_BJ_NJ--�༶������� �꼶��
      ,f.BJ as f_BJ_BJ--�༶������� �༶����
      ,f.JBNY as f_BJ_JBNY--�༶������� ��������
      ,f.BZRGH as f_BJ_BZRGH--�༶������� �����ι���
      ,f.BZXH as f_BJ_BZXH--�༶������� �೤ѧ��
      ,f.BJRYCH as f_BJ_BJRYCH--�༶������� �༶�����ƺ�
      ,f.XZ as f_BJ_XZ--�༶������� ѧ��
      ,f.BJLXM as f_BJ_BJLXM--�༶������� �༶������
      ,[fb].MC as f_BJ_BJLXM_MC--��Сѧ�༶���ʹ���� ����
      ,f.WLLX as f_BJ_WLLX--�༶������� ��������
      ,f.BYRQ as f_BJ_BYRQ--�༶������� ��ҵ����
      ,f.SFSSMZSYJXB as f_BJ_SFSSMZSYJXB--�༶������� �Ƿ���������˫���ѧ��
      ,[fc].MC as f_BJ_SFSSMZSYJXB_MC--�Ƿ��־����� ����
      ,f.SYJXMSM as f_BJ_SYJXMSM--�༶������� ˫���ѧģʽ��
      ,[fd].MC as f_BJ_SYJXMSM_MC--��������˫���ѧģʽ����� ����
      ,[fd].SM as f_BJ_SYJXMSM_SM--��������˫���ѧģʽ����� ˵��
      ,f.BZRID as f_BJ_BZRID--�༶������� ������ID
      ,f.ZT as f_BJ_ZT--�༶������� ״̬
      ,f.PLSX as f_BJ_PLSX--�༶������� ����˳��
      ,f.BJLBID as f_BJ_BJLBID--�༶������� �༶���ID
      ,g.SCHOOLID as g_USER_SCHOOLID--Ӧ��ϵͳ�û��� ѧУID
      ,g.APPID as g_USER_APPID--Ӧ��ϵͳ�û��� Ӧ��ID
      ,'' as g_USER_PWD--Ӧ��ϵͳ�û��� ����
      ,g.STATUS as g_USER_STATUS--Ӧ��ϵͳ�û��� �û�״̬
      ,g.USERTYPE as g_USER_USERTYPE--Ӧ��ϵͳ�û��� �û����
      ,g.USERID as g_USER_USERID--Ӧ��ϵͳ�û��� �û�ID
      ,g.ROLEIDLst as g_USER_ROLEIDLst--Ӧ��ϵͳ�û��� �û���ɫ
      ,g.XM as g_USER_XM--Ӧ��ϵͳ�û��� ����
      ,g.XB as g_USER_XB--Ӧ��ϵͳ�û��� �Ա�
      ,g.QQ as g_USER_QQ--Ӧ��ϵͳ�û��� QQ
      ,g.DZYJ as g_USER_DZYJ--Ӧ��ϵͳ�û��� �����ʼ�
      ,g.LXDH as g_USER_LXDH--Ӧ��ϵͳ�û��� ��ϵ�绰
      ,g.ZJDLSJ as g_USER_ZJDLSJ--Ӧ��ϵͳ�û��� ���һ�ε�¼ʱ��
      ,g.DLCGCS as g_USER_DLCGCS--Ӧ��ϵͳ�û��� ��¼�ɹ�����
      ,g.YHCJSJ as g_USER_YHCJSJ--Ӧ��ϵͳ�û��� �û�����ʱ��
      ,g.YHRY as g_USER_YHRY--Ӧ��ϵͳ�û��� �û�����
      ,g.YHJF as g_USER_YHJF--Ӧ��ϵͳ�û��� �û�����

FROM dbo.EDU_ZXXS_56_A41_JKJCJL AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS c ON a.XQID = c.ID /*ѧ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZXXS_01_01_XSXX AS d ON a.XSID = d.ID /*ѧ��ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_02_01_NJ AS e ON a.NJID = e.NJ /*�꼶ID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_03_01_BJ AS f ON a.BJID = f.BH /*�༶ID*/ AND a.SCHOOLID = f.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS g ON a.DJYHID = g.LOGINNAME /*�Ǽ��û�ID*/ AND a.SCHOOLID = g.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS [cb] ON c.XQM = [cb].DM /*ѧ����*/ LEFT OUTER JOIN
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
      dbo.EDU_JY_ZXXBJLX AS [fb] ON f.BJLXM = [fb].DM /*�༶������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [fc] ON f.SFSSMZSYJXB = [fc].DM /*�Ƿ���������˫���ѧ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SSMZSYJXMS AS [fd] ON f.SYJXMSM = [fd].DM /*˫���ѧģʽ��*/
GO
