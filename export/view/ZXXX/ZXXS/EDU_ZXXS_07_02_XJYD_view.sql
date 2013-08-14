
--学籍异动数据子类表
CREATE VIEW [dbo].[VIEW_EDU_ZXXS_07_02_XJYD_DISP]
AS
SELECT a.[ID]--学籍异动表编号
      ,a.[XSXXID]--学生ID
      ,a.[SCHOOLID]--学校ID
      ,a.[YDLBM]--异动类别码
      ,a.[YDRQ]--异动日期
      ,a.[YDYYM]--异动原因码
      ,a.[SPRQ]--审批日期
      ,a.[SPWH]--审批文号
      ,a.[JBRID]--经办人ID
      ,a.[JBRGH]--经办人工号
      ,a.[YDLYXXM]--异动来源学校码
      ,a.[YDQXXXM]--异动去向学校码
      ,a.[YDSM]--异动说明
      ,a.[YZYID]--原专业ID
      ,a.[YBH]--原班号
      ,a.[YNJ]--原年级
      ,a.[XZYID]--现专业ID
      ,a.[XBH]--现班号
      ,a.[XNJ]--现年级
      ,b.SCHOOLID as b_XSXX_SCHOOLID--学校名
      ,b.XH as b_XSXX_XH--学号
      ,b.XM as b_XSXX_XM--姓名
      ,b.YWXM as b_XSXX_YWXM--英文姓名
      ,b.XMPY as b_XSXX_XMPY--姓名拼音
      ,b.CYM as b_XSXX_CYM--曾用名
      ,b.XBM as b_XSXX_XBM--性别码
      ,bb.MC as b_XSXX_XBM_MC--名称
      ,b.CSRQ as b_XSXX_CSRQ--出生日期
      ,b.CSDM as b_XSXX_CSDM--出生地码
      ,bc.MC as b_XSXX_CSDM_MC--名称
      ,b.JG as b_XSXX_JG--籍贯
      ,b.MZM as b_XSXX_MZM--民族码
      ,bd.MZMC as b_XSXX_MZM_MZMC--民族名称
      ,bd.ZMDM as b_XSXX_MZM_ZMDM--字母代码
      ,b.GJDQM as b_XSXX_GJDQM--国籍/地区码
      ,be.GJDQMCJC as b_XSXX_GJDQM_GJDQMCJC--国家/地区名称简称
      ,be.EZMDM as b_XSXX_GJDQM_EZMDM--二字母代码
      ,be.SZMDM as b_XSXX_GJDQM_SZMDM--三字母代码
      ,b.SFZJLXM as b_XSXX_SFZJLXM--身份证件类型码
      ,bf.MC as b_XSXX_SFZJLXM_MC--名称
      ,b.SFZJH as b_XSXX_SFZJH--身份证件号
      ,b.HYZKM as b_XSXX_HYZKM--婚姻状况码
      ,bg.MC as b_XSXX_HYZKM_MC--名称
      ,b.GATQWM as b_XSXX_GATQWM--港澳台侨外码
      ,bh.MC as b_XSXX_GATQWM_MC--名称
      ,bh.SM as b_XSXX_GATQWM_SM--说明
      ,b.ZZMMM as b_XSXX_ZZMMM--政治面貌码
      ,bi.MC as b_XSXX_ZZMMM_MC--名称
      ,bi.JC as b_XSXX_ZZMMM_JC--简称
      ,b.JKZKM as b_XSXX_JKZKM--健康状况码
      ,bj.MC as b_XSXX_JKZKM_MC--名称
      ,bj.SM as b_XSXX_JKZKM_SM--说明
      ,b.XYZJM as b_XSXX_XYZJM--信仰宗教码
      ,bk.MC as b_XSXX_XYZJM_MC--名称
      ,b.XXM as b_XSXX_XXM--血型码
      ,bl.MC as b_XSXX_XXM_MC--名称
      ,bl.JC as b_XSXX_XXM_JC--简称
      ,b.ZP as b_XSXX_ZP--照片
      ,b.SFZJYXQ as b_XSXX_SFZJYXQ--身份证件有效期
      ,b.DSZYBZ as b_XSXX_DSZYBZ--独生子女标志
      ,b.RXNY as b_XSXX_RXNY--入学年月
      ,b.NJ as b_XSXX_NJ--年级
      ,b.BH as b_XSXX_BH--班号
      ,b.XSLBM as b_XSXX_XSLBM--学生类别码
      ,b.XZZ as b_XSXX_XZZ--现住址
      ,b.HKSZD as b_XSXX_HKSZD--户口所在地
      ,b.HKXZM as b_XSXX_HKXZM--户口性质码
      ,b.SFLDRK as b_XSXX_SFLDRK--是否流动人口
      ,b.TC as b_XSXX_TC--特长
      ,b.LXDH as b_XSXX_LXDH--联系电话
      ,b.TXDZ as b_XSXX_TXDZ--通信地址
      ,b.YZBM as b_XSXX_YZBM--邮政编码
      ,b.DZXX as b_XSXX_DZXX--电子信箱
      ,b.ZYDZ as b_XSXX_ZYDZ--主页地址
      ,b.XJH as b_XSXX_XJH--学籍号
      ,c.XXDM as c_ZXXX_XXDM--学校代码
      ,c.XXMC as c_ZXXX_XXMC--学校名称
      ,c.XXYWMC as c_ZXXX_XXYWMC--学校英文名称
      ,c.XXDZ as c_ZXXX_XXDZ--学校地址
      ,c.XXYZBM as c_ZXXX_XXYZBM--学校邮政编码
      ,c.XZQHM as c_ZXXX_XZQHM--行政区划码
      ,c.JXNY as c_ZXXX_JXNY--建校年月
      ,c.XQR as c_ZXXX_XQR--校庆日
      ,c.XXBXLXM as c_ZXXX_XXBXLXM--学校办学类型码
      ,c.XXZGBMM as c_ZXXX_XXZGBMM--学校主管部门码
      ,c.FDDBRH as c_ZXXX_FDDBRH--法定代表人号
      ,c.FRZSH as c_ZXXX_FRZSH--法人证书号
      ,c.XZGH as c_ZXXX_XZGH--校长工号
      ,c.XZXM as c_ZXXX_XZXM--校长姓名
      ,c.DWFZRH as c_ZXXX_DWFZRH--党委负责人号
      ,c.ZZJGM as c_ZXXX_ZZJGM--组织机构码
      ,c.LXDH as c_ZXXX_LXDH--联系电话
      ,c.CZDH as c_ZXXX_CZDH--传真电话
      ,c.DZXX as c_ZXXX_DZXX--电子信箱
      ,c.ZYDZ as c_ZXXX_ZYDZ--主页地址
      ,c.LSYG as c_ZXXX_LSYG--历史沿革
      ,c.XXBBM as c_ZXXX_XXBBM--学校办别码
      ,c.SSZGDWM as c_ZXXX_SSZGDWM--所属主管单位码
      ,c.SZDCXLXM as c_ZXXX_SZDCXLXM--所在地城乡类型码
      ,c.SZDJJSXM as c_ZXXX_SZDJJSXM--所在地经济属性码
      ,c.SZDMZSX as c_ZXXX_SZDMZSX--所在地民族属性
      ,c.XXXZ as c_ZXXX_XXXZ--小学学制
      ,c.XXRXNL as c_ZXXX_XXRXNL--小学入学年龄
      ,c.CZXZ as c_ZXXX_CZXZ--初中学制
      ,c.CZRXNL as c_ZXXX_CZRXNL--初中入学年龄
      ,c.GZXZ as c_ZXXX_GZXZ--高中学制
      ,c.ZJXYYM as c_ZXXX_ZJXYYM--主教学语言码
      ,c.FJXYYM as c_ZXXX_FJXYYM--辅教学语言码
      ,c.ZSBJ as c_ZXXX_ZSBJ--招生半径
      ,d.MC as d_XJYDLB_MC--名称
      ,e.MC as e_XJYDYY_MC--名称
      ,f.SCHOOLID as f_JZGJBSJ_SCHOOLID--学校名
      ,f.GH as f_JZGJBSJ_GH--工号
      ,f.XM as f_JZGJBSJ_XM--姓名
      ,f.YWXM as f_JZGJBSJ_YWXM--英文姓名
      ,f.XMPY as f_JZGJBSJ_XMPY--姓名拼音
      ,f.CYM as f_JZGJBSJ_CYM--曾用名
      ,f.XBM as f_JZGJBSJ_XBM--性别码
      ,fb.MC as f_JZGJBSJ_XBM_MC--名称
      ,f.CSRQ as f_JZGJBSJ_CSRQ--出生日期
      ,f.CSDM as f_JZGJBSJ_CSDM--出生地码
      ,fc.MC as f_JZGJBSJ_CSDM_MC--名称
      ,f.JG as f_JZGJBSJ_JG--籍贯
      ,f.MZM as f_JZGJBSJ_MZM--民族码
      ,fd.MZMC as f_JZGJBSJ_MZM_MZMC--民族名称
      ,fd.ZMDM as f_JZGJBSJ_MZM_ZMDM--字母代码
      ,f.GJDQM as f_JZGJBSJ_GJDQM--国籍/地区码
      ,fe.GJDQMCJC as f_JZGJBSJ_GJDQM_GJDQMCJC--国家/地区名称简称
      ,fe.EZMDM as f_JZGJBSJ_GJDQM_EZMDM--二字母代码
      ,fe.SZMDM as f_JZGJBSJ_GJDQM_SZMDM--三字母代码
      ,f.SFZJLXM as f_JZGJBSJ_SFZJLXM--身份证件类型码
      ,ff.MC as f_JZGJBSJ_SFZJLXM_MC--名称
      ,f.SFZJH as f_JZGJBSJ_SFZJH--身份证件号
      ,f.HYZKM as f_JZGJBSJ_HYZKM--婚姻状况码
      ,f.GATQWM as f_JZGJBSJ_GATQWM--港澳台侨外码
      ,fg.MC as f_JZGJBSJ_GATQWM_MC--名称
      ,fg.SM as f_JZGJBSJ_GATQWM_SM--说明
      ,f.ZZMMM as f_JZGJBSJ_ZZMMM--政治面貌码
      ,fh.MC as f_JZGJBSJ_ZZMMM_MC--名称
      ,fh.JC as f_JZGJBSJ_ZZMMM_JC--简称
      ,f.JKZKM as f_JZGJBSJ_JKZKM--健康状况码
      ,fi.MC as f_JZGJBSJ_JKZKM_MC--名称
      ,fi.SM as f_JZGJBSJ_JKZKM_SM--说明
      ,f.XYZJM as f_JZGJBSJ_XYZJM--信仰宗教码
      ,fj.MC as f_JZGJBSJ_XYZJM_MC--名称
      ,f.XXM as f_JZGJBSJ_XXM--血型码
      ,fk.MC as f_JZGJBSJ_XXM_MC--名称
      ,fk.JC as f_JZGJBSJ_XXM_JC--简称
      ,f.ZP as f_JZGJBSJ_ZP--照片
      ,f.SFZJYXQ as f_JZGJBSJ_SFZJYXQ--身份证件有效期
      ,f.JGH as f_JZGJBSJ_JGH--机构号
      ,f.JTZZ as f_JZGJBSJ_JTZZ--家庭住址
      ,f.XZZ as f_JZGJBSJ_XZZ--现住址
      ,f.HKSZD as f_JZGJBSJ_HKSZD--户口所在地
      ,f.HKXZM as f_JZGJBSJ_HKXZM--户口性质码
      ,f.XLM as f_JZGJBSJ_XLM--学历码
      ,f.GZNY as f_JZGJBSJ_GZNY--参加工作年月
      ,f.LXNY as f_JZGJBSJ_LXNY--来校年月
      ,f.CJNY as f_JZGJBSJ_CJNY--从教年月
      ,f.BZLBM as f_JZGJBSJ_BZLBM--编制类别码
      ,f.DABH as f_JZGJBSJ_DABH--档案编号
      ,f.DAWB as f_JZGJBSJ_DAWB--档案文本
      ,f.TXDZ as f_JZGJBSJ_TXDZ--通信地址
      ,f.LXDH as f_JZGJBSJ_LXDH--联系电话
      ,f.YZBM as f_JZGJBSJ_YZBM--邮政编码
      ,f.DZXX as f_JZGJBSJ_DZXX--电子信箱
      ,f.ZYDZ as f_JZGJBSJ_ZYDZ--主页地址
      ,f.TC as f_JZGJBSJ_TC--特长
      ,f.GWZYM as f_JZGJBSJ_GWZYM--岗位职业码
      ,f.ZYRKXD as f_JZGJBSJ_ZYRKXD--主要任课学段
      ,g.SCHOOLID as g_NJ_SCHOOLID--学校名
      ,g.NJMC as g_NJ_NJMC--年级名称
      ,h.SCHOOLID as h_NJ_SCHOOLID--学校名
      ,h.NJMC as h_NJ_NJMC--年级名称

FROM dbo.EDU_ZXXS_07_02_XJYD AS a LEFT OUTER JOIN
      dbo.EDU_ZXXS_01_01_XSXX AS b ON a.XSXXID = b.ID /*学生ID*/ AND a.SCHOOLID = b.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_01_01_ZXXX AS c ON a.SCHOOLID = c.ID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_JY_XJYDLB AS d ON a.YDLBM = d.DM /*异动类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XJYDYY AS e ON a.YDYYM = e.DM /*异动原因码*/ LEFT OUTER JOIN
      dbo.EDU_ZXJZ_01_01_JZGJBSJ AS f ON a.JBRID = f.ID /*经办人ID*/ AND a.SCHOOLID = f.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_02_01_NJ AS g ON a.YNJ = g.NJ /*原年级*/ AND a.SCHOOLID = g.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_02_01_NJ AS h ON a.XNJ = h.NJ /*现年级*/ AND a.SCHOOLID = h.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS bb ON b.XBM = bb.DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS bc ON b.CSDM = bc.DM /*出生地码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS bd ON b.MZM = bd.DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS be ON b.GJDQM = be.DM /*国籍/地区码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS bf ON b.SFZJLXM = bf.DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS bg ON b.HYZKM = bg.DM /*婚姻状况码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS bh ON b.GATQWM = bh.DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS bi ON b.ZZMMM = bi.DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS bj ON b.JKZKM = bj.DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS bk ON b.XYZJM = bk.DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS bl ON b.XXM = bl.DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS fb ON f.XBM = fb.DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS fc ON f.CSDM = fc.DM /*出生地码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS fd ON f.MZM = fd.DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS fe ON f.GJDQM = fe.DM /*国籍/地区码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS ff ON f.SFZJLXM = ff.DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS fg ON f.GATQWM = fg.DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS fh ON f.ZZMMM = fh.DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS fi ON f.JKZKM = fi.DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS fj ON f.XYZJM = fj.DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS fk ON f.XXM = fk.DM /*血型码*/
GO
