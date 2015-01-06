
--学籍异动数据子类表
CREATE VIEW [dbo].[VIEW_EDU_ZXXS_07_A02_XJYD_DISP]
AS
SELECT a.[ID]--学籍异动表编号
      ,a.[XSXXID]--学生ID
      ,a.[SCHOOLID]--学校ID
      ,a.[YDLBM]--异动类别码
      ,a.[YDRQ]--异动日期
      ,a.[YDYYM]--异动原因码
      ,a.[SPRQ]--审批日期
      ,a.[SPWH]--审批文号
      ,a.[JBRID]--经办人ID
      ,a.[JBRGH]--经办人工号
      ,a.[YDLYXXM]--异动来源学校码
      ,a.[YDQXXXM]--异动去向学校码
      ,a.[YDSM]--异动说明
      ,a.[YBH]--原班号
      ,a.[YNJ]--原年级
      ,a.[XBH]--现班号
      ,a.[XNJ]--现年级
      ,b.SCHOOLID as b_XSXX_SCHOOLID--学生基本数据子类表 学校名
      ,b.XH as b_XSXX_XH--学生基本数据子类表 学号
      ,b.XM as b_XSXX_XM--学生基本数据子类表 姓名
      ,b.YWXM as b_XSXX_YWXM--学生基本数据子类表 英文姓名
      ,b.XMPY as b_XSXX_XMPY--学生基本数据子类表 姓名拼音
      ,b.CYM as b_XSXX_CYM--学生基本数据子类表 曾用名
      ,b.XBM as b_XSXX_XBM--学生基本数据子类表 性别码
      ,[bb].MC as b_XSXX_XBM_MC--人的性别代码 名称
      ,b.CSRQ as b_XSXX_CSRQ--学生基本数据子类表 出生日期
      ,b.CSDM as b_XSXX_CSDM--学生基本数据子类表 出生地码
      ,[bc].MC as b_XSXX_CSDM_MC--中华人民共和国行政区划代码 名称
      ,b.JG as b_XSXX_JG--学生基本数据子类表 籍贯
      ,b.MZM as b_XSXX_MZM--学生基本数据子类表 民族码
      ,[bd].MZMC as b_XSXX_MZM_MZMC--中国各民族名称的罗马字母拼写法和代码 民族名称
      ,[bd].ZMDM as b_XSXX_MZM_ZMDM--中国各民族名称的罗马字母拼写法和代码 字母代码
      ,b.GJDQM as b_XSXX_GJDQM--学生基本数据子类表 国籍/地区码
      ,[be].GJDQMCJC as b_XSXX_GJDQM_GJDQMCJC--世界各国和地区名称代码 国家/地区名称简称
      ,[be].EZMDM as b_XSXX_GJDQM_EZMDM--世界各国和地区名称代码 二字母代码
      ,[be].SZMDM as b_XSXX_GJDQM_SZMDM--世界各国和地区名称代码 三字母代码
      ,b.SFZJLXM as b_XSXX_SFZJLXM--学生基本数据子类表 身份证件类型码
      ,[bf].MC as b_XSXX_SFZJLXM_MC--身份证件类型代码表 名称
      ,b.SFZJH as b_XSXX_SFZJH--学生基本数据子类表 身份证件号
      ,b.HYZKM as b_XSXX_HYZKM--学生基本数据子类表 婚姻状况码
      ,[bg].MC as b_XSXX_HYZKM_MC--婚姻状况代码 名称
      ,b.GATQWM as b_XSXX_GATQWM--学生基本数据子类表 港澳台侨外码
      ,[bh].MC as b_XSXX_GATQWM_MC--港澳台侨外代码表 名称
      ,[bh].SM as b_XSXX_GATQWM_SM--港澳台侨外代码表 说明
      ,b.ZZMMM as b_XSXX_ZZMMM--学生基本数据子类表 政治面貌码
      ,[bi].MC as b_XSXX_ZZMMM_MC--政治面貌代码 名称
      ,[bi].JC as b_XSXX_ZZMMM_JC--政治面貌代码 简称
      ,b.JKZKM as b_XSXX_JKZKM--学生基本数据子类表 健康状况码
      ,[bj].MC as b_XSXX_JKZKM_MC--健康状况1位数字代码 名称
      ,[bj].SM as b_XSXX_JKZKM_SM--健康状况1位数字代码 说明
      ,b.XYZJM as b_XSXX_XYZJM--学生基本数据子类表 信仰宗教码
      ,[bk].MC as b_XSXX_XYZJM_MC--宗教信仰代码 名称
      ,b.XXM as b_XSXX_XXM--学生基本数据子类表 血型码
      ,[bl].MC as b_XSXX_XXM_MC--血型代码表 名称
      ,[bl].JC as b_XSXX_XXM_JC--血型代码表 简称
      ,b.ZP as b_XSXX_ZP--学生基本数据子类表 照片
      ,b.SFZJYXQ as b_XSXX_SFZJYXQ--学生基本数据子类表 身份证件有效期
      ,b.DSZYBZ as b_XSXX_DSZYBZ--学生基本数据子类表 独生子女标志
      ,[bm].MC as b_XSXX_DSZYBZ_MC--是否标志代码表 名称
      ,b.RXNY as b_XSXX_RXNY--学生基本数据子类表 入学年月
      ,b.NJ as b_XSXX_NJ--学生基本数据子类表 年级
      ,b.BH as b_XSXX_BH--学生基本数据子类表 班号
      ,b.XSLBM as b_XSXX_XSLBM--学生基本数据子类表 学生类别码
      ,[bn].MC as b_XSXX_XSLBM_MC--学生类别代码表 名称
      ,[bn].SM as b_XSXX_XSLBM_SM--学生类别代码表 说明
      ,b.XZZ as b_XSXX_XZZ--学生基本数据子类表 现住址
      ,b.HKSZD as b_XSXX_HKSZD--学生基本数据子类表 户口所在地
      ,b.HKXZM as b_XSXX_HKXZM--学生基本数据子类表 户口性质码
      ,[bo].MC as b_XSXX_HKXZM_MC--户口类别代码 名称
      ,b.SFLDRK as b_XSXX_SFLDRK--学生基本数据子类表 是否流动人口
      ,[bp].MC as b_XSXX_SFLDRK_MC--是否标志代码表 名称
      ,b.TC as b_XSXX_TC--学生基本数据子类表 特长
      ,b.LXDH as b_XSXX_LXDH--学生基本数据子类表 联系电话
      ,b.TXDZ as b_XSXX_TXDZ--学生基本数据子类表 通信地址
      ,b.YZBM as b_XSXX_YZBM--学生基本数据子类表 邮政编码
      ,b.DZXX as b_XSXX_DZXX--学生基本数据子类表 电子信箱
      ,b.ZYDZ as b_XSXX_ZYDZ--学生基本数据子类表 主页地址
      ,b.XJH as b_XSXX_XJH--学生基本数据子类表 学籍号
      ,b.XSDQZTM as b_XSXX_XSDQZTM--学生基本数据子类表 学生当前状态码
      ,[bq].MC as b_XSXX_XSDQZTM_MC--学生当前状态代码表 名称
      ,[bq].SM as b_XSXX_XSDQZTM_SM--学生当前状态代码表 说明
      ,d.MC as d_XJYDLB_MC--学籍异动类别代码表 名称
      ,e.MC as e_XJYDYY_MC--学籍异动原因代码表 名称
      ,f.SCHOOLID as f_JZGJBSJ_SCHOOLID--教职工基本数据子类表 学校名
      ,f.GH as f_JZGJBSJ_GH--教职工基本数据子类表 工号
      ,f.XM as f_JZGJBSJ_XM--教职工基本数据子类表 姓名
      ,f.YWXM as f_JZGJBSJ_YWXM--教职工基本数据子类表 英文姓名
      ,f.XMPY as f_JZGJBSJ_XMPY--教职工基本数据子类表 姓名拼音
      ,f.CYM as f_JZGJBSJ_CYM--教职工基本数据子类表 曾用名
      ,f.XBM as f_JZGJBSJ_XBM--教职工基本数据子类表 性别码
      ,[fb].MC as f_JZGJBSJ_XBM_MC--人的性别代码 名称
      ,f.CSRQ as f_JZGJBSJ_CSRQ--教职工基本数据子类表 出生日期
      ,f.CSDM as f_JZGJBSJ_CSDM--教职工基本数据子类表 出生地码
      ,[fc].MC as f_JZGJBSJ_CSDM_MC--中华人民共和国行政区划代码 名称
      ,f.JG as f_JZGJBSJ_JG--教职工基本数据子类表 籍贯
      ,f.MZM as f_JZGJBSJ_MZM--教职工基本数据子类表 民族码
      ,[fd].MZMC as f_JZGJBSJ_MZM_MZMC--中国各民族名称的罗马字母拼写法和代码 民族名称
      ,[fd].ZMDM as f_JZGJBSJ_MZM_ZMDM--中国各民族名称的罗马字母拼写法和代码 字母代码
      ,f.GJDQM as f_JZGJBSJ_GJDQM--教职工基本数据子类表 国籍/地区码
      ,[fe].GJDQMCJC as f_JZGJBSJ_GJDQM_GJDQMCJC--世界各国和地区名称代码 国家/地区名称简称
      ,[fe].EZMDM as f_JZGJBSJ_GJDQM_EZMDM--世界各国和地区名称代码 二字母代码
      ,[fe].SZMDM as f_JZGJBSJ_GJDQM_SZMDM--世界各国和地区名称代码 三字母代码
      ,f.SFZJLXM as f_JZGJBSJ_SFZJLXM--教职工基本数据子类表 身份证件类型码
      ,[ff].MC as f_JZGJBSJ_SFZJLXM_MC--身份证件类型代码表 名称
      ,f.SFZJH as f_JZGJBSJ_SFZJH--教职工基本数据子类表 身份证件号
      ,f.HYZKM as f_JZGJBSJ_HYZKM--教职工基本数据子类表 婚姻状况码
      ,[fg].MC as f_JZGJBSJ_HYZKM_MC--婚姻状况代码 名称
      ,f.GATQWM as f_JZGJBSJ_GATQWM--教职工基本数据子类表 港澳台侨外码
      ,[fh].MC as f_JZGJBSJ_GATQWM_MC--港澳台侨外代码表 名称
      ,[fh].SM as f_JZGJBSJ_GATQWM_SM--港澳台侨外代码表 说明
      ,f.ZZMMM as f_JZGJBSJ_ZZMMM--教职工基本数据子类表 政治面貌码
      ,[fi].MC as f_JZGJBSJ_ZZMMM_MC--政治面貌代码 名称
      ,[fi].JC as f_JZGJBSJ_ZZMMM_JC--政治面貌代码 简称
      ,f.JKZKM as f_JZGJBSJ_JKZKM--教职工基本数据子类表 健康状况码
      ,[fj].MC as f_JZGJBSJ_JKZKM_MC--健康状况1位数字代码 名称
      ,[fj].SM as f_JZGJBSJ_JKZKM_SM--健康状况1位数字代码 说明
      ,f.XYZJM as f_JZGJBSJ_XYZJM--教职工基本数据子类表 信仰宗教码
      ,[fk].MC as f_JZGJBSJ_XYZJM_MC--宗教信仰代码 名称
      ,f.XXM as f_JZGJBSJ_XXM--教职工基本数据子类表 血型码
      ,[fl].MC as f_JZGJBSJ_XXM_MC--血型代码表 名称
      ,[fl].JC as f_JZGJBSJ_XXM_JC--血型代码表 简称
      ,f.ZP as f_JZGJBSJ_ZP--教职工基本数据子类表 照片
      ,f.SFZJYXQ as f_JZGJBSJ_SFZJYXQ--教职工基本数据子类表 身份证件有效期
      ,f.JGH as f_JZGJBSJ_JGH--教职工基本数据子类表 机构号
      ,f.JTZZ as f_JZGJBSJ_JTZZ--教职工基本数据子类表 家庭住址
      ,f.XZZ as f_JZGJBSJ_XZZ--教职工基本数据子类表 现住址
      ,f.HKSZD as f_JZGJBSJ_HKSZD--教职工基本数据子类表 户口所在地
      ,f.HKXZM as f_JZGJBSJ_HKXZM--教职工基本数据子类表 户口性质码
      ,[fm].MC as f_JZGJBSJ_HKXZM_MC--户口类别代码 名称
      ,f.XLM as f_JZGJBSJ_XLM--教职工基本数据子类表 学历码
      ,[fn].MC as f_JZGJBSJ_XLM_MC--学历代码 名称
      ,f.GZNY as f_JZGJBSJ_GZNY--教职工基本数据子类表 参加工作年月
      ,f.LXNY as f_JZGJBSJ_LXNY--教职工基本数据子类表 来校年月
      ,f.CJNY as f_JZGJBSJ_CJNY--教职工基本数据子类表 从教年月
      ,f.BZLBM as f_JZGJBSJ_BZLBM--教职工基本数据子类表 编制类别码
      ,[fo].MC as f_JZGJBSJ_BZLBM_MC--中小学编制类别代码表 名称
      ,f.DABH as f_JZGJBSJ_DABH--教职工基本数据子类表 档案编号
      ,f.DAWB as f_JZGJBSJ_DAWB--教职工基本数据子类表 档案文本
      ,f.TXDZ as f_JZGJBSJ_TXDZ--教职工基本数据子类表 通信地址
      ,f.LXDH as f_JZGJBSJ_LXDH--教职工基本数据子类表 联系电话
      ,f.YZBM as f_JZGJBSJ_YZBM--教职工基本数据子类表 邮政编码
      ,f.DZXX as f_JZGJBSJ_DZXX--教职工基本数据子类表 电子信箱
      ,f.ZYDZ as f_JZGJBSJ_ZYDZ--教职工基本数据子类表 主页地址
      ,f.TC as f_JZGJBSJ_TC--教职工基本数据子类表 特长
      ,f.GWZYM as f_JZGJBSJ_GWZYM--教职工基本数据子类表 岗位职业码
      ,[fp].MC as f_JZGJBSJ_GWZYM_MC--岗位职业代码表 名称
      ,f.ZYRKXD as f_JZGJBSJ_ZYRKXD--教职工基本数据子类表 主要任课学段
      ,[fq].MC as f_JZGJBSJ_ZYRKXD_MC--任课学段代码表 名称
      ,f.JZGLXID as f_JZGJBSJ_JZGLXID--教职工基本数据子类表 教职工类型ID
      ,g.SCHOOLID as g_BJ_SCHOOLID--班级数据类表 学校名
      ,g.NJ as g_BJ_NJ--班级数据类表 年级号
      ,g.BJ as g_BJ_BJ--班级数据类表 班级名称
      ,g.JBNY as g_BJ_JBNY--班级数据类表 建班年月
      ,g.BZRGH as g_BJ_BZRGH--班级数据类表 班主任工号
      ,g.BZXH as g_BJ_BZXH--班级数据类表 班长学号
      ,g.BJRYCH as g_BJ_BJRYCH--班级数据类表 班级荣誉称号
      ,g.XZ as g_BJ_XZ--班级数据类表 学制
      ,g.BJLXM as g_BJ_BJLXM--班级数据类表 班级类型码
      ,[gb].MC as g_BJ_BJLXM_MC--中小学班级类型代码表 名称
      ,g.WLLX as g_BJ_WLLX--班级数据类表 文理类型
      ,g.BYRQ as g_BJ_BYRQ--班级数据类表 毕业日期
      ,g.SFSSMZSYJXB as g_BJ_SFSSMZSYJXB--班级数据类表 是否少数民族双语教学班
      ,[gc].MC as g_BJ_SFSSMZSYJXB_MC--是否标志代码表 名称
      ,g.SYJXMSM as g_BJ_SYJXMSM--班级数据类表 双语教学模式码
      ,[gd].MC as g_BJ_SYJXMSM_MC--少数民族双语教学模式代码表 名称
      ,[gd].SM as g_BJ_SYJXMSM_SM--少数民族双语教学模式代码表 说明
      ,g.BZRID as g_BJ_BZRID--班级数据类表 班主任ID
      ,g.ZT as g_BJ_ZT--班级数据类表 状态
      ,g.PLSX as g_BJ_PLSX--班级数据类表 排列顺序
      ,g.BJLBID as g_BJ_BJLBID--班级数据类表 班级类别ID
      ,h.SCHOOLID as h_NJ_SCHOOLID--年级数据类表 学校名
      ,h.NJMC as h_NJ_NJMC--年级数据类表 年级名称
      ,h.ZT as h_NJ_ZT--年级数据类表 状态
      ,h.PLSX as h_NJ_PLSX--年级数据类表 排列顺序
      ,i.SCHOOLID as i_BJ_SCHOOLID--班级数据类表 学校名
      ,i.NJ as i_BJ_NJ--班级数据类表 年级号
      ,i.BJ as i_BJ_BJ--班级数据类表 班级名称
      ,i.JBNY as i_BJ_JBNY--班级数据类表 建班年月
      ,i.BZRGH as i_BJ_BZRGH--班级数据类表 班主任工号
      ,i.BZXH as i_BJ_BZXH--班级数据类表 班长学号
      ,i.BJRYCH as i_BJ_BJRYCH--班级数据类表 班级荣誉称号
      ,i.XZ as i_BJ_XZ--班级数据类表 学制
      ,i.BJLXM as i_BJ_BJLXM--班级数据类表 班级类型码
      ,[ib].MC as i_BJ_BJLXM_MC--中小学班级类型代码表 名称
      ,i.WLLX as i_BJ_WLLX--班级数据类表 文理类型
      ,i.BYRQ as i_BJ_BYRQ--班级数据类表 毕业日期
      ,i.SFSSMZSYJXB as i_BJ_SFSSMZSYJXB--班级数据类表 是否少数民族双语教学班
      ,[ic].MC as i_BJ_SFSSMZSYJXB_MC--是否标志代码表 名称
      ,i.SYJXMSM as i_BJ_SYJXMSM--班级数据类表 双语教学模式码
      ,[id].MC as i_BJ_SYJXMSM_MC--少数民族双语教学模式代码表 名称
      ,[id].SM as i_BJ_SYJXMSM_SM--少数民族双语教学模式代码表 说明
      ,i.BZRID as i_BJ_BZRID--班级数据类表 班主任ID
      ,i.ZT as i_BJ_ZT--班级数据类表 状态
      ,i.PLSX as i_BJ_PLSX--班级数据类表 排列顺序
      ,i.BJLBID as i_BJ_BJLBID--班级数据类表 班级类别ID
      ,j.SCHOOLID as j_NJ_SCHOOLID--年级数据类表 学校名
      ,j.NJMC as j_NJ_NJMC--年级数据类表 年级名称
      ,j.ZT as j_NJ_ZT--年级数据类表 状态
      ,j.PLSX as j_NJ_PLSX--年级数据类表 排列顺序

FROM dbo.EDU_ZXXS_07_A02_XJYD AS a LEFT OUTER JOIN
      dbo.EDU_ZXXS_01_01_XSXX AS b ON a.XSXXID = b.ID /*学生ID*/ AND a.SCHOOLID = b.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_JY_XJYDLB AS d ON a.YDLBM = d.DM /*异动类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XJYDYY AS e ON a.YDYYM = e.DM /*异动原因码*/ LEFT OUTER JOIN
      dbo.EDU_ZXJZ_01_01_JZGJBSJ AS f ON a.JBRID = f.ID /*经办人ID*/ AND a.SCHOOLID = f.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_03_01_BJ AS g ON a.YBH = g.BH /*原班号*/ AND a.SCHOOLID = g.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_02_01_NJ AS h ON a.YNJ = h.NJ /*原年级*/ AND a.SCHOOLID = h.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_03_01_BJ AS i ON a.XBH = i.BH /*现班号*/ AND a.SCHOOLID = i.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_02_01_NJ AS j ON a.XNJ = j.NJ /*现年级*/ AND a.SCHOOLID = j.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS [bb] ON b.XBM = [bb].DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [bc] ON b.CSDM = [bc].DM /*出生地码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS [bd] ON b.MZM = [bd].DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS [be] ON b.GJDQM = [be].DM /*国籍/地区码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS [bf] ON b.SFZJLXM = [bf].DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS [bg] ON b.HYZKM = [bg].DM /*婚姻状况码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS [bh] ON b.GATQWM = [bh].DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS [bi] ON b.ZZMMM = [bi].DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS [bj] ON b.JKZKM = [bj].DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS [bk] ON b.XYZJM = [bk].DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS [bl] ON b.XXM = [bl].DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [bm] ON b.DSZYBZ = [bm].DM /*独生子女标志*/ LEFT OUTER JOIN
      dbo.EDU_JY_XSLB AS [bn] ON b.XSLBM = [bn].DM /*学生类别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS [bo] ON b.HKXZM = [bo].DM /*户口性质码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [bp] ON b.SFLDRK = [bp].DM /*是否流动人口*/ LEFT OUTER JOIN
      dbo.EDU_JY_XSDQZT AS [bq] ON b.XSDQZTM = [bq].DM /*学生当前状态码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS [fb] ON f.XBM = [fb].DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [fc] ON f.CSDM = [fc].DM /*出生地码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS [fd] ON f.MZM = [fd].DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS [fe] ON f.GJDQM = [fe].DM /*国籍/地区码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS [ff] ON f.SFZJLXM = [ff].DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS [fg] ON f.HYZKM = [fg].DM /*婚姻状况码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS [fh] ON f.GATQWM = [fh].DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS [fi] ON f.ZZMMM = [fi].DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS [fj] ON f.JKZKM = [fj].DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS [fk] ON f.XYZJM = [fk].DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS [fl] ON f.XXM = [fl].DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS [fm] ON f.HKXZM = [fm].DM /*户口性质码*/ LEFT OUTER JOIN
      dbo.EDU_GB_XL AS [fn] ON f.XLM = [fn].DM /*学历码*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXBZLB AS [fo] ON f.BZLBM = [fo].DM /*编制类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWZY AS [fp] ON f.GWZYM = [fp].DM /*岗位职业码*/ LEFT OUTER JOIN
      dbo.EDU_JY_RKXD AS [fq] ON f.ZYRKXD = [fq].DM /*主要任课学段*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXBJLX AS [gb] ON g.BJLXM = [gb].DM /*班级类型码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [gc] ON g.SFSSMZSYJXB = [gc].DM /*是否少数民族双语教学班*/ LEFT OUTER JOIN
      dbo.EDU_JY_SSMZSYJXMS AS [gd] ON g.SYJXMSM = [gd].DM /*双语教学模式码*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXBJLX AS [ib] ON i.BJLXM = [ib].DM /*班级类型码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [ic] ON i.SFSSMZSYJXB = [ic].DM /*是否少数民族双语教学班*/ LEFT OUTER JOIN
      dbo.EDU_JY_SSMZSYJXMS AS [id] ON i.SYJXMSM = [id].DM /*双语教学模式码*/
GO
