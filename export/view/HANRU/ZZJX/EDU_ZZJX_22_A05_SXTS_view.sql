
--实习投诉表
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_22_A05_SXTS_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[ComID]--企业ID
      ,a.[StuID]--学生ID
      ,a.[TsTime]--投诉时间
      ,a.[TsReason]--投诉原因
      ,a.[TsResult]--投诉结果
      ,a.[ComSuggest]--投诉建议
      ,a.[TypeID]--投诉类型
      ,c.SCHOOLID as c_QYGL_SCHOOLID--企业管理表 学校
      ,c.Name as c_QYGL_Name--企业管理表 企业名称
      ,c.UserName as c_QYGL_UserName--企业管理表 用户名
      ,c.Password as c_QYGL_Password--企业管理表 密码
      ,c.UserID as c_QYGL_UserID--企业管理表 用户表id(预留)
      ,c.QYXZ as c_QYGL_QYXZ--企业管理表 企业性质
      ,c.QYGM as c_QYGL_QYGM--企业管理表 组织规模
      ,c.ZZJG as c_QYGL_ZZJG--企业管理表 组织机构
      ,c.ZYJYFW as c_QYGL_ZYJYFW--企业管理表 主要经营范围
      ,c.License as c_QYGL_License--企业管理表 营业执照
      ,c.CompanyType as c_QYGL_CompanyType--企业管理表 企业类型
      ,c.QYRS as c_QYGL_QYRS--企业管理表 企业人数
      ,c.Regcapital as c_QYGL_Regcapital--企业管理表 注册资金
      ,c.PostNum as c_QYGL_PostNum--企业管理表 邮编
      ,c.Fox as c_QYGL_Fox--企业管理表 传真
      ,c.Manager as c_QYGL_Manager--企业管理表 负责人
      ,c.Job as c_QYGL_Job--企业管理表 职位
      ,c.Cellphone as c_QYGL_Cellphone--企业管理表 手机号码
      ,c.OfficNum as c_QYGL_OfficNum--企业管理表 公司电话
      ,c.Email as c_QYGL_Email--企业管理表 电子邮件
      ,c.qq as c_QYGL_qq--企业管理表 qq
      ,c.MSN as c_QYGL_MSN--企业管理表 msn
      ,c.Address as c_QYGL_Address--企业管理表 公司地址
      ,c.Website as c_QYGL_Website--企业管理表 网址
      ,c.GSJJ as c_QYGL_GSJJ--企业管理表 公司简介
      ,c.Status as c_QYGL_Status--企业管理表 审核状态
      ,d.SCHOOLID as d_XSXX_SCHOOLID--学生信息数据表 学校名
      ,d.XH as d_XSXX_XH--学生信息数据表 学号
      ,d.XM as d_XSXX_XM--学生信息数据表 姓名
      ,d.YWXM as d_XSXX_YWXM--学生信息数据表 英文姓名
      ,d.XMPY as d_XSXX_XMPY--学生信息数据表 姓名拼音
      ,d.CYM as d_XSXX_CYM--学生信息数据表 曾用名
      ,d.SFZJLXM as d_XSXX_SFZJLXM--学生信息数据表 身份证件类型码
      ,db.MC as d_XSXX_SFZJLXM_MC--身份证件类型代码表 名称
      ,d.SFZJH as d_XSXX_SFZJH--学生信息数据表 身份证件号
      ,d.XBM as d_XSXX_XBM--学生信息数据表 性别码
      ,dc.MC as d_XSXX_XBM_MC--人的性别代码 名称
      ,d.XXM as d_XSXX_XXM--学生信息数据表 血型码
      ,dd.MC as d_XSXX_XXM_MC--血型代码表 名称
      ,dd.JC as d_XSXX_XXM_JC--血型代码表 简称
      ,d.CSRQ as d_XSXX_CSRQ--学生信息数据表 出生日期
      ,d.CSDM as d_XSXX_CSDM--学生信息数据表 出生地码
      ,de.MC as d_XSXX_CSDM_MC--中华人民共和国行政区划代码 名称
      ,d.JG as d_XSXX_JG--学生信息数据表 籍贯
      ,d.MZM as d_XSXX_MZM--学生信息数据表 民族码
      ,df.MZMC as d_XSXX_MZM_MZMC--中国各民族名称的罗马字母拼写法和代码 民族名称
      ,df.ZMDM as d_XSXX_MZM_ZMDM--中国各民族名称的罗马字母拼写法和代码 字母代码
      ,d.HYZKM as d_XSXX_HYZKM--学生信息数据表 婚姻状况码
      ,dg.MC as d_XSXX_HYZKM_MC--婚姻状况代码 名称
      ,d.XYZJM as d_XSXX_XYZJM--学生信息数据表 信仰宗教码
      ,dh.MC as d_XSXX_XYZJM_MC--宗教信仰代码 名称
      ,d.GATQWM as d_XSXX_GATQWM--学生信息数据表 港澳台侨外码
      ,di.MC as d_XSXX_GATQWM_MC--港澳台侨外代码表 名称
      ,di.SM as d_XSXX_GATQWM_SM--港澳台侨外代码表 说明
      ,d.JKZKM as d_XSXX_JKZKM--学生信息数据表 健康状况码
      ,dj.MC as d_XSXX_JKZKM_MC--健康状况1位数字代码 名称
      ,dj.SM as d_XSXX_JKZKM_SM--健康状况1位数字代码 说明
      ,d.ZZMMM as d_XSXX_ZZMMM--学生信息数据表 政治面貌码
      ,dk.MC as d_XSXX_ZZMMM_MC--政治面貌代码 名称
      ,dk.JC as d_XSXX_ZZMMM_JC--政治面貌代码 简称
      ,d.HKSZDXZQHM as d_XSXX_HKSZDXZQHM--学生信息数据表 户口所在地行政区划码
      ,dl.MC as d_XSXX_HKSZDXZQHM_MC--中华人民共和国行政区划代码 名称
      ,d.HKLBM as d_XSXX_HKLBM--学生信息数据表 户口类别码
      ,dm.MC as d_XSXX_HKLBM_MC--户口类别代码 名称
      ,d.SFSLDRK as d_XSXX_SFSLDRK--学生信息数据表 是否是流动人口
      ,dn.MC as d_XSXX_SFSLDRK_MC--是否标志代码表 名称
      ,d.GJDQM as d_XSXX_GJDQM--学生信息数据表 国籍/地区
      ,do.GJDQMCJC as d_XSXX_GJDQM_GJDQMCJC--世界各国和地区名称代码 国家/地区名称简称
      ,do.EZMDM as d_XSXX_GJDQM_EZMDM--世界各国和地区名称代码 二字母代码
      ,do.SZMDM as d_XSXX_GJDQM_SZMDM--世界各国和地区名称代码 三字母代码
      ,d.TC as d_XSXX_TC--学生信息数据表 特长
      ,d.XSLXDH as d_XSXX_XSLXDH--学生信息数据表 学生联系电话
      ,d.WLDZ as d_XSXX_WLDZ--学生信息数据表 网络地址
      ,d.JSTXH as d_XSXX_JSTXH--学生信息数据表 即时通讯号
      ,d.DZXX as d_XSXX_DZXX--学生信息数据表 电子信箱
      ,d.ZP as d_XSXX_ZP--学生信息数据表 照片(路径)

FROM dbo.EDU_ZZJX_22_A05_SXTS AS a LEFT OUTER JOIN
      dbo.EDU_ZZJX_20_A01_QYGL AS c ON a.ComID = c.ID /*企业ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZXS_01_01_XSXX AS d ON a.StuID = d.ID /*学生ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS db ON d.SFZJLXM = db.DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS dc ON d.XBM = dc.DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS dd ON d.XXM = dd.DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS de ON d.CSDM = de.DM /*出生地码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS df ON d.MZM = df.DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS dg ON d.HYZKM = dg.DM /*婚姻状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS dh ON d.XYZJM = dh.DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS di ON d.GATQWM = di.DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS dj ON d.JKZKM = dj.DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS dk ON d.ZZMMM = dk.DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS dl ON d.HKSZDXZQHM = dl.DM /*户口所在地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS dm ON d.HKLBM = dm.DM /*户口类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS dn ON d.SFSLDRK = dn.DM /*是否是流动人口*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS do ON d.GJDQM = do.DM /*国籍/地区*/
GO
