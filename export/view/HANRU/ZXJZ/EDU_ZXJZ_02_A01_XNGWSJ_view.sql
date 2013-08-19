
--校内岗位数据子类表
CREATE VIEW [dbo].[VIEW_EDU_ZXJZ_02_A01_XNGWSJ_DISP]
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
      ,d.XBM as d_JZGJBSJ_XBM--性别码
      ,db.MC as d_JZGJBSJ_XBM_MC--名称
      ,d.CSRQ as d_JZGJBSJ_CSRQ--出生日期
      ,d.CSDM as d_JZGJBSJ_CSDM--出生地码
      ,dc.MC as d_JZGJBSJ_CSDM_MC--名称
      ,d.JG as d_JZGJBSJ_JG--籍贯
      ,d.MZM as d_JZGJBSJ_MZM--民族码
      ,dd.MZMC as d_JZGJBSJ_MZM_MZMC--民族名称
      ,dd.ZMDM as d_JZGJBSJ_MZM_ZMDM--字母代码
      ,d.GJDQM as d_JZGJBSJ_GJDQM--国籍/地区码
      ,de.GJDQMCJC as d_JZGJBSJ_GJDQM_GJDQMCJC--国家/地区名称简称
      ,de.EZMDM as d_JZGJBSJ_GJDQM_EZMDM--二字母代码
      ,de.SZMDM as d_JZGJBSJ_GJDQM_SZMDM--三字母代码
      ,d.SFZJLXM as d_JZGJBSJ_SFZJLXM--身份证件类型码
      ,df.MC as d_JZGJBSJ_SFZJLXM_MC--名称
      ,d.SFZJH as d_JZGJBSJ_SFZJH--身份证件号
      ,d.HYZKM as d_JZGJBSJ_HYZKM--婚姻状况码
      ,dg.MC as d_JZGJBSJ_HYZKM_MC--名称
      ,d.GATQWM as d_JZGJBSJ_GATQWM--港澳台侨外码
      ,dh.MC as d_JZGJBSJ_GATQWM_MC--名称
      ,dh.SM as d_JZGJBSJ_GATQWM_SM--说明
      ,d.ZZMMM as d_JZGJBSJ_ZZMMM--政治面貌码
      ,di.MC as d_JZGJBSJ_ZZMMM_MC--名称
      ,di.JC as d_JZGJBSJ_ZZMMM_JC--简称
      ,d.JKZKM as d_JZGJBSJ_JKZKM--健康状况码
      ,dj.MC as d_JZGJBSJ_JKZKM_MC--名称
      ,dj.SM as d_JZGJBSJ_JKZKM_SM--说明
      ,d.XYZJM as d_JZGJBSJ_XYZJM--信仰宗教码
      ,dk.MC as d_JZGJBSJ_XYZJM_MC--名称
      ,d.XXM as d_JZGJBSJ_XXM--血型码
      ,dl.MC as d_JZGJBSJ_XXM_MC--名称
      ,dl.JC as d_JZGJBSJ_XXM_JC--简称
      ,d.ZP as d_JZGJBSJ_ZP--照片
      ,d.SFZJYXQ as d_JZGJBSJ_SFZJYXQ--身份证件有效期
      ,d.JGH as d_JZGJBSJ_JGH--机构号
      ,d.JTZZ as d_JZGJBSJ_JTZZ--家庭住址
      ,d.XZZ as d_JZGJBSJ_XZZ--现住址
      ,d.HKSZD as d_JZGJBSJ_HKSZD--户口所在地
      ,d.HKXZM as d_JZGJBSJ_HKXZM--户口性质码
      ,dm.MC as d_JZGJBSJ_HKXZM_MC--名称
      ,d.XLM as d_JZGJBSJ_XLM--学历码
      ,dn.MC as d_JZGJBSJ_XLM_MC--名称
      ,d.GZNY as d_JZGJBSJ_GZNY--参加工作年月
      ,d.LXNY as d_JZGJBSJ_LXNY--来校年月
      ,d.CJNY as d_JZGJBSJ_CJNY--从教年月
      ,d.BZLBM as d_JZGJBSJ_BZLBM--编制类别码
      ,do.MC as d_JZGJBSJ_BZLBM_MC--名称
      ,d.DABH as d_JZGJBSJ_DABH--档案编号
      ,d.DAWB as d_JZGJBSJ_DAWB--档案文本
      ,d.TXDZ as d_JZGJBSJ_TXDZ--通信地址
      ,d.LXDH as d_JZGJBSJ_LXDH--联系电话
      ,d.YZBM as d_JZGJBSJ_YZBM--邮政编码
      ,d.DZXX as d_JZGJBSJ_DZXX--电子信箱
      ,d.ZYDZ as d_JZGJBSJ_ZYDZ--主页地址
      ,d.TC as d_JZGJBSJ_TC--特长
      ,d.GWZYM as d_JZGJBSJ_GWZYM--岗位职业码
      ,dp.MC as d_JZGJBSJ_GWZYM_MC--名称
      ,d.ZYRKXD as d_JZGJBSJ_ZYRKXD--主要任课学段
      ,dq.MC as d_JZGJBSJ_ZYRKXD_MC--名称
      ,e.MC as e_SFBZ_MC--名称
      ,f.SCHOOLID as f_JG_SCHOOLID--学校名
      ,f.LSJGH as f_JG_LSJGH--隶属机构号
      ,f.JGMC as f_JG_JGMC--机构名称
      ,f.JGJC as f_JG_JGJC--机构简称
      ,f.FZRGH as f_JG_FZRGH--负责人工号

FROM dbo.EDU_ZXJZ_02_A01_XNGWSJ AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_04_A01_JGGW AS c ON a.GWID = c.ID /*岗位表ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZXJZ_01_01_JZGJBSJ AS d ON a.JZGJBSJID = d.ID /*教职工基本数据子类表*/ AND a.SCHOOLID = d.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS e ON a.SFZG = e.DM /*是否在岗*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_04_01_JG AS f ON a.JGH = f.JGH /*机构号*/ AND a.SCHOOLID = f.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS db ON d.XBM = db.DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS dc ON d.CSDM = dc.DM /*出生地码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS dd ON d.MZM = dd.DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS de ON d.GJDQM = de.DM /*国籍/地区码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS df ON d.SFZJLXM = df.DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS dg ON d.HYZKM = dg.DM /*婚姻状况码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS dh ON d.GATQWM = dh.DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS di ON d.ZZMMM = di.DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS dj ON d.JKZKM = dj.DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS dk ON d.XYZJM = dk.DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS dl ON d.XXM = dl.DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS dm ON d.HKXZM = dm.DM /*户口性质码*/ LEFT OUTER JOIN
      dbo.EDU_GB_XL AS dn ON d.XLM = dn.DM /*学历码*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXBZLB AS do ON d.BZLBM = do.DM /*编制类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWZY AS dp ON d.GWZYM = dp.DM /*岗位职业码*/ LEFT OUTER JOIN
      dbo.EDU_JY_RKXD AS dq ON d.ZYRKXD = dq.DM /*主要任课学段*/
GO
