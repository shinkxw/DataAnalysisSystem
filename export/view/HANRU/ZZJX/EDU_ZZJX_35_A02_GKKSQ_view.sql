
--����������
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_35_A02_GKKSQ_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[KCMC]--�γ�����
      ,a.[SKSJ]--�Ͽ�ʱ��
      ,a.[SKDD]--�Ͽεص�
      ,a.[KCJJ]--�γ̼��
      ,a.[TKXZID]--����С��ID
      ,a.[SHZT]--���״̬
      ,a.[SFGS]--�Ƿ�ʾ
      ,a.[SQRID]--������ID
      ,a.[SHRID]--�����ID
      ,a.[RJXK]--�ν�ѧ��
      ,a.[XQ]--����
      ,a.[JC]--�ڴ�
      ,a.[KCBJ]--���ΰ༶
      ,c.SCHOOLID as c_TKXZ_SCHOOLID--����С�� ѧУ
      ,c.XZMC as c_TKXZ_XZMC--����С�� С������
      ,c.XZCY as c_TKXZ_XZCY--����С�� С���Ա
      ,c.XZCYMC as c_TKXZ_XZCYMC--����С�� С���Ա����
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
      ,e.SCHOOLID as e_USER_SCHOOLID--Ӧ��ϵͳ�û��� ѧУID
      ,e.APPID as e_USER_APPID--Ӧ��ϵͳ�û��� Ӧ��ID
      ,'' as e_USER_PWD--Ӧ��ϵͳ�û��� ����
      ,e.STATUS as e_USER_STATUS--Ӧ��ϵͳ�û��� �û�״̬
      ,e.USERTYPE as e_USER_USERTYPE--Ӧ��ϵͳ�û��� �û����
      ,e.USERID as e_USER_USERID--Ӧ��ϵͳ�û��� �û�ID
      ,e.ROLEIDLst as e_USER_ROLEIDLst--Ӧ��ϵͳ�û��� �û���ɫ
      ,e.XM as e_USER_XM--Ӧ��ϵͳ�û��� ����
      ,e.XB as e_USER_XB--Ӧ��ϵͳ�û��� �Ա�
      ,e.QQ as e_USER_QQ--Ӧ��ϵͳ�û��� QQ
      ,e.DZYJ as e_USER_DZYJ--Ӧ��ϵͳ�û��� �����ʼ�
      ,e.LXDH as e_USER_LXDH--Ӧ��ϵͳ�û��� ��ϵ�绰
      ,e.ZJDLSJ as e_USER_ZJDLSJ--Ӧ��ϵͳ�û��� ���һ�ε�¼ʱ��
      ,e.DLCGCS as e_USER_DLCGCS--Ӧ��ϵͳ�û��� ��¼�ɹ�����
      ,e.YHCJSJ as e_USER_YHCJSJ--Ӧ��ϵͳ�û��� �û�����ʱ��
      ,e.YHRY as e_USER_YHRY--Ӧ��ϵͳ�û��� �û�����
      ,e.YHJF as e_USER_YHJF--Ӧ��ϵͳ�û��� �û�����

FROM dbo.EDU_ZZJX_35_A02_GKKSQ AS a LEFT OUTER JOIN
      dbo.EDU_ZZJX_35_A01_TKXZ AS c ON a.TKXZID = c.ID /*����С��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS d ON a.SQRID = d.ID /*������ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS e ON a.SHRID = e.LOGINNAME /*�����ID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
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
