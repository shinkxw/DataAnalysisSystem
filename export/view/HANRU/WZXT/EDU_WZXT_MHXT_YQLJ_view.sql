
--友情链接
CREATE VIEW [dbo].[VIEW_EDU_WZXT_MHXT_YQLJ_DISP]
AS
SELECT a.[ID]--友情链接ID
      ,a.[SCHOOLID]--学校名
      ,a.[WEBID]--网站ID
      ,a.[TITLE]--标题
      ,a.[TYPEID]--类型
      ,a.[IMAGEURL]--图片
      ,a.[URL]--链接
      ,b.SCHOOLNAME as b_SCHOOL_SCHOOLNAME--学校配置表 学校名称
      ,b.SCHOOLTYPE as b_SCHOOL_SCHOOLTYPE--学校配置表 学校类型
      ,b.XNID as b_SCHOOL_XNID--学校配置表 学年ID
      ,b.XQID as b_SCHOOL_XQID--学校配置表 学期ID
      ,b.MatchURL as b_SCHOOL_MatchURL--学校配置表 匹配url
      ,b.MenhuURL as b_SCHOOL_MenhuURL--学校配置表 门户url
      ,b.MenhuWebid as b_SCHOOL_MenhuWebid--学校配置表 门户webid
      ,b.LogLevel as b_SCHOOL_LogLevel--学校配置表 日志级别
      ,b.ModuleIdList as b_SCHOOL_ModuleIdList--学校配置表 权限列表
      ,c.SCHOOLID as c_WZPZ_SCHOOLID--网站配置 学校名
      ,c.WEBNAME as c_WZPZ_WEBNAME--网站配置 网站名
      ,c.STATUID as c_WZPZ_STATUID--网站配置 是否开启
      ,c.WEBURL as c_WZPZ_WEBURL--网站配置 网址
      ,c.CSSID as c_WZPZ_CSSID--网站配置 网站样式
      ,d.SCHOOLID as d_YQLJLX_SCHOOLID--友情链接类型 学校名
      ,d.WEBID as d_YQLJLX_WEBID--友情链接类型 网站ID
      ,d.NAME as d_YQLJLX_NAME--友情链接类型 类型名
      ,d.SHOWSTYLE as d_YQLJLX_SHOWSTYLE--友情链接类型 显示方式

FROM dbo.EDU_WZXT_MHXT_YQLJ AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_WZXT_MHXT_WZPZ AS c ON a.WEBID = c.WEBID /*网站ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_WZXT_MHXT_YQLJLX AS d ON a.TYPEID = d.ID /*类型*/ AND a.SCHOOLID = d.SCHOOLID /*学校名*/ AND a.WEBID = d.WEBID /*网站ID*/
GO
