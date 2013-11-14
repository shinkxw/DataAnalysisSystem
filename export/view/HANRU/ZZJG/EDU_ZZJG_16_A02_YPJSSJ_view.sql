
--应聘教师数据表
CREATE VIEW [dbo].[VIEW_EDU_ZZJG_16_A02_YPJSSJ_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校名
      ,a.[XM]--姓名
      ,a.[YWXM]--英文姓名
      ,a.[XMPY]--姓名拼音
      ,a.[CYM]--曾用名
      ,a.[SFZJLXM]--身份证件类型码
      ,a.[SFZJH]--身份证件号
      ,a.[CSRQ]--出生日期
      ,a.[XBM]--性别码
      ,a.[MZM]--民族码
      ,a.[XXM]--血型码
      ,a.[JKZKM]--健康状况码
      ,a.[HYZTM]--婚姻状态码
      ,a.[ZZMMM]--政治面貌码
      ,a.[GATQWM]--港澳台侨外码
      ,a.[JG]--籍贯
      ,a.[GJDQM]--国籍/地区码
      ,a.[CSDXZQHM]--出生地行政区划码
      ,a.[XYZJM]--信仰宗教码
      ,a.[JZGHKSZDXZQHM]--教职工户口所在地行政区划码
      ,a.[HKLBM]--户口类别码
      ,a.[DQZZ]--当前住址
      ,a.[DQZZYZBM]--当前住址邮政编码
      ,a.[CJGZNY]--参加工作年月
      ,a.[CJNY]--从教年月
      ,a.[BZLBM]--编制类别码
      ,a.[JZGLBM]--教职工类别码
      ,a.[GWLBM]--岗位类别码
      ,a.[SFJZJS]--是否兼职教师
      ,a.[SFSSXJS]--是否双师型教师
      ,a.[ZP]--照片(路径)
      ,a.[YDDH]--移动电话
      ,a.[GDDH]--固定电话
      ,a.[TXDZYZBM]--通信地址邮政编码
      ,a.[TXDZ]--通信地址
      ,a.[DZXX]--电子信箱
      ,a.[WLDZ]--网络地址
      ,a.[JSTXH]--即时通讯号
      ,a.[BZ]--备注
      ,a.[TJSJ]--添加时间
      ,a.[TJJSID]--添加教师ID
      ,a.[SHJG]--审核结果
      ,a.[SHSJ]--审核时间
      ,a.[SHJSID]--审核教师ID
      ,c.MC as c_SFZJLX_MC--身份证件类型代码表 名称
      ,d.MC as d_RDXB_MC--人的性别代码 名称
      ,e.MZMC as e_ZGGMZMCDLMZMPXF_MZMC--中国各民族名称的罗马字母拼写法和代码 民族名称
      ,e.ZMDM as e_ZGGMZMCDLMZMPXF_ZMDM--中国各民族名称的罗马字母拼写法和代码 字母代码
      ,f.MC as f_XX_MC--血型代码表 名称
      ,f.JC as f_XX_JC--血型代码表 简称
      ,g.MC as g_JKZKYWSZ_MC--健康状况1位数字代码 名称
      ,g.SM as g_JKZKYWSZ_SM--健康状况1位数字代码 说明
      ,h.MC as h_HYZZ_MC--婚姻状况代码 名称
      ,i.MC as i_ZZMM_MC--政治面貌代码 名称
      ,i.JC as i_ZZMM_JC--政治面貌代码 简称
      ,j.MC as j_GATQW_MC--港澳台侨外代码表 名称
      ,j.SM as j_GATQW_SM--港澳台侨外代码表 说明
      ,k.GJDQMCJC as k_SJGGHDQMC_GJDQMCJC--世界各国和地区名称代码 国家/地区名称简称
      ,k.EZMDM as k_SJGGHDQMC_EZMDM--世界各国和地区名称代码 二字母代码
      ,k.SZMDM as k_SJGGHDQMC_SZMDM--世界各国和地区名称代码 三字母代码
      ,l.MC as l_ZHRMGHGXZQH_MC--中华人民共和国行政区划代码 名称
      ,m.MC as m_ZJXY_MC--宗教信仰代码 名称
      ,n.MC as n_ZHRMGHGXZQH_MC--中华人民共和国行政区划代码 名称
      ,o.MC as o_HKLB_MC--户口类别代码 名称
      ,p.MC as p_BZLB_MC--编制类别代码表 名称
      ,q.MC as q_JZGLB_MC--教职工类别代码表 名称
      ,q.SM as q_JZGLB_SM--教职工类别代码表 说明
      ,r.MC as r_GWLB_MC--岗位类别代码表 名称
      ,s.MC as s_SFBZ_MC--是否标志代码表 名称
      ,t.MC as t_SFBZ_MC--是否标志代码表 名称
      ,u.SCHOOLID as u_JZGJBSJ_SCHOOLID--教职工基本数据子类表 学校名
      ,u.GH as u_JZGJBSJ_GH--教职工基本数据子类表 工号
      ,u.XM as u_JZGJBSJ_XM--教职工基本数据子类表 姓名
      ,u.YWXM as u_JZGJBSJ_YWXM--教职工基本数据子类表 英文姓名
      ,u.XMPY as u_JZGJBSJ_XMPY--教职工基本数据子类表 姓名拼音
      ,u.CYM as u_JZGJBSJ_CYM--教职工基本数据子类表 曾用名
      ,u.SFZJLXM as u_JZGJBSJ_SFZJLXM--教职工基本数据子类表 身份证件类型码
      ,[ub].MC as u_JZGJBSJ_SFZJLXM_MC--身份证件类型代码表 名称
      ,u.SFZJH as u_JZGJBSJ_SFZJH--教职工基本数据子类表 身份证件号
      ,u.CSRQ as u_JZGJBSJ_CSRQ--教职工基本数据子类表 出生日期
      ,u.XBM as u_JZGJBSJ_XBM--教职工基本数据子类表 性别码
      ,[uc].MC as u_JZGJBSJ_XBM_MC--人的性别代码 名称
      ,u.MZM as u_JZGJBSJ_MZM--教职工基本数据子类表 民族码
      ,[ud].MZMC as u_JZGJBSJ_MZM_MZMC--中国各民族名称的罗马字母拼写法和代码 民族名称
      ,[ud].ZMDM as u_JZGJBSJ_MZM_ZMDM--中国各民族名称的罗马字母拼写法和代码 字母代码
      ,u.XXM as u_JZGJBSJ_XXM--教职工基本数据子类表 血型码
      ,[ue].MC as u_JZGJBSJ_XXM_MC--血型代码表 名称
      ,[ue].JC as u_JZGJBSJ_XXM_JC--血型代码表 简称
      ,u.JKZKM as u_JZGJBSJ_JKZKM--教职工基本数据子类表 健康状况码
      ,[uf].MC as u_JZGJBSJ_JKZKM_MC--健康状况1位数字代码 名称
      ,[uf].SM as u_JZGJBSJ_JKZKM_SM--健康状况1位数字代码 说明
      ,u.HYZTM as u_JZGJBSJ_HYZTM--教职工基本数据子类表 婚姻状态码
      ,[ug].MC as u_JZGJBSJ_HYZTM_MC--婚姻状况代码 名称
      ,u.ZZMMM as u_JZGJBSJ_ZZMMM--教职工基本数据子类表 政治面貌码
      ,[uh].MC as u_JZGJBSJ_ZZMMM_MC--政治面貌代码 名称
      ,[uh].JC as u_JZGJBSJ_ZZMMM_JC--政治面貌代码 简称
      ,u.GATQWM as u_JZGJBSJ_GATQWM--教职工基本数据子类表 港澳台侨外码
      ,[ui].MC as u_JZGJBSJ_GATQWM_MC--港澳台侨外代码表 名称
      ,[ui].SM as u_JZGJBSJ_GATQWM_SM--港澳台侨外代码表 说明
      ,u.JG as u_JZGJBSJ_JG--教职工基本数据子类表 籍贯
      ,u.GJDQM as u_JZGJBSJ_GJDQM--教职工基本数据子类表 国籍/地区码
      ,[uj].GJDQMCJC as u_JZGJBSJ_GJDQM_GJDQMCJC--世界各国和地区名称代码 国家/地区名称简称
      ,[uj].EZMDM as u_JZGJBSJ_GJDQM_EZMDM--世界各国和地区名称代码 二字母代码
      ,[uj].SZMDM as u_JZGJBSJ_GJDQM_SZMDM--世界各国和地区名称代码 三字母代码
      ,u.CSDXZQHM as u_JZGJBSJ_CSDXZQHM--教职工基本数据子类表 出生地行政区划码
      ,[uk].MC as u_JZGJBSJ_CSDXZQHM_MC--中华人民共和国行政区划代码 名称
      ,u.XYZJM as u_JZGJBSJ_XYZJM--教职工基本数据子类表 信仰宗教码
      ,[ul].MC as u_JZGJBSJ_XYZJM_MC--宗教信仰代码 名称
      ,u.JZGHKSZDXZQHM as u_JZGJBSJ_JZGHKSZDXZQHM--教职工基本数据子类表 教职工户口所在地行政区划码
      ,[um].MC as u_JZGJBSJ_JZGHKSZDXZQHM_MC--中华人民共和国行政区划代码 名称
      ,u.HKLBM as u_JZGJBSJ_HKLBM--教职工基本数据子类表 户口类别码
      ,[un].MC as u_JZGJBSJ_HKLBM_MC--户口类别代码 名称
      ,u.DQZZ as u_JZGJBSJ_DQZZ--教职工基本数据子类表 当前住址
      ,u.DQZZYZBM as u_JZGJBSJ_DQZZYZBM--教职工基本数据子类表 当前住址邮政编码
      ,u.CJGZNY as u_JZGJBSJ_CJGZNY--教职工基本数据子类表 参加工作年月
      ,u.CJNY as u_JZGJBSJ_CJNY--教职工基本数据子类表 从教年月
      ,u.LXNY as u_JZGJBSJ_LXNY--教职工基本数据子类表 来校年月
      ,u.BZLBM as u_JZGJBSJ_BZLBM--教职工基本数据子类表 编制类别码
      ,[uo].MC as u_JZGJBSJ_BZLBM_MC--编制类别代码表 名称
      ,u.JZGLBM as u_JZGJBSJ_JZGLBM--教职工基本数据子类表 教职工类别码
      ,[up].MC as u_JZGJBSJ_JZGLBM_MC--教职工类别代码表 名称
      ,[up].SM as u_JZGJBSJ_JZGLBM_SM--教职工类别代码表 说明
      ,u.GWLBM as u_JZGJBSJ_GWLBM--教职工基本数据子类表 岗位类别码
      ,[uq].MC as u_JZGJBSJ_GWLBM_MC--岗位类别代码表 名称
      ,u.SFJZJS as u_JZGJBSJ_SFJZJS--教职工基本数据子类表 是否兼职教师
      ,[ur].MC as u_JZGJBSJ_SFJZJS_MC--是否标志代码表 名称
      ,u.SFSSXJS as u_JZGJBSJ_SFSSXJS--教职工基本数据子类表 是否双师型教师
      ,[us].MC as u_JZGJBSJ_SFSSXJS_MC--是否标志代码表 名称
      ,u.ZP as u_JZGJBSJ_ZP--教职工基本数据子类表 照片(路径)
      ,u.DQZTM as u_JZGJBSJ_DQZTM--教职工基本数据子类表 当前状态码
      ,[ut].MC as u_JZGJBSJ_DQZTM_MC--教职工当前状态代码表 名称
      ,u.YDDH as u_JZGJBSJ_YDDH--教职工基本数据子类表 移动电话
      ,u.GDDH as u_JZGJBSJ_GDDH--教职工基本数据子类表 固定电话
      ,u.TXDZYZBM as u_JZGJBSJ_TXDZYZBM--教职工基本数据子类表 通信地址邮政编码
      ,u.TXDZ as u_JZGJBSJ_TXDZ--教职工基本数据子类表 通信地址
      ,u.DZXX as u_JZGJBSJ_DZXX--教职工基本数据子类表 电子信箱
      ,u.WLDZ as u_JZGJBSJ_WLDZ--教职工基本数据子类表 网络地址
      ,u.JSTXH as u_JZGJBSJ_JSTXH--教职工基本数据子类表 即时通讯号
      ,v.SCHOOLID as v_JZGJBSJ_SCHOOLID--教职工基本数据子类表 学校名
      ,v.GH as v_JZGJBSJ_GH--教职工基本数据子类表 工号
      ,v.XM as v_JZGJBSJ_XM--教职工基本数据子类表 姓名
      ,v.YWXM as v_JZGJBSJ_YWXM--教职工基本数据子类表 英文姓名
      ,v.XMPY as v_JZGJBSJ_XMPY--教职工基本数据子类表 姓名拼音
      ,v.CYM as v_JZGJBSJ_CYM--教职工基本数据子类表 曾用名
      ,v.SFZJLXM as v_JZGJBSJ_SFZJLXM--教职工基本数据子类表 身份证件类型码
      ,[vb].MC as v_JZGJBSJ_SFZJLXM_MC--身份证件类型代码表 名称
      ,v.SFZJH as v_JZGJBSJ_SFZJH--教职工基本数据子类表 身份证件号
      ,v.CSRQ as v_JZGJBSJ_CSRQ--教职工基本数据子类表 出生日期
      ,v.XBM as v_JZGJBSJ_XBM--教职工基本数据子类表 性别码
      ,[vc].MC as v_JZGJBSJ_XBM_MC--人的性别代码 名称
      ,v.MZM as v_JZGJBSJ_MZM--教职工基本数据子类表 民族码
      ,[vd].MZMC as v_JZGJBSJ_MZM_MZMC--中国各民族名称的罗马字母拼写法和代码 民族名称
      ,[vd].ZMDM as v_JZGJBSJ_MZM_ZMDM--中国各民族名称的罗马字母拼写法和代码 字母代码
      ,v.XXM as v_JZGJBSJ_XXM--教职工基本数据子类表 血型码
      ,[ve].MC as v_JZGJBSJ_XXM_MC--血型代码表 名称
      ,[ve].JC as v_JZGJBSJ_XXM_JC--血型代码表 简称
      ,v.JKZKM as v_JZGJBSJ_JKZKM--教职工基本数据子类表 健康状况码
      ,[vf].MC as v_JZGJBSJ_JKZKM_MC--健康状况1位数字代码 名称
      ,[vf].SM as v_JZGJBSJ_JKZKM_SM--健康状况1位数字代码 说明
      ,v.HYZTM as v_JZGJBSJ_HYZTM--教职工基本数据子类表 婚姻状态码
      ,[vg].MC as v_JZGJBSJ_HYZTM_MC--婚姻状况代码 名称
      ,v.ZZMMM as v_JZGJBSJ_ZZMMM--教职工基本数据子类表 政治面貌码
      ,[vh].MC as v_JZGJBSJ_ZZMMM_MC--政治面貌代码 名称
      ,[vh].JC as v_JZGJBSJ_ZZMMM_JC--政治面貌代码 简称
      ,v.GATQWM as v_JZGJBSJ_GATQWM--教职工基本数据子类表 港澳台侨外码
      ,[vi].MC as v_JZGJBSJ_GATQWM_MC--港澳台侨外代码表 名称
      ,[vi].SM as v_JZGJBSJ_GATQWM_SM--港澳台侨外代码表 说明
      ,v.JG as v_JZGJBSJ_JG--教职工基本数据子类表 籍贯
      ,v.GJDQM as v_JZGJBSJ_GJDQM--教职工基本数据子类表 国籍/地区码
      ,[vj].GJDQMCJC as v_JZGJBSJ_GJDQM_GJDQMCJC--世界各国和地区名称代码 国家/地区名称简称
      ,[vj].EZMDM as v_JZGJBSJ_GJDQM_EZMDM--世界各国和地区名称代码 二字母代码
      ,[vj].SZMDM as v_JZGJBSJ_GJDQM_SZMDM--世界各国和地区名称代码 三字母代码
      ,v.CSDXZQHM as v_JZGJBSJ_CSDXZQHM--教职工基本数据子类表 出生地行政区划码
      ,[vk].MC as v_JZGJBSJ_CSDXZQHM_MC--中华人民共和国行政区划代码 名称
      ,v.XYZJM as v_JZGJBSJ_XYZJM--教职工基本数据子类表 信仰宗教码
      ,[vl].MC as v_JZGJBSJ_XYZJM_MC--宗教信仰代码 名称
      ,v.JZGHKSZDXZQHM as v_JZGJBSJ_JZGHKSZDXZQHM--教职工基本数据子类表 教职工户口所在地行政区划码
      ,[vm].MC as v_JZGJBSJ_JZGHKSZDXZQHM_MC--中华人民共和国行政区划代码 名称
      ,v.HKLBM as v_JZGJBSJ_HKLBM--教职工基本数据子类表 户口类别码
      ,[vn].MC as v_JZGJBSJ_HKLBM_MC--户口类别代码 名称
      ,v.DQZZ as v_JZGJBSJ_DQZZ--教职工基本数据子类表 当前住址
      ,v.DQZZYZBM as v_JZGJBSJ_DQZZYZBM--教职工基本数据子类表 当前住址邮政编码
      ,v.CJGZNY as v_JZGJBSJ_CJGZNY--教职工基本数据子类表 参加工作年月
      ,v.CJNY as v_JZGJBSJ_CJNY--教职工基本数据子类表 从教年月
      ,v.LXNY as v_JZGJBSJ_LXNY--教职工基本数据子类表 来校年月
      ,v.BZLBM as v_JZGJBSJ_BZLBM--教职工基本数据子类表 编制类别码
      ,[vo].MC as v_JZGJBSJ_BZLBM_MC--编制类别代码表 名称
      ,v.JZGLBM as v_JZGJBSJ_JZGLBM--教职工基本数据子类表 教职工类别码
      ,[vp].MC as v_JZGJBSJ_JZGLBM_MC--教职工类别代码表 名称
      ,[vp].SM as v_JZGJBSJ_JZGLBM_SM--教职工类别代码表 说明
      ,v.GWLBM as v_JZGJBSJ_GWLBM--教职工基本数据子类表 岗位类别码
      ,[vq].MC as v_JZGJBSJ_GWLBM_MC--岗位类别代码表 名称
      ,v.SFJZJS as v_JZGJBSJ_SFJZJS--教职工基本数据子类表 是否兼职教师
      ,[vr].MC as v_JZGJBSJ_SFJZJS_MC--是否标志代码表 名称
      ,v.SFSSXJS as v_JZGJBSJ_SFSSXJS--教职工基本数据子类表 是否双师型教师
      ,[vs].MC as v_JZGJBSJ_SFSSXJS_MC--是否标志代码表 名称
      ,v.ZP as v_JZGJBSJ_ZP--教职工基本数据子类表 照片(路径)
      ,v.DQZTM as v_JZGJBSJ_DQZTM--教职工基本数据子类表 当前状态码
      ,[vt].MC as v_JZGJBSJ_DQZTM_MC--教职工当前状态代码表 名称
      ,v.YDDH as v_JZGJBSJ_YDDH--教职工基本数据子类表 移动电话
      ,v.GDDH as v_JZGJBSJ_GDDH--教职工基本数据子类表 固定电话
      ,v.TXDZYZBM as v_JZGJBSJ_TXDZYZBM--教职工基本数据子类表 通信地址邮政编码
      ,v.TXDZ as v_JZGJBSJ_TXDZ--教职工基本数据子类表 通信地址
      ,v.DZXX as v_JZGJBSJ_DZXX--教职工基本数据子类表 电子信箱
      ,v.WLDZ as v_JZGJBSJ_WLDZ--教职工基本数据子类表 网络地址
      ,v.JSTXH as v_JZGJBSJ_JSTXH--教职工基本数据子类表 即时通讯号

FROM dbo.EDU_ZZJG_16_A02_YPJSSJ AS a LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS c ON a.SFZJLXM = c.DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS d ON a.XBM = d.DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS e ON a.MZM = e.DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS f ON a.XXM = f.DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS g ON a.JKZKM = g.DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS h ON a.HYZTM = h.DM /*婚姻状态码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS i ON a.ZZMMM = i.DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS j ON a.GATQWM = j.DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS k ON a.GJDQM = k.DM /*国籍/地区码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS l ON a.CSDXZQHM = l.DM /*出生地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS m ON a.XYZJM = m.DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS n ON a.JZGHKSZDXZQHM = n.DM /*教职工户口所在地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS o ON a.HKLBM = o.DM /*户口类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_BZLB AS p ON a.BZLBM = p.DM /*编制类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGLB AS q ON a.JZGLBM = q.DM /*教职工类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWLB AS r ON a.GWLBM = r.DM /*岗位类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS s ON a.SFJZJS = s.DM /*是否兼职教师*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS t ON a.SFSSXJS = t.DM /*是否双师型教师*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS u ON a.TJJSID = u.ID /*添加教师ID*/ AND a.SCHOOLID = u.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS v ON a.SHJSID = v.ID /*审核教师ID*/ AND a.SCHOOLID = v.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS [ub] ON u.SFZJLXM = [ub].DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS [uc] ON u.XBM = [uc].DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS [ud] ON u.MZM = [ud].DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS [ue] ON u.XXM = [ue].DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS [uf] ON u.JKZKM = [uf].DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS [ug] ON u.HYZTM = [ug].DM /*婚姻状态码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS [uh] ON u.ZZMMM = [uh].DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS [ui] ON u.GATQWM = [ui].DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS [uj] ON u.GJDQM = [uj].DM /*国籍/地区码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [uk] ON u.CSDXZQHM = [uk].DM /*出生地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS [ul] ON u.XYZJM = [ul].DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [um] ON u.JZGHKSZDXZQHM = [um].DM /*教职工户口所在地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS [un] ON u.HKLBM = [un].DM /*户口类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_BZLB AS [uo] ON u.BZLBM = [uo].DM /*编制类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGLB AS [up] ON u.JZGLBM = [up].DM /*教职工类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWLB AS [uq] ON u.GWLBM = [uq].DM /*岗位类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [ur] ON u.SFJZJS = [ur].DM /*是否兼职教师*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [us] ON u.SFSSXJS = [us].DM /*是否双师型教师*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGDQZT AS [ut] ON u.DQZTM = [ut].DM /*当前状态码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS [vb] ON v.SFZJLXM = [vb].DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS [vc] ON v.XBM = [vc].DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS [vd] ON v.MZM = [vd].DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS [ve] ON v.XXM = [ve].DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS [vf] ON v.JKZKM = [vf].DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS [vg] ON v.HYZTM = [vg].DM /*婚姻状态码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS [vh] ON v.ZZMMM = [vh].DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS [vi] ON v.GATQWM = [vi].DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS [vj] ON v.GJDQM = [vj].DM /*国籍/地区码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [vk] ON v.CSDXZQHM = [vk].DM /*出生地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS [vl] ON v.XYZJM = [vl].DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [vm] ON v.JZGHKSZDXZQHM = [vm].DM /*教职工户口所在地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS [vn] ON v.HKLBM = [vn].DM /*户口类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_BZLB AS [vo] ON v.BZLBM = [vo].DM /*编制类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGLB AS [vp] ON v.JZGLBM = [vp].DM /*教职工类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWLB AS [vq] ON v.GWLBM = [vq].DM /*岗位类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [vr] ON v.SFJZJS = [vr].DM /*是否兼职教师*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [vs] ON v.SFSSXJS = [vs].DM /*是否双师型教师*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGDQZT AS [vt] ON v.DQZTM = [vt].DM /*当前状态码*/
GO
