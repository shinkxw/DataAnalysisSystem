
--��ʦ��ѧ��ѧ��С���
CREATE VIEW [dbo].[VIEW_EDU_ZXXS_57_A17_DSZXSXQXJ_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[XQID]--ѧ��ID
      ,a.[XSID]--ѧ��ID
      ,a.[DSID]--��ʦID
      ,a.[NR]--����
      ,a.[DDID]--�ȵ�ID
      ,a.[TJSJ]--���ʱ��
      ,a.[BZ]--��ע
      ,a.[SHZT]--���״̬
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
      ,e.SCHOOLID as e_DSZDS_SCHOOLID--��ʦ�Ƶ�ʦ�� ѧУ
      ,e.XQID as e_DSZDS_XQID--��ʦ�Ƶ�ʦ�� ѧ��ID
      ,e.JSID as e_DSZDS_JSID--��ʦ�Ƶ�ʦ�� ��ʦID
      ,e.JUESEID as e_DSZDS_JUESEID--��ʦ�Ƶ�ʦ�� ��ɫID
      ,e.TJSJ as e_DSZDS_TJSJ--��ʦ�Ƶ�ʦ�� ���ʱ��
      ,e.XH as e_DSZDS_XH--��ʦ�Ƶ�ʦ�� ���
      ,f.SCHOOLID as f_DSZXSDD_SCHOOLID--��ʦ��ѧ���ȵڱ� ѧУ
      ,f.DDMC as f_DSZXSDD_DDMC--��ʦ��ѧ���ȵڱ� �ȵ�����
      ,f.PLSX as f_DSZXSDD_PLSX--��ʦ��ѧ���ȵڱ� ����˳��

FROM dbo.EDU_ZXXS_57_A17_DSZXSXQXJ AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS c ON a.XQID = c.ID /*ѧ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZXXS_01_01_XSXX AS d ON a.XSID = d.ID /*ѧ��ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZXXS_57_A03_DSZDS AS e ON a.DSID = e.ID /*��ʦID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZXXS_57_A18_DSZXSDD AS f ON a.DDID = f.ID /*�ȵ�ID*/ AND a.SCHOOLID = f.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
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
      dbo.EDU_JY_XSDQZT AS [dq] ON d.XSDQZTM = [dq].DM /*ѧ����ǰ״̬��*/
GO
