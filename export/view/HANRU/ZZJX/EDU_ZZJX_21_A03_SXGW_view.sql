
--实习岗位表
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_21_A03_SXGW_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[StuID]--学生ID
      ,a.[JobID]--岗位ID
      ,a.[GSSHZT]--公司审核状态
      ,a.[TypeID]--录取类型
      ,a.[Status]--实习生状态
      ,c.SCHOOLID as c_XSXX_SCHOOLID--学生信息数据表 学校名
      ,c.XH as c_XSXX_XH--学生信息数据表 学号
      ,c.XM as c_XSXX_XM--学生信息数据表 姓名
      ,c.YWXM as c_XSXX_YWXM--学生信息数据表 英文姓名
      ,c.XMPY as c_XSXX_XMPY--学生信息数据表 姓名拼音
      ,c.CYM as c_XSXX_CYM--学生信息数据表 曾用名
      ,c.SFZJLXM as c_XSXX_SFZJLXM--学生信息数据表 身份证件类型码
      ,[cb].MC as c_XSXX_SFZJLXM_MC--身份证件类型代码表 名称
      ,c.SFZJH as c_XSXX_SFZJH--学生信息数据表 身份证件号
      ,c.XBM as c_XSXX_XBM--学生信息数据表 性别码
      ,[cc].MC as c_XSXX_XBM_MC--人的性别代码 名称
      ,c.XXM as c_XSXX_XXM--学生信息数据表 血型码
      ,[cd].MC as c_XSXX_XXM_MC--血型代码表 名称
      ,[cd].JC as c_XSXX_XXM_JC--血型代码表 简称
      ,c.CSRQ as c_XSXX_CSRQ--学生信息数据表 出生日期
      ,c.CSDM as c_XSXX_CSDM--学生信息数据表 出生地码
      ,[ce].MC as c_XSXX_CSDM_MC--中华人民共和国行政区划代码 名称
      ,c.JG as c_XSXX_JG--学生信息数据表 籍贯
      ,c.MZM as c_XSXX_MZM--学生信息数据表 民族码
      ,[cf].MZMC as c_XSXX_MZM_MZMC--中国各民族名称的罗马字母拼写法和代码 民族名称
      ,[cf].ZMDM as c_XSXX_MZM_ZMDM--中国各民族名称的罗马字母拼写法和代码 字母代码
      ,c.HYZKM as c_XSXX_HYZKM--学生信息数据表 婚姻状况码
      ,[cg].MC as c_XSXX_HYZKM_MC--婚姻状况代码 名称
      ,c.XYZJM as c_XSXX_XYZJM--学生信息数据表 信仰宗教码
      ,[ch].MC as c_XSXX_XYZJM_MC--宗教信仰代码 名称
      ,c.GATQWM as c_XSXX_GATQWM--学生信息数据表 港澳台侨外码
      ,[ci].MC as c_XSXX_GATQWM_MC--港澳台侨外代码表 名称
      ,[ci].SM as c_XSXX_GATQWM_SM--港澳台侨外代码表 说明
      ,c.JKZKM as c_XSXX_JKZKM--学生信息数据表 健康状况码
      ,[cj].MC as c_XSXX_JKZKM_MC--健康状况1位数字代码 名称
      ,[cj].SM as c_XSXX_JKZKM_SM--健康状况1位数字代码 说明
      ,c.ZZMMM as c_XSXX_ZZMMM--学生信息数据表 政治面貌码
      ,[ck].MC as c_XSXX_ZZMMM_MC--政治面貌代码 名称
      ,[ck].JC as c_XSXX_ZZMMM_JC--政治面貌代码 简称
      ,c.HKSZDXZQHM as c_XSXX_HKSZDXZQHM--学生信息数据表 户口所在地行政区划码
      ,[cl].MC as c_XSXX_HKSZDXZQHM_MC--中华人民共和国行政区划代码 名称
      ,c.HKLBM as c_XSXX_HKLBM--学生信息数据表 户口类别码
      ,[cm].MC as c_XSXX_HKLBM_MC--户口类别代码 名称
      ,c.SFSLDRK as c_XSXX_SFSLDRK--学生信息数据表 是否是流动人口
      ,[cn].MC as c_XSXX_SFSLDRK_MC--是否标志代码表 名称
      ,c.GJDQM as c_XSXX_GJDQM--学生信息数据表 国籍/地区
      ,[co].GJDQMCJC as c_XSXX_GJDQM_GJDQMCJC--世界各国和地区名称代码 国家/地区名称简称
      ,[co].EZMDM as c_XSXX_GJDQM_EZMDM--世界各国和地区名称代码 二字母代码
      ,[co].SZMDM as c_XSXX_GJDQM_SZMDM--世界各国和地区名称代码 三字母代码
      ,c.TC as c_XSXX_TC--学生信息数据表 特长
      ,c.XSLXDH as c_XSXX_XSLXDH--学生信息数据表 学生联系电话
      ,c.WLDZ as c_XSXX_WLDZ--学生信息数据表 网络地址
      ,c.JSTXH as c_XSXX_JSTXH--学生信息数据表 即时通讯号
      ,c.DZXX as c_XSXX_DZXX--学生信息数据表 电子信箱
      ,c.ZP as c_XSXX_ZP--学生信息数据表 照片(路径)
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
      ,d.GWJJ as d_GWXX_GWJJ--岗位信息表 岗位简介
      ,d.Major as d_GWXX_Major--岗位信息表 专业要求
      ,d.Base as d_GWXX_Base--岗位信息表 基本情况
      ,d.experience as d_GWXX_experience--岗位信息表 工作经验
      ,d.GWSHZT as d_GWXX_GWSHZT--岗位信息表 岗位审核状态
      ,d.Status as d_GWXX_Status--岗位信息表 岗位当前状态

FROM dbo.EDU_ZZJX_21_A03_SXGW AS a LEFT OUTER JOIN
      dbo.EDU_ZZXS_01_01_XSXX AS c ON a.StuID = c.ID /*学生ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_20_A03_GWXX AS d ON a.JobID = d.ID /*岗位ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS [cb] ON c.SFZJLXM = [cb].DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS [cc] ON c.XBM = [cc].DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS [cd] ON c.XXM = [cd].DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [ce] ON c.CSDM = [ce].DM /*出生地码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS [cf] ON c.MZM = [cf].DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS [cg] ON c.HYZKM = [cg].DM /*婚姻状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS [ch] ON c.XYZJM = [ch].DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS [ci] ON c.GATQWM = [ci].DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS [cj] ON c.JKZKM = [cj].DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS [ck] ON c.ZZMMM = [ck].DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [cl] ON c.HKSZDXZQHM = [cl].DM /*户口所在地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS [cm] ON c.HKLBM = [cm].DM /*户口类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [cn] ON c.SFSLDRK = [cn].DM /*是否是流动人口*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS [co] ON c.GJDQM = [co].DM /*国籍/地区*/
GO
