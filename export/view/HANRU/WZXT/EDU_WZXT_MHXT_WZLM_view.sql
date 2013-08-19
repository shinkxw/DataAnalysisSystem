
--网站栏目（导航）
CREATE VIEW [dbo].[VIEW_EDU_WZXT_MHXT_WZLM_DISP]
AS
SELECT a.[ID]--网站栏目（导航）ID
      ,a.[SCHOOLID]--学校名
      ,a.[WEBID]--网站ID
      ,a.[LMSHOWSTYLE]--栏目使用类型
      ,a.[NAME]--栏目名称
      ,a.[URL]--栏目链接
      ,a.[IMAGEURL]--图片链接
      ,a.[DEPTH]--层级
      ,a.[PID]--父目录
      ,a.[LISTSHOWSTYLE]--列表显示型式
      ,a.[ORDERTYPE]--排序方式
      ,a.[SHOWNUMBER]--显示个数
      ,a.[OPENFLAG]--内外网
      ,a.[LLQX]--浏览权限
      ,b.SCHOOLNAME as b_SCHOOL_SCHOOLNAME--学校名称
      ,b.SCHOOLTYPE as b_SCHOOL_SCHOOLTYPE--学校类型
      ,b.XNID as b_SCHOOL_XNID--学年ID
      ,b.XQID as b_SCHOOL_XQID--学期ID
      ,b.MatchURL as b_SCHOOL_MatchURL--匹配url
      ,b.LogLevel as b_SCHOOL_LogLevel--日志级别
      ,c.SCHOOLID as c_WZPZ_SCHOOLID--学校名
      ,c.WEBNAME as c_WZPZ_WEBNAME--网站名
      ,c.STATUID as c_WZPZ_STATUID--是否开启
      ,c.WEBURL as c_WZPZ_WEBURL--网址
      ,c.CSSID as c_WZPZ_CSSID--网站样式
      ,d.SCHOOLID as d_WZLM_SCHOOLID--学校名
      ,d.WEBID as d_WZLM_WEBID--网站ID
      ,d.LMSHOWSTYLE as d_WZLM_LMSHOWSTYLE--栏目使用类型
      ,d.NAME as d_WZLM_NAME--栏目名称
      ,d.URL as d_WZLM_URL--栏目链接
      ,d.IMAGEURL as d_WZLM_IMAGEURL--图片链接
      ,d.DEPTH as d_WZLM_DEPTH--层级
      ,d.PID as d_WZLM_PID--父目录
      ,d.LISTSHOWSTYLE as d_WZLM_LISTSHOWSTYLE--列表显示型式
      ,d.ORDERTYPE as d_WZLM_ORDERTYPE--排序方式
      ,d.SHOWNUMBER as d_WZLM_SHOWNUMBER--显示个数
      ,d.OPENFLAG as d_WZLM_OPENFLAG--内外网
      ,d.LLQX as d_WZLM_LLQX--浏览权限

FROM dbo.EDU_WZXT_MHXT_WZLM AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_WZXT_MHXT_WZPZ AS c ON a.WEBID = c.WEBID /*网站ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_WZXT_MHXT_WZLM AS d ON a.PID = d.ID /*父目录*/ AND a.SCHOOLID = d.SCHOOLID /*学校名*/ AND a.WEBID = d.WEBID /*网站ID*/
GO
