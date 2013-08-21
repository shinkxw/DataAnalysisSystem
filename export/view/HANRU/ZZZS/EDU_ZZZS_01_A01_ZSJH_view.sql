
--招生计划数据表
CREATE VIEW [dbo].[VIEW_EDU_ZZZS_01_A01_ZSJH_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校名
      ,a.[ZYXXID]--专业基本信息
      ,a.[XNID]--学年
      ,a.[ZSJHRS]--招生计划
      ,a.[BZ]--备注
      ,b.SCHOOLNAME as b_SCHOOL_SCHOOLNAME--学校配置表 学校名称
      ,b.SCHOOLTYPE as b_SCHOOL_SCHOOLTYPE--学校配置表 学校类型
      ,b.XNID as b_SCHOOL_XNID--学校配置表 学年ID
      ,b.XQID as b_SCHOOL_XQID--学校配置表 学期ID
      ,b.MatchURL as b_SCHOOL_MatchURL--学校配置表 匹配url
      ,b.LogLevel as b_SCHOOL_LogLevel--学校配置表 日志级别
      ,b.ModuleIdList as b_SCHOOL_ModuleIdList--学校配置表 权限列表
      ,c.SCHOOLID as c_ZYXX_SCHOOLID--专业基本信息数据表 学校名
      ,c.ZYDM as c_ZYXX_ZYDM--专业基本信息数据表 专业代码
      ,cb.ZYMLLB as c_ZYXX_ZYDM_ZYMLLB--自建专业代码 专业目录类别
      ,cb.MC as c_ZYXX_ZYDM_MC--自建专业代码 名称
      ,c.ZYMC as c_ZYXX_ZYMC--专业基本信息数据表 专业名称
      ,c.ZYYWMC as c_ZYXX_ZYYWMC--专业基本信息数据表 专业英文名称
      ,c.XZ as c_ZYXX_XZ--专业基本信息数据表 学制
      ,c.ZYFXMC as c_ZYXX_ZYFXMC--专业基本信息数据表 专业方向名称
      ,c.ZYJC as c_ZYXX_ZYJC--专业基本信息数据表 专业简称
      ,c.JLNY as c_ZYXX_JLNY--专业基本信息数据表 建立年月
      ,c.ZYJSS as c_ZYXX_ZYJSS--专业基本信息数据表 专业教师数
      ,c.KSJGH as c_ZYXX_KSJGH--专业基本信息数据表 开设机构号
      ,c.ZXF as c_ZYXX_ZXF--专业基本信息数据表 总学分
      ,c.SSZYML as c_ZYXX_SSZYML--专业基本信息数据表 所属专业目录
      ,cc.MC as c_ZYXX_SSZYML_MC--专业目录代码 名称
      ,c.ZYLB as c_ZYXX_ZYLB--专业基本信息数据表 专业类别名称
      ,d.SCHOOLID as d_XN_SCHOOLID--学年表 学校名
      ,d.XN as d_XN_XN--学年表 学年

FROM dbo.EDU_ZZZS_01_A01_ZSJH AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_01_01_ZYXX AS c ON a.ZYXXID = c.ZYBH /*专业基本信息*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_SYS_01_XN AS d ON a.XNID = d.ID /*学年*/ AND a.SCHOOLID = d.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZJZY AS cb ON c.ZYDM = cb.DM /*专业代码*/ AND c.SSZYML = cb.ZYMLLB /*所属专业目录*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZYML AS cc ON c.SSZYML = cc.DM /*所属专业目录*/
GO
