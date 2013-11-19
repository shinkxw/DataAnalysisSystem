
--试卷知识点表
CREATE VIEW [dbo].[VIEW_EDU_ZYZX_02_A02_SJZSD_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[KCH]--课程ID
      ,a.[ZSDMC]--知识点名称
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
      ,[cb].MC as c_KC_KSXS_MC--考试形式代码表 名称
      ,c.SKFSM as c_KC_SKFSM--课程数据子类表 授课方式码
      ,[cc].MC as c_KC_SKFSM_MC--授课方式代码表 名称
      ,c.KCFY as c_KC_KCFY--课程数据子类表 课程费用

FROM dbo.EDU_ZYZX_02_A02_SJZSD AS a LEFT OUTER JOIN
      dbo.EDU_ZZJX_01_02_KC AS c ON a.KCH = c.KCH /*课程ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_JY_KSXS AS [cb] ON c.KSXS = [cb].DM /*考试形式*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS [cc] ON c.SKFSM = [cc].DM /*授课方式码*/
GO
