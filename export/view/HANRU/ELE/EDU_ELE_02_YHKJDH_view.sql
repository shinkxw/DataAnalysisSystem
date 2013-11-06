
--�û���ݵ�����
CREATE VIEW [dbo].[VIEW_EDU_ELE_02_YHKJDH_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУID
      ,a.[MODULEID]--MODULE��ID
      ,a.[LoginName]--�û���
      ,a.[OrderID]--���
      ,c.APPID as c_MODULE_APPID--������ 
      ,c.NAME as c_MODULE_NAME--������ 
      ,c.Depth as c_MODULE_Depth--������ 
      ,c.PID as c_MODULE_PID--������ 
      ,c.MenuDisp as c_MODULE_MenuDisp--������ 
      ,c.MenuUserType as c_MODULE_MenuUserType--������ 
      ,c.Link as c_MODULE_Link--������ 
      ,c.OrderIndex as c_MODULE_OrderIndex--������ 
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

FROM dbo.EDU_ELE_02_YHKJDH AS a LEFT OUTER JOIN
      dbo.EDU_SYS_01_MODULE AS c ON a.MODULEID = c.ID /*MODULE��ID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.LoginName = d.LOGINNAME /*�û���*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУID*/
GO
