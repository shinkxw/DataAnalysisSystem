
--��ְ����չ��(���)
CREATE VIEW [dbo].[VIEW_EDU_ZXJZ_01_A05_JZGKZSH_DISP]
AS
SELECT a.[JZGID]--�̹�������ϢID
      ,a.[SCHOOLID]--ѧУID
      ,a.[GL]--����
      ,a.[JL]--����
      ,a.[GJRZNX]--�߼���ְ����
      ,a.[ZJRZNX]--�м���ְ����
      ,a.[CJRZNX]--������ְ����
      ,a.[RZNX]--��ְ����
      ,a.[SSDZB]--������֧��
      ,a.[BYYX]--��ҵԺУ
      ,a.[XXJL]--ѧϰ����
      ,a.[GZJL]--��������
      ,a.[HJQK]--�����
      ,a.[ZC]--ְ��
      ,b.SCHOOLID as b_JZGJBSJ_SCHOOLID--��ְ��������������� ѧУ��
      ,b.GH as b_JZGJBSJ_GH--��ְ��������������� ����
      ,b.XM as b_JZGJBSJ_XM--��ְ��������������� ����
      ,b.YWXM as b_JZGJBSJ_YWXM--��ְ��������������� Ӣ������
      ,b.XMPY as b_JZGJBSJ_XMPY--��ְ��������������� ����ƴ��
      ,b.CYM as b_JZGJBSJ_CYM--��ְ��������������� ������
      ,b.XBM as b_JZGJBSJ_XBM--��ְ��������������� �Ա���
      ,[bb].MC as b_JZGJBSJ_XBM_MC--�˵��Ա���� ����
      ,b.CSRQ as b_JZGJBSJ_CSRQ--��ְ��������������� ��������
      ,b.CSDM as b_JZGJBSJ_CSDM--��ְ��������������� ��������
      ,[bc].MC as b_JZGJBSJ_CSDM_MC--�л����񹲺͹������������� ����
      ,b.JG as b_JZGJBSJ_JG--��ְ��������������� ����
      ,b.MZM as b_JZGJBSJ_MZM--��ְ��������������� ������
      ,[bd].MZMC as b_JZGJBSJ_MZM_MZMC--�й����������Ƶ�������ĸƴд���ʹ��� ��������
      ,[bd].ZMDM as b_JZGJBSJ_MZM_ZMDM--�й����������Ƶ�������ĸƴд���ʹ��� ��ĸ����
      ,b.GJDQM as b_JZGJBSJ_GJDQM--��ְ��������������� ����/������
      ,[be].GJDQMCJC as b_JZGJBSJ_GJDQM_GJDQMCJC--��������͵������ƴ��� ����/�������Ƽ��
      ,[be].EZMDM as b_JZGJBSJ_GJDQM_EZMDM--��������͵������ƴ��� ����ĸ����
      ,[be].SZMDM as b_JZGJBSJ_GJDQM_SZMDM--��������͵������ƴ��� ����ĸ����
      ,b.SFZJLXM as b_JZGJBSJ_SFZJLXM--��ְ��������������� ���֤��������
      ,[bf].MC as b_JZGJBSJ_SFZJLXM_MC--���֤�����ʹ���� ����
      ,b.SFZJH as b_JZGJBSJ_SFZJH--��ְ��������������� ���֤����
      ,b.HYZKM as b_JZGJBSJ_HYZKM--��ְ��������������� ����״����
      ,[bg].MC as b_JZGJBSJ_HYZKM_MC--����״������ ����
      ,b.GATQWM as b_JZGJBSJ_GATQWM--��ְ��������������� �۰�̨������
      ,[bh].MC as b_JZGJBSJ_GATQWM_MC--�۰�̨�������� ����
      ,[bh].SM as b_JZGJBSJ_GATQWM_SM--�۰�̨�������� ˵��
      ,b.ZZMMM as b_JZGJBSJ_ZZMMM--��ְ��������������� ������ò��
      ,[bi].MC as b_JZGJBSJ_ZZMMM_MC--������ò���� ����
      ,[bi].JC as b_JZGJBSJ_ZZMMM_JC--������ò���� ���
      ,b.JKZKM as b_JZGJBSJ_JKZKM--��ְ��������������� ����״����
      ,[bj].MC as b_JZGJBSJ_JKZKM_MC--����״��1λ���ִ��� ����
      ,[bj].SM as b_JZGJBSJ_JKZKM_SM--����״��1λ���ִ��� ˵��
      ,b.XYZJM as b_JZGJBSJ_XYZJM--��ְ��������������� �����ڽ���
      ,[bk].MC as b_JZGJBSJ_XYZJM_MC--�ڽ��������� ����
      ,b.XXM as b_JZGJBSJ_XXM--��ְ��������������� Ѫ����
      ,[bl].MC as b_JZGJBSJ_XXM_MC--Ѫ�ʹ���� ����
      ,[bl].JC as b_JZGJBSJ_XXM_JC--Ѫ�ʹ���� ���
      ,b.ZP as b_JZGJBSJ_ZP--��ְ��������������� ��Ƭ
      ,b.SFZJYXQ as b_JZGJBSJ_SFZJYXQ--��ְ��������������� ���֤����Ч��
      ,b.JGH as b_JZGJBSJ_JGH--��ְ��������������� ������
      ,b.JTZZ as b_JZGJBSJ_JTZZ--��ְ��������������� ��ͥסַ
      ,b.XZZ as b_JZGJBSJ_XZZ--��ְ��������������� ��סַ
      ,b.HKSZD as b_JZGJBSJ_HKSZD--��ְ��������������� �������ڵ�
      ,b.HKXZM as b_JZGJBSJ_HKXZM--��ְ��������������� ����������
      ,[bm].MC as b_JZGJBSJ_HKXZM_MC--���������� ����
      ,b.XLM as b_JZGJBSJ_XLM--��ְ��������������� ѧ����
      ,[bn].MC as b_JZGJBSJ_XLM_MC--ѧ������ ����
      ,b.GZNY as b_JZGJBSJ_GZNY--��ְ��������������� �μӹ�������
      ,b.LXNY as b_JZGJBSJ_LXNY--��ְ��������������� ��У����
      ,b.CJNY as b_JZGJBSJ_CJNY--��ְ��������������� �ӽ�����
      ,b.BZLBM as b_JZGJBSJ_BZLBM--��ְ��������������� ���������
      ,[bo].MC as b_JZGJBSJ_BZLBM_MC--��Сѧ����������� ����
      ,b.DABH as b_JZGJBSJ_DABH--��ְ��������������� �������
      ,b.DAWB as b_JZGJBSJ_DAWB--��ְ��������������� �����ı�
      ,b.TXDZ as b_JZGJBSJ_TXDZ--��ְ��������������� ͨ�ŵ�ַ
      ,b.LXDH as b_JZGJBSJ_LXDH--��ְ��������������� ��ϵ�绰
      ,b.YZBM as b_JZGJBSJ_YZBM--��ְ��������������� ��������
      ,b.DZXX as b_JZGJBSJ_DZXX--��ְ��������������� ��������
      ,b.ZYDZ as b_JZGJBSJ_ZYDZ--��ְ��������������� ��ҳ��ַ
      ,b.TC as b_JZGJBSJ_TC--��ְ��������������� �س�
      ,b.GWZYM as b_JZGJBSJ_GWZYM--��ְ��������������� ��λְҵ��
      ,[bp].MC as b_JZGJBSJ_GWZYM_MC--��λְҵ����� ����
      ,b.ZYRKXD as b_JZGJBSJ_ZYRKXD--��ְ��������������� ��Ҫ�ο�ѧ��
      ,[bq].MC as b_JZGJBSJ_ZYRKXD_MC--�ο�ѧ�δ���� ����

FROM dbo.EDU_ZXJZ_01_A05_JZGKZSH AS a LEFT OUTER JOIN
      dbo.EDU_ZXJZ_01_01_JZGJBSJ AS b ON a.JZGID = b.ID /*�̹�������ϢID*/ AND a.SCHOOLID = b.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS [bb] ON b.XBM = [bb].DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [bc] ON b.CSDM = [bc].DM /*��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS [bd] ON b.MZM = [bd].DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS [be] ON b.GJDQM = [be].DM /*����/������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS [bf] ON b.SFZJLXM = [bf].DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS [bg] ON b.HYZKM = [bg].DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS [bh] ON b.GATQWM = [bh].DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS [bi] ON b.ZZMMM = [bi].DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS [bj] ON b.JKZKM = [bj].DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS [bk] ON b.XYZJM = [bk].DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS [bl] ON b.XXM = [bl].DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS [bm] ON b.HKXZM = [bm].DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_GB_XL AS [bn] ON b.XLM = [bn].DM /*ѧ����*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXBZLB AS [bo] ON b.BZLBM = [bo].DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWZY AS [bp] ON b.GWZYM = [bp].DM /*��λְҵ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_RKXD AS [bq] ON b.ZYRKXD = [bq].DM /*��Ҫ�ο�ѧ��*/
GO
