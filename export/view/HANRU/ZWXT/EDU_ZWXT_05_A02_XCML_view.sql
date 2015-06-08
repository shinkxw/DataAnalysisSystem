
--校产目录表
CREATE VIEW [dbo].[VIEW_EDU_ZWXT_05_A02_XCML_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校ID
      ,a.[MLMC]--目录名称
      ,a.[FMLID]--父目录ID
      ,c.SCHOOLID as c_XCML_SCHOOLID--校产目录表 学校ID
      ,c.MLMC as c_XCML_MLMC--校产目录表 目录名称
      ,c.FMLID as c_XCML_FMLID--校产目录表 父目录ID

FROM dbo.EDU_ZWXT_05_A02_XCML AS a LEFT OUTER JOIN
      dbo.EDU_ZWXT_05_A02_XCML AS c ON a.FMLID = c.ID /*父目录ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/
GO
