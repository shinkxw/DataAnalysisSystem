
--学生评教考评题目表
CREATE VIEW [dbo].[VIEW_EDU_ZZJG_20_A05_XSPJKPTM_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[KPID]--考评ID
      ,a.[TMID]--考评题目ID
      ,c.SCHOOLID as c_XSPJKP_SCHOOLID--学生评教考评表 学校
      ,c.KPMC as c_XSPJKP_KPMC--学生评教考评表 考评名称
      ,c.KSSJ as c_XSPJKP_KSSJ--学生评教考评表 开始时间
      ,c.JSSJ as c_XSPJKP_JSSJ--学生评教考评表 结束时间
      ,c.ZT as c_XSPJKP_ZT--学生评教考评表 状态
      ,d.SCHOOLID as d_XSPJTM_SCHOOLID--学生评教题目表 学校
      ,d.DFFSID as d_XSPJTM_DFFSID--学生评教题目表 打分方式ID
      ,d.PJXM as d_XSPJTM_PJXM--学生评教题目表 评教项目
      ,d.PJZB as d_XSPJTM_PJZB--学生评教题目表 评教指标
      ,d.ZT as d_XSPJTM_ZT--学生评教题目表 状态

FROM dbo.EDU_ZZJG_20_A05_XSPJKPTM AS a LEFT OUTER JOIN
      dbo.EDU_ZZJG_20_A04_XSPJKP AS c ON a.KPID = c.ID /*考评ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_20_A03_XSPJTM AS d ON a.TMID = d.ID /*考评题目ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校*/
GO
