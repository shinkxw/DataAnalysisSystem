
--学期学分管理表
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_03_A01_XQXFGL_DISP]
AS
SELECT a.[SCHOOLID]--学校ID
      ,a.[XQID]--学期ID
      ,a.[JHBH]--计划编号
      ,a.[ZDXF]--最高学分
      ,a.[ZGXF]--最低学分
      ,b.SCHOOLNAME as b_SCHOOL_SCHOOLNAME--学校名称
      ,b.SCHOOLTYPE as b_SCHOOL_SCHOOLTYPE--学校类型
      ,b.XNID as b_SCHOOL_XNID--学年ID
      ,b.XQID as b_SCHOOL_XQID--学期ID
      ,b.MatchURL as b_SCHOOL_MatchURL--匹配url
      ,b.LogLevel as b_SCHOOL_LogLevel--日志级别
      ,c.SCHOOLID as c_XQ_SCHOOLID--学校名
      ,c.XNID as c_XQ_XNID--学年
      ,c.XQM as c_XQ_XQM--学期码
      ,cb.MC as c_XQ_XQM_MC--名称
      ,c.XQMC as c_XQ_XQMC--学期名称
      ,c.XQKSRQ as c_XQ_XQKSRQ--学期开始日期
      ,c.XQJSRQ as c_XQ_XQJSRQ--学期结束日期
      ,d.SCHOOLID as d_ZTJXJH_SCHOOLID--学校ID
      ,d.JHNJ as d_ZTJXJH_JHNJ--计划年级
      ,d.ZYXXID as d_ZTJXJH_ZYXXID--专业编号
      ,d.JHZYMC as d_ZTJXJH_JHZYMC--计划专业名称
      ,d.ZXFYQ as d_ZTJXJH_ZXFYQ--总学分要求
      ,d.JLNY as d_ZTJXJH_JLNY--建立年月
      ,d.SYXZ as d_ZTJXJH_SYXZ--适用学制
      ,d.PYMB as d_ZTJXJH_PYMB--培养目标
      ,d.SFKY as d_ZTJXJH_SFKY--是否可用
      ,db.MC as d_ZTJXJH_SFKY_MC--名称
      ,d.FJ as d_ZTJXJH_FJ--附件

FROM dbo.EDU_ZZJX_03_A01_XQXFGL AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS c ON a.XQID = c.ID /*学期ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_03_01_ZTJXJH AS d ON a.JHBH = d.JHBH /*计划编号*/ AND a.SCHOOLID = d.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS cb ON c.XQM = cb.DM /*学期码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS db ON d.SFKY = db.DM /*是否可用*/
GO
