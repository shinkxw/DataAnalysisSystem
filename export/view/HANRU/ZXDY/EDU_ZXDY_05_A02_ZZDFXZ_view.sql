
--ֵ�ܴ��ϸ���
CREATE VIEW [dbo].[VIEW_EDU_ZXDY_05_A02_ZZDFXZ_DISP]
AS
SELECT a.[ID]--ֵ�ܴ��ϸ���ID
      ,a.[SCHOOLID]--ѧУID
      ,a.[SSDLID]--��������ID
      ,a.[XZNR]--ϸ������
      ,a.[XZFZ]--ϸ���ֵ
      ,b.SCHOOLNAME as b_SCHOOL_SCHOOLNAME--ѧУ���ñ� ѧУ����
      ,b.SCHOOLTYPE as b_SCHOOL_SCHOOLTYPE--ѧУ���ñ� ѧУ����
      ,b.XNID as b_SCHOOL_XNID--ѧУ���ñ� ѧ��ID
      ,b.XQID as b_SCHOOL_XQID--ѧУ���ñ� ѧ��ID
      ,b.MatchURL as b_SCHOOL_MatchURL--ѧУ���ñ� ƥ��url
      ,b.LogLevel as b_SCHOOL_LogLevel--ѧУ���ñ� ��־����
      ,c.SCHOOLID as c_ZZDFDL_SCHOOLID--ֵ�ܴ�ִ���� ѧУID
      ,c.XQID as c_ZZDFDL_XQID--ֵ�ܴ�ִ���� ѧ��ID
      ,c.DLMC as c_ZZDFDL_DLMC--ֵ�ܴ�ִ���� ��������

FROM dbo.EDU_ZXDY_05_A02_ZZDFXZ AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*ѧУID*/ LEFT OUTER JOIN
      dbo.EDU_ZXDY_05_A01_ZZDFDL AS c ON a.SSDLID = c.ID /*��������ID*/
GO
