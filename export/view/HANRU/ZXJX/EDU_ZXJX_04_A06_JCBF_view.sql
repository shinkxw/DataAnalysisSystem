
--�̲ı��ϱ�
CREATE VIEW [dbo].[VIEW_EDU_ZXJX_04_A06_JCBF_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУID
      ,a.[XQID]--ѧ��ID
      ,a.[JCID]--�̲�ID
      ,a.[BFSL]--��������
      ,a.[BFYY]--����ԭ��
      ,a.[BFSJ]--����ʱ��
      ,a.[JSRID]--������ID
      ,c.SCHOOLID as c_XQ_SCHOOLID--ѧ�����ݱ� ѧУ��
      ,c.XNID as c_XQ_XNID--ѧ�����ݱ� ѧ��
      ,c.XQM as c_XQ_XQM--ѧ�����ݱ� ѧ����
      ,[cb].MC as c_XQ_XQM_MC--ѧ�ڴ���� ����
      ,c.XQMC as c_XQ_XQMC--ѧ�����ݱ� ѧ������
      ,c.XQKSRQ as c_XQ_XQKSRQ--ѧ�����ݱ� ѧ�ڿ�ʼ����
      ,c.XQJSRQ as c_XQ_XQJSRQ--ѧ�����ݱ� ѧ�ڽ�������
      ,c.BaseProjectInfoID as c_XQ_BaseProjectInfoID--ѧ�����ݱ� ��BaseProjectInfo���
      ,d.SCHOOLID as d_JCJBXX_SCHOOLID--�̲Ļ�����Ϣ�� ѧУID
      ,d.JCDM as d_JCJBXX_JCDM--�̲Ļ�����Ϣ�� �̲Ĵ���
      ,d.JCMC as d_JCJBXX_JCMC--�̲Ļ�����Ϣ�� �̲�����
      ,d.CBH as d_JCJBXX_CBH--�̲Ļ�����Ϣ�� �����
      ,d.DYZZ as d_JCJBXX_DYZZ--�̲Ļ�����Ϣ�� ��һ����
      ,d.QTZZ as d_JCJBXX_QTZZ--�̲Ļ�����Ϣ�� ��������
      ,d.BC as d_JCJBXX_BC--�̲Ļ�����Ϣ�� ���
      ,d.YC as d_JCJBXX_YC--�̲Ļ�����Ϣ�� ӡ��
      ,d.JG as d_JCJBXX_JG--�̲Ļ�����Ϣ�� �۸�
      ,d.CBS as d_JCJBXX_CBS--�̲Ļ�����Ϣ�� ������
      ,d.CBRQ as d_JCJBXX_CBRQ--�̲Ļ�����Ϣ�� ��������
      ,d.SFYLXC as d_JCJBXX_SFYLXC--�̲Ļ�����Ϣ�� �Ƿ�����ϰ��
      ,[db].MC as d_JCJBXX_SFYLXC_MC--�Ƿ��־����� ����
      ,d.SFYJCJF as d_JCJBXX_SFYJCJF--�̲Ļ�����Ϣ�� �Ƿ��н̲ν̸�
      ,[dc].MC as d_JCJBXX_SFYJCJF_MC--�Ƿ��־����� ����
      ,d.NRJJ as d_JCJBXX_NRJJ--�̲Ļ�����Ϣ�� ���ݼ��
      ,d.DQZT as d_JCJBXX_DQZT--�̲Ļ�����Ϣ�� ��ǰ״̬
      ,d.ZDKC as d_JCJBXX_ZDKC--�̲Ļ�����Ϣ�� ��Ϳ��
      ,d.DQKC as d_JCJBXX_DQKC--�̲Ļ�����Ϣ�� ��ǰ���
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
      ,e.XQ as e_JZGJBSJ_XQ--��ְ��������������� У��
      ,e.ZGZC as e_JZGJBSJ_ZGZC--��ְ��������������� ���ְ��
      ,e.PDSJ as e_JZGJBSJ_PDSJ--��ְ��������������� ����ʱ��
      ,e.XPZC as e_JZGJBSJ_XPZC--��ְ��������������� ��Ʒְ��
      ,e.PDESJ as e_JZGJBSJ_PDESJ--��ְ��������������� Ƹ��ʱ��
      ,e.RBXQDW as e_JZGJBSJ_RBXQDW--��ְ��������������� �뱾Уǰ��λ
      ,e.ZZZT as e_JZGJBSJ_ZZZT--��ְ��������������� ��ְ״̬
      ,e.SZBM as e_JZGJBSJ_SZBM--��ְ��������������� ���ڲ���
      ,e.XZZW as e_JZGJBSJ_XZZW--��ְ��������������� ����ְ��
      ,e.DH as e_JZGJBSJ_DH--��ְ��������������� �̺�
      ,e.PTHDJ as e_JZGJBSJ_PTHDJ--��ְ��������������� ��ͨ���ȼ�
      ,e.JSZH as e_JZGJBSJ_JSZH--��ְ��������������� ��ʦ֤��
      ,e.JSJDJ as e_JZGJBSJ_JSJDJ--��ְ��������������� ������ȼ�
      ,e.GGJSDJ as e_JZGJBSJ_GGJSDJ--��ְ��������������� �Ǹɽ�ʦ�ȼ�
      ,e.RJXK as e_JZGJBSJ_RJXK--��ְ��������������� �ν�ѧ��
      ,e.SFRSDL as e_JZGJBSJ_SFRSDL--��ְ��������������� �Ƿ����´���
      ,e.NDKH as e_JZGJBSJ_NDKH--��ְ��������������� ��ȿ���
      ,e.XXJL as e_JZGJBSJ_XXJL--��ְ��������������� ѧϰ����
      ,e.GZJL as e_JZGJBSJ_GZJL--��ְ��������������� ��������
      ,e.JYQK as e_JZGJBSJ_JYQK--��ְ��������������� �������
      ,e.GZYLJCQK as e_JZGJBSJ_GZYLJCQK--��ְ��������������� ���������������
      ,e.JTZYCY as e_JZGJBSJ_JTZYCY--��ְ��������������� ��ͥ��Ҫ��Ա
      ,e.BZ as e_JZGJBSJ_BZ--��ְ��������������� ��ע
      ,e.DYXLCD as e_JZGJBSJ_DYXLCD--��ְ��������������� ��һѧ���̶�
      ,e.DYXLFS as e_JZGJBSJ_DYXLFS--��ְ��������������� ��һѧ����ʽ
      ,e.DYXLXZ as e_JZGJBSJ_DYXLXZ--��ְ��������������� ��һѧ��ѧ��
      ,e.DYXLXW as e_JZGJBSJ_DYXLXW--��ְ��������������� ��һѧ��ѧλ
      ,e.DYXLBYSJ as e_JZGJBSJ_DYXLBYSJ--��ְ��������������� ��һѧ����ҵʱ��
      ,e.DYXLBYXX as e_JZGJBSJ_DYXLBYXX--��ְ��������������� ��һѧ����ҵѧУ
      ,e.DYXLZY as e_JZGJBSJ_DYXLZY--��ְ��������������� ��һѧ��רҵ
      ,e.ZGXLCD as e_JZGJBSJ_ZGXLCD--��ְ��������������� ���ѧ���̶�
      ,e.ZGXLFS as e_JZGJBSJ_ZGXLFS--��ְ��������������� ���ѧ����ʽ
      ,e.ZGXLXZ as e_JZGJBSJ_ZGXLXZ--��ְ��������������� ���ѧ��ѧ��
      ,e.ZGXLXW as e_JZGJBSJ_ZGXLXW--��ְ��������������� ���ѧ��ѧλ
      ,e.ZGXLBYSJ as e_JZGJBSJ_ZGXLBYSJ--��ְ��������������� ���ѧ����ҵʱ��
      ,e.ZGXLBYXX as e_JZGJBSJ_ZGXLBYXX--��ְ��������������� ���ѧ����ҵѧУ
      ,e.ZGXLZY as e_JZGJBSJ_ZGXLZY--��ְ��������������� ���ѧ��רҵ

FROM dbo.EDU_ZXJX_04_A06_JCBF AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS c ON a.XQID = c.ID /*ѧ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZXJX_04_01_JCJBXX AS d ON a.JCID = d.ID /*�̲�ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZXJZ_01_01_JZGJBSJ AS e ON a.JSRID = e.ID /*������ID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS [cb] ON c.XQM = [cb].DM /*ѧ����*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [db] ON d.SFYLXC = [db].DM /*�Ƿ�����ϰ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [dc] ON d.SFYJCJF = [dc].DM /*�Ƿ��н̲ν̸�*/ LEFT OUTER JOIN
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
