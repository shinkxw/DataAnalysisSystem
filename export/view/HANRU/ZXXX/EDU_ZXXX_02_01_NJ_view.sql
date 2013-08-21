
--年级数据类表
CREATE VIEW [dbo].[VIEW_EDU_ZXXX_02_01_NJ_DISP]
AS
SELECT a.[SCHOOLID]--学校名
      ,a.[NJ]--年级号
      ,a.[NJMC]--年级名称

FROM dbo.EDU_ZXXX_02_01_NJ AS a
GO
