
--Ӧ�ñ�
CREATE VIEW [dbo].[VIEW_EDU_ELE_01_APP_DISP]
AS
SELECT a.[ID]--Ӧ��ID
      ,a.[SCHOOLID]--ѧУID
      ,a.[NAME]--Ӧ������
      ,a.[URL]--��ַ
      ,a.[AUTHIP]--����IP
      ,a.[SM]--˵��
      ,a.[DLFS]--��¼��ʽ
      ,a.[STATUS]--Ӧ��״̬
      ,b.SCHOOLNAME as b_SCHOOL_SCHOOLNAME--ѧУ���ñ� ѧУ����
      ,b.SCHOOLTYPE as b_SCHOOL_SCHOOLTYPE--ѧУ���ñ� ѧУ����
      ,b.XNID as b_SCHOOL_XNID--ѧУ���ñ� ѧ��ID
      ,b.XQID as b_SCHOOL_XQID--ѧУ���ñ� ѧ��ID
      ,b.MatchURL as b_SCHOOL_MatchURL--ѧУ���ñ� ƥ��url
      ,b.LogLevel as b_SCHOOL_LogLevel--ѧУ���ñ� ��־����

FROM dbo.EDU_ELE_01_APP AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*ѧУID*/
GO
