
--教学计划分类学分要求数据子类
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_03_02_JXJHFLXFYQ_DISP]
AS
SELECT a.[SCHOOLID]--学校ID
      ,a.[KCFLM]--课程分类码
      ,a.[JXJHID]--教学计划ID
      ,a.[XFYQ]--学分要求
      ,a.[JHBH]--计划编号
      ,c.MC as c_KCFL_MC--课程分类代码 名称
      ,d.SCHOOLID as d_ZTJXJH_SCHOOLID--总体教学计划数据子类表 学校ID
      ,d.JHBH as d_ZTJXJH_JHBH--总体教学计划数据子类表 计划编号
      ,d.JHNJ as d_ZTJXJH_JHNJ--总体教学计划数据子类表 计划年级
      ,d.ZYXXID as d_ZTJXJH_ZYXXID--总体教学计划数据子类表 专业ID
      ,d.JHZYMC as d_ZTJXJH_JHZYMC--总体教学计划数据子类表 计划专业名称
      ,d.ZXFYQ as d_ZTJXJH_ZXFYQ--总体教学计划数据子类表 总学分要求
      ,d.JLNY as d_ZTJXJH_JLNY--总体教学计划数据子类表 建立年月
      ,d.SYXZ as d_ZTJXJH_SYXZ--总体教学计划数据子类表 适用学制
      ,d.PYMB as d_ZTJXJH_PYMB--总体教学计划数据子类表 培养目标
      ,d.SFKY as d_ZTJXJH_SFKY--总体教学计划数据子类表 是否可用
      ,db.MC as d_ZTJXJH_SFKY_MC--是否标志代码表 名称
      ,d.FJ as d_ZTJXJH_FJ--总体教学计划数据子类表 附件
      ,d.ZYRS as d_ZTJXJH_ZYRS--总体教学计划数据子类表 专业人数

FROM dbo.EDU_ZZJX_03_02_JXJHFLXFYQ AS a LEFT OUTER JOIN
      dbo.EDU_ZZ_KCFL AS c ON a.KCFLM = c.DM /*课程分类码*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_03_01_ZTJXJH AS d ON a.JXJHID = d.ID /*教学计划ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS db ON d.SFKY = db.DM /*是否可用*/
GO
