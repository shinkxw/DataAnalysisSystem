
--标准数据表
CREATE VIEW [dbo].[VIEW_EDU_SYS_19_BZSJ_DISP]
AS
SELECT a.[ID]--编号
      ,a.[BZSJMC]--标准数据名称
      ,a.[SJLXID]--数据类型ID
      ,a.[GLLJ]--管理链接
      ,b.SJLXMC as b_BZSJLX_SJLXMC--标准数据类型表 数据类型名称

FROM dbo.EDU_SYS_19_BZSJ AS a LEFT OUTER JOIN
      dbo.EDU_SYS_19_BZSJLX AS b ON a.SJLXID = b.ID /*数据类型ID*/
GO
