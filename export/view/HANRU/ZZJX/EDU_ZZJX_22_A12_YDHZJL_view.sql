
--月度汇总记录表
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_22_A12_YDHZJL_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[SXBID]--实习班ID
      ,a.[HZNR]--汇总内容
      ,a.[TJSJ]--添加时间
      ,c.SCHOOLID as c_SXBJGL_SCHOOLID--实习班级管理表 学校
      ,c.XNID as c_SXBJGL_XNID--实习班级管理表 学年ID
      ,c.XQID as c_SXBJGL_XQID--实习班级管理表 学期ID
      ,c.BJMC as c_SXBJGL_BJMC--实习班级管理表 班级名称
      ,c.BZRID as c_SXBJGL_BZRID--实习班级管理表 班主任ID

FROM dbo.EDU_ZZJX_22_A12_YDHZJL AS a LEFT OUTER JOIN
      dbo.EDU_ZZJX_21_A01_SXBJGL AS c ON a.SXBID = c.ID /*实习班ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/
GO
