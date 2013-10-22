
--实习生管理表
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_21_A02_SXSGL_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[ComID]--企业ID
      ,a.[JobID]--岗位ID
      ,a.[SZBID]--实习班ID
      ,a.[StuID]--学生ID
      ,a.[Resume]--简历
      ,a.[GSSHZT]--公司审核状态
      ,a.[TypeID]--录取类型
      ,a.[Status]--实习生状态
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
      ,c.Abstract as c_QYGL_Abstract--企业管理表 公司简介
      ,c.Status as c_QYGL_Status--企业管理表 审核状态
      ,d.SCHOOLID as d_GWXX_SCHOOLID--岗位信息表 学校
      ,d.ComID as d_GWXX_ComID--岗位信息表 企业ID
      ,d.JobName as d_GWXX_JobName--岗位信息表 岗位名称
      ,d.PubTime as d_GWXX_PubTime--岗位信息表 招聘开始时间
      ,d.EndTime as d_GWXX_EndTime--岗位信息表 招聘结束时间
      ,d.WorkType as d_GWXX_WorkType--岗位信息表 工作形式
      ,d.Sex as d_GWXX_Sex--岗位信息表 性别要求
      ,d.monthlypay as d_GWXX_monthlypay--岗位信息表 岗位薪酬
      ,d.LanguageRequire as d_GWXX_LanguageRequire--岗位信息表 语言要求
      ,d.WorkPlace as d_GWXX_WorkPlace--岗位信息表 工作地点
      ,d.Computer as d_GWXX_Computer--岗位信息表 计算机水平
      ,d.ZPRS as d_GWXX_ZPRS--岗位信息表 招聘人数
      ,d.education as d_GWXX_education--岗位信息表 学历要求
      ,d.Age as d_GWXX_Age--岗位信息表 年龄要求
      ,d.abstract as d_GWXX_abstract--岗位信息表 岗位简介
      ,d.Major as d_GWXX_Major--岗位信息表 专业要求
      ,d.Base as d_GWXX_Base--岗位信息表 基本情况
      ,d.experience as d_GWXX_experience--岗位信息表 工作经验
      ,d.GWSHZT as d_GWXX_GWSHZT--岗位信息表 岗位审核状态
      ,d.Status as d_GWXX_Status--岗位信息表 岗位当前状态
      ,e.SCHOOLID as e_SXBJGL_SCHOOLID--实习班级管理表 学校
      ,e.XNID as e_SXBJGL_XNID--实习班级管理表 学年ID
      ,e.XQID as e_SXBJGL_XQID--实习班级管理表 学期ID
      ,e.BZRID as e_SXBJGL_BZRID--实习班级管理表 班主任ID
      ,f.SCHOOLID as f_XSXX_SCHOOLID--学生信息数据表 学校名
      ,f.XH as f_XSXX_XH--学生信息数据表 学号
      ,f.XM as f_XSXX_XM--学生信息数据表 姓名
      ,f.YWXM as f_XSXX_YWXM--学生信息数据表 英文姓名
      ,f.XMPY as f_XSXX_XMPY--学生信息数据表 姓名拼音
      ,f.CYM as f_XSXX_CYM--学生信息数据表 曾用名
      ,f.SFZJLXM as f_XSXX_SFZJLXM--学生信息数据表 身份证件类型码
      ,fb.MC as f_XSXX_SFZJLXM_MC--身份证件类型代码表 名称
      ,f.SFZJH as f_XSXX_SFZJH--学生信息数据表 身份证件号
      ,f.XBM as f_XSXX_XBM--学生信息数据表 性别码
      ,fc.MC as f_XSXX_XBM_MC--人的性别代码 名称
      ,f.XXM as f_XSXX_XXM--学生信息数据表 血型码
      ,fd.MC as f_XSXX_XXM_MC--血型代码表 名称
      ,fd.JC as f_XSXX_XXM_JC--血型代码表 简称
      ,f.CSRQ as f_XSXX_CSRQ--学生信息数据表 出生日期
      ,f.CSDM as f_XSXX_CSDM--学生信息数据表 出生地码
      ,fe.MC as f_XSXX_CSDM_MC--中华人民共和国行政区划代码 名称
      ,f.JG as f_XSXX_JG--学生信息数据表 籍贯
      ,f.MZM as f_XSXX_MZM--学生信息数据表 民族码
      ,ff.MZMC as f_XSXX_MZM_MZMC--中国各民族名称的罗马字母拼写法和代码 民族名称
      ,ff.ZMDM as f_XSXX_MZM_ZMDM--中国各民族名称的罗马字母拼写法和代码 字母代码
      ,f.HYZKM as f_XSXX_HYZKM--学生信息数据表 婚姻状况码
      ,fg.MC as f_XSXX_HYZKM_MC--婚姻状况代码 名称
      ,f.XYZJM as f_XSXX_XYZJM--学生信息数据表 信仰宗教码
      ,fh.MC as f_XSXX_XYZJM_MC--宗教信仰代码 名称
      ,f.GATQWM as f_XSXX_GATQWM--学生信息数据表 港澳台侨外码
      ,fi.MC as f_XSXX_GATQWM_MC--港澳台侨外代码表 名称
      ,fi.SM as f_XSXX_GATQWM_SM--港澳台侨外代码表 说明
      ,f.JKZKM as f_XSXX_JKZKM--学生信息数据表 健康状况码
      ,fj.MC as f_XSXX_JKZKM_MC--健康状况1位数字代码 名称
      ,fj.SM as f_XSXX_JKZKM_SM--健康状况1位数字代码 说明
      ,f.ZZMMM as f_XSXX_ZZMMM--学生信息数据表 政治面貌码
      ,fk.MC as f_XSXX_ZZMMM_MC--政治面貌代码 名称
      ,fk.JC as f_XSXX_ZZMMM_JC--政治面貌代码 简称
      ,f.HKSZDXZQHM as f_XSXX_HKSZDXZQHM--学生信息数据表 户口所在地行政区划码
      ,fl.MC as f_XSXX_HKSZDXZQHM_MC--中华人民共和国行政区划代码 名称
      ,f.HKLBM as f_XSXX_HKLBM--学生信息数据表 户口类别码
      ,fm.MC as f_XSXX_HKLBM_MC--户口类别代码 名称
      ,f.SFSLDRK as f_XSXX_SFSLDRK--学生信息数据表 是否是流动人口
      ,fn.MC as f_XSXX_SFSLDRK_MC--是否标志代码表 名称
      ,f.GJDQM as f_XSXX_GJDQM--学生信息数据表 国籍/地区
      ,fo.GJDQMCJC as f_XSXX_GJDQM_GJDQMCJC--世界各国和地区名称代码 国家/地区名称简称
      ,fo.EZMDM as f_XSXX_GJDQM_EZMDM--世界各国和地区名称代码 二字母代码
      ,fo.SZMDM as f_XSXX_GJDQM_SZMDM--世界各国和地区名称代码 三字母代码
      ,f.TC as f_XSXX_TC--学生信息数据表 特长
      ,f.XSLXDH as f_XSXX_XSLXDH--学生信息数据表 学生联系电话
      ,f.WLDZ as f_XSXX_WLDZ--学生信息数据表 网络地址
      ,f.JSTXH as f_XSXX_JSTXH--学生信息数据表 即时通讯号
      ,f.DZXX as f_XSXX_DZXX--学生信息数据表 电子信箱
      ,f.ZP as f_XSXX_ZP--学生信息数据表 照片(路径)

FROM dbo.EDU_ZZJX_21_A02_SXSGL AS a LEFT OUTER JOIN
      dbo.EDU_ZZJX_20_A01_QYGL AS c ON a.ComID = c.ID /*企业ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_20_A03_GWXX AS d ON a.JobID = d.ID /*岗位ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_21_A01_SXBJGL AS e ON a.SZBID = e.ID /*实习班ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZXS_01_01_XSXX AS f ON a.StuID = f.ID /*学生ID*/ AND a.SCHOOLID = f.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS fb ON f.SFZJLXM = fb.DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS fc ON f.XBM = fc.DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS fd ON f.XXM = fd.DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS fe ON f.CSDM = fe.DM /*出生地码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS ff ON f.MZM = ff.DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS fg ON f.HYZKM = fg.DM /*婚姻状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS fh ON f.XYZJM = fh.DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS fi ON f.GATQWM = fi.DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS fj ON f.JKZKM = fj.DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS fk ON f.ZZMMM = fk.DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS fl ON f.HKSZDXZQHM = fl.DM /*户口所在地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS fm ON f.HKLBM = fm.DM /*户口类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS fn ON f.SFSLDRK = fn.DM /*是否是流动人口*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS fo ON f.GJDQM = fo.DM /*国籍/地区*/
GO
