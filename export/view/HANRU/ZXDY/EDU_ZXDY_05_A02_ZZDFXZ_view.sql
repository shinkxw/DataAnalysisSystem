
--ֵ�ܴ��ϸ���
CREATE VIEW [dbo].[VIEW_EDU_ZXDY_05_A02_ZZDFXZ_DISP]
AS
SELECT a.[ID]--ֵ�ܴ��ϸ���ID
      ,a.[SCHOOLID]--ѧУID
      ,a.[SSDLID]--��������ID
      ,a.[XZNR]--ϸ������
      ,a.[XZFZ]--ϸ���ֵ
      ,c.SCHOOLID as c_ZZDFDL_SCHOOLID--ֵ�ܴ�ִ���� ѧУID
      ,c.XQID as c_ZZDFDL_XQID--ֵ�ܴ�ִ���� ѧ��ID
      ,c.DLMC as c_ZZDFDL_DLMC--ֵ�ܴ�ִ���� ��������

FROM dbo.EDU_ZXDY_05_A02_ZZDFXZ AS a LEFT OUTER JOIN
      dbo.EDU_ZXDY_05_A01_ZZDFDL AS c ON a.SSDLID = c.ID /*��������ID*/
GO
