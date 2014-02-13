
--调查问卷题目表
CREATE VIEW [dbo].[VIEW_EDU_OAXT_32_A02_DCWJTM_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[WJID]--所属问卷
      ,a.[TypeID]--题目类型
      ,a.[Title]--题目
      ,a.[SSDL]--所属大类
      ,c.SCHOOLID as c_DCWJ_SCHOOLID--调查问卷数据表 学校
      ,c.Title as c_DCWJ_Title--调查问卷数据表 问卷名称
      ,c.Users as c_DCWJ_Users--调查问卷数据表 参选人员
      ,c.StartTime as c_DCWJ_StartTime--调查问卷数据表 开始时间
      ,c.EndTime as c_DCWJ_EndTime--调查问卷数据表 结束时间
      ,c.IsStart as c_DCWJ_IsStart--调查问卷数据表 是否开启

FROM dbo.EDU_OAXT_32_A02_DCWJTM AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_32_A01_DCWJ AS c ON a.WJID = c.ID /*所属问卷*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/
GO
