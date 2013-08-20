
--学生基本数据子类表
CREATE VIEW [dbo].[VIEW_EDU_ZXXS_01_01_XSXX_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校名
      ,a.[XH]--学号
      ,a.[XM]--姓名
      ,a.[YWXM]--英文姓名
      ,a.[XMPY]--姓名拼音
      ,a.[CYM]--曾用名
      ,a.[XBM]--性别码
      ,a.[CSRQ]--出生日期
      ,a.[CSDM]--出生地码
      ,a.[JG]--籍贯
      ,a.[MZM]--民族码
      ,a.[GJDQM]--国籍/地区码
      ,a.[SFZJLXM]--身份证件类型码
      ,a.[SFZJH]--身份证件号
      ,a.[HYZKM]--婚姻状况码
      ,a.[GATQWM]--港澳台侨外码
      ,a.[ZZMMM]--政治面貌码
      ,a.[JKZKM]--健康状况码
      ,a.[XYZJM]--信仰宗教码
      ,a.[XXM]--血型码
      ,a.[ZP]--照片
      ,a.[SFZJYXQ]--身份证件有效期
      ,a.[DSZYBZ]--独生子女标志
      ,a.[RXNY]--入学年月
      ,a.[NJ]--年级
      ,a.[BH]--班号
      ,a.[XSLBM]--学生类别码
      ,a.[XZZ]--现住址
      ,a.[HKSZD]--户口所在地
      ,a.[HKXZM]--户口性质码
      ,a.[SFLDRK]--是否流动人口
      ,a.[TC]--特长
      ,a.[LXDH]--联系电话
      ,a.[TXDZ]--通信地址
      ,a.[YZBM]--邮政编码
      ,a.[DZXX]--电子信箱
      ,a.[ZYDZ]--主页地址
      ,a.[XJH]--学籍号
      ,b.SCHOOLNAME as b_SCHOOL_SCHOOLNAME--学校配置表 学校名称
      ,b.SCHOOLTYPE as b_SCHOOL_SCHOOLTYPE--学校配置表 学校类型
      ,b.XNID as b_SCHOOL_XNID--学校配置表 学年ID
      ,b.XQID as b_SCHOOL_XQID--学校配置表 学期ID
      ,b.MatchURL as b_SCHOOL_MatchURL--学校配置表 匹配url
      ,b.LogLevel as b_SCHOOL_LogLevel--学校配置表 日志级别
      ,c.MC as c_RDXB_MC--人的性别代码 名称
      ,d.MC as d_ZHRMGHGXZQH_MC--中华人民共和国行政区划代码 名称
      ,e.MZMC as e_ZGGMZMCDLMZMPXF_MZMC--中国各民族名称的罗马字母拼写法和代码 民族名称
      ,e.ZMDM as e_ZGGMZMCDLMZMPXF_ZMDM--中国各民族名称的罗马字母拼写法和代码 字母代码
      ,f.GJDQMCJC as f_SJGGHDQMC_GJDQMCJC--世界各国和地区名称代码 国家/地区名称简称
      ,f.EZMDM as f_SJGGHDQMC_EZMDM--世界各国和地区名称代码 二字母代码
      ,f.SZMDM as f_SJGGHDQMC_SZMDM--世界各国和地区名称代码 三字母代码
      ,g.MC as g_SFZJLX_MC--身份证件类型代码表 名称
      ,h.MC as h_HYZZ_MC--婚姻状况代码 名称
      ,i.MC as i_GATQW_MC--港澳台侨外代码表 名称
      ,i.SM as i_GATQW_SM--港澳台侨外代码表 说明
      ,j.MC as j_ZZMM_MC--政治面貌代码 名称
      ,j.JC as j_ZZMM_JC--政治面貌代码 简称
      ,k.MC as k_JKZKYWSZ_MC--健康状况1位数字代码 名称
      ,k.SM as k_JKZKYWSZ_SM--健康状况1位数字代码 说明
      ,l.MC as l_ZJXY_MC--宗教信仰代码 名称
      ,m.MC as m_XX_MC--血型代码表 名称
      ,m.JC as m_XX_JC--血型代码表 简称
      ,n.MC as n_SFBZ_MC--是否标志代码表 名称
      ,o.SCHOOLID as o_NJ_SCHOOLID--年级数据类表 学校名
      ,o.NJMC as o_NJ_NJMC--年级数据类表 年级名称
      ,p.SCHOOLID as p_BJ_SCHOOLID--班级数据类表 学校名
      ,p.NJ as p_BJ_NJ--班级数据类表 年级号
      ,p.BJ as p_BJ_BJ--班级数据类表 班级名称
      ,p.JBNY as p_BJ_JBNY--班级数据类表 建班年月
      ,p.BZRGH as p_BJ_BZRGH--班级数据类表 班主任工号
      ,p.BZXH as p_BJ_BZXH--班级数据类表 班长学号
      ,p.BJRYCH as p_BJ_BJRYCH--班级数据类表 班级荣誉称号
      ,p.XZ as p_BJ_XZ--班级数据类表 学制
      ,p.BJLXM as p_BJ_BJLXM--班级数据类表 班级类型码
      ,pb.MC as p_BJ_BJLXM_MC--中小学班级类型代码表 名称
      ,p.WLLX as p_BJ_WLLX--班级数据类表 文理类型
      ,p.BYRQ as p_BJ_BYRQ--班级数据类表 毕业日期
      ,p.SFSSMZSYJXB as p_BJ_SFSSMZSYJXB--班级数据类表 是否少数民族双语教学班
      ,pc.MC as p_BJ_SFSSMZSYJXB_MC--是否标志代码表 名称
      ,p.SYJXMSM as p_BJ_SYJXMSM--班级数据类表 双语教学模式码
      ,pd.MC as p_BJ_SYJXMSM_MC--少数民族双语教学模式代码表 名称
      ,pd.SM as p_BJ_SYJXMSM_SM--少数民族双语教学模式代码表 说明
      ,q.MC as q_XSLB_MC--学生类别代码表 名称
      ,q.SM as q_XSLB_SM--学生类别代码表 说明
      ,r.MC as r_HKLB_MC--户口类别代码 名称
      ,s.MC as s_SFBZ_MC--是否标志代码表 名称

FROM dbo.EDU_ZXXS_01_01_XSXX AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS c ON a.XBM = c.DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS d ON a.CSDM = d.DM /*出生地码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS e ON a.MZM = e.DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS f ON a.GJDQM = f.DM /*国籍/地区码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS g ON a.SFZJLXM = g.DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS h ON a.HYZKM = h.DM /*婚姻状况码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS i ON a.GATQWM = i.DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS j ON a.ZZMMM = j.DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS k ON a.JKZKM = k.DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS l ON a.XYZJM = l.DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS m ON a.XXM = m.DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS n ON a.DSZYBZ = n.DM /*独生子女标志*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_02_01_NJ AS o ON a.NJ = o.NJ /*年级*/ AND a.SCHOOLID = o.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_03_01_BJ AS p ON a.BH = p.BH /*班号*/ AND a.SCHOOLID = p.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_JY_XSLB AS q ON a.XSLBM = q.DM /*学生类别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS r ON a.HKXZM = r.DM /*户口性质码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS s ON a.SFLDRK = s.DM /*是否流动人口*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXBJLX AS pb ON p.BJLXM = pb.DM /*班级类型码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS pc ON p.SFSSMZSYJXB = pc.DM /*是否少数民族双语教学班*/ LEFT OUTER JOIN
      dbo.EDU_JY_SSMZSYJXMS AS pd ON p.SYJXMSM = pd.DM /*双语教学模式码*/
GO
