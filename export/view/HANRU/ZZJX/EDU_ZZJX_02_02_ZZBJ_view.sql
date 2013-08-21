
--学校班级数据表
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_02_02_ZZBJ_DISP]
AS
SELECT a.[XZBDM]--行政班代码
      ,a.[SCHOOLID]--学校名
      ,a.[ZYXXID]--专业基本信息
      ,a.[ZZNJID]--学校年级数据表
      ,a.[XZBMC]--行政班名称
      ,a.[JBNY]--建班年月
      ,a.[BZRGH]--班主任工号
      ,a.[JSBH]--教室编号
      ,a.[NANSRS]--男生人数
      ,a.[NVSRS]--女生人数
      ,a.[ZRS]--总人数
      ,a.[BZXH]--班长学号
      ,a.[JXJH]--教学计划
      ,a.[JGH]--机构号
      ,a.[XQDM]--校区代码
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
      ,d.SCHOOLID as d_ZZNJ_SCHOOLID--学校年级数据表 学校名
      ,d.NJMC as d_ZZNJ_NJMC--学校年级数据表 年级名称
      ,d.SSNF as d_ZZNJ_SSNF--学校年级数据表 所属年份
      ,d.NJZT as d_ZZNJ_NJZT--学校年级数据表 年级状态
      ,db.MC as d_ZZNJ_NJZT_MC--是否标志代码表 名称
      ,e.SCHOOLID as e_XNJG_SCHOOLID--校内机构数据类表 学校名
      ,e.JGMC as e_XNJG_JGMC--校内机构数据类表 机构名称
      ,e.JGYWMC as e_XNJG_JGYWMC--校内机构数据类表 机构英文名称
      ,e.JGJC as e_XNJG_JGJC--校内机构数据类表 机构简称
      ,e.JGJP as e_XNJG_JGJP--校内机构数据类表 机构简拼
      ,e.JGDZ as e_XNJG_JGDZ--校内机构数据类表 机构地址
      ,e.LSSJJGH as e_XNJG_LSSJJGH--校内机构数据类表 隶属上级机构号
      ,e.LSXQH as e_XNJG_LSXQH--校内机构数据类表 隶属校区号
      ,e.JGYXBS as e_XNJG_JGYXBS--校内机构数据类表 机构有效标识
      ,eb.MC as e_XNJG_JGYXBS_MC--是否标志代码表 名称
      ,e.SFST as e_XNJG_SFST--校内机构数据类表 是否实体
      ,ec.MC as e_XNJG_SFST_MC--是否标志代码表 名称
      ,e.JLNY as e_XNJG_JLNY--校内机构数据类表 建立年月
      ,e.JGYZBM as e_XNJG_JGYZBM--校内机构数据类表 机构邮政编码
      ,e.FZRH as e_XNJG_FZRH--校内机构数据类表 负责人号

FROM dbo.EDU_ZZJX_02_02_ZZBJ AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_01_01_ZYXX AS c ON a.ZYXXID = c.ZYBH /*专业基本信息*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_02_01_ZZNJ AS d ON a.ZZNJID = d.NJDM /*学校年级数据表*/ AND a.SCHOOLID = d.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZZXX_03_01_XNJG AS e ON a.JGH = e.JGH /*机构号*/ AND a.SCHOOLID = e.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZJZY AS cb ON c.ZYDM = cb.DM /*专业代码*/ AND c.SSZYML = cb.ZYMLLB /*所属专业目录*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZYML AS cc ON c.SSZYML = cc.DM /*所属专业目录*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS db ON d.NJZT = db.DM /*年级状态*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS eb ON e.JGYXBS = eb.DM /*机构有效标识*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS ec ON e.SFST = ec.DM /*是否实体*/
GO
