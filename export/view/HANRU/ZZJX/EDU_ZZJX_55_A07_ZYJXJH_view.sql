
--专业教学计划表
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_55_A07_ZYJXJH_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[ZYID]--专业ID
      ,a.[ZYKCKID]--专业课程库ID
      ,a.[XQDH]--学期代号
      ,a.[XF]--学分
      ,a.[KS]--课时
      ,c.SCHOOLID as c_ZYXX_SCHOOLID--专业基本信息数据表 学校名
      ,c.ZYDM as c_ZYXX_ZYDM--专业基本信息数据表 专业代码
      ,[cb].ZYMLLB as c_ZYXX_ZYDM_ZYMLLB--自建专业代码 专业目录类别
      ,[cb].MC as c_ZYXX_ZYDM_MC--自建专业代码 名称
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
      ,[cc].MC as c_ZYXX_SSZYML_MC--专业目录代码 名称
      ,c.ZYLB as c_ZYXX_ZYLB--专业基本信息数据表 专业类别名称
      ,c.XXZ as c_ZYXX_XXZ--专业基本信息数据表 新学制
      ,c.XZXF as c_ZYXX_XZXF--专业基本信息数据表 新总学分
      ,c.PYMB as c_ZYXX_PYMB--专业基本信息数据表 培养目标
      ,c.PYGG as c_ZYXX_PYGG--专业基本信息数据表 培养规格
      ,c.ZKS as c_ZYXX_ZKS--专业基本信息数据表 总课时
      ,c.SFSY as c_ZYXX_SFSY--专业基本信息数据表 是否使用
      ,d.SCHOOLID as d_ZYKCK_SCHOOLID--专业课程库表 学校
      ,d.ZYID as d_ZYKCK_ZYID--专业课程库表 专业ID
      ,d.FZXXID as d_ZYKCK_FZXXID--专业课程库表 分制信息ID
      ,d.KCPFLXID as d_ZYKCK_KCPFLXID--专业课程库表 课程评分类型ID
      ,d.KCBH as d_ZYKCK_KCBH--专业课程库表 课程名称
      ,d.ZXF as d_ZYKCK_ZXF--专业课程库表 总学分
      ,d.ZXS as d_ZYKCK_ZXS--专业课程库表 总学时
      ,d.KKDW as d_ZYKCK_KKDW--专业课程库表 开课单位
      ,d.KSXS as d_ZYKCK_KSXS--专业课程库表 考试形式
      ,d.SKFSM as d_ZYKCK_SKFSM--专业课程库表 授课方式码
      ,d.JXDG as d_ZYKCK_JXDG--专业课程库表 教学大纲
      ,d.SFSY as d_ZYKCK_SFSY--专业课程库表 是否使用

FROM dbo.EDU_ZZJX_55_A07_ZYJXJH AS a LEFT OUTER JOIN
      dbo.EDU_ZZJX_01_01_ZYXX AS c ON a.ZYID = c.ZYBH /*专业ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_55_A04_ZYKCK AS d ON a.ZYKCKID = d.ID /*专业课程库ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZJZY AS [cb] ON c.ZYDM = [cb].DM /*专业代码*/ AND c.SSZYML = [cb].ZYMLLB /*所属专业目录*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZYML AS [cc] ON c.SSZYML = [cc].DM /*所属专业目录*/
GO
