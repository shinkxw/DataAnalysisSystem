
--学年表
CREATE VIEW [dbo].[VIEW_EDU_SYS_01_XN_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校名
      ,a.[XN]--学年
      ,b.SCHOOLNAME as b_SCHOOL_SCHOOLNAME--学校配置表 学校名称
      ,b.SCHOOLTYPE as b_SCHOOL_SCHOOLTYPE--学校配置表 学校类型
      ,b.XNID as b_SCHOOL_XNID--学校配置表 学年ID
      ,b.XQID as b_SCHOOL_XQID--学校配置表 学期ID
      ,b.MatchURL as b_SCHOOL_MatchURL--学校配置表 匹配url
      ,b.MenhuURL as b_SCHOOL_MenhuURL--学校配置表 门户url
      ,b.MenhuWebid as b_SCHOOL_MenhuWebid--学校配置表 门户webid
      ,b.LogLevel as b_SCHOOL_LogLevel--学校配置表 日志级别
      ,b.ModuleIdList as b_SCHOOL_ModuleIdList--学校配置表 权限列表

FROM dbo.EDU_SYS_01_XN AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*学校名*/
GO
