
--��ί��Ա��
CREATE VIEW [dbo].[VIEW_EDU_ZZXS_19_A02_BWCY_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[BWID]--��ίID
      ,a.[XSXXID]--ѧ��ID
      ,a.[XQID]--ѧ��ID
      ,a.[ZYXXID]--רҵID
      ,a.[NJID]--�꼶ID
      ,a.[BJID]--�༶ID
      ,c.SCHOOLID as c_BWSJ_SCHOOLID--��ί���ݱ� ѧУ
      ,c.BWMC as c_BWSJ_BWMC--��ί���ݱ� ��ί����
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
      ,e.SCHOOLID as e_XQ_SCHOOLID--ѧ�����ݱ� ѧУ��
      ,e.XNID as e_XQ_XNID--ѧ�����ݱ� ѧ��
      ,e.XQM as e_XQ_XQM--ѧ�����ݱ� ѧ����
      ,[eb].MC as e_XQ_XQM_MC--ѧ�ڴ���� ����
      ,e.XQMC as e_XQ_XQMC--ѧ�����ݱ� ѧ������
      ,e.XQKSRQ as e_XQ_XQKSRQ--ѧ�����ݱ� ѧ�ڿ�ʼ����
      ,e.XQJSRQ as e_XQ_XQJSRQ--ѧ�����ݱ� ѧ�ڽ�������
      ,f.SCHOOLID as f_ZYXX_SCHOOLID--רҵ������Ϣ���ݱ� ѧУ��
      ,f.ZYDM as f_ZYXX_ZYDM--רҵ������Ϣ���ݱ� רҵ����
      ,[fb].ZYMLLB as f_ZYXX_ZYDM_ZYMLLB--�Խ�רҵ���� רҵĿ¼���
      ,[fb].MC as f_ZYXX_ZYDM_MC--�Խ�רҵ���� ����
      ,f.ZYMC as f_ZYXX_ZYMC--רҵ������Ϣ���ݱ� רҵ����
      ,f.ZYYWMC as f_ZYXX_ZYYWMC--רҵ������Ϣ���ݱ� רҵӢ������
      ,f.XZ as f_ZYXX_XZ--רҵ������Ϣ���ݱ� ѧ��
      ,f.ZYFXMC as f_ZYXX_ZYFXMC--רҵ������Ϣ���ݱ� רҵ��������
      ,f.ZYJC as f_ZYXX_ZYJC--רҵ������Ϣ���ݱ� רҵ���
      ,f.JLNY as f_ZYXX_JLNY--רҵ������Ϣ���ݱ� ��������
      ,f.ZYJSS as f_ZYXX_ZYJSS--רҵ������Ϣ���ݱ� רҵ��ʦ��
      ,f.KSJGH as f_ZYXX_KSJGH--רҵ������Ϣ���ݱ� ���������
      ,f.ZXF as f_ZYXX_ZXF--רҵ������Ϣ���ݱ� ��ѧ��
      ,f.SSZYML as f_ZYXX_SSZYML--רҵ������Ϣ���ݱ� ����רҵĿ¼
      ,[fc].MC as f_ZYXX_SSZYML_MC--רҵĿ¼���� ����
      ,f.ZYLB as f_ZYXX_ZYLB--רҵ������Ϣ���ݱ� רҵ�������
      ,g.SCHOOLID as g_ZZNJ_SCHOOLID--ѧУ�꼶���ݱ� ѧУ��
      ,g.NJMC as g_ZZNJ_NJMC--ѧУ�꼶���ݱ� �꼶����
      ,g.SSNF as g_ZZNJ_SSNF--ѧУ�꼶���ݱ� �������
      ,g.NJZT as g_ZZNJ_NJZT--ѧУ�꼶���ݱ� �꼶״̬
      ,[gb].MC as g_ZZNJ_NJZT_MC--�Ƿ��־����� ����
      ,h.SCHOOLID as h_ZZBJ_SCHOOLID--ѧУ�༶���ݱ� ѧУ��
      ,h.ZYXXID as h_ZZBJ_ZYXXID--ѧУ�༶���ݱ� רҵ������Ϣ
      ,h.ZZNJID as h_ZZBJ_ZZNJID--ѧУ�༶���ݱ� ѧУ�꼶���ݱ�
      ,h.XZBMC as h_ZZBJ_XZBMC--ѧУ�༶���ݱ� ����������
      ,h.JBNY as h_ZZBJ_JBNY--ѧУ�༶���ݱ� ��������
      ,h.BZRGH as h_ZZBJ_BZRGH--ѧУ�༶���ݱ� �����ι���
      ,h.JSBH as h_ZZBJ_JSBH--ѧУ�༶���ݱ� ���ұ��
      ,h.NANSRS as h_ZZBJ_NANSRS--ѧУ�༶���ݱ� ��������
      ,h.NVSRS as h_ZZBJ_NVSRS--ѧУ�༶���ݱ� Ů������
      ,h.ZRS as h_ZZBJ_ZRS--ѧУ�༶���ݱ� ������
      ,h.BZXH as h_ZZBJ_BZXH--ѧУ�༶���ݱ� �೤ѧ��
      ,h.JXJH as h_ZZBJ_JXJH--ѧУ�༶���ݱ� ��ѧ�ƻ�
      ,h.JGH as h_ZZBJ_JGH--ѧУ�༶���ݱ� ������
      ,h.XQDM as h_ZZBJ_XQDM--ѧУ�༶���ݱ� У������
      ,h.BZRID as h_ZZBJ_BZRID--ѧУ�༶���ݱ� ������ID

FROM dbo.EDU_ZZXS_19_A02_BWCY AS a LEFT OUTER JOIN
      dbo.EDU_ZZXS_19_A01_BWSJ AS c ON a.BWID = c.ID /*��ίID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZXS_01_01_XSXX AS d ON a.XSXXID = d.ID /*ѧ��ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS e ON a.XQID = e.ID /*ѧ��ID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_01_01_ZYXX AS f ON a.ZYXXID = f.ZYBH /*רҵID*/ AND a.SCHOOLID = f.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_02_01_ZZNJ AS g ON a.NJID = g.NJDM /*�꼶ID*/ AND a.SCHOOLID = g.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_02_02_ZZBJ AS h ON a.BJID = h.XZBDM /*�༶ID*/ AND a.SCHOOLID = h.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
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
      dbo.EDU_JY_XQ AS [eb] ON e.XQM = [eb].DM /*ѧ����*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZJZY AS [fb] ON f.ZYDM = [fb].DM /*רҵ����*/ AND f.SSZYML = [fb].ZYMLLB /*����רҵĿ¼*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZYML AS [fc] ON f.SSZYML = [fc].DM /*����רҵĿ¼*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [gb] ON g.NJZT = [gb].DM /*�꼶״̬*/
GO
