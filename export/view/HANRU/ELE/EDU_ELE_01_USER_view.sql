
--Ӧ��ϵͳ�û���
CREATE VIEW [dbo].[VIEW_EDU_ELE_01_USER_DISP]
AS
SELECT a.[LOGINNAME]--�û���
      ,a.[SCHOOLID]--ѧУID
      ,a.[APPID]--Ӧ��ID
      ,a.[PWD]--����
      ,a.[STATUS]--�û�״̬
      ,a.[USERTYPE]--�û����
      ,a.[USERID]--�û�ID
      ,a.[ROLEIDLst]--�û���ɫ
      ,a.[XM]--����
      ,a.[XB]--�Ա�
      ,a.[QQ]--QQ
      ,a.[DZYJ]--�����ʼ�
      ,a.[LXDH]--��ϵ�绰
      ,a.[ZJDLSJ]--���һ�ε�¼ʱ��
      ,a.[DLCGCS]--��¼�ɹ�����
      ,a.[YHCJSJ]--�û�����ʱ��
      ,b.SCHOOLNAME as b_SCHOOL_SCHOOLNAME--ѧУ����
      ,b.SCHOOLTYPE as b_SCHOOL_SCHOOLTYPE--ѧУ����
      ,b.XNID as b_SCHOOL_XNID--ѧ��ID
      ,b.XQID as b_SCHOOL_XQID--ѧ��ID
      ,b.MatchURL as b_SCHOOL_MatchURL--ƥ��url
      ,b.LogLevel as b_SCHOOL_LogLevel--��־����
      ,c.SCHOOLID as c_APP_SCHOOLID--ѧУID
      ,c.NAME as c_APP_NAME--Ӧ������
      ,c.URL as c_APP_URL--��ַ
      ,c.AUTHIP as c_APP_AUTHIP--����IP
      ,c.SM as c_APP_SM--˵��
      ,c.DLFS as c_APP_DLFS--��¼��ʽ
      ,c.STATUS as c_APP_STATUS--Ӧ��״̬

FROM dbo.EDU_ELE_01_USER AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_APP AS c ON a.APPID = c.ID /*Ӧ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/
GO