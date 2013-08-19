
--ʵϰ������
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_07_A10_SXJD_DISP]
AS
SELECT a.[ID]--ʵϰ������ϢID
      ,a.[SCHOOLID]--ѧУID
      ,a.[SXJHID]--ʵϰ�ƻ�ID
      ,a.[XSXXID]--ѧ����ϢID
      ,a.[JDNR]--��������
      ,a.[SXDWYJ]--ʵϰ��λ���
      ,a.[BJYJ]--�༶���
      ,a.[XXYJ]--ѧУ���
      ,b.SCHOOLNAME as b_SCHOOL_SCHOOLNAME--ѧУ����
      ,b.SCHOOLTYPE as b_SCHOOL_SCHOOLTYPE--ѧУ����
      ,b.XNID as b_SCHOOL_XNID--ѧ��ID
      ,b.XQID as b_SCHOOL_XQID--ѧ��ID
      ,b.MatchURL as b_SCHOOL_MatchURL--ƥ��url
      ,b.LogLevel as b_SCHOOL_LogLevel--��־����
      ,c.SCHOOLID as c_XXSXJH_SCHOOLID--ѧУID
      ,c.JHBT as c_XXSXJH_JHBT--�ƻ�����
      ,c.NJ as c_XXSXJH_NJ--�꼶
      ,c.BGXS as c_XXSXJH_BGXS--������ʽ
      ,c.SFSX as c_XXSXJH_SFSX--�ƻ��Ƿ���Ч
      ,cb.MC as c_XXSXJH_SFSX_MC--����
      ,d.SCHOOLID as d_XSXX_SCHOOLID--ѧУ��
      ,d.XH as d_XSXX_XH--ѧ��
      ,d.XM as d_XSXX_XM--����
      ,d.YWXM as d_XSXX_YWXM--Ӣ������
      ,d.XMPY as d_XSXX_XMPY--����ƴ��
      ,d.CYM as d_XSXX_CYM--������
      ,d.SFZJLXM as d_XSXX_SFZJLXM--���֤��������
      ,db.MC as d_XSXX_SFZJLXM_MC--����
      ,d.SFZJH as d_XSXX_SFZJH--���֤����
      ,d.XBM as d_XSXX_XBM--�Ա���
      ,dc.MC as d_XSXX_XBM_MC--����
      ,d.XXM as d_XSXX_XXM--Ѫ����
      ,dd.MC as d_XSXX_XXM_MC--����
      ,dd.JC as d_XSXX_XXM_JC--���
      ,d.CSRQ as d_XSXX_CSRQ--��������
      ,d.CSDM as d_XSXX_CSDM--��������
      ,de.MC as d_XSXX_CSDM_MC--����
      ,d.JG as d_XSXX_JG--����
      ,d.MZM as d_XSXX_MZM--������
      ,df.MZMC as d_XSXX_MZM_MZMC--��������
      ,df.ZMDM as d_XSXX_MZM_ZMDM--��ĸ����
      ,d.HYZKM as d_XSXX_HYZKM--����״����
      ,dg.MC as d_XSXX_HYZKM_MC--����
      ,d.XYZJM as d_XSXX_XYZJM--�����ڽ���
      ,dh.MC as d_XSXX_XYZJM_MC--����
      ,d.GATQWM as d_XSXX_GATQWM--�۰�̨������
      ,di.MC as d_XSXX_GATQWM_MC--����
      ,di.SM as d_XSXX_GATQWM_SM--˵��
      ,d.JKZKM as d_XSXX_JKZKM--����״����
      ,dj.MC as d_XSXX_JKZKM_MC--����
      ,dj.SM as d_XSXX_JKZKM_SM--˵��
      ,d.ZZMMM as d_XSXX_ZZMMM--������ò��
      ,dk.MC as d_XSXX_ZZMMM_MC--����
      ,dk.JC as d_XSXX_ZZMMM_JC--���
      ,d.HKSZDXZQHM as d_XSXX_HKSZDXZQHM--�������ڵ�����������
      ,dl.MC as d_XSXX_HKSZDXZQHM_MC--����
      ,d.HKLBM as d_XSXX_HKLBM--���������
      ,dm.MC as d_XSXX_HKLBM_MC--����
      ,d.SFSLDRK as d_XSXX_SFSLDRK--�Ƿ��������˿�
      ,dn.MC as d_XSXX_SFSLDRK_MC--����
      ,d.GJDQM as d_XSXX_GJDQM--����/����
      ,do.GJDQMCJC as d_XSXX_GJDQM_GJDQMCJC--����/�������Ƽ��
      ,do.EZMDM as d_XSXX_GJDQM_EZMDM--����ĸ����
      ,do.SZMDM as d_XSXX_GJDQM_SZMDM--����ĸ����
      ,d.TC as d_XSXX_TC--�س�
      ,d.XSLXDH as d_XSXX_XSLXDH--ѧ����ϵ�绰
      ,d.WLDZ as d_XSXX_WLDZ--�����ַ
      ,d.JSTXH as d_XSXX_JSTXH--��ʱͨѶ��
      ,d.DZXX as d_XSXX_DZXX--��������
      ,d.ZP as d_XSXX_ZP--��Ƭ(·��)

FROM dbo.EDU_ZZJX_07_A10_SXJD AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_07_A01_XXSXJH AS c ON a.SXJHID = c.ID /*ʵϰ�ƻ�ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZXS_01_01_XSXX AS d ON a.XSXXID = d.ID /*ѧ����ϢID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS cb ON c.SFSX = cb.DM /*�ƻ��Ƿ���Ч*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS db ON d.SFZJLXM = db.DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS dc ON d.XBM = dc.DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS dd ON d.XXM = dd.DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS de ON d.CSDM = de.DM /*��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS df ON d.MZM = df.DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS dg ON d.HYZKM = dg.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS dh ON d.XYZJM = dh.DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS di ON d.GATQWM = di.DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS dj ON d.JKZKM = dj.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS dk ON d.ZZMMM = dk.DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS dl ON d.HKSZDXZQHM = dl.DM /*�������ڵ�����������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS dm ON d.HKLBM = dm.DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS dn ON d.SFSLDRK = dn.DM /*�Ƿ��������˿�*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS do ON d.GJDQM = do.DM /*����/����*/
GO
