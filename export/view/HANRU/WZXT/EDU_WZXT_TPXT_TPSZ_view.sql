
--投票设置
CREATE VIEW [dbo].[VIEW_EDU_WZXT_TPXT_TPSZ_DISP]
AS
SELECT a.[ID]--投票设置ID
      ,a.[SCHOOLID]--学校名
      ,a.[WEBID]--网站ID
      ,a.[TITLE]--标题
      ,a.[CONTENT]--内容
      ,a.[SHOWSTYLEID]--显示方式
      ,a.[CSSID]--显示样式
      ,a.[LOGINNAMELIST]--投票人
      ,a.[STARTSTATU]--是否开启
      ,c.SCHOOLID as c_WZPZ_SCHOOLID--网站配置 学校名
      ,c.WEBNAME as c_WZPZ_WEBNAME--网站配置 网站名
      ,c.STATUID as c_WZPZ_STATUID--网站配置 是否开启
      ,c.WEBURL as c_WZPZ_WEBURL--网站配置 网址
      ,c.CSSID as c_WZPZ_CSSID--网站配置 网站样式
      ,c.URL as c_WZPZ_URL--网站配置 完整网址
      ,c.YS as c_WZPZ_YS--网站配置 页首
      ,c.YW as c_WZPZ_YW--网站配置 页尾
      ,d.SCHOOLID as d_TPYS_SCHOOLID--投票样式库 学校名
      ,d.WEBID as d_TPYS_WEBID--投票样式库 网站ID
      ,d.NAME as d_TPYS_NAME--投票样式库 样式名
      ,d.SHOWIMG as d_TPYS_SHOWIMG--投票样式库 效果图

FROM dbo.EDU_WZXT_TPXT_TPSZ AS a LEFT OUTER JOIN
      dbo.EDU_WZXT_MHXT_WZPZ AS c ON a.WEBID = c.WEBID /*网站ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_WZXT_TPXT_TPYS AS d ON a.CSSID = d.ID /*显示样式*/ AND a.SCHOOLID = d.SCHOOLID /*学校名*/ AND a.WEBID = d.WEBID /*网站ID*/
GO
