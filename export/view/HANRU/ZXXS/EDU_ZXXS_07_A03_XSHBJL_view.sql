
--ѧ�������¼��
CREATE VIEW [dbo].[VIEW_EDU_ZXXS_07_A03_XSHBJL_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУID
      ,a.[XSXXID]--ѧ��ID
      ,a.[XQID]--ѧ��ID
      ,a.[YBJID]--ԭ�༶ID
      ,a.[XBJID]--�ְ༶ID
      ,a.[CZRY]--������Ա
      ,a.[HBSJ]--����ʱ��
      ,c.SCHOOLID as c_XSXX_SCHOOLID--ѧ��������������� ѧУ��
      ,c.XH as c_XSXX_XH--ѧ��������������� ѧ��
      ,c.XM as c_XSXX_XM--ѧ��������������� ����
      ,c.YWXM as c_XSXX_YWXM--ѧ��������������� Ӣ������
      ,c.XMPY as c_XSXX_XMPY--ѧ��������������� ����ƴ��
      ,c.CYM as c_XSXX_CYM--ѧ��������������� ������
      ,c.XBM as c_XSXX_XBM--ѧ��������������� �Ա���
      ,[cb].MC as c_XSXX_XBM_MC--�˵��Ա���� ����
      ,c.CSRQ as c_XSXX_CSRQ--ѧ��������������� ��������
      ,c.CSDM as c_XSXX_CSDM--ѧ��������������� ��������
      ,[cc].MC as c_XSXX_CSDM_MC--�л����񹲺͹������������� ����
      ,c.JG as c_XSXX_JG--ѧ��������������� ����
      ,c.MZM as c_XSXX_MZM--ѧ��������������� ������
      ,[cd].MZMC as c_XSXX_MZM_MZMC--�й����������Ƶ�������ĸƴд���ʹ��� ��������
      ,[cd].ZMDM as c_XSXX_MZM_ZMDM--�й����������Ƶ�������ĸƴд���ʹ��� ��ĸ����
      ,c.GJDQM as c_XSXX_GJDQM--ѧ��������������� ����/������
      ,[ce].GJDQMCJC as c_XSXX_GJDQM_GJDQMCJC--��������͵������ƴ��� ����/�������Ƽ��
      ,[ce].EZMDM as c_XSXX_GJDQM_EZMDM--��������͵������ƴ��� ����ĸ����
      ,[ce].SZMDM as c_XSXX_GJDQM_SZMDM--��������͵������ƴ��� ����ĸ����
      ,c.SFZJLXM as c_XSXX_SFZJLXM--ѧ��������������� ���֤��������
      ,[cf].MC as c_XSXX_SFZJLXM_MC--���֤�����ʹ���� ����
      ,c.SFZJH as c_XSXX_SFZJH--ѧ��������������� ���֤����
      ,c.HYZKM as c_XSXX_HYZKM--ѧ��������������� ����״����
      ,[cg].MC as c_XSXX_HYZKM_MC--����״������ ����
      ,c.GATQWM as c_XSXX_GATQWM--ѧ��������������� �۰�̨������
      ,[ch].MC as c_XSXX_GATQWM_MC--�۰�̨�������� ����
      ,[ch].SM as c_XSXX_GATQWM_SM--�۰�̨�������� ˵��
      ,c.ZZMMM as c_XSXX_ZZMMM--ѧ��������������� ������ò��
      ,[ci].MC as c_XSXX_ZZMMM_MC--������ò���� ����
      ,[ci].JC as c_XSXX_ZZMMM_JC--������ò���� ���
      ,c.JKZKM as c_XSXX_JKZKM--ѧ��������������� ����״����
      ,[cj].MC as c_XSXX_JKZKM_MC--����״��1λ���ִ��� ����
      ,[cj].SM as c_XSXX_JKZKM_SM--����״��1λ���ִ��� ˵��
      ,c.XYZJM as c_XSXX_XYZJM--ѧ��������������� �����ڽ���
      ,[ck].MC as c_XSXX_XYZJM_MC--�ڽ��������� ����
      ,c.XXM as c_XSXX_XXM--ѧ��������������� Ѫ����
      ,[cl].MC as c_XSXX_XXM_MC--Ѫ�ʹ���� ����
      ,[cl].JC as c_XSXX_XXM_JC--Ѫ�ʹ���� ���
      ,c.ZP as c_XSXX_ZP--ѧ��������������� ��Ƭ
      ,c.SFZJYXQ as c_XSXX_SFZJYXQ--ѧ��������������� ���֤����Ч��
      ,c.DSZYBZ as c_XSXX_DSZYBZ--ѧ��������������� ������Ů��־
      ,[cm].MC as c_XSXX_DSZYBZ_MC--�Ƿ��־����� ����
      ,c.RXNY as c_XSXX_RXNY--ѧ��������������� ��ѧ����
      ,c.NJ as c_XSXX_NJ--ѧ��������������� �꼶
      ,c.BH as c_XSXX_BH--ѧ��������������� ���
      ,c.XSLBM as c_XSXX_XSLBM--ѧ��������������� ѧ�������
      ,[cn].MC as c_XSXX_XSLBM_MC--ѧ��������� ����
      ,[cn].SM as c_XSXX_XSLBM_SM--ѧ��������� ˵��
      ,c.XZZ as c_XSXX_XZZ--ѧ��������������� ��סַ
      ,c.HKSZD as c_XSXX_HKSZD--ѧ��������������� �������ڵ�
      ,c.HKXZM as c_XSXX_HKXZM--ѧ��������������� ����������
      ,[co].MC as c_XSXX_HKXZM_MC--���������� ����
      ,c.SFLDRK as c_XSXX_SFLDRK--ѧ��������������� �Ƿ������˿�
      ,[cp].MC as c_XSXX_SFLDRK_MC--�Ƿ��־����� ����
      ,c.TC as c_XSXX_TC--ѧ��������������� �س�
      ,c.LXDH as c_XSXX_LXDH--ѧ��������������� ��ϵ�绰
      ,c.TXDZ as c_XSXX_TXDZ--ѧ��������������� ͨ�ŵ�ַ
      ,c.YZBM as c_XSXX_YZBM--ѧ��������������� ��������
      ,c.DZXX as c_XSXX_DZXX--ѧ��������������� ��������
      ,c.ZYDZ as c_XSXX_ZYDZ--ѧ��������������� ��ҳ��ַ
      ,c.XJH as c_XSXX_XJH--ѧ��������������� ѧ����
      ,c.XSDQZTM as c_XSXX_XSDQZTM--ѧ��������������� ѧ����ǰ״̬��
      ,[cq].MC as c_XSXX_XSDQZTM_MC--ѧ����ǰ״̬����� ����
      ,[cq].SM as c_XSXX_XSDQZTM_SM--ѧ����ǰ״̬����� ˵��
      ,d.SCHOOLID as d_XQ_SCHOOLID--ѧ�����ݱ� ѧУ��
      ,d.XNID as d_XQ_XNID--ѧ�����ݱ� ѧ��
      ,d.XQM as d_XQ_XQM--ѧ�����ݱ� ѧ����
      ,[db].MC as d_XQ_XQM_MC--ѧ�ڴ���� ����
      ,d.XQMC as d_XQ_XQMC--ѧ�����ݱ� ѧ������
      ,d.XQKSRQ as d_XQ_XQKSRQ--ѧ�����ݱ� ѧ�ڿ�ʼ����
      ,d.XQJSRQ as d_XQ_XQJSRQ--ѧ�����ݱ� ѧ�ڽ�������
      ,e.SCHOOLID as e_BJ_SCHOOLID--�༶������� ѧУ��
      ,e.NJ as e_BJ_NJ--�༶������� �꼶��
      ,e.BJ as e_BJ_BJ--�༶������� �༶����
      ,e.JBNY as e_BJ_JBNY--�༶������� ��������
      ,e.BZRGH as e_BJ_BZRGH--�༶������� �����ι���
      ,e.BZXH as e_BJ_BZXH--�༶������� �೤ѧ��
      ,e.BJRYCH as e_BJ_BJRYCH--�༶������� �༶�����ƺ�
      ,e.XZ as e_BJ_XZ--�༶������� ѧ��
      ,e.BJLXM as e_BJ_BJLXM--�༶������� �༶������
      ,[eb].MC as e_BJ_BJLXM_MC--��Сѧ�༶���ʹ���� ����
      ,e.WLLX as e_BJ_WLLX--�༶������� ��������
      ,e.BYRQ as e_BJ_BYRQ--�༶������� ��ҵ����
      ,e.SFSSMZSYJXB as e_BJ_SFSSMZSYJXB--�༶������� �Ƿ���������˫���ѧ��
      ,[ec].MC as e_BJ_SFSSMZSYJXB_MC--�Ƿ��־����� ����
      ,e.SYJXMSM as e_BJ_SYJXMSM--�༶������� ˫���ѧģʽ��
      ,[ed].MC as e_BJ_SYJXMSM_MC--��������˫���ѧģʽ����� ����
      ,[ed].SM as e_BJ_SYJXMSM_SM--��������˫���ѧģʽ����� ˵��
      ,e.BZRID as e_BJ_BZRID--�༶������� ������ID
      ,e.ZT as e_BJ_ZT--�༶������� ״̬
      ,e.PLSX as e_BJ_PLSX--�༶������� ����˳��
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
      ,g.SCHOOLID as g_USER_SCHOOLID--Ӧ��ϵͳ�û��� ѧУID
      ,g.APPID as g_USER_APPID--Ӧ��ϵͳ�û��� Ӧ��ID
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

FROM dbo.EDU_ZXXS_07_A03_XSHBJL AS a LEFT OUTER JOIN
      dbo.EDU_ZXXS_01_01_XSXX AS c ON a.XSXXID = c.ID /*ѧ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS d ON a.XQID = d.ID /*ѧ��ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_03_01_BJ AS e ON a.YBJID = e.BH /*ԭ�༶ID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_03_01_BJ AS f ON a.XBJID = f.BH /*�ְ༶ID*/ AND a.SCHOOLID = f.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS g ON a.CZRY = g.LOGINNAME /*������Ա*/ AND a.SCHOOLID = g.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
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
      dbo.EDU_JY_SFBZ AS [cm] ON c.DSZYBZ = [cm].DM /*������Ů��־*/ LEFT OUTER JOIN
      dbo.EDU_JY_XSLB AS [cn] ON c.XSLBM = [cn].DM /*ѧ�������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS [co] ON c.HKXZM = [co].DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [cp] ON c.SFLDRK = [cp].DM /*�Ƿ������˿�*/ LEFT OUTER JOIN
      dbo.EDU_JY_XSDQZT AS [cq] ON c.XSDQZTM = [cq].DM /*ѧ����ǰ״̬��*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS [db] ON d.XQM = [db].DM /*ѧ����*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXBJLX AS [eb] ON e.BJLXM = [eb].DM /*�༶������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [ec] ON e.SFSSMZSYJXB = [ec].DM /*�Ƿ���������˫���ѧ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SSMZSYJXMS AS [ed] ON e.SYJXMSM = [ed].DM /*˫���ѧģʽ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXBJLX AS [fb] ON f.BJLXM = [fb].DM /*�༶������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [fc] ON f.SFSSMZSYJXB = [fc].DM /*�Ƿ���������˫���ѧ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SSMZSYJXMS AS [fd] ON f.SYJXMSM = [fd].DM /*˫���ѧģʽ��*/
GO
