
--ѧ���ƽ�ѧ�����ݱ�
CREATE VIEW [dbo].[VIEW_EDU_ZXJX_53_A21_XFZJXBSJ_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[XQID]--ѧ��ID
      ,a.[ZRKJSID]--���ον�ʦID
      ,a.[FRKJSID]--���ον�ʦID
      ,a.[KCID]--�γ�ID
      ,a.[KKSJID]--����ʱ��ID
      ,a.[SKDD]--�Ͽεص�
      ,a.[ZKS]--�ܿ�ʱ
      ,a.[BJKRNRS]--�༶����������
      ,a.[ZDKBRS]--��Ϳ�������
      ,a.[ZT]--״̬
      ,a.[BZ]--��ע
      ,a.[KCMC]--�γ�����
      ,a.[SKBJIDLB]--�ڿΰ༶ID�б�
      ,a.[SKBJMCLB]--�ڿΰ༶�����б�
      ,a.[JXBLX]--��ѧ������
      ,c.SCHOOLID as c_XQ_SCHOOLID--ѧ�����ݱ� ѧУ��
      ,c.XNID as c_XQ_XNID--ѧ�����ݱ� ѧ��
      ,c.XQM as c_XQ_XQM--ѧ�����ݱ� ѧ����
      ,[cb].MC as c_XQ_XQM_MC--ѧ�ڴ���� ����
      ,c.XQMC as c_XQ_XQMC--ѧ�����ݱ� ѧ������
      ,c.XQKSRQ as c_XQ_XQKSRQ--ѧ�����ݱ� ѧ�ڿ�ʼ����
      ,c.XQJSRQ as c_XQ_XQJSRQ--ѧ�����ݱ� ѧ�ڽ�������
      ,d.SCHOOLID as d_JZGJBSJ_SCHOOLID--��ְ��������������� ѧУ��
      ,d.GH as d_JZGJBSJ_GH--��ְ��������������� ����
      ,d.XM as d_JZGJBSJ_XM--��ְ��������������� ����
      ,d.YWXM as d_JZGJBSJ_YWXM--��ְ��������������� Ӣ������
      ,d.XMPY as d_JZGJBSJ_XMPY--��ְ��������������� ����ƴ��
      ,d.CYM as d_JZGJBSJ_CYM--��ְ��������������� ������
      ,d.XBM as d_JZGJBSJ_XBM--��ְ��������������� �Ա���
      ,[db].MC as d_JZGJBSJ_XBM_MC--�˵��Ա���� ����
      ,d.CSRQ as d_JZGJBSJ_CSRQ--��ְ��������������� ��������
      ,d.CSDM as d_JZGJBSJ_CSDM--��ְ��������������� ��������
      ,[dc].MC as d_JZGJBSJ_CSDM_MC--�л����񹲺͹������������� ����
      ,d.JG as d_JZGJBSJ_JG--��ְ��������������� ����
      ,d.MZM as d_JZGJBSJ_MZM--��ְ��������������� ������
      ,[dd].MZMC as d_JZGJBSJ_MZM_MZMC--�й����������Ƶ�������ĸƴд���ʹ��� ��������
      ,[dd].ZMDM as d_JZGJBSJ_MZM_ZMDM--�й����������Ƶ�������ĸƴд���ʹ��� ��ĸ����
      ,d.GJDQM as d_JZGJBSJ_GJDQM--��ְ��������������� ����/������
      ,[de].GJDQMCJC as d_JZGJBSJ_GJDQM_GJDQMCJC--��������͵������ƴ��� ����/�������Ƽ��
      ,[de].EZMDM as d_JZGJBSJ_GJDQM_EZMDM--��������͵������ƴ��� ����ĸ����
      ,[de].SZMDM as d_JZGJBSJ_GJDQM_SZMDM--��������͵������ƴ��� ����ĸ����
      ,d.SFZJLXM as d_JZGJBSJ_SFZJLXM--��ְ��������������� ���֤��������
      ,[df].MC as d_JZGJBSJ_SFZJLXM_MC--���֤�����ʹ���� ����
      ,d.SFZJH as d_JZGJBSJ_SFZJH--��ְ��������������� ���֤����
      ,d.HYZKM as d_JZGJBSJ_HYZKM--��ְ��������������� ����״����
      ,[dg].MC as d_JZGJBSJ_HYZKM_MC--����״������ ����
      ,d.GATQWM as d_JZGJBSJ_GATQWM--��ְ��������������� �۰�̨������
      ,[dh].MC as d_JZGJBSJ_GATQWM_MC--�۰�̨�������� ����
      ,[dh].SM as d_JZGJBSJ_GATQWM_SM--�۰�̨�������� ˵��
      ,d.ZZMMM as d_JZGJBSJ_ZZMMM--��ְ��������������� ������ò��
      ,[di].MC as d_JZGJBSJ_ZZMMM_MC--������ò���� ����
      ,[di].JC as d_JZGJBSJ_ZZMMM_JC--������ò���� ���
      ,d.JKZKM as d_JZGJBSJ_JKZKM--��ְ��������������� ����״����
      ,[dj].MC as d_JZGJBSJ_JKZKM_MC--����״��1λ���ִ��� ����
      ,[dj].SM as d_JZGJBSJ_JKZKM_SM--����״��1λ���ִ��� ˵��
      ,d.XYZJM as d_JZGJBSJ_XYZJM--��ְ��������������� �����ڽ���
      ,[dk].MC as d_JZGJBSJ_XYZJM_MC--�ڽ��������� ����
      ,d.XXM as d_JZGJBSJ_XXM--��ְ��������������� Ѫ����
      ,[dl].MC as d_JZGJBSJ_XXM_MC--Ѫ�ʹ���� ����
      ,[dl].JC as d_JZGJBSJ_XXM_JC--Ѫ�ʹ���� ���
      ,d.ZP as d_JZGJBSJ_ZP--��ְ��������������� ��Ƭ
      ,d.SFZJYXQ as d_JZGJBSJ_SFZJYXQ--��ְ��������������� ���֤����Ч��
      ,d.JGH as d_JZGJBSJ_JGH--��ְ��������������� ������
      ,d.JTZZ as d_JZGJBSJ_JTZZ--��ְ��������������� ��ͥסַ
      ,d.XZZ as d_JZGJBSJ_XZZ--��ְ��������������� ��סַ
      ,d.HKSZD as d_JZGJBSJ_HKSZD--��ְ��������������� �������ڵ�
      ,d.HKXZM as d_JZGJBSJ_HKXZM--��ְ��������������� ����������
      ,[dm].MC as d_JZGJBSJ_HKXZM_MC--���������� ����
      ,d.XLM as d_JZGJBSJ_XLM--��ְ��������������� ѧ����
      ,[dn].MC as d_JZGJBSJ_XLM_MC--ѧ������ ����
      ,d.GZNY as d_JZGJBSJ_GZNY--��ְ��������������� �μӹ�������
      ,d.LXNY as d_JZGJBSJ_LXNY--��ְ��������������� ��У����
      ,d.CJNY as d_JZGJBSJ_CJNY--��ְ��������������� �ӽ�����
      ,d.BZLBM as d_JZGJBSJ_BZLBM--��ְ��������������� ���������
      ,[do].MC as d_JZGJBSJ_BZLBM_MC--��Сѧ����������� ����
      ,d.DABH as d_JZGJBSJ_DABH--��ְ��������������� �������
      ,d.DAWB as d_JZGJBSJ_DAWB--��ְ��������������� �����ı�
      ,d.TXDZ as d_JZGJBSJ_TXDZ--��ְ��������������� ͨ�ŵ�ַ
      ,d.LXDH as d_JZGJBSJ_LXDH--��ְ��������������� ��ϵ�绰
      ,d.YZBM as d_JZGJBSJ_YZBM--��ְ��������������� ��������
      ,d.DZXX as d_JZGJBSJ_DZXX--��ְ��������������� ��������
      ,d.ZYDZ as d_JZGJBSJ_ZYDZ--��ְ��������������� ��ҳ��ַ
      ,d.TC as d_JZGJBSJ_TC--��ְ��������������� �س�
      ,d.GWZYM as d_JZGJBSJ_GWZYM--��ְ��������������� ��λְҵ��
      ,[dp].MC as d_JZGJBSJ_GWZYM_MC--��λְҵ����� ����
      ,d.ZYRKXD as d_JZGJBSJ_ZYRKXD--��ְ��������������� ��Ҫ�ο�ѧ��
      ,[dq].MC as d_JZGJBSJ_ZYRKXD_MC--�ο�ѧ�δ���� ����
      ,d.JZGLXID as d_JZGJBSJ_JZGLXID--��ְ��������������� ��ְ������ID
      ,e.SCHOOLID as e_JZGJBSJ_SCHOOLID--��ְ��������������� ѧУ��
      ,e.GH as e_JZGJBSJ_GH--��ְ��������������� ����
      ,e.XM as e_JZGJBSJ_XM--��ְ��������������� ����
      ,e.YWXM as e_JZGJBSJ_YWXM--��ְ��������������� Ӣ������
      ,e.XMPY as e_JZGJBSJ_XMPY--��ְ��������������� ����ƴ��
      ,e.CYM as e_JZGJBSJ_CYM--��ְ��������������� ������
      ,e.XBM as e_JZGJBSJ_XBM--��ְ��������������� �Ա���
      ,[eb].MC as e_JZGJBSJ_XBM_MC--�˵��Ա���� ����
      ,e.CSRQ as e_JZGJBSJ_CSRQ--��ְ��������������� ��������
      ,e.CSDM as e_JZGJBSJ_CSDM--��ְ��������������� ��������
      ,[ec].MC as e_JZGJBSJ_CSDM_MC--�л����񹲺͹������������� ����
      ,e.JG as e_JZGJBSJ_JG--��ְ��������������� ����
      ,e.MZM as e_JZGJBSJ_MZM--��ְ��������������� ������
      ,[ed].MZMC as e_JZGJBSJ_MZM_MZMC--�й����������Ƶ�������ĸƴд���ʹ��� ��������
      ,[ed].ZMDM as e_JZGJBSJ_MZM_ZMDM--�й����������Ƶ�������ĸƴд���ʹ��� ��ĸ����
      ,e.GJDQM as e_JZGJBSJ_GJDQM--��ְ��������������� ����/������
      ,[ee].GJDQMCJC as e_JZGJBSJ_GJDQM_GJDQMCJC--��������͵������ƴ��� ����/�������Ƽ��
      ,[ee].EZMDM as e_JZGJBSJ_GJDQM_EZMDM--��������͵������ƴ��� ����ĸ����
      ,[ee].SZMDM as e_JZGJBSJ_GJDQM_SZMDM--��������͵������ƴ��� ����ĸ����
      ,e.SFZJLXM as e_JZGJBSJ_SFZJLXM--��ְ��������������� ���֤��������
      ,[ef].MC as e_JZGJBSJ_SFZJLXM_MC--���֤�����ʹ���� ����
      ,e.SFZJH as e_JZGJBSJ_SFZJH--��ְ��������������� ���֤����
      ,e.HYZKM as e_JZGJBSJ_HYZKM--��ְ��������������� ����״����
      ,[eg].MC as e_JZGJBSJ_HYZKM_MC--����״������ ����
      ,e.GATQWM as e_JZGJBSJ_GATQWM--��ְ��������������� �۰�̨������
      ,[eh].MC as e_JZGJBSJ_GATQWM_MC--�۰�̨�������� ����
      ,[eh].SM as e_JZGJBSJ_GATQWM_SM--�۰�̨�������� ˵��
      ,e.ZZMMM as e_JZGJBSJ_ZZMMM--��ְ��������������� ������ò��
      ,[ei].MC as e_JZGJBSJ_ZZMMM_MC--������ò���� ����
      ,[ei].JC as e_JZGJBSJ_ZZMMM_JC--������ò���� ���
      ,e.JKZKM as e_JZGJBSJ_JKZKM--��ְ��������������� ����״����
      ,[ej].MC as e_JZGJBSJ_JKZKM_MC--����״��1λ���ִ��� ����
      ,[ej].SM as e_JZGJBSJ_JKZKM_SM--����״��1λ���ִ��� ˵��
      ,e.XYZJM as e_JZGJBSJ_XYZJM--��ְ��������������� �����ڽ���
      ,[ek].MC as e_JZGJBSJ_XYZJM_MC--�ڽ��������� ����
      ,e.XXM as e_JZGJBSJ_XXM--��ְ��������������� Ѫ����
      ,[el].MC as e_JZGJBSJ_XXM_MC--Ѫ�ʹ���� ����
      ,[el].JC as e_JZGJBSJ_XXM_JC--Ѫ�ʹ���� ���
      ,e.ZP as e_JZGJBSJ_ZP--��ְ��������������� ��Ƭ
      ,e.SFZJYXQ as e_JZGJBSJ_SFZJYXQ--��ְ��������������� ���֤����Ч��
      ,e.JGH as e_JZGJBSJ_JGH--��ְ��������������� ������
      ,e.JTZZ as e_JZGJBSJ_JTZZ--��ְ��������������� ��ͥסַ
      ,e.XZZ as e_JZGJBSJ_XZZ--��ְ��������������� ��סַ
      ,e.HKSZD as e_JZGJBSJ_HKSZD--��ְ��������������� �������ڵ�
      ,e.HKXZM as e_JZGJBSJ_HKXZM--��ְ��������������� ����������
      ,[em].MC as e_JZGJBSJ_HKXZM_MC--���������� ����
      ,e.XLM as e_JZGJBSJ_XLM--��ְ��������������� ѧ����
      ,[en].MC as e_JZGJBSJ_XLM_MC--ѧ������ ����
      ,e.GZNY as e_JZGJBSJ_GZNY--��ְ��������������� �μӹ�������
      ,e.LXNY as e_JZGJBSJ_LXNY--��ְ��������������� ��У����
      ,e.CJNY as e_JZGJBSJ_CJNY--��ְ��������������� �ӽ�����
      ,e.BZLBM as e_JZGJBSJ_BZLBM--��ְ��������������� ���������
      ,[eo].MC as e_JZGJBSJ_BZLBM_MC--��Сѧ����������� ����
      ,e.DABH as e_JZGJBSJ_DABH--��ְ��������������� �������
      ,e.DAWB as e_JZGJBSJ_DAWB--��ְ��������������� �����ı�
      ,e.TXDZ as e_JZGJBSJ_TXDZ--��ְ��������������� ͨ�ŵ�ַ
      ,e.LXDH as e_JZGJBSJ_LXDH--��ְ��������������� ��ϵ�绰
      ,e.YZBM as e_JZGJBSJ_YZBM--��ְ��������������� ��������
      ,e.DZXX as e_JZGJBSJ_DZXX--��ְ��������������� ��������
      ,e.ZYDZ as e_JZGJBSJ_ZYDZ--��ְ��������������� ��ҳ��ַ
      ,e.TC as e_JZGJBSJ_TC--��ְ��������������� �س�
      ,e.GWZYM as e_JZGJBSJ_GWZYM--��ְ��������������� ��λְҵ��
      ,[ep].MC as e_JZGJBSJ_GWZYM_MC--��λְҵ����� ����
      ,e.ZYRKXD as e_JZGJBSJ_ZYRKXD--��ְ��������������� ��Ҫ�ο�ѧ��
      ,[eq].MC as e_JZGJBSJ_ZYRKXD_MC--�ο�ѧ�δ���� ����
      ,e.JZGLXID as e_JZGJBSJ_JZGLXID--��ְ��������������� ��ְ������ID
      ,f.SCHOOLID as f_XFZKC_SCHOOLID--ѧ���ƿγ̱� ѧУID
      ,f.KCH as f_XFZKC_KCH--ѧ���ƿγ̱� �γ̺�
      ,f.KCLB as f_XFZKC_KCLB--ѧ���ƿγ̱� �γ����
      ,f.SSKM as f_XFZKC_SSKM--ѧ���ƿγ̱� ������Ŀ
      ,f.KCMC as f_XFZKC_KCMC--ѧ���ƿγ̱� �γ�����
      ,f.SFSY as f_XFZKC_SFSY--ѧ���ƿγ̱� �Ƿ�ʹ��
      ,f.PLSX as f_XFZKC_PLSX--ѧ���ƿγ̱� ����˳��
      ,g.SCHOOLID as g_XFZKKSJ_SCHOOLID--ѧ���ƿ���ʱ��� ѧУ
      ,g.SJMC as g_XFZKKSJ_SJMC--ѧ���ƿ���ʱ��� ʱ������
      ,g.SDIDLB as g_XFZKKSJ_SDIDLB--ѧ���ƿ���ʱ��� ʱ��ID�б�
      ,g.SDMCLB as g_XFZKKSJ_SDMCLB--ѧ���ƿ���ʱ��� ʱ�������б�

FROM dbo.EDU_ZXJX_53_A21_XFZJXBSJ AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS c ON a.XQID = c.ID /*ѧ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZXJZ_01_01_JZGJBSJ AS d ON a.ZRKJSID = d.ID /*���ον�ʦID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZXJZ_01_01_JZGJBSJ AS e ON a.FRKJSID = e.ID /*���ον�ʦID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZXJX_53_A01_XFZKC AS f ON a.KCID = f.ID /*�γ�ID*/ AND a.SCHOOLID = f.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZXJX_53_A02_XFZKKSJ AS g ON a.KKSJID = g.ID /*����ʱ��ID*/ AND a.SCHOOLID = g.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS [cb] ON c.XQM = [cb].DM /*ѧ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS [db] ON d.XBM = [db].DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [dc] ON d.CSDM = [dc].DM /*��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS [dd] ON d.MZM = [dd].DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS [de] ON d.GJDQM = [de].DM /*����/������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS [df] ON d.SFZJLXM = [df].DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS [dg] ON d.HYZKM = [dg].DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS [dh] ON d.GATQWM = [dh].DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS [di] ON d.ZZMMM = [di].DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS [dj] ON d.JKZKM = [dj].DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS [dk] ON d.XYZJM = [dk].DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS [dl] ON d.XXM = [dl].DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS [dm] ON d.HKXZM = [dm].DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_GB_XL AS [dn] ON d.XLM = [dn].DM /*ѧ����*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXBZLB AS [do] ON d.BZLBM = [do].DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWZY AS [dp] ON d.GWZYM = [dp].DM /*��λְҵ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_RKXD AS [dq] ON d.ZYRKXD = [dq].DM /*��Ҫ�ο�ѧ��*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS [eb] ON e.XBM = [eb].DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [ec] ON e.CSDM = [ec].DM /*��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS [ed] ON e.MZM = [ed].DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS [ee] ON e.GJDQM = [ee].DM /*����/������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS [ef] ON e.SFZJLXM = [ef].DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS [eg] ON e.HYZKM = [eg].DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS [eh] ON e.GATQWM = [eh].DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS [ei] ON e.ZZMMM = [ei].DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS [ej] ON e.JKZKM = [ej].DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS [ek] ON e.XYZJM = [ek].DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS [el] ON e.XXM = [el].DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS [em] ON e.HKXZM = [em].DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_GB_XL AS [en] ON e.XLM = [en].DM /*ѧ����*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXBZLB AS [eo] ON e.BZLBM = [eo].DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWZY AS [ep] ON e.GWZYM = [ep].DM /*��λְҵ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_RKXD AS [eq] ON e.ZYRKXD = [eq].DM /*��Ҫ�ο�ѧ��*/
GO
