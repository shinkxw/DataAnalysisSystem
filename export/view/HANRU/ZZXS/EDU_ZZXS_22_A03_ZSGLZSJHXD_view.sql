
--招生管理招生计划详单表
CREATE VIEW [dbo].[VIEW_EDU_ZZXS_22_A03_ZSGLZSJHXD_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[JHID]--计划ID
      ,a.[ZYMC]--专业名称
      ,a.[ZYID]--专业ID
      ,a.[ZSRS]--招生人数
      ,a.[ZYJS]--专业介绍
      ,c.SCHOOLID as c_ZSGLZSJH_SCHOOLID--招生管理招生计划表 学校
      ,c.JHMC as c_ZSGLZSJH_JHMC--招生管理招生计划表 计划名称
      ,c.XNID as c_ZSGLZSJH_XNID--招生管理招生计划表 学年ID
      ,c.KG as c_ZSGLZSJH_KG--招生管理招生计划表 开关
      ,d.SCHOOLID as d_ZYXX_SCHOOLID--专业基本信息数据表 学校名
      ,d.ZYDM as d_ZYXX_ZYDM--专业基本信息数据表 专业代码
      ,[db].ZYMLLB as d_ZYXX_ZYDM_ZYMLLB--自建专业代码 专业目录类别
      ,[db].MC as d_ZYXX_ZYDM_MC--自建专业代码 名称
      ,d.ZYMC as d_ZYXX_ZYMC--专业基本信息数据表 专业名称
      ,d.ZYYWMC as d_ZYXX_ZYYWMC--专业基本信息数据表 专业英文名称
      ,d.XZ as d_ZYXX_XZ--专业基本信息数据表 学制
      ,d.ZYFXMC as d_ZYXX_ZYFXMC--专业基本信息数据表 专业方向名称
      ,d.ZYJC as d_ZYXX_ZYJC--专业基本信息数据表 专业简称
      ,d.JLNY as d_ZYXX_JLNY--专业基本信息数据表 建立年月
      ,d.ZYJSS as d_ZYXX_ZYJSS--专业基本信息数据表 专业教师数
      ,d.KSJGH as d_ZYXX_KSJGH--专业基本信息数据表 开设机构号
      ,d.ZXF as d_ZYXX_ZXF--专业基本信息数据表 总学分
      ,d.SSZYML as d_ZYXX_SSZYML--专业基本信息数据表 所属专业目录
      ,[dc].MC as d_ZYXX_SSZYML_MC--专业目录代码 名称
      ,d.ZYLB as d_ZYXX_ZYLB--专业基本信息数据表 专业类别名称
      ,d.XXZ as d_ZYXX_XXZ--专业基本信息数据表 新学制
      ,d.XZXF as d_ZYXX_XZXF--专业基本信息数据表 新总学分
      ,d.PYMB as d_ZYXX_PYMB--专业基本信息数据表 培养目标
      ,d.PYGG as d_ZYXX_PYGG--专业基本信息数据表 培养规格
      ,d.ZKS as d_ZYXX_ZKS--专业基本信息数据表 总课时
      ,d.SFSY as d_ZYXX_SFSY--专业基本信息数据表 是否使用

FROM dbo.EDU_ZZXS_22_A03_ZSGLZSJHXD AS a LEFT OUTER JOIN
      dbo.EDU_ZZXS_22_A02_ZSGLZSJH AS c ON a.JHID = c.ID /*计划ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_01_01_ZYXX AS d ON a.ZYID = d.ZYBH /*专业ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZJZY AS [db] ON d.ZYDM = [db].DM /*专业代码*/ AND d.SSZYML = [db].ZYMLLB /*所属专业目录*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZYML AS [dc] ON d.SSZYML = [dc].DM /*所属专业目录*/
GO
