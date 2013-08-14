
--文件阅办子类表
CREATE VIEW [dbo].[VIEW_EDU_ZZBG_02_02_WJYB_DISP]
AS
SELECT a.[SCHOOLID]--学校名
      ,a.[WJID]--文件ID
      ,a.[YBRID]--阅办人ID
      ,a.[YBLBM]--阅办类别码
      ,a.[YBJB]--阅办级别
      ,a.[YBDW]--阅办单位
      ,a.[YBDWBH]--阅办单位编号
      ,a.[YBRGH]--阅办人工号
      ,a.[YBYJ]--阅办意见
      ,a.[YBRQ]--阅办日期
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
      ,c.SCHOOLID as c_WJJBSJ_SCHOOLID--学校名
      ,c.WJBH as c_WJJBSJ_WJBH--文件编号
      ,c.WJWH as c_WJJBSJ_WJWH--文件文号
      ,c.BT as c_WJJBSJ_BT--标题
      ,c.ZTC as c_WJJBSJ_ZTC--主题词
      ,c.MJM as c_WJJBSJ_MJM--密级码
      ,cb.HYPYDM as c_WJJBSJ_MJM_HYPYDM--汉语拼音代码
      ,cb.HZDM as c_WJJBSJ_MJM_HZDM--汉字代码
      ,cb.MC as c_WJJBSJ_MJM_MC--名称
      ,c.JJCDM as c_WJJBSJ_JJCDM--紧急程度码
      ,cc.MC as c_WJJBSJ_JJCDM_MC--名称
      ,c.YS as c_WJJBSJ_YS--页数
      ,c.WJFLM as c_WJJBSJ_WJFLM--文件分类码
      ,cd.MC as c_WJJBSJ_WJFLM_MC--名称
      ,cd.SM as c_WJJBSJ_WJFLM_SM--说明
      ,c.ZW as c_WJJBSJ_ZW--正文
      ,c.FJ as c_WJJBSJ_FJ--附件
      ,c.FWRQ as c_WJJBSJ_FWRQ--发文日期
      ,c.CSDW as c_WJJBSJ_CSDW--抄送单位
      ,d.SCHOOLID as d_JZGJBSJ_SCHOOLID--学校名
      ,d.GH as d_JZGJBSJ_GH--工号
      ,d.XM as d_JZGJBSJ_XM--姓名
      ,d.YWXM as d_JZGJBSJ_YWXM--英文姓名
      ,d.XMPY as d_JZGJBSJ_XMPY--姓名拼音
      ,d.CYM as d_JZGJBSJ_CYM--曾用名
      ,d.SFZJLXM as d_JZGJBSJ_SFZJLXM--身份证件类型码
      ,db.MC as d_JZGJBSJ_SFZJLXM_MC--名称
      ,d.SFZJH as d_JZGJBSJ_SFZJH--身份证件号
      ,d.CSRQ as d_JZGJBSJ_CSRQ--出生日期
      ,d.XBM as d_JZGJBSJ_XBM--性别码
      ,dc.MC as d_JZGJBSJ_XBM_MC--名称
      ,d.MZM as d_JZGJBSJ_MZM--民族码
      ,dd.MZMC as d_JZGJBSJ_MZM_MZMC--民族名称
      ,dd.ZMDM as d_JZGJBSJ_MZM_ZMDM--字母代码
      ,d.XXM as d_JZGJBSJ_XXM--血型码
      ,de.MC as d_JZGJBSJ_XXM_MC--名称
      ,de.JC as d_JZGJBSJ_XXM_JC--简称
      ,d.JKZKM as d_JZGJBSJ_JKZKM--健康状况码
      ,df.MC as d_JZGJBSJ_JKZKM_MC--名称
      ,df.SM as d_JZGJBSJ_JKZKM_SM--说明
      ,d.HYZTM as d_JZGJBSJ_HYZTM--婚姻状态码
      ,dg.MC as d_JZGJBSJ_HYZTM_MC--名称
      ,d.ZZMMM as d_JZGJBSJ_ZZMMM--政治面貌码
      ,dh.MC as d_JZGJBSJ_ZZMMM_MC--名称
      ,dh.JC as d_JZGJBSJ_ZZMMM_JC--简称
      ,d.GATQWM as d_JZGJBSJ_GATQWM--港澳台侨外码
      ,di.MC as d_JZGJBSJ_GATQWM_MC--名称
      ,di.SM as d_JZGJBSJ_GATQWM_SM--说明
      ,d.JG as d_JZGJBSJ_JG--籍贯
      ,d.GJDQM as d_JZGJBSJ_GJDQM--国籍/地区码
      ,dj.GJDQMCJC as d_JZGJBSJ_GJDQM_GJDQMCJC--国家/地区名称简称
      ,dj.EZMDM as d_JZGJBSJ_GJDQM_EZMDM--二字母代码
      ,dj.SZMDM as d_JZGJBSJ_GJDQM_SZMDM--三字母代码
      ,d.CSDXZQHM as d_JZGJBSJ_CSDXZQHM--出生地行政区划码
      ,dk.MC as d_JZGJBSJ_CSDXZQHM_MC--名称
      ,d.XYZJM as d_JZGJBSJ_XYZJM--信仰宗教码
      ,dl.MC as d_JZGJBSJ_XYZJM_MC--名称
      ,d.JZGHKSZDXZQHM as d_JZGJBSJ_JZGHKSZDXZQHM--教职工户口所在地行政区划码
      ,dm.MC as d_JZGJBSJ_JZGHKSZDXZQHM_MC--名称
      ,d.HKLBM as d_JZGJBSJ_HKLBM--户口类别码
      ,dn.MC as d_JZGJBSJ_HKLBM_MC--名称
      ,d.DQZZ as d_JZGJBSJ_DQZZ--当前住址
      ,d.DQZZYZBM as d_JZGJBSJ_DQZZYZBM--当前住址邮政编码
      ,d.CJGZNY as d_JZGJBSJ_CJGZNY--参加工作年月
      ,d.CJNY as d_JZGJBSJ_CJNY--从教年月
      ,d.LXNY as d_JZGJBSJ_LXNY--来校年月
      ,d.BZLBM as d_JZGJBSJ_BZLBM--编制类别码
      ,do.MC as d_JZGJBSJ_BZLBM_MC--名称
      ,d.JZGLBM as d_JZGJBSJ_JZGLBM--教职工类别码
      ,dp.MC as d_JZGJBSJ_JZGLBM_MC--名称
      ,dp.SM as d_JZGJBSJ_JZGLBM_SM--说明
      ,d.GWLBM as d_JZGJBSJ_GWLBM--岗位类别码
      ,dq.MC as d_JZGJBSJ_GWLBM_MC--名称
      ,d.SFJZJS as d_JZGJBSJ_SFJZJS--是否兼职教师
      ,dr.MC as d_JZGJBSJ_SFJZJS_MC--名称
      ,d.SFSSXJS as d_JZGJBSJ_SFSSXJS--是否双师型教
      ,ds.MC as d_JZGJBSJ_SFSSXJS_MC--名称
      ,d.ZP as d_JZGJBSJ_ZP--照片(路径)
      ,d.DQZTM as d_JZGJBSJ_DQZTM--当前状态码
      ,dt.MC as d_JZGJBSJ_DQZTM_MC--名称
      ,e.MC as e_YBLB_MC--名称
      ,e.SM as e_YBLB_SM--说明

FROM dbo.EDU_ZZBG_02_02_WJYB AS a LEFT OUTER JOIN
      dbo.EDU_ZZXX_01_01_ZZXX AS b ON a.SCHOOLID = b.ID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZZBG_01_01_WJJBSJ AS c ON a.WJID = c.ID /*文件ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS d ON a.YBRID = d.ID /*阅办人ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_JY_YBLB AS e ON a.YBLBM = e.DM /*阅办类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bb ON b.XXJBZM = bb.DM /*学校举办者码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XXJYJGJBZ AS bc ON b.XXZGBMM = bc.DM /*学校主管部门码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS bd ON b.XZQHM = bd.DM /*行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_PGQK AS be ON b.XXPGLX = be.DM /*学校评估类型*/ LEFT OUTER JOIN
      dbo.EDU_GB_WXBMZJ AS cb ON c.MJM = cb.DM /*密级码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JJCD AS cc ON c.JJCDM = cc.DM /*紧急程度码*/ LEFT OUTER JOIN
      dbo.EDU_JY_WJFL AS cd ON c.WJFLM = cd.DM /*文件分类码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS db ON d.SFZJLXM = db.DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS dc ON d.XBM = dc.DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS dd ON d.MZM = dd.DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS de ON d.XXM = de.DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS df ON d.JKZKM = df.DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS dg ON d.HYZTM = dg.DM /*婚姻状态码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS dh ON d.ZZMMM = dh.DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS di ON d.GATQWM = di.DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS dj ON d.GJDQM = dj.DM /*国籍/地区码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS dk ON d.CSDXZQHM = dk.DM /*出生地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS dl ON d.XYZJM = dl.DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS dm ON d.JZGHKSZDXZQHM = dm.DM /*教职工户口所在地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS dn ON d.HKLBM = dn.DM /*户口类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_BZLB AS do ON d.BZLBM = do.DM /*编制类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGLB AS dp ON d.JZGLBM = dp.DM /*教职工类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWLB AS dq ON d.GWLBM = dq.DM /*岗位类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS dr ON d.SFJZJS = dr.DM /*是否兼职教师*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS ds ON d.SFSSXJS = ds.DM /*是否双师型教*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGDQZT AS dt ON d.DQZTM = dt.DM /*当前状态码*/
GO
