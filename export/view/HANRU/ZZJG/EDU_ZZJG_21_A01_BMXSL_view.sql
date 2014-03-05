
--部门行事历表
CREATE VIEW [dbo].[VIEW_EDU_ZZJG_21_A01_BMXSL_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[BMBH]--部门编号
      ,a.[SJ]--时间
      ,a.[ZYGZ]--主要工作
      ,a.[BZ]--备注
      ,c.SCHOOLID as c_XNJG_SCHOOLID--校内机构数据类表 学校名
      ,c.JGMC as c_XNJG_JGMC--校内机构数据类表 机构名称
      ,c.JGYWMC as c_XNJG_JGYWMC--校内机构数据类表 机构英文名称
      ,c.JGJC as c_XNJG_JGJC--校内机构数据类表 机构简称
      ,c.JGJP as c_XNJG_JGJP--校内机构数据类表 机构简拼
      ,c.JGDZ as c_XNJG_JGDZ--校内机构数据类表 机构地址
      ,c.LSSJJGH as c_XNJG_LSSJJGH--校内机构数据类表 隶属上级机构号
      ,c.LSXQH as c_XNJG_LSXQH--校内机构数据类表 隶属校区号
      ,c.JGYXBS as c_XNJG_JGYXBS--校内机构数据类表 机构有效标识
      ,[cb].MC as c_XNJG_JGYXBS_MC--是否标志代码表 名称
      ,c.SFST as c_XNJG_SFST--校内机构数据类表 是否实体
      ,[cc].MC as c_XNJG_SFST_MC--是否标志代码表 名称
      ,c.JLNY as c_XNJG_JLNY--校内机构数据类表 建立年月
      ,c.JGYZBM as c_XNJG_JGYZBM--校内机构数据类表 机构邮政编码
      ,c.FZRH as c_XNJG_FZRH--校内机构数据类表 负责人号

FROM dbo.EDU_ZZJG_21_A01_BMXSL AS a LEFT OUTER JOIN
      dbo.EDU_ZZXX_03_01_XNJG AS c ON a.BMBH = c.JGH /*部门编号*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [cb] ON c.JGYXBS = [cb].DM /*机构有效标识*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [cc] ON c.SFST = [cc].DM /*是否实体*/
GO
