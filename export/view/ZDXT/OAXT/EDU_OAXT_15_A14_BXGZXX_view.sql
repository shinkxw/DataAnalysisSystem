
--���޹�����Ϣ��
CREATE VIEW [dbo].[VIEW_EDU_OAXT_15_A14_BXGZXX_DISP]
AS
SELECT a.[ID]--���
      ,a.[SCHOOLID]--ѧУ
      ,a.[BXLXID]--��������ID
      ,a.[GZXX]--������Ϣ
      ,c.SCHOOLID as c_BXLX_SCHOOLID--�������ͱ� ѧУ
      ,c.TypeName as c_BXLX_TypeName--�������ͱ� ��������
      ,c.Remark as c_BXLX_Remark--�������ͱ� ��ע

FROM dbo.EDU_OAXT_15_A14_BXGZXX AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_15_A07_BXLX AS c ON a.BXLXID = c.ID /*��������ID*/ AND a.SCHOOLID = c.SCHOOLID /*ѧУ*/
GO
