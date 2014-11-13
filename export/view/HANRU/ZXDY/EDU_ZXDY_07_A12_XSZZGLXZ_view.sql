
--学生自主管理小组表
CREATE VIEW [dbo].[VIEW_EDU_ZXDY_07_A12_XSZZGLXZ_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校ID
      ,a.[GLJGID]--管理机构ID
      ,a.[ZZ]--组长
      ,a.[ZY]--组员
      ,a.[XZKH]--小组口号(目标)
      ,a.[PLSX]--排列顺序
      ,c.SCHOOLID as c_XSZZGLJG_SCHOOLID--学生自主管理机构表 学校ID
      ,c.JGMC as c_XSZZGLJG_JGMC--学生自主管理机构表 机构名称

FROM dbo.EDU_ZXDY_07_A12_XSZZGLXZ AS a LEFT OUTER JOIN
      dbo.EDU_ZXDY_07_A11_XSZZGLJG AS c ON a.GLJGID = c.ID /*管理机构ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/
GO
