
--��ʦ��ѧ������ͳ�����������
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_05_02_JSJXGZLTJ_DISP]
AS
SELECT a.[SCHOOLID]--ѧУID
      ,a.[JSID]--��ʦID
      ,a.[XQID]--ѧ��ID
      ,a.[XQMC]--ѧ������
      ,a.[JSXM]--��ʦ����
      ,a.[RJKCMS]--�ν̿γ�����
      ,a.[LLZXS]--������ѧʱ
      ,a.[SJZXS]--ʵ����ѧʱ
      ,a.[QTZXS]--������ѧʱ
      ,a.[XSZS]--ѧ������
      ,a.[ZXFS]--��ѧ����
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
      ,c.TeacherGroupId as c_JZGJBSJ_TeacherGroupId--��ְ��������������� ��TeacherGroup�����
      ,c.PersonalCard1 as c_JZGJBSJ_PersonalCard1--��ְ��������������� ���˿�1
      ,c.PersonalCard2 as c_JZGJBSJ_PersonalCard2--��ְ��������������� ���˿�2
      ,c.PersonalCard3 as c_JZGJBSJ_PersonalCard3--��ְ��������������� ���˿�3
      ,d.SCHOOLID as d_XQ_SCHOOLID--ѧ�����ݱ� ѧУ��
      ,d.XNID as d_XQ_XNID--ѧ�����ݱ� ѧ��
      ,d.XQM as d_XQ_XQM--ѧ�����ݱ� ѧ����
      ,[db].MC as d_XQ_XQM_MC--ѧ�ڴ���� ����
      ,d.XQMC as d_XQ_XQMC--ѧ�����ݱ� ѧ������
      ,d.XQKSRQ as d_XQ_XQKSRQ--ѧ�����ݱ� ѧ�ڿ�ʼ����
      ,d.XQJSRQ as d_XQ_XQJSRQ--ѧ�����ݱ� ѧ�ڽ�������
      ,d.BaseProjectInfoID as d_XQ_BaseProjectInfoID--ѧ�����ݱ� ��BaseProjectInfo���

FROM dbo.EDU_ZZJX_05_02_JSJXGZLTJ AS a LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS c ON a.JSID = c.ID /*��ʦID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS d ON a.XQID = d.ID /*ѧ��ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
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
      dbo.EDU_JY_XQ AS [db] ON d.XQM = [db].DM /*ѧ����*/
GO
