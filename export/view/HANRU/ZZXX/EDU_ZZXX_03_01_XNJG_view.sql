
--校内机构数据类表
CREATE VIEW [dbo].[VIEW_EDU_ZZXX_03_01_XNJG_DISP]
AS
SELECT a.[JGH]--机构号
      ,a.[SCHOOLID]--学校名
      ,a.[JGMC]--机构名称
      ,a.[JGYWMC]--机构英文名称
      ,a.[JGJC]--机构简称
      ,a.[JGJP]--机构简拼
      ,a.[JGDZ]--机构地址
      ,a.[LSSJJGH]--隶属上级机构号
      ,a.[LSXQH]--隶属校区号
      ,a.[JGYXBS]--机构有效标识
      ,a.[SFST]--是否实体
      ,a.[JLNY]--建立年月
      ,a.[JGYZBM]--机构邮政编码
      ,a.[FZRH]--负责人号
      ,b.SCHOOLNAME as b_SCHOOL_SCHOOLNAME--学校配置表 学校名称
      ,b.SCHOOLTYPE as b_SCHOOL_SCHOOLTYPE--学校配置表 学校类型
      ,b.XNID as b_SCHOOL_XNID--学校配置表 学年ID
      ,b.XQID as b_SCHOOL_XQID--学校配置表 学期ID
      ,b.MatchURL as b_SCHOOL_MatchURL--学校配置表 匹配url
      ,b.LogLevel as b_SCHOOL_LogLevel--学校配置表 日志级别
      ,c.SCHOOLID as c_XNJG_SCHOOLID--校内机构数据类表 学校名
      ,c.JGMC as c_XNJG_JGMC--校内机构数据类表 机构名称
      ,c.JGYWMC as c_XNJG_JGYWMC--校内机构数据类表 机构英文名称
      ,c.JGJC as c_XNJG_JGJC--校内机构数据类表 机构简称
      ,c.JGJP as c_XNJG_JGJP--校内机构数据类表 机构简拼
      ,c.JGDZ as c_XNJG_JGDZ--校内机构数据类表 机构地址
      ,c.LSSJJGH as c_XNJG_LSSJJGH--校内机构数据类表 隶属上级机构号
      ,c.LSXQH as c_XNJG_LSXQH--校内机构数据类表 隶属校区号
      ,c.JGYXBS as c_XNJG_JGYXBS--校内机构数据类表 机构有效标识
      ,cb.MC as c_XNJG_JGYXBS_MC--是否标志代码表 名称
      ,c.SFST as c_XNJG_SFST--校内机构数据类表 是否实体
      ,cc.MC as c_XNJG_SFST_MC--是否标志代码表 名称
      ,c.JLNY as c_XNJG_JLNY--校内机构数据类表 建立年月
      ,c.JGYZBM as c_XNJG_JGYZBM--校内机构数据类表 机构邮政编码
      ,c.FZRH as c_XNJG_FZRH--校内机构数据类表 负责人号
      ,d.MC as d_SFBZ_MC--是否标志代码表 名称
      ,e.MC as e_SFBZ_MC--是否标志代码表 名称

FROM dbo.EDU_ZZXX_03_01_XNJG AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZZXX_03_01_XNJG AS c ON a.LSSJJGH = c.JGH /*隶属上级机构号*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS d ON a.JGYXBS = d.DM /*机构有效标识*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS e ON a.SFST = e.DM /*是否实体*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS cb ON c.JGYXBS = cb.DM /*机构有效标识*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS cc ON c.SFST = cc.DM /*是否实体*/
GO
