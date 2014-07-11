
--�ظ���¼��
CREATE VIEW [dbo].[VIEW_EDU_OAXT_35_A03_HFJL_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУID
      ,a.[RWID]--����ID
      ,a.[HFRID]--�ظ���ID
      ,a.[HFNR]--�ظ�����
      ,a.[HSSJ]--�ظ�ʱ��
      ,c.SCHOOLID as c_RW_SCHOOLID--����� ѧУID
      ,c.RWBT as c_RW_RWBT--����� �������
      ,c.JSYHIDLB as c_RW_JSYHIDLB--����� �����û�ID�б�
      ,c.JSYHXMLB as c_RW_JSYHXMLB--����� �����û������б�
      ,c.JZRQ as c_RW_JZRQ--����� ��ֹ����
      ,c.NR as c_RW_NR--����� ����
      ,c.FBRID as c_RW_FBRID--����� ������ID
      ,c.FBRXM as c_RW_FBRXM--����� ����������
      ,c.FBBMMC as c_RW_FBBMMC--����� ������������
      ,c.FBSJ as c_RW_FBSJ--����� ����ʱ��
      ,c.RWZT as c_RW_RWZT--����� ����״̬
      ,d.SCHOOLID as d_USER_SCHOOLID--Ӧ��ϵͳ�û��� ѧУID
      ,d.APPID as d_USER_APPID--Ӧ��ϵͳ�û��� Ӧ��ID
      ,d.PWD as d_USER_PWD--Ӧ��ϵͳ�û��� ����
      ,d.STATUS as d_USER_STATUS--Ӧ��ϵͳ�û��� �û�״̬
      ,d.USERTYPE as d_USER_USERTYPE--Ӧ��ϵͳ�û��� �û����
      ,d.USERID as d_USER_USERID--Ӧ��ϵͳ�û��� �û�ID
      ,d.ROLEIDLst as d_USER_ROLEIDLst--Ӧ��ϵͳ�û��� �û���ɫ
      ,d.XM as d_USER_XM--Ӧ��ϵͳ�û��� ����
      ,d.XB as d_USER_XB--Ӧ��ϵͳ�û��� �Ա�
      ,d.QQ as d_USER_QQ--Ӧ��ϵͳ�û��� QQ
      ,d.DZYJ as d_USER_DZYJ--Ӧ��ϵͳ�û��� �����ʼ�
      ,d.LXDH as d_USER_LXDH--Ӧ��ϵͳ�û��� ��ϵ�绰
      ,d.ZJDLSJ as d_USER_ZJDLSJ--Ӧ��ϵͳ�û��� ���һ�ε�¼ʱ��
      ,d.DLCGCS as d_USER_DLCGCS--Ӧ��ϵͳ�û��� ��¼�ɹ�����
      ,d.YHCJSJ as d_USER_YHCJSJ--Ӧ��ϵͳ�û��� �û�����ʱ��
      ,d.YHRY as d_USER_YHRY--Ӧ��ϵͳ�û��� �û�����
      ,d.YHJF as d_USER_YHJF--Ӧ��ϵͳ�û��� �û�����
      ,d.BMID as d_USER_BMID--Ӧ��ϵͳ�û��� ����ID

FROM dbo.EDU_OAXT_35_A03_HFJL AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_35_A01_RW AS c ON a.RWID = c.ID /*����ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.HFRID = d.LOGINNAME /*�ظ���ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУID*/
GO
