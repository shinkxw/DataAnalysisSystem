
--学生五位一体值勤人员安排表
CREATE VIEW [dbo].[VIEW_EDU_ZZXS_14_A06_XSWWYTZQRYAP_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[ZQXMID]--值勤项目ID
      ,a.[ZQRYLX]--值勤人员类型
      ,a.[ZQRYID]--值勤人员ID
      ,a.[ZQKSSJ]--值勤开始时间
      ,a.[ZQJSSJ]--值勤结束时间
      ,c.SCHOOLID as c_XSWWYTZQXM_SCHOOLID--学生五位一体值勤项目表 学校
      ,c.ZQXMMC as c_XSWWYTZQXM_ZQXMMC--学生五位一体值勤项目表 值勤项目名称

FROM dbo.EDU_ZZXS_14_A06_XSWWYTZQRYAP AS a LEFT OUTER JOIN
      dbo.EDU_ZZXS_14_A05_XSWWYTZQXM AS c ON a.ZQXMID = c.ID /*值勤项目ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/
GO
