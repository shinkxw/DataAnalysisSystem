
--入学成绩数据表
CREATE VIEW [dbo].[VIEW_EDU_ZZZS_02_01_RXCJ_DISP]
AS
SELECT a.[XSXXID]--学生信息数据表
      ,a.[SCHOOLID]--学校名
      ,a.[RXZF]--入学总分
      ,a.[GKZF]--中考总分
      ,a.[FJF]--附加分
      ,a.[FJFLBM]--附加分类别码
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
      ,c.SCHOOLNAME as c_SCHOOL_SCHOOLNAME--学校名称
      ,c.SCHOOLTYPE as c_SCHOOL_SCHOOLTYPE--学校类型
      ,c.XNID as c_SCHOOL_XNID--学年ID
      ,c.XQID as c_SCHOOL_XQID--学期ID
      ,c.MatchURL as c_SCHOOL_MatchURL--匹配url
      ,c.LogLevel as c_SCHOOL_LogLevel--日志级别
      ,d.MC as d_FJFLB_MC--名称

FROM dbo.EDU_ZZZS_02_01_RXCJ AS a LEFT OUTER JOIN
      dbo.EDU_ZZXS_01_01_XSXX AS b ON a.XSXXID = b.ID /*学生信息数据表*/ AND a.SCHOOLID = b.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS c ON a.SCHOOLID = c.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_JY_FJFLB AS d ON a.FJFLBM = d.DM /*附加分类别码*/ LEFT OUTER JOIN
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
      dbo.EDU_GB_SJGGHDQMC AS bo ON b.GJDQM = bo.DM /*国籍/地区*/
GO
