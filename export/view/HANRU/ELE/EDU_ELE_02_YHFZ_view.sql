
--�û������
CREATE VIEW [dbo].[VIEW_EDU_ELE_02_YHFZ_DISP]
AS
SELECT a.[ID]--����ID
      ,a.[SCHOOLID]--ѧУID
      ,a.[APPID]--Ӧ��ID
      ,a.[YHID]--�û�ID
      ,a.[SJFZID]--�ϼ�����ID
      ,a.[FZMC]--��������
      ,a.[FZYHID]--�����û�ID�б�
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
      ,d.SCHOOLID as d_USER_SCHOOLID--ѧУID
      ,d.APPID as d_USER_APPID--Ӧ��ID
      ,d.PWD as d_USER_PWD--����
      ,d.STATUS as d_USER_STATUS--�û�״̬
      ,d.USERTYPE as d_USER_USERTYPE--�û����
      ,d.USERID as d_USER_USERID--�û�ID
      ,d.ROLEIDLst as d_USER_ROLEIDLst--�û���ɫ
      ,d.XM as d_USER_XM--����
      ,d.XB as d_USER_XB--�Ա�
      ,d.QQ as d_USER_QQ--QQ
      ,d.DZYJ as d_USER_DZYJ--�����ʼ�
      ,d.LXDH as d_USER_LXDH--��ϵ�绰
      ,d.ZJDLSJ as d_USER_ZJDLSJ--���һ�ε�¼ʱ��
      ,d.DLCGCS as d_USER_DLCGCS--��¼�ɹ�����
      ,d.YHCJSJ as d_USER_YHCJSJ--�û�����ʱ��
      ,e.SCHOOLID as e_YHFZ_SCHOOLID--ѧУID
      ,e.APPID as e_YHFZ_APPID--Ӧ��ID
      ,e.YHID as e_YHFZ_YHID--�û�ID
      ,e.SJFZID as e_YHFZ_SJFZID--�ϼ�����ID
      ,e.FZMC as e_YHFZ_FZMC--��������
      ,e.FZYHID as e_YHFZ_FZYHID--�����û�ID�б�

FROM dbo.EDU_ELE_02_YHFZ AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_APP AS c ON a.APPID = c.ID /*Ӧ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.YHID = d.LOGINNAME /*�û�ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_02_YHFZ AS e ON a.SJFZID = e.ID /*�ϼ�����ID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУID*/ AND a.APPID = e.APPID /*Ӧ��ID*/
GO
