
--学生五位一体值勤数据表
CREATE VIEW [dbo].[VIEW_EDU_ZZXS_14_A04_XSWWYTZQSJ_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[ZQXMID]--值勤项目ID
      ,a.[JXBMC]--教学部名称
      ,a.[ZQRYLX]--值勤人员类型
      ,a.[ZQRYID]--值勤人员ID
      ,a.[ZQNR]--值勤内容
      ,a.[ZQSJ]--值勤时间
      ,a.[TJSJ]--添加时间
      ,c.SCHOOLID as c_XSWWYTZQXM_SCHOOLID--学生五位一体值勤项目表 学校
      ,c.ZQXMMC as c_XSWWYTZQXM_ZQXMMC--学生五位一体值勤项目表 值勤项目名称

FROM dbo.EDU_ZZXS_14_A04_XSWWYTZQSJ AS a LEFT OUTER JOIN
      dbo.EDU_ZZXS_14_A05_XSWWYTZQXM AS c ON a.ZQXMID = c.ID /*值勤项目ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/
GO
