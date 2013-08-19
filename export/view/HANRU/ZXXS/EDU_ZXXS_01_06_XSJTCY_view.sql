
--学生家庭成员数据表
CREATE VIEW [dbo].[VIEW_EDU_ZXXS_01_06_XSJTCY_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校名
      ,a.[XSXXID]--学生信息数据表
      ,a.[GXM]--关系码
      ,a.[CYXM]--成员姓名
      ,a.[CSNY]--出生年月
      ,a.[MZM]--民族码
      ,a.[GJDQM]--国籍/地区码
      ,a.[JKZKM]--健康状况码
      ,a.[CYGZDW]--成员工作单位
      ,a.[CYM]--从业码
      ,a.[ZYJSZWM]--专业技术职务码
      ,a.[ZWJBM]--职务级别码
      ,a.[DH]--电话
      ,a.[DZXX]--电子信箱
      ,a.[SFJHR]--是否监护人
      ,a.[XBM]--性别码
      ,a.[XLM]--学历码
      ,a.[LXDZ]--联系地址
      ,a.[SJHM]--手机号码
      ,b.SCHOOLNAME as b_SCHOOL_SCHOOLNAME--学校名称
      ,b.SCHOOLTYPE as b_SCHOOL_SCHOOLTYPE--学校类型
      ,b.XNID as b_SCHOOL_XNID--学年ID
      ,b.XQID as b_SCHOOL_XQID--学期ID
      ,b.MatchURL as b_SCHOOL_MatchURL--匹配url
      ,b.LogLevel as b_SCHOOL_LogLevel--日志级别
      ,c.SCHOOLID as c_XSXX_SCHOOLID--学校名
      ,c.XH as c_XSXX_XH--学号
      ,c.XM as c_XSXX_XM--姓名
      ,c.YWXM as c_XSXX_YWXM--英文姓名
      ,c.XMPY as c_XSXX_XMPY--姓名拼音
      ,c.CYM as c_XSXX_CYM--曾用名
      ,c.XBM as c_XSXX_XBM--性别码
      ,cb.MC as c_XSXX_XBM_MC--名称
      ,c.CSRQ as c_XSXX_CSRQ--出生日期
      ,c.CSDM as c_XSXX_CSDM--出生地码
      ,cc.MC as c_XSXX_CSDM_MC--名称
      ,c.JG as c_XSXX_JG--籍贯
      ,c.MZM as c_XSXX_MZM--民族码
      ,cd.MZMC as c_XSXX_MZM_MZMC--民族名称
      ,cd.ZMDM as c_XSXX_MZM_ZMDM--字母代码
      ,c.GJDQM as c_XSXX_GJDQM--国籍/地区码
      ,ce.GJDQMCJC as c_XSXX_GJDQM_GJDQMCJC--国家/地区名称简称
      ,ce.EZMDM as c_XSXX_GJDQM_EZMDM--二字母代码
      ,ce.SZMDM as c_XSXX_GJDQM_SZMDM--三字母代码
      ,c.SFZJLXM as c_XSXX_SFZJLXM--身份证件类型码
      ,cf.MC as c_XSXX_SFZJLXM_MC--名称
      ,c.SFZJH as c_XSXX_SFZJH--身份证件号
      ,c.HYZKM as c_XSXX_HYZKM--婚姻状况码
      ,cg.MC as c_XSXX_HYZKM_MC--名称
      ,c.GATQWM as c_XSXX_GATQWM--港澳台侨外码
      ,ch.MC as c_XSXX_GATQWM_MC--名称
      ,ch.SM as c_XSXX_GATQWM_SM--说明
      ,c.ZZMMM as c_XSXX_ZZMMM--政治面貌码
      ,ci.MC as c_XSXX_ZZMMM_MC--名称
      ,ci.JC as c_XSXX_ZZMMM_JC--简称
      ,c.JKZKM as c_XSXX_JKZKM--健康状况码
      ,cj.MC as c_XSXX_JKZKM_MC--名称
      ,cj.SM as c_XSXX_JKZKM_SM--说明
      ,c.XYZJM as c_XSXX_XYZJM--信仰宗教码
      ,ck.MC as c_XSXX_XYZJM_MC--名称
      ,c.XXM as c_XSXX_XXM--血型码
      ,cl.MC as c_XSXX_XXM_MC--名称
      ,cl.JC as c_XSXX_XXM_JC--简称
      ,c.ZP as c_XSXX_ZP--照片
      ,c.SFZJYXQ as c_XSXX_SFZJYXQ--身份证件有效期
      ,c.DSZYBZ as c_XSXX_DSZYBZ--独生子女标志
      ,cm.MC as c_XSXX_DSZYBZ_MC--名称
      ,c.RXNY as c_XSXX_RXNY--入学年月
      ,c.NJ as c_XSXX_NJ--年级
      ,c.BH as c_XSXX_BH--班号
      ,c.XSLBM as c_XSXX_XSLBM--学生类别码
      ,cn.MC as c_XSXX_XSLBM_MC--名称
      ,cn.SM as c_XSXX_XSLBM_SM--说明
      ,c.XZZ as c_XSXX_XZZ--现住址
      ,c.HKSZD as c_XSXX_HKSZD--户口所在地
      ,c.HKXZM as c_XSXX_HKXZM--户口性质码
      ,co.MC as c_XSXX_HKXZM_MC--名称
      ,c.SFLDRK as c_XSXX_SFLDRK--是否流动人口
      ,cp.MC as c_XSXX_SFLDRK_MC--名称
      ,c.TC as c_XSXX_TC--特长
      ,c.LXDH as c_XSXX_LXDH--联系电话
      ,c.TXDZ as c_XSXX_TXDZ--通信地址
      ,c.YZBM as c_XSXX_YZBM--邮政编码
      ,c.DZXX as c_XSXX_DZXX--电子信箱
      ,c.ZYDZ as c_XSXX_ZYDZ--主页地址
      ,c.XJH as c_XSXX_XJH--学籍号
      ,d.MC as d_JTGX_MC--名称
      ,e.MZMC as e_ZGGMZMCDLMZMPXF_MZMC--民族名称
      ,e.ZMDM as e_ZGGMZMCDLMZMPXF_ZMDM--字母代码
      ,f.GJDQMCJC as f_SJGGHDQMC_GJDQMCJC--国家/地区名称简称
      ,f.EZMDM as f_SJGGHDQMC_EZMDM--二字母代码
      ,f.SZMDM as f_SJGGHDQMC_SZMDM--三字母代码
      ,g.MC as g_JKZKYWSZ_MC--名称
      ,g.SM as g_JKZKYWSZ_SM--说明
      ,h.MC as h_CYZK_MC--名称
      ,h.SM as h_CYZK_SM--说明
      ,i.MC as i_ZYJSZW_MC--名称
      ,j.MC as j_ZWJBDM_MC--名称
      ,k.MC as k_SFBZ_MC--名称
      ,l.MC as l_RDXB_MC--名称
      ,m.MC as m_XL_MC--名称

FROM dbo.EDU_ZXXS_01_06_XSJTCY AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZXXS_01_01_XSXX AS c ON a.XSXXID = c.ID /*学生信息数据表*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_GB_JTGX AS d ON a.GXM = d.DM /*关系码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS e ON a.MZM = e.DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS f ON a.GJDQM = f.DM /*国籍/地区码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS g ON a.JKZKM = g.DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_CYZK AS h ON a.CYM = h.DM /*从业码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZYJSZW AS i ON a.ZYJSZWM = i.DM /*专业技术职务码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZWJBDM AS j ON a.ZWJBM = j.DM /*职务级别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS k ON a.SFJHR = k.DM /*是否监护人*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS l ON a.XBM = l.DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_XL AS m ON a.XLM = m.DM /*学历码*/ LEFT OUTER JOIN
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
      dbo.EDU_JY_SFBZ AS cm ON c.DSZYBZ = cm.DM /*独生子女标志*/ LEFT OUTER JOIN
      dbo.EDU_JY_XSLB AS cn ON c.XSLBM = cn.DM /*学生类别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS co ON c.HKXZM = co.DM /*户口性质码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS cp ON c.SFLDRK = cp.DM /*是否流动人口*/
GO
