
--问卷题目选项表
CREATE VIEW [dbo].[VIEW_EDU_OAXT_32_A03_DCWJTMXX_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[TMID]--所属题目
      ,a.[WJID]--所属问卷
      ,a.[SelectItem]--选项
      ,a.[SelectContent]--选项内容
      ,a.[Votes]--票数
      ,a.[VoteUsers]--投票人
      ,a.[VoteUsersXM]--投票人姓名
      ,c.SCHOOLID as c_DCWJTM_SCHOOLID--调查问卷题目表 学校
      ,c.WJID as c_DCWJTM_WJID--调查问卷题目表 所属问卷
      ,c.TypeID as c_DCWJTM_TypeID--调查问卷题目表 题目类型
      ,c.Title as c_DCWJTM_Title--调查问卷题目表 题目
      ,d.SCHOOLID as d_DCWJ_SCHOOLID--调查问卷数据表 学校
      ,d.Title as d_DCWJ_Title--调查问卷数据表 问卷名称
      ,d.Type as d_DCWJ_Type--调查问卷数据表 调查对象类型
      ,d.Users as d_DCWJ_Users--调查问卷数据表 参选人员
      ,d.DoneUsers as d_DCWJ_DoneUsers--调查问卷数据表 已参选人员
      ,d.StartTime as d_DCWJ_StartTime--调查问卷数据表 开始时间
      ,d.EndTime as d_DCWJ_EndTime--调查问卷数据表 结束时间
      ,d.IsStart as d_DCWJ_IsStart--调查问卷数据表 是否开启

FROM dbo.EDU_OAXT_32_A03_DCWJTMXX AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_32_A02_DCWJTM AS c ON a.TMID = c.ID /*所属题目*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_32_A01_DCWJ AS d ON a.WJID = d.ID /*所属问卷*/ AND a.SCHOOLID = d.SCHOOLID /*学校*/
GO
