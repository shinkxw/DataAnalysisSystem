
--校内岗位数据子类表
CREATE VIEW [dbo].[VIEW_EDU_ZZJG_02_02_XNGWSJ_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校名
      ,a.[GWID]--岗位表ID
      ,a.[JZGJBSJID]--教职工基本数据子类表
      ,a.[GWQSNY]--岗位起始年月
      ,a.[GWJSNY]--岗位结束年月
      ,a.[SFZG]--是否在岗
      ,a.[ZWMC]--职务名称
      ,a.[JGH]--机构号
      ,b.SCHOOLNAME as b_SCHOOL_SCHOOLNAME--学校名称
      ,b.SCHOOLTYPE as b_SCHOOL_SCHOOLTYPE--学校类型
      ,b.XNID as b_SCHOOL_XNID--学年ID
      ,b.XQID as b_SCHOOL_XQID--学期ID
      ,b.MatchURL as b_SCHOOL_MatchURL--匹配url
      ,b.LogLevel as b_SCHOOL_LogLevel--日志级别
      ,c.SCHOOLID as c_JGGW_SCHOOLID--学校ID
      ,c.JGH as c_JGGW_JGH--机构号
      ,c.GWBH as c_JGGW_GWBH--岗位编号
      ,c.GWMC as c_JGGW_GWMC--岗位名称
      ,c.GWSM as c_JGGW_GWSM--岗位说明
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
      ,d.YDDH as d_JZGJBSJ_YDDH--移动电话
      ,d.GDDH as d_JZGJBSJ_GDDH--固定电话
      ,d.TXDZYZBM as d_JZGJBSJ_TXDZYZBM--通信地址邮政编码
      ,d.TXDZ as d_JZGJBSJ_TXDZ--通信地址
      ,d.DZXX as d_JZGJBSJ_DZXX--电子信箱
      ,d.WLDZ as d_JZGJBSJ_WLDZ--网络地址
      ,d.JSTXH as d_JZGJBSJ_JSTXH--即时通讯号
      ,e.MC as e_SFBZ_MC--名称
      ,f.SCHOOLID as f_XNJG_SCHOOLID--学校名
      ,f.JGMC as f_XNJG_JGMC--机构名称
      ,f.JGYWMC as f_XNJG_JGYWMC--机构英文名称
      ,f.JGJC as f_XNJG_JGJC--机构简称
      ,f.JGJP as f_XNJG_JGJP--机构简拼
      ,f.JGDZ as f_XNJG_JGDZ--机构地址
      ,f.LSSJJGH as f_XNJG_LSSJJGH--隶属上级机构号
      ,f.LSXQH as f_XNJG_LSXQH--隶属校区号
      ,f.JGYXBS as f_XNJG_JGYXBS--机构有效标识
      ,fb.MC as f_XNJG_JGYXBS_MC--名称
      ,f.SFST as f_XNJG_SFST--是否实体
      ,fc.MC as f_XNJG_SFST_MC--名称
      ,f.JLNY as f_XNJG_JLNY--建立年月
      ,f.JGYZBM as f_XNJG_JGYZBM--机构邮政编码
      ,f.FZRH as f_XNJG_FZRH--负责人号

FROM dbo.EDU_ZZJG_02_02_XNGWSJ AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZZXX_03_A01_JGGW AS c ON a.GWID = c.ID /*岗位表ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS d ON a.JZGJBSJID = d.ID /*教职工基本数据子类表*/ AND a.SCHOOLID = d.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS e ON a.SFZG = e.DM /*是否在岗*/ LEFT OUTER JOIN
      dbo.EDU_ZZXX_03_01_XNJG AS f ON a.JGH = f.JGH /*机构号*/ AND a.SCHOOLID = f.SCHOOLID /*学校名*/ LEFT OUTER JOIN
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
      dbo.EDU_JY_SFBZ AS fb ON f.JGYXBS = fb.DM /*机构有效标识*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS fc ON f.SFST = fc.DM /*是否实体*/
GO
