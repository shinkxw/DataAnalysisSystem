
--实习月报表
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_22_A10_SXYB_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[SXSID]--实习生ID
      ,a.[GWXXID]--岗位信息ID
      ,a.[GZXJ]--工作小结
      ,a.[TJSJ]--添加时间
      ,a.[ZDSFXM]--指导师傅姓名
      ,a.[ZDSFPY]--指导师傅评语
      ,a.[SFDH]--师傅电话
      ,a.[SFPD]--师傅评定
      ,a.[ZDSFPDSJ]--指导师傅评定时间
      ,c.SCHOOLID as c_SXSGL_SCHOOLID--实习生管理表 学校
      ,c.SZBID as c_SXSGL_SZBID--实习生管理表 实习班ID
      ,c.StuID as c_SXSGL_StuID--实习生管理表 学生ID
      ,c.ZT as c_SXSGL_ZT--实习生管理表 实习生状态
      ,c.SFSJSXXYS as c_SXSGL_SFSJSXXYS--实习生管理表 是否上交实习协议书
      ,c.SXSXM as c_SXSGL_SXSXM--实习生管理表 实习生姓名
      ,c.XQID as c_SXSGL_XQID--实习生管理表 学期ID
      ,c.DQSXGWID as c_SXSGL_DQSXGWID--实习生管理表 当前实习岗位ID
      ,c.ZGCS as c_SXSGL_ZGCS--实习生管理表 转岗次数
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
      ,d.QYMC as d_GWXX_QYMC--岗位信息表 企业名称
      ,d.FBSJ as d_GWXX_FBSJ--岗位信息表 发布时间

FROM dbo.EDU_ZZJX_22_A10_SXYB AS a LEFT OUTER JOIN
      dbo.EDU_ZZJX_21_A02_SXSGL AS c ON a.SXSID = c.ID /*实习生ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_20_A03_GWXX AS d ON a.GWXXID = d.ID /*岗位信息ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校*/
GO
