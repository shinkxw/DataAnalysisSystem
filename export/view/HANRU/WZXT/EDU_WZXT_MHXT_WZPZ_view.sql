
--网站配置
CREATE VIEW [dbo].[VIEW_EDU_WZXT_MHXT_WZPZ_DISP]
AS
SELECT a.[WEBID]--网站ID
      ,a.[SCHOOLID]--学校名
      ,a.[WEBNAME]--网站名
      ,a.[STATUID]--是否开启
      ,a.[WEBURL]--网址
      ,a.[CSSID]--网站样式
      ,b.SCHOOLID as b_WZPZ_SCHOOLID--网站配置 学校名
      ,b.WEBNAME as b_WZPZ_WEBNAME--网站配置 网站名
      ,b.STATUID as b_WZPZ_STATUID--网站配置 是否开启
      ,b.WEBURL as b_WZPZ_WEBURL--网站配置 网址
      ,b.CSSID as b_WZPZ_CSSID--网站配置 网站样式
      ,d.SCHOOLID as d_WZYS_SCHOOLID--样式库 学校名
      ,d.WEBID as d_WZYS_WEBID--样式库 网站ID
      ,d.NAME as d_WZYS_NAME--样式库 样式名
      ,d.SHOWIMG as d_WZYS_SHOWIMG--样式库 效果图

FROM dbo.EDU_WZXT_MHXT_WZPZ AS a LEFT OUTER JOIN
      dbo.EDU_WZXT_MHXT_WZPZ AS b ON a.WEBID = b.WEBID /*网站ID*/ AND a.SCHOOLID = b.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_WZXT_MHXT_WZYS AS d ON a.CSSID = d.ID /*网站样式*/ AND a.SCHOOLID = d.SCHOOLID /*学校名*/ AND a.WEBID = d.WEBID /*网站ID*/
GO
