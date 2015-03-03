
--学分制课堂内容表
CREATE VIEW [dbo].[VIEW_EDU_ZXJX_53_A24_XFZKTNR_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[XFZJXBID]--学分制教学班ID
      ,a.[KTNR]--课堂内容
      ,a.[TJSJ]--添加时间
      ,c.SCHOOLID as c_XFZJXBSJ_SCHOOLID--学分制教学班数据表 学校
      ,c.XQID as c_XFZJXBSJ_XQID--学分制教学班数据表 学期ID
      ,c.ZRKJSID as c_XFZJXBSJ_ZRKJSID--学分制教学班数据表 主任课教师ID
      ,c.FRKJSID as c_XFZJXBSJ_FRKJSID--学分制教学班数据表 辅任课教师ID
      ,c.KCID as c_XFZJXBSJ_KCID--学分制教学班数据表 课程ID
      ,c.KKSJID as c_XFZJXBSJ_KKSJID--学分制教学班数据表 开课时间ID
      ,c.SKDD as c_XFZJXBSJ_SKDD--学分制教学班数据表 上课地点
      ,c.ZKS as c_XFZJXBSJ_ZKS--学分制教学班数据表 总课时
      ,c.BJKRNRS as c_XFZJXBSJ_BJKRNRS--学分制教学班数据表 班级可容纳人数
      ,c.ZDKBRS as c_XFZJXBSJ_ZDKBRS--学分制教学班数据表 最低开班人数
      ,c.ZT as c_XFZJXBSJ_ZT--学分制教学班数据表 状态
      ,c.BZ as c_XFZJXBSJ_BZ--学分制教学班数据表 备注
      ,c.KCMC as c_XFZJXBSJ_KCMC--学分制教学班数据表 课程名称
      ,c.SKBJIDLB as c_XFZJXBSJ_SKBJIDLB--学分制教学班数据表 授课班级ID列表
      ,c.SKBJMCLB as c_XFZJXBSJ_SKBJMCLB--学分制教学班数据表 授课班级名称列表
      ,c.JXBLX as c_XFZJXBSJ_JXBLX--学分制教学班数据表 教学班类型

FROM dbo.EDU_ZXJX_53_A24_XFZKTNR AS a LEFT OUTER JOIN
      dbo.EDU_ZXJX_53_A21_XFZJXBSJ AS c ON a.XFZJXBID = c.ID /*学分制教学班ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/
GO
