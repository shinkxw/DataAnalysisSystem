
--学生评教提交记录表
CREATE VIEW [dbo].[VIEW_EDU_ZZJG_20_A08_XSPJTJJL_DISP]
AS
SELECT a.[ID]--编号
      ,a.[KPBJID]--考评班级ID
      ,a.[SBM]--识别码
      ,a.[IP]--IP地址
      ,a.[TJSJ]--提交时间
      ,b.SCHOOLID as b_XSPJKPBJ_SCHOOLID--学生评教考评班级表 学校
      ,b.KPID as b_XSPJKPBJ_KPID--学生评教考评班级表 考评ID
      ,b.BJMC as b_XSPJKPBJ_BJMC--学生评教考评班级表 班级名称
      ,b.BPJGIDLB as b_XSPJKPBJ_BPJGIDLB--学生评教考评班级表 被评教工ID列表
      ,b.BPJGXMLB as b_XSPJKPBJ_BPJGXMLB--学生评教考评班级表 被评教工姓名列表
      ,b.DYKCMCLB as b_XSPJKPBJ_DYKCMCLB--学生评教考评班级表 对应课程名称列表
      ,b.YPRS as b_XSPJKPBJ_YPRS--学生评教考评班级表 应评人数
      ,b.SBM as b_XSPJKPBJ_SBM--学生评教考评班级表 识别码
      ,b.KQSJ as b_XSPJKPBJ_KQSJ--学生评教考评班级表 开启时间
      ,b.ZDGBSJ as b_XSPJKPBJ_ZDGBSJ--学生评教考评班级表 自动关闭时间
      ,b.ZT as b_XSPJKPBJ_ZT--学生评教考评班级表 状态

FROM dbo.EDU_ZZJG_20_A08_XSPJTJJL AS a LEFT OUTER JOIN
      dbo.EDU_ZZJG_20_A06_XSPJKPBJ AS b ON a.KPBJID = b.ID /*考评班级ID*/
GO
