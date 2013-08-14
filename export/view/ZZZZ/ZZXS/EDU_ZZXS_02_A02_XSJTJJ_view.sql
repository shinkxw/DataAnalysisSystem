
--学生家庭经济情况数据表
CREATE VIEW [dbo].[VIEW_EDU_ZZXS_02_A02_XSJTJJ_DISP]
AS
SELECT a.[XSXXID]--学生信息数据表
      ,a.[SCHOOLID]--学校名
      ,a.[SYRK]--赡养人口
      ,a.[LDLRK]--劳动力人口
      ,a.[JTRJYSR]--家庭人均月收入
      ,a.[JTLBM]--家庭类别码
      ,a.[KNYYM]--困难原因码
      ,a.[KNCDM]--困难程度码
      ,a.[SFDB]--是否低保
      ,a.[RXQHKLBM]--入学前户口类别码
      ,a.[JXDDBX]--就学地低保线
      ,b.SCHOOLID as b_XSXX_SCHOOLID--学校名
      ,b.XH as b_XSXX_XH--学号
      ,b.XM as b_XSXX_XM--姓名
      ,b.YWXM as b_XSXX_YWXM--英文姓名
      ,b.XMPY as b_XSXX_XMPY--姓名拼音
      ,b.CYM as b_XSXX_CYM--曾用名
      ,b.SFZJLXM as b_XSXX_SFZJLXM--身份证件类型码
      ,bb.MC as b_XSXX_SFZJLXM_MC--名称
      ,b.SFZJH as b_XSXX_SFZJH--身份证件号
      ,b.XBM as b_XSXX_XBM--性别码
      ,bc.MC as b_XSXX_XBM_MC--名称
      ,b.XXM as b_XSXX_XXM--血型码
      ,bd.MC as b_XSXX_XXM_MC--名称
      ,bd.JC as b_XSXX_XXM_JC--简称
      ,b.CSRQ as b_XSXX_CSRQ--出生日期
      ,b.CSDM as b_XSXX_CSDM--出生地码
      ,be.MC as b_XSXX_CSDM_MC--名称
      ,b.JG as b_XSXX_JG--籍贯
      ,b.MZM as b_XSXX_MZM--民族码
      ,bf.MZMC as b_XSXX_MZM_MZMC--民族名称
      ,bf.ZMDM as b_XSXX_MZM_ZMDM--字母代码
      ,b.HYZKM as b_XSXX_HYZKM--婚姻状况码
      ,bg.MC as b_XSXX_HYZKM_MC--名称
      ,b.XYZJM as b_XSXX_XYZJM--信仰宗教码
      ,bh.MC as b_XSXX_XYZJM_MC--名称
      ,b.GATQWM as b_XSXX_GATQWM--港澳台侨外码
      ,bi.MC as b_XSXX_GATQWM_MC--名称
      ,bi.SM as b_XSXX_GATQWM_SM--说明
      ,b.JKZKM as b_XSXX_JKZKM--健康状况码
      ,bj.MC as b_XSXX_JKZKM_MC--名称
      ,bj.SM as b_XSXX_JKZKM_SM--说明
      ,b.ZZMMM as b_XSXX_ZZMMM--政治面貌码
      ,bk.MC as b_XSXX_ZZMMM_MC--名称
      ,bk.JC as b_XSXX_ZZMMM_JC--简称
      ,b.HKSZDXZQHM as b_XSXX_HKSZDXZQHM--户口所在地行政区划码
      ,bl.MC as b_XSXX_HKSZDXZQHM_MC--名称
      ,b.HKLBM as b_XSXX_HKLBM--户口类别码
      ,bm.MC as b_XSXX_HKLBM_MC--名称
      ,b.SFSLDRK as b_XSXX_SFSLDRK--是否是流动人口
      ,bn.MC as b_XSXX_SFSLDRK_MC--名称
      ,b.GJDQM as b_XSXX_GJDQM--国籍/地区
      ,bo.GJDQMCJC as b_XSXX_GJDQM_GJDQMCJC--国家/地区名称简称
      ,bo.EZMDM as b_XSXX_GJDQM_EZMDM--二字母代码
      ,bo.SZMDM as b_XSXX_GJDQM_SZMDM--三字母代码
      ,b.TC as b_XSXX_TC--特长
      ,b.XSLXDH as b_XSXX_XSLXDH--学生联系电话
      ,b.WLDZ as b_XSXX_WLDZ--网络地址
      ,b.JSTXH as b_XSXX_JSTXH--即时通讯号
      ,b.DZXX as b_XSXX_DZXX--电子信箱
      ,b.ZP as b_XSXX_ZP--照片(路径)
      ,c.XXDM as c_ZZXX_XXDM--学校代码
      ,c.XXMC as c_ZZXX_XXMC--学校名称
      ,c.XXYWMC as c_ZZXX_XXYWMC--学校英文名称
      ,c.XXJBZM as c_ZZXX_XXJBZM--学校举办者码
      ,cb.MC as c_ZZXX_XXJBZM_MC--名称
      ,cb.SM as c_ZZXX_XXJBZM_SM--说明
      ,c.XXZGBMM as c_ZZXX_XXZGBMM--学校主管部门码
      ,cc.MC as c_ZZXX_XXZGBMM_MC--名称
      ,cc.SM as c_ZZXX_XXZGBMM_SM--说明
      ,c.XXDZ as c_ZZXX_XXDZ--学校地址
      ,c.XXYZBM as c_ZZXX_XXYZBM--学校邮政编码
      ,c.XZQHM as c_ZZXX_XZQHM--行政区划码
      ,cd.MC as c_ZZXX_XZQHM_MC--名称
      ,c.JXNY as c_ZZXX_JXNY--建校年月
      ,c.XQR as c_ZZXX_XQR--校庆日
      ,c.CLBJ as c_ZZXX_CLBJ--成立背景
      ,c.LSYG as c_ZZXX_LSYG--历史沿革
      ,c.XXXQS as c_ZZXX_XXXQS--学校校区数
      ,c.XXPGLX as c_ZZXX_XXPGLX--学校评估类型
      ,ce.MC as c_ZZXX_XXPGLX_MC--名称
      ,c.XXPGQKSM as c_ZZXX_XXPGQKSM--学校评估情况说明
      ,c.ZYDZ as c_ZZXX_ZYDZ--主页地址
      ,c.FDDBRH as c_ZZXX_FDDBRH--法定代表人号
      ,c.FRZSH as c_ZZXX_FRZSH--法人证书号
      ,c.LXDH as c_ZZXX_LXDH--联系电话
      ,c.CZDH as c_ZZXX_CZDH--传真电话
      ,c.DZXX as c_ZZXX_DZXX--电子信箱
      ,d.MC as d_JTLB_MC--名称
      ,e.MC as e_KNYY_MC--名称
      ,f.MC as f_KNCD_MC--名称
      ,f.SM as f_KNCD_SM--说明
      ,g.MC as g_SFBZ_MC--名称
      ,h.MC as h_HKLB_MC--名称

FROM dbo.EDU_ZZXS_02_A02_XSJTJJ AS a LEFT OUTER JOIN
      dbo.EDU_ZZXS_01_01_XSXX AS b ON a.XSXXID = b.ID /*学生信息数据表*/ AND a.SCHOOLID = b.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZZXX_01_01_ZZXX AS c ON a.SCHOOLID = c.ID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_JY_JTLB AS d ON a.JTLBM = d.DM /*家庭类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_KNYY AS e ON a.KNYYM = e.DM /*困难原因码*/ LEFT OUTER JOIN
      dbo.EDU_JY_KNCD AS f ON a.KNCDM = f.DM /*困难程度码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS g ON a.SFDB = g.DM /*是否低保*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS h ON a.RXQHKLBM = h.DM /*入学前户口类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS bb ON b.SFZJLXM = bb.DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS bc ON b.XBM = bc.DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS bd ON b.XXM = bd.DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS be ON b.CSDM = be.DM /*出生地码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS bf ON b.MZM = bf.DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS bg ON b.HYZKM = bg.DM /*婚姻状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS bh ON b.XYZJM = bh.DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS bi ON b.GATQWM = bi.DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS bj ON b.JKZKM = bj.DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS bk ON b.ZZMMM = bk.DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS bl ON b.HKSZDXZQHM = bl.DM /*户口所在地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS bm ON b.HKLBM = bm.DM /*户口类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS bn ON b.SFSLDRK = bn.DM /*是否是流动人口*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS bo ON b.GJDQM = bo.DM /*国籍/地区*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS cb ON c.XXJBZM = cb.DM /*学校举办者码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS cc ON c.XXZGBMM = cc.DM /*学校主管部门码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS cd ON c.XZQHM = cd.DM /*行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_PGQK AS ce ON c.XXPGLX = ce.DM /*学校评估类型*/
GO
