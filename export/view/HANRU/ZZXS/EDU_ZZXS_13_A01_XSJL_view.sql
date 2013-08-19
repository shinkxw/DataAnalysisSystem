
--ѧ��������
CREATE VIEW [dbo].[VIEW_EDU_ZZXS_13_A01_XSJL_DISP]
AS
SELECT a.[SCHOOLID]--ѧУID
      ,a.[XSXXID]--ѧ����ϢID
      ,a.[YYNL]--Ӣ������
      ,a.[GZNX]--��������
      ,a.[ZWPJ]--��������
      ,a.[JYJL]--��������
      ,a.[SHZS]--����֤��
      ,a.[GZJY]--��������
      ,a.[QZYX]--��ְ����
      ,a.[JNZC]--����ר��
      ,a.[XMJY]--��Ŀ����
      ,b.SCHOOLNAME as b_SCHOOL_SCHOOLNAME--ѧУ����
      ,b.SCHOOLTYPE as b_SCHOOL_SCHOOLTYPE--ѧУ����
      ,b.XNID as b_SCHOOL_XNID--ѧ��ID
      ,b.XQID as b_SCHOOL_XQID--ѧ��ID
      ,b.MatchURL as b_SCHOOL_MatchURL--ƥ��url
      ,b.LogLevel as b_SCHOOL_LogLevel--��־����
      ,c.SCHOOLID as c_XSXX_SCHOOLID--ѧУ��
      ,c.XH as c_XSXX_XH--ѧ��
      ,c.XM as c_XSXX_XM--����
      ,c.YWXM as c_XSXX_YWXM--Ӣ������
      ,c.XMPY as c_XSXX_XMPY--����ƴ��
      ,c.CYM as c_XSXX_CYM--������
      ,c.SFZJLXM as c_XSXX_SFZJLXM--���֤��������
      ,cb.MC as c_XSXX_SFZJLXM_MC--����
      ,c.SFZJH as c_XSXX_SFZJH--���֤����
      ,c.XBM as c_XSXX_XBM--�Ա���
      ,cc.MC as c_XSXX_XBM_MC--����
      ,c.XXM as c_XSXX_XXM--Ѫ����
      ,cd.MC as c_XSXX_XXM_MC--����
      ,cd.JC as c_XSXX_XXM_JC--���
      ,c.CSRQ as c_XSXX_CSRQ--��������
      ,c.CSDM as c_XSXX_CSDM--��������
      ,ce.MC as c_XSXX_CSDM_MC--����
      ,c.JG as c_XSXX_JG--����
      ,c.MZM as c_XSXX_MZM--������
      ,cf.MZMC as c_XSXX_MZM_MZMC--��������
      ,cf.ZMDM as c_XSXX_MZM_ZMDM--��ĸ����
      ,c.HYZKM as c_XSXX_HYZKM--����״����
      ,cg.MC as c_XSXX_HYZKM_MC--����
      ,c.XYZJM as c_XSXX_XYZJM--�����ڽ���
      ,ch.MC as c_XSXX_XYZJM_MC--����
      ,c.GATQWM as c_XSXX_GATQWM--�۰�̨������
      ,ci.MC as c_XSXX_GATQWM_MC--����
      ,ci.SM as c_XSXX_GATQWM_SM--˵��
      ,c.JKZKM as c_XSXX_JKZKM--����״����
      ,cj.MC as c_XSXX_JKZKM_MC--����
      ,cj.SM as c_XSXX_JKZKM_SM--˵��
      ,c.ZZMMM as c_XSXX_ZZMMM--������ò��
      ,ck.MC as c_XSXX_ZZMMM_MC--����
      ,ck.JC as c_XSXX_ZZMMM_JC--���
      ,c.HKSZDXZQHM as c_XSXX_HKSZDXZQHM--�������ڵ�����������
      ,cl.MC as c_XSXX_HKSZDXZQHM_MC--����
      ,c.HKLBM as c_XSXX_HKLBM--���������
      ,cm.MC as c_XSXX_HKLBM_MC--����
      ,c.SFSLDRK as c_XSXX_SFSLDRK--�Ƿ��������˿�
      ,cn.MC as c_XSXX_SFSLDRK_MC--����
      ,c.GJDQM as c_XSXX_GJDQM--����/����
      ,co.GJDQMCJC as c_XSXX_GJDQM_GJDQMCJC--����/�������Ƽ��
      ,co.EZMDM as c_XSXX_GJDQM_EZMDM--����ĸ����
      ,co.SZMDM as c_XSXX_GJDQM_SZMDM--����ĸ����
      ,c.TC as c_XSXX_TC--�س�
      ,c.XSLXDH as c_XSXX_XSLXDH--ѧ����ϵ�绰
      ,c.WLDZ as c_XSXX_WLDZ--�����ַ
      ,c.JSTXH as c_XSXX_JSTXH--��ʱͨѶ��
      ,c.DZXX as c_XSXX_DZXX--��������
      ,c.ZP as c_XSXX_ZP--��Ƭ(·��)

FROM dbo.EDU_ZZXS_13_A01_XSJL AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZXS_01_01_XSXX AS c ON a.XSXXID = c.ID /*ѧ����ϢID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS cb ON c.SFZJLXM = cb.DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS cc ON c.XBM = cc.DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS cd ON c.XXM = cd.DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS ce ON c.CSDM = ce.DM /*��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS cf ON c.MZM = cf.DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS cg ON c.HYZKM = cg.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS ch ON c.XYZJM = ch.DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS ci ON c.GATQWM = ci.DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS cj ON c.JKZKM = cj.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS ck ON c.ZZMMM = ck.DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS cl ON c.HKSZDXZQHM = cl.DM /*�������ڵ�����������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS cm ON c.HKLBM = cm.DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS cn ON c.SFSLDRK = cn.DM /*�Ƿ��������˿�*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS co ON c.GJDQM = co.DM /*����/����*/
GO
