
--学校配置表
CREATE VIEW [dbo].[VIEW_EDU_ELE_01_SCHOOL_DISP]
AS
SELECT a.[SCHOOLID]--学校ID
      ,a.[SCHOOLNAME]--学校名称
      ,a.[SCHOOLTYPE]--学校类型
      ,a.[XNID]--学年ID
      ,a.[XQID]--学期ID
      ,a.[MatchURL]--匹配url
      ,a.[MenhuURL]--门户url
      ,a.[MenhuWebid]--门户webid
      ,a.[LogLevel]--日志级别
      ,a.[ModuleIdList]--权限列表
      ,a.[EnableStatus]--启用状态
      ,a.[CreateTime]--开户时间
      ,a.[YXTID]--翼校通ID
      ,a.[LOGO]--图标
      ,a.[SBDM]--识别代码
      ,c.SCHOOLID as c_XQ_SCHOOLID--学期数据表 学校名
      ,c.XNID as c_XQ_XNID--学期数据表 学年
      ,c.XQM as c_XQ_XQM--学期数据表 学期码
      ,[cb].MC as c_XQ_XQM_MC--学期代码表 名称
      ,c.XQMC as c_XQ_XQMC--学期数据表 学期名称
      ,c.XQKSRQ as c_XQ_XQKSRQ--学期数据表 学期开始日期
      ,c.XQJSRQ as c_XQ_XQJSRQ--学期数据表 学期结束日期

FROM dbo.EDU_ELE_01_SCHOOL AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS c ON a.XQID = c.ID /*学期ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS [cb] ON c.XQM = [cb].DM /*学期码*/
GO
