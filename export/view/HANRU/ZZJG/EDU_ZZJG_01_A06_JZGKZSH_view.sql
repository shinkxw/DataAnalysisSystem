
--��ְ����չ��(���)
CREATE VIEW [dbo].[VIEW_EDU_ZZJG_01_A06_JZGKZSH_DISP]
AS
SELECT a.[JZGJBSJID]--�̹�������ϢID
      ,a.[SCHOOLID]--ѧУID
      ,a.[JL]--����
      ,a.[GL]--����
      ,a.[GZJY]--��������
      ,a.[LDJN]--�Ͷ�����
      ,a.[XXJL]--ѧϰ����
      ,a.[WJGLSJ]--δ�ǹ���ʱ��
      ,a.[RDSJ]--�뵳���ţ�ʱ��
      ,a.[JRBDWSJ]--���뱾��λʱ��
      ,a.[XZZW]--����ְ��
      ,a.[ZYJSZG]--רҵ�����ʸ�
      ,a.[ZYJSZGHDSJ]--רҵ�����ʸ�ȡ��ʱ��
      ,a.[XL]--ѧ��
      ,a.[BYYXXJZY]--��ҵԺУϵ��רҵ
      ,a.[BYSJ]--��ҵʱ��
      ,a.[XW]--ѧλ
      ,a.[ZZJYXL]--��ְ����ѧ��
      ,a.[ZZJYBYYXXJZY]--��ְ������ҵԺУϵ��רҵ
      ,a.[ZZJYXW]--��ְ����ѧλ
      ,a.[ZZJYBYSJ]--��ְ������ҵʱ��
      ,a.[PTHDJ]--��ͨ���ȼ�
      ,a.[JSZGZZL]--��ʦ�ʸ�֤����
      ,a.[XPYGW]--��Ƹ�ø�λ
      ,a.[GWDJ]--��λ�ȼ�
      ,b.SCHOOLID as b_JZGJBSJ_SCHOOLID--��ְ��������������� ѧУ��
      ,b.GH as b_JZGJBSJ_GH--��ְ��������������� ����
      ,b.XM as b_JZGJBSJ_XM--��ְ��������������� ����
      ,b.YWXM as b_JZGJBSJ_YWXM--��ְ��������������� Ӣ������
      ,b.XMPY as b_JZGJBSJ_XMPY--��ְ��������������� ����ƴ��
      ,b.CYM as b_JZGJBSJ_CYM--��ְ��������������� ������
      ,b.SFZJLXM as b_JZGJBSJ_SFZJLXM--��ְ��������������� ���֤��������
      ,[bb].MC as b_JZGJBSJ_SFZJLXM_MC--���֤�����ʹ���� ����
      ,b.SFZJH as b_JZGJBSJ_SFZJH--��ְ��������������� ���֤����
      ,b.CSRQ as b_JZGJBSJ_CSRQ--��ְ��������������� ��������
      ,b.XBM as b_JZGJBSJ_XBM--��ְ��������������� �Ա���
      ,[bc].MC as b_JZGJBSJ_XBM_MC--�˵��Ա���� ����
      ,b.MZM as b_JZGJBSJ_MZM--��ְ��������������� ������
      ,[bd].MZMC as b_JZGJBSJ_MZM_MZMC--�й����������Ƶ�������ĸƴд���ʹ��� ��������
      ,[bd].ZMDM as b_JZGJBSJ_MZM_ZMDM--�й����������Ƶ�������ĸƴд���ʹ��� ��ĸ����
      ,b.XXM as b_JZGJBSJ_XXM--��ְ��������������� Ѫ����
      ,[be].MC as b_JZGJBSJ_XXM_MC--Ѫ�ʹ���� ����
      ,[be].JC as b_JZGJBSJ_XXM_JC--Ѫ�ʹ���� ���
      ,b.JKZKM as b_JZGJBSJ_JKZKM--��ְ��������������� ����״����
      ,[bf].MC as b_JZGJBSJ_JKZKM_MC--����״��1λ���ִ��� ����
      ,[bf].SM as b_JZGJBSJ_JKZKM_SM--����״��1λ���ִ��� ˵��
      ,b.HYZTM as b_JZGJBSJ_HYZTM--��ְ��������������� ����״̬��
      ,[bg].MC as b_JZGJBSJ_HYZTM_MC--����״������ ����
      ,b.ZZMMM as b_JZGJBSJ_ZZMMM--��ְ��������������� ������ò��
      ,[bh].MC as b_JZGJBSJ_ZZMMM_MC--������ò���� ����
      ,[bh].JC as b_JZGJBSJ_ZZMMM_JC--������ò���� ���
      ,b.GATQWM as b_JZGJBSJ_GATQWM--��ְ��������������� �۰�̨������
      ,[bi].MC as b_JZGJBSJ_GATQWM_MC--�۰�̨�������� ����
      ,[bi].SM as b_JZGJBSJ_GATQWM_SM--�۰�̨�������� ˵��
      ,b.JG as b_JZGJBSJ_JG--��ְ��������������� ����
      ,b.GJDQM as b_JZGJBSJ_GJDQM--��ְ��������������� ����/������
      ,[bj].GJDQMCJC as b_JZGJBSJ_GJDQM_GJDQMCJC--��������͵������ƴ��� ����/�������Ƽ��
      ,[bj].EZMDM as b_JZGJBSJ_GJDQM_EZMDM--��������͵������ƴ��� ����ĸ����
      ,[bj].SZMDM as b_JZGJBSJ_GJDQM_SZMDM--��������͵������ƴ��� ����ĸ����
      ,b.CSDXZQHM as b_JZGJBSJ_CSDXZQHM--��ְ��������������� ����������������
      ,[bk].MC as b_JZGJBSJ_CSDXZQHM_MC--�л����񹲺͹������������� ����
      ,b.XYZJM as b_JZGJBSJ_XYZJM--��ְ��������������� �����ڽ���
      ,[bl].MC as b_JZGJBSJ_XYZJM_MC--�ڽ��������� ����
      ,b.JZGHKSZDXZQHM as b_JZGJBSJ_JZGHKSZDXZQHM--��ְ��������������� ��ְ���������ڵ�����������
      ,[bm].MC as b_JZGJBSJ_JZGHKSZDXZQHM_MC--�л����񹲺͹������������� ����
      ,b.HKLBM as b_JZGJBSJ_HKLBM--��ְ��������������� ���������
      ,[bn].MC as b_JZGJBSJ_HKLBM_MC--���������� ����
      ,b.DQZZ as b_JZGJBSJ_DQZZ--��ְ��������������� ��ǰסַ
      ,b.DQZZYZBM as b_JZGJBSJ_DQZZYZBM--��ְ��������������� ��ǰסַ��������
      ,b.CJGZNY as b_JZGJBSJ_CJGZNY--��ְ��������������� �μӹ�������
      ,b.CJNY as b_JZGJBSJ_CJNY--��ְ��������������� �ӽ�����
      ,b.LXNY as b_JZGJBSJ_LXNY--��ְ��������������� ��У����
      ,b.BZLBM as b_JZGJBSJ_BZLBM--��ְ��������������� ���������
      ,[bo].MC as b_JZGJBSJ_BZLBM_MC--����������� ����
      ,b.JZGLBM as b_JZGJBSJ_JZGLBM--��ְ��������������� ��ְ�������
      ,[bp].MC as b_JZGJBSJ_JZGLBM_MC--��ְ��������� ����
      ,[bp].SM as b_JZGJBSJ_JZGLBM_SM--��ְ��������� ˵��
      ,b.GWLBM as b_JZGJBSJ_GWLBM--��ְ��������������� ��λ�����
      ,[bq].MC as b_JZGJBSJ_GWLBM_MC--��λ������� ����
      ,b.SFJZJS as b_JZGJBSJ_SFJZJS--��ְ��������������� �Ƿ��ְ��ʦ
      ,[br].MC as b_JZGJBSJ_SFJZJS_MC--�Ƿ��־����� ����
      ,b.SFSSXJS as b_JZGJBSJ_SFSSXJS--��ְ��������������� �Ƿ�˫ʦ�ͽ�ʦ
      ,[bs].MC as b_JZGJBSJ_SFSSXJS_MC--�Ƿ��־����� ����
      ,b.ZP as b_JZGJBSJ_ZP--��ְ��������������� ��Ƭ(·��)
      ,b.DQZTM as b_JZGJBSJ_DQZTM--��ְ��������������� ��ǰ״̬��
      ,[bt].MC as b_JZGJBSJ_DQZTM_MC--��ְ����ǰ״̬����� ����
      ,b.YDDH as b_JZGJBSJ_YDDH--��ְ��������������� �ƶ��绰
      ,b.GDDH as b_JZGJBSJ_GDDH--��ְ��������������� �̶��绰
      ,b.TXDZYZBM as b_JZGJBSJ_TXDZYZBM--��ְ��������������� ͨ�ŵ�ַ��������
      ,b.TXDZ as b_JZGJBSJ_TXDZ--��ְ��������������� ͨ�ŵ�ַ
      ,b.DZXX as b_JZGJBSJ_DZXX--��ְ��������������� ��������
      ,b.WLDZ as b_JZGJBSJ_WLDZ--��ְ��������������� �����ַ
      ,b.JSTXH as b_JZGJBSJ_JSTXH--��ְ��������������� ��ʱͨѶ��

FROM dbo.EDU_ZZJG_01_A06_JZGKZSH AS a LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS b ON a.JZGJBSJID = b.ID /*�̹�������ϢID*/ AND a.SCHOOLID = b.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS [bb] ON b.SFZJLXM = [bb].DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS [bc] ON b.XBM = [bc].DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS [bd] ON b.MZM = [bd].DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS [be] ON b.XXM = [be].DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS [bf] ON b.JKZKM = [bf].DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS [bg] ON b.HYZTM = [bg].DM /*����״̬��*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS [bh] ON b.ZZMMM = [bh].DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS [bi] ON b.GATQWM = [bi].DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS [bj] ON b.GJDQM = [bj].DM /*����/������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [bk] ON b.CSDXZQHM = [bk].DM /*����������������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS [bl] ON b.XYZJM = [bl].DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [bm] ON b.JZGHKSZDXZQHM = [bm].DM /*��ְ���������ڵ�����������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS [bn] ON b.HKLBM = [bn].DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_BZLB AS [bo] ON b.BZLBM = [bo].DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGLB AS [bp] ON b.JZGLBM = [bp].DM /*��ְ�������*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWLB AS [bq] ON b.GWLBM = [bq].DM /*��λ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [br] ON b.SFJZJS = [br].DM /*�Ƿ��ְ��ʦ*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [bs] ON b.SFSSXJS = [bs].DM /*�Ƿ�˫ʦ�ͽ�ʦ*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGDQZT AS [bt] ON b.DQZTM = [bt].DM /*��ǰ״̬��*/
GO
