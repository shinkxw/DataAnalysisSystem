
--首页板块表
CREATE VIEW [dbo].[VIEW_EDU_WZXT_ZDJZ_SYBK_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校ID
      ,a.[WEBID]--网站ID
      ,a.[BKMC]--板块名称
      ,a.[XSFS]--显示方式
      ,a.[XWLYK]--新闻来源库
      ,a.[XWLMID]--新闻栏目ID
      ,a.[XWXSSL]--新闻显示数量
      ,a.[PXFS]--排序方式
      ,a.[BKLJ]--板块链接
      ,c.SCHOOLID as c_WZPZ_SCHOOLID--网站配置 学校名
      ,c.WEBNAME as c_WZPZ_WEBNAME--网站配置 网站名
      ,c.STATUID as c_WZPZ_STATUID--网站配置 是否开启
      ,c.WEBURL as c_WZPZ_WEBURL--网站配置 网址
      ,c.CSSID as c_WZPZ_CSSID--网站配置 网站样式
      ,c.URL as c_WZPZ_URL--网站配置 完整网址
      ,c.YS as c_WZPZ_YS--网站配置 页首
      ,c.YW as c_WZPZ_YW--网站配置 页尾

FROM dbo.EDU_WZXT_ZDJZ_SYBK AS a LEFT OUTER JOIN
      dbo.EDU_WZXT_MHXT_WZPZ AS c ON a.WEBID = c.WEBID /*网站ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/
GO
