
--教职工基本数据子类表(审核)
CREATE VIEW [dbo].[VIEW_EDU_ZXJZ_01_A04_JZGJBSJSH_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校名
      ,a.[GH]--工号
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
      ,a.[JGH]--机构号
      ,a.[JTZZ]--家庭住址
      ,a.[XZZ]--现住址
      ,a.[HKSZD]--户口所在地
      ,a.[HKXZM]--户口性质码
      ,a.[XLM]--学历码
      ,a.[GZNY]--参加工作年月
      ,a.[LXNY]--来校年月
      ,a.[CJNY]--从教年月
      ,a.[BZLBM]--编制类别码
      ,a.[DABH]--档案编号
      ,a.[DAWB]--档案文本
      ,a.[TXDZ]--通信地址
      ,a.[LXDH]--联系电话
      ,a.[YZBM]--邮政编码
      ,a.[DZXX]--电子信箱
      ,a.[ZYDZ]--主页地址
      ,a.[TC]--特长
      ,a.[GWZYM]--岗位职业码
      ,a.[ZYRKXD]--主要任课学段
      ,a.[JZGLXID]--教职工类型ID
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
      ,n.MC as n_HKLB_MC--户口类别代码 名称
      ,o.MC as o_XL_MC--学历代码 名称
      ,p.MC as p_ZXXBZLB_MC--中小学编制类别代码表 名称
      ,q.MC as q_GWZY_MC--岗位职业代码表 名称
      ,r.MC as r_RKXD_MC--任课学段代码表 名称
      ,s.SCHOOLID as s_JZGLX_SCHOOLID--教职工类型表 学校
      ,s.LXMC as s_JZGLX_LXMC--教职工类型表 类型名称

FROM dbo.EDU_ZXJZ_01_A04_JZGJBSJSH AS a LEFT OUTER JOIN
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
      dbo.EDU_GB_HKLB AS n ON a.HKXZM = n.DM /*户口性质码*/ LEFT OUTER JOIN
      dbo.EDU_GB_XL AS o ON a.XLM = o.DM /*学历码*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXBZLB AS p ON a.BZLBM = p.DM /*编制类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWZY AS q ON a.GWZYM = q.DM /*岗位职业码*/ LEFT OUTER JOIN
      dbo.EDU_JY_RKXD AS r ON a.ZYRKXD = r.DM /*主要任课学段*/ LEFT OUTER JOIN
      dbo.EDU_ZXJZ_01_A07_JZGLX AS s ON a.JZGLXID = s.ID /*教职工类型ID*/ AND a.SCHOOLID = s.SCHOOLID /*学校名*/
GO
