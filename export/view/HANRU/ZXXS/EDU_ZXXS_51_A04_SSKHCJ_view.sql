
--���ῼ�˳ɼ���
CREATE VIEW [dbo].[VIEW_EDU_ZXXS_51_A04_SSKHCJ_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[SSDLID]--��������ID
      ,a.[SSDLXMID]--����������ĿID
      ,a.[GYID]--����¥ID
      ,a.[SSID]--����ID
      ,a.[FZ]--��ֵ
      ,a.[DJRID]--�Ǽ���ID
      ,a.[DJSJ]--�Ǽ�ʱ��
      ,c.SCHOOLID as c_KHDL_SCHOOLID--���˴���� ѧУ
      ,c.MC as c_KHDL_MC--���˴���� ����
      ,c.KHDX as c_KHDL_KHDX--���˴���� ���˶���
      ,c.DJFS as c_KHDL_DJFS--���˴���� �ǼǷ�ʽ
      ,c.KDJYHIDLB as c_KHDL_KDJYHIDLB--���˴���� �ɵǼ��û�ID�б�
      ,c.KDJYHXMLB as c_KHDL_KDJYHXMLB--���˴���� �ɵǼ��û������б�
      ,d.SCHOOLID as d_KHDLXM_SCHOOLID--���˴�����Ŀ�� ѧУ
      ,d.SSDLID as d_KHDLXM_SSDLID--���˴�����Ŀ�� ��������ID
      ,d.DLXMMC as d_KHDLXM_DLXMMC--���˴�����Ŀ�� ������Ŀ����
      ,d.FZLX as d_KHDLXM_FZLX--���˴�����Ŀ�� ��ֵ����
      ,d.XMZGF as d_KHDLXM_XMZGF--���˴�����Ŀ�� ��Ŀ��߷�
      ,e.SCHOOLID as e_JZWJBSJ_SCHOOLID--���������������� ѧУ��
      ,e.JZWH as e_JZWJBSJ_JZWH--���������������� �������
      ,e.JZWMC as e_JZWJBSJ_JZWMC--���������������� ����������
      ,e.SYZKM as e_JZWJBSJ_SYZKM--���������������� ʹ��״����
      ,[eb].MC as e_JZWJBSJ_SYZKM_MC--ʹ��״������� ����
      ,e.FWCQ as e_JZWJBSJ_FWCQ--���������������� ���ݲ�Ȩ
      ,[ec].MC as e_JZWJBSJ_FWCQ_MC--��Ȩ����� ����
      ,e.XQH as e_JZWJBSJ_XQH--���������������� У����
      ,e.JZWFLM as e_JZWJBSJ_JZWFLM--���������������� �����������
      ,[ed].MC as e_JZWJBSJ_JZWFLM_MC--������������� ����
      ,e.JZWJGM as e_JZWJBSJ_JZWJGM--���������������� ������ṹ��
      ,[ee].MC as e_JZWJBSJ_JZWJGM_MC--������ṹ����� ����
      ,e.JZWCS as e_JZWJBSJ_JZWCS--���������������� ���������
      ,e.JCNY as e_JZWJBSJ_JCNY--���������������� ��������
      ,e.JZWTZZE as e_JZWJBSJ_JZWTZZE--���������������� ������Ͷ���ܶ�
      ,e.JFLYM as e_JZWJBSJ_JFLYM--���������������� ������Դ��
      ,[ef].MC as e_JZWJBSJ_JFLYM_MC--������Դ����� ����
      ,e.ZJZMJ as e_JZWJBSJ_ZJZMJ--���������������� �ܽ������
      ,e.ZSYMJ as e_JZWJBSJ_ZSYMJ--���������������� ��ʹ�����
      ,e.KZSFLDM as e_JZWJBSJ_KZSFLDM--���������������� ��������Ҷ���
      ,[eg].JC as e_JZWJBSJ_KZSFLDM_JC--��������Ҷȴ��� ���
      ,[eg].MC as e_JZWJBSJ_KZSFLDM_MC--��������Ҷȴ��� ����
      ,e.KZSFBZM as e_JZWJBSJ_KZSFBZM--���������������� ���������׼��
      ,[eh].JC as e_JZWJBSJ_KZSFBZM_JC--���������׼���� ���
      ,[eh].MC as e_JZWJBSJ_KZSFBZM_MC--���������׼���� ����
      ,[eh].SM as e_JZWJBSJ_KZSFBZM_SM--���������׼���� ˵��
      ,e.JZWDZ as e_JZWJBSJ_JZWDZ--���������������� �������ַ
      ,e.JZWZKM as e_JZWJBSJ_JZWZKM--���������������� ������״����
      ,[ei].MC as e_JZWJBSJ_JZWZKM_MC--������״������� ����
      ,[ei].SM as e_JZWJBSJ_JZWZKM_SM--������״������� ˵��
      ,e.JZWTP as e_JZWJBSJ_JZWTP--���������������� ������ͼƬ
      ,e.JZWPMT as e_JZWJBSJ_JZWPMT--���������������� ������ƽ��ͼ
      ,e.XXDWCCM as e_JZWJBSJ_XXDWCCM--���������������� ѧУ��λ�����
      ,[ej].MC as e_JZWJBSJ_XXDWCCM_MC--ѧУ��λ��δ���� ����
      ,e.JZWWZZK as e_JZWJBSJ_JZWWZZK--���������������� ������λ��״��
      ,e.GHSPWH as e_JZWJBSJ_GHSPWH--���������������� �滮�����ĺ�
      ,e.ZHFZNL as e_JZWJBSJ_ZHFZNL--���������������� �ۺϷ�������
      ,e.GHSYNX as e_JZWJBSJ_GHSYNX--���������������� �滮ʹ������
      ,e.SFYYJBXCS as e_JZWJBSJ_SFYYJBXCS--���������������� �Ƿ���Ԥ�����մ�ʩ
      ,[ek].MC as e_JZWJBSJ_SFYYJBXCS_MC--�Ƿ��־����� ����
      ,e.SFKYYYJBNCS as e_JZWJBSJ_SFKYYYJBNCS--���������������� �Ƿ������Ӧ�����ѳ���
      ,[el].MC as e_JZWJBSJ_SFKYYYJBNCS_MC--�Ƿ��־����� ����
      ,e.CQZH as e_JZWJBSJ_CQZH--���������������� ��Ȩ֤��
      ,e.JZWYTM as e_JZWJBSJ_JZWYTM--���������������� ��������;��
      ,[em].MC as e_JZWJBSJ_JZWYTM_MC--��������;����� ����
      ,e.JZWZGD as e_JZWJBSJ_JZWZGD--���������������� �������ܸ߶�
      ,e.WFJDBM as e_JZWJBSJ_WFJDBM--���������������� Σ����������
      ,e.WFJDWH as e_JZWJBSJ_WFJDWH--���������������� Σ�������ĺ�
      ,e.WFJDRQ as e_JZWJBSJ_WFJDRQ--���������������� Σ����������
      ,e.GNFSM as e_JZWJBSJ_GNFSM--���������������� ��ů��ʽ��
      ,[en].MC as e_JZWJBSJ_GNFSM_MC--��ů��ʽ����� ����
      ,e.JZWJCXSM as e_JZWJBSJ_JZWJCXSM--���������������� �����������ʽ��
      ,[eo].MC as e_JZWJBSJ_JZWJCXSM_MC--�����������ʽ����� ����
      ,e.JZWPMXSM as e_JZWJBSJ_JZWPMXSM--���������������� ������ƽ����ʽ��
      ,[ep].MC as e_JZWJBSJ_JZWPMXSM_MC--������ƽ����ʽ����� ����
      ,e.JZWLBXSM as e_JZWJBSJ_JZWLBXSM--���������������� ������¥����ʽ��
      ,[eq].MC as e_JZWJBSJ_JZWLBXSM_MC--������¥����ʽ����� ����
      ,e.SFYGZZ as e_JZWJBSJ_SFYGZZ--���������������� �Ƿ��й�����
      ,[er].MC as e_JZWJBSJ_SFYGZZ_MC--�Ƿ��־����� ����
      ,e.QL as e_JZWJBSJ_QL--���������������� Ȧ��
      ,[es].MC as e_JZWJBSJ_QL_MC--�Ƿ��־����� ����
      ,e.ZJAQGZWCRQ as e_JZWJBSJ_ZJAQGZWCRQ--���������������� �����ȫ�����������
      ,e.ZJAQGZHYJSYNX as e_JZWJBSJ_ZJAQGZHYJSYNX--���������������� �����ȫ�����Ԥ��ʹ������
      ,e.ZXLXM as e_JZWJBSJ_ZXLXM--���������������� ר������
      ,e.ZYZXTZBZMCM as e_JZWJBSJ_ZYZXTZBZMCM--���������������� ����ר��Ͷ�ʲ���������
      ,[et].MC as e_JZWJBSJ_ZYZXTZBZMCM_MC--����ר��Ͷ�ʲ������ƴ���� ����
      ,e.WWJZDJM as e_JZWJBSJ_WWJZDJM--���������������� ���ｨ���ȼ���
      ,[eu].MC as e_JZWJBSJ_WWJZDJM_MC--���ｨ���ȼ������ ����
      ,e.JXJFZYF as e_JZWJBSJ_JXJFZYF--���������������� ��ѧ�������÷�
      ,e.QZJS as e_JZWJBSJ_QZJS--���������������� ���н���
      ,e.QZSYS as e_JZWJBSJ_QZSYS--���������������� ����ʵ����
      ,e.QZTSS as e_JZWJBSJ_QZTSS--���������������� ����ͼ����
      ,e.QZWJS as e_JZWJBSJ_QZWJS--���������������� ����΢����
      ,e.QZYYS as e_JZWJBSJ_QZYYS--���������������� ����������
      ,e.QZTYHDS as e_JZWJBSJ_QZTYHDS--���������������� �����������
      ,e.QZQTJFYF as e_JZWJBSJ_QZQTJFYF--���������������� ���������̸��÷�
      ,e.SHYF as e_JZWJBSJ_SHYF--���������������� �����÷�
      ,e.QZXSSS as e_JZWJBSJ_QZXSSS--���������������� ����ѧ������
      ,e.QZST as e_JZWJBSJ_QZST--���������������� ����ʳ��
      ,e.QZCS as e_JZWJBSJ_QZCS--���������������� ���в���
      ,e.QZGLF as e_JZWJBSJ_QZGLF--���������������� ���й�¯��(��ˮ��)
      ,e.QZYS as e_JZWJBSJ_QZYS--���������������� ����ԡ��
      ,e.QZJGSS as e_JZWJBSJ_QZJGSS--���������������� ���н̹�����
      ,e.QZQTSHYF as e_JZWJBSJ_QZQTSHYF--���������������� �������������÷�
      ,e.XZBGYF as e_JZWJBSJ_XZBGYF--���������������� �����칫�÷�
      ,e.QZJSBGS as e_JZWJBSJ_QZJSBGS--���������������� ���н�ְ���칫��
      ,e.QZWSBJS as e_JZWJBSJ_QZWSBJS--���������������� ��������������
      ,e.QZQTXZBGYF as e_JZWJBSJ_QZQTXZBGYF--���������������� �������������칫�÷�
      ,e.QTYF as e_JZWJBSJ_QTYF--���������������� �����÷�
      ,e.GLY as e_JZWJBSJ_GLY--���������������� ����Ա
      ,f.SCHOOLID as f_XSSS_SCHOOLID--ѧ������������� ѧУ��
      ,f.SSLID as f_XSSS_SSLID--ѧ������������� ����¥ID
      ,f.SSLBM as f_XSSS_SSLBM--ѧ������������� ����¥���
      ,f.FJBM as f_XSSS_FJBM--ѧ������������� ������
      ,f.RZXB as f_XSSS_RZXB--ѧ������������� ��ס�Ա�
      ,[fb].MC as f_XSSS_RZXB_MC--�˵��Ա���� ����
      ,f.SFKY as f_XSSS_SFKY--ѧ������������� �Ƿ����
      ,[fc].MC as f_XSSS_SFKY_MC--�Ƿ��־����� ����
      ,f.KZRS as f_XSSS_KZRS--ѧ������������� ��ס����
      ,f.WLDK as f_XSSS_WLDK--ѧ������������� ����˿�
      ,f.AZDSJ as f_XSSS_AZDSJ--ѧ������������� ��װ���ӻ�
      ,[fd].MC as f_XSSS_AZDSJ_MC--�Ƿ��־����� ����
      ,f.DHDK as f_XSSS_DHDK--ѧ������������� �绰�˿�
      ,f.DHHM as f_XSSS_DHHM--ѧ������������� �绰����
      ,f.SBDS as f_XSSS_SBDS--ѧ������������� ˮ�����
      ,f.DBDS as f_XSSS_DBDS--ѧ������������� ������
      ,f.SSBZ as f_XSSS_SSBZ--ѧ������������� ���ᱸע
      ,f.SZLZ as f_XSSS_SZLZ--ѧ������������� ����¥��
      ,f.SSM as f_XSSS_SSM--ѧ������������� ������
      ,g.SCHOOLID as g_USER_SCHOOLID--Ӧ��ϵͳ�û��� ѧУID
      ,g.APPID as g_USER_APPID--Ӧ��ϵͳ�û��� Ӧ��ID
      ,g.PWD as g_USER_PWD--Ӧ��ϵͳ�û��� ����
      ,g.STATUS as g_USER_STATUS--Ӧ��ϵͳ�û��� �û�״̬
      ,g.USERTYPE as g_USER_USERTYPE--Ӧ��ϵͳ�û��� �û����
      ,g.USERID as g_USER_USERID--Ӧ��ϵͳ�û��� �û�ID
      ,g.ROLEIDLst as g_USER_ROLEIDLst--Ӧ��ϵͳ�û��� �û���ɫ
      ,g.XM as g_USER_XM--Ӧ��ϵͳ�û��� ����
      ,g.XB as g_USER_XB--Ӧ��ϵͳ�û��� �Ա�
      ,g.QQ as g_USER_QQ--Ӧ��ϵͳ�û��� QQ
      ,g.DZYJ as g_USER_DZYJ--Ӧ��ϵͳ�û��� �����ʼ�
      ,g.LXDH as g_USER_LXDH--Ӧ��ϵͳ�û��� ��ϵ�绰
      ,g.ZJDLSJ as g_USER_ZJDLSJ--Ӧ��ϵͳ�û��� ���һ�ε�¼ʱ��
      ,g.DLCGCS as g_USER_DLCGCS--Ӧ��ϵͳ�û��� ��¼�ɹ�����
      ,g.YHCJSJ as g_USER_YHCJSJ--Ӧ��ϵͳ�û��� �û�����ʱ��
      ,g.YHRY as g_USER_YHRY--Ӧ��ϵͳ�û��� �û�����
      ,g.YHJF as g_USER_YHJF--Ӧ��ϵͳ�û��� �û�����

FROM dbo.EDU_ZXXS_51_A04_SSKHCJ AS a LEFT OUTER JOIN
      dbo.EDU_ZXXS_51_A01_KHDL AS c ON a.SSDLID = c.ID /*��������ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZXXS_51_A02_KHDLXM AS d ON a.SSDLXMID = d.ID /*����������ĿID*/ LEFT OUTER JOIN
      dbo.EDU_ZXFC_02_01_JZWJBSJ AS e ON a.GYID = e.ID /*����¥ID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZXFC_08_01_XSSS AS f ON a.SSID = f.ID /*����ID*/ AND a.SCHOOLID = f.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS g ON a.DJRID = g.LOGINNAME /*�Ǽ���ID*/ AND a.SCHOOLID = g.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_JY_SYZK AS [eb] ON e.SYZKM = [eb].DM /*ʹ��״����*/ LEFT OUTER JOIN
      dbo.EDU_JY_CQ AS [ec] ON e.FWCQ = [ec].DM /*���ݲ�Ȩ*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWFL AS [ed] ON e.JZWFLM = [ed].DM /*�����������*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWJG AS [ee] ON e.JZWJGM = [ee].DM /*������ṹ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_JFLY AS [ef] ON e.JFLYM = [ef].DM /*������Դ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_KZSFLD AS [eg] ON e.KZSFLDM = [eg].DM /*��������Ҷ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_KZSFBZ AS [eh] ON e.KZSFBZM = [eh].DM /*���������׼��*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWZK AS [ei] ON e.JZWZKM = [ei].DM /*������״����*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXDWCC AS [ej] ON e.XXDWCCM = [ej].DM /*ѧУ��λ�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [ek] ON e.SFYYJBXCS = [ek].DM /*�Ƿ���Ԥ�����մ�ʩ*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [el] ON e.SFKYYYJBNCS = [el].DM /*�Ƿ������Ӧ�����ѳ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWYT AS [em] ON e.JZWYTM = [em].DM /*��������;��*/ LEFT OUTER JOIN
      dbo.EDU_JY_GNFS AS [en] ON e.GNFSM = [en].DM /*��ů��ʽ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWJCXS AS [eo] ON e.JZWJCXSM = [eo].DM /*�����������ʽ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWPMXS AS [ep] ON e.JZWPMXSM = [ep].DM /*������ƽ����ʽ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZWLBXS AS [eq] ON e.JZWLBXSM = [eq].DM /*������¥����ʽ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [er] ON e.SFYGZZ = [er].DM /*�Ƿ��й�����*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [es] ON e.QL = [es].DM /*Ȧ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZYZXTZBZMC AS [et] ON e.ZYZXTZBZMCM = [et].DM /*����ר��Ͷ�ʲ���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_WWJZDJ AS [eu] ON e.WWJZDJM = [eu].DM /*���ｨ���ȼ���*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS [fb] ON f.RZXB = [fb].DM /*��ס�Ա�*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [fc] ON f.SFKY = [fc].DM /*�Ƿ����*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [fd] ON f.AZDSJ = [fd].DM /*��װ���ӻ�*/
GO
