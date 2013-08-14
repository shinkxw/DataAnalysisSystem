
--自建专业代码
CREATE VIEW [dbo].[VIEW_EDU_ZJ_ZJZY_DISP]
AS
SELECT a.[DM]--代码
      ,a.[ZYMLLB]--专业目录类别
      ,a.[MC]--名称
      ,b.MC as b_ZYML_MC--名称

FROM dbo.EDU_ZJ_ZJZY AS a LEFT OUTER JOIN
      dbo.EDU_ZJ_ZYML AS b ON a.ZYMLLB = b.DM /*专业目录类别*/
GO
