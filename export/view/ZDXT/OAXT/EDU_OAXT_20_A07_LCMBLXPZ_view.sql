
--流程模板类型配置表
CREATE VIEW [dbo].[VIEW_EDU_OAXT_20_A07_LCMBLXPZ_DISP]
AS
SELECT a.[LCMBLXID]--流程模板类型ID
      ,a.[SCHOOLID]--学校
      ,a.[BSYLC]--不使用流程
      ,b.LXMC as b_LCMBLX_LXMC--流程模板类型表 类型名称
      ,b.BZ as b_LCMBLX_BZ--流程模板类型表 备注

FROM dbo.EDU_OAXT_20_A07_LCMBLXPZ AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_20_A01_LCMBLX AS b ON a.LCMBLXID = b.ID /*流程模板类型ID*/
GO
