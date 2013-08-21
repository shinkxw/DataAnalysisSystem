
--专业基本信息数据表
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_01_01_ZYXX_DISP]
AS
SELECT a.[ZYBH]--专业编号
      ,a.[SCHOOLID]--学校名
      ,a.[ZYDM]--专业代码
      ,a.[ZYMC]--专业名称
      ,a.[ZYYWMC]--专业英文名称
      ,a.[XZ]--学制
      ,a.[ZYFXMC]--专业方向名称
      ,a.[ZYJC]--专业简称
      ,a.[JLNY]--建立年月
      ,a.[ZYJSS]--专业教师数
      ,a.[KSJGH]--开设机构号
      ,a.[ZXF]--总学分
      ,a.[SSZYML]--所属专业目录
      ,a.[ZYLB]--专业类别名称
      ,c.ZYMLLB as c_ZJZY_ZYMLLB--自建专业代码 专业目录类别
      ,cb.MC as c_ZJZY_ZYMLLB_MC--专业目录代码 名称
      ,c.MC as c_ZJZY_MC--自建专业代码 名称
      ,d.SCHOOLID as d_XNJG_SCHOOLID--校内机构数据类表 学校名
      ,d.JGMC as d_XNJG_JGMC--校内机构数据类表 机构名称
      ,d.JGYWMC as d_XNJG_JGYWMC--校内机构数据类表 机构英文名称
      ,d.JGJC as d_XNJG_JGJC--校内机构数据类表 机构简称
      ,d.JGJP as d_XNJG_JGJP--校内机构数据类表 机构简拼
      ,d.JGDZ as d_XNJG_JGDZ--校内机构数据类表 机构地址
      ,d.LSSJJGH as d_XNJG_LSSJJGH--校内机构数据类表 隶属上级机构号
      ,d.LSXQH as d_XNJG_LSXQH--校内机构数据类表 隶属校区号
      ,d.JGYXBS as d_XNJG_JGYXBS--校内机构数据类表 机构有效标识
      ,db.MC as d_XNJG_JGYXBS_MC--是否标志代码表 名称
      ,d.SFST as d_XNJG_SFST--校内机构数据类表 是否实体
      ,dc.MC as d_XNJG_SFST_MC--是否标志代码表 名称
      ,d.JLNY as d_XNJG_JLNY--校内机构数据类表 建立年月
      ,d.JGYZBM as d_XNJG_JGYZBM--校内机构数据类表 机构邮政编码
      ,d.FZRH as d_XNJG_FZRH--校内机构数据类表 负责人号
      ,e.MC as e_ZYML_MC--专业目录代码 名称

FROM dbo.EDU_ZZJX_01_01_ZYXX AS a LEFT OUTER JOIN
      dbo.EDU_ZJ_ZJZY AS c ON a.ZYDM = c.DM /*专业代码*/ AND a.SSZYML = c.ZYMLLB /*所属专业目录*/ LEFT OUTER JOIN
      dbo.EDU_ZZXX_03_01_XNJG AS d ON a.KSJGH = d.JGH /*开设机构号*/ AND a.SCHOOLID = d.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZYML AS e ON a.SSZYML = e.DM /*所属专业目录*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZYML AS cb ON c.ZYMLLB = cb.DM /*专业目录类别*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS db ON d.JGYXBS = db.DM /*机构有效标识*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS dc ON d.SFST = dc.DM /*是否实体*/
GO
