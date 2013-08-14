
--教职工专业能力与资格证书数据类表
CREATE VIEW [dbo].[VIEW_EDU_ZZJG_07_01_JZGZYNL_DISP]
AS
SELECT a.[SCHOOLID]--学校名
      ,a.[JZGJBSJID]--教职工ID
      ,a.[ZSMC]--证书名称
      ,a.[ZSBH]--证书编号
      ,a.[ZSBFDW]--证书颁发单位
      ,a.[ZSBFRQ]--证书颁发日期
      ,a.[ZSBZ]--证书备注
      ,a.[SFSZYZGZS]--是否是职业资格证书
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
      ,c.SCHOOLID as c_JZGJBSJ_SCHOOLID--学校名
      ,c.GH as c_JZGJBSJ_GH--工号
      ,c.XM as c_JZGJBSJ_XM--姓名
      ,c.YWXM as c_JZGJBSJ_YWXM--英文姓名
      ,c.XMPY as c_JZGJBSJ_XMPY--姓名拼音
      ,c.CYM as c_JZGJBSJ_CYM--曾用名
      ,c.SFZJLXM as c_JZGJBSJ_SFZJLXM--身份证件类型码
      ,cb.MC as c_JZGJBSJ_SFZJLXM_MC--名称
      ,c.SFZJH as c_JZGJBSJ_SFZJH--身份证件号
      ,c.CSRQ as c_JZGJBSJ_CSRQ--出生日期
      ,c.XBM as c_JZGJBSJ_XBM--性别码
      ,cc.MC as c_JZGJBSJ_XBM_MC--名称
      ,c.MZM as c_JZGJBSJ_MZM--民族码
      ,cd.MZMC as c_JZGJBSJ_MZM_MZMC--民族名称
      ,cd.ZMDM as c_JZGJBSJ_MZM_ZMDM--字母代码
      ,c.XXM as c_JZGJBSJ_XXM--血型码
      ,ce.MC as c_JZGJBSJ_XXM_MC--名称
      ,ce.JC as c_JZGJBSJ_XXM_JC--简称
      ,c.JKZKM as c_JZGJBSJ_JKZKM--健康状况码
      ,cf.MC as c_JZGJBSJ_JKZKM_MC--名称
      ,cf.SM as c_JZGJBSJ_JKZKM_SM--说明
      ,c.HYZTM as c_JZGJBSJ_HYZTM--婚姻状态码
      ,cg.MC as c_JZGJBSJ_HYZTM_MC--名称
      ,c.ZZMMM as c_JZGJBSJ_ZZMMM--政治面貌码
      ,ch.MC as c_JZGJBSJ_ZZMMM_MC--名称
      ,ch.JC as c_JZGJBSJ_ZZMMM_JC--简称
      ,c.GATQWM as c_JZGJBSJ_GATQWM--港澳台侨外码
      ,ci.MC as c_JZGJBSJ_GATQWM_MC--名称
      ,ci.SM as c_JZGJBSJ_GATQWM_SM--说明
      ,c.JG as c_JZGJBSJ_JG--籍贯
      ,c.GJDQM as c_JZGJBSJ_GJDQM--国籍/地区码
      ,cj.GJDQMCJC as c_JZGJBSJ_GJDQM_GJDQMCJC--国家/地区名称简称
      ,cj.EZMDM as c_JZGJBSJ_GJDQM_EZMDM--二字母代码
      ,cj.SZMDM as c_JZGJBSJ_GJDQM_SZMDM--三字母代码
      ,c.CSDXZQHM as c_JZGJBSJ_CSDXZQHM--出生地行政区划码
      ,ck.MC as c_JZGJBSJ_CSDXZQHM_MC--名称
      ,c.XYZJM as c_JZGJBSJ_XYZJM--信仰宗教码
      ,cl.MC as c_JZGJBSJ_XYZJM_MC--名称
      ,c.JZGHKSZDXZQHM as c_JZGJBSJ_JZGHKSZDXZQHM--教职工户口所在地行政区划码
      ,cm.MC as c_JZGJBSJ_JZGHKSZDXZQHM_MC--名称
      ,c.HKLBM as c_JZGJBSJ_HKLBM--户口类别码
      ,cn.MC as c_JZGJBSJ_HKLBM_MC--名称
      ,c.DQZZ as c_JZGJBSJ_DQZZ--当前住址
      ,c.DQZZYZBM as c_JZGJBSJ_DQZZYZBM--当前住址邮政编码
      ,c.CJGZNY as c_JZGJBSJ_CJGZNY--参加工作年月
      ,c.CJNY as c_JZGJBSJ_CJNY--从教年月
      ,c.LXNY as c_JZGJBSJ_LXNY--来校年月
      ,c.BZLBM as c_JZGJBSJ_BZLBM--编制类别码
      ,co.MC as c_JZGJBSJ_BZLBM_MC--名称
      ,c.JZGLBM as c_JZGJBSJ_JZGLBM--教职工类别码
      ,cp.MC as c_JZGJBSJ_JZGLBM_MC--名称
      ,cp.SM as c_JZGJBSJ_JZGLBM_SM--说明
      ,c.GWLBM as c_JZGJBSJ_GWLBM--岗位类别码
      ,cq.MC as c_JZGJBSJ_GWLBM_MC--名称
      ,c.SFJZJS as c_JZGJBSJ_SFJZJS--是否兼职教师
      ,cr.MC as c_JZGJBSJ_SFJZJS_MC--名称
      ,c.SFSSXJS as c_JZGJBSJ_SFSSXJS--是否双师型教
      ,cs.MC as c_JZGJBSJ_SFSSXJS_MC--名称
      ,c.ZP as c_JZGJBSJ_ZP--照片(路径)
      ,c.DQZTM as c_JZGJBSJ_DQZTM--当前状态码
      ,ct.MC as c_JZGJBSJ_DQZTM_MC--名称
      ,d.MC as d_SFBZ_MC--名称

FROM dbo.EDU_ZZJG_07_01_JZGZYNL AS a LEFT OUTER JOIN
      dbo.EDU_ZZXX_01_01_ZZXX AS b ON a.SCHOOLID = b.ID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS c ON a.JZGJBSJID = c.ID /*教职工ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS d ON a.SFSZYZGZS = d.DM /*是否是职业资格证书*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bb ON b.XXJBZM = bb.DM /*学校举办者码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bc ON b.XXZGBMM = bc.DM /*学校主管部门码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS bd ON b.XZQHM = bd.DM /*行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_PGQK AS be ON b.XXPGLX = be.DM /*学校评估类型*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS cb ON c.SFZJLXM = cb.DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS cc ON c.XBM = cc.DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS cd ON c.MZM = cd.DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS ce ON c.XXM = ce.DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS cf ON c.JKZKM = cf.DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS cg ON c.HYZTM = cg.DM /*婚姻状态码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS ch ON c.ZZMMM = ch.DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS ci ON c.GATQWM = ci.DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS cj ON c.GJDQM = cj.DM /*国籍/地区码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS ck ON c.CSDXZQHM = ck.DM /*出生地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS cl ON c.XYZJM = cl.DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS cm ON c.JZGHKSZDXZQHM = cm.DM /*教职工户口所在地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS cn ON c.HKLBM = cn.DM /*户口类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_BZLB AS co ON c.BZLBM = co.DM /*编制类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGLB AS cp ON c.JZGLBM = cp.DM /*教职工类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWLB AS cq ON c.GWLBM = cq.DM /*岗位类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS cr ON c.SFJZJS = cr.DM /*是否兼职教师*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS cs ON c.SFSSXJS = cs.DM /*是否双师型教*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGDQZT AS ct ON c.DQZTM = ct.DM /*当前状态码*/
GO
