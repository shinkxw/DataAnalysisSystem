
--学生上报记录表
CREATE VIEW [dbo].[VIEW_EDU_ZXXS_50_A03_XSSBJL_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[BJID]--班级ID
      ,a.[XSXXID]--学生ID
      ,a.[QQYYID]--缺勤原因ID
      ,a.[QQSJ]--缺勤时间
      ,a.[JTQK]--具体情况
      ,a.[TW]--体温
      ,a.[SFJY]--是否就医
      ,a.[SFTZJZ]--是否通知家长
      ,a.[JZLXFS]--家长联系方式
      ,a.[RQ]--日期
      ,a.[SBJSID]--上报教师ID
      ,c.SCHOOLID as c_BJ_SCHOOLID--班级数据类表 学校名
      ,c.NJ as c_BJ_NJ--班级数据类表 年级号
      ,c.BJ as c_BJ_BJ--班级数据类表 班级名称
      ,c.JBNY as c_BJ_JBNY--班级数据类表 建班年月
      ,c.BZRGH as c_BJ_BZRGH--班级数据类表 班主任工号
      ,c.BZXH as c_BJ_BZXH--班级数据类表 班长学号
      ,c.BJRYCH as c_BJ_BJRYCH--班级数据类表 班级荣誉称号
      ,c.XZ as c_BJ_XZ--班级数据类表 学制
      ,c.BJLXM as c_BJ_BJLXM--班级数据类表 班级类型码
      ,[cb].MC as c_BJ_BJLXM_MC--中小学班级类型代码表 名称
      ,c.WLLX as c_BJ_WLLX--班级数据类表 文理类型
      ,c.BYRQ as c_BJ_BYRQ--班级数据类表 毕业日期
      ,c.SFSSMZSYJXB as c_BJ_SFSSMZSYJXB--班级数据类表 是否少数民族双语教学班
      ,[cc].MC as c_BJ_SFSSMZSYJXB_MC--是否标志代码表 名称
      ,c.SYJXMSM as c_BJ_SYJXMSM--班级数据类表 双语教学模式码
      ,[cd].MC as c_BJ_SYJXMSM_MC--少数民族双语教学模式代码表 名称
      ,[cd].SM as c_BJ_SYJXMSM_SM--少数民族双语教学模式代码表 说明
      ,c.BZRID as c_BJ_BZRID--班级数据类表 班主任ID
      ,c.ZT as c_BJ_ZT--班级数据类表 状态
      ,c.PLSX as c_BJ_PLSX--班级数据类表 排列顺序
      ,c.BJLBID as c_BJ_BJLBID--班级数据类表 班级类别ID
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
      ,e.SCHOOLID as e_QQYY_SCHOOLID--缺勤原因表 学校
      ,e.MC as e_QQYY_MC--缺勤原因表 名称
      ,f.MC as f_SFBZ_MC--是否标志代码表 名称
      ,g.MC as g_SFBZ_MC--是否标志代码表 名称
      ,h.SCHOOLID as h_JZGJBSJ_SCHOOLID--教职工基本数据子类表 学校名
      ,h.GH as h_JZGJBSJ_GH--教职工基本数据子类表 工号
      ,h.XM as h_JZGJBSJ_XM--教职工基本数据子类表 姓名
      ,h.YWXM as h_JZGJBSJ_YWXM--教职工基本数据子类表 英文姓名
      ,h.XMPY as h_JZGJBSJ_XMPY--教职工基本数据子类表 姓名拼音
      ,h.CYM as h_JZGJBSJ_CYM--教职工基本数据子类表 曾用名
      ,h.XBM as h_JZGJBSJ_XBM--教职工基本数据子类表 性别码
      ,[hb].MC as h_JZGJBSJ_XBM_MC--人的性别代码 名称
      ,h.CSRQ as h_JZGJBSJ_CSRQ--教职工基本数据子类表 出生日期
      ,h.CSDM as h_JZGJBSJ_CSDM--教职工基本数据子类表 出生地码
      ,[hc].MC as h_JZGJBSJ_CSDM_MC--中华人民共和国行政区划代码 名称
      ,h.JG as h_JZGJBSJ_JG--教职工基本数据子类表 籍贯
      ,h.MZM as h_JZGJBSJ_MZM--教职工基本数据子类表 民族码
      ,[hd].MZMC as h_JZGJBSJ_MZM_MZMC--中国各民族名称的罗马字母拼写法和代码 民族名称
      ,[hd].ZMDM as h_JZGJBSJ_MZM_ZMDM--中国各民族名称的罗马字母拼写法和代码 字母代码
      ,h.GJDQM as h_JZGJBSJ_GJDQM--教职工基本数据子类表 国籍/地区码
      ,[he].GJDQMCJC as h_JZGJBSJ_GJDQM_GJDQMCJC--世界各国和地区名称代码 国家/地区名称简称
      ,[he].EZMDM as h_JZGJBSJ_GJDQM_EZMDM--世界各国和地区名称代码 二字母代码
      ,[he].SZMDM as h_JZGJBSJ_GJDQM_SZMDM--世界各国和地区名称代码 三字母代码
      ,h.SFZJLXM as h_JZGJBSJ_SFZJLXM--教职工基本数据子类表 身份证件类型码
      ,[hf].MC as h_JZGJBSJ_SFZJLXM_MC--身份证件类型代码表 名称
      ,h.SFZJH as h_JZGJBSJ_SFZJH--教职工基本数据子类表 身份证件号
      ,h.HYZKM as h_JZGJBSJ_HYZKM--教职工基本数据子类表 婚姻状况码
      ,[hg].MC as h_JZGJBSJ_HYZKM_MC--婚姻状况代码 名称
      ,h.GATQWM as h_JZGJBSJ_GATQWM--教职工基本数据子类表 港澳台侨外码
      ,[hh].MC as h_JZGJBSJ_GATQWM_MC--港澳台侨外代码表 名称
      ,[hh].SM as h_JZGJBSJ_GATQWM_SM--港澳台侨外代码表 说明
      ,h.ZZMMM as h_JZGJBSJ_ZZMMM--教职工基本数据子类表 政治面貌码
      ,[hi].MC as h_JZGJBSJ_ZZMMM_MC--政治面貌代码 名称
      ,[hi].JC as h_JZGJBSJ_ZZMMM_JC--政治面貌代码 简称
      ,h.JKZKM as h_JZGJBSJ_JKZKM--教职工基本数据子类表 健康状况码
      ,[hj].MC as h_JZGJBSJ_JKZKM_MC--健康状况1位数字代码 名称
      ,[hj].SM as h_JZGJBSJ_JKZKM_SM--健康状况1位数字代码 说明
      ,h.XYZJM as h_JZGJBSJ_XYZJM--教职工基本数据子类表 信仰宗教码
      ,[hk].MC as h_JZGJBSJ_XYZJM_MC--宗教信仰代码 名称
      ,h.XXM as h_JZGJBSJ_XXM--教职工基本数据子类表 血型码
      ,[hl].MC as h_JZGJBSJ_XXM_MC--血型代码表 名称
      ,[hl].JC as h_JZGJBSJ_XXM_JC--血型代码表 简称
      ,h.ZP as h_JZGJBSJ_ZP--教职工基本数据子类表 照片
      ,h.SFZJYXQ as h_JZGJBSJ_SFZJYXQ--教职工基本数据子类表 身份证件有效期
      ,h.JGH as h_JZGJBSJ_JGH--教职工基本数据子类表 机构号
      ,h.JTZZ as h_JZGJBSJ_JTZZ--教职工基本数据子类表 家庭住址
      ,h.XZZ as h_JZGJBSJ_XZZ--教职工基本数据子类表 现住址
      ,h.HKSZD as h_JZGJBSJ_HKSZD--教职工基本数据子类表 户口所在地
      ,h.HKXZM as h_JZGJBSJ_HKXZM--教职工基本数据子类表 户口性质码
      ,[hm].MC as h_JZGJBSJ_HKXZM_MC--户口类别代码 名称
      ,h.XLM as h_JZGJBSJ_XLM--教职工基本数据子类表 学历码
      ,[hn].MC as h_JZGJBSJ_XLM_MC--学历代码 名称
      ,h.GZNY as h_JZGJBSJ_GZNY--教职工基本数据子类表 参加工作年月
      ,h.LXNY as h_JZGJBSJ_LXNY--教职工基本数据子类表 来校年月
      ,h.CJNY as h_JZGJBSJ_CJNY--教职工基本数据子类表 从教年月
      ,h.BZLBM as h_JZGJBSJ_BZLBM--教职工基本数据子类表 编制类别码
      ,[ho].MC as h_JZGJBSJ_BZLBM_MC--中小学编制类别代码表 名称
      ,h.DABH as h_JZGJBSJ_DABH--教职工基本数据子类表 档案编号
      ,h.DAWB as h_JZGJBSJ_DAWB--教职工基本数据子类表 档案文本
      ,h.TXDZ as h_JZGJBSJ_TXDZ--教职工基本数据子类表 通信地址
      ,h.LXDH as h_JZGJBSJ_LXDH--教职工基本数据子类表 联系电话
      ,h.YZBM as h_JZGJBSJ_YZBM--教职工基本数据子类表 邮政编码
      ,h.DZXX as h_JZGJBSJ_DZXX--教职工基本数据子类表 电子信箱
      ,h.ZYDZ as h_JZGJBSJ_ZYDZ--教职工基本数据子类表 主页地址
      ,h.TC as h_JZGJBSJ_TC--教职工基本数据子类表 特长
      ,h.GWZYM as h_JZGJBSJ_GWZYM--教职工基本数据子类表 岗位职业码
      ,[hp].MC as h_JZGJBSJ_GWZYM_MC--岗位职业代码表 名称
      ,h.ZYRKXD as h_JZGJBSJ_ZYRKXD--教职工基本数据子类表 主要任课学段
      ,[hq].MC as h_JZGJBSJ_ZYRKXD_MC--任课学段代码表 名称
      ,h.JZGLXID as h_JZGJBSJ_JZGLXID--教职工基本数据子类表 教职工类型ID

FROM dbo.EDU_ZXXS_50_A03_XSSBJL AS a LEFT OUTER JOIN
      dbo.EDU_ZXXX_03_01_BJ AS c ON a.BJID = c.BH /*班级ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZXXS_01_01_XSXX AS d ON a.XSXXID = d.ID /*学生ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZXXS_50_A01_QQYY AS e ON a.QQYYID = e.ID /*缺勤原因ID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS f ON a.SFJY = f.DM /*是否就医*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS g ON a.SFTZJZ = g.DM /*是否通知家长*/ LEFT OUTER JOIN
      dbo.EDU_ZXJZ_01_01_JZGJBSJ AS h ON a.SBJSID = h.ID /*上报教师ID*/ AND a.SCHOOLID = h.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXBJLX AS [cb] ON c.BJLXM = [cb].DM /*班级类型码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [cc] ON c.SFSSMZSYJXB = [cc].DM /*是否少数民族双语教学班*/ LEFT OUTER JOIN
      dbo.EDU_JY_SSMZSYJXMS AS [cd] ON c.SYJXMSM = [cd].DM /*双语教学模式码*/ LEFT OUTER JOIN
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
      dbo.EDU_JY_XSDQZT AS [dq] ON d.XSDQZTM = [dq].DM /*学生当前状态码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS [hb] ON h.XBM = [hb].DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [hc] ON h.CSDM = [hc].DM /*出生地码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS [hd] ON h.MZM = [hd].DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS [he] ON h.GJDQM = [he].DM /*国籍/地区码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS [hf] ON h.SFZJLXM = [hf].DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS [hg] ON h.HYZKM = [hg].DM /*婚姻状况码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS [hh] ON h.GATQWM = [hh].DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS [hi] ON h.ZZMMM = [hi].DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS [hj] ON h.JKZKM = [hj].DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS [hk] ON h.XYZJM = [hk].DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS [hl] ON h.XXM = [hl].DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS [hm] ON h.HKXZM = [hm].DM /*户口性质码*/ LEFT OUTER JOIN
      dbo.EDU_GB_XL AS [hn] ON h.XLM = [hn].DM /*学历码*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXBZLB AS [ho] ON h.BZLBM = [ho].DM /*编制类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWZY AS [hp] ON h.GWZYM = [hp].DM /*岗位职业码*/ LEFT OUTER JOIN
      dbo.EDU_JY_RKXD AS [hq] ON h.ZYRKXD = [hq].DM /*主要任课学段*/
GO
