
--�ɼ���ϸ��
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_55_A10_CJMX_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[XQID]--ѧ��ID
      ,a.[NJID]--�꼶ID
      ,a.[ZYKCKID]--רҵ�γ̿�ID
      ,a.[XSID]--ѧ��ID
      ,a.[PFXMID]--������ĿID
      ,a.[FZ]--��ֵ
      ,a.[DJRID]--�Ǽ���ID
      ,a.[DJSJ]--�Ǽ�ʱ��
      ,a.[KCLX]--�γ�����
      ,c.SCHOOLID as c_XQ_SCHOOLID--ѧ�����ݱ� ѧУ��
      ,c.XNID as c_XQ_XNID--ѧ�����ݱ� ѧ��
      ,c.XQM as c_XQ_XQM--ѧ�����ݱ� ѧ����
      ,[cb].MC as c_XQ_XQM_MC--ѧ�ڴ���� ����
      ,c.XQMC as c_XQ_XQMC--ѧ�����ݱ� ѧ������
      ,c.XQKSRQ as c_XQ_XQKSRQ--ѧ�����ݱ� ѧ�ڿ�ʼ����
      ,c.XQJSRQ as c_XQ_XQJSRQ--ѧ�����ݱ� ѧ�ڽ�������
      ,c.BaseProjectInfoID as c_XQ_BaseProjectInfoID--ѧ�����ݱ� ��BaseProjectInfo���
      ,d.SCHOOLID as d_ZZNJ_SCHOOLID--ѧУ�꼶���ݱ� ѧУ��
      ,d.NJMC as d_ZZNJ_NJMC--ѧУ�꼶���ݱ� �꼶����
      ,d.SSNF as d_ZZNJ_SSNF--ѧУ�꼶���ݱ� �������
      ,d.NJZT as d_ZZNJ_NJZT--ѧУ�꼶���ݱ� �꼶״̬
      ,[db].MC as d_ZZNJ_NJZT_MC--�Ƿ��־����� ����
      ,d.PLSX as d_ZZNJ_PLSX--ѧУ�꼶���ݱ� ����˳��
      ,e.SCHOOLID as e_ZYKCK_SCHOOLID--רҵ�γ̿�� ѧУ
      ,e.ZYID as e_ZYKCK_ZYID--רҵ�γ̿�� רҵID
      ,e.FZXXID as e_ZYKCK_FZXXID--רҵ�γ̿�� ������ϢID
      ,e.KCBH as e_ZYKCK_KCBH--רҵ�γ̿�� �γ�����
      ,e.ZXF as e_ZYKCK_ZXF--רҵ�γ̿�� ��ѧ��
      ,e.ZXS as e_ZYKCK_ZXS--רҵ�γ̿�� ��ѧʱ
      ,e.KKDW as e_ZYKCK_KKDW--רҵ�γ̿�� ���ε�λ
      ,e.KSXS as e_ZYKCK_KSXS--רҵ�γ̿�� ������ʽ
      ,e.SKFSM as e_ZYKCK_SKFSM--רҵ�γ̿�� �ڿη�ʽ��
      ,e.JXDG as e_ZYKCK_JXDG--רҵ�γ̿�� ��ѧ���
      ,e.SFSY as e_ZYKCK_SFSY--רҵ�γ̿�� �Ƿ�ʹ��
      ,e.CourseGroupId as e_ZYKCK_CourseGroupId--רҵ�γ̿�� ��CourseGroup�����
      ,e.KCLX as e_ZYKCK_KCLX--רҵ�γ̿�� �γ�����
      ,f.SCHOOLID as f_XSXX_SCHOOLID--ѧ����Ϣ���ݱ� ѧУ��
      ,f.XH as f_XSXX_XH--ѧ����Ϣ���ݱ� ѧ��
      ,f.XM as f_XSXX_XM--ѧ����Ϣ���ݱ� ����
      ,f.YWXM as f_XSXX_YWXM--ѧ����Ϣ���ݱ� Ӣ������
      ,f.XMPY as f_XSXX_XMPY--ѧ����Ϣ���ݱ� ����ƴ��
      ,f.CYM as f_XSXX_CYM--ѧ����Ϣ���ݱ� ������
      ,f.SFZJLXM as f_XSXX_SFZJLXM--ѧ����Ϣ���ݱ� ���֤��������
      ,[fb].MC as f_XSXX_SFZJLXM_MC--���֤�����ʹ���� ����
      ,f.SFZJH as f_XSXX_SFZJH--ѧ����Ϣ���ݱ� ���֤����
      ,f.XBM as f_XSXX_XBM--ѧ����Ϣ���ݱ� �Ա���
      ,[fc].MC as f_XSXX_XBM_MC--�˵��Ա���� ����
      ,f.XXM as f_XSXX_XXM--ѧ����Ϣ���ݱ� Ѫ����
      ,[fd].MC as f_XSXX_XXM_MC--Ѫ�ʹ���� ����
      ,[fd].JC as f_XSXX_XXM_JC--Ѫ�ʹ���� ���
      ,f.CSRQ as f_XSXX_CSRQ--ѧ����Ϣ���ݱ� ��������
      ,f.CSDM as f_XSXX_CSDM--ѧ����Ϣ���ݱ� ��������
      ,[fe].MC as f_XSXX_CSDM_MC--�л����񹲺͹������������� ����
      ,f.JG as f_XSXX_JG--ѧ����Ϣ���ݱ� ����
      ,f.MZM as f_XSXX_MZM--ѧ����Ϣ���ݱ� ������
      ,[ff].MZMC as f_XSXX_MZM_MZMC--�й����������Ƶ�������ĸƴд���ʹ��� ��������
      ,[ff].ZMDM as f_XSXX_MZM_ZMDM--�й����������Ƶ�������ĸƴд���ʹ��� ��ĸ����
      ,f.HYZKM as f_XSXX_HYZKM--ѧ����Ϣ���ݱ� ����״����
      ,[fg].MC as f_XSXX_HYZKM_MC--����״������ ����
      ,f.XYZJM as f_XSXX_XYZJM--ѧ����Ϣ���ݱ� �����ڽ���
      ,[fh].MC as f_XSXX_XYZJM_MC--�ڽ��������� ����
      ,f.GATQWM as f_XSXX_GATQWM--ѧ����Ϣ���ݱ� �۰�̨������
      ,[fi].MC as f_XSXX_GATQWM_MC--�۰�̨�������� ����
      ,[fi].SM as f_XSXX_GATQWM_SM--�۰�̨�������� ˵��
      ,f.JKZKM as f_XSXX_JKZKM--ѧ����Ϣ���ݱ� ����״����
      ,[fj].MC as f_XSXX_JKZKM_MC--����״��1λ���ִ��� ����
      ,[fj].SM as f_XSXX_JKZKM_SM--����״��1λ���ִ��� ˵��
      ,f.ZZMMM as f_XSXX_ZZMMM--ѧ����Ϣ���ݱ� ������ò��
      ,[fk].MC as f_XSXX_ZZMMM_MC--������ò���� ����
      ,[fk].JC as f_XSXX_ZZMMM_JC--������ò���� ���
      ,f.HKSZDXZQHM as f_XSXX_HKSZDXZQHM--ѧ����Ϣ���ݱ� �������ڵ�����������
      ,[fl].MC as f_XSXX_HKSZDXZQHM_MC--�л����񹲺͹������������� ����
      ,f.HKLBM as f_XSXX_HKLBM--ѧ����Ϣ���ݱ� ���������
      ,[fm].MC as f_XSXX_HKLBM_MC--���������� ����
      ,f.SFSLDRK as f_XSXX_SFSLDRK--ѧ����Ϣ���ݱ� �Ƿ��������˿�
      ,[fn].MC as f_XSXX_SFSLDRK_MC--�Ƿ��־����� ����
      ,f.GJDQM as f_XSXX_GJDQM--ѧ����Ϣ���ݱ� ����/����
      ,[fo].GJDQMCJC as f_XSXX_GJDQM_GJDQMCJC--��������͵������ƴ��� ����/�������Ƽ��
      ,[fo].EZMDM as f_XSXX_GJDQM_EZMDM--��������͵������ƴ��� ����ĸ����
      ,[fo].SZMDM as f_XSXX_GJDQM_SZMDM--��������͵������ƴ��� ����ĸ����
      ,f.TC as f_XSXX_TC--ѧ����Ϣ���ݱ� �س�
      ,f.XSLXDH as f_XSXX_XSLXDH--ѧ����Ϣ���ݱ� ѧ����ϵ�绰
      ,f.WLDZ as f_XSXX_WLDZ--ѧ����Ϣ���ݱ� �����ַ
      ,f.JSTXH as f_XSXX_JSTXH--ѧ����Ϣ���ݱ� ��ʱͨѶ��
      ,f.DZXX as f_XSXX_DZXX--ѧ����Ϣ���ݱ� ��������
      ,f.ZP as f_XSXX_ZP--ѧ����Ϣ���ݱ� ��Ƭ(·��)
      ,f.RXXQID as f_XSXX_RXXQID--ѧ����Ϣ���ݱ� ��ѧѧ��ID
      ,f.NFCKH as f_XSXX_NFCKH--ѧ����Ϣ���ݱ� NFC����
      ,g.SCHOOLID as g_KCPFXM_SCHOOLID--�γ�������Ŀ�� ѧУ
      ,g.FXMID as g_KCPFXM_FXMID--�γ�������Ŀ�� ����ĿID
      ,g.XMMC as g_KCPFXM_XMMC--�γ�������Ŀ�� ��Ŀ����
      ,g.SFYZXM as g_KCPFXM_SFYZXM--�γ�������Ŀ�� �Ƿ�������Ŀ
      ,g.BL as g_KCPFXM_BL--�γ�������Ŀ�� ����
      ,g.SFYXXG as g_KCPFXM_SFYXXG--�γ�������Ŀ�� �Ƿ������޸�
      ,g.XGSX as g_KCPFXM_XGSX--�γ�������Ŀ�� �޸�����
      ,g.XGXX as g_KCPFXM_XGXX--�γ�������Ŀ�� �޸�����
      ,g.LY as g_KCPFXM_LY--�γ�������Ŀ�� ��Դ
      ,g.PLSX as g_KCPFXM_PLSX--�γ�������Ŀ�� ����˳��
      ,h.SCHOOLID as h_USER_SCHOOLID--Ӧ��ϵͳ�û��� ѧУID
      ,h.APPID as h_USER_APPID--Ӧ��ϵͳ�û��� Ӧ��ID
      ,'' as h_USER_PWD--Ӧ��ϵͳ�û��� ����
      ,h.STATUS as h_USER_STATUS--Ӧ��ϵͳ�û��� �û�״̬
      ,h.USERTYPE as h_USER_USERTYPE--Ӧ��ϵͳ�û��� �û����
      ,h.USERID as h_USER_USERID--Ӧ��ϵͳ�û��� �û�ID
      ,h.ROLEIDLst as h_USER_ROLEIDLst--Ӧ��ϵͳ�û��� �û���ɫ
      ,h.XM as h_USER_XM--Ӧ��ϵͳ�û��� ����
      ,h.XB as h_USER_XB--Ӧ��ϵͳ�û��� �Ա�
      ,h.QQ as h_USER_QQ--Ӧ��ϵͳ�û��� QQ
      ,h.DZYJ as h_USER_DZYJ--Ӧ��ϵͳ�û��� �����ʼ�
      ,h.LXDH as h_USER_LXDH--Ӧ��ϵͳ�û��� ��ϵ�绰
      ,h.ZJDLSJ as h_USER_ZJDLSJ--Ӧ��ϵͳ�û��� ���һ�ε�¼ʱ��
      ,h.DLCGCS as h_USER_DLCGCS--Ӧ��ϵͳ�û��� ��¼�ɹ�����
      ,h.YHCJSJ as h_USER_YHCJSJ--Ӧ��ϵͳ�û��� �û�����ʱ��
      ,h.YHRY as h_USER_YHRY--Ӧ��ϵͳ�û��� �û�����
      ,h.YHJF as h_USER_YHJF--Ӧ��ϵͳ�û��� �û�����

FROM dbo.EDU_ZZJX_55_A10_CJMX AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS c ON a.XQID = c.ID /*ѧ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_02_01_ZZNJ AS d ON a.NJID = d.NJDM /*�꼶ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_55_A04_ZYKCK AS e ON a.ZYKCKID = e.ID /*רҵ�γ̿�ID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZXS_01_01_XSXX AS f ON a.XSID = f.ID /*ѧ��ID*/ AND a.SCHOOLID = f.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_55_A06_KCPFXM AS g ON a.PFXMID = g.ID /*������ĿID*/ AND a.SCHOOLID = g.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS h ON a.DJRID = h.LOGINNAME /*�Ǽ���ID*/ AND a.SCHOOLID = h.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS [cb] ON c.XQM = [cb].DM /*ѧ����*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [db] ON d.NJZT = [db].DM /*�꼶״̬*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS [fb] ON f.SFZJLXM = [fb].DM /*���֤��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS [fc] ON f.XBM = [fc].DM /*�Ա���*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS [fd] ON f.XXM = [fd].DM /*Ѫ����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [fe] ON f.CSDM = [fe].DM /*��������*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS [ff] ON f.MZM = [ff].DM /*������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS [fg] ON f.HYZKM = [fg].DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS [fh] ON f.XYZJM = [fh].DM /*�����ڽ���*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS [fi] ON f.GATQWM = [fi].DM /*�۰�̨������*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS [fj] ON f.JKZKM = [fj].DM /*����״����*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS [fk] ON f.ZZMMM = [fk].DM /*������ò��*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [fl] ON f.HKSZDXZQHM = [fl].DM /*�������ڵ�����������*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS [fm] ON f.HKLBM = [fm].DM /*���������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [fn] ON f.SFSLDRK = [fn].DM /*�Ƿ��������˿�*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS [fo] ON f.GJDQM = [fo].DM /*����/����*/
GO
