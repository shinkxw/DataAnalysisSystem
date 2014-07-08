
--�û�ʹ�ü�¼��
CREATE VIEW [dbo].[VIEW_EDU_ELE_03_YHSYJL_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[APPID]--Ӧ��ID
      ,a.[MODULEID]--����ID
      ,a.[YHID]--�û�ID
      ,a.[GNMC]--��������
      ,a.[LJ]--����
      ,a.[SYSJ]--ʹ��ʱ��
      ,a.[XHHMS]--���ĺ�����
      ,c.SCHOOLID as c_APP_SCHOOLID--Ӧ�ñ� ѧУID
      ,c.NAME as c_APP_NAME--Ӧ�ñ� Ӧ������
      ,c.URL as c_APP_URL--Ӧ�ñ� ��ַ
      ,c.AUTHIP as c_APP_AUTHIP--Ӧ�ñ� ����IP
      ,c.SM as c_APP_SM--Ӧ�ñ� ˵��
      ,c.DLFS as c_APP_DLFS--Ӧ�ñ� ��¼��ʽ
      ,c.STATUS as c_APP_STATUS--Ӧ�ñ� Ӧ��״̬
      ,c.TYPE as c_APP_TYPE--Ӧ�ñ� Ӧ�����
      ,c.DLCSLB as c_APP_DLCSLB--Ӧ�ñ� ��¼�����б�
      ,c.MNDLJS as c_APP_MNDLJS--Ӧ�ñ� ģ���¼JS
      ,c.SYDX as c_APP_SYDX--Ӧ�ñ� ʹ�ö���
      ,c.KJDX as c_APP_KJDX--Ӧ�ñ� �ɼ�����
      ,d.APPID as d_MODULE_APPID--������ 
      ,d.NAME as d_MODULE_NAME--������ 
      ,d.Depth as d_MODULE_Depth--������ 
      ,d.PID as d_MODULE_PID--������ 
      ,d.MenuDisp as d_MODULE_MenuDisp--������ 
      ,d.MenuUserType as d_MODULE_MenuUserType--������ 
      ,d.Link as d_MODULE_Link--������ 
      ,d.OrderIndex as d_MODULE_OrderIndex--������ 
      ,e.SCHOOLID as e_USER_SCHOOLID--Ӧ��ϵͳ�û��� ѧУID
      ,e.APPID as e_USER_APPID--Ӧ��ϵͳ�û��� Ӧ��ID
      ,e.PWD as e_USER_PWD--Ӧ��ϵͳ�û��� ����
      ,e.STATUS as e_USER_STATUS--Ӧ��ϵͳ�û��� �û�״̬
      ,e.USERTYPE as e_USER_USERTYPE--Ӧ��ϵͳ�û��� �û����
      ,e.USERID as e_USER_USERID--Ӧ��ϵͳ�û��� �û�ID
      ,e.ROLEIDLst as e_USER_ROLEIDLst--Ӧ��ϵͳ�û��� �û���ɫ
      ,e.XM as e_USER_XM--Ӧ��ϵͳ�û��� ����
      ,e.XB as e_USER_XB--Ӧ��ϵͳ�û��� �Ա�
      ,e.QQ as e_USER_QQ--Ӧ��ϵͳ�û��� QQ
      ,e.DZYJ as e_USER_DZYJ--Ӧ��ϵͳ�û��� �����ʼ�
      ,e.LXDH as e_USER_LXDH--Ӧ��ϵͳ�û��� ��ϵ�绰
      ,e.ZJDLSJ as e_USER_ZJDLSJ--Ӧ��ϵͳ�û��� ���һ�ε�¼ʱ��
      ,e.DLCGCS as e_USER_DLCGCS--Ӧ��ϵͳ�û��� ��¼�ɹ�����
      ,e.YHCJSJ as e_USER_YHCJSJ--Ӧ��ϵͳ�û��� �û�����ʱ��
      ,e.YHRY as e_USER_YHRY--Ӧ��ϵͳ�û��� �û�����
      ,e.YHJF as e_USER_YHJF--Ӧ��ϵͳ�û��� �û�����

FROM dbo.EDU_ELE_03_YHSYJL AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_APP AS c ON a.APPID = c.ID /*Ӧ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_SYS_01_MODULE AS d ON a.MODULEID = d.ID /*����ID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS e ON a.YHID = e.LOGINNAME /*�û�ID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУ*/
GO
