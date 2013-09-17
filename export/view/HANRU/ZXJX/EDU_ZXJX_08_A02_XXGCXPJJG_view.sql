
--学生学习过程性评价结果表
CREATE VIEW [dbo].[VIEW_EDU_ZXJX_08_A02_XXGCXPJJG_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校ID
      ,a.[PZID]--评价配置ID
      ,a.[FS]--分数
      ,a.[XLZID]--校历周ID
      ,a.[XSXXID]--学生ID
      ,c.SCHOOLID as c_XXGCXPJPZ_SCHOOLID--学生学习过程性评价配置表 学校ID
      ,c.SSKCH as c_XXGCXPJPZ_SSKCH--学生学习过程性评价配置表 所属课程号
      ,c.PZMC as c_XXGCXPJPZ_PZMC--学生学习过程性评价配置表 配置名称
      ,c.PZLX as c_XXGCXPJPZ_PZLX--学生学习过程性评价配置表 配置类型
      ,c.FLM as c_XXGCXPJPZ_FLM--学生学习过程性评价配置表 父类名
      ,d.SCHOOLID as d_XLZ_SCHOOLID--校历周表 学校ID
      ,d.XLID as d_XLZ_XLID--校历周表 校历ID
      ,d.NAME as d_XLZ_NAME--校历周表 校历周名称
      ,d.STARTDAY as d_XLZ_STARTDAY--校历周表 开始日期
      ,d.ENDDAY as d_XLZ_ENDDAY--校历周表 结束日期
      ,d.ZJH as d_XLZ_ZJH--校历周表 周计划
      ,e.SCHOOLID as e_XSXX_SCHOOLID--学生基本数据子类表 学校名
      ,e.XH as e_XSXX_XH--学生基本数据子类表 学号
      ,e.XM as e_XSXX_XM--学生基本数据子类表 姓名
      ,e.YWXM as e_XSXX_YWXM--学生基本数据子类表 英文姓名
      ,e.XMPY as e_XSXX_XMPY--学生基本数据子类表 姓名拼音
      ,e.CYM as e_XSXX_CYM--学生基本数据子类表 曾用名
      ,e.XBM as e_XSXX_XBM--学生基本数据子类表 性别码
      ,eb.MC as e_XSXX_XBM_MC--人的性别代码 名称
      ,e.CSRQ as e_XSXX_CSRQ--学生基本数据子类表 出生日期
      ,e.CSDM as e_XSXX_CSDM--学生基本数据子类表 出生地码
      ,ec.MC as e_XSXX_CSDM_MC--中华人民共和国行政区划代码 名称
      ,e.JG as e_XSXX_JG--学生基本数据子类表 籍贯
      ,e.MZM as e_XSXX_MZM--学生基本数据子类表 民族码
      ,ed.MZMC as e_XSXX_MZM_MZMC--中国各民族名称的罗马字母拼写法和代码 民族名称
      ,ed.ZMDM as e_XSXX_MZM_ZMDM--中国各民族名称的罗马字母拼写法和代码 字母代码
      ,e.GJDQM as e_XSXX_GJDQM--学生基本数据子类表 国籍/地区码
      ,ee.GJDQMCJC as e_XSXX_GJDQM_GJDQMCJC--世界各国和地区名称代码 国家/地区名称简称
      ,ee.EZMDM as e_XSXX_GJDQM_EZMDM--世界各国和地区名称代码 二字母代码
      ,ee.SZMDM as e_XSXX_GJDQM_SZMDM--世界各国和地区名称代码 三字母代码
      ,e.SFZJLXM as e_XSXX_SFZJLXM--学生基本数据子类表 身份证件类型码
      ,ef.MC as e_XSXX_SFZJLXM_MC--身份证件类型代码表 名称
      ,e.SFZJH as e_XSXX_SFZJH--学生基本数据子类表 身份证件号
      ,e.HYZKM as e_XSXX_HYZKM--学生基本数据子类表 婚姻状况码
      ,eg.MC as e_XSXX_HYZKM_MC--婚姻状况代码 名称
      ,e.GATQWM as e_XSXX_GATQWM--学生基本数据子类表 港澳台侨外码
      ,eh.MC as e_XSXX_GATQWM_MC--港澳台侨外代码表 名称
      ,eh.SM as e_XSXX_GATQWM_SM--港澳台侨外代码表 说明
      ,e.ZZMMM as e_XSXX_ZZMMM--学生基本数据子类表 政治面貌码
      ,ei.MC as e_XSXX_ZZMMM_MC--政治面貌代码 名称
      ,ei.JC as e_XSXX_ZZMMM_JC--政治面貌代码 简称
      ,e.JKZKM as e_XSXX_JKZKM--学生基本数据子类表 健康状况码
      ,ej.MC as e_XSXX_JKZKM_MC--健康状况1位数字代码 名称
      ,ej.SM as e_XSXX_JKZKM_SM--健康状况1位数字代码 说明
      ,e.XYZJM as e_XSXX_XYZJM--学生基本数据子类表 信仰宗教码
      ,ek.MC as e_XSXX_XYZJM_MC--宗教信仰代码 名称
      ,e.XXM as e_XSXX_XXM--学生基本数据子类表 血型码
      ,el.MC as e_XSXX_XXM_MC--血型代码表 名称
      ,el.JC as e_XSXX_XXM_JC--血型代码表 简称
      ,e.ZP as e_XSXX_ZP--学生基本数据子类表 照片
      ,e.SFZJYXQ as e_XSXX_SFZJYXQ--学生基本数据子类表 身份证件有效期
      ,e.DSZYBZ as e_XSXX_DSZYBZ--学生基本数据子类表 独生子女标志
      ,em.MC as e_XSXX_DSZYBZ_MC--是否标志代码表 名称
      ,e.RXNY as e_XSXX_RXNY--学生基本数据子类表 入学年月
      ,e.NJ as e_XSXX_NJ--学生基本数据子类表 年级
      ,e.BH as e_XSXX_BH--学生基本数据子类表 班号
      ,e.XSLBM as e_XSXX_XSLBM--学生基本数据子类表 学生类别码
      ,en.MC as e_XSXX_XSLBM_MC--学生类别代码表 名称
      ,en.SM as e_XSXX_XSLBM_SM--学生类别代码表 说明
      ,e.XZZ as e_XSXX_XZZ--学生基本数据子类表 现住址
      ,e.HKSZD as e_XSXX_HKSZD--学生基本数据子类表 户口所在地
      ,e.HKXZM as e_XSXX_HKXZM--学生基本数据子类表 户口性质码
      ,eo.MC as e_XSXX_HKXZM_MC--户口类别代码 名称
      ,e.SFLDRK as e_XSXX_SFLDRK--学生基本数据子类表 是否流动人口
      ,ep.MC as e_XSXX_SFLDRK_MC--是否标志代码表 名称
      ,e.TC as e_XSXX_TC--学生基本数据子类表 特长
      ,e.LXDH as e_XSXX_LXDH--学生基本数据子类表 联系电话
      ,e.TXDZ as e_XSXX_TXDZ--学生基本数据子类表 通信地址
      ,e.YZBM as e_XSXX_YZBM--学生基本数据子类表 邮政编码
      ,e.DZXX as e_XSXX_DZXX--学生基本数据子类表 电子信箱
      ,e.ZYDZ as e_XSXX_ZYDZ--学生基本数据子类表 主页地址
      ,e.XJH as e_XSXX_XJH--学生基本数据子类表 学籍号

FROM dbo.EDU_ZXJX_08_A02_XXGCXPJJG AS a LEFT OUTER JOIN
      dbo.EDU_ZXJX_08_A01_XXGCXPJPZ AS c ON a.PZID = c.ID /*评价配置ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_05_XLZ AS d ON a.XLZID = d.ID /*校历周ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZXXS_01_01_XSXX AS e ON a.XSXXID = e.ID /*学生ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS eb ON e.XBM = eb.DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS ec ON e.CSDM = ec.DM /*出生地码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS ed ON e.MZM = ed.DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS ee ON e.GJDQM = ee.DM /*国籍/地区码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS ef ON e.SFZJLXM = ef.DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS eg ON e.HYZKM = eg.DM /*婚姻状况码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS eh ON e.GATQWM = eh.DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS ei ON e.ZZMMM = ei.DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS ej ON e.JKZKM = ej.DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS ek ON e.XYZJM = ek.DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS el ON e.XXM = el.DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS em ON e.DSZYBZ = em.DM /*独生子女标志*/ LEFT OUTER JOIN
      dbo.EDU_JY_XSLB AS en ON e.XSLBM = en.DM /*学生类别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS eo ON e.HKXZM = eo.DM /*户口性质码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS ep ON e.SFLDRK = ep.DM /*是否流动人口*/
GO
