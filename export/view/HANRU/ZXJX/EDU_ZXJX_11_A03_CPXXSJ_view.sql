
--������Ϣ���ݱ�
CREATE VIEW [dbo].[VIEW_EDU_ZXJX_11_A03_CPXXSJ_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[XNID]--ѧ��ID
      ,a.[XQID]--ѧ��ID
      ,a.[XXMC]--��Ϣ����
      ,a.[XXNR]--��Ϣ����
      ,a.[SFFB]--�Ƿ񷢲�
      ,a.[SCJSID]--�ϴ���ʦID
      ,a.[SCSJ]--�ϴ�ʱ��
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
      ,e.MC as e_SFBZ_MC--�Ƿ��־����� ����
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
      ,f.XQ as f_JZGJBSJ_XQ--��ְ��������������� У��
      ,f.ZGZC as f_JZGJBSJ_ZGZC--��ְ��������������� ���ְ��
      ,f.PDSJ as f_JZGJBSJ_PDSJ--��ְ��������������� ����ʱ��
      ,f.XPZC as f_JZGJBSJ_XPZC--��ְ��������������� ��Ʒְ��
      ,f.PDESJ as f_JZGJBSJ_PDESJ--��ְ��������������� Ƹ��ʱ��
      ,f.RBXQDW as f_JZGJBSJ_RBXQDW--��ְ��������������� �뱾Уǰ��λ
      ,f.ZZZT as f_JZGJBSJ_ZZZT--��ְ��������������� ��ְ״̬
      ,f.SZBM as f_JZGJBSJ_SZBM--��ְ��������������� ���ڲ���
      ,f.XZZW as f_JZGJBSJ_XZZW--��ְ��������������� ����ְ��
      ,f.DH as f_JZGJBSJ_DH--��ְ��������������� �̺�
      ,f.PTHDJ as f_JZGJBSJ_PTHDJ--��ְ��������������� ��ͨ���ȼ�
      ,f.JSZH as f_JZGJBSJ_JSZH--��ְ��������������� ��ʦ֤��
      ,f.JSJDJ as f_JZGJBSJ_JSJDJ--��ְ��������������� ������ȼ�
      ,f.GGJSDJ as f_JZGJBSJ_GGJSDJ--��ְ��������������� �Ǹɽ�ʦ�ȼ�
      ,f.RJXK as f_JZGJBSJ_RJXK--��ְ��������������� �ν�ѧ��
      ,f.SFRSDL as f_JZGJBSJ_SFRSDL--��ְ��������������� �Ƿ����´���
      ,f.NDKH as f_JZGJBSJ_NDKH--��ְ��������������� ��ȿ���
      ,f.XXJL as f_JZGJBSJ_XXJL--��ְ��������������� ѧϰ����
      ,f.GZJL as f_JZGJBSJ_GZJL--��ְ��������������� ��������
      ,f.JYQK as f_JZGJBSJ_JYQK--��ְ��������������� �������
      ,f.GZYLJCQK as f_JZGJBSJ_GZYLJCQK--��ְ��������������� ���������������
      ,f.JTZYCY as f_JZGJBSJ_JTZYCY--��ְ��������������� ��ͥ��Ҫ��Ա
      ,f.BZ as f_JZGJBSJ_BZ--��ְ��������������� ��ע
      ,f.DYXLCD as f_JZGJBSJ_DYXLCD--��ְ��������������� ��һѧ���̶�
      ,f.DYXLFS as f_JZGJBSJ_DYXLFS--��ְ��������������� ��һѧ����ʽ
      ,f.DYXLXZ as f_JZGJBSJ_DYXLXZ--��ְ��������������� ��һѧ��ѧ��
      ,f.DYXLXW as f_JZGJBSJ_DYXLXW--��ְ��������������� ��һѧ��ѧλ
      ,f.DYXLBYSJ as f_JZGJBSJ_DYXLBYSJ--��ְ��������������� ��һѧ����ҵʱ��
      ,f.DYXLBYXX as f_JZGJBSJ_DYXLBYXX--��ְ��������������� ��һѧ����ҵѧУ
      ,f.DYXLZY as f_JZGJBSJ_DYXLZY--��ְ��������������� ��һѧ��רҵ
      ,f.ZGXLCD as f_JZGJBSJ_ZGXLCD--��ְ��������������� ���ѧ���̶�
      ,f.ZGXLFS as f_JZGJBSJ_ZGXLFS--��ְ��������������� ���ѧ����ʽ
      ,f.ZGXLXZ as f_JZGJBSJ_ZGXLXZ--��ְ��������������� ���ѧ��ѧ��
      ,f.ZGXLXW as f_JZGJBSJ_ZGXLXW--��ְ��������������� ���ѧ��ѧλ
      ,f.ZGXLBYSJ as f_JZGJBSJ_ZGXLBYSJ--��ְ��������������� ���ѧ����ҵʱ��
      ,f.ZGXLBYXX as f_JZGJBSJ_ZGXLBYXX--��ְ��������������� ���ѧ����ҵѧУ
      ,f.ZGXLZY as f_JZGJBSJ_ZGXLZY--��ְ��������������� ���ѧ��רҵ

FROM dbo.EDU_ZXJX_11_A03_CPXXSJ AS a LEFT OUTER JOIN
      dbo.EDU_SYS_01_XN AS c ON a.XNID = c.ID /*ѧ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS d ON a.XQID = d.ID /*ѧ��ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS e ON a.SFFB = e.DM /*�Ƿ񷢲�*/ LEFT OUTER JOIN
      dbo.EDU_ZXJZ_01_01_JZGJBSJ AS f ON a.SCJSID = f.ID /*�ϴ���ʦID*/ AND a.SCHOOLID = f.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS [db] ON d.XQM = [db].DM /*ѧ����*/ LEFT OUTER JOIN
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
