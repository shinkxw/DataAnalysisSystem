
--��Ա��Ϣ��
CREATE VIEW [dbo].[VIEW_EDU_ZZJG_17_A01_DYXX_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[JZGJBSJID]--�̹�������ϢID
      ,a.[RDSJ]--�뵳ʱ��
      ,a.[RDDD]--�뵳�ص�
      ,a.[RDJSR]--�뵳������
      ,a.[DQZT]--��ǰ״̬
      ,a.[TJJSID]--��ӽ�ʦID
      ,a.[TJSJ]--���ʱ��
      ,a.[BZ]--��ע
      ,c.SCHOOLID as c_JZGJBSJ_SCHOOLID--��ְ��������������� ѧУ��
      ,c.GH as c_JZGJBSJ_GH--��ְ��������������� ����
      ,c.XM as c_JZGJBSJ_XM--��ְ��������������� ����
      ,c.YWXM as c_JZGJBSJ_YWXM--��ְ��������������� Ӣ������
      ,c.XMPY as c_JZGJBSJ_XMPY--��ְ��������������� ����ƴ��
      ,c.CYM as c_JZGJBSJ_CYM--��ְ��������������� ������
      ,c.SFZJLXM as c_JZGJBSJ_SFZJLXM--��ְ��������������� ���֤��������
      ,[cb].MC as c_JZGJBSJ_SFZJLXM_MC--���֤�����ʹ���� ����
      ,c.SFZJH as c_JZGJBSJ_SFZJH--��ְ��������������� ���֤����
      ,c.CSRQ as c_JZGJBSJ_CSRQ--��ְ��������������� ��������
      ,c.XBM as c_JZGJBSJ_XBM--��ְ��������������� �Ա���
      ,[cc].MC as c_JZGJBSJ_XBM_MC--�˵��Ա���� ����
      ,c.MZM as c_JZGJBSJ_MZM--��ְ��������������� ������
      ,[cd].MZMC as c_JZGJBSJ_MZM_MZMC--�й����������Ƶ�������ĸƴд���ʹ��� ��������
      ,[cd].ZMDM as c_JZGJBSJ_MZM_ZMDM--�й����������Ƶ�������ĸƴд���ʹ��� ��ĸ����
      ,c.XXM as c_JZGJBSJ_XXM--��ְ��������������� Ѫ����
      ,[ce].MC as c_JZGJBSJ_XXM_MC--Ѫ�ʹ���� ����
      ,[ce].JC as c_JZGJBSJ_XXM_JC--Ѫ�ʹ���� ���
      ,c.JKZKM as c_JZGJBSJ_JKZKM--��ְ��������������� ����״����
      ,[cf].MC as c_JZGJBSJ_JKZKM_MC--����״��1λ���ִ��� ����
      ,[cf].SM as c_JZGJBSJ_JKZKM_SM--����״��1λ���ִ��� ˵��
      ,c.HYZTM as c_JZGJBSJ_HYZTM--��ְ��������������� ����״̬��
      ,[cg].MC as c_JZGJBSJ_HYZTM_MC--����״������ ����
      ,c.ZZMMM as c_JZGJBSJ_ZZMMM--��ְ��������������� ������ò��
      ,[ch].MC as c_JZGJBSJ_ZZMMM_MC--������ò���� ����
      ,[ch].JC as c_JZGJBSJ_ZZMMM_JC--������ò���� ���
      ,c.GATQWM as c_JZGJBSJ_GATQWM--��ְ��������������� �۰�̨������
      ,[ci].MC as c_JZGJBSJ_GATQWM_MC--�۰�̨�������� ����
      ,[ci].SM as c_JZGJBSJ_GATQWM_SM--�۰�̨�������� ˵��
      ,c.JG as c_JZGJBSJ_JG--��ְ��������������� ����
      ,c.GJDQM as c_JZGJBSJ_GJDQM--��ְ��������������� ����/������
      ,[cj].GJDQMCJC as c_JZGJBSJ_GJDQM_GJDQMCJC--��������͵������ƴ��� ����/�������Ƽ��
      ,[cj].EZMDM as c_JZGJBSJ_GJDQM_EZMDM--��������͵������ƴ��� ����ĸ����
      ,[cj].SZMDM as c_JZGJBSJ_GJDQM_SZMDM--��������͵������ƴ��� ����ĸ����
      ,c.CSDXZQHM as c_JZGJBSJ_CSDXZQHM--��ְ��������������� ����������������
      ,[ck].MC as c_JZGJBSJ_CSDXZQHM_MC--�л����񹲺͹������������� ����
      ,c.XYZJM as c_JZGJBSJ_XYZJM--��ְ��������������� �����ڽ���
      ,[cl].MC as c_JZGJBSJ_XYZJM_MC--�ڽ��������� ����
      ,c.JZGHKSZDXZQHM as c_JZGJBSJ_JZGHKSZDXZQHM--��ְ��������������� ��ְ���������ڵ�����������
      ,[cm].MC as c_JZGJBSJ_JZGHKSZDXZQHM_MC--�л����񹲺͹������������� ����
      ,c.HKLBM as c_JZGJBSJ_HKLBM--��ְ��������������� ���������
      ,[cn].MC as c_JZGJBSJ_HKLBM_MC--���������� ����
      ,c.DQZZ as c_JZGJBSJ_DQZZ--��ְ��������������� ��ǰסַ
      ,c.DQZZYZBM as c_JZGJBSJ_DQZZYZBM--��ְ��������������� ��ǰסַ��������
      ,c.CJGZNY as c_JZGJBSJ_CJGZNY--��ְ��������������� �μӹ�������
      ,c.CJNY as c_JZGJBSJ_CJNY--��ְ��������������� �ӽ�����
      ,c.LXNY as c_JZGJBSJ_LXNY--��ְ��������������� ��У����
      ,c.BZLBM as c_JZGJBSJ_BZLBM--��ְ��������������� ���������
      ,[co].MC as c_JZGJBSJ_BZLBM_MC--����������� ����
      ,c.JZGLBM as c_JZGJBSJ_JZGLBM--��ְ��������������� ��ְ�������
      ,[cp].MC as c_JZGJBSJ_JZGLBM_MC--��ְ��������� ����
      ,[cp].SM as c_JZGJBSJ_JZGLBM_SM--��ְ��������� ˵��
      ,c.GWLBM as c_JZGJBSJ_GWLBM--��ְ��������������� ��λ�����
      ,[cq].MC as c_JZGJBSJ_GWLBM_MC--��λ������� ����
      ,c.SFJZJS as c_JZGJBSJ_SFJZJS--��ְ��������������� �Ƿ��ְ��ʦ
      ,[cr].MC as c_JZGJBSJ_SFJZJS_MC--�Ƿ��־����� ����
      ,c.SFSSXJS as c_JZGJBSJ_SFSSXJS--��ְ��������������� �Ƿ�˫ʦ�ͽ�ʦ
      ,[cs].MC as c_JZGJBSJ_SFSSXJS_MC--�Ƿ��־����� ����
      ,c.ZP as c_JZGJBSJ_ZP--��ְ��������������� ��Ƭ(·��)
      ,c.DQZTM as c_JZGJBSJ_DQZTM--��ְ��������������� ��ǰ״̬��
      ,[ct].MC as c_JZGJBSJ_DQZTM_MC--��ְ����ǰ״̬����� ����
      ,c.YDDH as c_JZGJBSJ_YDDH--��ְ��������������� �ƶ��绰
      ,c.GDDH as c_JZGJBSJ_GDDH--��ְ��������������� �̶��绰
      ,c.TXDZYZBM as c_JZGJBSJ_TXDZYZBM--��ְ��������������� ͨ�ŵ�ַ��������
      ,c.TXDZ as c_JZGJBSJ_TXDZ--��ְ��������������� ͨ�ŵ�ַ
      ,c.DZXX as c_JZGJBSJ_DZXX--��ְ��������������� ��������
      ,c.WLDZ as c_JZGJBSJ_WLDZ--��ְ��������������� �����ַ
      ,c.JSTXH as c_JZGJBSJ_JSTXH--��ְ��������������� ��ʱͨѶ��
      ,c.JSKQJS as c_JZGJBSJ_JSKQJS--��ְ��������������� ��ʦ���ڽ�ɫ
      ,c.FullTeacherName as c_JZGJBSJ_FullTeacherName--��ְ��������������� ������ʦ����
      ,c.RecordID as c_JZGJBSJ_RecordID--��ְ��������������� ��¼ID
      ,d.SCHOOLID as d_JZGJBSJ_SCHOOLID--��ְ��������������� ѧУ��
      ,d.GH as d_JZGJBSJ_GH--��ְ��������������� ����
      ,d.XM as d_JZGJBSJ_XM--��ְ��������������� ����
      ,d.YWXM as d_JZGJBSJ_YWXM--��ְ��������������� Ӣ������
      ,d.XMPY as d_JZGJBSJ_XMPY--��ְ��������������� ����ƴ��
      ,d.CYM as d_JZGJBSJ_CYM--��ְ��������������� ������
      ,d.SFZJLXM as d_JZGJBSJ_SFZJLXM--��ְ��������������� ���֤��������
      ,[db].MC as d_JZGJBSJ_SFZJLXM_MC--���֤�����ʹ���� ����
      ,d.SFZJH as d_JZGJBSJ_SFZJH--��ְ��������������� ���֤����
      ,d.CSRQ as d_JZGJBSJ_CSRQ--��ְ��������������� ��������
      ,d.XBM as d_JZGJBSJ_XBM--��ְ��������������� �Ա���
      ,[dc].MC as d_JZGJBSJ_XBM_MC--�˵��Ա���� ����
      ,d.MZM as d_JZGJBSJ_MZM--��ְ��������������� ������
      ,[dd].MZMC as d_JZGJBSJ_MZM_MZMC--�й����������Ƶ�������ĸƴд���ʹ��� ��������
      ,[dd].ZMDM as d_JZGJBSJ_MZM_ZMDM--�й����������Ƶ�������ĸƴд���ʹ��� ��ĸ����
      ,d.XXM as d_JZGJBSJ_XXM--��ְ��������������� Ѫ����
      ,[de].MC as d_JZGJBSJ_XXM_MC--Ѫ�ʹ���� ����
      ,[de].JC as d_JZGJBSJ_XXM_JC--Ѫ�ʹ���� ���
      ,d.JKZKM as d_JZGJBSJ_JKZKM--��ְ��������������� ����״����
      ,[df].MC as d_JZGJBSJ_JKZKM_MC--����״��1λ���ִ��� ����
      ,[df].SM as d_JZGJBSJ_JKZKM_SM--����״��1λ���ִ��� ˵��
      ,d.HYZTM as d_JZGJBSJ_HYZTM--��ְ��������������� ����״̬��
      ,[dg].MC as d_JZGJBSJ_HYZTM_MC--����״������ ����
      ,d.ZZMMM as d_JZGJBSJ_ZZMMM--��ְ��������������� ������ò��
      ,[dh].MC as d_JZGJBSJ_ZZMMM_MC--������ò���� ����
      ,[dh].JC as d_JZGJBSJ_ZZMMM_JC--������ò���� ���
      ,d.GATQWM as d_JZGJBSJ_GATQWM--��ְ��������������� �۰�̨������
      ,[di].MC as d_JZGJBSJ_GATQWM_MC--�۰�̨�������� ����
      ,[di].SM as d_JZGJBSJ_GATQWM_SM--�۰�̨�������� ˵��
      ,d.JG as d_JZGJBSJ_JG--��ְ��������������� ����
      ,d.GJDQM as d_JZGJBSJ_GJDQM--��ְ��������������� ����/������
      ,[dj].GJDQMCJC as d_JZGJBSJ_GJDQM_GJDQMCJC--��������͵������ƴ��� ����/�������Ƽ��
      ,[dj].EZMDM as d_JZGJBSJ_GJDQM_EZMDM--��������͵������ƴ��� ����ĸ����
      ,[dj].SZMDM as d_JZGJBSJ_GJDQM_SZMDM--��������͵������ƴ��� ����ĸ����
      ,d.CSDXZQHM as d_JZGJBSJ_CSDXZQHM--��ְ��������������� ����������������
      ,[dk].MC as d_JZGJBSJ_CSDXZQHM_MC--�л����񹲺͹������������� ����
      ,d.XYZJM as d_JZGJBSJ_XYZJM--��ְ��������������� �����ڽ���
      ,[dl].MC as d_JZGJBSJ_XYZJM_MC--�ڽ��������� ����
      ,d.JZGHKSZDXZQHM as d_JZGJBSJ_JZGHKSZDXZQHM--��ְ��������������� ��ְ���������ڵ�����������
      ,[dm].MC as d_JZGJBSJ_JZGHKSZDXZQHM_MC--�л����񹲺͹������������� ����
      ,d.HKLBM as d_JZGJBSJ_HKLBM--��ְ��������������� ���������
      ,[dn].MC as d_JZGJBSJ_HKLBM_MC--���������� ����
      ,d.DQZZ as d_JZGJBSJ_DQZZ--��ְ��������������� ��ǰסַ
      ,d.DQZZYZBM as d_JZGJBSJ_DQZZYZBM--��ְ��������������� ��ǰסַ��������
      ,d.CJGZNY as d_JZGJBSJ_CJGZNY--��ְ��������������� �μӹ�������
      ,d.CJNY as d_JZGJBSJ_CJNY--��ְ��������������� �ӽ�����
      ,d.LXNY as d_JZGJBSJ_LXNY--��ְ��������������� ��У����
      ,d.BZLBM as d_JZGJBSJ_BZLBM--��ְ��������������� ���������
      ,[do].MC as d_JZGJBSJ_BZLBM_MC--����������� ����
      ,d.JZGLBM as d_JZGJBSJ_JZGLBM--��ְ��������������� ��ְ�������
      ,[dp].MC as d_JZGJBSJ_JZGLBM_MC--��ְ��������� ����
      ,[dp].SM as d_JZGJBSJ_JZGLBM_SM--��ְ��������� ˵��
      ,d.GWLBM as d_JZGJBSJ_GWLBM--��ְ��������������� ��λ�����
      ,[dq].MC as d_JZGJBSJ_GWLBM_MC--��λ������� ����
      ,d.SFJZJS as d_JZGJBSJ_SFJZJS--��ְ��������������� �Ƿ��ְ��ʦ
      ,[dr].MC as d_JZGJBSJ_SFJZJS_MC--�Ƿ��־����� ����
      ,d.SFSSXJS as d_JZGJBSJ_SFSSXJS--��ְ��������������� �Ƿ�˫ʦ�ͽ�ʦ
      ,[ds].MC as d_JZGJBSJ_SFSSXJS_MC--�Ƿ��־����� ����
      ,d.ZP as d_JZGJBSJ_ZP--��ְ��������������� ��Ƭ(·��)
      ,d.DQZTM as d_JZGJBSJ_DQZTM--��ְ��������������� ��ǰ״̬��
      ,[dt].MC as d_JZGJBSJ_DQZTM_MC--��ְ����ǰ״̬����� ����
      ,d.YDDH as d_JZGJBSJ_YDDH--��ְ��������������� �ƶ��绰
      ,d.GDDH as d_JZGJBSJ_GDDH--��ְ��������������� �̶��绰
      ,d.TXDZYZBM as d_JZGJBSJ_TXDZYZBM--��ְ��������������� ͨ�ŵ�ַ��������
      ,d.TXDZ as d_JZGJBSJ_TXDZ--��ְ��������������� ͨ�ŵ�ַ
      ,d.DZXX as d_JZGJBSJ_DZXX--��ְ��������������� ��������
      ,d.WLDZ as d_JZGJBSJ_WLDZ--��ְ��������������� �����ַ
      ,d.JSTXH as d_JZGJBSJ_JSTXH--��ְ��������������� ��ʱͨѶ��
      ,d.JSKQJS as d_JZGJBSJ_JSKQJS--��ְ��������������� ��ʦ���ڽ�ɫ
      ,d.FullTeacherName as d_JZGJBSJ_FullTeacherName--��ְ��������������� ������ʦ����
      ,d.RecordID as d_JZGJBSJ_RecordID--��ְ��������������� ��¼ID

FROM dbo.EDU_ZZJG_17_A01_DYXX AS a LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS c ON a.JZGJBSJID = c.ID /*�̹�������ϢID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS d ON a.TJJSID = d.ID /*��ӽ�ʦID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS [cb] ON c.SFZJLXM = [cb].DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS [cc] ON c.XBM = [cc].DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS [cd] ON c.MZM = [cd].DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS [ce] ON c.XXM = [ce].DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS [cf] ON c.JKZKM = [cf].DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS [cg] ON c.HYZTM = [cg].DM /*����״̬��*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS [ch] ON c.ZZMMM = [ch].DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS [ci] ON c.GATQWM = [ci].DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS [cj] ON c.GJDQM = [cj].DM /*����/������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [ck] ON c.CSDXZQHM = [ck].DM /*����������������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS [cl] ON c.XYZJM = [cl].DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [cm] ON c.JZGHKSZDXZQHM = [cm].DM /*��ְ���������ڵ�����������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS [cn] ON c.HKLBM = [cn].DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_BZLB AS [co] ON c.BZLBM = [co].DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGLB AS [cp] ON c.JZGLBM = [cp].DM /*��ְ�������*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWLB AS [cq] ON c.GWLBM = [cq].DM /*��λ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [cr] ON c.SFJZJS = [cr].DM /*�Ƿ��ְ��ʦ*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [cs] ON c.SFSSXJS = [cs].DM /*�Ƿ�˫ʦ�ͽ�ʦ*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGDQZT AS [ct] ON c.DQZTM = [ct].DM /*��ǰ״̬��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS [db] ON d.SFZJLXM = [db].DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS [dc] ON d.XBM = [dc].DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS [dd] ON d.MZM = [dd].DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS [de] ON d.XXM = [de].DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS [df] ON d.JKZKM = [df].DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS [dg] ON d.HYZTM = [dg].DM /*����״̬��*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS [dh] ON d.ZZMMM = [dh].DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS [di] ON d.GATQWM = [di].DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS [dj] ON d.GJDQM = [dj].DM /*����/������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [dk] ON d.CSDXZQHM = [dk].DM /*����������������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS [dl] ON d.XYZJM = [dl].DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [dm] ON d.JZGHKSZDXZQHM = [dm].DM /*��ְ���������ڵ�����������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS [dn] ON d.HKLBM = [dn].DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_BZLB AS [do] ON d.BZLBM = [do].DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGLB AS [dp] ON d.JZGLBM = [dp].DM /*��ְ�������*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWLB AS [dq] ON d.GWLBM = [dq].DM /*��λ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [dr] ON d.SFJZJS = [dr].DM /*�Ƿ��ְ��ʦ*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [ds] ON d.SFSSXJS = [ds].DM /*�Ƿ�˫ʦ�ͽ�ʦ*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGDQZT AS [dt] ON d.DQZTM = [dt].DM /*��ǰ״̬��*/
GO
