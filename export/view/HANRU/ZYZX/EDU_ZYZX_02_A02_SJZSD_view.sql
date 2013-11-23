
--试卷知识点表
CREATE VIEW [dbo].[VIEW_EDU_ZYZX_02_A02_SJZSD_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[KCKID]--课程库ID
      ,a.[ZSDMC]--知识点名称
      ,c.SCHOOLID as c_KCK_SCHOOLID--课程库表 学校
      ,c.KCDM as c_KCK_KCDM--课程库表 课程代码
      ,c.KCMC as c_KCK_KCMC--课程库表 课程名称

FROM dbo.EDU_ZYZX_02_A02_SJZSD AS a LEFT OUTER JOIN
      dbo.EDU_ZYZX_03_A01_KCK AS c ON a.KCKID = c.ID /*课程库ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/
GO
