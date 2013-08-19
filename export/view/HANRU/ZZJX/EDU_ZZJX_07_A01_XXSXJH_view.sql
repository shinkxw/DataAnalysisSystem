
--学校实习计划表
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_07_A01_XXSXJH_DISP]
AS
SELECT a.[ID]--实习计划ID
      ,a.[SCHOOLID]--学校ID
      ,a.[JHBT]--计划标题
      ,a.[NJ]--年级
      ,a.[BGXS]--报告形式
      ,a.[SFSX]--计划是否生效
      ,b.SCHOOLNAME as b_SCHOOL_SCHOOLNAME--学校名称
      ,b.SCHOOLTYPE as b_SCHOOL_SCHOOLTYPE--学校类型
      ,b.XNID as b_SCHOOL_XNID--学年ID
      ,b.XQID as b_SCHOOL_XQID--学期ID
      ,b.MatchURL as b_SCHOOL_MatchURL--匹配url
      ,b.LogLevel as b_SCHOOL_LogLevel--日志级别
      ,c.MC as c_SKFS_MC--名称

FROM dbo.EDU_ZZJX_07_A01_XXSXJH AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS c ON a.SFSX = c.DM /*计划是否生效*/
GO
