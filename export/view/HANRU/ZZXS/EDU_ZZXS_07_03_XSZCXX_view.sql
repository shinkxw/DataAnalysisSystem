
--ѧ��ע����Ϣ���������
CREATE VIEW [dbo].[VIEW_EDU_ZZXS_07_03_XSZCXX_DISP]
AS
SELECT a.[XSXXID]--ѧ��ID
      ,a.[SCHOOLID]--ѧУID
      ,a.[XQID]--ѧ��ID
      ,a.[ZCZKM]--ע��״����
      ,a.[ZCRQ]--ע������
      ,a.[BDRQ]--��������
      ,a.[WZCYY]--δע��ԭ��
      ,a.[WZCWBDQX]--δע��/δ����ȥ��
      ,a.[SFQJ]--�Ƿ����
      ,a.[WASZCXQM]--δ��ʱע��ѧ����
      ,b.SCHOOLID as b_XSXX_SCHOOLID--ѧ����Ϣ���ݱ� ѧУ��
      ,b.XH as b_XSXX_XH--ѧ����Ϣ���ݱ� ѧ��
      ,b.XM as b_XSXX_XM--ѧ����Ϣ���ݱ� ����
      ,b.YWXM as b_XSXX_YWXM--ѧ����Ϣ���ݱ� Ӣ������
      ,b.XMPY as b_XSXX_XMPY--ѧ����Ϣ���ݱ� ����ƴ��
      ,b.CYM as b_XSXX_CYM--ѧ����Ϣ���ݱ� ������
      ,b.SFZJLXM as b_XSXX_SFZJLXM--ѧ����Ϣ���ݱ� ���֤��������
      ,[bb].MC as b_XSXX_SFZJLXM_MC--���֤�����ʹ���� ����
      ,b.SFZJH as b_XSXX_SFZJH--ѧ����Ϣ���ݱ� ���֤����
      ,b.XBM as b_XSXX_XBM--ѧ����Ϣ���ݱ� �Ա���
      ,[bc].MC as b_XSXX_XBM_MC--�˵��Ա���� ����
      ,b.XXM as b_XSXX_XXM--ѧ����Ϣ���ݱ� Ѫ����
      ,[bd].MC as b_XSXX_XXM_MC--Ѫ�ʹ���� ����
      ,[bd].JC as b_XSXX_XXM_JC--Ѫ�ʹ���� ���
      ,b.CSRQ as b_XSXX_CSRQ--ѧ����Ϣ���ݱ� ��������
      ,b.CSDM as b_XSXX_CSDM--ѧ����Ϣ���ݱ� ��������
      ,[be].MC as b_XSXX_CSDM_MC--�л����񹲺͹������������� ����
      ,b.JG as b_XSXX_JG--ѧ����Ϣ���ݱ� ����
      ,b.MZM as b_XSXX_MZM--ѧ����Ϣ���ݱ� ������
      ,[bf].MZMC as b_XSXX_MZM_MZMC--�й����������Ƶ�������ĸƴд���ʹ��� ��������
      ,[bf].ZMDM as b_XSXX_MZM_ZMDM--�й����������Ƶ�������ĸƴд���ʹ��� ��ĸ����
      ,b.HYZKM as b_XSXX_HYZKM--ѧ����Ϣ���ݱ� ����״����
      ,[bg].MC as b_XSXX_HYZKM_MC--����״������ ����
      ,b.XYZJM as b_XSXX_XYZJM--ѧ����Ϣ���ݱ� �����ڽ���
      ,[bh].MC as b_XSXX_XYZJM_MC--�ڽ��������� ����
      ,b.GATQWM as b_XSXX_GATQWM--ѧ����Ϣ���ݱ� �۰�̨������
      ,[bi].MC as b_XSXX_GATQWM_MC--�۰�̨�������� ����
      ,[bi].SM as b_XSXX_GATQWM_SM--�۰�̨�������� ˵��
      ,b.JKZKM as b_XSXX_JKZKM--ѧ����Ϣ���ݱ� ����״����
      ,[bj].MC as b_XSXX_JKZKM_MC--����״��1λ���ִ��� ����
      ,[bj].SM as b_XSXX_JKZKM_SM--����״��1λ���ִ��� ˵��
      ,b.ZZMMM as b_XSXX_ZZMMM--ѧ����Ϣ���ݱ� ������ò��
      ,[bk].MC as b_XSXX_ZZMMM_MC--������ò���� ����
      ,[bk].JC as b_XSXX_ZZMMM_JC--������ò���� ���
      ,b.HKSZDXZQHM as b_XSXX_HKSZDXZQHM--ѧ����Ϣ���ݱ� �������ڵ�����������
      ,[bl].MC as b_XSXX_HKSZDXZQHM_MC--�л����񹲺͹������������� ����
      ,b.HKLBM as b_XSXX_HKLBM--ѧ����Ϣ���ݱ� ���������
      ,[bm].MC as b_XSXX_HKLBM_MC--���������� ����
      ,b.SFSLDRK as b_XSXX_SFSLDRK--ѧ����Ϣ���ݱ� �Ƿ��������˿�
      ,[bn].MC as b_XSXX_SFSLDRK_MC--�Ƿ��־����� ����
      ,b.GJDQM as b_XSXX_GJDQM--ѧ����Ϣ���ݱ� ����/����
      ,[bo].GJDQMCJC as b_XSXX_GJDQM_GJDQMCJC--��������͵������ƴ��� ����/�������Ƽ��
      ,[bo].EZMDM as b_XSXX_GJDQM_EZMDM--��������͵������ƴ��� ����ĸ����
      ,[bo].SZMDM as b_XSXX_GJDQM_SZMDM--��������͵������ƴ��� ����ĸ����
      ,b.TC as b_XSXX_TC--ѧ����Ϣ���ݱ� �س�
      ,b.XSLXDH as b_XSXX_XSLXDH--ѧ����Ϣ���ݱ� ѧ����ϵ�绰
      ,b.WLDZ as b_XSXX_WLDZ--ѧ����Ϣ���ݱ� �����ַ
      ,b.JSTXH as b_XSXX_JSTXH--ѧ����Ϣ���ݱ� ��ʱͨѶ��
      ,b.DZXX as b_XSXX_DZXX--ѧ����Ϣ���ݱ� ��������
      ,b.ZP as b_XSXX_ZP--ѧ����Ϣ���ݱ� ��Ƭ(·��)
      ,b.RXXQID as b_XSXX_RXXQID--ѧ����Ϣ���ݱ� ��ѧѧ��ID
      ,b.NFCKH as b_XSXX_NFCKH--ѧ����Ϣ���ݱ� NFC����
      ,d.SCHOOLID as d_XQ_SCHOOLID--ѧ�����ݱ� ѧУ��
      ,d.XNID as d_XQ_XNID--ѧ�����ݱ� ѧ��
      ,d.XQM as d_XQ_XQM--ѧ�����ݱ� ѧ����
      ,[db].MC as d_XQ_XQM_MC--ѧ�ڴ���� ����
      ,d.XQMC as d_XQ_XQMC--ѧ�����ݱ� ѧ������
      ,d.XQKSRQ as d_XQ_XQKSRQ--ѧ�����ݱ� ѧ�ڿ�ʼ����
      ,d.XQJSRQ as d_XQ_XQJSRQ--ѧ�����ݱ� ѧ�ڽ�������
      ,e.MC as e_ZCZK_MC--ע��״������� ����
      ,f.MC as f_SFBZ_MC--�Ƿ��־����� ����
      ,g.MC as g_XQ_MC--ѧ�ڴ���� ����

FROM dbo.EDU_ZZXS_07_03_XSZCXX AS a LEFT OUTER JOIN
      dbo.EDU_ZZXS_01_01_XSXX AS b ON a.XSXXID = b.ID /*ѧ��ID*/ AND a.SCHOOLID = b.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS d ON a.XQID = d.ID /*ѧ��ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZCZK AS e ON a.ZCZKM = e.DM /*ע��״����*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS f ON a.SFQJ = f.DM /*�Ƿ����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS g ON a.WASZCXQM = g.DM /*δ��ʱע��ѧ����*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS [bb] ON b.SFZJLXM = [bb].DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS [bc] ON b.XBM = [bc].DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS [bd] ON b.XXM = [bd].DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [be] ON b.CSDM = [be].DM /*��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS [bf] ON b.MZM = [bf].DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS [bg] ON b.HYZKM = [bg].DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS [bh] ON b.XYZJM = [bh].DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS [bi] ON b.GATQWM = [bi].DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS [bj] ON b.JKZKM = [bj].DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS [bk] ON b.ZZMMM = [bk].DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [bl] ON b.HKSZDXZQHM = [bl].DM /*�������ڵ�����������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS [bm] ON b.HKLBM = [bm].DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [bn] ON b.SFSLDRK = [bn].DM /*�Ƿ��������˿�*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS [bo] ON b.GJDQM = [bo].DM /*����/����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS [db] ON d.XQM = [db].DM /*ѧ����*/
GO
