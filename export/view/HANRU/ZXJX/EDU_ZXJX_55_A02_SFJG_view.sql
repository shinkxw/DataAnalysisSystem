
--收费结果表
CREATE VIEW [dbo].[VIEW_EDU_ZXJX_55_A02_SFJG_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[SFXMID]--收费项目ID
      ,a.[XSID]--学生ID
      ,a.[SJJE]--实缴金额
      ,a.[JFZT]--缴费状态
      ,c.SCHOOLID as c_SFXM_SCHOOLID--收费项目表 学校
      ,c.XQID as c_SFXM_XQID--收费项目表 学期ID
      ,c.FYMC as c_SFXM_FYMC--收费项目表 费用名称
      ,c.YSJE as c_SFXM_YSJE--收费项目表 应收金额
      ,c.PLSX as c_SFXM_PLSX--收费项目表 排列顺序
      ,d.SCHOOLID as d_XSXX_SCHOOLID--学生基本数据子类表 学校名
      ,d.XH as d_XSXX_XH--学生基本数据子类表 学号
      ,d.XM as d_XSXX_XM--学生基本数据子类表 姓名
      ,d.YWXM as d_XSXX_YWXM--学生基本数据子类表 英文姓名
      ,d.XMPY as d_XSXX_XMPY--学生基本数据子类表 姓名拼音
      ,d.CYM as d_XSXX_CYM--学生基本数据子类表 曾用名
      ,d.XBM as d_XSXX_XBM--学生基本数据子类表 性别码
      ,[db].MC as d_XSXX_XBM_MC--人的性别代码 名称
      ,d.CSRQ as d_XSXX_CSRQ--学生基本数据子类表 出生日期
      ,d.CSDM as d_XSXX_CSDM--学生基本数据子类表 出生地码
      ,[dc].MC as d_XSXX_CSDM_MC--中华人民共和国行政区划代码 名称
      ,d.JG as d_XSXX_JG--学生基本数据子类表 籍贯
      ,d.MZM as d_XSXX_MZM--学生基本数据子类表 民族码
      ,[dd].MZMC as d_XSXX_MZM_MZMC--中国各民族名称的罗马字母拼写法和代码 民族名称
      ,[dd].ZMDM as d_XSXX_MZM_ZMDM--中国各民族名称的罗马字母拼写法和代码 字母代码
      ,d.GJDQM as d_XSXX_GJDQM--学生基本数据子类表 国籍/地区码
      ,[de].GJDQMCJC as d_XSXX_GJDQM_GJDQMCJC--世界各国和地区名称代码 国家/地区名称简称
      ,[de].EZMDM as d_XSXX_GJDQM_EZMDM--世界各国和地区名称代码 二字母代码
      ,[de].SZMDM as d_XSXX_GJDQM_SZMDM--世界各国和地区名称代码 三字母代码
      ,d.SFZJLXM as d_XSXX_SFZJLXM--学生基本数据子类表 身份证件类型码
      ,[df].MC as d_XSXX_SFZJLXM_MC--身份证件类型代码表 名称
      ,d.SFZJH as d_XSXX_SFZJH--学生基本数据子类表 身份证件号
      ,d.HYZKM as d_XSXX_HYZKM--学生基本数据子类表 婚姻状况码
      ,[dg].MC as d_XSXX_HYZKM_MC--婚姻状况代码 名称
      ,d.GATQWM as d_XSXX_GATQWM--学生基本数据子类表 港澳台侨外码
      ,[dh].MC as d_XSXX_GATQWM_MC--港澳台侨外代码表 名称
      ,[dh].SM as d_XSXX_GATQWM_SM--港澳台侨外代码表 说明
      ,d.ZZMMM as d_XSXX_ZZMMM--学生基本数据子类表 政治面貌码
      ,[di].MC as d_XSXX_ZZMMM_MC--政治面貌代码 名称
      ,[di].JC as d_XSXX_ZZMMM_JC--政治面貌代码 简称
      ,d.JKZKM as d_XSXX_JKZKM--学生基本数据子类表 健康状况码
      ,[dj].MC as d_XSXX_JKZKM_MC--健康状况1位数字代码 名称
      ,[dj].SM as d_XSXX_JKZKM_SM--健康状况1位数字代码 说明
      ,d.XYZJM as d_XSXX_XYZJM--学生基本数据子类表 信仰宗教码
      ,[dk].MC as d_XSXX_XYZJM_MC--宗教信仰代码 名称
      ,d.XXM as d_XSXX_XXM--学生基本数据子类表 血型码
      ,[dl].MC as d_XSXX_XXM_MC--血型代码表 名称
      ,[dl].JC as d_XSXX_XXM_JC--血型代码表 简称
      ,d.ZP as d_XSXX_ZP--学生基本数据子类表 照片
      ,d.SFZJYXQ as d_XSXX_SFZJYXQ--学生基本数据子类表 身份证件有效期
      ,d.DSZYBZ as d_XSXX_DSZYBZ--学生基本数据子类表 独生子女标志
      ,[dm].MC as d_XSXX_DSZYBZ_MC--是否标志代码表 名称
      ,d.RXNY as d_XSXX_RXNY--学生基本数据子类表 入学年月
      ,d.NJ as d_XSXX_NJ--学生基本数据子类表 年级
      ,d.BH as d_XSXX_BH--学生基本数据子类表 班号
      ,d.XSLBM as d_XSXX_XSLBM--学生基本数据子类表 学生类别码
      ,[dn].MC as d_XSXX_XSLBM_MC--学生类别代码表 名称
      ,[dn].SM as d_XSXX_XSLBM_SM--学生类别代码表 说明
      ,d.XZZ as d_XSXX_XZZ--学生基本数据子类表 现住址
      ,d.HKSZD as d_XSXX_HKSZD--学生基本数据子类表 户口所在地
      ,d.HKXZM as d_XSXX_HKXZM--学生基本数据子类表 户口性质码
      ,[do].MC as d_XSXX_HKXZM_MC--户口类别代码 名称
      ,d.SFLDRK as d_XSXX_SFLDRK--学生基本数据子类表 是否流动人口
      ,[dp].MC as d_XSXX_SFLDRK_MC--是否标志代码表 名称
      ,d.TC as d_XSXX_TC--学生基本数据子类表 特长
      ,d.LXDH as d_XSXX_LXDH--学生基本数据子类表 联系电话
      ,d.TXDZ as d_XSXX_TXDZ--学生基本数据子类表 通信地址
      ,d.YZBM as d_XSXX_YZBM--学生基本数据子类表 邮政编码
      ,d.DZXX as d_XSXX_DZXX--学生基本数据子类表 电子信箱
      ,d.ZYDZ as d_XSXX_ZYDZ--学生基本数据子类表 主页地址
      ,d.XJH as d_XSXX_XJH--学生基本数据子类表 学籍号
      ,d.XSDQZTM as d_XSXX_XSDQZTM--学生基本数据子类表 学生当前状态码
      ,[dq].MC as d_XSXX_XSDQZTM_MC--学生当前状态代码表 名称
      ,[dq].SM as d_XSXX_XSDQZTM_SM--学生当前状态代码表 说明

FROM dbo.EDU_ZXJX_55_A02_SFJG AS a LEFT OUTER JOIN
      dbo.EDU_ZXJX_55_A01_SFXM AS c ON a.SFXMID = c.ID /*收费项目ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZXXS_01_01_XSXX AS d ON a.XSID = d.ID /*学生ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS [db] ON d.XBM = [db].DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [dc] ON d.CSDM = [dc].DM /*出生地码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS [dd] ON d.MZM = [dd].DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS [de] ON d.GJDQM = [de].DM /*国籍/地区码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS [df] ON d.SFZJLXM = [df].DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS [dg] ON d.HYZKM = [dg].DM /*婚姻状况码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS [dh] ON d.GATQWM = [dh].DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS [di] ON d.ZZMMM = [di].DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS [dj] ON d.JKZKM = [dj].DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS [dk] ON d.XYZJM = [dk].DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS [dl] ON d.XXM = [dl].DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [dm] ON d.DSZYBZ = [dm].DM /*独生子女标志*/ LEFT OUTER JOIN
      dbo.EDU_JY_XSLB AS [dn] ON d.XSLBM = [dn].DM /*学生类别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS [do] ON d.HKXZM = [do].DM /*户口性质码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [dp] ON d.SFLDRK = [dp].DM /*是否流动人口*/ LEFT OUTER JOIN
      dbo.EDU_JY_XSDQZT AS [dq] ON d.XSDQZTM = [dq].DM /*学生当前状态码*/
GO
