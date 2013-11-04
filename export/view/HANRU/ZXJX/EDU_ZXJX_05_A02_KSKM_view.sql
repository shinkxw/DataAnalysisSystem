
--考试科目数据表
CREATE VIEW [dbo].[VIEW_EDU_ZXJX_05_A02_KSKM_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校名
      ,a.[SSKSID]--所属考试ID
      ,a.[JSRKID]--教师任课编号
      ,a.[KCMC]--课程名称
      ,a.[NJMC]--年级名称
      ,a.[BJMC]--班级名称
      ,a.[CJZF]--成绩总分
      ,c.SCHOOLID as c_KS_SCHOOLID--考试数据表 学校名
      ,c.XNID as c_KS_XNID--考试数据表 学年
      ,c.XQID as c_KS_XQID--考试数据表 学期
      ,c.KSMC as c_KS_KSMC--考试数据表 考试名称
      ,c.KSKSSJ as c_KS_KSKSSJ--考试数据表 考试开始时间
      ,c.KSJSSJ as c_KS_KSJSSJ--考试数据表 考试结束时间
      ,c.DFKSSJ as c_KS_DFKSSJ--考试数据表 登分开始时间
      ,c.DFJSSJ as c_KS_DFJSSJ--考试数据表 登分结束时间
      ,c.DFKS as c_KS_DFKS--考试数据表 登分方式
      ,d.SCHOOLID as d_RKSJ_SCHOOLID--任课数据子类表 学校名
      ,d.JZGJBSJID as d_RKSJ_JZGJBSJID--任课数据子类表 教职工基本数据子类表
      ,d.RKKCH as d_RKSJ_RKKCH--任课数据子类表 任课课程号
      ,d.RKQSNY as d_RKSJ_RKQSNY--任课数据子类表 任课起始年月
      ,d.RKZZNY as d_RKSJ_RKZZNY--任课数据子类表 任课终止年月
      ,d.RKZXS as d_RKSJ_RKZXS--任课数据子类表 任课总学时
      ,d.RKXDM as d_RKSJ_RKXDM--任课数据子类表 任课学段码
      ,[db].MC as d_RKSJ_RKXDM_MC--任课学段代码表 名称
      ,d.RKJSM as d_RKSJ_RKJSM--任课数据子类表 任课角色码
      ,[dc].MC as d_RKSJ_RKJSM_MC--任课角色代码表 名称
      ,d.SKBJ as d_RKSJ_SKBJ--任课数据子类表 授课班级
      ,d.SKRS as d_RKSJ_SKRS--任课数据子类表 授课人数
      ,d.ZKS as d_RKSJ_ZKS--任课数据子类表 周课时
      ,d.SFLT as d_RKSJ_SFLT--任课数据子类表 是否连堂
      ,[dd].MC as d_RKSJ_SFLT_MC--是否标志代码表 名称
      ,d.NJID as d_RKSJ_NJID--任课数据子类表 年级号
      ,d.XQID as d_RKSJ_XQID--任课数据子类表 学期
      ,d.XNID as d_RKSJ_XNID--任课数据子类表 学年

FROM dbo.EDU_ZXJX_05_A02_KSKM AS a LEFT OUTER JOIN
      dbo.EDU_ZXJX_05_A01_KS AS c ON a.SSKSID = c.ID /*所属考试ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZXJZ_07_02_RKSJ AS d ON a.JSRKID = d.ID /*教师任课编号*/ AND a.SCHOOLID = d.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_JY_RKXD AS [db] ON d.RKXDM = [db].DM /*任课学段码*/ LEFT OUTER JOIN
      dbo.EDU_JY_RKJS AS [dc] ON d.RKJSM = [dc].DM /*任课角色码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [dd] ON d.SFLT = [dd].DM /*是否连堂*/
GO
