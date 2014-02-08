
--实习记录表
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_22_A01_SXJL_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[SXSID]--实习生ID
      ,a.[KSSJ]--开始时间
      ,a.[JSSJ]--结束时间
      ,a.[SXNR]--实习内容
      ,a.[SXFS]--实习反思
      ,a.[ZWPD]--自我评定
      ,a.[ZDSFXM]--指导师傅姓名
      ,a.[ZDSFPY]--指导师傅评语
      ,a.[ZDSFPDSJ]--指导师傅评定时间
      ,a.[ZFPD]--师傅评定
      ,a.[ZDJSXM]--指导教师姓名
      ,a.[ZDJSPY]--指导教师评语
      ,a.[ZDJSPDSJ]--指导教师评定时间
      ,a.[JSPD]--教师评定
      ,c.SCHOOLID as c_SXSGL_SCHOOLID--实习生管理表 学校
      ,c.SZBID as c_SXSGL_SZBID--实习生管理表 实习班ID
      ,c.StuID as c_SXSGL_StuID--实习生管理表 学生ID
      ,c.Resume as c_SXSGL_Resume--实习生管理表 简历
      ,c.Status as c_SXSGL_Status--实习生管理表 实习生状态
      ,c.SXXYS as c_SXSGL_SXXYS--实习生管理表 实习协议书
      ,c.SXSXM as c_SXSGL_SXSXM--实习生管理表 实习生姓名
      ,c.XQID as c_SXSGL_XQID--实习生管理表 学期ID

FROM dbo.EDU_ZZJX_22_A01_SXJL AS a LEFT OUTER JOIN
      dbo.EDU_ZZJX_21_A02_SXSGL AS c ON a.SXSID = c.ID /*实习生ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/
GO
