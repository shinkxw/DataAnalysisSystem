
--学年表
CREATE VIEW [dbo].[VIEW_EDU_SYS_01_XN_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校名
      ,a.[XN]--学年

FROM dbo.EDU_SYS_01_XN AS a
GO
