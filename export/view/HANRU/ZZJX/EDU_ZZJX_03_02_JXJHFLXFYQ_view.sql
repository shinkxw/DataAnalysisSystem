
--教学计划分类学分要求数据子类
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_03_02_JXJHFLXFYQ_DISP]
AS
SELECT a.[SCHOOLID]--学校ID
      ,a.[KCFLM]--课程分类码
      ,a.[XFYQ]--学分要求
      ,a.[JHBH]--计划编号
      ,b.SCHOOLNAME as b_SCHOOL_SCHOOLNAME--学校配置表 学校名称
      ,b.SCHOOLTYPE as b_SCHOOL_SCHOOLTYPE--学校配置表 学校类型
      ,b.XNID as b_SCHOOL_XNID--学校配置表 学年ID
      ,b.XQID as b_SCHOOL_XQID--学校配置表 学期ID
      ,b.MatchURL as b_SCHOOL_MatchURL--学校配置表 匹配url
      ,b.MenhuURL as b_SCHOOL_MenhuURL--学校配置表 门户url
      ,b.MenhuWebid as b_SCHOOL_MenhuWebid--学校配置表 门户webid
      ,b.LogLevel as b_SCHOOL_LogLevel--学校配置表 日志级别
      ,b.ModuleIdList as b_SCHOOL_ModuleIdList--学校配置表 权限列表
      ,c.MC as c_KCFL_MC--课程分类代码 名称
      ,d.SCHOOLID as d_ZTJXJH_SCHOOLID--总体教学计划数据子类表 学校ID
      ,d.JHNJ as d_ZTJXJH_JHNJ--总体教学计划数据子类表 计划年级
      ,d.ZYXXID as d_ZTJXJH_ZYXXID--总体教学计划数据子类表 专业编号
      ,d.JHZYMC as d_ZTJXJH_JHZYMC--总体教学计划数据子类表 计划专业名称
      ,d.ZXFYQ as d_ZTJXJH_ZXFYQ--总体教学计划数据子类表 总学分要求
      ,d.JLNY as d_ZTJXJH_JLNY--总体教学计划数据子类表 建立年月
      ,d.SYXZ as d_ZTJXJH_SYXZ--总体教学计划数据子类表 适用学制
      ,d.PYMB as d_ZTJXJH_PYMB--总体教学计划数据子类表 培养目标
      ,d.SFKY as d_ZTJXJH_SFKY--总体教学计划数据子类表 是否可用
      ,db.MC as d_ZTJXJH_SFKY_MC--授课方式代码表 名称
      ,d.FJ as d_ZTJXJH_FJ--总体教学计划数据子类表 附件

FROM dbo.EDU_ZZJX_03_02_JXJHFLXFYQ AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_KCFL AS c ON a.KCFLM = c.DM /*课程分类码*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_03_01_ZTJXJH AS d ON a.JHBH = d.JHBH /*计划编号*/ AND a.SCHOOLID = d.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS db ON d.SFKY = db.DM /*是否可用*/
GO
