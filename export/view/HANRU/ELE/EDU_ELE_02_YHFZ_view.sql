
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
      ,b.SCHOOLNAME as b_SCHOOL_SCHOOLNAME--ѧУ���ñ� ѧУ����
      ,b.SCHOOLTYPE as b_SCHOOL_SCHOOLTYPE--ѧУ���ñ� ѧУ����
      ,b.XNID as b_SCHOOL_XNID--ѧУ���ñ� ѧ��ID
      ,b.XQID as b_SCHOOL_XQID--ѧУ���ñ� ѧ��ID
      ,b.MatchURL as b_SCHOOL_MatchURL--ѧУ���ñ� ƥ��url
      ,b.MenhuURL as b_SCHOOL_MenhuURL--ѧУ���ñ� �Ż�url
      ,b.MenhuWebid as b_SCHOOL_MenhuWebid--ѧУ���ñ� �Ż�webid
      ,b.LogLevel as b_SCHOOL_LogLevel--ѧУ���ñ� ��־����
      ,b.ModuleIdList as b_SCHOOL_ModuleIdList--ѧУ���ñ� Ȩ���б�
      ,c.SCHOOLID as c_APP_SCHOOLID--Ӧ�ñ� ѧУID
      ,c.NAME as c_APP_NAME--Ӧ�ñ� Ӧ������
      ,c.URL as c_APP_URL--Ӧ�ñ� ��ַ
      ,c.AUTHIP as c_APP_AUTHIP--Ӧ�ñ� ����IP
      ,c.SM as c_APP_SM--Ӧ�ñ� ˵��
      ,c.DLFS as c_APP_DLFS--Ӧ�ñ� ��¼��ʽ
      ,c.STATUS as c_APP_STATUS--Ӧ�ñ� Ӧ��״̬
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
      ,e.SCHOOLID as e_YHFZ_SCHOOLID--�û������ ѧУID
      ,e.APPID as e_YHFZ_APPID--�û������ Ӧ��ID
      ,e.YHID as e_YHFZ_YHID--�û������ �û�ID
      ,e.SJFZID as e_YHFZ_SJFZID--�û������ �ϼ�����ID
      ,e.FZMC as e_YHFZ_FZMC--�û������ ��������
      ,e.FZYHID as e_YHFZ_FZYHID--�û������ �����û�ID�б�

FROM dbo.EDU_ELE_02_YHFZ AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_APP AS c ON a.APPID = c.ID /*Ӧ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.YHID = d.LOGINNAME /*�û�ID*/ AND a.SCHOOLID = d.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_02_YHFZ AS e ON a.SJFZID = e.ID /*�ϼ�����ID*/ AND a.SCHOOLID = e.SCHOOLID /*ѧУID*/ AND a.APPID = e.APPID /*Ӧ��ID*/
GO
