
--ѧ����ͥ��Ϣ���ݱ�
CREATE VIEW [dbo].[VIEW_EDU_ZXXS_02_A01_XSJTXX_DISP]
AS
SELECT a.[XSXXID]--ѧ����Ϣ���ݱ�
      ,a.[SCHOOLID]--ѧУ��
      ,a.[JTZZ]--��ͥסַ
      ,a.[JTYZBM]--��ͥ��������
      ,a.[JTDH]--��ͥ�绰
      ,a.[JTLXR]--��ͥ��ϵ��
      ,a.[JTDZXX]--��ͥ��������
      ,a.[JTRK]--��ͥ�˿�
      ,a.[JTZYSRLY]--��ͥ��Ҫ������Դ
      ,a.[JTYSRJE]--��ͥ��������
      ,a.[JTNSRJE]--��ͥ��������
      ,a.[LJZJHCZ]--��������վ
      ,b.SCHOOLID as b_XSXX_SCHOOLID--ѧУ��
      ,b.XH as b_XSXX_XH--ѧ��
      ,b.XM as b_XSXX_XM--����
      ,b.YWXM as b_XSXX_YWXM--Ӣ������
      ,b.XMPY as b_XSXX_XMPY--����ƴ��
      ,b.CYM as b_XSXX_CYM--������
      ,b.XBM as b_XSXX_XBM--�Ա���
      ,bb.MC as b_XSXX_XBM_MC--����
      ,b.CSRQ as b_XSXX_CSRQ--��������
      ,b.CSDM as b_XSXX_CSDM--��������
      ,bc.MC as b_XSXX_CSDM_MC--����
      ,b.JG as b_XSXX_JG--����
      ,b.MZM as b_XSXX_MZM--������
      ,bd.MZMC as b_XSXX_MZM_MZMC--��������
      ,bd.ZMDM as b_XSXX_MZM_ZMDM--��ĸ����
      ,b.GJDQM as b_XSXX_GJDQM--����/������
      ,be.GJDQMCJC as b_XSXX_GJDQM_GJDQMCJC--����/�������Ƽ��
      ,be.EZMDM as b_XSXX_GJDQM_EZMDM--����ĸ����
      ,be.SZMDM as b_XSXX_GJDQM_SZMDM--����ĸ����
      ,b.SFZJLXM as b_XSXX_SFZJLXM--���֤��������
      ,bf.MC as b_XSXX_SFZJLXM_MC--����
      ,b.SFZJH as b_XSXX_SFZJH--���֤����
      ,b.HYZKM as b_XSXX_HYZKM--����״����
      ,bg.MC as b_XSXX_HYZKM_MC--����
      ,b.GATQWM as b_XSXX_GATQWM--�۰�̨������
      ,bh.MC as b_XSXX_GATQWM_MC--����
      ,bh.SM as b_XSXX_GATQWM_SM--˵��
      ,b.ZZMMM as b_XSXX_ZZMMM--������ò��
      ,bi.MC as b_XSXX_ZZMMM_MC--����
      ,bi.JC as b_XSXX_ZZMMM_JC--���
      ,b.JKZKM as b_XSXX_JKZKM--����״����
      ,bj.MC as b_XSXX_JKZKM_MC--����
      ,bj.SM as b_XSXX_JKZKM_SM--˵��
      ,b.XYZJM as b_XSXX_XYZJM--�����ڽ���
      ,bk.MC as b_XSXX_XYZJM_MC--����
      ,b.XXM as b_XSXX_XXM--Ѫ����
      ,bl.MC as b_XSXX_XXM_MC--����
      ,bl.JC as b_XSXX_XXM_JC--���
      ,b.ZP as b_XSXX_ZP--��Ƭ
      ,b.SFZJYXQ as b_XSXX_SFZJYXQ--���֤����Ч��
      ,b.DSZYBZ as b_XSXX_DSZYBZ--������Ů��־
      ,bm.MC as b_XSXX_DSZYBZ_MC--����
      ,b.RXNY as b_XSXX_RXNY--��ѧ����
      ,b.NJ as b_XSXX_NJ--�꼶
      ,b.BH as b_XSXX_BH--���
      ,b.XSLBM as b_XSXX_XSLBM--ѧ�������
      ,bn.MC as b_XSXX_XSLBM_MC--����
      ,bn.SM as b_XSXX_XSLBM_SM--˵��
      ,b.XZZ as b_XSXX_XZZ--��סַ
      ,b.HKSZD as b_XSXX_HKSZD--�������ڵ�
      ,b.HKXZM as b_XSXX_HKXZM--����������
      ,bo.MC as b_XSXX_HKXZM_MC--����
      ,b.SFLDRK as b_XSXX_SFLDRK--�Ƿ������˿�
      ,bp.MC as b_XSXX_SFLDRK_MC--����
      ,b.TC as b_XSXX_TC--�س�
      ,b.LXDH as b_XSXX_LXDH--��ϵ�绰
      ,b.TXDZ as b_XSXX_TXDZ--ͨ�ŵ�ַ
      ,b.YZBM as b_XSXX_YZBM--��������
      ,b.DZXX as b_XSXX_DZXX--��������
      ,b.ZYDZ as b_XSXX_ZYDZ--��ҳ��ַ
      ,b.XJH as b_XSXX_XJH--ѧ����
      ,c.SCHOOLNAME as c_SCHOOL_SCHOOLNAME--ѧУ����
      ,c.SCHOOLTYPE as c_SCHOOL_SCHOOLTYPE--ѧУ����
      ,c.XNID as c_SCHOOL_XNID--ѧ��ID
      ,c.XQID as c_SCHOOL_XQID--ѧ��ID
      ,c.MatchURL as c_SCHOOL_MatchURL--ƥ��url
      ,c.LogLevel as c_SCHOOL_LogLevel--��־����

FROM dbo.EDU_ZXXS_02_A01_XSJTXX AS a LEFT OUTER JOIN
      dbo.EDU_ZXXS_01_01_XSXX AS b ON a.XSXXID = b.ID /*ѧ����Ϣ���ݱ�*/ AND a.SCHOOLID = b.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS c ON a.SCHOOLID = c.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS bb ON b.XBM = bb.DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS bc ON b.CSDM = bc.DM /*��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS bd ON b.MZM = bd.DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS be ON b.GJDQM = be.DM /*����/������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS bf ON b.SFZJLXM = bf.DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS bg ON b.HYZKM = bg.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS bh ON b.GATQWM = bh.DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS bi ON b.ZZMMM = bi.DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS bj ON b.JKZKM = bj.DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS bk ON b.XYZJM = bk.DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS bl ON b.XXM = bl.DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS bm ON b.DSZYBZ = bm.DM /*������Ů��־*/ LEFT OUTER JOIN
      dbo.EDU_JY_XSLB AS bn ON b.XSLBM = bn.DM /*ѧ�������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS bo ON b.HKXZM = bo.DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS bp ON b.SFLDRK = bp.DM /*�Ƿ������˿�*/
GO
