
--�༶���˳ɼ���
CREATE VIEW [dbo].[VIEW_EDU_ZXXS_51_A03_BJKHCJ_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[SSDLID]--��������ID
      ,a.[SSDLXMID]--����������ĿID
      ,a.[NJID]--�꼶ID
      ,a.[BJID]--�༶ID
      ,a.[KHSJ]--����ʱ��
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
      ,e.SCHOOLID as e_NJ_SCHOOLID--�꼶������� ѧУ��
      ,e.NJMC as e_NJ_NJMC--�꼶������� �꼶����
      ,e.ZT as e_NJ_ZT--�꼶������� ״̬
      ,f.SCHOOLID as f_BJ_SCHOOLID--�༶������� ѧУ��
      ,f.NJ as f_BJ_NJ--�༶������� �꼶��
      ,f.BJ as f_BJ_BJ--�༶������� �༶����
      ,f.JBNY as f_BJ_JBNY--�༶������� ��������
      ,f.BZRGH as f_BJ_BZRGH--�༶������� �����ι���
      ,f.BZXH as f_BJ_BZXH--�༶������� �೤ѧ��
      ,f.BJRYCH as f_BJ_BJRYCH--�༶������� �༶�����ƺ�
      ,f.XZ as f_BJ_XZ--�༶������� ѧ��
      ,f.BJLXM as f_BJ_BJLXM--�༶������� �༶������
      ,[fb].MC as f_BJ_BJLXM_MC--��Сѧ�༶���ʹ���� ����
      ,f.WLLX as f_BJ_WLLX--�༶������� ��������
      ,f.BYRQ as f_BJ_BYRQ--�༶������� ��ҵ����
      ,f.SFSSMZSYJXB as f_BJ_SFSSMZSYJXB--�༶������� �Ƿ���������˫���ѧ��
      ,[fc].MC as f_BJ_SFSSMZSYJXB_MC--�Ƿ��־����� ����
      ,f.SYJXMSM as f_BJ_SYJXMSM--�༶������� ˫���ѧģʽ��
      ,[fd].MC as f_BJ_SYJXMSM_MC--��������˫���ѧģʽ����� ����
      ,[fd].SM as f_BJ_SYJXMSM_SM--��������˫���ѧģʽ����� ˵��
      ,f.BZRID as f_BJ_BZRID--�༶������� ������ID
      ,f.ZT as f_BJ_ZT--�༶������� ״̬
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

FROM dbo.EDU_ZXXS_51_A03_BJKHCJ AS a LEFT OUTER JOIN
      dbo.EDU_ZXXS_51_A01_KHDL AS c ON a.SSDLID = c.ID /*��������ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZXXS_51_A02_KHDLXM AS d ON a.SSDLXMID = d.ID /*����������ĿID*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_02_01_NJ AS e ON a.NJID = e.NJ /*�꼶ID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_03_01_BJ AS f ON a.BJID = f.BH /*�༶ID*/ AND a.SCHOOLID = f.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS g ON a.DJRID = g.LOGINNAME /*�Ǽ���ID*/ AND a.SCHOOLID = g.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXBJLX AS [fb] ON f.BJLXM = [fb].DM /*�༶������*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [fc] ON f.SFSSMZSYJXB = [fc].DM /*�Ƿ���������˫���ѧ��*/ LEFT OUTER JOIN
      dbo.EDU_JY_SSMZSYJXMS AS [fd] ON f.SYJXMSM = [fd].DM /*˫���ѧģʽ��*/
GO
