
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
      ,b.SCHOOLID as b_XSXX_SCHOOLID--ѧ��������������� ѧУ��
      ,b.XH as b_XSXX_XH--ѧ��������������� ѧ��
      ,b.XM as b_XSXX_XM--ѧ��������������� ����
      ,b.YWXM as b_XSXX_YWXM--ѧ��������������� Ӣ������
      ,b.XMPY as b_XSXX_XMPY--ѧ��������������� ����ƴ��
      ,b.CYM as b_XSXX_CYM--ѧ��������������� ������
      ,b.XBM as b_XSXX_XBM--ѧ��������������� �Ա���
      ,bb.MC as b_XSXX_XBM_MC--�˵��Ա���� ����
      ,b.CSRQ as b_XSXX_CSRQ--ѧ��������������� ��������
      ,b.CSDM as b_XSXX_CSDM--ѧ��������������� ��������
      ,bc.MC as b_XSXX_CSDM_MC--�л����񹲺͹������������� ����
      ,b.JG as b_XSXX_JG--ѧ��������������� ����
      ,b.MZM as b_XSXX_MZM--ѧ��������������� ������
      ,bd.MZMC as b_XSXX_MZM_MZMC--�й����������Ƶ�������ĸƴд���ʹ��� ��������
      ,bd.ZMDM as b_XSXX_MZM_ZMDM--�й����������Ƶ�������ĸƴд���ʹ��� ��ĸ����
      ,b.GJDQM as b_XSXX_GJDQM--ѧ��������������� ����/������
      ,be.GJDQMCJC as b_XSXX_GJDQM_GJDQMCJC--��������͵������ƴ��� ����/�������Ƽ��
      ,be.EZMDM as b_XSXX_GJDQM_EZMDM--��������͵������ƴ��� ����ĸ����
      ,be.SZMDM as b_XSXX_GJDQM_SZMDM--��������͵������ƴ��� ����ĸ����
      ,b.SFZJLXM as b_XSXX_SFZJLXM--ѧ��������������� ���֤��������
      ,bf.MC as b_XSXX_SFZJLXM_MC--���֤�����ʹ���� ����
      ,b.SFZJH as b_XSXX_SFZJH--ѧ��������������� ���֤����
      ,b.HYZKM as b_XSXX_HYZKM--ѧ��������������� ����״����
      ,bg.MC as b_XSXX_HYZKM_MC--����״������ ����
      ,b.GATQWM as b_XSXX_GATQWM--ѧ��������������� �۰�̨������
      ,bh.MC as b_XSXX_GATQWM_MC--�۰�̨�������� ����
      ,bh.SM as b_XSXX_GATQWM_SM--�۰�̨�������� ˵��
      ,b.ZZMMM as b_XSXX_ZZMMM--ѧ��������������� ������ò��
      ,bi.MC as b_XSXX_ZZMMM_MC--������ò���� ����
      ,bi.JC as b_XSXX_ZZMMM_JC--������ò���� ���
      ,b.JKZKM as b_XSXX_JKZKM--ѧ��������������� ����״����
      ,bj.MC as b_XSXX_JKZKM_MC--����״��1λ���ִ��� ����
      ,bj.SM as b_XSXX_JKZKM_SM--����״��1λ���ִ��� ˵��
      ,b.XYZJM as b_XSXX_XYZJM--ѧ��������������� �����ڽ���
      ,bk.MC as b_XSXX_XYZJM_MC--�ڽ��������� ����
      ,b.XXM as b_XSXX_XXM--ѧ��������������� Ѫ����
      ,bl.MC as b_XSXX_XXM_MC--Ѫ�ʹ���� ����
      ,bl.JC as b_XSXX_XXM_JC--Ѫ�ʹ���� ���
      ,b.ZP as b_XSXX_ZP--ѧ��������������� ��Ƭ
      ,b.SFZJYXQ as b_XSXX_SFZJYXQ--ѧ��������������� ���֤����Ч��
      ,b.DSZYBZ as b_XSXX_DSZYBZ--ѧ��������������� ������Ů��־
      ,bm.MC as b_XSXX_DSZYBZ_MC--�Ƿ��־����� ����
      ,b.RXNY as b_XSXX_RXNY--ѧ��������������� ��ѧ����
      ,b.NJ as b_XSXX_NJ--ѧ��������������� �꼶
      ,b.BH as b_XSXX_BH--ѧ��������������� ���
      ,b.XSLBM as b_XSXX_XSLBM--ѧ��������������� ѧ�������
      ,bn.MC as b_XSXX_XSLBM_MC--ѧ��������� ����
      ,bn.SM as b_XSXX_XSLBM_SM--ѧ��������� ˵��
      ,b.XZZ as b_XSXX_XZZ--ѧ��������������� ��סַ
      ,b.HKSZD as b_XSXX_HKSZD--ѧ��������������� �������ڵ�
      ,b.HKXZM as b_XSXX_HKXZM--ѧ��������������� ����������
      ,bo.MC as b_XSXX_HKXZM_MC--���������� ����
      ,b.SFLDRK as b_XSXX_SFLDRK--ѧ��������������� �Ƿ������˿�
      ,bp.MC as b_XSXX_SFLDRK_MC--�Ƿ��־����� ����
      ,b.TC as b_XSXX_TC--ѧ��������������� �س�
      ,b.LXDH as b_XSXX_LXDH--ѧ��������������� ��ϵ�绰
      ,b.TXDZ as b_XSXX_TXDZ--ѧ��������������� ͨ�ŵ�ַ
      ,b.YZBM as b_XSXX_YZBM--ѧ��������������� ��������
      ,b.DZXX as b_XSXX_DZXX--ѧ��������������� ��������
      ,b.ZYDZ as b_XSXX_ZYDZ--ѧ��������������� ��ҳ��ַ
      ,b.XJH as b_XSXX_XJH--ѧ��������������� ѧ����
      ,c.SCHOOLNAME as c_SCHOOL_SCHOOLNAME--ѧУ���ñ� ѧУ����
      ,c.SCHOOLTYPE as c_SCHOOL_SCHOOLTYPE--ѧУ���ñ� ѧУ����
      ,c.XNID as c_SCHOOL_XNID--ѧУ���ñ� ѧ��ID
      ,c.XQID as c_SCHOOL_XQID--ѧУ���ñ� ѧ��ID
      ,c.MatchURL as c_SCHOOL_MatchURL--ѧУ���ñ� ƥ��url
      ,c.LogLevel as c_SCHOOL_LogLevel--ѧУ���ñ� ��־����

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
