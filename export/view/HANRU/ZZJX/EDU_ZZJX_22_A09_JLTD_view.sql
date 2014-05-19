
--简历投递表
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_22_A09_JLTD_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[SXSID]--实习生ID
      ,a.[ComID]--企业ID
      ,a.[GWID]--岗位ID
      ,a.[JLNR]--简历内容
      ,a.[TDSJ]--投递时间
      ,a.[SFCK]--是否查看
      ,a.[FKNR]--反馈内容
      ,c.SCHOOLID as c_SXSGL_SCHOOLID--实习生管理表 学校
      ,c.SZBID as c_SXSGL_SZBID--实习生管理表 实习班ID
      ,c.StuID as c_SXSGL_StuID--实习生管理表 学生ID
      ,c.Status as c_SXSGL_Status--实习生管理表 实习生状态
      ,c.SXXYS as c_SXSGL_SXXYS--实习生管理表 实习协议书
      ,c.SXSXM as c_SXSGL_SXSXM--实习生管理表 实习生姓名
      ,c.XQID as c_SXSGL_XQID--实习生管理表 学期ID
      ,d.SCHOOLID as d_QYGL_SCHOOLID--企业管理表 学校
      ,d.Name as d_QYGL_Name--企业管理表 企业名称
      ,d.UserName as d_QYGL_UserName--企业管理表 用户名
      ,d.Password as d_QYGL_Password--企业管理表 密码
      ,d.UserID as d_QYGL_UserID--企业管理表 用户表id(预留)
      ,d.QYXZ as d_QYGL_QYXZ--企业管理表 企业性质
      ,d.QYGM as d_QYGL_QYGM--企业管理表 组织规模
      ,d.ZZJG as d_QYGL_ZZJG--企业管理表 组织机构
      ,d.ZYJYFW as d_QYGL_ZYJYFW--企业管理表 主要经营范围
      ,d.License as d_QYGL_License--企业管理表 营业执照
      ,d.CompanyType as d_QYGL_CompanyType--企业管理表 企业类型
      ,d.QYRS as d_QYGL_QYRS--企业管理表 企业人数
      ,d.Regcapital as d_QYGL_Regcapital--企业管理表 注册资金
      ,d.PostNum as d_QYGL_PostNum--企业管理表 邮编
      ,d.Fox as d_QYGL_Fox--企业管理表 传真
      ,d.Manager as d_QYGL_Manager--企业管理表 负责人
      ,d.Job as d_QYGL_Job--企业管理表 职位
      ,d.Cellphone as d_QYGL_Cellphone--企业管理表 手机号码
      ,d.OfficNum as d_QYGL_OfficNum--企业管理表 公司电话
      ,d.Email as d_QYGL_Email--企业管理表 电子邮件
      ,d.qq as d_QYGL_qq--企业管理表 qq
      ,d.MSN as d_QYGL_MSN--企业管理表 msn
      ,d.Address as d_QYGL_Address--企业管理表 公司地址
      ,d.Website as d_QYGL_Website--企业管理表 网址
      ,d.GSJJ as d_QYGL_GSJJ--企业管理表 公司简介
      ,d.Status as d_QYGL_Status--企业管理表 审核状态
      ,e.SCHOOLID as e_GWXX_SCHOOLID--岗位信息表 学校
      ,e.ComID as e_GWXX_ComID--岗位信息表 企业ID
      ,e.JobName as e_GWXX_JobName--岗位信息表 岗位名称
      ,e.WorkType as e_GWXX_WorkType--岗位信息表 工作形式
      ,e.Sex as e_GWXX_Sex--岗位信息表 性别要求
      ,e.monthlypay as e_GWXX_monthlypay--岗位信息表 岗位薪酬
      ,e.LanguageRequire as e_GWXX_LanguageRequire--岗位信息表 语言要求
      ,e.WorkPlace as e_GWXX_WorkPlace--岗位信息表 工作地点
      ,e.Computer as e_GWXX_Computer--岗位信息表 计算机水平
      ,e.ZPRS as e_GWXX_ZPRS--岗位信息表 招聘人数
      ,e.education as e_GWXX_education--岗位信息表 学历要求
      ,e.Age as e_GWXX_Age--岗位信息表 年龄要求
      ,e.GWJJ as e_GWXX_GWJJ--岗位信息表 岗位简介
      ,e.Major as e_GWXX_Major--岗位信息表 专业要求
      ,e.Base as e_GWXX_Base--岗位信息表 基本情况
      ,e.experience as e_GWXX_experience--岗位信息表 工作经验
      ,e.GWSHZT as e_GWXX_GWSHZT--岗位信息表 岗位审核状态
      ,e.Status as e_GWXX_Status--岗位信息表 岗位当前状态
      ,e.SFZD as e_GWXX_SFZD--岗位信息表 是否置顶

FROM dbo.EDU_ZZJX_22_A09_JLTD AS a LEFT OUTER JOIN
      dbo.EDU_ZZJX_21_A02_SXSGL AS c ON a.SXSID = c.ID /*实习生ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_20_A01_QYGL AS d ON a.ComID = d.ID /*企业ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_20_A03_GWXX AS e ON a.GWID = e.ID /*岗位ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校*/
GO
