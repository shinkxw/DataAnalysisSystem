
--�������ݱ�
CREATE VIEW [dbo].[VIEW_EDU_ZXJX_11_A04_KTSJ_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[XNID]--ѧ��ID
      ,a.[XQID]--ѧ��ID
      ,a.[KTMC]--��������
      ,a.[KTZT]--��������
      ,a.[KTNR]--��������
      ,a.[SQJSID]--�����ʦID
      ,a.[SQSJ]--����ʱ��
      ,a.[SHZT]--���״̬
      ,a.[SHJSID]--��˽�ʦID
      ,a.[SHSJ]--���ʱ��
      ,a.[JXZT]--����״̬
      ,a.[JXSJ]--����ʱ��
      ,c.SCHOOLID as c_XN_SCHOOLID--ѧ��� ѧУ��
      ,c.XN as c_XN_XN--ѧ��� ѧ��
      ,d.SCHOOLID as d_XQ_SCHOOLID--ѧ�����ݱ� ѧУ��
      ,d.XNID as d_XQ_XNID--ѧ�����ݱ� ѧ��
      ,d.XQM as d_XQ_XQM--ѧ�����ݱ� ѧ����
      ,[db].MC as d_XQ_XQM_MC--ѧ�ڴ���� ����
      ,d.XQMC as d_XQ_XQMC--ѧ�����ݱ� ѧ������
      ,d.XQKSRQ as d_XQ_XQKSRQ--ѧ�����ݱ� ѧ�ڿ�ʼ����
      ,d.XQJSRQ as d_XQ_XQJSRQ--ѧ�����ݱ� ѧ�ڽ�������
      ,d.BaseProjectInfoID as d_XQ_BaseProjectInfoID--ѧ�����ݱ� ��BaseProjectInfo���
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
      ,f.SCHOOLID as f_JZGJBSJ_SCHOOLID--��ְ��������������� ѧУ��
      ,f.GH as f_JZGJBSJ_GH--��ְ��������������� ����
      ,f.XM as f_JZGJBSJ_XM--��ְ��������������� ����
      ,f.YWXM as f_JZGJBSJ_YWXM--��ְ��������������� Ӣ������
      ,f.XMPY as f_JZGJBSJ_XMPY--��ְ��������������� ����ƴ��
      ,f.CYM as f_JZGJBSJ_CYM--��ְ��������������� ������
      ,f.XBM as f_JZGJBSJ_XBM--��ְ��������������� �Ա���
      ,[fb].MC as f_JZGJBSJ_XBM_MC--�˵��Ա���� ����
      ,f.CSRQ as f_JZGJBSJ_CSRQ--��ְ��������������� ��������
      ,f.CSDM as f_JZGJBSJ_CSDM--��ְ��������������� ��������
      ,[fc].MC as f_JZGJBSJ_CSDM_MC--�л����񹲺͹������������� ����
      ,f.JG as f_JZGJBSJ_JG--��ְ��������������� ����
      ,f.MZM as f_JZGJBSJ_MZM--��ְ��������������� ������
      ,[fd].MZMC as f_JZGJBSJ_MZM_MZMC--�й����������Ƶ�������ĸƴд���ʹ��� ��������
      ,[fd].ZMDM as f_JZGJBSJ_MZM_ZMDM--�й����������Ƶ�������ĸƴд���ʹ��� ��ĸ����
      ,f.GJDQM as f_JZGJBSJ_GJDQM--��ְ��������������� ����/������
      ,[fe].GJDQMCJC as f_JZGJBSJ_GJDQM_GJDQMCJC--��������͵������ƴ��� ����/�������Ƽ��
      ,[fe].EZMDM as f_JZGJBSJ_GJDQM_EZMDM--��������͵������ƴ��� ����ĸ����
      ,[fe].SZMDM as f_JZGJBSJ_GJDQM_SZMDM--��������͵������ƴ��� ����ĸ����
      ,f.SFZJLXM as f_JZGJBSJ_SFZJLXM--��ְ��������������� ���֤��������
      ,[ff].MC as f_JZGJBSJ_SFZJLXM_MC--���֤�����ʹ���� ����
      ,f.SFZJH as f_JZGJBSJ_SFZJH--��ְ��������������� ���֤����
      ,f.HYZKM as f_JZGJBSJ_HYZKM--��ְ��������������� ����״����
      ,[fg].MC as f_JZGJBSJ_HYZKM_MC--����״������ ����
      ,f.GATQWM as f_JZGJBSJ_GATQWM--��ְ��������������� �۰�̨������
      ,[fh].MC as f_JZGJBSJ_GATQWM_MC--�۰�̨�������� ����
      ,[fh].SM as f_JZGJBSJ_GATQWM_SM--�۰�̨�������� ˵��
      ,f.ZZMMM as f_JZGJBSJ_ZZMMM--��ְ��������������� ������ò��
      ,[fi].MC as f_JZGJBSJ_ZZMMM_MC--������ò���� ����
      ,[fi].JC as f_JZGJBSJ_ZZMMM_JC--������ò���� ���
      ,f.JKZKM as f_JZGJBSJ_JKZKM--��ְ��������������� ����״����
      ,[fj].MC as f_JZGJBSJ_JKZKM_MC--����״��1λ���ִ��� ����
      ,[fj].SM as f_JZGJBSJ_JKZKM_SM--����״��1λ���ִ��� ˵��
      ,f.XYZJM as f_JZGJBSJ_XYZJM--��ְ��������������� �����ڽ���
      ,[fk].MC as f_JZGJBSJ_XYZJM_MC--�ڽ��������� ����
      ,f.XXM as f_JZGJBSJ_XXM--��ְ��������������� Ѫ����
      ,[fl].MC as f_JZGJBSJ_XXM_MC--Ѫ�ʹ���� ����
      ,[fl].JC as f_JZGJBSJ_XXM_JC--Ѫ�ʹ���� ���
      ,f.ZP as f_JZGJBSJ_ZP--��ְ��������������� ��Ƭ
      ,f.SFZJYXQ as f_JZGJBSJ_SFZJYXQ--��ְ��������������� ���֤����Ч��
      ,f.JGH as f_JZGJBSJ_JGH--��ְ��������������� ������
      ,f.JTZZ as f_JZGJBSJ_JTZZ--��ְ��������������� ��ͥסַ
      ,f.XZZ as f_JZGJBSJ_XZZ--��ְ��������������� ��סַ
      ,f.HKSZD as f_JZGJBSJ_HKSZD--��ְ��������������� �������ڵ�
      ,f.HKXZM as f_JZGJBSJ_HKXZM--��ְ��������������� ����������
      ,[fm].MC as f_JZGJBSJ_HKXZM_MC--���������� ����
      ,f.XLM as f_JZGJBSJ_XLM--��ְ��������������� ѧ����
      ,[fn].MC as f_JZGJBSJ_XLM_MC--ѧ������ ����
      ,f.GZNY as f_JZGJBSJ_GZNY--��ְ��������������� �μӹ�������
      ,f.LXNY as f_JZGJBSJ_LXNY--��ְ��������������� ��У����
      ,f.CJNY as f_JZGJBSJ_CJNY--��ְ��������������� �ӽ�����
      ,f.BZLBM as f_JZGJBSJ_BZLBM--��ְ��������������� ���������
      ,[fo].MC as f_JZGJBSJ_BZLBM_MC--��Сѧ����������� ����
      ,f.DABH as f_JZGJBSJ_DABH--��ְ��������������� �������
      ,f.DAWB as f_JZGJBSJ_DAWB--��ְ��������������� �����ı�
      ,f.TXDZ as f_JZGJBSJ_TXDZ--��ְ��������������� ͨ�ŵ�ַ
      ,f.LXDH as f_JZGJBSJ_LXDH--��ְ��������������� ��ϵ�绰
      ,f.YZBM as f_JZGJBSJ_YZBM--��ְ��������������� ��������
      ,f.DZXX as f_JZGJBSJ_DZXX--��ְ��������������� ��������
      ,f.ZYDZ as f_JZGJBSJ_ZYDZ--��ְ��������������� ��ҳ��ַ
      ,f.TC as f_JZGJBSJ_TC--��ְ��������������� �س�
      ,f.GWZYM as f_JZGJBSJ_GWZYM--��ְ��������������� ��λְҵ��
      ,[fp].MC as f_JZGJBSJ_GWZYM_MC--��λְҵ����� ����
      ,f.ZYRKXD as f_JZGJBSJ_ZYRKXD--��ְ��������������� ��Ҫ�ο�ѧ��
      ,[fq].MC as f_JZGJBSJ_ZYRKXD_MC--�ο�ѧ�δ���� ����
      ,f.JZGLXID as f_JZGJBSJ_JZGLXID--��ְ��������������� ��ְ������ID

FROM dbo.EDU_ZXJX_11_A04_KTSJ AS a LEFT OUTER JOIN
      dbo.EDU_SYS_01_XN AS c ON a.XNID = c.ID /*ѧ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS d ON a.XQID = d.ID /*ѧ��ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZXJZ_01_01_JZGJBSJ AS e ON a.SQJSID = e.ID /*�����ʦID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZXJZ_01_01_JZGJBSJ AS f ON a.SHJSID = f.ID /*��˽�ʦID*/ AND a.SCHOOLID = f.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS [db] ON d.XQM = [db].DM /*ѧ����*/ LEFT OUTER JOIN
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
      dbo.EDU_JY_RKXD AS [eq] ON e.ZYRKXD = [eq].DM /*��Ҫ�ο�ѧ��*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS [fb] ON f.XBM = [fb].DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [fc] ON f.CSDM = [fc].DM /*��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS [fd] ON f.MZM = [fd].DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS [fe] ON f.GJDQM = [fe].DM /*����/������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS [ff] ON f.SFZJLXM = [ff].DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS [fg] ON f.HYZKM = [fg].DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS [fh] ON f.GATQWM = [fh].DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS [fi] ON f.ZZMMM = [fi].DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS [fj] ON f.JKZKM = [fj].DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS [fk] ON f.XYZJM = [fk].DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS [fl] ON f.XXM = [fl].DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS [fm] ON f.HKXZM = [fm].DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_GB_XL AS [fn] ON f.XLM = [fn].DM /*ѧ����*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXBZLB AS [fo] ON f.BZLBM = [fo].DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWZY AS [fp] ON f.GWZYM = [fp].DM /*��λְҵ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_RKXD AS [fq] ON f.ZYRKXD = [fq].DM /*��Ҫ�ο�ѧ��*/
GO
