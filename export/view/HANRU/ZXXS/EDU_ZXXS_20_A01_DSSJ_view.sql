
--��ʦ���ݱ�
CREATE VIEW [dbo].[VIEW_EDU_ZXXS_20_A01_DSSJ_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[XQID]--ѧ��ID
      ,a.[JSID]--��ʦID
      ,a.[DSXM]--��ʦ����
      ,a.[DSJS]--��ʦ����
      ,a.[BJIDLB]--�༶ID�б�
      ,a.[BJMCLB]--�༶�����б�
      ,a.[ZDKXZRS]--����ѡ������
      ,a.[ZDXXZRS]--�����ѡ������
      ,c.SCHOOLID as c_XQ_SCHOOLID--ѧ�����ݱ� ѧУ��
      ,c.XNID as c_XQ_XNID--ѧ�����ݱ� ѧ��
      ,c.XQM as c_XQ_XQM--ѧ�����ݱ� ѧ����
      ,[cb].MC as c_XQ_XQM_MC--ѧ�ڴ���� ����
      ,c.XQMC as c_XQ_XQMC--ѧ�����ݱ� ѧ������
      ,c.XQKSRQ as c_XQ_XQKSRQ--ѧ�����ݱ� ѧ�ڿ�ʼ����
      ,c.XQJSRQ as c_XQ_XQJSRQ--ѧ�����ݱ� ѧ�ڽ�������
      ,c.BaseProjectInfoID as c_XQ_BaseProjectInfoID--ѧ�����ݱ� ��BaseProjectInfo���
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
      ,d.XQ as d_JZGJBSJ_XQ--��ְ��������������� У��
      ,d.ZGZC as d_JZGJBSJ_ZGZC--��ְ��������������� ���ְ��
      ,d.PDSJ as d_JZGJBSJ_PDSJ--��ְ��������������� ����ʱ��
      ,d.XPZC as d_JZGJBSJ_XPZC--��ְ��������������� ��Ʒְ��
      ,d.PDESJ as d_JZGJBSJ_PDESJ--��ְ��������������� Ƹ��ʱ��
      ,d.RBXQDW as d_JZGJBSJ_RBXQDW--��ְ��������������� �뱾Уǰ��λ
      ,d.ZZZT as d_JZGJBSJ_ZZZT--��ְ��������������� ��ְ״̬
      ,d.SZBM as d_JZGJBSJ_SZBM--��ְ��������������� ���ڲ���
      ,d.XZZW as d_JZGJBSJ_XZZW--��ְ��������������� ����ְ��
      ,d.DH as d_JZGJBSJ_DH--��ְ��������������� �̺�
      ,d.PTHDJ as d_JZGJBSJ_PTHDJ--��ְ��������������� ��ͨ���ȼ�
      ,d.JSZH as d_JZGJBSJ_JSZH--��ְ��������������� ��ʦ֤��
      ,d.JSJDJ as d_JZGJBSJ_JSJDJ--��ְ��������������� ������ȼ�
      ,d.GGJSDJ as d_JZGJBSJ_GGJSDJ--��ְ��������������� �Ǹɽ�ʦ�ȼ�
      ,d.RJXK as d_JZGJBSJ_RJXK--��ְ��������������� �ν�ѧ��
      ,d.SFRSDL as d_JZGJBSJ_SFRSDL--��ְ��������������� �Ƿ����´���
      ,d.NDKH as d_JZGJBSJ_NDKH--��ְ��������������� ��ȿ���
      ,d.XXJL as d_JZGJBSJ_XXJL--��ְ��������������� ѧϰ����
      ,d.GZJL as d_JZGJBSJ_GZJL--��ְ��������������� ��������
      ,d.JYQK as d_JZGJBSJ_JYQK--��ְ��������������� �������
      ,d.GZYLJCQK as d_JZGJBSJ_GZYLJCQK--��ְ��������������� ���������������
      ,d.JTZYCY as d_JZGJBSJ_JTZYCY--��ְ��������������� ��ͥ��Ҫ��Ա
      ,d.BZ as d_JZGJBSJ_BZ--��ְ��������������� ��ע
      ,d.DYXLCD as d_JZGJBSJ_DYXLCD--��ְ��������������� ��һѧ���̶�
      ,d.DYXLFS as d_JZGJBSJ_DYXLFS--��ְ��������������� ��һѧ����ʽ
      ,d.DYXLXZ as d_JZGJBSJ_DYXLXZ--��ְ��������������� ��һѧ��ѧ��
      ,d.DYXLXW as d_JZGJBSJ_DYXLXW--��ְ��������������� ��һѧ��ѧλ
      ,d.DYXLBYSJ as d_JZGJBSJ_DYXLBYSJ--��ְ��������������� ��һѧ����ҵʱ��
      ,d.DYXLBYXX as d_JZGJBSJ_DYXLBYXX--��ְ��������������� ��һѧ����ҵѧУ
      ,d.DYXLZY as d_JZGJBSJ_DYXLZY--��ְ��������������� ��һѧ��רҵ
      ,d.ZGXLCD as d_JZGJBSJ_ZGXLCD--��ְ��������������� ���ѧ���̶�
      ,d.ZGXLFS as d_JZGJBSJ_ZGXLFS--��ְ��������������� ���ѧ����ʽ
      ,d.ZGXLXZ as d_JZGJBSJ_ZGXLXZ--��ְ��������������� ���ѧ��ѧ��
      ,d.ZGXLXW as d_JZGJBSJ_ZGXLXW--��ְ��������������� ���ѧ��ѧλ
      ,d.ZGXLBYSJ as d_JZGJBSJ_ZGXLBYSJ--��ְ��������������� ���ѧ����ҵʱ��
      ,d.ZGXLBYXX as d_JZGJBSJ_ZGXLBYXX--��ְ��������������� ���ѧ����ҵѧУ
      ,d.ZGXLZY as d_JZGJBSJ_ZGXLZY--��ְ��������������� ���ѧ��רҵ

FROM dbo.EDU_ZXXS_20_A01_DSSJ AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS c ON a.XQID = c.ID /*ѧ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZXJZ_01_01_JZGJBSJ AS d ON a.JSID = d.ID /*��ʦID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
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
      dbo.EDU_JY_RKXD AS [dq] ON d.ZYRKXD = [dq].DM /*��Ҫ�ο�ѧ��*/
GO
