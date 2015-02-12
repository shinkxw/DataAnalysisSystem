
--导师制角色模板表
CREATE VIEW [dbo].[VIEW_EDU_ZXXS_57_A06_DSZJSMB_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[XQID]--学期ID
      ,a.[JSID]--角色ID
      ,a.[MC]--名称
      ,a.[BJT]--背景图
      ,a.[TJSJ]--添加时间
      ,c.SCHOOLID as c_XQ_SCHOOLID--学期数据表 学校名
      ,c.XNID as c_XQ_XNID--学期数据表 学年
      ,c.XQM as c_XQ_XQM--学期数据表 学期码
      ,[cb].MC as c_XQ_XQM_MC--学期代码表 名称
      ,c.XQMC as c_XQ_XQMC--学期数据表 学期名称
      ,c.XQKSRQ as c_XQ_XQKSRQ--学期数据表 学期开始日期
      ,c.XQJSRQ as c_XQ_XQJSRQ--学期数据表 学期结束日期
      ,d.SCHOOLID as d_DSZJS_SCHOOLID--导师制角色表 学校
      ,d.XQID as d_DSZJS_XQID--导师制角色表 学期ID
      ,d.JSMC as d_DSZJS_JSMC--导师制角色表 角色名称
      ,d.GNIDLB as d_DSZJS_GNIDLB--导师制角色表 功能ID列表
      ,d.GNMCLB as d_DSZJS_GNMCLB--导师制角色表 功能名称列表

FROM dbo.EDU_ZXXS_57_A06_DSZJSMB AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS c ON a.XQID = c.ID /*学期ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZXXS_57_A02_DSZJS AS d ON a.JSID = d.ID /*角色ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS [cb] ON c.XQM = [cb].DM /*学期码*/
GO
