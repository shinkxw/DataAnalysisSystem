
--֪ͨ���ݱ�
CREATE VIEW [dbo].[VIEW_EDU_OAXT_10_A01_TZ_DISP]
AS
SELECT a.[ID]--֪ͨID
      ,a.[SCHOOLID]--ѧУID
      ,a.[FSRID]--������ID
      ,a.[FSRLB]--���������
      ,a.[BT]--����
      ,a.[NR]--����
      ,a.[FJ]--����
      ,a.[TJRQ]--�������
      ,a.[JSRS]--��������
      ,a.[JSRIDLB]--������ID�б�
      ,a.[JSRMZLB]--�����������б�
      ,a.[YYDRIDLB]--���Ķ���ID�б�
      ,a.[YYDRMZLB]--���Ķ��������б�
      ,a.[FSZT]--����״̬
      ,b.SCHOOLNAME as b_SCHOOL_SCHOOLNAME--ѧУ���ñ� ѧУ����
      ,b.SCHOOLTYPE as b_SCHOOL_SCHOOLTYPE--ѧУ���ñ� ѧУ����
      ,b.XNID as b_SCHOOL_XNID--ѧУ���ñ� ѧ��ID
      ,b.XQID as b_SCHOOL_XQID--ѧУ���ñ� ѧ��ID
      ,b.MatchURL as b_SCHOOL_MatchURL--ѧУ���ñ� ƥ��url
      ,b.LogLevel as b_SCHOOL_LogLevel--ѧУ���ñ� ��־����
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

FROM dbo.EDU_OAXT_10_A01_TZ AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS c ON a.FSRID = c.LOGINNAME /*������ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУID*/
GO
