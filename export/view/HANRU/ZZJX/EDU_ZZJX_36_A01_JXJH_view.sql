
--见习计划表
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_36_A01_JXJH_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[XQID]--学期ID
      ,a.[JHMC]--计划名称
      ,a.[KSSJ]--开始时间
      ,a.[JSSJ]--结束时间
      ,a.[JXDWID]--见习单位
      ,a.[JXNR]--见习内容
      ,a.[JXXS]--见习学生
      ,a.[SFKQ]--是否开启
      ,c.SCHOOLID as c_XQ_SCHOOLID--学期数据表 学校名
      ,c.XNID as c_XQ_XNID--学期数据表 学年
      ,c.XQM as c_XQ_XQM--学期数据表 学期码
      ,[cb].MC as c_XQ_XQM_MC--学期代码表 名称
      ,c.XQMC as c_XQ_XQMC--学期数据表 学期名称
      ,c.XQKSRQ as c_XQ_XQKSRQ--学期数据表 学期开始日期
      ,c.XQJSRQ as c_XQ_XQJSRQ--学期数据表 学期结束日期
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

FROM dbo.EDU_ZZJX_36_A01_JXJH AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS c ON a.XQID = c.ID /*学期ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_20_A01_QYGL AS d ON a.JXDWID = d.ID /*见习单位*/ AND a.SCHOOLID = d.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS [cb] ON c.XQM = [cb].DM /*学期码*/
GO
