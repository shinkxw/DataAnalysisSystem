
--节次
CREATE VIEW [dbo].[VIEW_EDU_ELE_05_JC_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校名
      ,a.[SDID]--所属时段ID
      ,a.[MC]--名称
      ,a.[KSXS]--开始小时
      ,a.[KSFZ]--开始分钟
      ,a.[JSXS]--结束小时
      ,a.[JSFZ]--结束分钟
      ,c.SCHOOLID as c_SD_SCHOOLID--时段 学校名
      ,c.MC as c_SD_MC--时段 名称

FROM dbo.EDU_ELE_05_JC AS a LEFT OUTER JOIN
      dbo.EDU_ELE_05_SD AS c ON a.SDID = c.ID /*所属时段ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/
GO
