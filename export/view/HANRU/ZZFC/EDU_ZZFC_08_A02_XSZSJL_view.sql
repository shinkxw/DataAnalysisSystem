
--ѧ��ס�޼�¼��
CREATE VIEW [dbo].[VIEW_EDU_ZZFC_08_A02_XSZSJL_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУID
      ,a.[XSID]--ѧ��ID
      ,a.[SSLID]--����¥ID
      ,a.[SSID]--����ID
      ,a.[CWID]--��λID
      ,a.[ZYXMC]--רҵϵ����
      ,a.[ZYMC]--רҵ����
      ,a.[NJMC]--�꼶����
      ,a.[BJMC]--�༶����
      ,a.[XSXM]--ѧ������
      ,a.[RZSJ]--��סʱ��
      ,a.[SFTS]--�Ƿ�����
      ,c.SCHOOLID as c_XSXX_SCHOOLID--ѧ����Ϣ���ݱ� ѧУ��
      ,c.XH as c_XSXX_XH--ѧ����Ϣ���ݱ� ѧ��
      ,c.XM as c_XSXX_XM--ѧ����Ϣ���ݱ� ����
      ,c.YWXM as c_XSXX_YWXM--ѧ����Ϣ���ݱ� Ӣ������
      ,c.XMPY as c_XSXX_XMPY--ѧ����Ϣ���ݱ� ����ƴ��
      ,c.CYM as c_XSXX_CYM--ѧ����Ϣ���ݱ� ������
      ,c.SFZJLXM as c_XSXX_SFZJLXM--ѧ����Ϣ���ݱ� ���֤��������
      ,[cb].MC as c_XSXX_SFZJLXM_MC--���֤�����ʹ���� ����
      ,c.SFZJH as c_XSXX_SFZJH--ѧ����Ϣ���ݱ� ���֤����
      ,c.XBM as c_XSXX_XBM--ѧ����Ϣ���ݱ� �Ա���
      ,[cc].MC as c_XSXX_XBM_MC--�˵��Ա���� ����
      ,c.XXM as c_XSXX_XXM--ѧ����Ϣ���ݱ� Ѫ����
      ,[cd].MC as c_XSXX_XXM_MC--Ѫ�ʹ���� ����
      ,[cd].JC as c_XSXX_XXM_JC--Ѫ�ʹ���� ���
      ,c.CSRQ as c_XSXX_CSRQ--ѧ����Ϣ���ݱ� ��������
      ,c.CSDM as c_XSXX_CSDM--ѧ����Ϣ���ݱ� ��������
      ,[ce].MC as c_XSXX_CSDM_MC--�л����񹲺͹������������� ����
      ,c.JG as c_XSXX_JG--ѧ����Ϣ���ݱ� ����
      ,c.MZM as c_XSXX_MZM--ѧ����Ϣ���ݱ� ������
      ,[cf].MZMC as c_XSXX_MZM_MZMC--�й����������Ƶ�������ĸƴд���ʹ��� ��������
      ,[cf].ZMDM as c_XSXX_MZM_ZMDM--�й����������Ƶ�������ĸƴд���ʹ��� ��ĸ����
      ,c.HYZKM as c_XSXX_HYZKM--ѧ����Ϣ���ݱ� ����״����
      ,[cg].MC as c_XSXX_HYZKM_MC--����״������ ����
      ,c.XYZJM as c_XSXX_XYZJM--ѧ����Ϣ���ݱ� �����ڽ���
      ,[ch].MC as c_XSXX_XYZJM_MC--�ڽ��������� ����
      ,c.GATQWM as c_XSXX_GATQWM--ѧ����Ϣ���ݱ� �۰�̨������
      ,[ci].MC as c_XSXX_GATQWM_MC--�۰�̨�������� ����
      ,[ci].SM as c_XSXX_GATQWM_SM--�۰�̨�������� ˵��
      ,c.JKZKM as c_XSXX_JKZKM--ѧ����Ϣ���ݱ� ����״����
      ,[cj].MC as c_XSXX_JKZKM_MC--����״��1λ���ִ��� ����
      ,[cj].SM as c_XSXX_JKZKM_SM--����״��1λ���ִ��� ˵��
      ,c.ZZMMM as c_XSXX_ZZMMM--ѧ����Ϣ���ݱ� ������ò��
      ,[ck].MC as c_XSXX_ZZMMM_MC--������ò���� ����
      ,[ck].JC as c_XSXX_ZZMMM_JC--������ò���� ���
      ,c.HKSZDXZQHM as c_XSXX_HKSZDXZQHM--ѧ����Ϣ���ݱ� �������ڵ�����������
      ,[cl].MC as c_XSXX_HKSZDXZQHM_MC--�л����񹲺͹������������� ����
      ,c.HKLBM as c_XSXX_HKLBM--ѧ����Ϣ���ݱ� ���������
      ,[cm].MC as c_XSXX_HKLBM_MC--���������� ����
      ,c.SFSLDRK as c_XSXX_SFSLDRK--ѧ����Ϣ���ݱ� �Ƿ��������˿�
      ,[cn].MC as c_XSXX_SFSLDRK_MC--�Ƿ��־����� ����
      ,c.GJDQM as c_XSXX_GJDQM--ѧ����Ϣ���ݱ� ����/����
      ,[co].GJDQMCJC as c_XSXX_GJDQM_GJDQMCJC--��������͵������ƴ��� ����/�������Ƽ��
      ,[co].EZMDM as c_XSXX_GJDQM_EZMDM--��������͵������ƴ��� ����ĸ����
      ,[co].SZMDM as c_XSXX_GJDQM_SZMDM--��������͵������ƴ��� ����ĸ����
      ,c.TC as c_XSXX_TC--ѧ����Ϣ���ݱ� �س�
      ,c.XSLXDH as c_XSXX_XSLXDH--ѧ����Ϣ���ݱ� ѧ����ϵ�绰
      ,c.WLDZ as c_XSXX_WLDZ--ѧ����Ϣ���ݱ� �����ַ
      ,c.JSTXH as c_XSXX_JSTXH--ѧ����Ϣ���ݱ� ��ʱͨѶ��
      ,c.DZXX as c_XSXX_DZXX--ѧ����Ϣ���ݱ� ��������
      ,c.ZP as c_XSXX_ZP--ѧ����Ϣ���ݱ� ��Ƭ(·��)
      ,c.RXXQID as c_XSXX_RXXQID--ѧ����Ϣ���ݱ� ��ѧѧ��ID
      ,c.NFCKH as c_XSXX_NFCKH--ѧ����Ϣ���ݱ� NFC����
      ,d.SCHOOLID as d_JZWJBSJ_SCHOOLID--���������������� ѧУ��
      ,d.JZWH as d_JZWJBSJ_JZWH--���������������� �������
      ,d.JZWMC as d_JZWJBSJ_JZWMC--���������������� ����������
      ,d.SYZKM as d_JZWJBSJ_SYZKM--���������������� ʹ��״����
      ,[db].MC as d_JZWJBSJ_SYZKM_MC--ʹ��״������� ����
      ,d.FWCQ as d_JZWJBSJ_FWCQ--���������������� ���ݲ�Ȩ
      ,[dc].MC as d_JZWJBSJ_FWCQ_MC--��Ȩ����� ����
      ,d.XQH as d_JZWJBSJ_XQH--���������������� У����
      ,d.JZWFLM as d_JZWJBSJ_JZWFLM--���������������� �����������
      ,[dd].MC as d_JZWJBSJ_JZWFLM_MC--������������� ����
      ,d.JZWJGM as d_JZWJBSJ_JZWJGM--���������������� ������ṹ��
      ,[de].MC as d_JZWJBSJ_JZWJGM_MC--������ṹ����� ����
      ,d.JZWCS as d_JZWJBSJ_JZWCS--���������������� ���������
      ,d.JCNY as d_JZWJBSJ_JCNY--���������������� ��������
      ,d.JZWTZZE as d_JZWJBSJ_JZWTZZE--���������������� ������Ͷ���ܶ�
      ,d.JFLYM as d_JZWJBSJ_JFLYM--���������������� ������Դ��
      ,[df].MC as d_JZWJBSJ_JFLYM_MC--������Դ����� ����
      ,d.ZJZMJ as d_JZWJBSJ_ZJZMJ--���������������� �ܽ������
      ,d.ZSYMJ as d_JZWJBSJ_ZSYMJ--���������������� ��ʹ�����
      ,d.KZSFLDM as d_JZWJBSJ_KZSFLDM--���������������� ��������Ҷ���
      ,[dg].JC as d_JZWJBSJ_KZSFLDM_JC--��������Ҷȴ��� ���
      ,[dg].MC as d_JZWJBSJ_KZSFLDM_MC--��������Ҷȴ��� ����
      ,d.KZSFBZM as d_JZWJBSJ_KZSFBZM--���������������� ���������׼��
      ,[dh].JC as d_JZWJBSJ_KZSFBZM_JC--���������׼���� ���
      ,[dh].MC as d_JZWJBSJ_KZSFBZM_MC--���������׼���� ����
      ,[dh].SM as d_JZWJBSJ_KZSFBZM_SM--���������׼���� ˵��
      ,d.JZWDZ as d_JZWJBSJ_JZWDZ--���������������� �������ַ
      ,d.JZWZKM as d_JZWJBSJ_JZWZKM--���������������� ������״����
      ,[di].MC as d_JZWJBSJ_JZWZKM_MC--������״������� ����
      ,[di].SM as d_JZWJBSJ_JZWZKM_SM--������״������� ˵��
      ,d.JZWTP as d_JZWJBSJ_JZWTP--���������������� ������ͼƬ
      ,d.JZWPMT as d_JZWJBSJ_JZWPMT--���������������� ������ƽ��ͼ
      ,d.XXDWCCM as d_JZWJBSJ_XXDWCCM--���������������� ѧУ��λ�����
      ,[dj].MC as d_JZWJBSJ_XXDWCCM_MC--ѧУ��λ��δ���� ����
      ,d.JZWWZZK as d_JZWJBSJ_JZWWZZK--���������������� ������λ��״��
      ,d.GHSPWH as d_JZWJBSJ_GHSPWH--���������������� �滮�����ĺ�
      ,d.ZHFZNL as d_JZWJBSJ_ZHFZNL--���������������� �ۺϷ�������
      ,d.GHSYNX as d_JZWJBSJ_GHSYNX--���������������� �滮ʹ������
      ,d.SFYYJBXCS as d_JZWJBSJ_SFYYJBXCS--���������������� �Ƿ���Ԥ�����մ�ʩ
      ,[dk].MC as d_JZWJBSJ_SFYYJBXCS_MC--�Ƿ��־����� ����
      ,d.SFKYYYJBNCS as d_JZWJBSJ_SFKYYYJBNCS--���������������� �Ƿ������Ӧ�����ѳ���
      ,[dl].MC as d_JZWJBSJ_SFKYYYJBNCS_MC--�Ƿ��־����� ����
      ,d.CQZH as d_JZWJBSJ_CQZH--���������������� ��Ȩ֤��
      ,d.JZWYTM as d_JZWJBSJ_JZWYTM--���������������� ��������;��
      ,[dm].MC as d_JZWJBSJ_JZWYTM_MC--��������;����� ����
      ,d.JZWZGD as d_JZWJBSJ_JZWZGD--���������������� �������ܸ߶�
      ,d.WFJDBM as d_JZWJBSJ_WFJDBM--���������������� Σ����������
      ,d.WFJDWH as d_JZWJBSJ_WFJDWH--���������������� Σ�������ĺ�
      ,d.WFJDRQ as d_JZWJBSJ_WFJDRQ--���������������� Σ����������
      ,d.GNFSM as d_JZWJBSJ_GNFSM--���������������� ��ů��ʽ��
      ,[dn].MC as d_JZWJBSJ_GNFSM_MC--��ů��ʽ����� ����
      ,d.JZWJCXSM as d_JZWJBSJ_JZWJCXSM--���������������� �����������ʽ��
      ,[do].MC as d_JZWJBSJ_JZWJCXSM_MC--�����������ʽ����� ����
      ,d.JZWPMXSM as d_JZWJBSJ_JZWPMXSM--���������������� ������ƽ����ʽ��
      ,[dp].MC as d_JZWJBSJ_JZWPMXSM_MC--������ƽ����ʽ����� ����
      ,d.JZWLBXSM as d_JZWJBSJ_JZWLBXSM--���������������� ������¥����ʽ��
      ,[dq].MC as d_JZWJBSJ_JZWLBXSM_MC--������¥����ʽ����� ����
      ,d.SFYGZZ as d_JZWJBSJ_SFYGZZ--���������������� �Ƿ��й�����
      ,[dr].MC as d_JZWJBSJ_SFYGZZ_MC--�Ƿ��־����� ����
      ,d.QL as d_JZWJBSJ_QL--���������������� Ȧ��
      ,[ds].MC as d_JZWJBSJ_QL_MC--�Ƿ��־����� ����
      ,d.ZJAQGZWCRQ as d_JZWJBSJ_ZJAQGZWCRQ--���������������� �����ȫ�����������
      ,d.ZJAQGZHYJSYNX as d_JZWJBSJ_ZJAQGZHYJSYNX--���������������� �����ȫ�����Ԥ��ʹ������
      ,d.ZXLXM as d_JZWJBSJ_ZXLXM--���������������� ר������
      ,d.ZYZXTZBZMCM as d_JZWJBSJ_ZYZXTZBZMCM--���������������� ����ר��Ͷ�ʲ���������
      ,[dt].MC as d_JZWJBSJ_ZYZXTZBZMCM_MC--����ר��Ͷ�ʲ������ƴ���� ����
      ,d.WWJZDJM as d_JZWJBSJ_WWJZDJM--���������������� ���ｨ���ȼ���
      ,[du].MC as d_JZWJBSJ_WWJZDJM_MC--���ｨ���ȼ������ ����
      ,d.JXJFZYF as d_JZWJBSJ_JXJFZYF--���������������� ��ѧ�������÷�
      ,d.QZJS as d_JZWJBSJ_QZJS--���������������� ���н���
      ,d.QZSYS as d_JZWJBSJ_QZSYS--���������������� ����ʵ����
      ,d.QZTSS as d_JZWJBSJ_QZTSS--���������������� ����ͼ����
      ,d.QZWJS as d_JZWJBSJ_QZWJS--���������������� ����΢����
      ,d.QZYYS as d_JZWJBSJ_QZYYS--���������������� ����������
      ,d.QZTYHDS as d_JZWJBSJ_QZTYHDS--���������������� �����������
      ,d.QZQTJFYF as d_JZWJBSJ_QZQTJFYF--���������������� ���������̸��÷�
      ,d.SHYF as d_JZWJBSJ_SHYF--���������������� �����÷�
      ,d.QZXSSS as d_JZWJBSJ_QZXSSS--���������������� ����ѧ������
      ,d.QZST as d_JZWJBSJ_QZST--���������������� ����ʳ��
      ,d.QZCS as d_JZWJBSJ_QZCS--���������������� ���в���
      ,d.QZGLF as d_JZWJBSJ_QZGLF--���������������� ���й�¯��(��ˮ��)
      ,d.QZYS as d_JZWJBSJ_QZYS--���������������� ����ԡ��
      ,d.QZJGSS as d_JZWJBSJ_QZJGSS--���������������� ���н̹�����
      ,d.QZQTSHYF as d_JZWJBSJ_QZQTSHYF--���������������� �������������÷�
      ,d.XZBGYF as d_JZWJBSJ_XZBGYF--���������������� �����칫�÷�
      ,d.QZJSBGS as d_JZWJBSJ_QZJSBGS--���������������� ���н�ְ���칫��
      ,d.QZWSBJS as d_JZWJBSJ_QZWSBJS--���������������� ��������������
      ,d.QZQTXZBGYF as d_JZWJBSJ_QZQTXZBGYF--���������������� �������������칫�÷�
      ,d.QTYF as d_JZWJBSJ_QTYF--���������������� �����÷�
      ,d.GLY as d_JZWJBSJ_GLY--���������������� ����Ա
      ,e.SCHOOLID as e_XSSS_SCHOOLID--ѧ������������� ѧУ��
      ,e.SSLID as e_XSSS_SSLID--ѧ������������� ����¥ID
      ,e.SSLBM as e_XSSS_SSLBM--ѧ������������� ����¥���
      ,e.FJBM as e_XSSS_FJBM--ѧ������������� ������
      ,e.RZXB as e_XSSS_RZXB--ѧ������������� ��ס�Ա�
      ,[eb].MC as e_XSSS_RZXB_MC--�˵��Ա���� ����
      ,e.SFKY as e_XSSS_SFKY--ѧ������������� �Ƿ����
      ,[ec].MC as e_XSSS_SFKY_MC--�Ƿ��־����� ����
      ,e.KZRS as e_XSSS_KZRS--ѧ������������� ��ס����
      ,e.WLDK as e_XSSS_WLDK--ѧ������������� ����˿�
      ,e.AZDSJ as e_XSSS_AZDSJ--ѧ������������� ��װ���ӻ�
      ,[ed].MC as e_XSSS_AZDSJ_MC--�Ƿ��־����� ����
      ,e.DHDK as e_XSSS_DHDK--ѧ������������� �绰�˿�
      ,e.DHHM as e_XSSS_DHHM--ѧ������������� �绰����
      ,e.SBDS as e_XSSS_SBDS--ѧ������������� ˮ�����
      ,e.DBDS as e_XSSS_DBDS--ѧ������������� ������
      ,e.SSBZ as e_XSSS_SSBZ--ѧ������������� ���ᱸע
      ,e.SZLZ as e_XSSS_SZLZ--ѧ������������� ����¥��
      ,e.SSM as e_XSSS_SSM--ѧ������������� ������
      ,f.SCHOOLID as f_SSCW_SCHOOLID--���ᴲλ�� ѧУID
      ,f.SSLID as f_SSCW_SSLID--���ᴲλ�� ����¥ID
      ,f.SSID as f_SSCW_SSID--���ᴲλ�� ����ID
      ,f.CWM as f_SSCW_CWM--���ᴲλ�� ��λ��
      ,f.BZ as f_SSCW_BZ--���ᴲλ�� ��ע
      ,f.SFRZ as f_SSCW_SFRZ--���ᴲλ�� �Ƿ���ס
      ,[fb].MC as f_SSCW_SFRZ_MC--�Ƿ��־����� ����

FROM dbo.EDU_ZZFC_08_A02_XSZSJL AS a LEFT OUTER JOIN
      dbo.EDU_ZZXS_01_01_XSXX AS c ON a.XSID = c.ID /*ѧ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZFC_02_01_JZWJBSJ AS d ON a.SSLID = d.ID /*����¥ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZFC_08_01_XSSS AS e ON a.SSID = e.ID /*����ID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZZFC_08_A01_SSCW AS f ON a.CWID = f.ID /*��λID*/ AND a.SCHOOLID = f.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS [cb] ON c.SFZJLXM = [cb].DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS [cc] ON c.XBM = [cc].DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS [cd] ON c.XXM = [cd].DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [ce] ON c.CSDM = [ce].DM /*��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS [cf] ON c.MZM = [cf].DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS [cg] ON c.HYZKM = [cg].DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS [ch] ON c.XYZJM = [ch].DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS [ci] ON c.GATQWM = [ci].DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS [cj] ON c.JKZKM = [cj].DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS [ck] ON c.ZZMMM = [ck].DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [cl] ON c.HKSZDXZQHM = [cl].DM /*�������ڵ�����������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS [cm] ON c.HKLBM = [cm].DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [cn] ON c.SFSLDRK = [cn].DM /*�Ƿ��������˿�*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS [co] ON c.GJDQM = [co].DM /*����/����*/ LEFT OUTER JOIN
      dbo.EDU_JY_SYZK AS [db] ON d.SYZKM = [db].DM /*ʹ��״����*/ LEFT OUTER JOIN
      dbo.EDU_JY_CQ AS [dc] ON d.FWCQ = [dc].DM /*���ݲ�Ȩ*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWFL AS [dd] ON d.JZWFLM = [dd].DM /*�����������*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWJG AS [de] ON d.JZWJGM = [de].DM /*������ṹ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_JFLY AS [df] ON d.JFLYM = [df].DM /*������Դ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_KZSFLD AS [dg] ON d.KZSFLDM = [dg].DM /*��������Ҷ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_KZSFBZ AS [dh] ON d.KZSFBZM = [dh].DM /*���������׼��*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWZK AS [di] ON d.JZWZKM = [di].DM /*������״����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXDWCC AS [dj] ON d.XXDWCCM = [dj].DM /*ѧУ��λ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [dk] ON d.SFYYJBXCS = [dk].DM /*�Ƿ���Ԥ�����մ�ʩ*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [dl] ON d.SFKYYYJBNCS = [dl].DM /*�Ƿ������Ӧ�����ѳ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWYT AS [dm] ON d.JZWYTM = [dm].DM /*��������;��*/ LEFT OUTER JOIN
      dbo.EDU_JY_GNFS AS [dn] ON d.GNFSM = [dn].DM /*��ů��ʽ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWJCXS AS [do] ON d.JZWJCXSM = [do].DM /*�����������ʽ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWPMXS AS [dp] ON d.JZWPMXSM = [dp].DM /*������ƽ����ʽ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWLBXS AS [dq] ON d.JZWLBXSM = [dq].DM /*������¥����ʽ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [dr] ON d.SFYGZZ = [dr].DM /*�Ƿ��й�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [ds] ON d.QL = [ds].DM /*Ȧ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZYZXTZBZMC AS [dt] ON d.ZYZXTZBZMCM = [dt].DM /*����ר��Ͷ�ʲ���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_WWJZDJ AS [du] ON d.WWJZDJM = [du].DM /*���ｨ���ȼ���*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS [eb] ON e.RZXB = [eb].DM /*��ס�Ա�*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [ec] ON e.SFKY = [ec].DM /*�Ƿ����*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [ed] ON e.AZDSJ = [ed].DM /*��װ���ӻ�*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [fb] ON f.SFRZ = [fb].DM /*�Ƿ���ס*/
GO
