
--加班登记表
CREATE VIEW [dbo].[VIEW_EDU_ZZJG_04_A01_JBDJ_DISP]
AS
SELECT a.[ID]--加班登记表ID
      ,a.[SCHOOLID]--学校ID
      ,a.[JZGJBSJID]--教职工ID
      ,a.[KSSJ]--开始时间
      ,a.[JSSJ]--结束时间
      ,a.[JBLX]--加班类型
      ,c.SCHOOLID as c_JZGJBSJ_SCHOOLID--教职工基本数据子类表 学校名
      ,c.GH as c_JZGJBSJ_GH--教职工基本数据子类表 工号
      ,c.XM as c_JZGJBSJ_XM--教职工基本数据子类表 姓名
      ,c.YWXM as c_JZGJBSJ_YWXM--教职工基本数据子类表 英文姓名
      ,c.XMPY as c_JZGJBSJ_XMPY--教职工基本数据子类表 姓名拼音
      ,c.CYM as c_JZGJBSJ_CYM--教职工基本数据子类表 曾用名
      ,c.SFZJLXM as c_JZGJBSJ_SFZJLXM--教职工基本数据子类表 身份证件类型码
      ,[cb].MC as c_JZGJBSJ_SFZJLXM_MC--身份证件类型代码表 名称
      ,c.SFZJH as c_JZGJBSJ_SFZJH--教职工基本数据子类表 身份证件号
      ,c.CSRQ as c_JZGJBSJ_CSRQ--教职工基本数据子类表 出生日期
      ,c.XBM as c_JZGJBSJ_XBM--教职工基本数据子类表 性别码
      ,[cc].MC as c_JZGJBSJ_XBM_MC--人的性别代码 名称
      ,c.MZM as c_JZGJBSJ_MZM--教职工基本数据子类表 民族码
      ,[cd].MZMC as c_JZGJBSJ_MZM_MZMC--中国各民族名称的罗马字母拼写法和代码 民族名称
      ,[cd].ZMDM as c_JZGJBSJ_MZM_ZMDM--中国各民族名称的罗马字母拼写法和代码 字母代码
      ,c.XXM as c_JZGJBSJ_XXM--教职工基本数据子类表 血型码
      ,[ce].MC as c_JZGJBSJ_XXM_MC--血型代码表 名称
      ,[ce].JC as c_JZGJBSJ_XXM_JC--血型代码表 简称
      ,c.JKZKM as c_JZGJBSJ_JKZKM--教职工基本数据子类表 健康状况码
      ,[cf].MC as c_JZGJBSJ_JKZKM_MC--健康状况1位数字代码 名称
      ,[cf].SM as c_JZGJBSJ_JKZKM_SM--健康状况1位数字代码 说明
      ,c.HYZTM as c_JZGJBSJ_HYZTM--教职工基本数据子类表 婚姻状态码
      ,[cg].MC as c_JZGJBSJ_HYZTM_MC--婚姻状况代码 名称
      ,c.ZZMMM as c_JZGJBSJ_ZZMMM--教职工基本数据子类表 政治面貌码
      ,[ch].MC as c_JZGJBSJ_ZZMMM_MC--政治面貌代码 名称
      ,[ch].JC as c_JZGJBSJ_ZZMMM_JC--政治面貌代码 简称
      ,c.GATQWM as c_JZGJBSJ_GATQWM--教职工基本数据子类表 港澳台侨外码
      ,[ci].MC as c_JZGJBSJ_GATQWM_MC--港澳台侨外代码表 名称
      ,[ci].SM as c_JZGJBSJ_GATQWM_SM--港澳台侨外代码表 说明
      ,c.JG as c_JZGJBSJ_JG--教职工基本数据子类表 籍贯
      ,c.GJDQM as c_JZGJBSJ_GJDQM--教职工基本数据子类表 国籍/地区码
      ,[cj].GJDQMCJC as c_JZGJBSJ_GJDQM_GJDQMCJC--世界各国和地区名称代码 国家/地区名称简称
      ,[cj].EZMDM as c_JZGJBSJ_GJDQM_EZMDM--世界各国和地区名称代码 二字母代码
      ,[cj].SZMDM as c_JZGJBSJ_GJDQM_SZMDM--世界各国和地区名称代码 三字母代码
      ,c.CSDXZQHM as c_JZGJBSJ_CSDXZQHM--教职工基本数据子类表 出生地行政区划码
      ,[ck].MC as c_JZGJBSJ_CSDXZQHM_MC--中华人民共和国行政区划代码 名称
      ,c.XYZJM as c_JZGJBSJ_XYZJM--教职工基本数据子类表 信仰宗教码
      ,[cl].MC as c_JZGJBSJ_XYZJM_MC--宗教信仰代码 名称
      ,c.JZGHKSZDXZQHM as c_JZGJBSJ_JZGHKSZDXZQHM--教职工基本数据子类表 教职工户口所在地行政区划码
      ,[cm].MC as c_JZGJBSJ_JZGHKSZDXZQHM_MC--中华人民共和国行政区划代码 名称
      ,c.HKLBM as c_JZGJBSJ_HKLBM--教职工基本数据子类表 户口类别码
      ,[cn].MC as c_JZGJBSJ_HKLBM_MC--户口类别代码 名称
      ,c.DQZZ as c_JZGJBSJ_DQZZ--教职工基本数据子类表 当前住址
      ,c.DQZZYZBM as c_JZGJBSJ_DQZZYZBM--教职工基本数据子类表 当前住址邮政编码
      ,c.CJGZNY as c_JZGJBSJ_CJGZNY--教职工基本数据子类表 参加工作年月
      ,c.CJNY as c_JZGJBSJ_CJNY--教职工基本数据子类表 从教年月
      ,c.LXNY as c_JZGJBSJ_LXNY--教职工基本数据子类表 来校年月
      ,c.BZLBM as c_JZGJBSJ_BZLBM--教职工基本数据子类表 编制类别码
      ,[co].MC as c_JZGJBSJ_BZLBM_MC--编制类别代码表 名称
      ,c.JZGLBM as c_JZGJBSJ_JZGLBM--教职工基本数据子类表 教职工类别码
      ,[cp].MC as c_JZGJBSJ_JZGLBM_MC--教职工类别代码表 名称
      ,[cp].SM as c_JZGJBSJ_JZGLBM_SM--教职工类别代码表 说明
      ,c.GWLBM as c_JZGJBSJ_GWLBM--教职工基本数据子类表 岗位类别码
      ,[cq].MC as c_JZGJBSJ_GWLBM_MC--岗位类别代码表 名称
      ,c.SFJZJS as c_JZGJBSJ_SFJZJS--教职工基本数据子类表 是否兼职教师
      ,[cr].MC as c_JZGJBSJ_SFJZJS_MC--是否标志代码表 名称
      ,c.SFSSXJS as c_JZGJBSJ_SFSSXJS--教职工基本数据子类表 是否双师型教师
      ,[cs].MC as c_JZGJBSJ_SFSSXJS_MC--是否标志代码表 名称
      ,c.ZP as c_JZGJBSJ_ZP--教职工基本数据子类表 照片(路径)
      ,c.DQZTM as c_JZGJBSJ_DQZTM--教职工基本数据子类表 当前状态码
      ,[ct].MC as c_JZGJBSJ_DQZTM_MC--教职工当前状态代码表 名称
      ,c.YDDH as c_JZGJBSJ_YDDH--教职工基本数据子类表 移动电话
      ,c.GDDH as c_JZGJBSJ_GDDH--教职工基本数据子类表 固定电话
      ,c.TXDZYZBM as c_JZGJBSJ_TXDZYZBM--教职工基本数据子类表 通信地址邮政编码
      ,c.TXDZ as c_JZGJBSJ_TXDZ--教职工基本数据子类表 通信地址
      ,c.DZXX as c_JZGJBSJ_DZXX--教职工基本数据子类表 电子信箱
      ,c.WLDZ as c_JZGJBSJ_WLDZ--教职工基本数据子类表 网络地址
      ,c.JSTXH as c_JZGJBSJ_JSTXH--教职工基本数据子类表 即时通讯号
      ,c.JSKQJS as c_JZGJBSJ_JSKQJS--教职工基本数据子类表 教师考勤角色
      ,c.FullTeacherName as c_JZGJBSJ_FullTeacherName--教职工基本数据子类表 完整老师姓名
      ,c.RecordID as c_JZGJBSJ_RecordID--教职工基本数据子类表 记录ID
      ,d.MC as d_JBLX_MC--加班类型代码 名称

FROM dbo.EDU_ZZJG_04_A01_JBDJ AS a LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS c ON a.JZGJBSJID = c.ID /*教职工ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_JBLX AS d ON a.JBLX = d.DM /*加班类型*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS [cb] ON c.SFZJLXM = [cb].DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS [cc] ON c.XBM = [cc].DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS [cd] ON c.MZM = [cd].DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS [ce] ON c.XXM = [ce].DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS [cf] ON c.JKZKM = [cf].DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS [cg] ON c.HYZTM = [cg].DM /*婚姻状态码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS [ch] ON c.ZZMMM = [ch].DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS [ci] ON c.GATQWM = [ci].DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS [cj] ON c.GJDQM = [cj].DM /*国籍/地区码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [ck] ON c.CSDXZQHM = [ck].DM /*出生地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS [cl] ON c.XYZJM = [cl].DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [cm] ON c.JZGHKSZDXZQHM = [cm].DM /*教职工户口所在地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS [cn] ON c.HKLBM = [cn].DM /*户口类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_BZLB AS [co] ON c.BZLBM = [co].DM /*编制类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGLB AS [cp] ON c.JZGLBM = [cp].DM /*教职工类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWLB AS [cq] ON c.GWLBM = [cq].DM /*岗位类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [cr] ON c.SFJZJS = [cr].DM /*是否兼职教师*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [cs] ON c.SFSSXJS = [cs].DM /*是否双师型教师*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGDQZT AS [ct] ON c.DQZTM = [ct].DM /*当前状态码*/
GO
