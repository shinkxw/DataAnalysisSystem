
--ѧ��ס�޼�¼��
CREATE VIEW [dbo].[VIEW_EDU_ZXFC_08_A02_XSZSJL_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУID
      ,a.[XSID]--ѧ��ID
      ,a.[SSLID]--����¥ID
      ,a.[SSID]--����ID
      ,a.[CWID]--��λID
      ,a.[NJMC]--�꼶����
      ,a.[BJMC]--�༶����
      ,a.[XSXM]--ѧ������
      ,a.[RZSJ]--��סʱ��
      ,a.[SFTS]--�Ƿ�����
      ,c.SCHOOLID as c_XSXX_SCHOOLID--ѧ��������������� ѧУ��
      ,c.XH as c_XSXX_XH--ѧ��������������� ѧ��
      ,c.XM as c_XSXX_XM--ѧ��������������� ����
      ,c.YWXM as c_XSXX_YWXM--ѧ��������������� Ӣ������
      ,c.XMPY as c_XSXX_XMPY--ѧ��������������� ����ƴ��
      ,c.CYM as c_XSXX_CYM--ѧ��������������� ������
      ,c.XBM as c_XSXX_XBM--ѧ��������������� �Ա���
      ,[cb].MC as c_XSXX_XBM_MC--�˵��Ա���� ����
      ,c.CSRQ as c_XSXX_CSRQ--ѧ��������������� ��������
      ,c.CSDM as c_XSXX_CSDM--ѧ��������������� ��������
      ,[cc].MC as c_XSXX_CSDM_MC--�л����񹲺͹������������� ����
      ,c.JG as c_XSXX_JG--ѧ��������������� ����
      ,c.MZM as c_XSXX_MZM--ѧ��������������� ������
      ,[cd].MZMC as c_XSXX_MZM_MZMC--�й����������Ƶ�������ĸƴд���ʹ��� ��������
      ,[cd].ZMDM as c_XSXX_MZM_ZMDM--�й����������Ƶ�������ĸƴд���ʹ��� ��ĸ����
      ,c.GJDQM as c_XSXX_GJDQM--ѧ��������������� ����/������
      ,[ce].GJDQMCJC as c_XSXX_GJDQM_GJDQMCJC--��������͵������ƴ��� ����/�������Ƽ��
      ,[ce].EZMDM as c_XSXX_GJDQM_EZMDM--��������͵������ƴ��� ����ĸ����
      ,[ce].SZMDM as c_XSXX_GJDQM_SZMDM--��������͵������ƴ��� ����ĸ����
      ,c.SFZJLXM as c_XSXX_SFZJLXM--ѧ��������������� ���֤��������
      ,[cf].MC as c_XSXX_SFZJLXM_MC--���֤�����ʹ���� ����
      ,c.SFZJH as c_XSXX_SFZJH--ѧ��������������� ���֤����
      ,c.HYZKM as c_XSXX_HYZKM--ѧ��������������� ����״����
      ,[cg].MC as c_XSXX_HYZKM_MC--����״������ ����
      ,c.GATQWM as c_XSXX_GATQWM--ѧ��������������� �۰�̨������
      ,[ch].MC as c_XSXX_GATQWM_MC--�۰�̨�������� ����
      ,[ch].SM as c_XSXX_GATQWM_SM--�۰�̨�������� ˵��
      ,c.ZZMMM as c_XSXX_ZZMMM--ѧ��������������� ������ò��
      ,[ci].MC as c_XSXX_ZZMMM_MC--������ò���� ����
      ,[ci].JC as c_XSXX_ZZMMM_JC--������ò���� ���
      ,c.JKZKM as c_XSXX_JKZKM--ѧ��������������� ����״����
      ,[cj].MC as c_XSXX_JKZKM_MC--����״��1λ���ִ��� ����
      ,[cj].SM as c_XSXX_JKZKM_SM--����״��1λ���ִ��� ˵��
      ,c.XYZJM as c_XSXX_XYZJM--ѧ��������������� �����ڽ���
      ,[ck].MC as c_XSXX_XYZJM_MC--�ڽ��������� ����
      ,c.XXM as c_XSXX_XXM--ѧ��������������� Ѫ����
      ,[cl].MC as c_XSXX_XXM_MC--Ѫ�ʹ���� ����
      ,[cl].JC as c_XSXX_XXM_JC--Ѫ�ʹ���� ���
      ,c.ZP as c_XSXX_ZP--ѧ��������������� ��Ƭ
      ,c.SFZJYXQ as c_XSXX_SFZJYXQ--ѧ��������������� ���֤����Ч��
      ,c.DSZYBZ as c_XSXX_DSZYBZ--ѧ��������������� ������Ů��־
      ,[cm].MC as c_XSXX_DSZYBZ_MC--�Ƿ��־����� ����
      ,c.RXNY as c_XSXX_RXNY--ѧ��������������� ��ѧ����
      ,c.NJ as c_XSXX_NJ--ѧ��������������� �꼶
      ,c.BH as c_XSXX_BH--ѧ��������������� ���
      ,c.XSLBM as c_XSXX_XSLBM--ѧ��������������� ѧ�������
      ,[cn].MC as c_XSXX_XSLBM_MC--ѧ��������� ����
      ,[cn].SM as c_XSXX_XSLBM_SM--ѧ��������� ˵��
      ,c.XZZ as c_XSXX_XZZ--ѧ��������������� ��סַ
      ,c.HKSZD as c_XSXX_HKSZD--ѧ��������������� �������ڵ�
      ,c.HKXZM as c_XSXX_HKXZM--ѧ��������������� ����������
      ,[co].MC as c_XSXX_HKXZM_MC--���������� ����
      ,c.SFLDRK as c_XSXX_SFLDRK--ѧ��������������� �Ƿ������˿�
      ,[cp].MC as c_XSXX_SFLDRK_MC--�Ƿ��־����� ����
      ,c.TC as c_XSXX_TC--ѧ��������������� �س�
      ,c.LXDH as c_XSXX_LXDH--ѧ��������������� ��ϵ�绰
      ,c.TXDZ as c_XSXX_TXDZ--ѧ��������������� ͨ�ŵ�ַ
      ,c.YZBM as c_XSXX_YZBM--ѧ��������������� ��������
      ,c.DZXX as c_XSXX_DZXX--ѧ��������������� ��������
      ,c.ZYDZ as c_XSXX_ZYDZ--ѧ��������������� ��ҳ��ַ
      ,c.XJH as c_XSXX_XJH--ѧ��������������� ѧ����
      ,c.XSDQZTM as c_XSXX_XSDQZTM--ѧ��������������� ѧ����ǰ״̬��
      ,[cq].MC as c_XSXX_XSDQZTM_MC--ѧ����ǰ״̬����� ����
      ,[cq].SM as c_XSXX_XSDQZTM_SM--ѧ����ǰ״̬����� ˵��
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

FROM dbo.EDU_ZXFC_08_A02_XSZSJL AS a LEFT OUTER JOIN
      dbo.EDU_ZXXS_01_01_XSXX AS c ON a.XSID = c.ID /*ѧ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZXFC_02_01_JZWJBSJ AS d ON a.SSLID = d.ID /*����¥ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZXFC_08_01_XSSS AS e ON a.SSID = e.ID /*����ID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZXFC_08_A01_SSCW AS f ON a.CWID = f.ID /*��λID*/ AND a.SCHOOLID = f.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
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
      dbo.EDU_JY_SFBZ AS [cm] ON c.DSZYBZ = [cm].DM /*������Ů��־*/ LEFT OUTER JOIN
      dbo.EDU_JY_XSLB AS [cn] ON c.XSLBM = [cn].DM /*ѧ�������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS [co] ON c.HKXZM = [co].DM /*����������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [cp] ON c.SFLDRK = [cp].DM /*�Ƿ������˿�*/ LEFT OUTER JOIN
      dbo.EDU_JY_XSDQZT AS [cq] ON c.XSDQZTM = [cq].DM /*ѧ����ǰ״̬��*/ LEFT OUTER JOIN
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
