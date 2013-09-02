
--发布权限
CREATE VIEW [dbo].[VIEW_EDU_ZYZX_MHXT_FBQX_DISP]
AS
SELECT a.[ID]--发布权限ID
      ,a.[SCHOOLID]--学校名
      ,a.[WEBID]--网站ID
      ,a.[LOGINNAME]--用户名
      ,a.[LMLIST]--栏目
      ,a.[LMNAMELIST]--栏目文字

FROM dbo.EDU_ZYZX_MHXT_FBQX AS a
GO
