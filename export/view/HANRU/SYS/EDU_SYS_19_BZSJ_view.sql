
--��׼���ݱ�
CREATE VIEW [dbo].[VIEW_EDU_SYS_19_BZSJ_DISP]
AS
SELECT a.[ID]--���
      ,a.[BZSJMC]--��׼��������
      ,a.[SJLXID]--��������ID
      ,a.[GLLJ]--��������
      ,b.SJLXMC as b_BZSJLX_SJLXMC--��׼�������ͱ� ������������

FROM dbo.EDU_SYS_19_BZSJ AS a LEFT OUTER JOIN
      dbo.EDU_SYS_19_BZSJLX AS b ON a.SJLXID = b.ID /*��������ID*/
GO
