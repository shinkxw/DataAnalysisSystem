
--任课数据子类表
CREATE VIEW [dbo].[VIEW_EDU_ZXJZ_07_02_RKSJ_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校名
      ,a.[JZGJBSJID]--教职工基本数据子类表
      ,a.[RKKCH]--任课课程号
      ,a.[RKQSNY]--任课起始年月
      ,a.[RKZZNY]--任课终止年月
      ,a.[RKZXS]--任课总学时
      ,a.[RKXDM]--任课学段码
      ,a.[RKJSM]--任课角色码
      ,a.[SKBJ]--授课班级
      ,a.[SKRS]--授课人数
      ,a.[ZKS]--周课时
      ,a.[SFLT]--是否连堂
      ,b.SCHOOLNAME as b_SCHOOL_SCHOOLNAME--学校名称
      ,b.SCHOOLTYPE as b_SCHOOL_SCHOOLTYPE--学校类型
      ,b.XNID as b_SCHOOL_XNID--学年ID
      ,b.XQID as b_SCHOOL_XQID--学期ID
      ,b.MatchURL as b_SCHOOL_MatchURL--匹配url
      ,b.LogLevel as b_SCHOOL_LogLevel--日志级别
      ,c.SCHOOLID as c_JZGJBSJ_SCHOOLID--学校名
      ,c.GH as c_JZGJBSJ_GH--工号
      ,c.XM as c_JZGJBSJ_XM--姓名
      ,c.YWXM as c_JZGJBSJ_YWXM--英文姓名
      ,c.XMPY as c_JZGJBSJ_XMPY--姓名拼音
      ,c.CYM as c_JZGJBSJ_CYM--曾用名
      ,c.XBM as c_JZGJBSJ_XBM--性别码
      ,cb.MC as c_JZGJBSJ_XBM_MC--名称
      ,c.CSRQ as c_JZGJBSJ_CSRQ--出生日期
      ,c.CSDM as c_JZGJBSJ_CSDM--出生地码
      ,cc.MC as c_JZGJBSJ_CSDM_MC--名称
      ,c.JG as c_JZGJBSJ_JG--籍贯
      ,c.MZM as c_JZGJBSJ_MZM--民族码
      ,cd.MZMC as c_JZGJBSJ_MZM_MZMC--民族名称
      ,cd.ZMDM as c_JZGJBSJ_MZM_ZMDM--字母代码
      ,c.GJDQM as c_JZGJBSJ_GJDQM--国籍/地区码
      ,ce.GJDQMCJC as c_JZGJBSJ_GJDQM_GJDQMCJC--国家/地区名称简称
      ,ce.EZMDM as c_JZGJBSJ_GJDQM_EZMDM--二字母代码
      ,ce.SZMDM as c_JZGJBSJ_GJDQM_SZMDM--三字母代码
      ,c.SFZJLXM as c_JZGJBSJ_SFZJLXM--身份证件类型码
      ,cf.MC as c_JZGJBSJ_SFZJLXM_MC--名称
      ,c.SFZJH as c_JZGJBSJ_SFZJH--身份证件号
      ,c.HYZKM as c_JZGJBSJ_HYZKM--婚姻状况码
      ,cg.MC as c_JZGJBSJ_HYZKM_MC--名称
      ,c.GATQWM as c_JZGJBSJ_GATQWM--港澳台侨外码
      ,ch.MC as c_JZGJBSJ_GATQWM_MC--名称
      ,ch.SM as c_JZGJBSJ_GATQWM_SM--说明
      ,c.ZZMMM as c_JZGJBSJ_ZZMMM--政治面貌码
      ,ci.MC as c_JZGJBSJ_ZZMMM_MC--名称
      ,ci.JC as c_JZGJBSJ_ZZMMM_JC--简称
      ,c.JKZKM as c_JZGJBSJ_JKZKM--健康状况码
      ,cj.MC as c_JZGJBSJ_JKZKM_MC--名称
      ,cj.SM as c_JZGJBSJ_JKZKM_SM--说明
      ,c.XYZJM as c_JZGJBSJ_XYZJM--信仰宗教码
      ,ck.MC as c_JZGJBSJ_XYZJM_MC--名称
      ,c.XXM as c_JZGJBSJ_XXM--血型码
      ,cl.MC as c_JZGJBSJ_XXM_MC--名称
      ,cl.JC as c_JZGJBSJ_XXM_JC--简称
      ,c.ZP as c_JZGJBSJ_ZP--照片
      ,c.SFZJYXQ as c_JZGJBSJ_SFZJYXQ--身份证件有效期
      ,c.JGH as c_JZGJBSJ_JGH--机构号
      ,c.JTZZ as c_JZGJBSJ_JTZZ--家庭住址
      ,c.XZZ as c_JZGJBSJ_XZZ--现住址
      ,c.HKSZD as c_JZGJBSJ_HKSZD--户口所在地
      ,c.HKXZM as c_JZGJBSJ_HKXZM--户口性质码
      ,cm.MC as c_JZGJBSJ_HKXZM_MC--名称
      ,c.XLM as c_JZGJBSJ_XLM--学历码
      ,cn.MC as c_JZGJBSJ_XLM_MC--名称
      ,c.GZNY as c_JZGJBSJ_GZNY--参加工作年月
      ,c.LXNY as c_JZGJBSJ_LXNY--来校年月
      ,c.CJNY as c_JZGJBSJ_CJNY--从教年月
      ,c.BZLBM as c_JZGJBSJ_BZLBM--编制类别码
      ,co.MC as c_JZGJBSJ_BZLBM_MC--名称
      ,c.DABH as c_JZGJBSJ_DABH--档案编号
      ,c.DAWB as c_JZGJBSJ_DAWB--档案文本
      ,c.TXDZ as c_JZGJBSJ_TXDZ--通信地址
      ,c.LXDH as c_JZGJBSJ_LXDH--联系电话
      ,c.YZBM as c_JZGJBSJ_YZBM--邮政编码
      ,c.DZXX as c_JZGJBSJ_DZXX--电子信箱
      ,c.ZYDZ as c_JZGJBSJ_ZYDZ--主页地址
      ,c.TC as c_JZGJBSJ_TC--特长
      ,c.GWZYM as c_JZGJBSJ_GWZYM--岗位职业码
      ,cp.MC as c_JZGJBSJ_GWZYM_MC--名称
      ,c.ZYRKXD as c_JZGJBSJ_ZYRKXD--主要任课学段
      ,cq.MC as c_JZGJBSJ_ZYRKXD_MC--名称
      ,d.SCHOOLID as d_KC_SCHOOLID--学校名
      ,d.KCMC as d_KC_KCMC--课程名称
      ,d.KCM as d_KC_KCM--课程码
      ,db.MC as d_KC_KCM_MC--名称
      ,db.SYXX as d_KC_KCM_SYXX--适用学校
      ,d.KCDJM as d_KC_KCDJM--课程等级码
      ,dc.MC as d_KC_KCDJM_MC--名称
      ,d.KCBM as d_KC_KCBM--课程别名
      ,d.KCJJ as d_KC_KCJJ--课程简介
      ,d.KCYQ as d_KC_KCYQ--课程要求
      ,d.ZXS as d_KC_ZXS--总学时
      ,d.ZHXS as d_KC_ZHXS--周学时
      ,d.ZXXS as d_KC_ZXXS--自学学时
      ,d.SKFSM as d_KC_SKFSM--授课方式码
      ,dd.MC as d_KC_SKFSM_MC--名称
      ,d.JCBM as d_KC_JCBM--教材编码
      ,d.CKSM as d_KC_CKSM--参考书目
      ,d.CDXZ as d_KC_CDXZ--场地限制
      ,d.SFZK as d_KC_SFZK--是否主课
      ,de.MC as d_KC_SFZK_MC--名称
      ,e.MC as e_RKXD_MC--名称
      ,f.MC as f_RKJS_MC--名称
      ,g.SCHOOLID as g_BJ_SCHOOLID--学校名
      ,g.NJ as g_BJ_NJ--年级号
      ,g.BJ as g_BJ_BJ--班级名称
      ,g.JBNY as g_BJ_JBNY--建班年月
      ,g.BZRGH as g_BJ_BZRGH--班主任工号
      ,g.BZXH as g_BJ_BZXH--班长学号
      ,g.BJRYCH as g_BJ_BJRYCH--班级荣誉称号
      ,g.XZ as g_BJ_XZ--学制
      ,g.BJLXM as g_BJ_BJLXM--班级类型码
      ,gb.MC as g_BJ_BJLXM_MC--名称
      ,g.WLLX as g_BJ_WLLX--文理类型
      ,g.BYRQ as g_BJ_BYRQ--毕业日期
      ,g.SFSSMZSYJXB as g_BJ_SFSSMZSYJXB--是否少数民族双语教学班
      ,gc.MC as g_BJ_SFSSMZSYJXB_MC--名称
      ,g.SYJXMSM as g_BJ_SYJXMSM--双语教学模式码
      ,gd.MC as g_BJ_SYJXMSM_MC--名称
      ,gd.SM as g_BJ_SYJXMSM_SM--说明
      ,h.MC as h_SFBZ_MC--名称

FROM dbo.EDU_ZXJZ_07_02_RKSJ AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZXJZ_01_01_JZGJBSJ AS c ON a.JZGJBSJID = c.ID /*教职工基本数据子类表*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZXJX_01_01_KC AS d ON a.RKKCH = d.KCH /*任课课程号*/ AND a.SCHOOLID = d.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_JY_RKXD AS e ON a.RKXDM = e.DM /*任课学段码*/ LEFT OUTER JOIN
      dbo.EDU_JY_RKJS AS f ON a.RKJSM = f.DM /*任课角色码*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_03_01_BJ AS g ON a.SKBJ = g.BH /*授课班级*/ AND a.SCHOOLID = g.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS h ON a.SFLT = h.DM /*是否连堂*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS cb ON c.XBM = cb.DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS cc ON c.CSDM = cc.DM /*出生地码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS cd ON c.MZM = cd.DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS ce ON c.GJDQM = ce.DM /*国籍/地区码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS cf ON c.SFZJLXM = cf.DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS cg ON c.HYZKM = cg.DM /*婚姻状况码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS ch ON c.GATQWM = ch.DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS ci ON c.ZZMMM = ci.DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS cj ON c.JKZKM = cj.DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS ck ON c.XYZJM = ck.DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS cl ON c.XXM = cl.DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS cm ON c.HKXZM = cm.DM /*户口性质码*/ LEFT OUTER JOIN
      dbo.EDU_GB_XL AS cn ON c.XLM = cn.DM /*学历码*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXBZLB AS co ON c.BZLBM = co.DM /*编制类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWZY AS cp ON c.GWZYM = cp.DM /*岗位职业码*/ LEFT OUTER JOIN
      dbo.EDU_JY_RKXD AS cq ON c.ZYRKXD = cq.DM /*主要任课学段*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXKC AS db ON d.KCM = db.DM /*课程码*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXKCDJ AS dc ON d.KCDJM = dc.DM /*课程等级码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS dd ON d.SKFSM = dd.DM /*授课方式码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS de ON d.SFZK = de.DM /*是否主课*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXBJLX AS gb ON g.BJLXM = gb.DM /*班级类型码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS gc ON g.SFSSMZSYJXB = gc.DM /*是否少数民族双语教学班*/ LEFT OUTER JOIN
      dbo.EDU_JY_SSMZSYJXMS AS gd ON g.SYJXMSM = gd.DM /*双语教学模式码*/
GO
