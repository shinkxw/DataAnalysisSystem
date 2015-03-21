
--导师制活动表
CREATE VIEW [dbo].[VIEW_EDU_ZXXS_57_A11_DSZHD_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[XQID]--学期ID
      ,a.[DSID]--导师ID
      ,a.[HDMC]--活动名称
      ,a.[HDNR]--活动内容
      ,a.[KSSJ]--开始时间
      ,a.[JSSJ]--结束时间
      ,a.[BZ]--备注
      ,a.[XSIDLB]--学生ID列表
      ,a.[XSXMLB]--学生姓名列表
      ,c.SCHOOLID as c_XQ_SCHOOLID--学期数据表 学校名
      ,c.XNID as c_XQ_XNID--学期数据表 学年
      ,c.XQM as c_XQ_XQM--学期数据表 学期码
      ,[cb].MC as c_XQ_XQM_MC--学期代码表 名称
      ,c.XQMC as c_XQ_XQMC--学期数据表 学期名称
      ,c.XQKSRQ as c_XQ_XQKSRQ--学期数据表 学期开始日期
      ,c.XQJSRQ as c_XQ_XQJSRQ--学期数据表 学期结束日期
      ,d.SCHOOLID as d_DSZDS_SCHOOLID--导师制导师表 学校
      ,d.XQID as d_DSZDS_XQID--导师制导师表 学期ID
      ,d.JSID as d_DSZDS_JSID--导师制导师表 教师ID
      ,d.JUESEID as d_DSZDS_JUESEID--导师制导师表 角色ID
      ,d.TJSJ as d_DSZDS_TJSJ--导师制导师表 添加时间

FROM dbo.EDU_ZXXS_57_A11_DSZHD AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS c ON a.XQID = c.ID /*学期ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZXXS_57_A03_DSZDS AS d ON a.DSID = d.ID /*导师ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS [cb] ON c.XQM = [cb].DM /*学期码*/
GO
