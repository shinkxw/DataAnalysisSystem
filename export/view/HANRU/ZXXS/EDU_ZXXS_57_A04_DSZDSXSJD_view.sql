
--��ʦ�Ƶ�ʦѧ����Ա�
CREATE VIEW [dbo].[VIEW_EDU_ZXXS_57_A04_DSZDSXSJD_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[XQID]--ѧ��ID
      ,a.[DSID]--��ʦID
      ,a.[XSID]--ѧ��ID
      ,a.[TJSJ]--���ʱ��
      ,c.SCHOOLID as c_XQ_SCHOOLID--ѧ�����ݱ� ѧУ��
      ,c.XNID as c_XQ_XNID--ѧ�����ݱ� ѧ��
      ,c.XQM as c_XQ_XQM--ѧ�����ݱ� ѧ����
      ,[cb].MC as c_XQ_XQM_MC--ѧ�ڴ���� ����
      ,c.XQMC as c_XQ_XQMC--ѧ�����ݱ� ѧ������
      ,c.XQKSRQ as c_XQ_XQKSRQ--ѧ�����ݱ� ѧ�ڿ�ʼ����
      ,c.XQJSRQ as c_XQ_XQJSRQ--ѧ�����ݱ� ѧ�ڽ�������
      ,d.SCHOOLID as d_DSZDS_SCHOOLID--��ʦ�Ƶ�ʦ�� ѧУ
      ,d.XQID as d_DSZDS_XQID--��ʦ�Ƶ�ʦ�� ѧ��ID
      ,d.JSID as d_DSZDS_JSID--��ʦ�Ƶ�ʦ�� ��ʦID
      ,d.JUESEID as d_DSZDS_JUESEID--��ʦ�Ƶ�ʦ�� ��ɫID
      ,d.TJSJ as d_DSZDS_TJSJ--��ʦ�Ƶ�ʦ�� ���ʱ��
      ,d.XH as d_DSZDS_XH--��ʦ�Ƶ�ʦ�� ���
      ,e.SCHOOLID as e_XSXX_SCHOOLID--ѧ��������������� ѧУ��
      ,e.XH as e_XSXX_XH--ѧ��������������� ѧ��
      ,e.XM as e_XSXX_XM--ѧ��������������� ����
      ,e.YWXM as e_XSXX_YWXM--ѧ��������������� Ӣ������
      ,e.XMPY as e_XSXX_XMPY--ѧ��������������� ����ƴ��
      ,e.CYM as e_XSXX_CYM--ѧ��������������� ������
      ,e.XBM as e_XSXX_XBM--ѧ��������������� �Ա���
      ,[eb].MC as e_XSXX_XBM_MC--�˵��Ա���� ����
      ,e.CSRQ as e_XSXX_CSRQ--ѧ��������������� ��������
      ,e.CSDM as e_XSXX_CSDM--ѧ��������������� ��������
      ,[ec].MC as e_XSXX_CSDM_MC--�л����񹲺͹������������� ����
      ,e.JG as e_XSXX_JG--ѧ��������������� ����
      ,e.MZM as e_XSXX_MZM--ѧ��������������� ������
      ,[ed].MZMC as e_XSXX_MZM_MZMC--�й����������Ƶ�������ĸƴд���ʹ��� ��������
      ,[ed].ZMDM as e_XSXX_MZM_ZMDM--�й����������Ƶ�������ĸƴд���ʹ��� ��ĸ����
      ,e.GJDQM as e_XSXX_GJDQM--ѧ��������������� ����/������
      ,[ee].GJDQMCJC as e_XSXX_GJDQM_GJDQMCJC--��������͵������ƴ��� ����/�������Ƽ��
      ,[ee].EZMDM as e_XSXX_GJDQM_EZMDM--��������͵������ƴ��� ����ĸ����
      ,[ee].SZMDM as e_XSXX_GJDQM_SZMDM--��������͵������ƴ��� ����ĸ����
      ,e.SFZJLXM as e_XSXX_SFZJLXM--ѧ��������������� ���֤��������
      ,[ef].MC as e_XSXX_SFZJLXM_MC--���֤�����ʹ���� ����
      ,e.SFZJH as e_XSXX_SFZJH--ѧ��������������� ���֤����
      ,e.HYZKM as e_XSXX_HYZKM--ѧ��������������� ����״����
      ,[eg].MC as e_XSXX_HYZKM_MC--����״������ ����
      ,e.GATQWM as e_XSXX_GATQWM--ѧ��������������� �۰�̨������
      ,[eh].MC as e_XSXX_GATQWM_MC--�۰�̨�������� ����
      ,[eh].SM as e_XSXX_GATQWM_SM--�۰�̨�������� ˵��
      ,e.ZZMMM as e_XSXX_ZZMMM--ѧ��������������� ������ò��
      ,[ei].MC as e_XSXX_ZZMMM_MC--������ò���� ����
      ,[ei].JC as e_XSXX_ZZMMM_JC--������ò���� ���
      ,e.JKZKM as e_XSXX_JKZKM--ѧ��������������� ����״����
      ,[ej].MC as e_XSXX_JKZKM_MC--����״��1λ���ִ��� ����
      ,[ej].SM as e_XSXX_JKZKM_SM--����״��1λ���ִ��� ˵��
      ,e.XYZJM as e_XSXX_XYZJM--ѧ��������������� �����ڽ���
      ,[ek].MC as e_XSXX_XYZJM_MC--�ڽ��������� ����
      ,e.XXM as e_XSXX_XXM--ѧ��������������� Ѫ����
      ,[el].MC as e_XSXX_XXM_MC--Ѫ�ʹ���� ����
      ,[el].JC as e_XSXX_XXM_JC--Ѫ�ʹ���� ���
      ,e.ZP as e_XSXX_ZP--ѧ��������������� ��Ƭ
      ,e.SFZJYXQ as e_XSXX_SFZJYXQ--ѧ��������������� ���֤����Ч��
      ,e.DSZYBZ as e_XSXX_DSZYBZ--ѧ��������������� ������Ů��־
      ,[em].MC as e_XSXX_DSZYBZ_MC--�Ƿ��־����� ����
      ,e.RXNY as e_XSXX_RXNY--ѧ��������������� ��ѧ����
      ,e.NJ as e_XSXX_NJ--ѧ��������������� �꼶
      ,e.BH as e_XSXX_BH--ѧ��������������� ���
      ,e.XSLBM as e_XSXX_XSLBM--ѧ��������������� ѧ�������
      ,[en].MC as e_XSXX_XSLBM_MC--ѧ��������� ����
      ,[en].SM as e_XSXX_XSLBM_SM--ѧ��������� ˵��
      ,e.XZZ as e_XSXX_XZZ--ѧ��������������� ��סַ
      ,e.HKSZD as e_XSXX_HKSZD--ѧ��������������� �������ڵ�
      ,e.HKXZM as e_XSXX_HKXZM--ѧ��������������� ����������
      ,[eo].MC as e_XSXX_HKXZM_MC--���������� ����
      ,e.SFLDRK as e_XSXX_SFLDRK--ѧ��������������� �Ƿ������˿�
      ,[ep].MC as e_XSXX_SFLDRK_MC--�Ƿ��־����� ����
      ,e.TC as e_XSXX_TC--ѧ��������������� �س�
      ,e.LXDH as e_XSXX_LXDH--ѧ��������������� ��ϵ�绰
      ,e.TXDZ as e_XSXX_TXDZ--ѧ��������������� ͨ�ŵ�ַ
      ,e.YZBM as e_XSXX_YZBM--ѧ��������������� ��������
      ,e.DZXX as e_XSXX_DZXX--ѧ��������������� ��������
      ,e.ZYDZ as e_XSXX_ZYDZ--ѧ��������������� ��ҳ��ַ
      ,e.XJH as e_XSXX_XJH--ѧ��������������� ѧ����
      ,e.XSDQZTM as e_XSXX_XSDQZTM--ѧ��������������� ѧ����ǰ״̬��
      ,[eq].MC as e_XSXX_XSDQZTM_MC--ѧ����ǰ״̬����� ����
      ,[eq].SM as e_XSXX_XSDQZTM_SM--ѧ����ǰ״̬����� ˵��

FROM dbo.EDU_ZXXS_57_A04_DSZDSXSJD AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS c ON a.XQID = c.ID /*ѧ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZXXS_57_A03_DSZDS AS d ON a.DSID = d.ID /*��ʦID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZXXS_01_01_XSXX AS e ON a.XSID = e.ID /*ѧ��ID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS [cb] ON c.XQM = [cb].DM /*ѧ����*/ LEFT OUTER JOIN
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
      dbo.EDU_JY_SFBZ AS [em] ON e.DSZYBZ = [em].DM /*������Ů��־*/ LEFT OUTER JOIN
      dbo.EDU_JY_XSLB AS [en] ON e.XSLBM = [en].DM /*ѧ�������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS [eo] ON e.HKXZM = [eo].DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [ep] ON e.SFLDRK = [ep].DM /*�Ƿ������˿�*/ LEFT OUTER JOIN
      dbo.EDU_JY_XSDQZT AS [eq] ON e.XSDQZTM = [eq].DM /*ѧ����ǰ״̬��*/
GO
