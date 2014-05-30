
--实习每月考勤记录表
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_22_A11_SXMYKQJL_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[SXSID]--实习生ID
      ,a.[QYID]--企业ID
      ,a.[SJ]--时间
      ,a.[SJGR]--实际工日
      ,a.[SJTS]--事假天数
      ,a.[KGTS]--旷工天数
      ,a.[BJTS]--病假天数
      ,a.[GXTS]--公休天数
      ,a.[CDTS]--迟到天数
      ,a.[ZTTS]--早退天数
      ,c.SCHOOLID as c_SXSGL_SCHOOLID--实习生管理表 学校
      ,c.SZBID as c_SXSGL_SZBID--实习生管理表 实习班ID
      ,c.StuID as c_SXSGL_StuID--实习生管理表 学生ID
      ,c.ZT as c_SXSGL_ZT--实习生管理表 实习生状态
      ,c.SFSJSXXYS as c_SXSGL_SFSJSXXYS--实习生管理表 是否上交实习协议书
      ,c.SXSXM as c_SXSGL_SXSXM--实习生管理表 实习生姓名
      ,c.XQID as c_SXSGL_XQID--实习生管理表 学期ID
      ,c.DQSXGWID as c_SXSGL_DQSXGWID--实习生管理表 当前实习岗位ID
      ,c.ZGCS as c_SXSGL_ZGCS--实习生管理表 转岗次数
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

FROM dbo.EDU_ZZJX_22_A11_SXMYKQJL AS a LEFT OUTER JOIN
      dbo.EDU_ZZJX_21_A02_SXSGL AS c ON a.SXSID = c.ID /*实习生ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_20_A01_QYGL AS d ON a.QYID = d.ID /*企业ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校*/
GO
