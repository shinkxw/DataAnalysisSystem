
--ѧ���γ�ѧ�ֱ�
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_34_A01_XSKCXF_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[StudentID]--ѧ��ID
      ,a.[XQID]--ѧ��ID
      ,a.[ZYXXID]--רҵID
      ,a.[NJID]--�꼶ID
      ,a.[BJID]--�༶ID
      ,a.[KCQDID]--���Կ�ĿID
      ,a.[XF]--���ѧ��
      ,c.SCHOOLID as c_XSXX_SCHOOLID--ѧ����Ϣ���ݱ� ѧУ��
      ,c.XH as c_XSXX_XH--ѧ����Ϣ���ݱ� ѧ��
      ,c.XM as c_XSXX_XM--ѧ����Ϣ���ݱ� ����
      ,c.YWXM as c_XSXX_YWXM--ѧ����Ϣ���ݱ� Ӣ������
      ,c.XMPY as c_XSXX_XMPY--ѧ����Ϣ���ݱ� ����ƴ��
      ,c.CYM as c_XSXX_CYM--ѧ����Ϣ���ݱ� ������
      ,c.SFZJLXM as c_XSXX_SFZJLXM--ѧ����Ϣ���ݱ� ���֤��������
      ,[cb].MC as c_XSXX_SFZJLXM_MC--���֤�����ʹ���� ����
      ,c.SFZJH as c_XSXX_SFZJH--ѧ����Ϣ���ݱ� ���֤����
      ,c.XBM as c_XSXX_XBM--ѧ����Ϣ���ݱ� �Ա���
      ,[cc].MC as c_XSXX_XBM_MC--�˵��Ա���� ����
      ,c.XXM as c_XSXX_XXM--ѧ����Ϣ���ݱ� Ѫ����
      ,[cd].MC as c_XSXX_XXM_MC--Ѫ�ʹ���� ����
      ,[cd].JC as c_XSXX_XXM_JC--Ѫ�ʹ���� ���
      ,c.CSRQ as c_XSXX_CSRQ--ѧ����Ϣ���ݱ� ��������
      ,c.CSDM as c_XSXX_CSDM--ѧ����Ϣ���ݱ� ��������
      ,[ce].MC as c_XSXX_CSDM_MC--�л����񹲺͹������������� ����
      ,c.JG as c_XSXX_JG--ѧ����Ϣ���ݱ� ����
      ,c.MZM as c_XSXX_MZM--ѧ����Ϣ���ݱ� ������
      ,[cf].MZMC as c_XSXX_MZM_MZMC--�й����������Ƶ�������ĸƴд���ʹ��� ��������
      ,[cf].ZMDM as c_XSXX_MZM_ZMDM--�й����������Ƶ�������ĸƴд���ʹ��� ��ĸ����
      ,c.HYZKM as c_XSXX_HYZKM--ѧ����Ϣ���ݱ� ����״����
      ,[cg].MC as c_XSXX_HYZKM_MC--����״������ ����
      ,c.XYZJM as c_XSXX_XYZJM--ѧ����Ϣ���ݱ� �����ڽ���
      ,[ch].MC as c_XSXX_XYZJM_MC--�ڽ��������� ����
      ,c.GATQWM as c_XSXX_GATQWM--ѧ����Ϣ���ݱ� �۰�̨������
      ,[ci].MC as c_XSXX_GATQWM_MC--�۰�̨�������� ����
      ,[ci].SM as c_XSXX_GATQWM_SM--�۰�̨�������� ˵��
      ,c.JKZKM as c_XSXX_JKZKM--ѧ����Ϣ���ݱ� ����״����
      ,[cj].MC as c_XSXX_JKZKM_MC--����״��1λ���ִ��� ����
      ,[cj].SM as c_XSXX_JKZKM_SM--����״��1λ���ִ��� ˵��
      ,c.ZZMMM as c_XSXX_ZZMMM--ѧ����Ϣ���ݱ� ������ò��
      ,[ck].MC as c_XSXX_ZZMMM_MC--������ò���� ����
      ,[ck].JC as c_XSXX_ZZMMM_JC--������ò���� ���
      ,c.HKSZDXZQHM as c_XSXX_HKSZDXZQHM--ѧ����Ϣ���ݱ� �������ڵ�����������
      ,[cl].MC as c_XSXX_HKSZDXZQHM_MC--�л����񹲺͹������������� ����
      ,c.HKLBM as c_XSXX_HKLBM--ѧ����Ϣ���ݱ� ���������
      ,[cm].MC as c_XSXX_HKLBM_MC--���������� ����
      ,c.SFSLDRK as c_XSXX_SFSLDRK--ѧ����Ϣ���ݱ� �Ƿ��������˿�
      ,[cn].MC as c_XSXX_SFSLDRK_MC--�Ƿ��־����� ����
      ,c.GJDQM as c_XSXX_GJDQM--ѧ����Ϣ���ݱ� ����/����
      ,[co].GJDQMCJC as c_XSXX_GJDQM_GJDQMCJC--��������͵������ƴ��� ����/�������Ƽ��
      ,[co].EZMDM as c_XSXX_GJDQM_EZMDM--��������͵������ƴ��� ����ĸ����
      ,[co].SZMDM as c_XSXX_GJDQM_SZMDM--��������͵������ƴ��� ����ĸ����
      ,c.TC as c_XSXX_TC--ѧ����Ϣ���ݱ� �س�
      ,c.XSLXDH as c_XSXX_XSLXDH--ѧ����Ϣ���ݱ� ѧ����ϵ�绰
      ,c.WLDZ as c_XSXX_WLDZ--ѧ����Ϣ���ݱ� �����ַ
      ,c.JSTXH as c_XSXX_JSTXH--ѧ����Ϣ���ݱ� ��ʱͨѶ��
      ,c.DZXX as c_XSXX_DZXX--ѧ����Ϣ���ݱ� ��������
      ,c.ZP as c_XSXX_ZP--ѧ����Ϣ���ݱ� ��Ƭ(·��)
      ,c.RXXQID as c_XSXX_RXXQID--ѧ����Ϣ���ݱ� ��ѧѧ��ID
      ,d.SCHOOLID as d_XQ_SCHOOLID--ѧ�����ݱ� ѧУ��
      ,d.XNID as d_XQ_XNID--ѧ�����ݱ� ѧ��
      ,d.XQM as d_XQ_XQM--ѧ�����ݱ� ѧ����
      ,[db].MC as d_XQ_XQM_MC--ѧ�ڴ���� ����
      ,d.XQMC as d_XQ_XQMC--ѧ�����ݱ� ѧ������
      ,d.XQKSRQ as d_XQ_XQKSRQ--ѧ�����ݱ� ѧ�ڿ�ʼ����
      ,d.XQJSRQ as d_XQ_XQJSRQ--ѧ�����ݱ� ѧ�ڽ�������
      ,e.SCHOOLID as e_ZYXX_SCHOOLID--רҵ������Ϣ���ݱ� ѧУ��
      ,e.ZYDM as e_ZYXX_ZYDM--רҵ������Ϣ���ݱ� רҵ����
      ,[eb].ZYMLLB as e_ZYXX_ZYDM_ZYMLLB--�Խ�רҵ���� רҵĿ¼���
      ,[eb].MC as e_ZYXX_ZYDM_MC--�Խ�רҵ���� ����
      ,e.ZYMC as e_ZYXX_ZYMC--רҵ������Ϣ���ݱ� רҵ����
      ,e.ZYYWMC as e_ZYXX_ZYYWMC--רҵ������Ϣ���ݱ� רҵӢ������
      ,e.XZ as e_ZYXX_XZ--רҵ������Ϣ���ݱ� ѧ��
      ,e.ZYFXMC as e_ZYXX_ZYFXMC--רҵ������Ϣ���ݱ� רҵ��������
      ,e.ZYJC as e_ZYXX_ZYJC--רҵ������Ϣ���ݱ� רҵ���
      ,e.JLNY as e_ZYXX_JLNY--רҵ������Ϣ���ݱ� ��������
      ,e.ZYJSS as e_ZYXX_ZYJSS--רҵ������Ϣ���ݱ� רҵ��ʦ��
      ,e.KSJGH as e_ZYXX_KSJGH--רҵ������Ϣ���ݱ� ���������
      ,e.ZXF as e_ZYXX_ZXF--רҵ������Ϣ���ݱ� ��ѧ��
      ,e.SSZYML as e_ZYXX_SSZYML--רҵ������Ϣ���ݱ� ����רҵĿ¼
      ,[ec].MC as e_ZYXX_SSZYML_MC--רҵĿ¼���� ����
      ,e.ZYLB as e_ZYXX_ZYLB--רҵ������Ϣ���ݱ� רҵ�������
      ,f.SCHOOLID as f_ZZNJ_SCHOOLID--ѧУ�꼶���ݱ� ѧУ��
      ,f.NJMC as f_ZZNJ_NJMC--ѧУ�꼶���ݱ� �꼶����
      ,f.SSNF as f_ZZNJ_SSNF--ѧУ�꼶���ݱ� �������
      ,f.NJZT as f_ZZNJ_NJZT--ѧУ�꼶���ݱ� �꼶״̬
      ,[fb].MC as f_ZZNJ_NJZT_MC--�Ƿ��־����� ����
      ,g.SCHOOLID as g_ZZBJ_SCHOOLID--ѧУ�༶���ݱ� ѧУ��
      ,g.ZYXXID as g_ZZBJ_ZYXXID--ѧУ�༶���ݱ� רҵ������Ϣ
      ,g.ZZNJID as g_ZZBJ_ZZNJID--ѧУ�༶���ݱ� ѧУ�꼶���ݱ�
      ,g.XZBMC as g_ZZBJ_XZBMC--ѧУ�༶���ݱ� ����������
      ,g.JBNY as g_ZZBJ_JBNY--ѧУ�༶���ݱ� ��������
      ,g.BZRGH as g_ZZBJ_BZRGH--ѧУ�༶���ݱ� �����ι���
      ,g.JSBH as g_ZZBJ_JSBH--ѧУ�༶���ݱ� ���ұ��
      ,g.NANSRS as g_ZZBJ_NANSRS--ѧУ�༶���ݱ� ��������
      ,g.NVSRS as g_ZZBJ_NVSRS--ѧУ�༶���ݱ� Ů������
      ,g.ZRS as g_ZZBJ_ZRS--ѧУ�༶���ݱ� ������
      ,g.BZXH as g_ZZBJ_BZXH--ѧУ�༶���ݱ� �೤ѧ��
      ,g.JXJH as g_ZZBJ_JXJH--ѧУ�༶���ݱ� ��ѧ�ƻ�
      ,g.JGH as g_ZZBJ_JGH--ѧУ�༶���ݱ� ������
      ,g.XQDM as g_ZZBJ_XQDM--ѧУ�༶���ݱ� У������
      ,g.BZRID as g_ZZBJ_BZRID--ѧУ�༶���ݱ� ������ID
      ,h.SCHOOLID as h_JXJHKCQD_SCHOOLID--��ѧ�ƻ��γ��嵥��������� ѧУID
      ,h.JXJHID as h_JXJHKCQD_JXJHID--��ѧ�ƻ��γ��嵥��������� ��ѧ�ƻ�ID
      ,h.KCH as h_JXJHKCQD_KCH--��ѧ�ƻ��γ��嵥��������� �γ̺�
      ,h.JHBH as h_JXJHKCQD_JHBH--��ѧ�ƻ��γ��嵥��������� �ƻ����
      ,h.XQID as h_JXJHKCQD_XQID--��ѧ�ƻ��γ��嵥��������� ѧ��ID
      ,h.KCMC as h_JXJHKCQD_KCMC--��ѧ�ƻ��γ��嵥��������� �γ�����
      ,h.YXKC as h_JXJHKCQD_YXKC--��ѧ�ƻ��γ��嵥��������� Ԥ�޿γ�
      ,h.SFHXKC as h_JXJHKCQD_SFHXKC--��ѧ�ƻ��γ��嵥��������� �Ƿ���ģ��Ǹɣ�
      ,[hb].MC as h_JXJHKCQD_SFHXKC_MC--�Ƿ��־����� ����
      ,h.KCFLM as h_JXJHKCQD_KCFLM--��ѧ�ƻ��γ��嵥��������� �γ̷�����
      ,[hc].MC as h_JXJHKCQD_KCFLM_MC--�γ̷������ ����
      ,h.KCSXM as h_JXJHKCQD_KCSXM--��ѧ�ƻ��γ��嵥��������� �γ�������
      ,[hd].MC as h_JXJHKCQD_KCSXM_MC--�γ����Դ���� ����
      ,[hd].SM as h_JXJHKCQD_KCSXM_SM--�γ����Դ���� ˵��
      ,h.ZXXQ as h_JXJHKCQD_ZXXQ--��ѧ�ƻ��γ��嵥��������� ִ��ѧ��
      ,h.ZKS as h_JXJHKCQD_ZKS--��ѧ�ƻ��γ��嵥��������� �ܿ�ʱ
      ,h.LLKS as h_JXJHKCQD_LLKS--��ѧ�ƻ��γ��嵥��������� ���ۿ�ʱ
      ,h.SJKS as h_JXJHKCQD_SJKS--��ѧ�ƻ��γ��嵥��������� ʵ����ʱ
      ,h.XF as h_JXJHKCQD_XF--��ѧ�ƻ��γ��嵥��������� ѧ��
      ,h.XFRDHGX as h_JXJHKCQD_XFRDHGX--��ѧ�ƻ��γ��嵥��������� ѧ���϶��ϸ���
      ,h.JXDG as h_JXJHKCQD_JXDG--��ѧ�ƻ��γ��嵥��������� ��ѧ���

FROM dbo.EDU_ZZJX_34_A01_XSKCXF AS a LEFT OUTER JOIN
      dbo.EDU_ZZXS_01_01_XSXX AS c ON a.StudentID = c.ID /*ѧ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS d ON a.XQID = d.ID /*ѧ��ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_01_01_ZYXX AS e ON a.ZYXXID = e.ZYBH /*רҵID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_02_01_ZZNJ AS f ON a.NJID = f.NJDM /*�꼶ID*/ AND a.SCHOOLID = f.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_02_02_ZZBJ AS g ON a.BJID = g.XZBDM /*�༶ID*/ AND a.SCHOOLID = g.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_03_03_JXJHKCQD AS h ON a.KCQDID = h.ID /*���Կ�ĿID*/ AND a.SCHOOLID = h.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS [cb] ON c.SFZJLXM = [cb].DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS [cc] ON c.XBM = [cc].DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS [cd] ON c.XXM = [cd].DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [ce] ON c.CSDM = [ce].DM /*��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS [cf] ON c.MZM = [cf].DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS [cg] ON c.HYZKM = [cg].DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS [ch] ON c.XYZJM = [ch].DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS [ci] ON c.GATQWM = [ci].DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS [cj] ON c.JKZKM = [cj].DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS [ck] ON c.ZZMMM = [ck].DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [cl] ON c.HKSZDXZQHM = [cl].DM /*�������ڵ�����������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS [cm] ON c.HKLBM = [cm].DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [cn] ON c.SFSLDRK = [cn].DM /*�Ƿ��������˿�*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS [co] ON c.GJDQM = [co].DM /*����/����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS [db] ON d.XQM = [db].DM /*ѧ����*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZJZY AS [eb] ON e.ZYDM = [eb].DM /*רҵ����*/ AND e.SSZYML = [eb].ZYMLLB /*����רҵĿ¼*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZYML AS [ec] ON e.SSZYML = [ec].DM /*����רҵĿ¼*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [fb] ON f.NJZT = [fb].DM /*�꼶״̬*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [hb] ON h.SFHXKC = [hb].DM /*�Ƿ���ģ��Ǹɣ�*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_KCFL AS [hc] ON h.KCFLM = [hc].DM /*�γ̷�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_KCSX AS [hd] ON h.KCSXM = [hd].DM /*�γ�������*/
GO
