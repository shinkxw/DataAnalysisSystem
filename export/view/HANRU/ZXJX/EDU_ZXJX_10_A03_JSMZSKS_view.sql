
--��ʦÿ���Ͽ�����
CREATE VIEW [dbo].[VIEW_EDU_ZXJX_10_A03_JSMZSKS_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУID
      ,a.[JSID]--��ʦID
      ,a.[XLZID]--У����ID
      ,a.[JSRKID]--��ʦ�ο�ID
      ,a.[KCH]--�γ̺�
      ,a.[SKJS]--�Ͽν���
      ,c.SCHOOLID as c_JZGJBSJ_SCHOOLID--��ְ��������������� ѧУ��
      ,c.GH as c_JZGJBSJ_GH--��ְ��������������� ����
      ,c.XM as c_JZGJBSJ_XM--��ְ��������������� ����
      ,c.YWXM as c_JZGJBSJ_YWXM--��ְ��������������� Ӣ������
      ,c.XMPY as c_JZGJBSJ_XMPY--��ְ��������������� ����ƴ��
      ,c.CYM as c_JZGJBSJ_CYM--��ְ��������������� ������
      ,c.XBM as c_JZGJBSJ_XBM--��ְ��������������� �Ա���
      ,[cb].MC as c_JZGJBSJ_XBM_MC--�˵��Ա���� ����
      ,c.CSRQ as c_JZGJBSJ_CSRQ--��ְ��������������� ��������
      ,c.CSDM as c_JZGJBSJ_CSDM--��ְ��������������� ��������
      ,[cc].MC as c_JZGJBSJ_CSDM_MC--�л����񹲺͹������������� ����
      ,c.JG as c_JZGJBSJ_JG--��ְ��������������� ����
      ,c.MZM as c_JZGJBSJ_MZM--��ְ��������������� ������
      ,[cd].MZMC as c_JZGJBSJ_MZM_MZMC--�й����������Ƶ�������ĸƴд���ʹ��� ��������
      ,[cd].ZMDM as c_JZGJBSJ_MZM_ZMDM--�й����������Ƶ�������ĸƴд���ʹ��� ��ĸ����
      ,c.GJDQM as c_JZGJBSJ_GJDQM--��ְ��������������� ����/������
      ,[ce].GJDQMCJC as c_JZGJBSJ_GJDQM_GJDQMCJC--��������͵������ƴ��� ����/�������Ƽ��
      ,[ce].EZMDM as c_JZGJBSJ_GJDQM_EZMDM--��������͵������ƴ��� ����ĸ����
      ,[ce].SZMDM as c_JZGJBSJ_GJDQM_SZMDM--��������͵������ƴ��� ����ĸ����
      ,c.SFZJLXM as c_JZGJBSJ_SFZJLXM--��ְ��������������� ���֤��������
      ,[cf].MC as c_JZGJBSJ_SFZJLXM_MC--���֤�����ʹ���� ����
      ,c.SFZJH as c_JZGJBSJ_SFZJH--��ְ��������������� ���֤����
      ,c.HYZKM as c_JZGJBSJ_HYZKM--��ְ��������������� ����״����
      ,[cg].MC as c_JZGJBSJ_HYZKM_MC--����״������ ����
      ,c.GATQWM as c_JZGJBSJ_GATQWM--��ְ��������������� �۰�̨������
      ,[ch].MC as c_JZGJBSJ_GATQWM_MC--�۰�̨�������� ����
      ,[ch].SM as c_JZGJBSJ_GATQWM_SM--�۰�̨�������� ˵��
      ,c.ZZMMM as c_JZGJBSJ_ZZMMM--��ְ��������������� ������ò��
      ,[ci].MC as c_JZGJBSJ_ZZMMM_MC--������ò���� ����
      ,[ci].JC as c_JZGJBSJ_ZZMMM_JC--������ò���� ���
      ,c.JKZKM as c_JZGJBSJ_JKZKM--��ְ��������������� ����״����
      ,[cj].MC as c_JZGJBSJ_JKZKM_MC--����״��1λ���ִ��� ����
      ,[cj].SM as c_JZGJBSJ_JKZKM_SM--����״��1λ���ִ��� ˵��
      ,c.XYZJM as c_JZGJBSJ_XYZJM--��ְ��������������� �����ڽ���
      ,[ck].MC as c_JZGJBSJ_XYZJM_MC--�ڽ��������� ����
      ,c.XXM as c_JZGJBSJ_XXM--��ְ��������������� Ѫ����
      ,[cl].MC as c_JZGJBSJ_XXM_MC--Ѫ�ʹ���� ����
      ,[cl].JC as c_JZGJBSJ_XXM_JC--Ѫ�ʹ���� ���
      ,c.ZP as c_JZGJBSJ_ZP--��ְ��������������� ��Ƭ
      ,c.SFZJYXQ as c_JZGJBSJ_SFZJYXQ--��ְ��������������� ���֤����Ч��
      ,c.JGH as c_JZGJBSJ_JGH--��ְ��������������� ������
      ,c.JTZZ as c_JZGJBSJ_JTZZ--��ְ��������������� ��ͥסַ
      ,c.XZZ as c_JZGJBSJ_XZZ--��ְ��������������� ��סַ
      ,c.HKSZD as c_JZGJBSJ_HKSZD--��ְ��������������� �������ڵ�
      ,c.HKXZM as c_JZGJBSJ_HKXZM--��ְ��������������� ����������
      ,[cm].MC as c_JZGJBSJ_HKXZM_MC--���������� ����
      ,c.XLM as c_JZGJBSJ_XLM--��ְ��������������� ѧ����
      ,[cn].MC as c_JZGJBSJ_XLM_MC--ѧ������ ����
      ,c.GZNY as c_JZGJBSJ_GZNY--��ְ��������������� �μӹ�������
      ,c.LXNY as c_JZGJBSJ_LXNY--��ְ��������������� ��У����
      ,c.CJNY as c_JZGJBSJ_CJNY--��ְ��������������� �ӽ�����
      ,c.BZLBM as c_JZGJBSJ_BZLBM--��ְ��������������� ���������
      ,[co].MC as c_JZGJBSJ_BZLBM_MC--��Сѧ����������� ����
      ,c.DABH as c_JZGJBSJ_DABH--��ְ��������������� �������
      ,c.DAWB as c_JZGJBSJ_DAWB--��ְ��������������� �����ı�
      ,c.TXDZ as c_JZGJBSJ_TXDZ--��ְ��������������� ͨ�ŵ�ַ
      ,c.LXDH as c_JZGJBSJ_LXDH--��ְ��������������� ��ϵ�绰
      ,c.YZBM as c_JZGJBSJ_YZBM--��ְ��������������� ��������
      ,c.DZXX as c_JZGJBSJ_DZXX--��ְ��������������� ��������
      ,c.ZYDZ as c_JZGJBSJ_ZYDZ--��ְ��������������� ��ҳ��ַ
      ,c.TC as c_JZGJBSJ_TC--��ְ��������������� �س�
      ,c.GWZYM as c_JZGJBSJ_GWZYM--��ְ��������������� ��λְҵ��
      ,[cp].MC as c_JZGJBSJ_GWZYM_MC--��λְҵ����� ����
      ,c.ZYRKXD as c_JZGJBSJ_ZYRKXD--��ְ��������������� ��Ҫ�ο�ѧ��
      ,[cq].MC as c_JZGJBSJ_ZYRKXD_MC--�ο�ѧ�δ���� ����
      ,d.SCHOOLID as d_XLZ_SCHOOLID--У���ܱ� ѧУID
      ,d.XLID as d_XLZ_XLID--У���ܱ� У��ID
      ,d.NAME as d_XLZ_NAME--У���ܱ� У��������
      ,d.STARTDAY as d_XLZ_STARTDAY--У���ܱ� ��ʼ����
      ,d.ENDDAY as d_XLZ_ENDDAY--У���ܱ� ��������
      ,d.ZJH as d_XLZ_ZJH--У���ܱ� �ܼƻ�
      ,e.SCHOOLID as e_RKSJ_SCHOOLID--�ο���������� ѧУ��
      ,e.JZGJBSJID as e_RKSJ_JZGJBSJID--�ο���������� ��ְ���������������
      ,e.RKKCH as e_RKSJ_RKKCH--�ο���������� �οογ̺�
      ,e.RKQSNY as e_RKSJ_RKQSNY--�ο���������� �ο���ʼ����
      ,e.RKZZNY as e_RKSJ_RKZZNY--�ο���������� �ο���ֹ����
      ,e.RKZXS as e_RKSJ_RKZXS--�ο���������� �ο���ѧʱ
      ,e.RKXDM as e_RKSJ_RKXDM--�ο���������� �ο�ѧ����
      ,[eb].MC as e_RKSJ_RKXDM_MC--�ο�ѧ�δ���� ����
      ,e.RKJSM as e_RKSJ_RKJSM--�ο���������� �ον�ɫ��
      ,[ec].MC as e_RKSJ_RKJSM_MC--�ον�ɫ����� ����
      ,e.SKBJ as e_RKSJ_SKBJ--�ο���������� �ڿΰ༶
      ,e.SKRS as e_RKSJ_SKRS--�ο���������� �ڿ�����
      ,e.ZKS as e_RKSJ_ZKS--�ο���������� �ܿ�ʱ
      ,e.SFLT as e_RKSJ_SFLT--�ο���������� �Ƿ�����
      ,[ed].MC as e_RKSJ_SFLT_MC--�Ƿ��־����� ����
      ,e.NJID as e_RKSJ_NJID--�ο���������� �꼶��
      ,e.XQID as e_RKSJ_XQID--�ο���������� ѧ��
      ,e.XNID as e_RKSJ_XNID--�ο���������� ѧ��
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
      ,f.PLSX as f_KC_PLSX--�γ������� ����˳��

FROM dbo.EDU_ZXJX_10_A03_JSMZSKS AS a LEFT OUTER JOIN
      dbo.EDU_ZXJZ_01_01_JZGJBSJ AS c ON a.JSID = c.ID /*��ʦID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_05_XLZ AS d ON a.XLZID = d.ID /*У����ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZXJZ_07_02_RKSJ AS e ON a.JSRKID = e.ID /*��ʦ�ο�ID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZXJX_01_01_KC AS f ON a.KCH = f.KCH /*�γ̺�*/ AND a.SCHOOLID = f.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS [cb] ON c.XBM = [cb].DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [cc] ON c.CSDM = [cc].DM /*��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS [cd] ON c.MZM = [cd].DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS [ce] ON c.GJDQM = [ce].DM /*����/������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS [cf] ON c.SFZJLXM = [cf].DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS [cg] ON c.HYZKM = [cg].DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS [ch] ON c.GATQWM = [ch].DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS [ci] ON c.ZZMMM = [ci].DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS [cj] ON c.JKZKM = [cj].DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS [ck] ON c.XYZJM = [ck].DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS [cl] ON c.XXM = [cl].DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS [cm] ON c.HKXZM = [cm].DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_GB_XL AS [cn] ON c.XLM = [cn].DM /*ѧ����*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXBZLB AS [co] ON c.BZLBM = [co].DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWZY AS [cp] ON c.GWZYM = [cp].DM /*��λְҵ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_RKXD AS [cq] ON c.ZYRKXD = [cq].DM /*��Ҫ�ο�ѧ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_RKXD AS [eb] ON e.RKXDM = [eb].DM /*�ο�ѧ����*/ LEFT OUTER JOIN
      dbo.EDU_JY_RKJS AS [ec] ON e.RKJSM = [ec].DM /*�ον�ɫ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [ed] ON e.SFLT = [ed].DM /*�Ƿ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXKC AS [fb] ON f.KCM = [fb].DM /*�γ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXKCDJ AS [fc] ON f.KCDJM = [fc].DM /*�γ̵ȼ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS [fd] ON f.SKFSM = [fd].DM /*�ڿη�ʽ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [fe] ON f.SFZK = [fe].DM /*�Ƿ�����*/
GO
