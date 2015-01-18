
--必修课作业内容表
CREATE VIEW [dbo].[VIEW_EDU_ZXJX_53_A27_BXKZYNR_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[BXKJXBID]--必修课教学班ID
      ,a.[ZYNR]--作业内容
      ,a.[TJSJ]--添加时间
      ,c.SCHOOLID as c_BXKJXBSJ_SCHOOLID--必修课教学班数据表 学校
      ,c.XQID as c_BXKJXBSJ_XQID--必修课教学班数据表 学期ID
      ,c.ZRKJSID as c_BXKJXBSJ_ZRKJSID--必修课教学班数据表 主任课教师ID
      ,c.FRKJSID as c_BXKJXBSJ_FRKJSID--必修课教学班数据表 辅任课教师ID
      ,c.KCID as c_BXKJXBSJ_KCID--必修课教学班数据表 课程ID
      ,c.KKSJID as c_BXKJXBSJ_KKSJID--必修课教学班数据表 开课时间ID
      ,c.SKDD as c_BXKJXBSJ_SKDD--必修课教学班数据表 上课地点
      ,c.ZKS as c_BXKJXBSJ_ZKS--必修课教学班数据表 总课时
      ,c.BJKRNRS as c_BXKJXBSJ_BJKRNRS--必修课教学班数据表 班级可容纳人数
      ,c.ZDKBRS as c_BXKJXBSJ_ZDKBRS--必修课教学班数据表 最低开班人数
      ,c.ZT as c_BXKJXBSJ_ZT--必修课教学班数据表 状态
      ,c.BZ as c_BXKJXBSJ_BZ--必修课教学班数据表 备注

FROM dbo.EDU_ZXJX_53_A27_BXKZYNR AS a LEFT OUTER JOIN
      dbo.EDU_ZXJX_53_A21_BXKJXBSJ AS c ON a.BXKJXBID = c.ID /*必修课教学班ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/
GO
