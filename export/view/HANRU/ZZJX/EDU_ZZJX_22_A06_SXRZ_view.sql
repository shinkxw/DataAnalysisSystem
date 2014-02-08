
--实习日志表
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_22_A06_SXRZ_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[SXSID]--实习生ID
      ,a.[TJSJ]--添加时间
      ,a.[RZBT]--日志标题
      ,a.[RZNR]--日志内容
      ,c.SCHOOLID as c_SXSGL_SCHOOLID--实习生管理表 学校
      ,c.SZBID as c_SXSGL_SZBID--实习生管理表 实习班ID
      ,c.StuID as c_SXSGL_StuID--实习生管理表 学生ID
      ,c.Resume as c_SXSGL_Resume--实习生管理表 简历
      ,c.Status as c_SXSGL_Status--实习生管理表 实习生状态
      ,c.SXXYS as c_SXSGL_SXXYS--实习生管理表 实习协议书
      ,c.SXSXM as c_SXSGL_SXSXM--实习生管理表 实习生姓名
      ,c.XQID as c_SXSGL_XQID--实习生管理表 学期ID

FROM dbo.EDU_ZZJX_22_A06_SXRZ AS a LEFT OUTER JOIN
      dbo.EDU_ZZJX_21_A02_SXSGL AS c ON a.SXSID = c.ID /*实习生ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/
GO
