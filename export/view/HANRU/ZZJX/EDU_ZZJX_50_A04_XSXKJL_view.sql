
--ѧ��ѡ�μ�¼��
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_50_A04_XSXKJL_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[XSID]--ѧ��ID
      ,a.[JXBID]--��ѧ��ID
      ,c.SCHOOLID as c_XSXX_SCHOOLID--ѧ����Ϣ���ݱ� ѧУ��
      ,c.XH as c_XSXX_XH--ѧ����Ϣ���ݱ� ѧ��
      ,c.XM as c_XSXX_XM--ѧ����Ϣ���ݱ� ����
      ,c.YWXM as c_XSXX_YWXM--ѧ����Ϣ���ݱ� Ӣ������
      ,c.XMPY as c_XSXX_XMPY--ѧ����Ϣ���ݱ� ����ƴ��
      ,c.CYM as c_XSXX_CYM--ѧ����Ϣ���ݱ� ������
      ,c.SFZJLXM as c_XSXX_SFZJLXM--ѧ����Ϣ���ݱ� ���֤��������
      ,[cb].MC as c_XSXX_SFZJLXM_MC--���֤�����ʹ���� ����
      ,c.SFZJH as c_XSXX_SFZJH--ѧ����Ϣ���ݱ� ���֤����
      ,c.XBM as c_XSXX_XBM--ѧ����Ϣ���ݱ� �Ա���
      ,[cc].MC as c_XSXX_XBM_MC--�˵��Ա���� ����
      ,c.XXM as c_XSXX_XXM--ѧ����Ϣ���ݱ� Ѫ����
      ,[cd].MC as c_XSXX_XXM_MC--Ѫ�ʹ���� ����
      ,[cd].JC as c_XSXX_XXM_JC--Ѫ�ʹ���� ���
      ,c.CSRQ as c_XSXX_CSRQ--ѧ����Ϣ���ݱ� ��������
      ,c.CSDM as c_XSXX_CSDM--ѧ����Ϣ���ݱ� ��������
      ,[ce].MC as c_XSXX_CSDM_MC--�л����񹲺͹������������� ����
      ,c.JG as c_XSXX_JG--ѧ����Ϣ���ݱ� ����
      ,c.MZM as c_XSXX_MZM--ѧ����Ϣ���ݱ� ������
      ,[cf].MZMC as c_XSXX_MZM_MZMC--�й����������Ƶ�������ĸƴд���ʹ��� ��������
      ,[cf].ZMDM as c_XSXX_MZM_ZMDM--�й����������Ƶ�������ĸƴд���ʹ��� ��ĸ����
      ,c.HYZKM as c_XSXX_HYZKM--ѧ����Ϣ���ݱ� ����״����
      ,[cg].MC as c_XSXX_HYZKM_MC--����״������ ����
      ,c.XYZJM as c_XSXX_XYZJM--ѧ����Ϣ���ݱ� �����ڽ���
      ,[ch].MC as c_XSXX_XYZJM_MC--�ڽ��������� ����
      ,c.GATQWM as c_XSXX_GATQWM--ѧ����Ϣ���ݱ� �۰�̨������
      ,[ci].MC as c_XSXX_GATQWM_MC--�۰�̨�������� ����
      ,[ci].SM as c_XSXX_GATQWM_SM--�۰�̨�������� ˵��
      ,c.JKZKM as c_XSXX_JKZKM--ѧ����Ϣ���ݱ� ����״����
      ,[cj].MC as c_XSXX_JKZKM_MC--����״��1λ���ִ��� ����
      ,[cj].SM as c_XSXX_JKZKM_SM--����״��1λ���ִ��� ˵��
      ,c.ZZMMM as c_XSXX_ZZMMM--ѧ����Ϣ���ݱ� ������ò��
      ,[ck].MC as c_XSXX_ZZMMM_MC--������ò���� ����
      ,[ck].JC as c_XSXX_ZZMMM_JC--������ò���� ���
      ,c.HKSZDXZQHM as c_XSXX_HKSZDXZQHM--ѧ����Ϣ���ݱ� �������ڵ�����������
      ,[cl].MC as c_XSXX_HKSZDXZQHM_MC--�л����񹲺͹������������� ����
      ,c.HKLBM as c_XSXX_HKLBM--ѧ����Ϣ���ݱ� ���������
      ,[cm].MC as c_XSXX_HKLBM_MC--���������� ����
      ,c.SFSLDRK as c_XSXX_SFSLDRK--ѧ����Ϣ���ݱ� �Ƿ��������˿�
      ,[cn].MC as c_XSXX_SFSLDRK_MC--�Ƿ��־����� ����
      ,c.GJDQM as c_XSXX_GJDQM--ѧ����Ϣ���ݱ� ����/����
      ,[co].GJDQMCJC as c_XSXX_GJDQM_GJDQMCJC--��������͵������ƴ��� ����/�������Ƽ��
      ,[co].EZMDM as c_XSXX_GJDQM_EZMDM--��������͵������ƴ��� ����ĸ����
      ,[co].SZMDM as c_XSXX_GJDQM_SZMDM--��������͵������ƴ��� ����ĸ����
      ,c.TC as c_XSXX_TC--ѧ����Ϣ���ݱ� �س�
      ,c.XSLXDH as c_XSXX_XSLXDH--ѧ����Ϣ���ݱ� ѧ����ϵ�绰
      ,c.WLDZ as c_XSXX_WLDZ--ѧ����Ϣ���ݱ� �����ַ
      ,c.JSTXH as c_XSXX_JSTXH--ѧ����Ϣ���ݱ� ��ʱͨѶ��
      ,c.DZXX as c_XSXX_DZXX--ѧ����Ϣ���ݱ� ��������
      ,c.ZP as c_XSXX_ZP--ѧ����Ϣ���ݱ� ��Ƭ(·��)
      ,c.RXXQID as c_XSXX_RXXQID--ѧ����Ϣ���ݱ� ��ѧѧ��ID
      ,c.NFCKH as c_XSXX_NFCKH--ѧ����Ϣ���ݱ� NFC����
      ,d.SCHOOLID as d_JXBSJ_SCHOOLID--��ѧ�����ݱ� ѧУ
      ,d.XXKCLBID as d_JXBSJ_XXKCLBID--��ѧ�����ݱ� ѡ�޿γ����ID
      ,d.KCMC as d_JXBSJ_KCMC--��ѧ�����ݱ� �γ�����
      ,d.KCJS as d_JXBSJ_KCJS--��ѧ�����ݱ� �γ̽���
      ,d.JXJH as d_JXBSJ_JXJH--��ѧ�����ݱ� ��ѧ�ƻ�
      ,d.ZKS as d_JXBSJ_ZKS--��ѧ�����ݱ� �ܿ�ʱ
      ,d.XF as d_JXBSJ_XF--��ѧ�����ݱ� ѧ��
      ,d.XQID as d_JXBSJ_XQID--��ѧ�����ݱ� ѧ��ID
      ,d.NJID as d_JXBSJ_NJID--��ѧ�����ݱ� �꼶ID�б�
      ,d.NJMCLB as d_JXBSJ_NJMCLB--��ѧ�����ݱ� �꼶�����б�
      ,d.DQZT as d_JXBSJ_DQZT--��ѧ�����ݱ� ��ǰ״̬
      ,d.KKJSID as d_JXBSJ_KKJSID--��ѧ�����ݱ� ���ν�ʦID
      ,d.SKSJID as d_JXBSJ_SKSJID--��ѧ�����ݱ� �Ͽ�ʱ��ID
      ,d.SKDD as d_JXBSJ_SKDD--��ѧ�����ݱ� �Ͽεص�
      ,d.BJKRNRS as d_JXBSJ_BJKRNRS--��ѧ�����ݱ� �༶����������
      ,d.ZDKBRS as d_JXBSJ_ZDKBRS--��ѧ�����ݱ� ��Ϳ�������
      ,d.BJIDLB as d_JXBSJ_BJIDLB--��ѧ�����ݱ� �༶ID�б�
      ,d.BJMCLB as d_JXBSJ_BJMCLB--��ѧ�����ݱ� �༶�����б�
      ,d.QTJSIDLB as d_JXBSJ_QTJSIDLB--��ѧ�����ݱ� ������ʦID�б�
      ,d.QTJSMCLB as d_JXBSJ_QTJSMCLB--��ѧ�����ݱ� ������ʦ�����б�
      ,d.WEEKKS as d_JXBSJ_WEEKKS--��ѧ�����ݱ� �ܿ�ʱ
      ,d.SKZCIDLB as d_JXBSJ_SKZCIDLB--��ѧ�����ݱ� �Ͽ��ܴ�ID�б�
      ,d.SKZCMCLB as d_JXBSJ_SKZCMCLB--��ѧ�����ݱ� �Ͽ��ܴ������б�

FROM dbo.EDU_ZZJX_50_A04_XSXKJL AS a LEFT OUTER JOIN
      dbo.EDU_ZZXS_01_01_XSXX AS c ON a.XSID = c.ID /*ѧ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_50_A03_JXBSJ AS d ON a.JXBID = d.ID /*��ѧ��ID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS [cb] ON c.SFZJLXM = [cb].DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS [cc] ON c.XBM = [cc].DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS [cd] ON c.XXM = [cd].DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [ce] ON c.CSDM = [ce].DM /*��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS [cf] ON c.MZM = [cf].DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS [cg] ON c.HYZKM = [cg].DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS [ch] ON c.XYZJM = [ch].DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS [ci] ON c.GATQWM = [ci].DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS [cj] ON c.JKZKM = [cj].DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS [ck] ON c.ZZMMM = [ck].DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [cl] ON c.HKSZDXZQHM = [cl].DM /*�������ڵ�����������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS [cm] ON c.HKLBM = [cm].DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [cn] ON c.SFSLDRK = [cn].DM /*�Ƿ��������˿�*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS [co] ON c.GJDQM = [co].DM /*����/����*/
GO
