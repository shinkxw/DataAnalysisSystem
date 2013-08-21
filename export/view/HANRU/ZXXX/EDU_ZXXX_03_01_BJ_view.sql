
--班级数据类表
CREATE VIEW [dbo].[VIEW_EDU_ZXXX_03_01_BJ_DISP]
AS
SELECT a.[SCHOOLID]--学校名
      ,a.[BH]--班号
      ,a.[NJ]--年级号
      ,a.[BJ]--班级名称
      ,a.[JBNY]--建班年月
      ,a.[BZRGH]--班主任工号
      ,a.[BZXH]--班长学号
      ,a.[BJRYCH]--班级荣誉称号
      ,a.[XZ]--学制
      ,a.[BJLXM]--班级类型码
      ,a.[WLLX]--文理类型
      ,a.[BYRQ]--毕业日期
      ,a.[SFSSMZSYJXB]--是否少数民族双语教学班
      ,a.[SYJXMSM]--双语教学模式码
      ,b.SCHOOLNAME as b_SCHOOL_SCHOOLNAME--学校配置表 学校名称
      ,b.SCHOOLTYPE as b_SCHOOL_SCHOOLTYPE--学校配置表 学校类型
      ,b.XNID as b_SCHOOL_XNID--学校配置表 学年ID
      ,b.XQID as b_SCHOOL_XQID--学校配置表 学期ID
      ,b.MatchURL as b_SCHOOL_MatchURL--学校配置表 匹配url
      ,b.MenhuURL as b_SCHOOL_MenhuURL--学校配置表 门户url
      ,b.MenhuWebid as b_SCHOOL_MenhuWebid--学校配置表 门户webid
      ,b.LogLevel as b_SCHOOL_LogLevel--学校配置表 日志级别
      ,b.ModuleIdList as b_SCHOOL_ModuleIdList--学校配置表 权限列表
      ,c.SCHOOLID as c_NJ_SCHOOLID--年级数据类表 学校名
      ,c.NJMC as c_NJ_NJMC--年级数据类表 年级名称
      ,d.MC as d_ZXXBJLX_MC--中小学班级类型代码表 名称
      ,e.MC as e_SFBZ_MC--是否标志代码表 名称
      ,f.MC as f_SSMZSYJXMS_MC--少数民族双语教学模式代码表 名称
      ,f.SM as f_SSMZSYJXMS_SM--少数民族双语教学模式代码表 说明

FROM dbo.EDU_ZXXX_03_01_BJ AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_02_01_NJ AS c ON a.NJ = c.NJ /*年级号*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXBJLX AS d ON a.BJLXM = d.DM /*班级类型码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS e ON a.SFSSMZSYJXB = e.DM /*是否少数民族双语教学班*/ LEFT OUTER JOIN
      dbo.EDU_JY_SSMZSYJXMS AS f ON a.SYJXMSM = f.DM /*双语教学模式码*/
GO
