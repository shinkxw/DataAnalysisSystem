
--ѧ��ѧϰ���������۽����
CREATE VIEW [dbo].[VIEW_EDU_ZXJX_08_A02_XXGCXPJJG_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУID
      ,a.[PZID]--��������ID
      ,a.[FS]--����
      ,a.[XLZID]--У����ID
      ,a.[XSXXID]--ѧ��ID
      ,a.[SSKCH]--�����γ̺�
      ,c.SCHOOLID as c_XXGCXPJPZ_SCHOOLID--ѧ��ѧϰ�������������ñ� ѧУID
      ,c.SSKCH as c_XXGCXPJPZ_SSKCH--ѧ��ѧϰ�������������ñ� �����γ̺�
      ,c.PZMC as c_XXGCXPJPZ_PZMC--ѧ��ѧϰ�������������ñ� ��������
      ,c.PZLX as c_XXGCXPJPZ_PZLX--ѧ��ѧϰ�������������ñ� ��������
      ,c.FLM as c_XXGCXPJPZ_FLM--ѧ��ѧϰ�������������ñ� ������
      ,d.SCHOOLID as d_XLZ_SCHOOLID--У���ܱ� ѧУID
      ,d.XLID as d_XLZ_XLID--У���ܱ� У��ID
      ,d.NAME as d_XLZ_NAME--У���ܱ� У��������
      ,d.STARTDAY as d_XLZ_STARTDAY--У���ܱ� ��ʼ����
      ,d.ENDDAY as d_XLZ_ENDDAY--У���ܱ� ��������
      ,d.ZJH as d_XLZ_ZJH--У���ܱ� �ܼƻ�
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
      ,f.SCHOOLID as f_KC_SCHOOLID--�γ������� ѧУ��
      ,f.KCMC as f_KC_KCMC--�γ������� �γ�����
      ,f.KCM as f_KC_KCM--�γ������� �γ���
      ,[fb].MC as f_KC_KCM_MC--��Сѧ�γ̴���� ����
      ,[fb].SYXX as f_KC_KCM_SYXX--��Сѧ�γ̴���� ����ѧУ
      ,f.KCDJM as f_KC_KCDJM--�γ������� �γ̵ȼ���
      ,[fc].MC as f_KC_KCDJM_MC--��Сѧ�γ̵ȼ������ ����
      ,f.KCBM as f_KC_KCBM--�γ������� �γ̱���
      ,f.KCJJ as f_KC_KCJJ--�γ������� �γ̼��
      ,f.KCYQ as f_KC_KCYQ--�γ������� �γ�Ҫ��
      ,f.ZXS as f_KC_ZXS--�γ������� ��ѧʱ
      ,f.ZHXS as f_KC_ZHXS--�γ������� ��ѧʱ
      ,f.ZXXS as f_KC_ZXXS--�γ������� ��ѧѧʱ
      ,f.SKFSM as f_KC_SKFSM--�γ������� �ڿη�ʽ��
      ,[fd].MC as f_KC_SKFSM_MC--�ڿη�ʽ����� ����
      ,f.JCBM as f_KC_JCBM--�γ������� �̲ı���
      ,f.CKSM as f_KC_CKSM--�γ������� �ο���Ŀ
      ,f.CDXZ as f_KC_CDXZ--�γ������� ��������
      ,f.SFZK as f_KC_SFZK--�γ������� �Ƿ�����
      ,[fe].MC as f_KC_SFZK_MC--�Ƿ��־����� ����

FROM dbo.EDU_ZXJX_08_A02_XXGCXPJJG AS a LEFT OUTER JOIN
      dbo.EDU_ZXJX_08_A01_XXGCXPJPZ AS c ON a.PZID = c.ID /*��������ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_05_XLZ AS d ON a.XLZID = d.ID /*У����ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZXXS_01_01_XSXX AS e ON a.XSXXID = e.ID /*ѧ��ID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZXJX_01_01_KC AS f ON a.SSKCH = f.KCH /*�����γ̺�*/ AND a.SCHOOLID = f.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
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
      dbo.EDU_JY_ZXXKC AS [fb] ON f.KCM = [fb].DM /*�γ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXKCDJ AS [fc] ON f.KCDJM = [fc].DM /*�γ̵ȼ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS [fd] ON f.SKFSM = [fd].DM /*�ڿη�ʽ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [fe] ON f.SFZK = [fe].DM /*�Ƿ�����*/
GO
