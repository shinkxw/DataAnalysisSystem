
--ѧ���̲����ñ�
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_04_A04_XSJCLY_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУID
      ,a.[XQID]--ѧ��ID
      ,a.[ZYXXID]--רҵID
      ,a.[NJID]--�꼶ID
      ,a.[BJID]--�༶ID
      ,a.[KCID]--�γ�ID
      ,a.[JCID]--�̲�ID
      ,a.[LYSL]--��������
      ,a.[LYXSID]--����ѧ��ID
      ,a.[LYSJ]--����ʱ��
      ,a.[JSR]--������
      ,c.SCHOOLID as c_XQ_SCHOOLID--ѧ�����ݱ� ѧУ��
      ,c.XNID as c_XQ_XNID--ѧ�����ݱ� ѧ��
      ,c.XQM as c_XQ_XQM--ѧ�����ݱ� ѧ����
      ,[cb].MC as c_XQ_XQM_MC--ѧ�ڴ���� ����
      ,c.XQMC as c_XQ_XQMC--ѧ�����ݱ� ѧ������
      ,c.XQKSRQ as c_XQ_XQKSRQ--ѧ�����ݱ� ѧ�ڿ�ʼ����
      ,c.XQJSRQ as c_XQ_XQJSRQ--ѧ�����ݱ� ѧ�ڽ�������
      ,d.SCHOOLID as d_ZYXX_SCHOOLID--רҵ������Ϣ���ݱ� ѧУ��
      ,d.ZYDM as d_ZYXX_ZYDM--רҵ������Ϣ���ݱ� רҵ����
      ,[db].ZYMLLB as d_ZYXX_ZYDM_ZYMLLB--�Խ�רҵ���� רҵĿ¼���
      ,[db].MC as d_ZYXX_ZYDM_MC--�Խ�רҵ���� ����
      ,d.ZYMC as d_ZYXX_ZYMC--רҵ������Ϣ���ݱ� רҵ����
      ,d.ZYYWMC as d_ZYXX_ZYYWMC--רҵ������Ϣ���ݱ� רҵӢ������
      ,d.XZ as d_ZYXX_XZ--רҵ������Ϣ���ݱ� ѧ��
      ,d.ZYFXMC as d_ZYXX_ZYFXMC--רҵ������Ϣ���ݱ� רҵ��������
      ,d.ZYJC as d_ZYXX_ZYJC--רҵ������Ϣ���ݱ� רҵ���
      ,d.JLNY as d_ZYXX_JLNY--רҵ������Ϣ���ݱ� ��������
      ,d.ZYJSS as d_ZYXX_ZYJSS--רҵ������Ϣ���ݱ� רҵ��ʦ��
      ,d.KSJGH as d_ZYXX_KSJGH--רҵ������Ϣ���ݱ� ���������
      ,d.ZXF as d_ZYXX_ZXF--רҵ������Ϣ���ݱ� ��ѧ��
      ,d.SSZYML as d_ZYXX_SSZYML--רҵ������Ϣ���ݱ� ����רҵĿ¼
      ,[dc].MC as d_ZYXX_SSZYML_MC--רҵĿ¼���� ����
      ,d.ZYLB as d_ZYXX_ZYLB--רҵ������Ϣ���ݱ� רҵ�������
      ,e.SCHOOLID as e_ZZNJ_SCHOOLID--ѧУ�꼶���ݱ� ѧУ��
      ,e.NJMC as e_ZZNJ_NJMC--ѧУ�꼶���ݱ� �꼶����
      ,e.SSNF as e_ZZNJ_SSNF--ѧУ�꼶���ݱ� �������
      ,e.NJZT as e_ZZNJ_NJZT--ѧУ�꼶���ݱ� �꼶״̬
      ,[eb].MC as e_ZZNJ_NJZT_MC--�Ƿ��־����� ����
      ,f.SCHOOLID as f_ZZBJ_SCHOOLID--ѧУ�༶���ݱ� ѧУ��
      ,f.ZYXXID as f_ZZBJ_ZYXXID--ѧУ�༶���ݱ� רҵ������Ϣ
      ,f.ZZNJID as f_ZZBJ_ZZNJID--ѧУ�༶���ݱ� ѧУ�꼶���ݱ�
      ,f.XZBMC as f_ZZBJ_XZBMC--ѧУ�༶���ݱ� ����������
      ,f.JBNY as f_ZZBJ_JBNY--ѧУ�༶���ݱ� ��������
      ,f.BZRGH as f_ZZBJ_BZRGH--ѧУ�༶���ݱ� �����ι���
      ,f.JSBH as f_ZZBJ_JSBH--ѧУ�༶���ݱ� ���ұ��
      ,f.NANSRS as f_ZZBJ_NANSRS--ѧУ�༶���ݱ� ��������
      ,f.NVSRS as f_ZZBJ_NVSRS--ѧУ�༶���ݱ� Ů������
      ,f.ZRS as f_ZZBJ_ZRS--ѧУ�༶���ݱ� ������
      ,f.BZXH as f_ZZBJ_BZXH--ѧУ�༶���ݱ� �೤ѧ��
      ,f.JXJH as f_ZZBJ_JXJH--ѧУ�༶���ݱ� ��ѧ�ƻ�
      ,f.JGH as f_ZZBJ_JGH--ѧУ�༶���ݱ� ������
      ,f.XQDM as f_ZZBJ_XQDM--ѧУ�༶���ݱ� У������
      ,f.BZRID as f_ZZBJ_BZRID--ѧУ�༶���ݱ� ������ID
      ,g.SCHOOLID as g_KC_SCHOOLID--�γ���������� ѧУID
      ,g.KCMC as g_KC_KCMC--�γ���������� �γ�����
      ,g.KCYWM as g_KC_KCYWM--�γ���������� �γ�Ӣ����
      ,g.KCBM as g_KC_KCBM--�γ���������� �γ̱���
      ,g.KCJS as g_KC_KCJS--�γ���������� �γ̽���
      ,g.XF as g_KC_XF--�γ���������� ѧ��
      ,g.ZXS as g_KC_ZXS--�γ���������� ��ѧʱ
      ,g.LLXS as g_KC_LLXS--�γ���������� ����ѧʱ
      ,g.SJXS as g_KC_SJXS--�γ���������� ʵ��ѧʱ
      ,g.QTXS as g_KC_QTXS--�γ���������� ����ѧʱ
      ,g.CKSM as g_KC_CKSM--�γ���������� �ο���Ŀ
      ,g.KKDW as g_KC_KKDW--�γ���������� ���ε�λ
      ,g.KSXS as g_KC_KSXS--�γ���������� ������ʽ
      ,[gb].MC as g_KC_KSXS_MC--������ʽ����� ����
      ,g.SKFSM as g_KC_SKFSM--�γ���������� �ڿη�ʽ��
      ,[gc].MC as g_KC_SKFSM_MC--�ڿη�ʽ����� ����
      ,g.KCFY as g_KC_KCFY--�γ���������� �γ̷���
      ,h.SCHOOLID as h_JCJBXX_SCHOOLID--�̲Ļ�����Ϣ�� ѧУID
      ,h.JCDM as h_JCJBXX_JCDM--�̲Ļ�����Ϣ�� �̲Ĵ���
      ,h.JCMC as h_JCJBXX_JCMC--�̲Ļ�����Ϣ�� �̲�����
      ,h.CBH as h_JCJBXX_CBH--�̲Ļ�����Ϣ�� �����
      ,h.DYZZ as h_JCJBXX_DYZZ--�̲Ļ�����Ϣ�� ��һ����
      ,h.QTZZ as h_JCJBXX_QTZZ--�̲Ļ�����Ϣ�� ��������
      ,h.BC as h_JCJBXX_BC--�̲Ļ�����Ϣ�� ���
      ,h.YC as h_JCJBXX_YC--�̲Ļ�����Ϣ�� ӡ��
      ,h.JG as h_JCJBXX_JG--�̲Ļ�����Ϣ�� �۸�
      ,h.CBS as h_JCJBXX_CBS--�̲Ļ�����Ϣ�� ������
      ,h.CBRQ as h_JCJBXX_CBRQ--�̲Ļ�����Ϣ�� ��������
      ,h.SFYLXC as h_JCJBXX_SFYLXC--�̲Ļ�����Ϣ�� �Ƿ�����ϰ��
      ,[hb].MC as h_JCJBXX_SFYLXC_MC--�Ƿ��־����� ����
      ,h.SFYJCJF as h_JCJBXX_SFYJCJF--�̲Ļ�����Ϣ�� �Ƿ��н̲ν̸�
      ,[hc].MC as h_JCJBXX_SFYJCJF_MC--�Ƿ��־����� ����
      ,h.NRJJ as h_JCJBXX_NRJJ--�̲Ļ�����Ϣ�� ���ݼ��
      ,h.DQZT as h_JCJBXX_DQZT--�̲Ļ�����Ϣ�� ��ǰ״̬
      ,h.ZDKC as h_JCJBXX_ZDKC--�̲Ļ�����Ϣ�� ��Ϳ��
      ,h.DQKC as h_JCJBXX_DQKC--�̲Ļ�����Ϣ�� ��ǰ���
      ,i.SCHOOLID as i_XSXX_SCHOOLID--ѧ����Ϣ���ݱ� ѧУ��
      ,i.XH as i_XSXX_XH--ѧ����Ϣ���ݱ� ѧ��
      ,i.XM as i_XSXX_XM--ѧ����Ϣ���ݱ� ����
      ,i.YWXM as i_XSXX_YWXM--ѧ����Ϣ���ݱ� Ӣ������
      ,i.XMPY as i_XSXX_XMPY--ѧ����Ϣ���ݱ� ����ƴ��
      ,i.CYM as i_XSXX_CYM--ѧ����Ϣ���ݱ� ������
      ,i.SFZJLXM as i_XSXX_SFZJLXM--ѧ����Ϣ���ݱ� ���֤��������
      ,[ib].MC as i_XSXX_SFZJLXM_MC--���֤�����ʹ���� ����
      ,i.SFZJH as i_XSXX_SFZJH--ѧ����Ϣ���ݱ� ���֤����
      ,i.XBM as i_XSXX_XBM--ѧ����Ϣ���ݱ� �Ա���
      ,[ic].MC as i_XSXX_XBM_MC--�˵��Ա���� ����
      ,i.XXM as i_XSXX_XXM--ѧ����Ϣ���ݱ� Ѫ����
      ,[id].MC as i_XSXX_XXM_MC--Ѫ�ʹ���� ����
      ,[id].JC as i_XSXX_XXM_JC--Ѫ�ʹ���� ���
      ,i.CSRQ as i_XSXX_CSRQ--ѧ����Ϣ���ݱ� ��������
      ,i.CSDM as i_XSXX_CSDM--ѧ����Ϣ���ݱ� ��������
      ,[ie].MC as i_XSXX_CSDM_MC--�л����񹲺͹������������� ����
      ,i.JG as i_XSXX_JG--ѧ����Ϣ���ݱ� ����
      ,i.MZM as i_XSXX_MZM--ѧ����Ϣ���ݱ� ������
      ,[if].MZMC as i_XSXX_MZM_MZMC--�й����������Ƶ�������ĸƴд���ʹ��� ��������
      ,[if].ZMDM as i_XSXX_MZM_ZMDM--�й����������Ƶ�������ĸƴд���ʹ��� ��ĸ����
      ,i.HYZKM as i_XSXX_HYZKM--ѧ����Ϣ���ݱ� ����״����
      ,[ig].MC as i_XSXX_HYZKM_MC--����״������ ����
      ,i.XYZJM as i_XSXX_XYZJM--ѧ����Ϣ���ݱ� �����ڽ���
      ,[ih].MC as i_XSXX_XYZJM_MC--�ڽ��������� ����
      ,i.GATQWM as i_XSXX_GATQWM--ѧ����Ϣ���ݱ� �۰�̨������
      ,[ii].MC as i_XSXX_GATQWM_MC--�۰�̨�������� ����
      ,[ii].SM as i_XSXX_GATQWM_SM--�۰�̨�������� ˵��
      ,i.JKZKM as i_XSXX_JKZKM--ѧ����Ϣ���ݱ� ����״����
      ,[ij].MC as i_XSXX_JKZKM_MC--����״��1λ���ִ��� ����
      ,[ij].SM as i_XSXX_JKZKM_SM--����״��1λ���ִ��� ˵��
      ,i.ZZMMM as i_XSXX_ZZMMM--ѧ����Ϣ���ݱ� ������ò��
      ,[ik].MC as i_XSXX_ZZMMM_MC--������ò���� ����
      ,[ik].JC as i_XSXX_ZZMMM_JC--������ò���� ���
      ,i.HKSZDXZQHM as i_XSXX_HKSZDXZQHM--ѧ����Ϣ���ݱ� �������ڵ�����������
      ,[il].MC as i_XSXX_HKSZDXZQHM_MC--�л����񹲺͹������������� ����
      ,i.HKLBM as i_XSXX_HKLBM--ѧ����Ϣ���ݱ� ���������
      ,[im].MC as i_XSXX_HKLBM_MC--���������� ����
      ,i.SFSLDRK as i_XSXX_SFSLDRK--ѧ����Ϣ���ݱ� �Ƿ��������˿�
      ,[in].MC as i_XSXX_SFSLDRK_MC--�Ƿ��־����� ����
      ,i.GJDQM as i_XSXX_GJDQM--ѧ����Ϣ���ݱ� ����/����
      ,[io].GJDQMCJC as i_XSXX_GJDQM_GJDQMCJC--��������͵������ƴ��� ����/�������Ƽ��
      ,[io].EZMDM as i_XSXX_GJDQM_EZMDM--��������͵������ƴ��� ����ĸ����
      ,[io].SZMDM as i_XSXX_GJDQM_SZMDM--��������͵������ƴ��� ����ĸ����
      ,i.TC as i_XSXX_TC--ѧ����Ϣ���ݱ� �س�
      ,i.XSLXDH as i_XSXX_XSLXDH--ѧ����Ϣ���ݱ� ѧ����ϵ�绰
      ,i.WLDZ as i_XSXX_WLDZ--ѧ����Ϣ���ݱ� �����ַ
      ,i.JSTXH as i_XSXX_JSTXH--ѧ����Ϣ���ݱ� ��ʱͨѶ��
      ,i.DZXX as i_XSXX_DZXX--ѧ����Ϣ���ݱ� ��������
      ,i.ZP as i_XSXX_ZP--ѧ����Ϣ���ݱ� ��Ƭ(·��)

FROM dbo.EDU_ZZJX_04_A04_XSJCLY AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS c ON a.XQID = c.ID /*ѧ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_01_01_ZYXX AS d ON a.ZYXXID = d.ZYBH /*רҵID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_02_01_ZZNJ AS e ON a.NJID = e.NJDM /*�꼶ID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_02_02_ZZBJ AS f ON a.BJID = f.XZBDM /*�༶ID*/ AND a.SCHOOLID = f.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_01_02_KC AS g ON a.KCID = g.KCH /*�γ�ID*/ AND a.SCHOOLID = g.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_04_01_JCJBXX AS h ON a.JCID = h.ID /*�̲�ID*/ AND a.SCHOOLID = h.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZXS_01_01_XSXX AS i ON a.LYXSID = i.ID /*����ѧ��ID*/ AND a.SCHOOLID = i.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS [cb] ON c.XQM = [cb].DM /*ѧ����*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZJZY AS [db] ON d.ZYDM = [db].DM /*רҵ����*/ AND d.SSZYML = [db].ZYMLLB /*����רҵĿ¼*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZYML AS [dc] ON d.SSZYML = [dc].DM /*����רҵĿ¼*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [eb] ON e.NJZT = [eb].DM /*�꼶״̬*/ LEFT OUTER JOIN
      dbo.EDU_JY_KSXS AS [gb] ON g.KSXS = [gb].DM /*������ʽ*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS [gc] ON g.SKFSM = [gc].DM /*�ڿη�ʽ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [hb] ON h.SFYLXC = [hb].DM /*�Ƿ�����ϰ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [hc] ON h.SFYJCJF = [hc].DM /*�Ƿ��н̲ν̸�*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS [ib] ON i.SFZJLXM = [ib].DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS [ic] ON i.XBM = [ic].DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS [id] ON i.XXM = [id].DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [ie] ON i.CSDM = [ie].DM /*��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS [if] ON i.MZM = [if].DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS [ig] ON i.HYZKM = [ig].DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS [ih] ON i.XYZJM = [ih].DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS [ii] ON i.GATQWM = [ii].DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS [ij] ON i.JKZKM = [ij].DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS [ik] ON i.ZZMMM = [ik].DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [il] ON i.HKSZDXZQHM = [il].DM /*�������ڵ�����������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS [im] ON i.HKLBM = [im].DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [in] ON i.SFSLDRK = [in].DM /*�Ƿ��������˿�*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS [io] ON i.GJDQM = [io].DM /*����/����*/
GO
