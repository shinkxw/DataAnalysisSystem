
--�����������ݱ�
CREATE VIEW [dbo].[VIEW_EDU_ZXJX_09_A01_TKSQSJ_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУID
      ,a.[JSID]--��ʦ
      ,a.[KCID]--�γ�
      ,a.[TKLXID]--��������ID
      ,a.[TKQQSZ]--����ǰ��ʼ��
      ,a.[TKQJSZ]--����ǰ������
      ,a.[TKQXQ]--����ǰ����
      ,a.[TKQSD]--����ǰʱ��
      ,a.[TKQJC]--����ǰ�ڴ�
      ,a.[TKHQSZ]--���κ���ʼ��
      ,a.[TKHJSZ]--���κ������
      ,a.[TKHXQ]--���κ�����
      ,a.[TKHSD]--���κ�ʱ��
      ,a.[TKHJC]--���κ�ڴ�
      ,a.[ZT]--��ǰ״̬
      ,a.[BZ]--��ע
      ,a.[SQSJ]--����ʱ��
      ,a.[JSJSID]--���ս�ʦID
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
      ,c.JZGLXID as c_JZGJBSJ_JZGLXID--��ְ��������������� ��ְ������ID
      ,c.XQ as c_JZGJBSJ_XQ--��ְ��������������� У��
      ,c.ZGZC as c_JZGJBSJ_ZGZC--��ְ��������������� ���ְ��
      ,c.PDSJ as c_JZGJBSJ_PDSJ--��ְ��������������� ����ʱ��
      ,c.XPZC as c_JZGJBSJ_XPZC--��ְ��������������� ��Ʒְ��
      ,c.PDESJ as c_JZGJBSJ_PDESJ--��ְ��������������� Ƹ��ʱ��
      ,c.RBXQDW as c_JZGJBSJ_RBXQDW--��ְ��������������� �뱾Уǰ��λ
      ,c.ZZZT as c_JZGJBSJ_ZZZT--��ְ��������������� ��ְ״̬
      ,c.SZBM as c_JZGJBSJ_SZBM--��ְ��������������� ���ڲ���
      ,c.XZZW as c_JZGJBSJ_XZZW--��ְ��������������� ����ְ��
      ,c.DH as c_JZGJBSJ_DH--��ְ��������������� �̺�
      ,c.PTHDJ as c_JZGJBSJ_PTHDJ--��ְ��������������� ��ͨ���ȼ�
      ,c.JSZH as c_JZGJBSJ_JSZH--��ְ��������������� ��ʦ֤��
      ,c.JSJDJ as c_JZGJBSJ_JSJDJ--��ְ��������������� ������ȼ�
      ,c.GGJSDJ as c_JZGJBSJ_GGJSDJ--��ְ��������������� �Ǹɽ�ʦ�ȼ�
      ,c.RJXK as c_JZGJBSJ_RJXK--��ְ��������������� �ν�ѧ��
      ,c.SFRSDL as c_JZGJBSJ_SFRSDL--��ְ��������������� �Ƿ����´���
      ,c.NDKH as c_JZGJBSJ_NDKH--��ְ��������������� ��ȿ���
      ,c.XXJL as c_JZGJBSJ_XXJL--��ְ��������������� ѧϰ����
      ,c.GZJL as c_JZGJBSJ_GZJL--��ְ��������������� ��������
      ,c.JYQK as c_JZGJBSJ_JYQK--��ְ��������������� �������
      ,c.GZYLJCQK as c_JZGJBSJ_GZYLJCQK--��ְ��������������� ���������������
      ,c.JTZYCY as c_JZGJBSJ_JTZYCY--��ְ��������������� ��ͥ��Ҫ��Ա
      ,c.BZ as c_JZGJBSJ_BZ--��ְ��������������� ��ע
      ,c.DYXLCD as c_JZGJBSJ_DYXLCD--��ְ��������������� ��һѧ���̶�
      ,c.DYXLFS as c_JZGJBSJ_DYXLFS--��ְ��������������� ��һѧ����ʽ
      ,c.DYXLXZ as c_JZGJBSJ_DYXLXZ--��ְ��������������� ��һѧ��ѧ��
      ,c.DYXLXW as c_JZGJBSJ_DYXLXW--��ְ��������������� ��һѧ��ѧλ
      ,c.DYXLBYSJ as c_JZGJBSJ_DYXLBYSJ--��ְ��������������� ��һѧ����ҵʱ��
      ,c.DYXLBYXX as c_JZGJBSJ_DYXLBYXX--��ְ��������������� ��һѧ����ҵѧУ
      ,c.DYXLZY as c_JZGJBSJ_DYXLZY--��ְ��������������� ��һѧ��רҵ
      ,c.ZGXLCD as c_JZGJBSJ_ZGXLCD--��ְ��������������� ���ѧ���̶�
      ,c.ZGXLFS as c_JZGJBSJ_ZGXLFS--��ְ��������������� ���ѧ����ʽ
      ,c.ZGXLXZ as c_JZGJBSJ_ZGXLXZ--��ְ��������������� ���ѧ��ѧ��
      ,c.ZGXLXW as c_JZGJBSJ_ZGXLXW--��ְ��������������� ���ѧ��ѧλ
      ,c.ZGXLBYSJ as c_JZGJBSJ_ZGXLBYSJ--��ְ��������������� ���ѧ����ҵʱ��
      ,c.ZGXLBYXX as c_JZGJBSJ_ZGXLBYXX--��ְ��������������� ���ѧ����ҵѧУ
      ,c.ZGXLZY as c_JZGJBSJ_ZGXLZY--��ְ��������������� ���ѧ��רҵ
      ,d.SCHOOLID as d_KC_SCHOOLID--�γ������� ѧУ��
      ,d.KCMC as d_KC_KCMC--�γ������� �γ�����
      ,d.KCM as d_KC_KCM--�γ������� �γ���
      ,[db].MC as d_KC_KCM_MC--��Сѧ�γ̴���� ����
      ,[db].SYXX as d_KC_KCM_SYXX--��Сѧ�γ̴���� ����ѧУ
      ,d.KCDJM as d_KC_KCDJM--�γ������� �γ̵ȼ���
      ,[dc].MC as d_KC_KCDJM_MC--��Сѧ�γ̵ȼ������ ����
      ,d.KCBM as d_KC_KCBM--�γ������� �γ̱���
      ,d.KCJJ as d_KC_KCJJ--�γ������� �γ̼��
      ,d.KCYQ as d_KC_KCYQ--�γ������� �γ�Ҫ��
      ,d.ZXS as d_KC_ZXS--�γ������� ��ѧʱ
      ,d.ZHXS as d_KC_ZHXS--�γ������� ��ѧʱ
      ,d.ZXXS as d_KC_ZXXS--�γ������� ��ѧѧʱ
      ,d.SKFSM as d_KC_SKFSM--�γ������� �ڿη�ʽ��
      ,[dd].MC as d_KC_SKFSM_MC--�ڿη�ʽ����� ����
      ,d.JCBM as d_KC_JCBM--�γ������� �̲ı���
      ,d.CKSM as d_KC_CKSM--�γ������� �ο���Ŀ
      ,d.CDXZ as d_KC_CDXZ--�γ������� ��������
      ,d.SFZK as d_KC_SFZK--�γ������� �Ƿ�����
      ,[de].MC as d_KC_SFZK_MC--�Ƿ��־����� ����
      ,d.PLSX as d_KC_PLSX--�γ������� ����˳��
      ,e.MC as e_TKLX_MC--�������ʹ��� ��������
      ,f.SCHOOLID as f_XLZ_SCHOOLID--У���ܱ� ѧУID
      ,f.XLID as f_XLZ_XLID--У���ܱ� У��ID
      ,f.NAME as f_XLZ_NAME--У���ܱ� У��������
      ,f.STARTDAY as f_XLZ_STARTDAY--У���ܱ� ��ʼ����
      ,f.ENDDAY as f_XLZ_ENDDAY--У���ܱ� ��������
      ,f.ZJH as f_XLZ_ZJH--У���ܱ� �ܼƻ�
      ,g.SCHOOLID as g_XLZ_SCHOOLID--У���ܱ� ѧУID
      ,g.XLID as g_XLZ_XLID--У���ܱ� У��ID
      ,g.NAME as g_XLZ_NAME--У���ܱ� У��������
      ,g.STARTDAY as g_XLZ_STARTDAY--У���ܱ� ��ʼ����
      ,g.ENDDAY as g_XLZ_ENDDAY--У���ܱ� ��������
      ,g.ZJH as g_XLZ_ZJH--У���ܱ� �ܼƻ�
      ,h.SCHOOLID as h_WEEKDAY_SCHOOLID--���� ѧУ��
      ,h.MC as h_WEEKDAY_MC--���� ����
      ,i.SCHOOLID as i_SD_SCHOOLID--ʱ�� ѧУ��
      ,i.MC as i_SD_MC--ʱ�� ����
      ,j.SCHOOLID as j_JC_SCHOOLID--�ڴ� ѧУ��
      ,j.SDID as j_JC_SDID--�ڴ� ����ʱ��ID
      ,j.MC as j_JC_MC--�ڴ� ����
      ,j.KSXS as j_JC_KSXS--�ڴ� ��ʼСʱ
      ,j.KSFZ as j_JC_KSFZ--�ڴ� ��ʼ����
      ,j.JSXS as j_JC_JSXS--�ڴ� ����Сʱ
      ,j.JSFZ as j_JC_JSFZ--�ڴ� ��������
      ,k.SCHOOLID as k_XLZ_SCHOOLID--У���ܱ� ѧУID
      ,k.XLID as k_XLZ_XLID--У���ܱ� У��ID
      ,k.NAME as k_XLZ_NAME--У���ܱ� У��������
      ,k.STARTDAY as k_XLZ_STARTDAY--У���ܱ� ��ʼ����
      ,k.ENDDAY as k_XLZ_ENDDAY--У���ܱ� ��������
      ,k.ZJH as k_XLZ_ZJH--У���ܱ� �ܼƻ�
      ,l.SCHOOLID as l_XLZ_SCHOOLID--У���ܱ� ѧУID
      ,l.XLID as l_XLZ_XLID--У���ܱ� У��ID
      ,l.NAME as l_XLZ_NAME--У���ܱ� У��������
      ,l.STARTDAY as l_XLZ_STARTDAY--У���ܱ� ��ʼ����
      ,l.ENDDAY as l_XLZ_ENDDAY--У���ܱ� ��������
      ,l.ZJH as l_XLZ_ZJH--У���ܱ� �ܼƻ�
      ,m.SCHOOLID as m_WEEKDAY_SCHOOLID--���� ѧУ��
      ,m.MC as m_WEEKDAY_MC--���� ����
      ,n.SCHOOLID as n_SD_SCHOOLID--ʱ�� ѧУ��
      ,n.MC as n_SD_MC--ʱ�� ����
      ,o.SCHOOLID as o_JC_SCHOOLID--�ڴ� ѧУ��
      ,o.SDID as o_JC_SDID--�ڴ� ����ʱ��ID
      ,o.MC as o_JC_MC--�ڴ� ����
      ,o.KSXS as o_JC_KSXS--�ڴ� ��ʼСʱ
      ,o.KSFZ as o_JC_KSFZ--�ڴ� ��ʼ����
      ,o.JSXS as o_JC_JSXS--�ڴ� ����Сʱ
      ,o.JSFZ as o_JC_JSFZ--�ڴ� ��������

FROM dbo.EDU_ZXJX_09_A01_TKSQSJ AS a LEFT OUTER JOIN
      dbo.EDU_ZXJZ_01_01_JZGJBSJ AS c ON a.JSID = c.ID /*��ʦ*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZXJX_01_01_KC AS d ON a.KCID = d.KCH /*�γ�*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_TKLX AS e ON a.TKLXID = e.DM /*��������ID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_05_XLZ AS f ON a.TKQQSZ = f.ID /*����ǰ��ʼ��*/ AND a.SCHOOLID = f.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_05_XLZ AS g ON a.TKQJSZ = g.ID /*����ǰ������*/ AND a.SCHOOLID = g.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_05_WEEKDAY AS h ON a.TKQXQ = h.ID /*����ǰ����*/ AND a.SCHOOLID = h.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_05_SD AS i ON a.TKQSD = i.ID /*����ǰʱ��*/ AND a.SCHOOLID = i.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_05_JC AS j ON a.TKQJC = j.ID /*����ǰ�ڴ�*/ AND a.SCHOOLID = j.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_05_XLZ AS k ON a.TKHQSZ = k.ID /*���κ���ʼ��*/ AND a.SCHOOLID = k.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_05_XLZ AS l ON a.TKHJSZ = l.ID /*���κ������*/ AND a.SCHOOLID = l.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_05_WEEKDAY AS m ON a.TKHXQ = m.ID /*���κ�����*/ AND a.SCHOOLID = m.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_05_SD AS n ON a.TKHSD = n.ID /*���κ�ʱ��*/ AND a.SCHOOLID = n.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_05_JC AS o ON a.TKHJC = o.ID /*���κ�ڴ�*/ AND a.SCHOOLID = o.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
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
      dbo.EDU_JY_ZXXKC AS [db] ON d.KCM = [db].DM /*�γ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXKCDJ AS [dc] ON d.KCDJM = [dc].DM /*�γ̵ȼ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS [dd] ON d.SKFSM = [dd].DM /*�ڿη�ʽ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [de] ON d.SFZK = [de].DM /*�Ƿ�����*/
GO
