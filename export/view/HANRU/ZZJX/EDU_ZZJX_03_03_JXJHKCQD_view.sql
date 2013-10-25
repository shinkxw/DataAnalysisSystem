
--教学计划课程清单数据子类表
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_03_03_JXJHKCQD_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校ID
      ,a.[JXJHID]--教学计划ID
      ,a.[KCH]--课程号
      ,a.[JHBH]--计划编号
      ,a.[XQID]--学期ID
      ,a.[KCMC]--课程名称
      ,a.[YXKC]--预修课程
      ,a.[SFHXKC]--是否核心（骨干）
      ,a.[KCFLM]--课程分类码
      ,a.[KCSXM]--课程属性码
      ,a.[ZXXQ]--执行学期
      ,a.[ZKS]--总课时
      ,a.[LLKS]--理论课时
      ,a.[SJKS]--实践课时
      ,a.[XF]--学分
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
      ,cb.MC as c_ZTJXJH_SFKY_MC--是否标志代码表 名称
      ,c.FJ as c_ZTJXJH_FJ--总体教学计划数据子类表 附件
      ,c.ZYRS as c_ZTJXJH_ZYRS--总体教学计划数据子类表 专业人数
      ,d.SCHOOLID as d_KC_SCHOOLID--课程数据子类表 学校ID
      ,d.KCMC as d_KC_KCMC--课程数据子类表 课程名称
      ,d.KCYWM as d_KC_KCYWM--课程数据子类表 课程英文名
      ,d.KCBM as d_KC_KCBM--课程数据子类表 课程别名
      ,d.KCJS as d_KC_KCJS--课程数据子类表 课程介绍
      ,d.XF as d_KC_XF--课程数据子类表 学分
      ,d.ZXS as d_KC_ZXS--课程数据子类表 总学时
      ,d.LLXS as d_KC_LLXS--课程数据子类表 理论学时
      ,d.SJXS as d_KC_SJXS--课程数据子类表 实践学时
      ,d.QTXS as d_KC_QTXS--课程数据子类表 其他学时
      ,d.CKSM as d_KC_CKSM--课程数据子类表 参考书目
      ,d.KKDW as d_KC_KKDW--课程数据子类表 开课单位
      ,d.KSXS as d_KC_KSXS--课程数据子类表 考试形式
      ,db.MC as d_KC_KSXS_MC--考试形式代码表 名称
      ,d.SKFSM as d_KC_SKFSM--课程数据子类表 授课方式码
      ,dc.MC as d_KC_SKFSM_MC--授课方式代码表 名称
      ,d.KCFY as d_KC_KCFY--课程数据子类表 课程费用
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
      dbo.EDU_ZZJX_03_01_ZTJXJH AS c ON a.JXJHID = c.ID /*教学计划ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_01_02_KC AS d ON a.KCH = d.KCH /*课程号*/ AND a.SCHOOLID = d.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS e ON a.XQID = e.ID /*学期ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS f ON a.SFHXKC = f.DM /*是否核心（骨干）*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_KCFL AS g ON a.KCFLM = g.DM /*课程分类码*/ LEFT OUTER JOIN
      dbo.EDU_JY_KCSX AS h ON a.KCSXM = h.DM /*课程属性码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS cb ON c.SFKY = cb.DM /*是否可用*/ LEFT OUTER JOIN
      dbo.EDU_JY_KSXS AS db ON d.KSXS = db.DM /*考试形式*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS dc ON d.SKFSM = dc.DM /*授课方式码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS eb ON e.XQM = eb.DM /*学期码*/
GO
