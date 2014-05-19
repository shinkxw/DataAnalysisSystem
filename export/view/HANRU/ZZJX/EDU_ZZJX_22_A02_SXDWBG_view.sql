
--实习单位变更表
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_22_A02_SXDWBG_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[SXSID]--变更实习生ID
      ,a.[OrgJobID]--变更前岗位ID
      ,a.[OrgComID]--变更前企业ID
      ,a.[NowJobID]--变更后岗位ID
      ,a.[NowComID]--变更后企业ID
      ,c.SCHOOLID as c_SXSGL_SCHOOLID--实习生管理表 学校
      ,c.SZBID as c_SXSGL_SZBID--实习生管理表 实习班ID
      ,c.StuID as c_SXSGL_StuID--实习生管理表 学生ID
      ,c.Status as c_SXSGL_Status--实习生管理表 实习生状态
      ,c.SXXYS as c_SXSGL_SXXYS--实习生管理表 实习协议书
      ,c.SXSXM as c_SXSGL_SXSXM--实习生管理表 实习生姓名
      ,c.XQID as c_SXSGL_XQID--实习生管理表 学期ID
      ,d.SCHOOLID as d_GWXX_SCHOOLID--岗位信息表 学校
      ,d.ComID as d_GWXX_ComID--岗位信息表 企业ID
      ,d.JobName as d_GWXX_JobName--岗位信息表 岗位名称
      ,d.WorkType as d_GWXX_WorkType--岗位信息表 工作形式
      ,d.Sex as d_GWXX_Sex--岗位信息表 性别要求
      ,d.monthlypay as d_GWXX_monthlypay--岗位信息表 岗位薪酬
      ,d.LanguageRequire as d_GWXX_LanguageRequire--岗位信息表 语言要求
      ,d.WorkPlace as d_GWXX_WorkPlace--岗位信息表 工作地点
      ,d.Computer as d_GWXX_Computer--岗位信息表 计算机水平
      ,d.ZPRS as d_GWXX_ZPRS--岗位信息表 招聘人数
      ,d.education as d_GWXX_education--岗位信息表 学历要求
      ,d.Age as d_GWXX_Age--岗位信息表 年龄要求
      ,d.GWJJ as d_GWXX_GWJJ--岗位信息表 岗位简介
      ,d.Major as d_GWXX_Major--岗位信息表 专业要求
      ,d.Base as d_GWXX_Base--岗位信息表 基本情况
      ,d.experience as d_GWXX_experience--岗位信息表 工作经验
      ,d.GWSHZT as d_GWXX_GWSHZT--岗位信息表 岗位审核状态
      ,d.Status as d_GWXX_Status--岗位信息表 岗位当前状态
      ,d.SFZD as d_GWXX_SFZD--岗位信息表 是否置顶
      ,e.SCHOOLID as e_QYGL_SCHOOLID--企业管理表 学校
      ,e.Name as e_QYGL_Name--企业管理表 企业名称
      ,e.UserName as e_QYGL_UserName--企业管理表 用户名
      ,e.Password as e_QYGL_Password--企业管理表 密码
      ,e.UserID as e_QYGL_UserID--企业管理表 用户表id(预留)
      ,e.QYXZ as e_QYGL_QYXZ--企业管理表 企业性质
      ,e.QYGM as e_QYGL_QYGM--企业管理表 组织规模
      ,e.ZZJG as e_QYGL_ZZJG--企业管理表 组织机构
      ,e.ZYJYFW as e_QYGL_ZYJYFW--企业管理表 主要经营范围
      ,e.License as e_QYGL_License--企业管理表 营业执照
      ,e.CompanyType as e_QYGL_CompanyType--企业管理表 企业类型
      ,e.QYRS as e_QYGL_QYRS--企业管理表 企业人数
      ,e.Regcapital as e_QYGL_Regcapital--企业管理表 注册资金
      ,e.PostNum as e_QYGL_PostNum--企业管理表 邮编
      ,e.Fox as e_QYGL_Fox--企业管理表 传真
      ,e.Manager as e_QYGL_Manager--企业管理表 负责人
      ,e.Job as e_QYGL_Job--企业管理表 职位
      ,e.Cellphone as e_QYGL_Cellphone--企业管理表 手机号码
      ,e.OfficNum as e_QYGL_OfficNum--企业管理表 公司电话
      ,e.Email as e_QYGL_Email--企业管理表 电子邮件
      ,e.qq as e_QYGL_qq--企业管理表 qq
      ,e.MSN as e_QYGL_MSN--企业管理表 msn
      ,e.Address as e_QYGL_Address--企业管理表 公司地址
      ,e.Website as e_QYGL_Website--企业管理表 网址
      ,e.GSJJ as e_QYGL_GSJJ--企业管理表 公司简介
      ,e.Status as e_QYGL_Status--企业管理表 审核状态
      ,f.SCHOOLID as f_GWXX_SCHOOLID--岗位信息表 学校
      ,f.ComID as f_GWXX_ComID--岗位信息表 企业ID
      ,f.JobName as f_GWXX_JobName--岗位信息表 岗位名称
      ,f.WorkType as f_GWXX_WorkType--岗位信息表 工作形式
      ,f.Sex as f_GWXX_Sex--岗位信息表 性别要求
      ,f.monthlypay as f_GWXX_monthlypay--岗位信息表 岗位薪酬
      ,f.LanguageRequire as f_GWXX_LanguageRequire--岗位信息表 语言要求
      ,f.WorkPlace as f_GWXX_WorkPlace--岗位信息表 工作地点
      ,f.Computer as f_GWXX_Computer--岗位信息表 计算机水平
      ,f.ZPRS as f_GWXX_ZPRS--岗位信息表 招聘人数
      ,f.education as f_GWXX_education--岗位信息表 学历要求
      ,f.Age as f_GWXX_Age--岗位信息表 年龄要求
      ,f.GWJJ as f_GWXX_GWJJ--岗位信息表 岗位简介
      ,f.Major as f_GWXX_Major--岗位信息表 专业要求
      ,f.Base as f_GWXX_Base--岗位信息表 基本情况
      ,f.experience as f_GWXX_experience--岗位信息表 工作经验
      ,f.GWSHZT as f_GWXX_GWSHZT--岗位信息表 岗位审核状态
      ,f.Status as f_GWXX_Status--岗位信息表 岗位当前状态
      ,f.SFZD as f_GWXX_SFZD--岗位信息表 是否置顶
      ,g.SCHOOLID as g_QYGL_SCHOOLID--企业管理表 学校
      ,g.Name as g_QYGL_Name--企业管理表 企业名称
      ,g.UserName as g_QYGL_UserName--企业管理表 用户名
      ,g.Password as g_QYGL_Password--企业管理表 密码
      ,g.UserID as g_QYGL_UserID--企业管理表 用户表id(预留)
      ,g.QYXZ as g_QYGL_QYXZ--企业管理表 企业性质
      ,g.QYGM as g_QYGL_QYGM--企业管理表 组织规模
      ,g.ZZJG as g_QYGL_ZZJG--企业管理表 组织机构
      ,g.ZYJYFW as g_QYGL_ZYJYFW--企业管理表 主要经营范围
      ,g.License as g_QYGL_License--企业管理表 营业执照
      ,g.CompanyType as g_QYGL_CompanyType--企业管理表 企业类型
      ,g.QYRS as g_QYGL_QYRS--企业管理表 企业人数
      ,g.Regcapital as g_QYGL_Regcapital--企业管理表 注册资金
      ,g.PostNum as g_QYGL_PostNum--企业管理表 邮编
      ,g.Fox as g_QYGL_Fox--企业管理表 传真
      ,g.Manager as g_QYGL_Manager--企业管理表 负责人
      ,g.Job as g_QYGL_Job--企业管理表 职位
      ,g.Cellphone as g_QYGL_Cellphone--企业管理表 手机号码
      ,g.OfficNum as g_QYGL_OfficNum--企业管理表 公司电话
      ,g.Email as g_QYGL_Email--企业管理表 电子邮件
      ,g.qq as g_QYGL_qq--企业管理表 qq
      ,g.MSN as g_QYGL_MSN--企业管理表 msn
      ,g.Address as g_QYGL_Address--企业管理表 公司地址
      ,g.Website as g_QYGL_Website--企业管理表 网址
      ,g.GSJJ as g_QYGL_GSJJ--企业管理表 公司简介
      ,g.Status as g_QYGL_Status--企业管理表 审核状态

FROM dbo.EDU_ZZJX_22_A02_SXDWBG AS a LEFT OUTER JOIN
      dbo.EDU_ZZJX_21_A02_SXSGL AS c ON a.SXSID = c.ID /*变更实习生ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_20_A03_GWXX AS d ON a.OrgJobID = d.ID /*变更前岗位ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_20_A01_QYGL AS e ON a.OrgComID = e.ID /*变更前企业ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_20_A03_GWXX AS f ON a.NowJobID = f.ID /*变更后岗位ID*/ AND a.SCHOOLID = f.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_20_A01_QYGL AS g ON a.NowComID = g.ID /*变更后企业ID*/ AND a.SCHOOLID = g.SCHOOLID /*学校*/
GO
