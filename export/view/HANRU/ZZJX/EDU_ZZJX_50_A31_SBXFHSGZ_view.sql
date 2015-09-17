
--上报学分换算规则表
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_50_A31_SBXFHSGZ_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[XXKCLBID]--选修课程类别ID
      ,a.[CJSX]--成绩上限
      ,a.[CJXX]--成绩下限
      ,a.[XFHSBL]--学分换算比例
      ,a.[YXJ]--优先级
      ,c.SCHOOLID as c_XXKCLB_SCHOOLID--选修课程类别表 学校
      ,c.LBMC as c_XXKCLB_LBMC--选修课程类别表 类别名称
      ,c.JJ as c_XXKCLB_JJ--选修课程类别表 简介
      ,c.ZGTSXKSL as c_XXKCLB_ZGTSXKSL--选修课程类别表 最高同时选课数量
      ,c.SFYXTMKCDX as c_XXKCLB_SFYXTMKCDX--选修课程类别表 是否允许同名课程多选

FROM dbo.EDU_ZZJX_50_A31_SBXFHSGZ AS a LEFT OUTER JOIN
      dbo.EDU_ZZJX_50_A01_XXKCLB AS c ON a.XXKCLBID = c.ID /*选修课程类别ID*/
GO
