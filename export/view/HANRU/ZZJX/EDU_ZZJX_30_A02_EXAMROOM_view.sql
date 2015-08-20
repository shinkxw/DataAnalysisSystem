
--考场表
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_30_A02_EXAMROOM_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[Name]--考场名称
      ,a.[RoomID]--教室ID
      ,a.[ExamID]--考试ID
      ,a.[StuCount]--考生容纳人数
      ,c.SCHOOLID as c_CLASSROOM_SCHOOLID--教室表 学校
      ,c.Name as c_CLASSROOM_Name--教室表 教室名称
      ,c.Place as c_CLASSROOM_Place--教室表 地点
      ,c.Counts as c_CLASSROOM_Counts--教室表 座位数
      ,c.FullPlaceName as c_CLASSROOM_FullPlaceName--教室表 完整地点名称
      ,c.RecordID as c_CLASSROOM_RecordID--教室表 记录ID
      ,d.SCHOOLID as d_EXAM_SCHOOLID--考试表 学校
      ,d.Name as d_EXAM_Name--考试表 考试名称
      ,d.CJKSKMLM as d_EXAM_CJKSKMLM--考试表 参加考试科目列表
      ,d.StartDate as d_EXAM_StartDate--考试表 开始日期
      ,d.EndDate as d_EXAM_EndDate--考试表 截止日期
      ,d.XqID as d_EXAM_XqID--考试表 学期ID
      ,d.DffsID as d_EXAM_DffsID--考试表 登分方式

FROM dbo.EDU_ZZJX_30_A02_EXAMROOM AS a LEFT OUTER JOIN
      dbo.EDU_ZZJX_30_A01_CLASSROOM AS c ON a.RoomID = c.ID /*教室ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_32_A01_EXAM AS d ON a.ExamID = d.ID /*考试ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校*/
GO
