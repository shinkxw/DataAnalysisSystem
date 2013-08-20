
--学生信息数据表
CREATE VIEW [dbo].[VIEW_EDU_ZZXS_01_01_XSXX_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校名
      ,a.[XH]--学号
      ,a.[XM]--姓名
      ,a.[YWXM]--英文姓名
      ,a.[XMPY]--姓名拼音
      ,a.[CYM]--曾用名
      ,a.[SFZJLXM]--身份证件类型码
      ,a.[SFZJH]--身份证件号
      ,a.[XBM]--性别码
      ,a.[XXM]--血型码
      ,a.[CSRQ]--出生日期
      ,a.[CSDM]--出生地码
      ,a.[JG]--籍贯
      ,a.[MZM]--民族码
      ,a.[HYZKM]--婚姻状况码
      ,a.[XYZJM]--信仰宗教码
      ,a.[GATQWM]--港澳台侨外码
      ,a.[JKZKM]--健康状况码
      ,a.[ZZMMM]--政治面貌码
      ,a.[HKSZDXZQHM]--户口所在地行政区划码
      ,a.[HKLBM]--户口类别码
      ,a.[SFSLDRK]--是否是流动人口
      ,a.[GJDQM]--国籍/地区
      ,a.[TC]--特长
      ,a.[XSLXDH]--学生联系电话
      ,a.[WLDZ]--网络地址
      ,a.[JSTXH]--即时通讯号
      ,a.[DZXX]--电子信箱
      ,a.[ZP]--照片(路径)
      ,b.SCHOOLNAME as b_SCHOOL_SCHOOLNAME--学校配置表 学校名称
      ,b.SCHOOLTYPE as b_SCHOOL_SCHOOLTYPE--学校配置表 学校类型
      ,b.XNID as b_SCHOOL_XNID--学校配置表 学年ID
      ,b.XQID as b_SCHOOL_XQID--学校配置表 学期ID
      ,b.MatchURL as b_SCHOOL_MatchURL--学校配置表 匹配url
      ,b.LogLevel as b_SCHOOL_LogLevel--学校配置表 日志级别
      ,c.MC as c_SFZJLX_MC--身份证件类型代码表 名称
      ,d.MC as d_RDXB_MC--人的性别代码 名称
      ,e.MC as e_XX_MC--血型代码表 名称
      ,e.JC as e_XX_JC--血型代码表 简称
      ,f.MC as f_ZHRMGHGXZQH_MC--中华人民共和国行政区划代码 名称
      ,g.MZMC as g_ZGGMZMCDLMZMPXF_MZMC--中国各民族名称的罗马字母拼写法和代码 民族名称
      ,g.ZMDM as g_ZGGMZMCDLMZMPXF_ZMDM--中国各民族名称的罗马字母拼写法和代码 字母代码
      ,h.MC as h_HYZZ_MC--婚姻状况代码 名称
      ,i.MC as i_ZJXY_MC--宗教信仰代码 名称
      ,j.MC as j_GATQW_MC--港澳台侨外代码表 名称
      ,j.SM as j_GATQW_SM--港澳台侨外代码表 说明
      ,k.MC as k_JKZKYWSZ_MC--健康状况1位数字代码 名称
      ,k.SM as k_JKZKYWSZ_SM--健康状况1位数字代码 说明
      ,l.MC as l_ZZMM_MC--政治面貌代码 名称
      ,l.JC as l_ZZMM_JC--政治面貌代码 简称
      ,m.MC as m_ZHRMGHGXZQH_MC--中华人民共和国行政区划代码 名称
      ,n.MC as n_HKLB_MC--户口类别代码 名称
      ,o.MC as o_SFBZ_MC--是否标志代码表 名称
      ,p.GJDQMCJC as p_SJGGHDQMC_GJDQMCJC--世界各国和地区名称代码 国家/地区名称简称
      ,p.EZMDM as p_SJGGHDQMC_EZMDM--世界各国和地区名称代码 二字母代码
      ,p.SZMDM as p_SJGGHDQMC_SZMDM--世界各国和地区名称代码 三字母代码

FROM dbo.EDU_ZZXS_01_01_XSXX AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS c ON a.SFZJLXM = c.DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS d ON a.XBM = d.DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS e ON a.XXM = e.DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS f ON a.CSDM = f.DM /*出生地码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS g ON a.MZM = g.DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS h ON a.HYZKM = h.DM /*婚姻状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS i ON a.XYZJM = i.DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS j ON a.GATQWM = j.DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS k ON a.JKZKM = k.DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS l ON a.ZZMMM = l.DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS m ON a.HKSZDXZQHM = m.DM /*户口所在地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS n ON a.HKLBM = n.DM /*户口类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS o ON a.SFSLDRK = o.DM /*是否是流动人口*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS p ON a.GJDQM = p.DM /*国籍/地区*/
GO
