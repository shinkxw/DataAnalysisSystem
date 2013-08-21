
--应用表
CREATE VIEW [dbo].[VIEW_EDU_ELE_01_APP_DISP]
AS
SELECT a.[ID]--应用ID
      ,a.[SCHOOLID]--学校ID
      ,a.[NAME]--应用名称
      ,a.[URL]--网址
      ,a.[AUTHIP]--限用IP
      ,a.[SM]--说明
      ,a.[DLFS]--登录方式
      ,a.[STATUS]--应用状态

FROM dbo.EDU_ELE_01_APP AS a
GO
