
--资产目录表
CREATE VIEW [dbo].[VIEW_EDU_OAXT_15_A01_ZCML_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[Name]--校产目录
      ,a.[Superid]--父目录ID
      ,a.[Remark]--备注
      ,c.SCHOOLID as c_ZCML_SCHOOLID--资产目录表 学校
      ,c.Name as c_ZCML_Name--资产目录表 校产目录
      ,c.Superid as c_ZCML_Superid--资产目录表 父目录ID
      ,c.Remark as c_ZCML_Remark--资产目录表 备注

FROM dbo.EDU_OAXT_15_A01_ZCML AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_15_A01_ZCML AS c ON a.Superid = c.ID /*父目录ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/
GO
