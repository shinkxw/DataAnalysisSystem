
--友情链接类型
CREATE VIEW [dbo].[VIEW_EDU_ZYZX_MHXT_YQLJLX_DISP]
AS
SELECT a.[ID]--友情链接类型ID
      ,a.[SCHOOLID]--学校名
      ,a.[WEBID]--网站ID
      ,a.[NAME]--类型名
      ,a.[SHOWSTYLE]--显示方式
      ,c.SCHOOLID as c_WZPZ_SCHOOLID--网站配置 学校名
      ,c.WEBNAME as c_WZPZ_WEBNAME--网站配置 网站名
      ,c.STATUID as c_WZPZ_STATUID--网站配置 是否开启
      ,c.WEBURL as c_WZPZ_WEBURL--网站配置 网址
      ,c.CSSID as c_WZPZ_CSSID--网站配置 网站样式

FROM dbo.EDU_ZYZX_MHXT_YQLJLX AS a LEFT OUTER JOIN
      dbo.EDU_ZYZX_MHXT_WZPZ AS c ON a.WEBID = c.WEBID /*网站ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/
GO
