
--机构岗位表
CREATE VIEW [dbo].[VIEW_EDU_ZXXX_04_A01_JGGW_DISP]
AS
SELECT a.[ID]--岗位表ID
      ,a.[SCHOOLID]--学校ID
      ,a.[JGH]--机构号
      ,a.[GWBH]--岗位编号
      ,a.[GWMC]--岗位名称
      ,a.[GWSM]--岗位说明
      ,b.SCHOOLNAME as b_SCHOOL_SCHOOLNAME--学校配置表 学校名称
      ,b.SCHOOLTYPE as b_SCHOOL_SCHOOLTYPE--学校配置表 学校类型
      ,b.XNID as b_SCHOOL_XNID--学校配置表 学年ID
      ,b.XQID as b_SCHOOL_XQID--学校配置表 学期ID
      ,b.MatchURL as b_SCHOOL_MatchURL--学校配置表 匹配url
      ,b.LogLevel as b_SCHOOL_LogLevel--学校配置表 日志级别
      ,b.ModuleIdList as b_SCHOOL_ModuleIdList--学校配置表 权限列表
      ,c.SCHOOLID as c_JG_SCHOOLID--机构数据类表 学校名
      ,c.LSJGH as c_JG_LSJGH--机构数据类表 隶属机构号
      ,c.JGMC as c_JG_JGMC--机构数据类表 机构名称
      ,c.JGJC as c_JG_JGJC--机构数据类表 机构简称
      ,c.FZRGH as c_JG_FZRGH--机构数据类表 负责人工号

FROM dbo.EDU_ZXXX_04_A01_JGGW AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_04_01_JG AS c ON a.JGH = c.JGH /*机构号*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/
GO
