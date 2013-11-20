
--第三方应用登录参数表
CREATE VIEW [dbo].[VIEW_EDU_ELE_01_APPDLCS_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[APPUSERID]--应用用户ID
      ,a.[CSMC]--参数名称
      ,a.[CSZ]--参数值
      ,c.SCHOOLID as c_APPUSER_SCHOOLID--第三方应用用户表 学校
      ,c.YHID as c_APPUSER_YHID--第三方应用用户表 用户ID
      ,c.APPID as c_APPUSER_APPID--第三方应用用户表 应用ID
      ,c.YHMC as c_APPUSER_YHMC--第三方应用用户表 用户名称
      ,c.YHZT as c_APPUSER_YHZT--第三方应用用户表 用户状态

FROM dbo.EDU_ELE_01_APPDLCS AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_APPUSER AS c ON a.APPUSERID = c.ID /*应用用户ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/
GO
