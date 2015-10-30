
--校内岗位数据子类表
CREATE VIEW [dbo].[VIEW_EDU_ZZJG_02_02_XNGWSJ_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校名
      ,a.[JGH]--机构号
      ,a.[JZGJBSJID]--教职工ID
      ,a.[ZWMC]--职务名称
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
      ,d.SCHOOLID as d_JZGJBSJ_SCHOOLID--教职工基本数据子类表 学校名
      ,d.GH as d_JZGJBSJ_GH--教职工基本数据子类表 工号
      ,d.XM as d_JZGJBSJ_XM--教职工基本数据子类表 姓名
      ,d.YWXM as d_JZGJBSJ_YWXM--教职工基本数据子类表 英文姓名
      ,d.XMPY as d_JZGJBSJ_XMPY--教职工基本数据子类表 姓名拼音
      ,d.CYM as d_JZGJBSJ_CYM--教职工基本数据子类表 曾用名
      ,d.SFZJLXM as d_JZGJBSJ_SFZJLXM--教职工基本数据子类表 身份证件类型码
      ,[db].MC as d_JZGJBSJ_SFZJLXM_MC--身份证件类型代码表 名称
      ,d.SFZJH as d_JZGJBSJ_SFZJH--教职工基本数据子类表 身份证件号
      ,d.CSRQ as d_JZGJBSJ_CSRQ--教职工基本数据子类表 出生日期
      ,d.XBM as d_JZGJBSJ_XBM--教职工基本数据子类表 性别码
      ,[dc].MC as d_JZGJBSJ_XBM_MC--人的性别代码 名称
      ,d.MZM as d_JZGJBSJ_MZM--教职工基本数据子类表 民族码
      ,[dd].MZMC as d_JZGJBSJ_MZM_MZMC--中国各民族名称的罗马字母拼写法和代码 民族名称
      ,[dd].ZMDM as d_JZGJBSJ_MZM_ZMDM--中国各民族名称的罗马字母拼写法和代码 字母代码
      ,d.XXM as d_JZGJBSJ_XXM--教职工基本数据子类表 血型码
      ,[de].MC as d_JZGJBSJ_XXM_MC--血型代码表 名称
      ,[de].JC as d_JZGJBSJ_XXM_JC--血型代码表 简称
      ,d.JKZKM as d_JZGJBSJ_JKZKM--教职工基本数据子类表 健康状况码
      ,[df].MC as d_JZGJBSJ_JKZKM_MC--健康状况1位数字代码 名称
      ,[df].SM as d_JZGJBSJ_JKZKM_SM--健康状况1位数字代码 说明
      ,d.HYZTM as d_JZGJBSJ_HYZTM--教职工基本数据子类表 婚姻状态码
      ,[dg].MC as d_JZGJBSJ_HYZTM_MC--婚姻状况代码 名称
      ,d.ZZMMM as d_JZGJBSJ_ZZMMM--教职工基本数据子类表 政治面貌码
      ,[dh].MC as d_JZGJBSJ_ZZMMM_MC--政治面貌代码 名称
      ,[dh].JC as d_JZGJBSJ_ZZMMM_JC--政治面貌代码 简称
      ,d.GATQWM as d_JZGJBSJ_GATQWM--教职工基本数据子类表 港澳台侨外码
      ,[di].MC as d_JZGJBSJ_GATQWM_MC--港澳台侨外代码表 名称
      ,[di].SM as d_JZGJBSJ_GATQWM_SM--港澳台侨外代码表 说明
      ,d.JG as d_JZGJBSJ_JG--教职工基本数据子类表 籍贯
      ,d.GJDQM as d_JZGJBSJ_GJDQM--教职工基本数据子类表 国籍/地区码
      ,[dj].GJDQMCJC as d_JZGJBSJ_GJDQM_GJDQMCJC--世界各国和地区名称代码 国家/地区名称简称
      ,[dj].EZMDM as d_JZGJBSJ_GJDQM_EZMDM--世界各国和地区名称代码 二字母代码
      ,[dj].SZMDM as d_JZGJBSJ_GJDQM_SZMDM--世界各国和地区名称代码 三字母代码
      ,d.CSDXZQHM as d_JZGJBSJ_CSDXZQHM--教职工基本数据子类表 出生地行政区划码
      ,[dk].MC as d_JZGJBSJ_CSDXZQHM_MC--中华人民共和国行政区划代码 名称
      ,d.XYZJM as d_JZGJBSJ_XYZJM--教职工基本数据子类表 信仰宗教码
      ,[dl].MC as d_JZGJBSJ_XYZJM_MC--宗教信仰代码 名称
      ,d.JZGHKSZDXZQHM as d_JZGJBSJ_JZGHKSZDXZQHM--教职工基本数据子类表 教职工户口所在地行政区划码
      ,[dm].MC as d_JZGJBSJ_JZGHKSZDXZQHM_MC--中华人民共和国行政区划代码 名称
      ,d.HKLBM as d_JZGJBSJ_HKLBM--教职工基本数据子类表 户口类别码
      ,[dn].MC as d_JZGJBSJ_HKLBM_MC--户口类别代码 名称
      ,d.DQZZ as d_JZGJBSJ_DQZZ--教职工基本数据子类表 当前住址
      ,d.DQZZYZBM as d_JZGJBSJ_DQZZYZBM--教职工基本数据子类表 当前住址邮政编码
      ,d.CJGZNY as d_JZGJBSJ_CJGZNY--教职工基本数据子类表 参加工作年月
      ,d.CJNY as d_JZGJBSJ_CJNY--教职工基本数据子类表 从教年月
      ,d.LXNY as d_JZGJBSJ_LXNY--教职工基本数据子类表 来校年月
      ,d.BZLBM as d_JZGJBSJ_BZLBM--教职工基本数据子类表 编制类别码
      ,[do].MC as d_JZGJBSJ_BZLBM_MC--编制类别代码表 名称
      ,d.JZGLBM as d_JZGJBSJ_JZGLBM--教职工基本数据子类表 教职工类别码
      ,[dp].MC as d_JZGJBSJ_JZGLBM_MC--教职工类别代码表 名称
      ,[dp].SM as d_JZGJBSJ_JZGLBM_SM--教职工类别代码表 说明
      ,d.GWLBM as d_JZGJBSJ_GWLBM--教职工基本数据子类表 岗位类别码
      ,[dq].MC as d_JZGJBSJ_GWLBM_MC--岗位类别代码表 名称
      ,d.SFJZJS as d_JZGJBSJ_SFJZJS--教职工基本数据子类表 是否兼职教师
      ,[dr].MC as d_JZGJBSJ_SFJZJS_MC--是否标志代码表 名称
      ,d.SFSSXJS as d_JZGJBSJ_SFSSXJS--教职工基本数据子类表 是否双师型教师
      ,[ds].MC as d_JZGJBSJ_SFSSXJS_MC--是否标志代码表 名称
      ,d.ZP as d_JZGJBSJ_ZP--教职工基本数据子类表 照片(路径)
      ,d.DQZTM as d_JZGJBSJ_DQZTM--教职工基本数据子类表 当前状态码
      ,[dt].MC as d_JZGJBSJ_DQZTM_MC--教职工当前状态代码表 名称
      ,d.YDDH as d_JZGJBSJ_YDDH--教职工基本数据子类表 移动电话
      ,d.GDDH as d_JZGJBSJ_GDDH--教职工基本数据子类表 固定电话
      ,d.TXDZYZBM as d_JZGJBSJ_TXDZYZBM--教职工基本数据子类表 通信地址邮政编码
      ,d.TXDZ as d_JZGJBSJ_TXDZ--教职工基本数据子类表 通信地址
      ,d.DZXX as d_JZGJBSJ_DZXX--教职工基本数据子类表 电子信箱
      ,d.WLDZ as d_JZGJBSJ_WLDZ--教职工基本数据子类表 网络地址
      ,d.JSTXH as d_JZGJBSJ_JSTXH--教职工基本数据子类表 即时通讯号
      ,d.JSKQJS as d_JZGJBSJ_JSKQJS--教职工基本数据子类表 教师考勤角色
      ,d.TeacherGroupId as d_JZGJBSJ_TeacherGroupId--教职工基本数据子类表 表TeacherGroup的外键
      ,d.PersonalCard1 as d_JZGJBSJ_PersonalCard1--教职工基本数据子类表 个人卡1
      ,d.PersonalCard2 as d_JZGJBSJ_PersonalCard2--教职工基本数据子类表 个人卡2
      ,d.PersonalCard3 as d_JZGJBSJ_PersonalCard3--教职工基本数据子类表 个人卡3

FROM dbo.EDU_ZZJG_02_02_XNGWSJ AS a LEFT OUTER JOIN
      dbo.EDU_ZZXX_03_01_XNJG AS c ON a.JGH = c.JGH /*机构号*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS d ON a.JZGJBSJID = d.ID /*教职工ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [cb] ON c.JGYXBS = [cb].DM /*机构有效标识*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [cc] ON c.SFST = [cc].DM /*是否实体*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS [db] ON d.SFZJLXM = [db].DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS [dc] ON d.XBM = [dc].DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS [dd] ON d.MZM = [dd].DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS [de] ON d.XXM = [de].DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS [df] ON d.JKZKM = [df].DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS [dg] ON d.HYZTM = [dg].DM /*婚姻状态码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS [dh] ON d.ZZMMM = [dh].DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS [di] ON d.GATQWM = [di].DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS [dj] ON d.GJDQM = [dj].DM /*国籍/地区码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [dk] ON d.CSDXZQHM = [dk].DM /*出生地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS [dl] ON d.XYZJM = [dl].DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [dm] ON d.JZGHKSZDXZQHM = [dm].DM /*教职工户口所在地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS [dn] ON d.HKLBM = [dn].DM /*户口类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_BZLB AS [do] ON d.BZLBM = [do].DM /*编制类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGLB AS [dp] ON d.JZGLBM = [dp].DM /*教职工类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWLB AS [dq] ON d.GWLBM = [dq].DM /*岗位类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [dr] ON d.SFJZJS = [dr].DM /*是否兼职教师*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [ds] ON d.SFSSXJS = [ds].DM /*是否双师型教师*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGDQZT AS [dt] ON d.DQZTM = [dt].DM /*当前状态码*/
GO
