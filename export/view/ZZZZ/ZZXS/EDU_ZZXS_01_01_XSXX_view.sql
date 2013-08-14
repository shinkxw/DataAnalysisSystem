
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
      ,e.MC as e_XX_MC--名称
      ,e.JC as e_XX_JC--简称
      ,f.MC as f_ZHRMGHGXZQH_MC--名称
      ,g.MZMC as g_ZGGMZMCDLMZMPXF_MZMC--民族名称
      ,g.ZMDM as g_ZGGMZMCDLMZMPXF_ZMDM--字母代码
      ,h.MC as h_HYZZ_MC--名称
      ,i.MC as i_ZJXY_MC--名称
      ,j.MC as j_GATQW_MC--名称
      ,j.SM as j_GATQW_SM--说明
      ,k.MC as k_JKZKYWSZ_MC--名称
      ,k.SM as k_JKZKYWSZ_SM--说明
      ,l.MC as l_ZZMM_MC--名称
      ,l.JC as l_ZZMM_JC--简称
      ,m.MC as m_ZHRMGHGXZQH_MC--名称
      ,n.MC as n_HKLB_MC--名称
      ,o.MC as o_SFBZ_MC--名称
      ,p.GJDQMCJC as p_SJGGHDQMC_GJDQMCJC--国家/地区名称简称
      ,p.EZMDM as p_SJGGHDQMC_EZMDM--二字母代码
      ,p.SZMDM as p_SJGGHDQMC_SZMDM--三字母代码

FROM dbo.EDU_ZZXS_01_01_XSXX AS a LEFT OUTER JOIN
      dbo.EDU_ZZXX_01_01_ZZXX AS b ON a.SCHOOLID = b.ID /*学校名*/ LEFT OUTER JOIN
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
      dbo.EDU_GB_SJGGHDQMC AS p ON a.GJDQM = p.DM /*国籍/地区*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bb ON b.XXJBZM = bb.DM /*学校举办者码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bc ON b.XXZGBMM = bc.DM /*学校主管部门码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS bd ON b.XZQHM = bd.DM /*行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_PGQK AS be ON b.XXPGLX = be.DM /*学校评估类型*/
GO
