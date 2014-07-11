
--������Ӧ���û���
CREATE VIEW [dbo].[VIEW_EDU_ELE_01_APPUSER_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[YHID]--�û�ID
      ,a.[APPID]--Ӧ��ID
      ,a.[YHMC]--�û�����
      ,a.[YHZT]--�û�״̬
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
      ,d.SCHOOLID as d_APP_SCHOOLID--Ӧ�ñ� ѧУID
      ,d.NAME as d_APP_NAME--Ӧ�ñ� Ӧ������
      ,d.URL as d_APP_URL--Ӧ�ñ� ��ַ
      ,d.AUTHIP as d_APP_AUTHIP--Ӧ�ñ� ����IP
      ,d.SM as d_APP_SM--Ӧ�ñ� ˵��
      ,d.DLFS as d_APP_DLFS--Ӧ�ñ� ��¼��ʽ
      ,d.STATUS as d_APP_STATUS--Ӧ�ñ� Ӧ��״̬
      ,d.TYPE as d_APP_TYPE--Ӧ�ñ� Ӧ�����
      ,d.DLCSLB as d_APP_DLCSLB--Ӧ�ñ� ��¼�����б�
      ,d.MNDLJS as d_APP_MNDLJS--Ӧ�ñ� ģ���¼JS
      ,d.SYDX as d_APP_SYDX--Ӧ�ñ� ʹ�ö���
      ,d.KJDX as d_APP_KJDX--Ӧ�ñ� �ɼ�����

FROM dbo.EDU_ELE_01_APPUSER AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS c ON a.YHID = c.LOGINNAME /*�û�ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_APP AS d ON a.APPID = d.ID /*Ӧ��ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУ*/
GO