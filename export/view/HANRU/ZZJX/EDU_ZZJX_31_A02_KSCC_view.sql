
--考试场次表
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_31_A02_KSCC_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[ExamID]--考试ID
      ,a.[Name]--场次名称
      ,a.[TypeID]--考试时段类型
      ,a.[ExamDate]--考试日期
      ,c.SCHOOLID as c_EXAM_SCHOOLID--考试表 学校
      ,c.Name as c_EXAM_Name--考试表 考试名称
      ,c.CJKSKMLM as c_EXAM_CJKSKMLM--考试表 参加考试科目列表
      ,c.StartDate as c_EXAM_StartDate--考试表 开始日期
      ,c.EndDate as c_EXAM_EndDate--考试表 截止日期
      ,c.XqID as c_EXAM_XqID--考试表 学期ID
      ,c.DffsID as c_EXAM_DffsID--考试表 登分方式
      ,d.SCHOOLID as d_KSSDLX_SCHOOLID--考试时段类型表 学校
      ,d.TypeName as d_KSSDLX_TypeName--考试时段类型表 类型名
      ,d.StartTime as d_KSSDLX_StartTime--考试时段类型表 开始时间
      ,d.EndTime as d_KSSDLX_EndTime--考试时段类型表 结束时间

FROM dbo.EDU_ZZJX_31_A02_KSCC AS a LEFT OUTER JOIN
      dbo.EDU_ZZJX_32_A01_EXAM AS c ON a.ExamID = c.ID /*考试ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_31_A01_KSSDLX AS d ON a.TypeID = d.ID /*考试时段类型*/ AND a.SCHOOLID = d.SCHOOLID /*学校*/
GO
