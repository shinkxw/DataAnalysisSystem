
--财务结报单条目表
CREATE VIEW [dbo].[VIEW_EDU_ZZJG_25_A11_CWJBDTM_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[YJKMID]--一级科目ID
      ,a.[EJKMID]--二级科目ID
      ,a.[SJKMID]--三级科目ID
      ,a.[ZYDLID]--专业大类ID
      ,a.[ZYXLID]--专业小类ID
      ,a.[JBDH]--结报单号
      ,a.[JBDW]--结报单位
      ,a.[BZY]--报账员
      ,a.[JBRQ]--结报日期
      ,a.[ZY]--摘要
      ,a.[JE]--金额
      ,c.SCHOOLID as c_CWYJFLKM_SCHOOLID--财务一级分类科目表 学校
      ,c.YJKMDM as c_CWYJFLKM_YJKMDM--财务一级分类科目表 一级科目代码
      ,c.YJKMMC as c_CWYJFLKM_YJKMMC--财务一级分类科目表 一级科目名称
      ,c.SFFT as c_CWYJFLKM_SFFT--财务一级分类科目表 是否分摊
      ,d.SCHOOLID as d_CWEJFLKM_SCHOOLID--财务二级分类科目表 学校
      ,d.YJKMID as d_CWEJFLKM_YJKMID--财务二级分类科目表 一级科目ID
      ,d.EJKMDM as d_CWEJFLKM_EJKMDM--财务二级分类科目表 二级科目代码
      ,d.EJKMMC as d_CWEJFLKM_EJKMMC--财务二级分类科目表 二级科目名称
      ,e.SCHOOLID as e_CWSJFLKM_SCHOOLID--财务三级分类科目表 学校
      ,e.YJKMID as e_CWSJFLKM_YJKMID--财务三级分类科目表 一级科目ID
      ,e.EJKMID as e_CWSJFLKM_EJKMID--财务三级分类科目表 二级科目ID
      ,e.SJKMDM as e_CWSJFLKM_SJKMDM--财务三级分类科目表 三级科目代码
      ,e.SJKMMC as e_CWSJFLKM_SJKMMC--财务三级分类科目表 三级科目名称
      ,e.SFHJDY as e_CWSJFLKM_SFHJDY--财务三级分类科目表 是否合计打印
      ,f.SCHOOLID as f_CWZYDL_SCHOOLID--财务专业大类表 学校
      ,f.ZYDLDM as f_CWZYDL_ZYDLDM--财务专业大类表 专业大类代码
      ,f.ZYDLMC as f_CWZYDL_ZYDLMC--财务专业大类表 专业大类名称
      ,g.SCHOOLID as g_CWZYXL_SCHOOLID--财务专业小类表 学校
      ,g.ZYDLID as g_CWZYXL_ZYDLID--财务专业小类表 专业大类ID
      ,g.ZYXLDM as g_CWZYXL_ZYXLDM--财务专业小类表 专业小类代码
      ,g.ZYXLMC as g_CWZYXL_ZYXLMC--财务专业小类表 专业小类名称
      ,g.JSS as g_CWZYXL_JSS--财务专业小类表 教师数
      ,g.XSS as g_CWZYXL_XSS--财务专业小类表 学生数

FROM dbo.EDU_ZZJG_25_A11_CWJBDTM AS a LEFT OUTER JOIN
      dbo.EDU_ZZJG_25_A01_CWYJFLKM AS c ON a.YJKMID = c.ID /*一级科目ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_25_A02_CWEJFLKM AS d ON a.EJKMID = d.ID /*二级科目ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_25_A03_CWSJFLKM AS e ON a.SJKMID = e.ID /*三级科目ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_25_A04_CWZYDL AS f ON a.ZYDLID = f.ID /*专业大类ID*/ AND a.SCHOOLID = f.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_25_A05_CWZYXL AS g ON a.ZYXLID = g.ID /*专业小类ID*/ AND a.SCHOOLID = g.SCHOOLID /*学校*/
GO
