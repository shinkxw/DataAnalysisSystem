
--��ʦ�̲����ñ�
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_04_A03_JSJCLY_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУID
      ,a.[XQID]--ѧ��ID
      ,a.[ZYXXID]--רҵID
      ,a.[NJID]--�꼶ID
      ,a.[KCID]--�γ�ID
      ,a.[JCID]--�̲�ID
      ,a.[LYSL]--��������
      ,a.[LYJSID]--���ý�ʦID
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
      ,f.SCHOOLID as f_KC_SCHOOLID--�γ���������� ѧУID
      ,f.KCMC as f_KC_KCMC--�γ���������� �γ�����
      ,f.KCYWM as f_KC_KCYWM--�γ���������� �γ�Ӣ����
      ,f.KCBM as f_KC_KCBM--�γ���������� �γ̱���
      ,f.KCJS as f_KC_KCJS--�γ���������� �γ̽���
      ,f.XF as f_KC_XF--�γ���������� ѧ��
      ,f.ZXS as f_KC_ZXS--�γ���������� ��ѧʱ
      ,f.LLXS as f_KC_LLXS--�γ���������� ����ѧʱ
      ,f.SJXS as f_KC_SJXS--�γ���������� ʵ��ѧʱ
      ,f.QTXS as f_KC_QTXS--�γ���������� ����ѧʱ
      ,f.CKSM as f_KC_CKSM--�γ���������� �ο���Ŀ
      ,f.KKDW as f_KC_KKDW--�γ���������� ���ε�λ
      ,f.KSXS as f_KC_KSXS--�γ���������� ������ʽ
      ,[fb].MC as f_KC_KSXS_MC--������ʽ����� ����
      ,f.SKFSM as f_KC_SKFSM--�γ���������� �ڿη�ʽ��
      ,[fc].MC as f_KC_SKFSM_MC--�ڿη�ʽ����� ����
      ,f.KCFY as f_KC_KCFY--�γ���������� �γ̷���
      ,g.SCHOOLID as g_JCJBXX_SCHOOLID--�̲Ļ�����Ϣ�� ѧУID
      ,g.JCDM as g_JCJBXX_JCDM--�̲Ļ�����Ϣ�� �̲Ĵ���
      ,g.JCMC as g_JCJBXX_JCMC--�̲Ļ�����Ϣ�� �̲�����
      ,g.CBH as g_JCJBXX_CBH--�̲Ļ�����Ϣ�� �����
      ,g.DYZZ as g_JCJBXX_DYZZ--�̲Ļ�����Ϣ�� ��һ����
      ,g.QTZZ as g_JCJBXX_QTZZ--�̲Ļ�����Ϣ�� ��������
      ,g.BC as g_JCJBXX_BC--�̲Ļ�����Ϣ�� ���
      ,g.YC as g_JCJBXX_YC--�̲Ļ�����Ϣ�� ӡ��
      ,g.JG as g_JCJBXX_JG--�̲Ļ�����Ϣ�� �۸�
      ,g.CBS as g_JCJBXX_CBS--�̲Ļ�����Ϣ�� ������
      ,g.CBRQ as g_JCJBXX_CBRQ--�̲Ļ�����Ϣ�� ��������
      ,g.SFYLXC as g_JCJBXX_SFYLXC--�̲Ļ�����Ϣ�� �Ƿ�����ϰ��
      ,[gb].MC as g_JCJBXX_SFYLXC_MC--�Ƿ��־����� ����
      ,g.SFYJCJF as g_JCJBXX_SFYJCJF--�̲Ļ�����Ϣ�� �Ƿ��н̲ν̸�
      ,[gc].MC as g_JCJBXX_SFYJCJF_MC--�Ƿ��־����� ����
      ,g.NRJJ as g_JCJBXX_NRJJ--�̲Ļ�����Ϣ�� ���ݼ��
      ,g.DQZT as g_JCJBXX_DQZT--�̲Ļ�����Ϣ�� ��ǰ״̬
      ,g.ZDKC as g_JCJBXX_ZDKC--�̲Ļ�����Ϣ�� ��Ϳ��
      ,g.DQKC as g_JCJBXX_DQKC--�̲Ļ�����Ϣ�� ��ǰ���
      ,h.SCHOOLID as h_JZGJBSJ_SCHOOLID--��ְ��������������� ѧУ��
      ,h.GH as h_JZGJBSJ_GH--��ְ��������������� ����
      ,h.XM as h_JZGJBSJ_XM--��ְ��������������� ����
      ,h.YWXM as h_JZGJBSJ_YWXM--��ְ��������������� Ӣ������
      ,h.XMPY as h_JZGJBSJ_XMPY--��ְ��������������� ����ƴ��
      ,h.CYM as h_JZGJBSJ_CYM--��ְ��������������� ������
      ,h.SFZJLXM as h_JZGJBSJ_SFZJLXM--��ְ��������������� ���֤��������
      ,[hb].MC as h_JZGJBSJ_SFZJLXM_MC--���֤�����ʹ���� ����
      ,h.SFZJH as h_JZGJBSJ_SFZJH--��ְ��������������� ���֤����
      ,h.CSRQ as h_JZGJBSJ_CSRQ--��ְ��������������� ��������
      ,h.XBM as h_JZGJBSJ_XBM--��ְ��������������� �Ա���
      ,[hc].MC as h_JZGJBSJ_XBM_MC--�˵��Ա���� ����
      ,h.MZM as h_JZGJBSJ_MZM--��ְ��������������� ������
      ,[hd].MZMC as h_JZGJBSJ_MZM_MZMC--�й����������Ƶ�������ĸƴд���ʹ��� ��������
      ,[hd].ZMDM as h_JZGJBSJ_MZM_ZMDM--�й����������Ƶ�������ĸƴд���ʹ��� ��ĸ����
      ,h.XXM as h_JZGJBSJ_XXM--��ְ��������������� Ѫ����
      ,[he].MC as h_JZGJBSJ_XXM_MC--Ѫ�ʹ���� ����
      ,[he].JC as h_JZGJBSJ_XXM_JC--Ѫ�ʹ���� ���
      ,h.JKZKM as h_JZGJBSJ_JKZKM--��ְ��������������� ����״����
      ,[hf].MC as h_JZGJBSJ_JKZKM_MC--����״��1λ���ִ��� ����
      ,[hf].SM as h_JZGJBSJ_JKZKM_SM--����״��1λ���ִ��� ˵��
      ,h.HYZTM as h_JZGJBSJ_HYZTM--��ְ��������������� ����״̬��
      ,[hg].MC as h_JZGJBSJ_HYZTM_MC--����״������ ����
      ,h.ZZMMM as h_JZGJBSJ_ZZMMM--��ְ��������������� ������ò��
      ,[hh].MC as h_JZGJBSJ_ZZMMM_MC--������ò���� ����
      ,[hh].JC as h_JZGJBSJ_ZZMMM_JC--������ò���� ���
      ,h.GATQWM as h_JZGJBSJ_GATQWM--��ְ��������������� �۰�̨������
      ,[hi].MC as h_JZGJBSJ_GATQWM_MC--�۰�̨�������� ����
      ,[hi].SM as h_JZGJBSJ_GATQWM_SM--�۰�̨�������� ˵��
      ,h.JG as h_JZGJBSJ_JG--��ְ��������������� ����
      ,h.GJDQM as h_JZGJBSJ_GJDQM--��ְ��������������� ����/������
      ,[hj].GJDQMCJC as h_JZGJBSJ_GJDQM_GJDQMCJC--��������͵������ƴ��� ����/�������Ƽ��
      ,[hj].EZMDM as h_JZGJBSJ_GJDQM_EZMDM--��������͵������ƴ��� ����ĸ����
      ,[hj].SZMDM as h_JZGJBSJ_GJDQM_SZMDM--��������͵������ƴ��� ����ĸ����
      ,h.CSDXZQHM as h_JZGJBSJ_CSDXZQHM--��ְ��������������� ����������������
      ,[hk].MC as h_JZGJBSJ_CSDXZQHM_MC--�л����񹲺͹������������� ����
      ,h.XYZJM as h_JZGJBSJ_XYZJM--��ְ��������������� �����ڽ���
      ,[hl].MC as h_JZGJBSJ_XYZJM_MC--�ڽ��������� ����
      ,h.JZGHKSZDXZQHM as h_JZGJBSJ_JZGHKSZDXZQHM--��ְ��������������� ��ְ���������ڵ�����������
      ,[hm].MC as h_JZGJBSJ_JZGHKSZDXZQHM_MC--�л����񹲺͹������������� ����
      ,h.HKLBM as h_JZGJBSJ_HKLBM--��ְ��������������� ���������
      ,[hn].MC as h_JZGJBSJ_HKLBM_MC--���������� ����
      ,h.DQZZ as h_JZGJBSJ_DQZZ--��ְ��������������� ��ǰסַ
      ,h.DQZZYZBM as h_JZGJBSJ_DQZZYZBM--��ְ��������������� ��ǰסַ��������
      ,h.CJGZNY as h_JZGJBSJ_CJGZNY--��ְ��������������� �μӹ�������
      ,h.CJNY as h_JZGJBSJ_CJNY--��ְ��������������� �ӽ�����
      ,h.LXNY as h_JZGJBSJ_LXNY--��ְ��������������� ��У����
      ,h.BZLBM as h_JZGJBSJ_BZLBM--��ְ��������������� ���������
      ,[ho].MC as h_JZGJBSJ_BZLBM_MC--����������� ����
      ,h.JZGLBM as h_JZGJBSJ_JZGLBM--��ְ��������������� ��ְ�������
      ,[hp].MC as h_JZGJBSJ_JZGLBM_MC--��ְ��������� ����
      ,[hp].SM as h_JZGJBSJ_JZGLBM_SM--��ְ��������� ˵��
      ,h.GWLBM as h_JZGJBSJ_GWLBM--��ְ��������������� ��λ�����
      ,[hq].MC as h_JZGJBSJ_GWLBM_MC--��λ������� ����
      ,h.SFJZJS as h_JZGJBSJ_SFJZJS--��ְ��������������� �Ƿ��ְ��ʦ
      ,[hr].MC as h_JZGJBSJ_SFJZJS_MC--�Ƿ��־����� ����
      ,h.SFSSXJS as h_JZGJBSJ_SFSSXJS--��ְ��������������� �Ƿ�˫ʦ�ͽ�ʦ
      ,[hs].MC as h_JZGJBSJ_SFSSXJS_MC--�Ƿ��־����� ����
      ,h.ZP as h_JZGJBSJ_ZP--��ְ��������������� ��Ƭ(·��)
      ,h.DQZTM as h_JZGJBSJ_DQZTM--��ְ��������������� ��ǰ״̬��
      ,[ht].MC as h_JZGJBSJ_DQZTM_MC--��ְ����ǰ״̬����� ����
      ,h.YDDH as h_JZGJBSJ_YDDH--��ְ��������������� �ƶ��绰
      ,h.GDDH as h_JZGJBSJ_GDDH--��ְ��������������� �̶��绰
      ,h.TXDZYZBM as h_JZGJBSJ_TXDZYZBM--��ְ��������������� ͨ�ŵ�ַ��������
      ,h.TXDZ as h_JZGJBSJ_TXDZ--��ְ��������������� ͨ�ŵ�ַ
      ,h.DZXX as h_JZGJBSJ_DZXX--��ְ��������������� ��������
      ,h.WLDZ as h_JZGJBSJ_WLDZ--��ְ��������������� �����ַ
      ,h.JSTXH as h_JZGJBSJ_JSTXH--��ְ��������������� ��ʱͨѶ��

FROM dbo.EDU_ZZJX_04_A03_JSJCLY AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS c ON a.XQID = c.ID /*ѧ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_01_01_ZYXX AS d ON a.ZYXXID = d.ZYBH /*רҵID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_02_01_ZZNJ AS e ON a.NJID = e.NJDM /*�꼶ID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_01_02_KC AS f ON a.KCID = f.KCH /*�γ�ID*/ AND a.SCHOOLID = f.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_04_01_JCJBXX AS g ON a.JCID = g.ID /*�̲�ID*/ AND a.SCHOOLID = g.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS h ON a.LYJSID = h.ID /*���ý�ʦID*/ AND a.SCHOOLID = h.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS [cb] ON c.XQM = [cb].DM /*ѧ����*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZJZY AS [db] ON d.ZYDM = [db].DM /*רҵ����*/ AND d.SSZYML = [db].ZYMLLB /*����רҵĿ¼*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZYML AS [dc] ON d.SSZYML = [dc].DM /*����רҵĿ¼*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [eb] ON e.NJZT = [eb].DM /*�꼶״̬*/ LEFT OUTER JOIN
      dbo.EDU_JY_KSXS AS [fb] ON f.KSXS = [fb].DM /*������ʽ*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS [fc] ON f.SKFSM = [fc].DM /*�ڿη�ʽ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [gb] ON g.SFYLXC = [gb].DM /*�Ƿ�����ϰ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [gc] ON g.SFYJCJF = [gc].DM /*�Ƿ��н̲ν̸�*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS [hb] ON h.SFZJLXM = [hb].DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS [hc] ON h.XBM = [hc].DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS [hd] ON h.MZM = [hd].DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS [he] ON h.XXM = [he].DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS [hf] ON h.JKZKM = [hf].DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS [hg] ON h.HYZTM = [hg].DM /*����״̬��*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS [hh] ON h.ZZMMM = [hh].DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS [hi] ON h.GATQWM = [hi].DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS [hj] ON h.GJDQM = [hj].DM /*����/������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [hk] ON h.CSDXZQHM = [hk].DM /*����������������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS [hl] ON h.XYZJM = [hl].DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [hm] ON h.JZGHKSZDXZQHM = [hm].DM /*��ְ���������ڵ�����������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS [hn] ON h.HKLBM = [hn].DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_BZLB AS [ho] ON h.BZLBM = [ho].DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGLB AS [hp] ON h.JZGLBM = [hp].DM /*��ְ�������*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWLB AS [hq] ON h.GWLBM = [hq].DM /*��λ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [hr] ON h.SFJZJS = [hr].DM /*�Ƿ��ְ��ʦ*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [hs] ON h.SFSSXJS = [hs].DM /*�Ƿ�˫ʦ�ͽ�ʦ*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGDQZT AS [ht] ON h.DQZTM = [ht].DM /*��ǰ״̬��*/
GO
