
--�������ݱ�
CREATE VIEW [dbo].[VIEW_EDU_ZZZS_01_01_ZSXX_DISP]
AS
SELECT a.[XSXXID]--ѧ����Ϣ���ݱ�
      ,a.[SCHOOLID]--ѧУ��
      ,a.[ZKZH]--׼��֤��
      ,a.[KSH]--������
      ,a.[KQXZQHM]--��������������
      ,a.[RXNY]--��ѧ����
      ,a.[YSWGYZM]--Ӧ�����������
      ,a.[BKZYM1]--����רҵ��1
      ,a.[BKZYM2]--����רҵ��2
      ,a.[BKZYM3]--����רҵ��3
      ,a.[BKZYM4]--����רҵ��4
      ,a.[BKZYM5]--����רҵ��5
      ,a.[BKZYM6]--����רҵ��6
      ,a.[KSFSM]--���Է�ʽ��
      ,a.[BYZX]--��ҵ��ѧ
      ,a.[BYZXYZBM]--��ҵ��ѧ��������
      ,a.[KSTC]--�����س�
      ,a.[JLYCC]--������ʹ�
      ,a.[JSHJ]--������
      ,a.[SHGZ]--��Ṥ��
      ,a.[TJJL]--������
      ,a.[JZBS]--���岡ʷ
      ,a.[KSJWBS]--����������ʷ
      ,a.[SG]--���
      ,a.[KSSL]--��������
      ,b.SCHOOLID as b_XSXX_SCHOOLID--ѧ����Ϣ���ݱ� ѧУ��
      ,b.XH as b_XSXX_XH--ѧ����Ϣ���ݱ� ѧ��
      ,b.XM as b_XSXX_XM--ѧ����Ϣ���ݱ� ����
      ,b.YWXM as b_XSXX_YWXM--ѧ����Ϣ���ݱ� Ӣ������
      ,b.XMPY as b_XSXX_XMPY--ѧ����Ϣ���ݱ� ����ƴ��
      ,b.CYM as b_XSXX_CYM--ѧ����Ϣ���ݱ� ������
      ,b.SFZJLXM as b_XSXX_SFZJLXM--ѧ����Ϣ���ݱ� ���֤��������
      ,bb.MC as b_XSXX_SFZJLXM_MC--���֤�����ʹ���� ����
      ,b.SFZJH as b_XSXX_SFZJH--ѧ����Ϣ���ݱ� ���֤����
      ,b.XBM as b_XSXX_XBM--ѧ����Ϣ���ݱ� �Ա���
      ,bc.MC as b_XSXX_XBM_MC--�˵��Ա���� ����
      ,b.XXM as b_XSXX_XXM--ѧ����Ϣ���ݱ� Ѫ����
      ,bd.MC as b_XSXX_XXM_MC--Ѫ�ʹ���� ����
      ,bd.JC as b_XSXX_XXM_JC--Ѫ�ʹ���� ���
      ,b.CSRQ as b_XSXX_CSRQ--ѧ����Ϣ���ݱ� ��������
      ,b.CSDM as b_XSXX_CSDM--ѧ����Ϣ���ݱ� ��������
      ,be.MC as b_XSXX_CSDM_MC--�л����񹲺͹������������� ����
      ,b.JG as b_XSXX_JG--ѧ����Ϣ���ݱ� ����
      ,b.MZM as b_XSXX_MZM--ѧ����Ϣ���ݱ� ������
      ,bf.MZMC as b_XSXX_MZM_MZMC--�й����������Ƶ�������ĸƴд���ʹ��� ��������
      ,bf.ZMDM as b_XSXX_MZM_ZMDM--�й����������Ƶ�������ĸƴд���ʹ��� ��ĸ����
      ,b.HYZKM as b_XSXX_HYZKM--ѧ����Ϣ���ݱ� ����״����
      ,bg.MC as b_XSXX_HYZKM_MC--����״������ ����
      ,b.XYZJM as b_XSXX_XYZJM--ѧ����Ϣ���ݱ� �����ڽ���
      ,bh.MC as b_XSXX_XYZJM_MC--�ڽ��������� ����
      ,b.GATQWM as b_XSXX_GATQWM--ѧ����Ϣ���ݱ� �۰�̨������
      ,bi.MC as b_XSXX_GATQWM_MC--�۰�̨�������� ����
      ,bi.SM as b_XSXX_GATQWM_SM--�۰�̨�������� ˵��
      ,b.JKZKM as b_XSXX_JKZKM--ѧ����Ϣ���ݱ� ����״����
      ,bj.MC as b_XSXX_JKZKM_MC--����״��1λ���ִ��� ����
      ,bj.SM as b_XSXX_JKZKM_SM--����״��1λ���ִ��� ˵��
      ,b.ZZMMM as b_XSXX_ZZMMM--ѧ����Ϣ���ݱ� ������ò��
      ,bk.MC as b_XSXX_ZZMMM_MC--������ò���� ����
      ,bk.JC as b_XSXX_ZZMMM_JC--������ò���� ���
      ,b.HKSZDXZQHM as b_XSXX_HKSZDXZQHM--ѧ����Ϣ���ݱ� �������ڵ�����������
      ,bl.MC as b_XSXX_HKSZDXZQHM_MC--�л����񹲺͹������������� ����
      ,b.HKLBM as b_XSXX_HKLBM--ѧ����Ϣ���ݱ� ���������
      ,bm.MC as b_XSXX_HKLBM_MC--���������� ����
      ,b.SFSLDRK as b_XSXX_SFSLDRK--ѧ����Ϣ���ݱ� �Ƿ��������˿�
      ,bn.MC as b_XSXX_SFSLDRK_MC--�Ƿ��־����� ����
      ,b.GJDQM as b_XSXX_GJDQM--ѧ����Ϣ���ݱ� ����/����
      ,bo.GJDQMCJC as b_XSXX_GJDQM_GJDQMCJC--��������͵������ƴ��� ����/�������Ƽ��
      ,bo.EZMDM as b_XSXX_GJDQM_EZMDM--��������͵������ƴ��� ����ĸ����
      ,bo.SZMDM as b_XSXX_GJDQM_SZMDM--��������͵������ƴ��� ����ĸ����
      ,b.TC as b_XSXX_TC--ѧ����Ϣ���ݱ� �س�
      ,b.XSLXDH as b_XSXX_XSLXDH--ѧ����Ϣ���ݱ� ѧ����ϵ�绰
      ,b.WLDZ as b_XSXX_WLDZ--ѧ����Ϣ���ݱ� �����ַ
      ,b.JSTXH as b_XSXX_JSTXH--ѧ����Ϣ���ݱ� ��ʱͨѶ��
      ,b.DZXX as b_XSXX_DZXX--ѧ����Ϣ���ݱ� ��������
      ,b.ZP as b_XSXX_ZP--ѧ����Ϣ���ݱ� ��Ƭ(·��)
      ,d.MC as d_ZHRMGHGXZQH_MC--�л����񹲺͹������������� ����
      ,e.MC as e_YZMCEZM_MC--�������ƴ���2��ĸ���� ����
      ,f.MC as f_KSFS_MC--���Է�ʽ����� ����
      ,f.SM as f_KSFS_SM--���Է�ʽ����� ˵��

FROM dbo.EDU_ZZZS_01_01_ZSXX AS a LEFT OUTER JOIN
      dbo.EDU_ZZXS_01_01_XSXX AS b ON a.XSXXID = b.ID /*ѧ����Ϣ���ݱ�*/ AND a.SCHOOLID = b.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS d ON a.KQXZQHM = d.DM /*��������������*/ LEFT OUTER JOIN
      dbo.EDU_GB_YZMCEZM AS e ON a.YSWGYZM = e.DM /*Ӧ�����������*/ LEFT OUTER JOIN
      dbo.EDU_JY_KSFS AS f ON a.KSFSM = f.DM /*���Է�ʽ��*/ LEFT OUTER JOIN
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
