
--住委会成员表
CREATE VIEW [dbo].[VIEW_EDU_ZZFC_08_A03_ZWHCY_DISP]
AS
SELECT a.[SCHOOLID]--学校ID
      ,a.[ID]--成员ID
      ,a.[YHID]--用户ID
      ,a.[YHLX]--用户类型
      ,a.[CYXM]--成员姓名
      ,a.[TJSJ]--添加时间
      ,a.[ZWMC]--职位名称
      ,a.[GZNR]--工作内容
      ,b.SCHOOLNAME as b_SCHOOL_SCHOOLNAME--学校配置表 学校名称
      ,b.SCHOOLTYPE as b_SCHOOL_SCHOOLTYPE--学校配置表 学校类型
      ,b.XNID as b_SCHOOL_XNID--学校配置表 学年ID
      ,b.XQID as b_SCHOOL_XQID--学校配置表 学期ID
      ,b.MatchURL as b_SCHOOL_MatchURL--学校配置表 匹配url
      ,b.LogLevel as b_SCHOOL_LogLevel--学校配置表 日志级别
      ,b.ModuleIdList as b_SCHOOL_ModuleIdList--学校配置表 权限列表

FROM dbo.EDU_ZZFC_08_A03_ZWHCY AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*学校ID*/
GO
