
--见习评价表
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_36_A03_JXPJ_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[JXJHID]--见习计划ID
      ,a.[XSXXID]--学生信息ID
      ,a.[PJNR]--评价内容
      ,a.[PJSJ]--评价时间
      ,a.[PJJSID]--评价教师ID
      ,c.SCHOOLID as c_JXJH_SCHOOLID--见习计划表 学校
      ,c.XQID as c_JXJH_XQID--见习计划表 学期ID
      ,c.JHMC as c_JXJH_JHMC--见习计划表 计划名称
      ,c.KSSJ as c_JXJH_KSSJ--见习计划表 开始时间
      ,c.JSSJ as c_JXJH_JSSJ--见习计划表 结束时间
      ,c.JXDWID as c_JXJH_JXDWID--见习计划表 见习单位
      ,c.JXNR as c_JXJH_JXNR--见习计划表 见习内容
      ,c.JXXS as c_JXJH_JXXS--见习计划表 见习学生
      ,c.SFKQ as c_JXJH_SFKQ--见习计划表 是否开启
      ,d.SCHOOLID as d_XSXX_SCHOOLID--学生信息数据表 学校名
      ,d.XH as d_XSXX_XH--学生信息数据表 学号
      ,d.XM as d_XSXX_XM--学生信息数据表 姓名
      ,d.YWXM as d_XSXX_YWXM--学生信息数据表 英文姓名
      ,d.XMPY as d_XSXX_XMPY--学生信息数据表 姓名拼音
      ,d.CYM as d_XSXX_CYM--学生信息数据表 曾用名
      ,d.SFZJLXM as d_XSXX_SFZJLXM--学生信息数据表 身份证件类型码
      ,[db].MC as d_XSXX_SFZJLXM_MC--身份证件类型代码表 名称
      ,d.SFZJH as d_XSXX_SFZJH--学生信息数据表 身份证件号
      ,d.XBM as d_XSXX_XBM--学生信息数据表 性别码
      ,[dc].MC as d_XSXX_XBM_MC--人的性别代码 名称
      ,d.XXM as d_XSXX_XXM--学生信息数据表 血型码
      ,[dd].MC as d_XSXX_XXM_MC--血型代码表 名称
      ,[dd].JC as d_XSXX_XXM_JC--血型代码表 简称
      ,d.CSRQ as d_XSXX_CSRQ--学生信息数据表 出生日期
      ,d.CSDM as d_XSXX_CSDM--学生信息数据表 出生地码
      ,[de].MC as d_XSXX_CSDM_MC--中华人民共和国行政区划代码 名称
      ,d.JG as d_XSXX_JG--学生信息数据表 籍贯
      ,d.MZM as d_XSXX_MZM--学生信息数据表 民族码
      ,[df].MZMC as d_XSXX_MZM_MZMC--中国各民族名称的罗马字母拼写法和代码 民族名称
      ,[df].ZMDM as d_XSXX_MZM_ZMDM--中国各民族名称的罗马字母拼写法和代码 字母代码
      ,d.HYZKM as d_XSXX_HYZKM--学生信息数据表 婚姻状况码
      ,[dg].MC as d_XSXX_HYZKM_MC--婚姻状况代码 名称
      ,d.XYZJM as d_XSXX_XYZJM--学生信息数据表 信仰宗教码
      ,[dh].MC as d_XSXX_XYZJM_MC--宗教信仰代码 名称
      ,d.GATQWM as d_XSXX_GATQWM--学生信息数据表 港澳台侨外码
      ,[di].MC as d_XSXX_GATQWM_MC--港澳台侨外代码表 名称
      ,[di].SM as d_XSXX_GATQWM_SM--港澳台侨外代码表 说明
      ,d.JKZKM as d_XSXX_JKZKM--学生信息数据表 健康状况码
      ,[dj].MC as d_XSXX_JKZKM_MC--健康状况1位数字代码 名称
      ,[dj].SM as d_XSXX_JKZKM_SM--健康状况1位数字代码 说明
      ,d.ZZMMM as d_XSXX_ZZMMM--学生信息数据表 政治面貌码
      ,[dk].MC as d_XSXX_ZZMMM_MC--政治面貌代码 名称
      ,[dk].JC as d_XSXX_ZZMMM_JC--政治面貌代码 简称
      ,d.HKSZDXZQHM as d_XSXX_HKSZDXZQHM--学生信息数据表 户口所在地行政区划码
      ,[dl].MC as d_XSXX_HKSZDXZQHM_MC--中华人民共和国行政区划代码 名称
      ,d.HKLBM as d_XSXX_HKLBM--学生信息数据表 户口类别码
      ,[dm].MC as d_XSXX_HKLBM_MC--户口类别代码 名称
      ,d.SFSLDRK as d_XSXX_SFSLDRK--学生信息数据表 是否是流动人口
      ,[dn].MC as d_XSXX_SFSLDRK_MC--是否标志代码表 名称
      ,d.GJDQM as d_XSXX_GJDQM--学生信息数据表 国籍/地区
      ,[do].GJDQMCJC as d_XSXX_GJDQM_GJDQMCJC--世界各国和地区名称代码 国家/地区名称简称
      ,[do].EZMDM as d_XSXX_GJDQM_EZMDM--世界各国和地区名称代码 二字母代码
      ,[do].SZMDM as d_XSXX_GJDQM_SZMDM--世界各国和地区名称代码 三字母代码
      ,d.TC as d_XSXX_TC--学生信息数据表 特长
      ,d.XSLXDH as d_XSXX_XSLXDH--学生信息数据表 学生联系电话
      ,d.WLDZ as d_XSXX_WLDZ--学生信息数据表 网络地址
      ,d.JSTXH as d_XSXX_JSTXH--学生信息数据表 即时通讯号
      ,d.DZXX as d_XSXX_DZXX--学生信息数据表 电子信箱
      ,d.ZP as d_XSXX_ZP--学生信息数据表 照片(路径)
      ,d.RXXQID as d_XSXX_RXXQID--学生信息数据表 入学学期ID
      ,d.NFCKH as d_XSXX_NFCKH--学生信息数据表 NFC卡号
      ,e.SCHOOLID as e_JZGJBSJ_SCHOOLID--教职工基本数据子类表 学校名
      ,e.GH as e_JZGJBSJ_GH--教职工基本数据子类表 工号
      ,e.XM as e_JZGJBSJ_XM--教职工基本数据子类表 姓名
      ,e.YWXM as e_JZGJBSJ_YWXM--教职工基本数据子类表 英文姓名
      ,e.XMPY as e_JZGJBSJ_XMPY--教职工基本数据子类表 姓名拼音
      ,e.CYM as e_JZGJBSJ_CYM--教职工基本数据子类表 曾用名
      ,e.SFZJLXM as e_JZGJBSJ_SFZJLXM--教职工基本数据子类表 身份证件类型码
      ,[eb].MC as e_JZGJBSJ_SFZJLXM_MC--身份证件类型代码表 名称
      ,e.SFZJH as e_JZGJBSJ_SFZJH--教职工基本数据子类表 身份证件号
      ,e.CSRQ as e_JZGJBSJ_CSRQ--教职工基本数据子类表 出生日期
      ,e.XBM as e_JZGJBSJ_XBM--教职工基本数据子类表 性别码
      ,[ec].MC as e_JZGJBSJ_XBM_MC--人的性别代码 名称
      ,e.MZM as e_JZGJBSJ_MZM--教职工基本数据子类表 民族码
      ,[ed].MZMC as e_JZGJBSJ_MZM_MZMC--中国各民族名称的罗马字母拼写法和代码 民族名称
      ,[ed].ZMDM as e_JZGJBSJ_MZM_ZMDM--中国各民族名称的罗马字母拼写法和代码 字母代码
      ,e.XXM as e_JZGJBSJ_XXM--教职工基本数据子类表 血型码
      ,[ee].MC as e_JZGJBSJ_XXM_MC--血型代码表 名称
      ,[ee].JC as e_JZGJBSJ_XXM_JC--血型代码表 简称
      ,e.JKZKM as e_JZGJBSJ_JKZKM--教职工基本数据子类表 健康状况码
      ,[ef].MC as e_JZGJBSJ_JKZKM_MC--健康状况1位数字代码 名称
      ,[ef].SM as e_JZGJBSJ_JKZKM_SM--健康状况1位数字代码 说明
      ,e.HYZTM as e_JZGJBSJ_HYZTM--教职工基本数据子类表 婚姻状态码
      ,[eg].MC as e_JZGJBSJ_HYZTM_MC--婚姻状况代码 名称
      ,e.ZZMMM as e_JZGJBSJ_ZZMMM--教职工基本数据子类表 政治面貌码
      ,[eh].MC as e_JZGJBSJ_ZZMMM_MC--政治面貌代码 名称
      ,[eh].JC as e_JZGJBSJ_ZZMMM_JC--政治面貌代码 简称
      ,e.GATQWM as e_JZGJBSJ_GATQWM--教职工基本数据子类表 港澳台侨外码
      ,[ei].MC as e_JZGJBSJ_GATQWM_MC--港澳台侨外代码表 名称
      ,[ei].SM as e_JZGJBSJ_GATQWM_SM--港澳台侨外代码表 说明
      ,e.JG as e_JZGJBSJ_JG--教职工基本数据子类表 籍贯
      ,e.GJDQM as e_JZGJBSJ_GJDQM--教职工基本数据子类表 国籍/地区码
      ,[ej].GJDQMCJC as e_JZGJBSJ_GJDQM_GJDQMCJC--世界各国和地区名称代码 国家/地区名称简称
      ,[ej].EZMDM as e_JZGJBSJ_GJDQM_EZMDM--世界各国和地区名称代码 二字母代码
      ,[ej].SZMDM as e_JZGJBSJ_GJDQM_SZMDM--世界各国和地区名称代码 三字母代码
      ,e.CSDXZQHM as e_JZGJBSJ_CSDXZQHM--教职工基本数据子类表 出生地行政区划码
      ,[ek].MC as e_JZGJBSJ_CSDXZQHM_MC--中华人民共和国行政区划代码 名称
      ,e.XYZJM as e_JZGJBSJ_XYZJM--教职工基本数据子类表 信仰宗教码
      ,[el].MC as e_JZGJBSJ_XYZJM_MC--宗教信仰代码 名称
      ,e.JZGHKSZDXZQHM as e_JZGJBSJ_JZGHKSZDXZQHM--教职工基本数据子类表 教职工户口所在地行政区划码
      ,[em].MC as e_JZGJBSJ_JZGHKSZDXZQHM_MC--中华人民共和国行政区划代码 名称
      ,e.HKLBM as e_JZGJBSJ_HKLBM--教职工基本数据子类表 户口类别码
      ,[en].MC as e_JZGJBSJ_HKLBM_MC--户口类别代码 名称
      ,e.DQZZ as e_JZGJBSJ_DQZZ--教职工基本数据子类表 当前住址
      ,e.DQZZYZBM as e_JZGJBSJ_DQZZYZBM--教职工基本数据子类表 当前住址邮政编码
      ,e.CJGZNY as e_JZGJBSJ_CJGZNY--教职工基本数据子类表 参加工作年月
      ,e.CJNY as e_JZGJBSJ_CJNY--教职工基本数据子类表 从教年月
      ,e.LXNY as e_JZGJBSJ_LXNY--教职工基本数据子类表 来校年月
      ,e.BZLBM as e_JZGJBSJ_BZLBM--教职工基本数据子类表 编制类别码
      ,[eo].MC as e_JZGJBSJ_BZLBM_MC--编制类别代码表 名称
      ,e.JZGLBM as e_JZGJBSJ_JZGLBM--教职工基本数据子类表 教职工类别码
      ,[ep].MC as e_JZGJBSJ_JZGLBM_MC--教职工类别代码表 名称
      ,[ep].SM as e_JZGJBSJ_JZGLBM_SM--教职工类别代码表 说明
      ,e.GWLBM as e_JZGJBSJ_GWLBM--教职工基本数据子类表 岗位类别码
      ,[eq].MC as e_JZGJBSJ_GWLBM_MC--岗位类别代码表 名称
      ,e.SFJZJS as e_JZGJBSJ_SFJZJS--教职工基本数据子类表 是否兼职教师
      ,[er].MC as e_JZGJBSJ_SFJZJS_MC--是否标志代码表 名称
      ,e.SFSSXJS as e_JZGJBSJ_SFSSXJS--教职工基本数据子类表 是否双师型教师
      ,[es].MC as e_JZGJBSJ_SFSSXJS_MC--是否标志代码表 名称
      ,e.ZP as e_JZGJBSJ_ZP--教职工基本数据子类表 照片(路径)
      ,e.DQZTM as e_JZGJBSJ_DQZTM--教职工基本数据子类表 当前状态码
      ,[et].MC as e_JZGJBSJ_DQZTM_MC--教职工当前状态代码表 名称
      ,e.YDDH as e_JZGJBSJ_YDDH--教职工基本数据子类表 移动电话
      ,e.GDDH as e_JZGJBSJ_GDDH--教职工基本数据子类表 固定电话
      ,e.TXDZYZBM as e_JZGJBSJ_TXDZYZBM--教职工基本数据子类表 通信地址邮政编码
      ,e.TXDZ as e_JZGJBSJ_TXDZ--教职工基本数据子类表 通信地址
      ,e.DZXX as e_JZGJBSJ_DZXX--教职工基本数据子类表 电子信箱
      ,e.WLDZ as e_JZGJBSJ_WLDZ--教职工基本数据子类表 网络地址
      ,e.JSTXH as e_JZGJBSJ_JSTXH--教职工基本数据子类表 即时通讯号
      ,e.JSKQJS as e_JZGJBSJ_JSKQJS--教职工基本数据子类表 教师考勤角色
      ,e.FullTeacherName as e_JZGJBSJ_FullTeacherName--教职工基本数据子类表 完整老师姓名
      ,e.RecordID as e_JZGJBSJ_RecordID--教职工基本数据子类表 记录ID

FROM dbo.EDU_ZZJX_36_A03_JXPJ AS a LEFT OUTER JOIN
      dbo.EDU_ZZJX_36_A01_JXJH AS c ON a.JXJHID = c.ID /*见习计划ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZXS_01_01_XSXX AS d ON a.XSXXID = d.ID /*学生信息ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS e ON a.PJJSID = e.ID /*评价教师ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS [db] ON d.SFZJLXM = [db].DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS [dc] ON d.XBM = [dc].DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS [dd] ON d.XXM = [dd].DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [de] ON d.CSDM = [de].DM /*出生地码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS [df] ON d.MZM = [df].DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS [dg] ON d.HYZKM = [dg].DM /*婚姻状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS [dh] ON d.XYZJM = [dh].DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS [di] ON d.GATQWM = [di].DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS [dj] ON d.JKZKM = [dj].DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS [dk] ON d.ZZMMM = [dk].DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [dl] ON d.HKSZDXZQHM = [dl].DM /*户口所在地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS [dm] ON d.HKLBM = [dm].DM /*户口类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [dn] ON d.SFSLDRK = [dn].DM /*是否是流动人口*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS [do] ON d.GJDQM = [do].DM /*国籍/地区*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS [eb] ON e.SFZJLXM = [eb].DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS [ec] ON e.XBM = [ec].DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS [ed] ON e.MZM = [ed].DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS [ee] ON e.XXM = [ee].DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS [ef] ON e.JKZKM = [ef].DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS [eg] ON e.HYZTM = [eg].DM /*婚姻状态码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS [eh] ON e.ZZMMM = [eh].DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS [ei] ON e.GATQWM = [ei].DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS [ej] ON e.GJDQM = [ej].DM /*国籍/地区码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [ek] ON e.CSDXZQHM = [ek].DM /*出生地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS [el] ON e.XYZJM = [el].DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [em] ON e.JZGHKSZDXZQHM = [em].DM /*教职工户口所在地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS [en] ON e.HKLBM = [en].DM /*户口类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_BZLB AS [eo] ON e.BZLBM = [eo].DM /*编制类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGLB AS [ep] ON e.JZGLBM = [ep].DM /*教职工类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWLB AS [eq] ON e.GWLBM = [eq].DM /*岗位类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [er] ON e.SFJZJS = [er].DM /*是否兼职教师*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [es] ON e.SFSSXJS = [es].DM /*是否双师型教师*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGDQZT AS [et] ON e.DQZTM = [et].DM /*当前状态码*/
GO
