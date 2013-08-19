
--学校实习周/月表
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_07_A03_XXSXZY_DISP]
AS
SELECT a.[ID]--实习周/月ID
      ,a.[SCHOOLID]--学校ID
      ,a.[SXJHID]--实习计划ID
      ,a.[SXJDID]--实习阶段ID
      ,a.[MC]--名称
      ,a.[KSSJ]--开始时间
      ,a.[JSSJ]--结束时间
      ,a.[LX]--类型
      ,b.SCHOOLNAME as b_SCHOOL_SCHOOLNAME--学校名称
      ,b.SCHOOLTYPE as b_SCHOOL_SCHOOLTYPE--学校类型
      ,b.XNID as b_SCHOOL_XNID--学年ID
      ,b.XQID as b_SCHOOL_XQID--学期ID
      ,b.MatchURL as b_SCHOOL_MatchURL--匹配url
      ,b.LogLevel as b_SCHOOL_LogLevel--日志级别
      ,c.SCHOOLID as c_XXSXJH_SCHOOLID--学校ID
      ,c.JHBT as c_XXSXJH_JHBT--计划标题
      ,c.NJ as c_XXSXJH_NJ--年级
      ,c.BGXS as c_XXSXJH_BGXS--报告形式
      ,c.SFSX as c_XXSXJH_SFSX--计划是否生效
      ,cb.MC as c_XXSXJH_SFSX_MC--名称
      ,d.SCHOOLID as d_XXSXJD_SCHOOLID--学校ID
      ,d.SXJHID as d_XXSXJD_SXJHID--实习计划ID
      ,d.JDM as d_XXSXJD_JDM--阶段名
      ,d.JDKSSJ as d_XXSXJD_JDKSSJ--阶段开始时间
      ,d.JDJSSJ as d_XXSXJD_JDJSSJ--阶段结束时间

FROM dbo.EDU_ZZJX_07_A03_XXSXZY AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_07_A01_XXSXJH AS c ON a.SXJHID = c.ID /*实习计划ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_07_A02_XXSXJD AS d ON a.SXJDID = d.ID /*实习阶段ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS cb ON c.SFSX = cb.DM /*计划是否生效*/
GO
