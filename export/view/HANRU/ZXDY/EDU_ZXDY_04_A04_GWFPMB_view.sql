
--岗位分配模板表
CREATE VIEW [dbo].[VIEW_EDU_ZXDY_04_A04_GWFPMB_DISP]
AS
SELECT a.[ID]--岗位分配模板表ID
      ,a.[SCHOOLID]--学校ID
      ,a.[MBMC]--模板名称

FROM dbo.EDU_ZXDY_04_A04_GWFPMB AS a
GO
