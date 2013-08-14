
--教职工基本数据子类表
CREATE VIEW [dbo].[VIEW_EDU_ZXJZ_01_01_JZGJBSJ_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校名
      ,a.[GH]--工号
      ,a.[XM]--姓名
      ,a.[YWXM]--英文姓名
      ,a.[XMPY]--姓名拼音
      ,a.[CYM]--曾用名
      ,a.[XBM]--性别码
      ,a.[CSRQ]--出生日期
      ,a.[CSDM]--出生地码
      ,a.[JG]--籍贯
      ,a.[MZM]--民族码
      ,a.[GJDQM]--国籍/地区码
      ,a.[SFZJLXM]--身份证件类型码
      ,a.[SFZJH]--身份证件号
      ,a.[HYZKM]--婚姻状况码
      ,a.[GATQWM]--港澳台侨外码
      ,a.[ZZMMM]--政治面貌码
      ,a.[JKZKM]--健康状况码
      ,a.[XYZJM]--信仰宗教码
      ,a.[XXM]--血型码
      ,a.[ZP]--照片
      ,a.[SFZJYXQ]--身份证件有效期
      ,a.[JGH]--机构号
      ,a.[JTZZ]--家庭住址
      ,a.[XZZ]--现住址
      ,a.[HKSZD]--户口所在地
      ,a.[HKXZM]--户口性质码
      ,a.[XLM]--学历码
      ,a.[GZNY]--参加工作年月
      ,a.[LXNY]--来校年月
      ,a.[CJNY]--从教年月
      ,a.[BZLBM]--编制类别码
      ,a.[DABH]--档案编号
      ,a.[DAWB]--档案文本
      ,a.[TXDZ]--通信地址
      ,a.[LXDH]--联系电话
      ,a.[YZBM]--邮政编码
      ,a.[DZXX]--电子信箱
      ,a.[ZYDZ]--主页地址
      ,a.[TC]--特长
      ,a.[GWZYM]--岗位职业码
      ,a.[ZYRKXD]--主要任课学段
      ,b.XXDM as b_ZXXX_XXDM--学校代码
      ,b.XXMC as b_ZXXX_XXMC--学校名称
      ,b.XXYWMC as b_ZXXX_XXYWMC--学校英文名称
      ,b.XXDZ as b_ZXXX_XXDZ--学校地址
      ,b.XXYZBM as b_ZXXX_XXYZBM--学校邮政编码
      ,b.XZQHM as b_ZXXX_XZQHM--行政区划码
      ,b.JXNY as b_ZXXX_JXNY--建校年月
      ,b.XQR as b_ZXXX_XQR--校庆日
      ,b.XXBXLXM as b_ZXXX_XXBXLXM--学校办学类型码
      ,b.XXZGBMM as b_ZXXX_XXZGBMM--学校主管部门码
      ,b.FDDBRH as b_ZXXX_FDDBRH--法定代表人号
      ,b.FRZSH as b_ZXXX_FRZSH--法人证书号
      ,b.XZGH as b_ZXXX_XZGH--校长工号
      ,b.XZXM as b_ZXXX_XZXM--校长姓名
      ,b.DWFZRH as b_ZXXX_DWFZRH--党委负责人号
      ,b.ZZJGM as b_ZXXX_ZZJGM--组织机构码
      ,b.LXDH as b_ZXXX_LXDH--联系电话
      ,b.CZDH as b_ZXXX_CZDH--传真电话
      ,b.DZXX as b_ZXXX_DZXX--电子信箱
      ,b.ZYDZ as b_ZXXX_ZYDZ--主页地址
      ,b.LSYG as b_ZXXX_LSYG--历史沿革
      ,b.XXBBM as b_ZXXX_XXBBM--学校办别码
      ,b.SSZGDWM as b_ZXXX_SSZGDWM--所属主管单位码
      ,b.SZDCXLXM as b_ZXXX_SZDCXLXM--所在地城乡类型码
      ,b.SZDJJSXM as b_ZXXX_SZDJJSXM--所在地经济属性码
      ,b.SZDMZSX as b_ZXXX_SZDMZSX--所在地民族属性
      ,b.XXXZ as b_ZXXX_XXXZ--小学学制
      ,b.XXRXNL as b_ZXXX_XXRXNL--小学入学年龄
      ,b.CZXZ as b_ZXXX_CZXZ--初中学制
      ,b.CZRXNL as b_ZXXX_CZRXNL--初中入学年龄
      ,b.GZXZ as b_ZXXX_GZXZ--高中学制
      ,b.ZJXYYM as b_ZXXX_ZJXYYM--主教学语言码
      ,b.FJXYYM as b_ZXXX_FJXYYM--辅教学语言码
      ,b.ZSBJ as b_ZXXX_ZSBJ--招生半径
      ,c.MC as c_RDXB_MC--名称
      ,d.MC as d_ZHRMGHGXZQH_MC--名称
      ,e.MZMC as e_ZGGMZMCDLMZMPXF_MZMC--民族名称
      ,e.ZMDM as e_ZGGMZMCDLMZMPXF_ZMDM--字母代码
      ,f.GJDQMCJC as f_SJGGHDQMC_GJDQMCJC--国家/地区名称简称
      ,f.EZMDM as f_SJGGHDQMC_EZMDM--二字母代码
      ,f.SZMDM as f_SJGGHDQMC_SZMDM--三字母代码
      ,g.MC as g_SFZJLX_MC--名称
      ,h.MC as h_GATQW_MC--名称
      ,h.SM as h_GATQW_SM--说明
      ,i.MC as i_ZZMM_MC--名称
      ,i.JC as i_ZZMM_JC--简称
      ,j.MC as j_JKZKYWSZ_MC--名称
      ,j.SM as j_JKZKYWSZ_SM--说明
      ,k.MC as k_ZJXY_MC--名称
      ,l.MC as l_XX_MC--名称
      ,l.JC as l_XX_JC--简称

FROM dbo.EDU_ZXJZ_01_01_JZGJBSJ AS a LEFT OUTER JOIN
      dbo.EDU_ZXXX_01_01_ZXXX AS b ON a.SCHOOLID = b.ID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS c ON a.XBM = c.DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS d ON a.CSDM = d.DM /*出生地码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS e ON a.MZM = e.DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS f ON a.GJDQM = f.DM /*国籍/地区码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS g ON a.SFZJLXM = g.DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS h ON a.GATQWM = h.DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS i ON a.ZZMMM = i.DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS j ON a.JKZKM = j.DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS k ON a.XYZJM = k.DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS l ON a.XXM = l.DM /*血型码*/
GO
