
--סί���Ա��
CREATE VIEW [dbo].[VIEW_EDU_ZZFC_08_A03_ZWHCY_DISP]
AS
SELECT a.[SCHOOLID]--ѧУID
      ,a.[ID]--��ԱID
      ,a.[YHID]--�û�ID
      ,a.[YHLX]--�û�����
      ,a.[CYXM]--��Ա����
      ,a.[TJSJ]--���ʱ��
      ,a.[ZWMC]--ְλ����
      ,a.[GZNR]--��������
      ,b.SCHOOLNAME as b_SCHOOL_SCHOOLNAME--ѧУ����
      ,b.SCHOOLTYPE as b_SCHOOL_SCHOOLTYPE--ѧУ����
      ,b.XNID as b_SCHOOL_XNID--ѧ��ID
      ,b.XQID as b_SCHOOL_XQID--ѧ��ID
      ,b.MatchURL as b_SCHOOL_MatchURL--ƥ��url
      ,b.LogLevel as b_SCHOOL_LogLevel--��־����

FROM dbo.EDU_ZZFC_08_A03_ZWHCY AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*ѧУID*/
GO
