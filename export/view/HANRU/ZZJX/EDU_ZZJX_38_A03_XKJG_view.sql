
--ѡ�ν����
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_38_A03_XKJG_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ��
      ,a.[XQID]--ѧ��ID
      ,a.[XSXXID]--ѧ��ID
      ,a.[JXBID]--��ѧ�༶ID
      ,a.[KCQDID]--�γ��嵥ID
      ,a.[ZT]--״̬
      ,c.SCHOOLID as c_XQ_SCHOOLID--ѧ�����ݱ� ѧУ��
      ,c.XNID as c_XQ_XNID--ѧ�����ݱ� ѧ��
      ,c.XQM as c_XQ_XQM--ѧ�����ݱ� ѧ����
      ,[cb].MC as c_XQ_XQM_MC--ѧ�ڴ���� ����
      ,c.XQMC as c_XQ_XQMC--ѧ�����ݱ� ѧ������
      ,c.XQKSRQ as c_XQ_XQKSRQ--ѧ�����ݱ� ѧ�ڿ�ʼ����
      ,c.XQJSRQ as c_XQ_XQJSRQ--ѧ�����ݱ� ѧ�ڽ�������
      ,c.BaseProjectInfoID as c_XQ_BaseProjectInfoID--ѧ�����ݱ� ��BaseProjectInfo���
      ,d.SCHOOLID as d_XSXX_SCHOOLID--ѧ����Ϣ���ݱ� ѧУ��
      ,d.XH as d_XSXX_XH--ѧ����Ϣ���ݱ� ѧ��
      ,d.XM as d_XSXX_XM--ѧ����Ϣ���ݱ� ����
      ,d.YWXM as d_XSXX_YWXM--ѧ����Ϣ���ݱ� Ӣ������
      ,d.XMPY as d_XSXX_XMPY--ѧ����Ϣ���ݱ� ����ƴ��
      ,d.CYM as d_XSXX_CYM--ѧ����Ϣ���ݱ� ������
      ,d.SFZJLXM as d_XSXX_SFZJLXM--ѧ����Ϣ���ݱ� ���֤��������
      ,[db].MC as d_XSXX_SFZJLXM_MC--���֤�����ʹ���� ����
      ,d.SFZJH as d_XSXX_SFZJH--ѧ����Ϣ���ݱ� ���֤����
      ,d.XBM as d_XSXX_XBM--ѧ����Ϣ���ݱ� �Ա���
      ,[dc].MC as d_XSXX_XBM_MC--�˵��Ա���� ����
      ,d.XXM as d_XSXX_XXM--ѧ����Ϣ���ݱ� Ѫ����
      ,[dd].MC as d_XSXX_XXM_MC--Ѫ�ʹ���� ����
      ,[dd].JC as d_XSXX_XXM_JC--Ѫ�ʹ���� ���
      ,d.CSRQ as d_XSXX_CSRQ--ѧ����Ϣ���ݱ� ��������
      ,d.CSDM as d_XSXX_CSDM--ѧ����Ϣ���ݱ� ��������
      ,[de].MC as d_XSXX_CSDM_MC--�л����񹲺͹������������� ����
      ,d.JG as d_XSXX_JG--ѧ����Ϣ���ݱ� ����
      ,d.MZM as d_XSXX_MZM--ѧ����Ϣ���ݱ� ������
      ,[df].MZMC as d_XSXX_MZM_MZMC--�й����������Ƶ�������ĸƴд���ʹ��� ��������
      ,[df].ZMDM as d_XSXX_MZM_ZMDM--�й����������Ƶ�������ĸƴд���ʹ��� ��ĸ����
      ,d.HYZKM as d_XSXX_HYZKM--ѧ����Ϣ���ݱ� ����״����
      ,[dg].MC as d_XSXX_HYZKM_MC--����״������ ����
      ,d.XYZJM as d_XSXX_XYZJM--ѧ����Ϣ���ݱ� �����ڽ���
      ,[dh].MC as d_XSXX_XYZJM_MC--�ڽ��������� ����
      ,d.GATQWM as d_XSXX_GATQWM--ѧ����Ϣ���ݱ� �۰�̨������
      ,[di].MC as d_XSXX_GATQWM_MC--�۰�̨�������� ����
      ,[di].SM as d_XSXX_GATQWM_SM--�۰�̨�������� ˵��
      ,d.JKZKM as d_XSXX_JKZKM--ѧ����Ϣ���ݱ� ����״����
      ,[dj].MC as d_XSXX_JKZKM_MC--����״��1λ���ִ��� ����
      ,[dj].SM as d_XSXX_JKZKM_SM--����״��1λ���ִ��� ˵��
      ,d.ZZMMM as d_XSXX_ZZMMM--ѧ����Ϣ���ݱ� ������ò��
      ,[dk].MC as d_XSXX_ZZMMM_MC--������ò���� ����
      ,[dk].JC as d_XSXX_ZZMMM_JC--������ò���� ���
      ,d.HKSZDXZQHM as d_XSXX_HKSZDXZQHM--ѧ����Ϣ���ݱ� �������ڵ�����������
      ,[dl].MC as d_XSXX_HKSZDXZQHM_MC--�л����񹲺͹������������� ����
      ,d.HKLBM as d_XSXX_HKLBM--ѧ����Ϣ���ݱ� ���������
      ,[dm].MC as d_XSXX_HKLBM_MC--���������� ����
      ,d.SFSLDRK as d_XSXX_SFSLDRK--ѧ����Ϣ���ݱ� �Ƿ��������˿�
      ,[dn].MC as d_XSXX_SFSLDRK_MC--�Ƿ��־����� ����
      ,d.GJDQM as d_XSXX_GJDQM--ѧ����Ϣ���ݱ� ����/����
      ,[do].GJDQMCJC as d_XSXX_GJDQM_GJDQMCJC--��������͵������ƴ��� ����/�������Ƽ��
      ,[do].EZMDM as d_XSXX_GJDQM_EZMDM--��������͵������ƴ��� ����ĸ����
      ,[do].SZMDM as d_XSXX_GJDQM_SZMDM--��������͵������ƴ��� ����ĸ����
      ,d.TC as d_XSXX_TC--ѧ����Ϣ���ݱ� �س�
      ,d.XSLXDH as d_XSXX_XSLXDH--ѧ����Ϣ���ݱ� ѧ����ϵ�绰
      ,d.WLDZ as d_XSXX_WLDZ--ѧ����Ϣ���ݱ� �����ַ
      ,d.JSTXH as d_XSXX_JSTXH--ѧ����Ϣ���ݱ� ��ʱͨѶ��
      ,d.DZXX as d_XSXX_DZXX--ѧ����Ϣ���ݱ� ��������
      ,d.ZP as d_XSXX_ZP--ѧ����Ϣ���ݱ� ��Ƭ(·��)
      ,d.RXXQID as d_XSXX_RXXQID--ѧ����Ϣ���ݱ� ��ѧѧ��ID
      ,d.NFCKH as d_XSXX_NFCKH--ѧ����Ϣ���ݱ� NFC����
      ,e.SCHOOLID as e_ZZJXB_SCHOOLID--��ְ��ѧ��� ѧУ��
      ,e.ZZXQID as e_ZZJXB_ZZXQID--��ְ��ѧ��� У��ID
      ,e.XQID as e_ZZJXB_XQID--��ְ��ѧ��� ѧ��ID
      ,e.ZYXXID as e_ZZJXB_ZYXXID--��ְ��ѧ��� רҵID
      ,e.NJID as e_ZZJXB_NJID--��ְ��ѧ��� �꼶ID
      ,e.JXBMC as e_ZZJXB_JXBMC--��ְ��ѧ��� ��ѧ�༶����
      ,e.TEACHERID1 as e_ZZJXB_TEACHERID1--��ְ��ѧ��� ������ʦID
      ,e.TEACHERID2 as e_ZZJXB_TEACHERID2--��ְ��ѧ��� ������ʦID
      ,e.KCQDID as e_ZZJXB_KCQDID--��ְ��ѧ��� �γ��嵥ID
      ,e.KCH as e_ZZJXB_KCH--��ְ��ѧ��� �γ̺�
      ,e.CLASSROOM as e_ZZJXB_CLASSROOM--��ְ��ѧ��� ����ID
      ,e.ZDBJ as e_ZZJXB_ZDBJ--��ְ��ѧ��� ָ���༶
      ,e.ZDBJMC as e_ZZJXB_ZDBJMC--��ְ��ѧ��� ָ���༶����
      ,e.RS as e_ZZJXB_RS--��ְ��ѧ��� ����
      ,e.T1NAME as e_ZZJXB_T1NAME--��ְ��ѧ��� ������ʦ����
      ,e.T2NAME as e_ZZJXB_T2NAME--��ְ��ѧ��� ������ʦ����
      ,e.SKFS as e_ZZJXB_SKFS--��ְ��ѧ��� �ڿη�ʽ
      ,f.SCHOOLID as f_JXJHKCQD_SCHOOLID--��ѧ�ƻ��γ��嵥��������� ѧУID
      ,f.JXJHID as f_JXJHKCQD_JXJHID--��ѧ�ƻ��γ��嵥��������� ��ѧ�ƻ�ID
      ,f.KCH as f_JXJHKCQD_KCH--��ѧ�ƻ��γ��嵥��������� �γ̺�
      ,f.JHBH as f_JXJHKCQD_JHBH--��ѧ�ƻ��γ��嵥��������� �ƻ����
      ,f.XQID as f_JXJHKCQD_XQID--��ѧ�ƻ��γ��嵥��������� ѧ��ID
      ,f.KCMC as f_JXJHKCQD_KCMC--��ѧ�ƻ��γ��嵥��������� �γ�����
      ,f.YXKC as f_JXJHKCQD_YXKC--��ѧ�ƻ��γ��嵥��������� Ԥ�޿γ�
      ,f.SFHXKC as f_JXJHKCQD_SFHXKC--��ѧ�ƻ��γ��嵥��������� �Ƿ���ģ��Ǹɣ�
      ,[fb].MC as f_JXJHKCQD_SFHXKC_MC--�Ƿ��־����� ����
      ,f.KCFLM as f_JXJHKCQD_KCFLM--��ѧ�ƻ��γ��嵥��������� �γ̷�����
      ,[fc].MC as f_JXJHKCQD_KCFLM_MC--�γ̷������ ����
      ,f.KCSXM as f_JXJHKCQD_KCSXM--��ѧ�ƻ��γ��嵥��������� �γ�������
      ,[fd].MC as f_JXJHKCQD_KCSXM_MC--�γ����Դ���� ����
      ,[fd].SM as f_JXJHKCQD_KCSXM_SM--�γ����Դ���� ˵��
      ,f.ZXXQ as f_JXJHKCQD_ZXXQ--��ѧ�ƻ��γ��嵥��������� ִ��ѧ��
      ,f.ZKS as f_JXJHKCQD_ZKS--��ѧ�ƻ��γ��嵥��������� �ܿ�ʱ
      ,f.LLKS as f_JXJHKCQD_LLKS--��ѧ�ƻ��γ��嵥��������� ���ۿ�ʱ
      ,f.SJKS as f_JXJHKCQD_SJKS--��ѧ�ƻ��γ��嵥��������� ʵ����ʱ
      ,f.XF as f_JXJHKCQD_XF--��ѧ�ƻ��γ��嵥��������� ѧ��
      ,f.XFRDHGX as f_JXJHKCQD_XFRDHGX--��ѧ�ƻ��γ��嵥��������� ѧ���϶��ϸ���
      ,f.JXDG as f_JXJHKCQD_JXDG--��ѧ�ƻ��γ��嵥��������� ��ѧ���

FROM dbo.EDU_ZZJX_38_A03_XKJG AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS c ON a.XQID = c.ID /*ѧ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZZXS_01_01_XSXX AS d ON a.XSXXID = d.ID /*ѧ��ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_38_A01_ZZJXB AS e ON a.JXBID = e.ID /*��ѧ�༶ID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_03_03_JXJHKCQD AS f ON a.KCQDID = f.ID /*�γ��嵥ID*/ AND a.SCHOOLID = f.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS [cb] ON c.XQM = [cb].DM /*ѧ����*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS [db] ON d.SFZJLXM = [db].DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS [dc] ON d.XBM = [dc].DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS [dd] ON d.XXM = [dd].DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [de] ON d.CSDM = [de].DM /*��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS [df] ON d.MZM = [df].DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS [dg] ON d.HYZKM = [dg].DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS [dh] ON d.XYZJM = [dh].DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS [di] ON d.GATQWM = [di].DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS [dj] ON d.JKZKM = [dj].DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS [dk] ON d.ZZMMM = [dk].DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [dl] ON d.HKSZDXZQHM = [dl].DM /*�������ڵ�����������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS [dm] ON d.HKLBM = [dm].DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [dn] ON d.SFSLDRK = [dn].DM /*�Ƿ��������˿�*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS [do] ON d.GJDQM = [do].DM /*����/����*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [fb] ON f.SFHXKC = [fb].DM /*�Ƿ���ģ��Ǹɣ�*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_KCFL AS [fc] ON f.KCFLM = [fc].DM /*�γ̷�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_KCSX AS [fd] ON f.KCSXM = [fd].DM /*�γ�������*/
GO
