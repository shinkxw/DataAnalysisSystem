
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
      ,b.YDDH as b_JZGJBSJ_YDDH--移动电话
      ,b.GDDH as b_JZGJBSJ_GDDH--固定电话
      ,b.TXDZYZBM as b_JZGJBSJ_TXDZYZBM--通信地址邮政编码
      ,b.TXDZ as b_JZGJBSJ_TXDZ--通信地址
      ,b.DZXX as b_JZGJBSJ_DZXX--电子信箱
      ,b.WLDZ as b_JZGJBSJ_WLDZ--网络地址
      ,b.JSTXH as b_JZGJBSJ_JSTXH--即时通讯号
      ,c.SCHOOLNAME as c_SCHOOL_SCHOOLNAME--学校名称
      ,c.SCHOOLTYPE as c_SCHOOL_SCHOOLTYPE--学校类型
      ,c.XNID as c_SCHOOL_XNID--学年ID
      ,c.XQID as c_SCHOOL_XQID--学期ID
      ,c.MatchURL as c_SCHOOL_MatchURL--匹配url
      ,c.LogLevel as c_SCHOOL_LogLevel--日志级别

FROM dbo.EDU_ZZJG_01_A01_JZGKZ AS a LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS b ON a.JZGJBSJID = b.ID /*教工基本信息ID*/ AND a.SCHOOLID = b.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS c ON a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
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
      dbo.EDU_JY_JZGDQZT AS bt ON b.DQZTM = bt.DM /*当前状态码*/
GO
