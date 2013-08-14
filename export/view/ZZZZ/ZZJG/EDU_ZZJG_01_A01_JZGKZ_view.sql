
--教职工扩展表
CREATE VIEW [dbo].[VIEW_EDU_ZZJG_01_A01_JZGKZ_DISP]
AS
SELECT a.[JZGJBSJID]--教工基本信息ID
      ,a.[SCHOOLID]--学校ID
      ,a.[JL]--教龄
      ,a.[GL]--工龄
      ,a.[GZJY]--工作经验
      ,a.[LDJN]--劳动技能
      ,a.[XXJL]--学习经历
      ,b.SCHOOLID as b_JZGJBSJ_SCHOOLID--学校名
      ,b.GH as b_JZGJBSJ_GH--工号
      ,b.XM as b_JZGJBSJ_XM--姓名
      ,b.YWXM as b_JZGJBSJ_YWXM--英文姓名
      ,b.XMPY as b_JZGJBSJ_XMPY--姓名拼音
      ,b.CYM as b_JZGJBSJ_CYM--曾用名
      ,b.SFZJLXM as b_JZGJBSJ_SFZJLXM--身份证件类型码
      ,bb.MC as b_JZGJBSJ_SFZJLXM_MC--名称
      ,b.SFZJH as b_JZGJBSJ_SFZJH--身份证件号
      ,b.CSRQ as b_JZGJBSJ_CSRQ--出生日期
      ,b.XBM as b_JZGJBSJ_XBM--性别码
      ,bc.MC as b_JZGJBSJ_XBM_MC--名称
      ,b.MZM as b_JZGJBSJ_MZM--民族码
      ,bd.MZMC as b_JZGJBSJ_MZM_MZMC--民族名称
      ,bd.ZMDM as b_JZGJBSJ_MZM_ZMDM--字母代码
      ,b.XXM as b_JZGJBSJ_XXM--血型码
      ,be.MC as b_JZGJBSJ_XXM_MC--名称
      ,be.JC as b_JZGJBSJ_XXM_JC--简称
      ,b.JKZKM as b_JZGJBSJ_JKZKM--健康状况码
      ,bf.MC as b_JZGJBSJ_JKZKM_MC--名称
      ,bf.SM as b_JZGJBSJ_JKZKM_SM--说明
      ,b.HYZTM as b_JZGJBSJ_HYZTM--婚姻状态码
      ,bg.MC as b_JZGJBSJ_HYZTM_MC--名称
      ,b.ZZMMM as b_JZGJBSJ_ZZMMM--政治面貌码
      ,bh.MC as b_JZGJBSJ_ZZMMM_MC--名称
      ,bh.JC as b_JZGJBSJ_ZZMMM_JC--简称
      ,b.GATQWM as b_JZGJBSJ_GATQWM--港澳台侨外码
      ,bi.MC as b_JZGJBSJ_GATQWM_MC--名称
      ,bi.SM as b_JZGJBSJ_GATQWM_SM--说明
      ,b.JG as b_JZGJBSJ_JG--籍贯
      ,b.GJDQM as b_JZGJBSJ_GJDQM--国籍/地区码
      ,bj.GJDQMCJC as b_JZGJBSJ_GJDQM_GJDQMCJC--国家/地区名称简称
      ,bj.EZMDM as b_JZGJBSJ_GJDQM_EZMDM--二字母代码
      ,bj.SZMDM as b_JZGJBSJ_GJDQM_SZMDM--三字母代码
      ,b.CSDXZQHM as b_JZGJBSJ_CSDXZQHM--出生地行政区划码
      ,bk.MC as b_JZGJBSJ_CSDXZQHM_MC--名称
      ,b.XYZJM as b_JZGJBSJ_XYZJM--信仰宗教码
      ,bl.MC as b_JZGJBSJ_XYZJM_MC--名称
      ,b.JZGHKSZDXZQHM as b_JZGJBSJ_JZGHKSZDXZQHM--教职工户口所在地行政区划码
      ,bm.MC as b_JZGJBSJ_JZGHKSZDXZQHM_MC--名称
      ,b.HKLBM as b_JZGJBSJ_HKLBM--户口类别码
      ,bn.MC as b_JZGJBSJ_HKLBM_MC--名称
      ,b.DQZZ as b_JZGJBSJ_DQZZ--当前住址
      ,b.DQZZYZBM as b_JZGJBSJ_DQZZYZBM--当前住址邮政编码
      ,b.CJGZNY as b_JZGJBSJ_CJGZNY--参加工作年月
      ,b.CJNY as b_JZGJBSJ_CJNY--从教年月
      ,b.LXNY as b_JZGJBSJ_LXNY--来校年月
      ,b.BZLBM as b_JZGJBSJ_BZLBM--编制类别码
      ,bo.MC as b_JZGJBSJ_BZLBM_MC--名称
      ,b.JZGLBM as b_JZGJBSJ_JZGLBM--教职工类别码
      ,bp.MC as b_JZGJBSJ_JZGLBM_MC--名称
      ,bp.SM as b_JZGJBSJ_JZGLBM_SM--说明
      ,b.GWLBM as b_JZGJBSJ_GWLBM--岗位类别码
      ,bq.MC as b_JZGJBSJ_GWLBM_MC--名称
      ,b.SFJZJS as b_JZGJBSJ_SFJZJS--是否兼职教师
      ,br.MC as b_JZGJBSJ_SFJZJS_MC--名称
      ,b.SFSSXJS as b_JZGJBSJ_SFSSXJS--是否双师型教
      ,bs.MC as b_JZGJBSJ_SFSSXJS_MC--名称
      ,b.ZP as b_JZGJBSJ_ZP--照片(路径)
      ,b.DQZTM as b_JZGJBSJ_DQZTM--当前状态码
      ,bt.MC as b_JZGJBSJ_DQZTM_MC--名称
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

FROM dbo.EDU_ZZJG_01_A01_JZGKZ AS a LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS b ON a.JZGJBSJID = b.ID /*教工基本信息ID*/ AND a.SCHOOLID = b.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZZXX_01_01_ZZXX AS c ON a.SCHOOLID = c.ID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS bb ON b.SFZJLXM = bb.DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS bc ON b.XBM = bc.DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS bd ON b.MZM = bd.DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS be ON b.XXM = be.DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS bf ON b.JKZKM = bf.DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS bg ON b.HYZTM = bg.DM /*婚姻状态码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS bh ON b.ZZMMM = bh.DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS bi ON b.GATQWM = bi.DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS bj ON b.GJDQM = bj.DM /*国籍/地区码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS bk ON b.CSDXZQHM = bk.DM /*出生地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS bl ON b.XYZJM = bl.DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS bm ON b.JZGHKSZDXZQHM = bm.DM /*教职工户口所在地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS bn ON b.HKLBM = bn.DM /*户口类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_BZLB AS bo ON b.BZLBM = bo.DM /*编制类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGLB AS bp ON b.JZGLBM = bp.DM /*教职工类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWLB AS bq ON b.GWLBM = bq.DM /*岗位类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS br ON b.SFJZJS = br.DM /*是否兼职教师*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS bs ON b.SFSSXJS = bs.DM /*是否双师型教*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGDQZT AS bt ON b.DQZTM = bt.DM /*当前状态码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS cb ON c.XXJBZM = cb.DM /*学校举办者码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS cc ON c.XXZGBMM = cc.DM /*学校主管部门码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS cd ON c.XZQHM = cd.DM /*行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_PGQK AS ce ON c.XXPGLX = ce.DM /*学校评估类型*/
GO
