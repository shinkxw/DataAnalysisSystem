
--ʵϰ�������
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_21_A02_SXSGL_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[SZBID]--ʵϰ��ID
      ,a.[StuID]--ѧ��ID
      ,a.[Resume]--����
      ,a.[Status]--ʵϰ��״̬
      ,a.[SXXYS]--ʵϰЭ����
      ,a.[SXSXM]--ʵϰ������
      ,a.[XQID]--ѧ��ID
      ,c.SCHOOLID as c_SXBJGL_SCHOOLID--ʵϰ�༶����� ѧУ
      ,c.XNID as c_SXBJGL_XNID--ʵϰ�༶����� ѧ��ID
      ,c.XQID as c_SXBJGL_XQID--ʵϰ�༶����� ѧ��ID
      ,c.BJMC as c_SXBJGL_BJMC--ʵϰ�༶����� �༶����
      ,c.BZRID as c_SXBJGL_BZRID--ʵϰ�༶����� ������ID
      ,d.SCHOOLID as d_XSXX_SCHOOLID--ѧ����Ϣ���ݱ� ѧУ��
      ,d.XH as d_XSXX_XH--ѧ����Ϣ���ݱ� ѧ��
      ,d.XM as d_XSXX_XM--ѧ����Ϣ���ݱ� ����
      ,d.YWXM as d_XSXX_YWXM--ѧ����Ϣ���ݱ� Ӣ������
      ,d.XMPY as d_XSXX_XMPY--ѧ����Ϣ���ݱ� ����ƴ��
      ,d.CYM as d_XSXX_CYM--ѧ����Ϣ���ݱ� ������
      ,d.SFZJLXM as d_XSXX_SFZJLXM--ѧ����Ϣ���ݱ� ���֤��������
      ,[db].MC as d_XSXX_SFZJLXM_MC--���֤�����ʹ���� ����
      ,d.SFZJH as d_XSXX_SFZJH--ѧ����Ϣ���ݱ� ���֤����
      ,d.XBM as d_XSXX_XBM--ѧ����Ϣ���ݱ� �Ա���
      ,[dc].MC as d_XSXX_XBM_MC--�˵��Ա���� ����
      ,d.XXM as d_XSXX_XXM--ѧ����Ϣ���ݱ� Ѫ����
      ,[dd].MC as d_XSXX_XXM_MC--Ѫ�ʹ���� ����
      ,[dd].JC as d_XSXX_XXM_JC--Ѫ�ʹ���� ���
      ,d.CSRQ as d_XSXX_CSRQ--ѧ����Ϣ���ݱ� ��������
      ,d.CSDM as d_XSXX_CSDM--ѧ����Ϣ���ݱ� ��������
      ,[de].MC as d_XSXX_CSDM_MC--�л����񹲺͹������������� ����
      ,d.JG as d_XSXX_JG--ѧ����Ϣ���ݱ� ����
      ,d.MZM as d_XSXX_MZM--ѧ����Ϣ���ݱ� ������
      ,[df].MZMC as d_XSXX_MZM_MZMC--�й����������Ƶ�������ĸƴд���ʹ��� ��������
      ,[df].ZMDM as d_XSXX_MZM_ZMDM--�й����������Ƶ�������ĸƴд���ʹ��� ��ĸ����
      ,d.HYZKM as d_XSXX_HYZKM--ѧ����Ϣ���ݱ� ����״����
      ,[dg].MC as d_XSXX_HYZKM_MC--����״������ ����
      ,d.XYZJM as d_XSXX_XYZJM--ѧ����Ϣ���ݱ� �����ڽ���
      ,[dh].MC as d_XSXX_XYZJM_MC--�ڽ��������� ����
      ,d.GATQWM as d_XSXX_GATQWM--ѧ����Ϣ���ݱ� �۰�̨������
      ,[di].MC as d_XSXX_GATQWM_MC--�۰�̨�������� ����
      ,[di].SM as d_XSXX_GATQWM_SM--�۰�̨�������� ˵��
      ,d.JKZKM as d_XSXX_JKZKM--ѧ����Ϣ���ݱ� ����״����
      ,[dj].MC as d_XSXX_JKZKM_MC--����״��1λ���ִ��� ����
      ,[dj].SM as d_XSXX_JKZKM_SM--����״��1λ���ִ��� ˵��
      ,d.ZZMMM as d_XSXX_ZZMMM--ѧ����Ϣ���ݱ� ������ò��
      ,[dk].MC as d_XSXX_ZZMMM_MC--������ò���� ����
      ,[dk].JC as d_XSXX_ZZMMM_JC--������ò���� ���
      ,d.HKSZDXZQHM as d_XSXX_HKSZDXZQHM--ѧ����Ϣ���ݱ� �������ڵ�����������
      ,[dl].MC as d_XSXX_HKSZDXZQHM_MC--�л����񹲺͹������������� ����
      ,d.HKLBM as d_XSXX_HKLBM--ѧ����Ϣ���ݱ� ���������
      ,[dm].MC as d_XSXX_HKLBM_MC--���������� ����
      ,d.SFSLDRK as d_XSXX_SFSLDRK--ѧ����Ϣ���ݱ� �Ƿ��������˿�
      ,[dn].MC as d_XSXX_SFSLDRK_MC--�Ƿ��־����� ����
      ,d.GJDQM as d_XSXX_GJDQM--ѧ����Ϣ���ݱ� ����/����
      ,[do].GJDQMCJC as d_XSXX_GJDQM_GJDQMCJC--��������͵������ƴ��� ����/�������Ƽ��
      ,[do].EZMDM as d_XSXX_GJDQM_EZMDM--��������͵������ƴ��� ����ĸ����
      ,[do].SZMDM as d_XSXX_GJDQM_SZMDM--��������͵������ƴ��� ����ĸ����
      ,d.TC as d_XSXX_TC--ѧ����Ϣ���ݱ� �س�
      ,d.XSLXDH as d_XSXX_XSLXDH--ѧ����Ϣ���ݱ� ѧ����ϵ�绰
      ,d.WLDZ as d_XSXX_WLDZ--ѧ����Ϣ���ݱ� �����ַ
      ,d.JSTXH as d_XSXX_JSTXH--ѧ����Ϣ���ݱ� ��ʱͨѶ��
      ,d.DZXX as d_XSXX_DZXX--ѧ����Ϣ���ݱ� ��������
      ,d.ZP as d_XSXX_ZP--ѧ����Ϣ���ݱ� ��Ƭ(·��)
      ,d.RXXQID as d_XSXX_RXXQID--ѧ����Ϣ���ݱ� ��ѧѧ��ID
      ,e.SCHOOLID as e_XQ_SCHOOLID--ѧ�����ݱ� ѧУ��
      ,e.XNID as e_XQ_XNID--ѧ�����ݱ� ѧ��
      ,e.XQM as e_XQ_XQM--ѧ�����ݱ� ѧ����
      ,[eb].MC as e_XQ_XQM_MC--ѧ�ڴ���� ����
      ,e.XQMC as e_XQ_XQMC--ѧ�����ݱ� ѧ������
      ,e.XQKSRQ as e_XQ_XQKSRQ--ѧ�����ݱ� ѧ�ڿ�ʼ����
      ,e.XQJSRQ as e_XQ_XQJSRQ--ѧ�����ݱ� ѧ�ڽ�������

FROM dbo.EDU_ZZJX_21_A02_SXSGL AS a LEFT OUTER JOIN
      dbo.EDU_ZZJX_21_A01_SXBJGL AS c ON a.SZBID = c.ID /*ʵϰ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZXS_01_01_XSXX AS d ON a.StuID = d.ID /*ѧ��ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS e ON a.XQID = e.ID /*ѧ��ID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS [db] ON d.SFZJLXM = [db].DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS [dc] ON d.XBM = [dc].DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS [dd] ON d.XXM = [dd].DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [de] ON d.CSDM = [de].DM /*��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS [df] ON d.MZM = [df].DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS [dg] ON d.HYZKM = [dg].DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS [dh] ON d.XYZJM = [dh].DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS [di] ON d.GATQWM = [di].DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS [dj] ON d.JKZKM = [dj].DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS [dk] ON d.ZZMMM = [dk].DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [dl] ON d.HKSZDXZQHM = [dl].DM /*�������ڵ�����������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS [dm] ON d.HKLBM = [dm].DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [dn] ON d.SFSLDRK = [dn].DM /*�Ƿ��������˿�*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS [do] ON d.GJDQM = [do].DM /*����/����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS [eb] ON e.XQM = [eb].DM /*ѧ����*/
GO
