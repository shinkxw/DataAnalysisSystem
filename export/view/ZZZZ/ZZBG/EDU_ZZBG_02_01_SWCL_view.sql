
--收文处理子类表
CREATE VIEW [dbo].[VIEW_EDU_ZZBG_02_01_SWCL_DISP]
AS
SELECT a.[SCHOOLID]--学校名
      ,a.[WJID]--文件ID
      ,a.[QSRID]--签收人ID
      ,a.[CFRID]--拆封人ID
      ,a.[DJRID]--登记人ID
      ,a.[QSRGH]--签收人工号
      ,a.[CFRGH]--拆封人工号
      ,a.[DJRGH]--登记人工号
      ,a.[SWRQ]--收文日期
      ,a.[LWDW]--来文单位
      ,a.[FS]--份数
      ,a.[CLQK]--处理情况
      ,a.[FYFS]--翻印份数
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
      ,e.SCHOOLID as e_JZGJBSJ_SCHOOLID--学校名
      ,e.GH as e_JZGJBSJ_GH--工号
      ,e.XM as e_JZGJBSJ_XM--姓名
      ,e.YWXM as e_JZGJBSJ_YWXM--英文姓名
      ,e.XMPY as e_JZGJBSJ_XMPY--姓名拼音
      ,e.CYM as e_JZGJBSJ_CYM--曾用名
      ,e.SFZJLXM as e_JZGJBSJ_SFZJLXM--身份证件类型码
      ,eb.MC as e_JZGJBSJ_SFZJLXM_MC--名称
      ,e.SFZJH as e_JZGJBSJ_SFZJH--身份证件号
      ,e.CSRQ as e_JZGJBSJ_CSRQ--出生日期
      ,e.XBM as e_JZGJBSJ_XBM--性别码
      ,ec.MC as e_JZGJBSJ_XBM_MC--名称
      ,e.MZM as e_JZGJBSJ_MZM--民族码
      ,ed.MZMC as e_JZGJBSJ_MZM_MZMC--民族名称
      ,ed.ZMDM as e_JZGJBSJ_MZM_ZMDM--字母代码
      ,e.XXM as e_JZGJBSJ_XXM--血型码
      ,ee.MC as e_JZGJBSJ_XXM_MC--名称
      ,ee.JC as e_JZGJBSJ_XXM_JC--简称
      ,e.JKZKM as e_JZGJBSJ_JKZKM--健康状况码
      ,ef.MC as e_JZGJBSJ_JKZKM_MC--名称
      ,ef.SM as e_JZGJBSJ_JKZKM_SM--说明
      ,e.HYZTM as e_JZGJBSJ_HYZTM--婚姻状态码
      ,eg.MC as e_JZGJBSJ_HYZTM_MC--名称
      ,e.ZZMMM as e_JZGJBSJ_ZZMMM--政治面貌码
      ,eh.MC as e_JZGJBSJ_ZZMMM_MC--名称
      ,eh.JC as e_JZGJBSJ_ZZMMM_JC--简称
      ,e.GATQWM as e_JZGJBSJ_GATQWM--港澳台侨外码
      ,ei.MC as e_JZGJBSJ_GATQWM_MC--名称
      ,ei.SM as e_JZGJBSJ_GATQWM_SM--说明
      ,e.JG as e_JZGJBSJ_JG--籍贯
      ,e.GJDQM as e_JZGJBSJ_GJDQM--国籍/地区码
      ,ej.GJDQMCJC as e_JZGJBSJ_GJDQM_GJDQMCJC--国家/地区名称简称
      ,ej.EZMDM as e_JZGJBSJ_GJDQM_EZMDM--二字母代码
      ,ej.SZMDM as e_JZGJBSJ_GJDQM_SZMDM--三字母代码
      ,e.CSDXZQHM as e_JZGJBSJ_CSDXZQHM--出生地行政区划码
      ,ek.MC as e_JZGJBSJ_CSDXZQHM_MC--名称
      ,e.XYZJM as e_JZGJBSJ_XYZJM--信仰宗教码
      ,el.MC as e_JZGJBSJ_XYZJM_MC--名称
      ,e.JZGHKSZDXZQHM as e_JZGJBSJ_JZGHKSZDXZQHM--教职工户口所在地行政区划码
      ,em.MC as e_JZGJBSJ_JZGHKSZDXZQHM_MC--名称
      ,e.HKLBM as e_JZGJBSJ_HKLBM--户口类别码
      ,en.MC as e_JZGJBSJ_HKLBM_MC--名称
      ,e.DQZZ as e_JZGJBSJ_DQZZ--当前住址
      ,e.DQZZYZBM as e_JZGJBSJ_DQZZYZBM--当前住址邮政编码
      ,e.CJGZNY as e_JZGJBSJ_CJGZNY--参加工作年月
      ,e.CJNY as e_JZGJBSJ_CJNY--从教年月
      ,e.LXNY as e_JZGJBSJ_LXNY--来校年月
      ,e.BZLBM as e_JZGJBSJ_BZLBM--编制类别码
      ,eo.MC as e_JZGJBSJ_BZLBM_MC--名称
      ,e.JZGLBM as e_JZGJBSJ_JZGLBM--教职工类别码
      ,ep.MC as e_JZGJBSJ_JZGLBM_MC--名称
      ,ep.SM as e_JZGJBSJ_JZGLBM_SM--说明
      ,e.GWLBM as e_JZGJBSJ_GWLBM--岗位类别码
      ,eq.MC as e_JZGJBSJ_GWLBM_MC--名称
      ,e.SFJZJS as e_JZGJBSJ_SFJZJS--是否兼职教师
      ,er.MC as e_JZGJBSJ_SFJZJS_MC--名称
      ,e.SFSSXJS as e_JZGJBSJ_SFSSXJS--是否双师型教
      ,es.MC as e_JZGJBSJ_SFSSXJS_MC--名称
      ,e.ZP as e_JZGJBSJ_ZP--照片(路径)
      ,e.DQZTM as e_JZGJBSJ_DQZTM--当前状态码
      ,et.MC as e_JZGJBSJ_DQZTM_MC--名称
      ,f.SCHOOLID as f_JZGJBSJ_SCHOOLID--学校名
      ,f.GH as f_JZGJBSJ_GH--工号
      ,f.XM as f_JZGJBSJ_XM--姓名
      ,f.YWXM as f_JZGJBSJ_YWXM--英文姓名
      ,f.XMPY as f_JZGJBSJ_XMPY--姓名拼音
      ,f.CYM as f_JZGJBSJ_CYM--曾用名
      ,f.SFZJLXM as f_JZGJBSJ_SFZJLXM--身份证件类型码
      ,fb.MC as f_JZGJBSJ_SFZJLXM_MC--名称
      ,f.SFZJH as f_JZGJBSJ_SFZJH--身份证件号
      ,f.CSRQ as f_JZGJBSJ_CSRQ--出生日期
      ,f.XBM as f_JZGJBSJ_XBM--性别码
      ,fc.MC as f_JZGJBSJ_XBM_MC--名称
      ,f.MZM as f_JZGJBSJ_MZM--民族码
      ,fd.MZMC as f_JZGJBSJ_MZM_MZMC--民族名称
      ,fd.ZMDM as f_JZGJBSJ_MZM_ZMDM--字母代码
      ,f.XXM as f_JZGJBSJ_XXM--血型码
      ,fe.MC as f_JZGJBSJ_XXM_MC--名称
      ,fe.JC as f_JZGJBSJ_XXM_JC--简称
      ,f.JKZKM as f_JZGJBSJ_JKZKM--健康状况码
      ,ff.MC as f_JZGJBSJ_JKZKM_MC--名称
      ,ff.SM as f_JZGJBSJ_JKZKM_SM--说明
      ,f.HYZTM as f_JZGJBSJ_HYZTM--婚姻状态码
      ,fg.MC as f_JZGJBSJ_HYZTM_MC--名称
      ,f.ZZMMM as f_JZGJBSJ_ZZMMM--政治面貌码
      ,fh.MC as f_JZGJBSJ_ZZMMM_MC--名称
      ,fh.JC as f_JZGJBSJ_ZZMMM_JC--简称
      ,f.GATQWM as f_JZGJBSJ_GATQWM--港澳台侨外码
      ,fi.MC as f_JZGJBSJ_GATQWM_MC--名称
      ,fi.SM as f_JZGJBSJ_GATQWM_SM--说明
      ,f.JG as f_JZGJBSJ_JG--籍贯
      ,f.GJDQM as f_JZGJBSJ_GJDQM--国籍/地区码
      ,fj.GJDQMCJC as f_JZGJBSJ_GJDQM_GJDQMCJC--国家/地区名称简称
      ,fj.EZMDM as f_JZGJBSJ_GJDQM_EZMDM--二字母代码
      ,fj.SZMDM as f_JZGJBSJ_GJDQM_SZMDM--三字母代码
      ,f.CSDXZQHM as f_JZGJBSJ_CSDXZQHM--出生地行政区划码
      ,fk.MC as f_JZGJBSJ_CSDXZQHM_MC--名称
      ,f.XYZJM as f_JZGJBSJ_XYZJM--信仰宗教码
      ,fl.MC as f_JZGJBSJ_XYZJM_MC--名称
      ,f.JZGHKSZDXZQHM as f_JZGJBSJ_JZGHKSZDXZQHM--教职工户口所在地行政区划码
      ,fm.MC as f_JZGJBSJ_JZGHKSZDXZQHM_MC--名称
      ,f.HKLBM as f_JZGJBSJ_HKLBM--户口类别码
      ,fn.MC as f_JZGJBSJ_HKLBM_MC--名称
      ,f.DQZZ as f_JZGJBSJ_DQZZ--当前住址
      ,f.DQZZYZBM as f_JZGJBSJ_DQZZYZBM--当前住址邮政编码
      ,f.CJGZNY as f_JZGJBSJ_CJGZNY--参加工作年月
      ,f.CJNY as f_JZGJBSJ_CJNY--从教年月
      ,f.LXNY as f_JZGJBSJ_LXNY--来校年月
      ,f.BZLBM as f_JZGJBSJ_BZLBM--编制类别码
      ,fo.MC as f_JZGJBSJ_BZLBM_MC--名称
      ,f.JZGLBM as f_JZGJBSJ_JZGLBM--教职工类别码
      ,fp.MC as f_JZGJBSJ_JZGLBM_MC--名称
      ,fp.SM as f_JZGJBSJ_JZGLBM_SM--说明
      ,f.GWLBM as f_JZGJBSJ_GWLBM--岗位类别码
      ,fq.MC as f_JZGJBSJ_GWLBM_MC--名称
      ,f.SFJZJS as f_JZGJBSJ_SFJZJS--是否兼职教师
      ,fr.MC as f_JZGJBSJ_SFJZJS_MC--名称
      ,f.SFSSXJS as f_JZGJBSJ_SFSSXJS--是否双师型教
      ,fs.MC as f_JZGJBSJ_SFSSXJS_MC--名称
      ,f.ZP as f_JZGJBSJ_ZP--照片(路径)
      ,f.DQZTM as f_JZGJBSJ_DQZTM--当前状态码
      ,ft.MC as f_JZGJBSJ_DQZTM_MC--名称

FROM dbo.EDU_ZZBG_02_01_SWCL AS a LEFT OUTER JOIN
      dbo.EDU_ZZXX_01_01_ZZXX AS b ON a.SCHOOLID = b.ID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZZBG_01_01_WJJBSJ AS c ON a.WJID = c.ID /*文件ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS d ON a.QSRID = d.ID /*签收人ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS e ON a.CFRID = e.ID /*拆封人ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS f ON a.DJRID = f.ID /*登记人ID*/ AND a.SCHOOLID = f.SCHOOLID /*学校名*/ LEFT OUTER JOIN
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
      dbo.EDU_JY_JZGDQZT AS dt ON d.DQZTM = dt.DM /*当前状态码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS eb ON e.SFZJLXM = eb.DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS ec ON e.XBM = ec.DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS ed ON e.MZM = ed.DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS ee ON e.XXM = ee.DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS ef ON e.JKZKM = ef.DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS eg ON e.HYZTM = eg.DM /*婚姻状态码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS eh ON e.ZZMMM = eh.DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS ei ON e.GATQWM = ei.DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS ej ON e.GJDQM = ej.DM /*国籍/地区码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS ek ON e.CSDXZQHM = ek.DM /*出生地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS el ON e.XYZJM = el.DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS em ON e.JZGHKSZDXZQHM = em.DM /*教职工户口所在地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS en ON e.HKLBM = en.DM /*户口类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_BZLB AS eo ON e.BZLBM = eo.DM /*编制类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGLB AS ep ON e.JZGLBM = ep.DM /*教职工类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWLB AS eq ON e.GWLBM = eq.DM /*岗位类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS er ON e.SFJZJS = er.DM /*是否兼职教师*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS es ON e.SFSSXJS = es.DM /*是否双师型教*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGDQZT AS et ON e.DQZTM = et.DM /*当前状态码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS fb ON f.SFZJLXM = fb.DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS fc ON f.XBM = fc.DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS fd ON f.MZM = fd.DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS fe ON f.XXM = fe.DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS ff ON f.JKZKM = ff.DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS fg ON f.HYZTM = fg.DM /*婚姻状态码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS fh ON f.ZZMMM = fh.DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS fi ON f.GATQWM = fi.DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS fj ON f.GJDQM = fj.DM /*国籍/地区码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS fk ON f.CSDXZQHM = fk.DM /*出生地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS fl ON f.XYZJM = fl.DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS fm ON f.JZGHKSZDXZQHM = fm.DM /*教职工户口所在地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS fn ON f.HKLBM = fn.DM /*户口类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_BZLB AS fo ON f.BZLBM = fo.DM /*编制类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGLB AS fp ON f.JZGLBM = fp.DM /*教职工类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWLB AS fq ON f.GWLBM = fq.DM /*岗位类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS fr ON f.SFJZJS = fr.DM /*是否兼职教师*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS fs ON f.SFSSXJS = fs.DM /*是否双师型教*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGDQZT AS ft ON f.DQZTM = ft.DM /*当前状态码*/
GO
