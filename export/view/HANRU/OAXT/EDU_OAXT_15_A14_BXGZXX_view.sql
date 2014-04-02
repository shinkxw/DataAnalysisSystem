
--报修故障信息表
CREATE VIEW [dbo].[VIEW_EDU_OAXT_15_A14_BXGZXX_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[BXLXID]--报修类型ID
      ,a.[GZXX]--故障信息
      ,c.SCHOOLID as c_BXLX_SCHOOLID--报修类型表 学校
      ,c.TypeName as c_BXLX_TypeName--报修类型表 类型名称
      ,c.Remark as c_BXLX_Remark--报修类型表 备注

FROM dbo.EDU_OAXT_15_A14_BXGZXX AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_15_A07_BXLX AS c ON a.BXLXID = c.ID /*报修类型ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/
GO
