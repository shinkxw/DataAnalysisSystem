
--Ӧ����־��
CREATE VIEW [dbo].[VIEW_EDU_ELE_03_APPRZ_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ��
      ,a.[APPID]--Ӧ��ID
      ,a.[RZLX]--��־����
      ,a.[YHID]--�����û�
      ,a.[CZSJ]--����ʱ��
      ,a.[CZYY]--����Ӧ��
      ,a.[CZLX]--��������
      ,a.[CZJTXX]--����������Ϣ
      ,b.SCHOOLNAME as b_SCHOOL_SCHOOLNAME--ѧУ����
      ,b.SCHOOLTYPE as b_SCHOOL_SCHOOLTYPE--ѧУ����
      ,b.XNID as b_SCHOOL_XNID--ѧ��ID
      ,b.XQID as b_SCHOOL_XQID--ѧ��ID
      ,b.MatchURL as b_SCHOOL_MatchURL--ƥ��url
      ,b.LogLevel as b_SCHOOL_LogLevel--��־����
      ,c.SCHOOLID as c_USER_SCHOOLID--ѧУID
      ,c.APPID as c_USER_APPID--Ӧ��ID
      ,c.PWD as c_USER_PWD--����
      ,c.STATUS as c_USER_STATUS--�û�״̬
      ,c.USERTYPE as c_USER_USERTYPE--�û����
      ,c.USERID as c_USER_USERID--�û�ID
      ,c.ROLEIDLst as c_USER_ROLEIDLst--�û���ɫ
      ,c.XM as c_USER_XM--����
      ,c.XB as c_USER_XB--�Ա�
      ,c.QQ as c_USER_QQ--QQ
      ,c.DZYJ as c_USER_DZYJ--�����ʼ�
      ,c.LXDH as c_USER_LXDH--��ϵ�绰
      ,c.ZJDLSJ as c_USER_ZJDLSJ--���һ�ε�¼ʱ��
      ,c.DLCGCS as c_USER_DLCGCS--��¼�ɹ�����
      ,c.YHCJSJ as c_USER_YHCJSJ--�û�����ʱ��

FROM dbo.EDU_ELE_03_APPRZ AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*ѧУ��*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS c ON a.YHID = c.LOGINNAME /*�����û�*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ��*/
GO
