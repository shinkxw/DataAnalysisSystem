
--投票记录
CREATE VIEW [dbo].[VIEW_EDU_WZXT_TPXT_TPJL_DISP]
AS
SELECT a.[ID]--投票记录ID
      ,a.[SCHOOLID]--学校名
      ,a.[WEBID]--网站ID
      ,a.[TPID]--投票
      ,a.[TPIP]--投票人
      ,a.[TPTIME]--投票时间
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
      ,d.SCHOOLID as d_TPSZ_SCHOOLID--投票设置 学校名
      ,d.WEBID as d_TPSZ_WEBID--投票设置 网站ID
      ,d.TITLE as d_TPSZ_TITLE--投票设置 标题
      ,d.CONTENT as d_TPSZ_CONTENT--投票设置 内容
      ,d.SHOWSTYLEID as d_TPSZ_SHOWSTYLEID--投票设置 显示方式
      ,d.CSSID as d_TPSZ_CSSID--投票设置 显示样式
      ,d.LOGINNAMELIST as d_TPSZ_LOGINNAMELIST--投票设置 投票人
      ,d.STARTSTATU as d_TPSZ_STARTSTATU--投票设置 是否开启

FROM dbo.EDU_WZXT_TPXT_TPJL AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_WZXT_MHXT_WZPZ AS c ON a.WEBID = c.WEBID /*网站ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_WZXT_TPXT_TPSZ AS d ON a.TPID = d.ID /*投票*/ AND a.SCHOOLID = d.SCHOOLID /*学校名*/ AND a.WEBID = d.WEBID /*网站ID*/
GO
