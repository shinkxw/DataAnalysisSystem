
--班级工作检查表
CREATE VIEW [dbo].[VIEW_EDU_OAXT_36_A02_BJGZJC_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校ID
      ,a.[GZLBID]--工作类别ID
      ,a.[BJ]--班级
      ,a.[RQ]--日期
      ,a.[JG]--结果
      ,a.[BJMC]--班级名称
      ,c.SCHOOLID as c_BJGZLB_SCHOOLID--班级工作类别表 学校ID
      ,c.GZLBMC as c_BJGZLB_GZLBMC--班级工作类别表 工作类别名称
      ,c.DJRYIDLB as c_BJGZLB_DJRYIDLB--班级工作类别表 登记人员ID列表
      ,c.DJRYXMLB as c_BJGZLB_DJRYXMLB--班级工作类别表 登记人员姓名列表

FROM dbo.EDU_OAXT_36_A02_BJGZJC AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_36_A01_BJGZLB AS c ON a.GZLBID = c.ID /*工作类别ID*/
GO
