
--�¶Ȼ��ܼ�¼��
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_22_A12_YDHZJL_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[SXBID]--ʵϰ��ID
      ,a.[HZNR]--��������
      ,a.[TJSJ]--���ʱ��
      ,c.SCHOOLID as c_SXBJGL_SCHOOLID--ʵϰ�༶����� ѧУ
      ,c.XNID as c_SXBJGL_XNID--ʵϰ�༶����� ѧ��ID
      ,c.XQID as c_SXBJGL_XQID--ʵϰ�༶����� ѧ��ID
      ,c.BJMC as c_SXBJGL_BJMC--ʵϰ�༶����� �༶����
      ,c.BZRID as c_SXBJGL_BZRID--ʵϰ�༶����� ������ID

FROM dbo.EDU_ZZJX_22_A12_YDHZJL AS a LEFT OUTER JOIN
      dbo.EDU_ZZJX_21_A01_SXBJGL AS c ON a.SXBID = c.ID /*ʵϰ��ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/
GO
