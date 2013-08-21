
--教学计划课程清单数据子类表
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_03_03_JXJHKCQD_DISP]
AS
SELECT a.[SCHOOLID]--学校ID
      ,a.[KCH]--课程号
      ,a.[JHBH]--计划编号
      ,a.[XQID]--学期ID
      ,a.[KCMC]--课程名称
      ,a.[YXKC]--预修课程
      ,a.[SFHXKC]--是否核心（骨干）
      ,a.[KCFLM]--课程分类码
      ,a.[KCSXM]--课程属性码
      ,a.[ZXXQ]--执行学期
      ,c.SCHOOLID as c_KC_SCHOOLID--课程数据子类表 学校ID
      ,c.KCMC as c_KC_KCMC--课程数据子类表 课程名称
      ,c.KCYWM as c_KC_KCYWM--课程数据子类表 课程英文名
      ,c.KCBM as c_KC_KCBM--课程数据子类表 课程别名
      ,c.KCJS as c_KC_KCJS--课程数据子类表 课程介绍
      ,c.XF as c_KC_XF--课程数据子类表 学分
      ,c.ZXS as c_KC_ZXS--课程数据子类表 总学时
      ,c.LLXS as c_KC_LLXS--课程数据子类表 理论学时
      ,c.SJXS as c_KC_SJXS--课程数据子类表 实践学时
      ,c.QTXS as c_KC_QTXS--课程数据子类表 其他学时
      ,c.CKSM as c_KC_CKSM--课程数据子类表 参考书目
      ,c.KKDW as c_KC_KKDW--课程数据子类表 开课单位
      ,c.KSXS as c_KC_KSXS--课程数据子类表 考试形式
      ,cb.MC as c_KC_KSXS_MC--考试形式代码表 名称
      ,c.SKFSM as c_KC_SKFSM--课程数据子类表 授课方式码
      ,cc.MC as c_KC_SKFSM_MC--授课方式代码表 名称
      ,c.KCFY as c_KC_KCFY--课程数据子类表 课程费用
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
      ,e.SCHOOLID as e_XQ_SCHOOLID--学期数据表 学校名
      ,e.XNID as e_XQ_XNID--学期数据表 学年
      ,e.XQM as e_XQ_XQM--学期数据表 学期码
      ,eb.MC as e_XQ_XQM_MC--学期代码表 名称
      ,e.XQMC as e_XQ_XQMC--学期数据表 学期名称
      ,e.XQKSRQ as e_XQ_XQKSRQ--学期数据表 学期开始日期
      ,e.XQJSRQ as e_XQ_XQJSRQ--学期数据表 学期结束日期
      ,f.MC as f_SKFS_MC--授课方式代码表 名称
      ,g.MC as g_KCFL_MC--课程分类代码 名称
      ,h.MC as h_KCSX_MC--课程属性代码表 名称
      ,h.SM as h_KCSX_SM--课程属性代码表 说明

FROM dbo.EDU_ZZJX_03_03_JXJHKCQD AS a LEFT OUTER JOIN
      dbo.EDU_ZZJX_01_02_KC AS c ON a.KCH = c.KCH /*课程号*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_03_01_ZTJXJH AS d ON a.JHBH = d.JHBH /*计划编号*/ AND a.SCHOOLID = d.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS e ON a.XQID = e.ID /*学期ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS f ON a.SFHXKC = f.DM /*是否核心（骨干）*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_KCFL AS g ON a.KCFLM = g.DM /*课程分类码*/ LEFT OUTER JOIN
      dbo.EDU_JY_KCSX AS h ON a.KCSXM = h.DM /*课程属性码*/ LEFT OUTER JOIN
      dbo.EDU_JY_KSXS AS cb ON c.KSXS = cb.DM /*考试形式*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS cc ON c.SKFSM = cc.DM /*授课方式码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS db ON d.SFKY = db.DM /*是否可用*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS eb ON e.XQM = eb.DM /*学期码*/
GO
