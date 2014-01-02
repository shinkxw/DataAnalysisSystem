
--学生评教考评班级表
CREATE VIEW [dbo].[VIEW_EDU_ZZJG_20_A06_XSPJKPBJ_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[KPID]--考评ID
      ,a.[BJMC]--班级名称
      ,a.[BPJGIDLB]--被评教工ID列表
      ,a.[DYKCMCLB]--对应课程名称列表
      ,a.[YPRS]--应评人数
      ,a.[SBM]--识别码
      ,a.[KQSJ]--开启时间
      ,a.[ZDGBSJ]--自动关闭时间
      ,a.[ZT]--状态
      ,c.SCHOOLID as c_XSPJKP_SCHOOLID--学生评教考评表 学校
      ,c.KPMC as c_XSPJKP_KPMC--学生评教考评表 考评名称
      ,c.KSSJ as c_XSPJKP_KSSJ--学生评教考评表 开始时间
      ,c.JSSJ as c_XSPJKP_JSSJ--学生评教考评表 结束时间
      ,c.ZT as c_XSPJKP_ZT--学生评教考评表 状态

FROM dbo.EDU_ZZJG_20_A06_XSPJKPBJ AS a LEFT OUTER JOIN
      dbo.EDU_ZZJG_20_A04_XSPJKP AS c ON a.KPID = c.ID /*考评ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/
GO
