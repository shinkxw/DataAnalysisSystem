
--ģ��������ݱ�
CREATE VIEW [dbo].[VIEW_EDU_ZXDY_04_A07_MBFPNR_DISP]
AS
SELECT a.[ID]--ģ�����ݱ�ID
      ,a.[MBID]--ģ���ID
      ,a.[GZR]--������
      ,a.[GWID]--��λID
      ,a.[DYRYH]--��Ӧ��Ա��
      ,b.SCHOOLID as b_GWFPMB_SCHOOLID--ѧУID
      ,b.MBMC as b_GWFPMB_MBMC--ģ������
      ,c.SCHOOLID as c_ZZGW_SCHOOLID--ѧУID
      ,c.XQID as c_ZZGW_XQID--ѧ��ID
      ,c.GWGZNR as c_ZZGW_GWGZNR--��λ��������

FROM dbo.EDU_ZXDY_04_A07_MBFPNR AS a LEFT OUTER JOIN
      dbo.EDU_ZXDY_04_A04_GWFPMB AS b ON a.MBID = b.ID /*ģ���ID*/ LEFT OUTER JOIN
      dbo.EDU_ZXDY_04_A01_ZZGW AS c ON a.GWID = c.ID /*��λID*/
GO
