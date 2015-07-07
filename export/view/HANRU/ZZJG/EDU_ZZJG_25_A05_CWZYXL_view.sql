
--财务专业小类表
CREATE VIEW [dbo].[VIEW_EDU_ZZJG_25_A05_CWZYXL_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[ZYDLID]--专业大类ID
      ,a.[ZYXLDM]--专业小类代码
      ,a.[ZYXLMC]--专业小类名称
      ,a.[JSS]--教师数
      ,a.[XSS]--学生数
      ,c.SCHOOLID as c_CWZYDL_SCHOOLID--财务专业大类表 学校
      ,c.ZYDLDM as c_CWZYDL_ZYDLDM--财务专业大类表 专业大类代码
      ,c.ZYDLMC as c_CWZYDL_ZYDLMC--财务专业大类表 专业大类名称

FROM dbo.EDU_ZZJG_25_A05_CWZYXL AS a LEFT OUTER JOIN
      dbo.EDU_ZZJG_25_A04_CWZYDL AS c ON a.ZYDLID = c.ID /*专业大类ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/
GO
