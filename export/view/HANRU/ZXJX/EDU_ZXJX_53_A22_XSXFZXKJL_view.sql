
--ѧ��ѧ����ѡ�μ�¼��
CREATE VIEW [dbo].[VIEW_EDU_ZXJX_53_A22_XSXFZXKJL_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[XSID]--ѧ��ID
      ,a.[BXKJXBID]--���޿ν�ѧ��ID
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
      ,d.SCHOOLID as d_XFZJXBSJ_SCHOOLID--ѧ���ƽ�ѧ�����ݱ� ѧУ
      ,d.XQID as d_XFZJXBSJ_XQID--ѧ���ƽ�ѧ�����ݱ� ѧ��ID
      ,d.ZRKJSID as d_XFZJXBSJ_ZRKJSID--ѧ���ƽ�ѧ�����ݱ� ���ον�ʦID
      ,d.FRKJSID as d_XFZJXBSJ_FRKJSID--ѧ���ƽ�ѧ�����ݱ� ���ον�ʦID
      ,d.KCID as d_XFZJXBSJ_KCID--ѧ���ƽ�ѧ�����ݱ� �γ�ID
      ,d.KKSJID as d_XFZJXBSJ_KKSJID--ѧ���ƽ�ѧ�����ݱ� ����ʱ��ID
      ,d.SKDD as d_XFZJXBSJ_SKDD--ѧ���ƽ�ѧ�����ݱ� �Ͽεص�
      ,d.ZKS as d_XFZJXBSJ_ZKS--ѧ���ƽ�ѧ�����ݱ� �ܿ�ʱ
      ,d.BJKRNRS as d_XFZJXBSJ_BJKRNRS--ѧ���ƽ�ѧ�����ݱ� �༶����������
      ,d.ZDKBRS as d_XFZJXBSJ_ZDKBRS--ѧ���ƽ�ѧ�����ݱ� ��Ϳ�������
      ,d.ZT as d_XFZJXBSJ_ZT--ѧ���ƽ�ѧ�����ݱ� ״̬
      ,d.BZ as d_XFZJXBSJ_BZ--ѧ���ƽ�ѧ�����ݱ� ��ע
      ,d.KCMC as d_XFZJXBSJ_KCMC--ѧ���ƽ�ѧ�����ݱ� �γ�����
      ,d.SKBJIDLB as d_XFZJXBSJ_SKBJIDLB--ѧ���ƽ�ѧ�����ݱ� �ڿΰ༶ID�б�
      ,d.SKBJMCLB as d_XFZJXBSJ_SKBJMCLB--ѧ���ƽ�ѧ�����ݱ� �ڿΰ༶�����б�
      ,d.JXBLX as d_XFZJXBSJ_JXBLX--ѧ���ƽ�ѧ�����ݱ� ��ѧ������

FROM dbo.EDU_ZXJX_53_A22_XSXFZXKJL AS a LEFT OUTER JOIN
      dbo.EDU_ZXXS_01_01_XSXX AS c ON a.XSID = c.ID /*ѧ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZXJX_53_A21_XFZJXBSJ AS d ON a.BXKJXBID = d.ID /*���޿ν�ѧ��ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
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
      dbo.EDU_JY_XSDQZT AS [cq] ON c.XSDQZTM = [cq].DM /*ѧ����ǰ״̬��*/
GO
