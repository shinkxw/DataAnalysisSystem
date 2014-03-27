
--考核大类项目表
CREATE VIEW [dbo].[VIEW_EDU_ZXXS_51_A02_KHDLXM_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[SSDLID]--所属大类ID
      ,a.[DLXMMC]--大类项目名称
      ,a.[FZLX]--分值类型
      ,a.[XMZGF]--项目最高分
      ,c.SCHOOLID as c_KHDL_SCHOOLID--考核大类表 学校
      ,c.MC as c_KHDL_MC--考核大类表 名称
      ,c.KHDX as c_KHDL_KHDX--考核大类表 考核对象
      ,c.DJFS as c_KHDL_DJFS--考核大类表 登记方式
      ,c.KDJYHIDLB as c_KHDL_KDJYHIDLB--考核大类表 可登记用户ID列表
      ,c.KDJYHXMLB as c_KHDL_KDJYHXMLB--考核大类表 可登记用户姓名列表

FROM dbo.EDU_ZXXS_51_A02_KHDLXM AS a LEFT OUTER JOIN
      dbo.EDU_ZXXS_51_A01_KHDL AS c ON a.SSDLID = c.ID /*所属大类ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/
GO
