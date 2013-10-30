
--团费收缴记录表
CREATE VIEW [dbo].[VIEW_EDU_ZZXS_17_A02_TFSJJL_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[XQID]--学期ID
      ,a.[TYXXID]--团员信息表ID
      ,a.[SJJE]--收缴金额
      ,a.[TJSJ]--添加时间
      ,c.SCHOOLID as c_XQ_SCHOOLID--学期数据表 学校名
      ,c.XNID as c_XQ_XNID--学期数据表 学年
      ,c.XQM as c_XQ_XQM--学期数据表 学期码
      ,cb.MC as c_XQ_XQM_MC--学期代码表 名称
      ,c.XQMC as c_XQ_XQMC--学期数据表 学期名称
      ,c.XQKSRQ as c_XQ_XQKSRQ--学期数据表 学期开始日期
      ,c.XQJSRQ as c_XQ_XQJSRQ--学期数据表 学期结束日期
      ,d.SCHOOLID as d_TYXX_SCHOOLID--团员信息扩展表 学校
      ,d.BJID as d_TYXX_BJID--团员信息扩展表 班级ID
      ,d.XSXXID as d_TYXX_XSXXID--团员信息扩展表 学生ID
      ,d.RTSJ as d_TYXX_RTSJ--团员信息扩展表 入团时间
      ,d.ZRD as d_TYXX_ZRD--团员信息扩展表 转入地
      ,d.ZRSJ as d_TYXX_ZRSJ--团员信息扩展表 转入时间
      ,d.ZCSJ as d_TYXX_ZCSJ--团员信息扩展表 转出时间
      ,d.DQZT as d_TYXX_DQZT--团员信息扩展表 当前状态
      ,d.JBJSID as d_TYXX_JBJSID--团员信息扩展表 经办教师ID
      ,d.BZ as d_TYXX_BZ--团员信息扩展表 备注

FROM dbo.EDU_ZZXS_17_A02_TFSJJL AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS c ON a.XQID = c.ID /*学期ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZXS_17_A01_TYXX AS d ON a.TYXXID = d.ID /*团员信息表ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS cb ON c.XQM = cb.DM /*学期码*/
GO
