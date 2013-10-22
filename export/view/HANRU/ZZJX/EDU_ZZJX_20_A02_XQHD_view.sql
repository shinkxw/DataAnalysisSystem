
--校企互动表
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_20_A02_XQHD_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[ComID]--企业ID
      ,a.[ReactionTime]--反馈时间
      ,a.[AdviseToSchool]--企业对学校工作建议
      ,a.[AdviseToArt]--企业对学生职业技能建议
      ,a.[OtherAdvise]--其他建议
      ,a.[Retroaction]--反馈内容
      ,a.[AdviseToStudent]--实习生管理工作的建议
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

FROM dbo.EDU_ZZJX_20_A02_XQHD AS a LEFT OUTER JOIN
      dbo.EDU_ZZJX_20_A01_QYGL AS c ON a.ComID = c.ID /*企业ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/
GO
