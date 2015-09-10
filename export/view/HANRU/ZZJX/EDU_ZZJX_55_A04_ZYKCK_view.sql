
--专业课程库表
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_55_A04_ZYKCK_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[ZYID]--专业ID
      ,a.[FZXXID]--分制信息ID
      ,a.[KCPFLXID]--课程评分类型ID
      ,a.[KCBH]--课程名称
      ,a.[ZXF]--总学分
      ,a.[ZXS]--总学时
      ,a.[KKDW]--开课单位
      ,a.[KSXS]--考试形式
      ,a.[SKFSM]--授课方式码
      ,a.[JXDG]--教学大纲
      ,a.[SFSY]--是否使用
      ,a.[CourseGroupId]--表CourseGroup的外键
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
      ,d.SCHOOLID as d_FZXX_SCHOOLID--分制信息表 学校
      ,d.FZMC as d_FZXX_FZMC--分制信息表 分制名称
      ,d.ZDZ as d_FZXX_ZDZ--分制信息表 最大值
      ,d.ZXZ as d_FZXX_ZXZ--分制信息表 最小值
      ,d.JGX as d_FZXX_JGX--分制信息表 及格线
      ,d.MXF as d_FZXX_MXF--分制信息表 免修对应分
      ,d.MKF as d_FZXX_MKF--分制信息表 免考对应分
      ,d.XFPDBIDLB as d_FZXX_XFPDBIDLB--分制信息表 学分评定表ID列表
      ,d.JDPDBIDLB as d_FZXX_JDPDBIDLB--分制信息表 绩点评定表ID列表
      ,e.SCHOOLID as e_KCPFLX_SCHOOLID--课程评分类型表 学校
      ,e.LXMC as e_KCPFLX_LXMC--课程评分类型表 类型名称

FROM dbo.EDU_ZZJX_55_A04_ZYKCK AS a LEFT OUTER JOIN
      dbo.EDU_ZZJX_01_01_ZYXX AS c ON a.ZYID = c.ZYBH /*专业ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_55_A01_FZXX AS d ON a.FZXXID = d.ID /*分制信息ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_55_A05_KCPFLX AS e ON a.KCPFLXID = e.ID /*课程评分类型ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZJZY AS [cb] ON c.ZYDM = [cb].DM /*专业代码*/ AND c.SSZYML = [cb].ZYMLLB /*所属专业目录*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZYML AS [cc] ON c.SSZYML = [cc].DM /*所属专业目录*/
GO
