
--�¶ȿ������ȱ�
CREATE VIEW [dbo].[VIEW_EDU_ZZFC_10_A04_YDKHPB_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[XQID]--ѧ��ID
      ,a.[YF]--�·�
      ,a.[BJID]--�༶ID
      ,a.[QSID]--����ID
      ,a.[PBJG]--���Ƚ��
      ,a.[TJJSID]--��ӽ�ʦID
      ,c.SCHOOLID as c_XQ_SCHOOLID--ѧ�����ݱ� ѧУ��
      ,c.XNID as c_XQ_XNID--ѧ�����ݱ� ѧ��
      ,c.XQM as c_XQ_XQM--ѧ�����ݱ� ѧ����
      ,[cb].MC as c_XQ_XQM_MC--ѧ�ڴ���� ����
      ,c.XQMC as c_XQ_XQMC--ѧ�����ݱ� ѧ������
      ,c.XQKSRQ as c_XQ_XQKSRQ--ѧ�����ݱ� ѧ�ڿ�ʼ����
      ,c.XQJSRQ as c_XQ_XQJSRQ--ѧ�����ݱ� ѧ�ڽ�������
      ,c.BaseProjectInfoID as c_XQ_BaseProjectInfoID--ѧ�����ݱ� ��BaseProjectInfo���
      ,d.SCHOOLID as d_ZZBJ_SCHOOLID--ѧУ�༶���ݱ� ѧУ��
      ,d.ZYXXID as d_ZZBJ_ZYXXID--ѧУ�༶���ݱ� רҵ������Ϣ
      ,d.ZZNJID as d_ZZBJ_ZZNJID--ѧУ�༶���ݱ� ѧУ�꼶���ݱ�
      ,d.XZBMC as d_ZZBJ_XZBMC--ѧУ�༶���ݱ� ����������
      ,d.JBNY as d_ZZBJ_JBNY--ѧУ�༶���ݱ� ��������
      ,d.BZRGH as d_ZZBJ_BZRGH--ѧУ�༶���ݱ� �����ι���
      ,d.JSBH as d_ZZBJ_JSBH--ѧУ�༶���ݱ� ���ұ��
      ,d.NANSRS as d_ZZBJ_NANSRS--ѧУ�༶���ݱ� ��������
      ,d.NVSRS as d_ZZBJ_NVSRS--ѧУ�༶���ݱ� Ů������
      ,d.ZRS as d_ZZBJ_ZRS--ѧУ�༶���ݱ� ������
      ,d.BZXH as d_ZZBJ_BZXH--ѧУ�༶���ݱ� �೤ѧ��
      ,d.JXJH as d_ZZBJ_JXJH--ѧУ�༶���ݱ� ��ѧ�ƻ�
      ,d.JGH as d_ZZBJ_JGH--ѧУ�༶���ݱ� ������
      ,d.XQDM as d_ZZBJ_XQDM--ѧУ�༶���ݱ� У������
      ,d.BZRID as d_ZZBJ_BZRID--ѧУ�༶���ݱ� ������ID
      ,d.PLSX as d_ZZBJ_PLSX--ѧУ�༶���ݱ� ����˳��
      ,d.FullClassName as d_ZZBJ_FullClassName--ѧУ�༶���ݱ� �����༶����
      ,d.RecordID as d_ZZBJ_RecordID--ѧУ�༶���ݱ� ��¼ID
      ,d.ClassGroupId as d_ZZBJ_ClassGroupId--ѧУ�༶���ݱ� ��ClassGroup�����
      ,e.SCHOOLID as e_XSSS_SCHOOLID--ѧ������������� ѧУ��
      ,e.SSLID as e_XSSS_SSLID--ѧ������������� ����¥ID
      ,e.SSLBM as e_XSSS_SSLBM--ѧ������������� ����¥���
      ,e.FJBM as e_XSSS_FJBM--ѧ������������� ������
      ,e.RZXB as e_XSSS_RZXB--ѧ������������� ��ס�Ա�
      ,[eb].MC as e_XSSS_RZXB_MC--�˵��Ա���� ����
      ,e.SFKY as e_XSSS_SFKY--ѧ������������� �Ƿ����
      ,[ec].MC as e_XSSS_SFKY_MC--�Ƿ��־����� ����
      ,e.KZRS as e_XSSS_KZRS--ѧ������������� ��ס����
      ,e.WLDK as e_XSSS_WLDK--ѧ������������� ����˿�
      ,e.AZDSJ as e_XSSS_AZDSJ--ѧ������������� ��װ���ӻ�
      ,[ed].MC as e_XSSS_AZDSJ_MC--�Ƿ��־����� ����
      ,e.DHDK as e_XSSS_DHDK--ѧ������������� �绰�˿�
      ,e.DHHM as e_XSSS_DHHM--ѧ������������� �绰����
      ,e.SBDS as e_XSSS_SBDS--ѧ������������� ˮ�����
      ,e.DBDS as e_XSSS_DBDS--ѧ������������� ������
      ,e.SSBZ as e_XSSS_SSBZ--ѧ������������� ���ᱸע
      ,e.SZLZ as e_XSSS_SZLZ--ѧ������������� ����¥��
      ,e.SSM as e_XSSS_SSM--ѧ������������� ������
      ,f.SCHOOLID as f_JZGJBSJ_SCHOOLID--��ְ��������������� ѧУ��
      ,f.GH as f_JZGJBSJ_GH--��ְ��������������� ����
      ,f.XM as f_JZGJBSJ_XM--��ְ��������������� ����
      ,f.YWXM as f_JZGJBSJ_YWXM--��ְ��������������� Ӣ������
      ,f.XMPY as f_JZGJBSJ_XMPY--��ְ��������������� ����ƴ��
      ,f.CYM as f_JZGJBSJ_CYM--��ְ��������������� ������
      ,f.SFZJLXM as f_JZGJBSJ_SFZJLXM--��ְ��������������� ���֤��������
      ,[fb].MC as f_JZGJBSJ_SFZJLXM_MC--���֤�����ʹ���� ����
      ,f.SFZJH as f_JZGJBSJ_SFZJH--��ְ��������������� ���֤����
      ,f.CSRQ as f_JZGJBSJ_CSRQ--��ְ��������������� ��������
      ,f.XBM as f_JZGJBSJ_XBM--��ְ��������������� �Ա���
      ,[fc].MC as f_JZGJBSJ_XBM_MC--�˵��Ա���� ����
      ,f.MZM as f_JZGJBSJ_MZM--��ְ��������������� ������
      ,[fd].MZMC as f_JZGJBSJ_MZM_MZMC--�й����������Ƶ�������ĸƴд���ʹ��� ��������
      ,[fd].ZMDM as f_JZGJBSJ_MZM_ZMDM--�й����������Ƶ�������ĸƴд���ʹ��� ��ĸ����
      ,f.XXM as f_JZGJBSJ_XXM--��ְ��������������� Ѫ����
      ,[fe].MC as f_JZGJBSJ_XXM_MC--Ѫ�ʹ���� ����
      ,[fe].JC as f_JZGJBSJ_XXM_JC--Ѫ�ʹ���� ���
      ,f.JKZKM as f_JZGJBSJ_JKZKM--��ְ��������������� ����״����
      ,[ff].MC as f_JZGJBSJ_JKZKM_MC--����״��1λ���ִ��� ����
      ,[ff].SM as f_JZGJBSJ_JKZKM_SM--����״��1λ���ִ��� ˵��
      ,f.HYZTM as f_JZGJBSJ_HYZTM--��ְ��������������� ����״̬��
      ,[fg].MC as f_JZGJBSJ_HYZTM_MC--����״������ ����
      ,f.ZZMMM as f_JZGJBSJ_ZZMMM--��ְ��������������� ������ò��
      ,[fh].MC as f_JZGJBSJ_ZZMMM_MC--������ò���� ����
      ,[fh].JC as f_JZGJBSJ_ZZMMM_JC--������ò���� ���
      ,f.GATQWM as f_JZGJBSJ_GATQWM--��ְ��������������� �۰�̨������
      ,[fi].MC as f_JZGJBSJ_GATQWM_MC--�۰�̨�������� ����
      ,[fi].SM as f_JZGJBSJ_GATQWM_SM--�۰�̨�������� ˵��
      ,f.JG as f_JZGJBSJ_JG--��ְ��������������� ����
      ,f.GJDQM as f_JZGJBSJ_GJDQM--��ְ��������������� ����/������
      ,[fj].GJDQMCJC as f_JZGJBSJ_GJDQM_GJDQMCJC--��������͵������ƴ��� ����/�������Ƽ��
      ,[fj].EZMDM as f_JZGJBSJ_GJDQM_EZMDM--��������͵������ƴ��� ����ĸ����
      ,[fj].SZMDM as f_JZGJBSJ_GJDQM_SZMDM--��������͵������ƴ��� ����ĸ����
      ,f.CSDXZQHM as f_JZGJBSJ_CSDXZQHM--��ְ��������������� ����������������
      ,[fk].MC as f_JZGJBSJ_CSDXZQHM_MC--�л����񹲺͹������������� ����
      ,f.XYZJM as f_JZGJBSJ_XYZJM--��ְ��������������� �����ڽ���
      ,[fl].MC as f_JZGJBSJ_XYZJM_MC--�ڽ��������� ����
      ,f.JZGHKSZDXZQHM as f_JZGJBSJ_JZGHKSZDXZQHM--��ְ��������������� ��ְ���������ڵ�����������
      ,[fm].MC as f_JZGJBSJ_JZGHKSZDXZQHM_MC--�л����񹲺͹������������� ����
      ,f.HKLBM as f_JZGJBSJ_HKLBM--��ְ��������������� ���������
      ,[fn].MC as f_JZGJBSJ_HKLBM_MC--���������� ����
      ,f.DQZZ as f_JZGJBSJ_DQZZ--��ְ��������������� ��ǰסַ
      ,f.DQZZYZBM as f_JZGJBSJ_DQZZYZBM--��ְ��������������� ��ǰסַ��������
      ,f.CJGZNY as f_JZGJBSJ_CJGZNY--��ְ��������������� �μӹ�������
      ,f.CJNY as f_JZGJBSJ_CJNY--��ְ��������������� �ӽ�����
      ,f.LXNY as f_JZGJBSJ_LXNY--��ְ��������������� ��У����
      ,f.BZLBM as f_JZGJBSJ_BZLBM--��ְ��������������� ���������
      ,[fo].MC as f_JZGJBSJ_BZLBM_MC--����������� ����
      ,f.JZGLBM as f_JZGJBSJ_JZGLBM--��ְ��������������� ��ְ�������
      ,[fp].MC as f_JZGJBSJ_JZGLBM_MC--��ְ��������� ����
      ,[fp].SM as f_JZGJBSJ_JZGLBM_SM--��ְ��������� ˵��
      ,f.GWLBM as f_JZGJBSJ_GWLBM--��ְ��������������� ��λ�����
      ,[fq].MC as f_JZGJBSJ_GWLBM_MC--��λ������� ����
      ,f.SFJZJS as f_JZGJBSJ_SFJZJS--��ְ��������������� �Ƿ��ְ��ʦ
      ,[fr].MC as f_JZGJBSJ_SFJZJS_MC--�Ƿ��־����� ����
      ,f.SFSSXJS as f_JZGJBSJ_SFSSXJS--��ְ��������������� �Ƿ�˫ʦ�ͽ�ʦ
      ,[fs].MC as f_JZGJBSJ_SFSSXJS_MC--�Ƿ��־����� ����
      ,f.ZP as f_JZGJBSJ_ZP--��ְ��������������� ��Ƭ(·��)
      ,f.DQZTM as f_JZGJBSJ_DQZTM--��ְ��������������� ��ǰ״̬��
      ,[ft].MC as f_JZGJBSJ_DQZTM_MC--��ְ����ǰ״̬����� ����
      ,f.YDDH as f_JZGJBSJ_YDDH--��ְ��������������� �ƶ��绰
      ,f.GDDH as f_JZGJBSJ_GDDH--��ְ��������������� �̶��绰
      ,f.TXDZYZBM as f_JZGJBSJ_TXDZYZBM--��ְ��������������� ͨ�ŵ�ַ��������
      ,f.TXDZ as f_JZGJBSJ_TXDZ--��ְ��������������� ͨ�ŵ�ַ
      ,f.DZXX as f_JZGJBSJ_DZXX--��ְ��������������� ��������
      ,f.WLDZ as f_JZGJBSJ_WLDZ--��ְ��������������� �����ַ
      ,f.JSTXH as f_JZGJBSJ_JSTXH--��ְ��������������� ��ʱͨѶ��
      ,f.JSKQJS as f_JZGJBSJ_JSKQJS--��ְ��������������� ��ʦ���ڽ�ɫ
      ,f.FullTeacherName as f_JZGJBSJ_FullTeacherName--��ְ��������������� ������ʦ����
      ,f.RecordID as f_JZGJBSJ_RecordID--��ְ��������������� ��¼ID
      ,f.TeacherGroupId as f_JZGJBSJ_TeacherGroupId--��ְ��������������� ��TeacherGroup�����

FROM dbo.EDU_ZZFC_10_A04_YDKHPB AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS c ON a.XQID = c.ID /*ѧ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_02_02_ZZBJ AS d ON a.BJID = d.XZBDM /*�༶ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZFC_08_01_XSSS AS e ON a.QSID = e.ID /*����ID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS f ON a.TJJSID = f.ID /*��ӽ�ʦID*/ AND a.SCHOOLID = f.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS [cb] ON c.XQM = [cb].DM /*ѧ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS [eb] ON e.RZXB = [eb].DM /*��ס�Ա�*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [ec] ON e.SFKY = [ec].DM /*�Ƿ����*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [ed] ON e.AZDSJ = [ed].DM /*��װ���ӻ�*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS [fb] ON f.SFZJLXM = [fb].DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS [fc] ON f.XBM = [fc].DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS [fd] ON f.MZM = [fd].DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS [fe] ON f.XXM = [fe].DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS [ff] ON f.JKZKM = [ff].DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS [fg] ON f.HYZTM = [fg].DM /*����״̬��*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS [fh] ON f.ZZMMM = [fh].DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS [fi] ON f.GATQWM = [fi].DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS [fj] ON f.GJDQM = [fj].DM /*����/������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [fk] ON f.CSDXZQHM = [fk].DM /*����������������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS [fl] ON f.XYZJM = [fl].DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [fm] ON f.JZGHKSZDXZQHM = [fm].DM /*��ְ���������ڵ�����������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS [fn] ON f.HKLBM = [fn].DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_BZLB AS [fo] ON f.BZLBM = [fo].DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGLB AS [fp] ON f.JZGLBM = [fp].DM /*��ְ�������*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWLB AS [fq] ON f.GWLBM = [fq].DM /*��λ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [fr] ON f.SFJZJS = [fr].DM /*�Ƿ��ְ��ʦ*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [fs] ON f.SFSSXJS = [fs].DM /*�Ƿ�˫ʦ�ͽ�ʦ*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGDQZT AS [ft] ON f.DQZTM = [ft].DM /*��ǰ״̬��*/
GO
