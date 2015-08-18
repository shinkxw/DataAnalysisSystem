
--导师制角色表
CREATE VIEW [dbo].[VIEW_EDU_ZXXS_57_A02_DSZJS_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[XQID]--学期ID
      ,a.[JSMC]--角色名称
      ,a.[GNIDLB]--功能ID列表
      ,a.[GNMCLB]--功能名称列表
      ,a.[JSLX]--角色类型
      ,a.[NJID]--年级ID
      ,a.[KXXSSX]--可选学生上限
      ,c.SCHOOLID as c_XQ_SCHOOLID--学期数据表 学校名
      ,c.XNID as c_XQ_XNID--学期数据表 学年
      ,c.XQM as c_XQ_XQM--学期数据表 学期码
      ,[cb].MC as c_XQ_XQM_MC--学期代码表 名称
      ,c.XQMC as c_XQ_XQMC--学期数据表 学期名称
      ,c.XQKSRQ as c_XQ_XQKSRQ--学期数据表 学期开始日期
      ,c.XQJSRQ as c_XQ_XQJSRQ--学期数据表 学期结束日期
      ,d.SCHOOLID as d_NJ_SCHOOLID--年级数据类表 学校名
      ,d.NJMC as d_NJ_NJMC--年级数据类表 年级名称
      ,d.ZT as d_NJ_ZT--年级数据类表 状态
      ,d.PLSX as d_NJ_PLSX--年级数据类表 排列顺序

FROM dbo.EDU_ZXXS_57_A02_DSZJS AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS c ON a.XQID = c.ID /*学期ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_02_01_NJ AS d ON a.NJID = d.NJ /*年级ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS [cb] ON c.XQM = [cb].DM /*学期码*/
GO
