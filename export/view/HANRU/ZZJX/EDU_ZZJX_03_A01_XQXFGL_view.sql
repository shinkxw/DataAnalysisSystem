
--学期学分管理表
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_03_A01_XQXFGL_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校ID
      ,a.[JXJHID]--教学计划ID
      ,a.[XQID]--学期ID
      ,a.[JHBH]--计划编号
      ,a.[ZDXF]--最高学分
      ,a.[ZGXF]--最低学分
      ,c.SCHOOLID as c_ZTJXJH_SCHOOLID--总体教学计划数据子类表 学校ID
      ,c.JHBH as c_ZTJXJH_JHBH--总体教学计划数据子类表 计划编号
      ,c.JHNJ as c_ZTJXJH_JHNJ--总体教学计划数据子类表 计划年级
      ,c.ZYXXID as c_ZTJXJH_ZYXXID--总体教学计划数据子类表 专业ID
      ,c.JHZYMC as c_ZTJXJH_JHZYMC--总体教学计划数据子类表 计划专业名称
      ,c.ZXFYQ as c_ZTJXJH_ZXFYQ--总体教学计划数据子类表 总学分要求
      ,c.JLNY as c_ZTJXJH_JLNY--总体教学计划数据子类表 建立年月
      ,c.SYXZ as c_ZTJXJH_SYXZ--总体教学计划数据子类表 适用学制
      ,c.PYMB as c_ZTJXJH_PYMB--总体教学计划数据子类表 培养目标
      ,c.SFKY as c_ZTJXJH_SFKY--总体教学计划数据子类表 是否可用
      ,[cb].MC as c_ZTJXJH_SFKY_MC--是否标志代码表 名称
      ,c.FJ as c_ZTJXJH_FJ--总体教学计划数据子类表 附件
      ,c.ZYRS as c_ZTJXJH_ZYRS--总体教学计划数据子类表 专业人数
      ,d.SCHOOLID as d_XQ_SCHOOLID--学期数据表 学校名
      ,d.XNID as d_XQ_XNID--学期数据表 学年
      ,d.XQM as d_XQ_XQM--学期数据表 学期码
      ,[db].MC as d_XQ_XQM_MC--学期代码表 名称
      ,d.XQMC as d_XQ_XQMC--学期数据表 学期名称
      ,d.XQKSRQ as d_XQ_XQKSRQ--学期数据表 学期开始日期
      ,d.XQJSRQ as d_XQ_XQJSRQ--学期数据表 学期结束日期
      ,d.BaseProjectInfoID as d_XQ_BaseProjectInfoID--学期数据表 表BaseProjectInfo外键

FROM dbo.EDU_ZZJX_03_A01_XQXFGL AS a LEFT OUTER JOIN
      dbo.EDU_ZZJX_03_01_ZTJXJH AS c ON a.JXJHID = c.ID /*教学计划ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS d ON a.XQID = d.ID /*学期ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [cb] ON c.SFKY = [cb].DM /*是否可用*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS [db] ON d.XQM = [db].DM /*学期码*/
GO
