
--ֵ�ܴ�ֵ���
CREATE VIEW [dbo].[VIEW_EDU_ZXDY_05_A03_ZZDFD_DISP]
AS
SELECT a.[ID]--ֵ�ܴ�ֵ���ID
      ,a.[SCHOOLID]--ѧУID
      ,a.[XQID]--ѧ��ID
      ,a.[ZCID]--�ܴ�ID
      ,a.[BJ]--�༶
      ,a.[XSIDLB]--ѧ��ID�б�
      ,a.[XSMCLB]--ѧ�������б�
      ,a.[SSXZID]--����ϸ��
      ,a.[DFFZ]--��ַ�ֵ
      ,a.[FSSJ]--����ʱ��
      ,a.[DFSJ]--���ʱ��
      ,a.[DFJSID]--��ֽ�ʦID
      ,a.[BZ]--��ע
      ,c.SCHOOLID as c_XQ_SCHOOLID--ѧ�����ݱ� ѧУ��
      ,c.XNID as c_XQ_XNID--ѧ�����ݱ� ѧ��
      ,c.XQM as c_XQ_XQM--ѧ�����ݱ� ѧ����
      ,[cb].MC as c_XQ_XQM_MC--ѧ�ڴ���� ����
      ,c.XQMC as c_XQ_XQMC--ѧ�����ݱ� ѧ������
      ,c.XQKSRQ as c_XQ_XQKSRQ--ѧ�����ݱ� ѧ�ڿ�ʼ����
      ,c.XQJSRQ as c_XQ_XQJSRQ--ѧ�����ݱ� ѧ�ڽ�������
      ,d.SCHOOLID as d_ZZZC_SCHOOLID--ֵ���ܴα� ѧУID
      ,d.XQID as d_ZZZC_XQID--ֵ���ܴα� ѧ��ID
      ,d.ZCM as d_ZZZC_ZCM--ֵ���ܴα� �ܴ���
      ,d.XQKSRQ as d_ZZZC_XQKSRQ--ֵ���ܴα� ��ʼ����
      ,d.XQJSRQ as d_ZZZC_XQJSRQ--ֵ���ܴα� ��������
      ,e.SCHOOLID as e_BJ_SCHOOLID--�༶������� ѧУ��
      ,e.NJ as e_BJ_NJ--�༶������� �꼶��
      ,e.BJ as e_BJ_BJ--�༶������� �༶����
      ,e.JBNY as e_BJ_JBNY--�༶������� ��������
      ,e.BZRGH as e_BJ_BZRGH--�༶������� �����ι���
      ,e.BZXH as e_BJ_BZXH--�༶������� �೤ѧ��
      ,e.BJRYCH as e_BJ_BJRYCH--�༶������� �༶�����ƺ�
      ,e.XZ as e_BJ_XZ--�༶������� ѧ��
      ,e.BJLXM as e_BJ_BJLXM--�༶������� �༶������
      ,[eb].MC as e_BJ_BJLXM_MC--��Сѧ�༶���ʹ���� ����
      ,e.WLLX as e_BJ_WLLX--�༶������� ��������
      ,e.BYRQ as e_BJ_BYRQ--�༶������� ��ҵ����
      ,e.SFSSMZSYJXB as e_BJ_SFSSMZSYJXB--�༶������� �Ƿ���������˫���ѧ��
      ,[ec].MC as e_BJ_SFSSMZSYJXB_MC--�Ƿ��־����� ����
      ,e.SYJXMSM as e_BJ_SYJXMSM--�༶������� ˫���ѧģʽ��
      ,[ed].MC as e_BJ_SYJXMSM_MC--��������˫���ѧģʽ����� ����
      ,[ed].SM as e_BJ_SYJXMSM_SM--��������˫���ѧģʽ����� ˵��
      ,e.BZRID as e_BJ_BZRID--�༶������� ������ID
      ,e.ZT as e_BJ_ZT--�༶������� ״̬
      ,f.SCHOOLID as f_ZZDFXZ_SCHOOLID--ֵ�ܴ��ϸ��� ѧУID
      ,f.SSDLID as f_ZZDFXZ_SSDLID--ֵ�ܴ��ϸ��� ��������ID
      ,f.XZNR as f_ZZDFXZ_XZNR--ֵ�ܴ��ϸ��� ϸ������
      ,f.XZFZ as f_ZZDFXZ_XZFZ--ֵ�ܴ��ϸ��� ϸ���ֵ
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

FROM dbo.EDU_ZXDY_05_A03_ZZDFD AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS c ON a.XQID = c.ID /*ѧ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZXDY_04_A06_ZZZC AS d ON a.ZCID = d.ID /*�ܴ�ID*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_03_01_BJ AS e ON a.BJ = e.BH /*�༶*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZXDY_05_A02_ZZDFXZ AS f ON a.SSXZID = f.ID /*����ϸ��*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS g ON a.DFJSID = g.LOGINNAME /*��ֽ�ʦID*/ AND a.SCHOOLID = g.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS [cb] ON c.XQM = [cb].DM /*ѧ����*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXBJLX AS [eb] ON e.BJLXM = [eb].DM /*�༶������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [ec] ON e.SFSSMZSYJXB = [ec].DM /*�Ƿ���������˫���ѧ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SSMZSYJXMS AS [ed] ON e.SYJXMSM = [ed].DM /*˫���ѧģʽ��*/
GO
