
--�������������˼�¼��
CREATE VIEW [dbo].[VIEW_EDU_ZZXS_18_A06_JCCFSQSHJL_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[XSCFXXID]--ѧ��������ϢID
      ,a.[JCCFSQID]--�����������ID
      ,a.[BZID]--����ID
      ,a.[SHJG]--��˽��
      ,a.[SHSJ]--���ʱ��
      ,a.[SHJSID]--��˽�ʦID
      ,a.[BZ]--��ע
      ,c.SCHOOLID as c_XSCFXX_SCHOOLID--ѧ��������Ϣ�� ѧУ
      ,c.XSXXID as c_XSCFXX_XSXXID--ѧ��������Ϣ�� ѧ��ID
      ,c.WJLXID as c_XSCFXX_WJLXID--ѧ��������Ϣ�� Υ������ID
      ,c.XQID as c_XSCFXX_XQID--ѧ��������Ϣ�� ѧ��ID
      ,c.DQZT as c_XSCFXX_DQZT--ѧ��������Ϣ�� ��ǰ״̬
      ,c.WJQK as c_XSCFXX_WJQK--ѧ��������Ϣ�� Υ�����
      ,c.JYCFLXID as c_XSCFXX_JYCFLXID--ѧ��������Ϣ�� ���鴦������ID
      ,c.SBSJ as c_XSCFXX_SBSJ--ѧ��������Ϣ�� �ϱ�ʱ��
      ,c.SBJSID as c_XSCFXX_SBJSID--ѧ��������Ϣ�� �ϱ���ʦID
      ,c.ZZCFLXID as c_XSCFXX_ZZCFLXID--ѧ��������Ϣ�� ���մ�������ID
      ,c.SHSJ as c_XSCFXX_SHSJ--ѧ��������Ϣ�� ���ʱ��
      ,c.SHJSID as c_XSCFXX_SHJSID--ѧ��������Ϣ�� ��˽�ʦID
      ,c.BZ as c_XSCFXX_BZ--ѧ��������Ϣ�� ��ע
      ,c.FSSJ as c_XSCFXX_FSSJ--ѧ��������Ϣ�� ����ʱ��
      ,c.JCSJ as c_XSCFXX_JCSJ--ѧ��������Ϣ�� ���ʱ��
      ,c.JCJSID as c_XSCFXX_JCJSID--ѧ��������Ϣ�� �����ʦID
      ,d.SCHOOLID as d_JCCFSQ_SCHOOLID--������������ ѧУ
      ,d.XSCFXXID as d_JCCFSQ_XSCFXXID--������������ ѧ��������ϢID
      ,d.JCYY as d_JCCFSQ_JCYY--������������ ���ԭ��
      ,d.YJTL as d_JCCFSQ_YJTL--������������ ��������
      ,d.DQZT as d_JCCFSQ_DQZT--������������ ��ǰ״̬
      ,d.DQBZID as d_JCCFSQ_DQBZID--������������ ��ǰ����ID
      ,d.SQSJ as d_JCCFSQ_SQSJ--������������ ����ʱ��
      ,d.SQXSID as d_JCCFSQ_SQXSID--������������ ����ѧ��ID
      ,d.SQTHYY as d_JCCFSQ_SQTHYY--������������ �����˻�ԭ��
      ,d.ZHSHSJ as d_JCCFSQ_ZHSHSJ--������������ ������ʱ��
      ,d.ZHSHJSID as d_JCCFSQ_ZHSHJSID--������������ �����˽�ʦID
      ,d.BZ as d_JCCFSQ_BZ--������������ ��ע
      ,e.SCHOOLID as e_JCCFBZ_SCHOOLID--������ֲ���� ѧУ
      ,e.CFLXID as e_JCCFBZ_CFLXID--������ֲ���� ��������ID
      ,e.BZMC as e_JCCFBZ_BZMC--������ֲ���� ��������
      ,e.SHRIDLB as e_JCCFBZ_SHRIDLB--������ֲ���� �����ID�б�
      ,e.SHRMCLB as e_JCCFBZ_SHRMCLB--������ֲ���� ����������б�
      ,e.SYBZID as e_JCCFBZ_SYBZID--������ֲ���� ��һ����ID
      ,e.XYBZID as e_JCCFBZ_XYBZID--������ֲ���� ��һ����ID
      ,e.BZ as e_JCCFBZ_BZ--������ֲ���� ��ע
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

FROM dbo.EDU_ZZXS_18_A06_JCCFSQSHJL AS a LEFT OUTER JOIN
      dbo.EDU_ZZXS_18_A04_XSCFXX AS c ON a.XSCFXXID = c.ID /*ѧ��������ϢID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZXS_18_A05_JCCFSQ AS d ON a.JCCFSQID = d.ID /*�����������ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZXS_18_A03_JCCFBZ AS e ON a.BZID = e.ID /*����ID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS f ON a.SHJSID = f.ID /*��˽�ʦID*/ AND a.SCHOOLID = f.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
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
