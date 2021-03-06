
--工作内容评论表
CREATE VIEW [dbo].[VIEW_EDU_ZYFZ_02_A05_GZNRPL_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[GZNRID]--工作内容ID
      ,a.[PLNR]--评论内容
      ,a.[PLR]--评论人
      ,a.[PLSJ]--评论时间
      ,c.SCHOOLID as c_GZNR_SCHOOLID--工作内容表 学校
      ,c.BT as c_GZNR_BT--工作内容表 标题
      ,c.GJC as c_GZNR_GJC--工作内容表 关键词
      ,c.SSLMID as c_GZNR_SSLMID--工作内容表 所属栏目ID
      ,c.SSXKID as c_GZNR_SSXKID--工作内容表 所属学科ID
      ,c.SSNJID as c_GZNR_SSNJID--工作内容表 所属年级ID
      ,c.NR as c_GZNR_NR--工作内容表 内容
      ,c.FBRID as c_GZNR_FBRID--工作内容表 发布人ID
      ,c.FBSJ as c_GZNR_FBSJ--工作内容表 发布时间
      ,c.LLL as c_GZNR_LLL--工作内容表 浏览量
      ,c.XQID as c_GZNR_XQID--工作内容表 学期ID
      ,c.SHZT as c_GZNR_SHZT--工作内容表 审核状态

FROM dbo.EDU_ZYFZ_02_A05_GZNRPL AS a LEFT OUTER JOIN
      dbo.EDU_ZYFZ_02_A04_GZNR AS c ON a.GZNRID = c.ID /*工作内容ID*/
GO
