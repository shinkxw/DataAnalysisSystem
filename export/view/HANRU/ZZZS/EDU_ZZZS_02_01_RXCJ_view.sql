
--��ѧ�ɼ����ݱ�
CREATE VIEW [dbo].[VIEW_EDU_ZZZS_02_01_RXCJ_DISP]
AS
SELECT a.[XSXXID]--ѧ����Ϣ���ݱ�
      ,a.[SCHOOLID]--ѧУ��
      ,a.[RXZF]--��ѧ�ܷ�
      ,a.[GKZF]--�п��ܷ�
      ,a.[FJF]--���ӷ�
      ,a.[FJFLBM]--���ӷ������
      ,b.SCHOOLID as b_XSXX_SCHOOLID--ѧУ��
      ,b.XH as b_XSXX_XH--ѧ��
      ,b.XM as b_XSXX_XM--����
      ,b.YWXM as b_XSXX_YWXM--Ӣ������
      ,b.XMPY as b_XSXX_XMPY--����ƴ��
      ,b.CYM as b_XSXX_CYM--������
      ,b.SFZJLXM as b_XSXX_SFZJLXM--���֤��������
      ,bb.MC as b_XSXX_SFZJLXM_MC--����
      ,b.SFZJH as b_XSXX_SFZJH--���֤����
      ,b.XBM as b_XSXX_XBM--�Ա���
      ,bc.MC as b_XSXX_XBM_MC--����
      ,b.XXM as b_XSXX_XXM--Ѫ����
      ,bd.MC as b_XSXX_XXM_MC--����
      ,bd.JC as b_XSXX_XXM_JC--���
      ,b.CSRQ as b_XSXX_CSRQ--��������
      ,b.CSDM as b_XSXX_CSDM--��������
      ,be.MC as b_XSXX_CSDM_MC--����
      ,b.JG as b_XSXX_JG--����
      ,b.MZM as b_XSXX_MZM--������
      ,bf.MZMC as b_XSXX_MZM_MZMC--��������
      ,bf.ZMDM as b_XSXX_MZM_ZMDM--��ĸ����
      ,b.HYZKM as b_XSXX_HYZKM--����״����
      ,bg.MC as b_XSXX_HYZKM_MC--����
      ,b.XYZJM as b_XSXX_XYZJM--�����ڽ���
      ,bh.MC as b_XSXX_XYZJM_MC--����
      ,b.GATQWM as b_XSXX_GATQWM--�۰�̨������
      ,bi.MC as b_XSXX_GATQWM_MC--����
      ,bi.SM as b_XSXX_GATQWM_SM--˵��
      ,b.JKZKM as b_XSXX_JKZKM--����״����
      ,bj.MC as b_XSXX_JKZKM_MC--����
      ,bj.SM as b_XSXX_JKZKM_SM--˵��
      ,b.ZZMMM as b_XSXX_ZZMMM--������ò��
      ,bk.MC as b_XSXX_ZZMMM_MC--����
      ,bk.JC as b_XSXX_ZZMMM_JC--���
      ,b.HKSZDXZQHM as b_XSXX_HKSZDXZQHM--�������ڵ�����������
      ,bl.MC as b_XSXX_HKSZDXZQHM_MC--����
      ,b.HKLBM as b_XSXX_HKLBM--���������
      ,bm.MC as b_XSXX_HKLBM_MC--����
      ,b.SFSLDRK as b_XSXX_SFSLDRK--�Ƿ��������˿�
      ,bn.MC as b_XSXX_SFSLDRK_MC--����
      ,b.GJDQM as b_XSXX_GJDQM--����/����
      ,bo.GJDQMCJC as b_XSXX_GJDQM_GJDQMCJC--����/�������Ƽ��
      ,bo.EZMDM as b_XSXX_GJDQM_EZMDM--����ĸ����
      ,bo.SZMDM as b_XSXX_GJDQM_SZMDM--����ĸ����
      ,b.TC as b_XSXX_TC--�س�
      ,b.XSLXDH as b_XSXX_XSLXDH--ѧ����ϵ�绰
      ,b.WLDZ as b_XSXX_WLDZ--�����ַ
      ,b.JSTXH as b_XSXX_JSTXH--��ʱͨѶ��
      ,b.DZXX as b_XSXX_DZXX--��������
      ,b.ZP as b_XSXX_ZP--��Ƭ(·��)
      ,c.SCHOOLNAME as c_SCHOOL_SCHOOLNAME--ѧУ����
      ,c.SCHOOLTYPE as c_SCHOOL_SCHOOLTYPE--ѧУ����
      ,c.XNID as c_SCHOOL_XNID--ѧ��ID
      ,c.XQID as c_SCHOOL_XQID--ѧ��ID
      ,c.MatchURL as c_SCHOOL_MatchURL--ƥ��url
      ,c.LogLevel as c_SCHOOL_LogLevel--��־����
      ,d.MC as d_FJFLB_MC--����

FROM dbo.EDU_ZZZS_02_01_RXCJ AS a LEFT OUTER JOIN
      dbo.EDU_ZZXS_01_01_XSXX AS b ON a.XSXXID = b.ID /*ѧ����Ϣ���ݱ�*/ AND a.SCHOOLID = b.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS c ON a.SCHOOLID = c.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_FJFLB AS d ON a.FJFLBM = d.DM /*���ӷ������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS bb ON b.SFZJLXM = bb.DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS bc ON b.XBM = bc.DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS bd ON b.XXM = bd.DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS be ON b.CSDM = be.DM /*��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS bf ON b.MZM = bf.DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS bg ON b.HYZKM = bg.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS bh ON b.XYZJM = bh.DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS bi ON b.GATQWM = bi.DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS bj ON b.JKZKM = bj.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS bk ON b.ZZMMM = bk.DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS bl ON b.HKSZDXZQHM = bl.DM /*�������ڵ�����������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS bm ON b.HKLBM = bm.DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS bn ON b.SFSLDRK = bn.DM /*�Ƿ��������˿�*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS bo ON b.GJDQM = bo.DM /*����/����*/
GO
