
--学生评教题目表
CREATE VIEW [dbo].[VIEW_EDU_ZXJZ_20_A03_XSPJTM_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[DFFSID]--打分方式ID
      ,a.[PJXM]--评教项目
      ,a.[PJZB]--评教指标
      ,a.[ZT]--状态
      ,c.SCHOOLID as c_XSPJDFFS_SCHOOLID--学生评教打分方式表 学校
      ,c.DFFSMC as c_XSPJDFFS_DFFSMC--学生评教打分方式表 打分方式名称
      ,c.ZT as c_XSPJDFFS_ZT--学生评教打分方式表 状态

FROM dbo.EDU_ZXJZ_20_A03_XSPJTM AS a LEFT OUTER JOIN
      dbo.EDU_ZXJZ_20_A01_XSPJDFFS AS c ON a.DFFSID = c.ID /*打分方式ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/
GO
