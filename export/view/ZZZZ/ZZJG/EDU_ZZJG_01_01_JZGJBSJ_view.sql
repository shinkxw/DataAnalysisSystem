
--教职工基本数据子类表
CREATE VIEW [dbo].[VIEW_EDU_ZZJG_01_01_JZGJBSJ_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校名
      ,a.[GH]--工号
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
      ,a.[LXNY]--来校年月
      ,a.[BZLBM]--编制类别码
      ,a.[JZGLBM]--教职工类别码
      ,a.[GWLBM]--岗位类别码
      ,a.[SFJZJS]--是否兼职教师
      ,a.[SFSSXJS]--是否双师型教
      ,a.[ZP]--照片(路径)
      ,a.[DQZTM]--当前状态码
      ,b.XXDM as b_ZZXX_XXDM--学校代码
      ,b.XXMC as b_ZZXX_XXMC--学校名称
      ,b.XXYWMC as b_ZZXX_XXYWMC--学校英文名称
      ,b.XXJBZM as b_ZZXX_XXJBZM--学校举办者码
      ,bb.MC as b_ZZXX_XXJBZM_MC--名称
      ,bb.SM as b_ZZXX_XXJBZM_SM--说明
      ,b.XXZGBMM as b_ZZXX_XXZGBMM--学校主管部门码
      ,bc.MC as b_ZZXX_XXZGBMM_MC--名称
      ,bc.SM as b_ZZXX_XXZGBMM_SM--说明
      ,b.XXDZ as b_ZZXX_XXDZ--学校地址
      ,b.XXYZBM as b_ZZXX_XXYZBM--学校邮政编码
      ,b.XZQHM as b_ZZXX_XZQHM--行政区划码
      ,bd.MC as b_ZZXX_XZQHM_MC--名称
      ,b.JXNY as b_ZZXX_JXNY--建校年月
      ,b.XQR as b_ZZXX_XQR--校庆日
      ,b.CLBJ as b_ZZXX_CLBJ--成立背景
      ,b.LSYG as b_ZZXX_LSYG--历史沿革
      ,b.XXXQS as b_ZZXX_XXXQS--学校校区数
      ,b.XXPGLX as b_ZZXX_XXPGLX--学校评估类型
      ,be.MC as b_ZZXX_XXPGLX_MC--名称
      ,b.XXPGQKSM as b_ZZXX_XXPGQKSM--学校评估情况说明
      ,b.ZYDZ as b_ZZXX_ZYDZ--主页地址
      ,b.FDDBRH as b_ZZXX_FDDBRH--法定代表人号
      ,b.FRZSH as b_ZZXX_FRZSH--法人证书号
      ,b.LXDH as b_ZZXX_LXDH--联系电话
      ,b.CZDH as b_ZZXX_CZDH--传真电话
      ,b.DZXX as b_ZZXX_DZXX--电子信箱
      ,c.MC as c_SFZJLX_MC--名称
      ,d.MC as d_RDXB_MC--名称
      ,e.MZMC as e_ZGGMZMCDLMZMPXF_MZMC--民族名称
      ,e.ZMDM as e_ZGGMZMCDLMZMPXF_ZMDM--字母代码
      ,f.MC as f_XX_MC--名称
      ,f.JC as f_XX_JC--简称
      ,g.MC as g_JKZKYWSZ_MC--名称
      ,g.SM as g_JKZKYWSZ_SM--说明
      ,h.MC as h_HYZZ_MC--名称
      ,i.MC as i_ZZMM_MC--名称
      ,i.JC as i_ZZMM_JC--简称
      ,j.MC as j_GATQW_MC--名称
      ,j.SM as j_GATQW_SM--说明
      ,k.GJDQMCJC as k_SJGGHDQMC_GJDQMCJC--国家/地区名称简称
      ,k.EZMDM as k_SJGGHDQMC_EZMDM--二字母代码
      ,k.SZMDM as k_SJGGHDQMC_SZMDM--三字母代码
      ,l.MC as l_ZHRMGHGXZQH_MC--名称
      ,m.MC as m_ZJXY_MC--名称
      ,n.MC as n_ZHRMGHGXZQH_MC--名称
      ,o.MC as o_HKLB_MC--名称
      ,p.MC as p_BZLB_MC--名称
      ,q.MC as q_JZGLB_MC--名称
      ,q.SM as q_JZGLB_SM--说明
      ,r.MC as r_GWLB_MC--名称
      ,s.MC as s_SFBZ_MC--名称
      ,t.MC as t_SFBZ_MC--名称
      ,u.MC as u_JZGDQZT_MC--名称

FROM dbo.EDU_ZZJG_01_01_JZGJBSJ AS a LEFT OUTER JOIN
      dbo.EDU_ZZXX_01_01_ZZXX AS b ON a.SCHOOLID = b.ID /*学校名*/ LEFT OUTER JOIN
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
      dbo.EDU_JY_SFBZ AS t ON a.SFSSXJS = t.DM /*是否双师型教*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGDQZT AS u ON a.DQZTM = u.DM /*当前状态码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bb ON b.XXJBZM = bb.DM /*学校举办者码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bc ON b.XXZGBMM = bc.DM /*学校主管部门码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS bd ON b.XZQHM = bd.DM /*行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_PGQK AS be ON b.XXPGLX = be.DM /*学校评估类型*/
GO
