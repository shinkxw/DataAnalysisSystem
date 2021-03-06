
--实习生简历表
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_22_A08_SXSJL_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[SXSID]--实习生ID
      ,a.[JLMC]--简历名称
      ,a.[JLNR]--简历内容
      ,c.SCHOOLID as c_SXSGL_SCHOOLID--实习生管理表 学校
      ,c.SZBID as c_SXSGL_SZBID--实习生管理表 实习班ID
      ,c.StuID as c_SXSGL_StuID--实习生管理表 学生ID
      ,c.ZT as c_SXSGL_ZT--实习生管理表 实习生状态
      ,c.SFSJSXXYS as c_SXSGL_SFSJSXXYS--实习生管理表 是否上交实习协议书
      ,c.SXSXM as c_SXSGL_SXSXM--实习生管理表 实习生姓名
      ,c.XQID as c_SXSGL_XQID--实习生管理表 学期ID
      ,c.DQSXGWID as c_SXSGL_DQSXGWID--实习生管理表 当前实习岗位ID
      ,c.ZGCS as c_SXSGL_ZGCS--实习生管理表 转岗次数

FROM dbo.EDU_ZZJX_22_A08_SXSJL AS a LEFT OUTER JOIN
      dbo.EDU_ZZJX_21_A02_SXSGL AS c ON a.SXSID = c.ID /*实习生ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/
GO
