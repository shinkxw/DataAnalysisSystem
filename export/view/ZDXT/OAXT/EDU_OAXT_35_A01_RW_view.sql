
--�����
CREATE VIEW [dbo].[VIEW_EDU_OAXT_35_A01_RW_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУID
      ,a.[RWBT]--�������
      ,a.[JSYHIDLB]--�����û�ID�б�
      ,a.[JSYHXMLB]--�����û������б�
      ,a.[JZRQ]--��ֹ����
      ,a.[NR]--����
      ,a.[FBRID]--������ID
      ,a.[FBRXM]--����������
      ,a.[FBBMMC]--������������
      ,a.[FBSJ]--����ʱ��
      ,a.[RWZT]--����״̬
      ,c.SCHOOLID as c_USER_SCHOOLID--Ӧ��ϵͳ�û��� ѧУID
      ,c.APPID as c_USER_APPID--Ӧ��ϵͳ�û��� Ӧ��ID
      ,c.PWD as c_USER_PWD--Ӧ��ϵͳ�û��� ����
      ,c.STATUS as c_USER_STATUS--Ӧ��ϵͳ�û��� �û�״̬
      ,c.USERTYPE as c_USER_USERTYPE--Ӧ��ϵͳ�û��� �û����
      ,c.USERID as c_USER_USERID--Ӧ��ϵͳ�û��� �û�ID
      ,c.ROLEIDLst as c_USER_ROLEIDLst--Ӧ��ϵͳ�û��� �û���ɫ
      ,c.XM as c_USER_XM--Ӧ��ϵͳ�û��� ����
      ,c.XB as c_USER_XB--Ӧ��ϵͳ�û��� �Ա�
      ,c.QQ as c_USER_QQ--Ӧ��ϵͳ�û��� QQ
      ,c.DZYJ as c_USER_DZYJ--Ӧ��ϵͳ�û��� �����ʼ�
      ,c.LXDH as c_USER_LXDH--Ӧ��ϵͳ�û��� ��ϵ�绰
      ,c.ZJDLSJ as c_USER_ZJDLSJ--Ӧ��ϵͳ�û��� ���һ�ε�¼ʱ��
      ,c.DLCGCS as c_USER_DLCGCS--Ӧ��ϵͳ�û��� ��¼�ɹ�����
      ,c.YHCJSJ as c_USER_YHCJSJ--Ӧ��ϵͳ�û��� �û�����ʱ��
      ,c.YHRY as c_USER_YHRY--Ӧ��ϵͳ�û��� �û�����
      ,c.YHJF as c_USER_YHJF--Ӧ��ϵͳ�û��� �û�����
      ,c.BMID as c_USER_BMID--Ӧ��ϵͳ�û��� ����ID

FROM dbo.EDU_OAXT_35_A01_RW AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS c ON a.FBRID = c.LOGINNAME /*������ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/
GO
