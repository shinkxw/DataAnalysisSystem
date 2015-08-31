
--月度评定记录表
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_22_A14_YDPDJL_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[SXSID]--实习生ID
      ,a.[ZDPZID]--字段配置ID
      ,a.[TJSJ]--添加时间
      ,a.[JG]--结果
      ,a.[PDJSID]--评定教师ID
      ,c.SCHOOLID as c_SXSGL_SCHOOLID--实习生管理表 学校
      ,c.SZBID as c_SXSGL_SZBID--实习生管理表 实习班ID
      ,c.StuID as c_SXSGL_StuID--实习生管理表 学生ID
      ,c.ZT as c_SXSGL_ZT--实习生管理表 实习生状态
      ,c.SFSJSXXYS as c_SXSGL_SFSJSXXYS--实习生管理表 是否上交实习协议书
      ,c.SXSXM as c_SXSGL_SXSXM--实习生管理表 实习生姓名
      ,c.XQID as c_SXSGL_XQID--实习生管理表 学期ID
      ,c.DQSXGWID as c_SXSGL_DQSXGWID--实习生管理表 当前实习岗位ID
      ,c.ZGCS as c_SXSGL_ZGCS--实习生管理表 转岗次数
      ,d.SCHOOLID as d_YDPDZDPZ_SCHOOLID--月度评定项目配置表 学校
      ,d.ZDMC as d_YDPDZDPZ_ZDMC--月度评定项目配置表 项目名称
      ,d.SFSY as d_YDPDZDPZ_SFSY--月度评定项目配置表 是否使用
      ,d.BZRNFTX as d_YDPDZDPZ_BZRNFTX--月度评定项目配置表 班主任能否填写
      ,d.SXCNFTX as d_YDPDZDPZ_SXCNFTX--月度评定项目配置表 实训处能否填写
      ,d.PLSX as d_YDPDZDPZ_PLSX--月度评定项目配置表 排列顺序
      ,e.SCHOOLID as e_JZGJBSJ_SCHOOLID--教职工基本数据子类表 学校名
      ,e.GH as e_JZGJBSJ_GH--教职工基本数据子类表 工号
      ,e.XM as e_JZGJBSJ_XM--教职工基本数据子类表 姓名
      ,e.YWXM as e_JZGJBSJ_YWXM--教职工基本数据子类表 英文姓名
      ,e.XMPY as e_JZGJBSJ_XMPY--教职工基本数据子类表 姓名拼音
      ,e.CYM as e_JZGJBSJ_CYM--教职工基本数据子类表 曾用名
      ,e.SFZJLXM as e_JZGJBSJ_SFZJLXM--教职工基本数据子类表 身份证件类型码
      ,[eb].MC as e_JZGJBSJ_SFZJLXM_MC--身份证件类型代码表 名称
      ,e.SFZJH as e_JZGJBSJ_SFZJH--教职工基本数据子类表 身份证件号
      ,e.CSRQ as e_JZGJBSJ_CSRQ--教职工基本数据子类表 出生日期
      ,e.XBM as e_JZGJBSJ_XBM--教职工基本数据子类表 性别码
      ,[ec].MC as e_JZGJBSJ_XBM_MC--人的性别代码 名称
      ,e.MZM as e_JZGJBSJ_MZM--教职工基本数据子类表 民族码
      ,[ed].MZMC as e_JZGJBSJ_MZM_MZMC--中国各民族名称的罗马字母拼写法和代码 民族名称
      ,[ed].ZMDM as e_JZGJBSJ_MZM_ZMDM--中国各民族名称的罗马字母拼写法和代码 字母代码
      ,e.XXM as e_JZGJBSJ_XXM--教职工基本数据子类表 血型码
      ,[ee].MC as e_JZGJBSJ_XXM_MC--血型代码表 名称
      ,[ee].JC as e_JZGJBSJ_XXM_JC--血型代码表 简称
      ,e.JKZKM as e_JZGJBSJ_JKZKM--教职工基本数据子类表 健康状况码
      ,[ef].MC as e_JZGJBSJ_JKZKM_MC--健康状况1位数字代码 名称
      ,[ef].SM as e_JZGJBSJ_JKZKM_SM--健康状况1位数字代码 说明
      ,e.HYZTM as e_JZGJBSJ_HYZTM--教职工基本数据子类表 婚姻状态码
      ,[eg].MC as e_JZGJBSJ_HYZTM_MC--婚姻状况代码 名称
      ,e.ZZMMM as e_JZGJBSJ_ZZMMM--教职工基本数据子类表 政治面貌码
      ,[eh].MC as e_JZGJBSJ_ZZMMM_MC--政治面貌代码 名称
      ,[eh].JC as e_JZGJBSJ_ZZMMM_JC--政治面貌代码 简称
      ,e.GATQWM as e_JZGJBSJ_GATQWM--教职工基本数据子类表 港澳台侨外码
      ,[ei].MC as e_JZGJBSJ_GATQWM_MC--港澳台侨外代码表 名称
      ,[ei].SM as e_JZGJBSJ_GATQWM_SM--港澳台侨外代码表 说明
      ,e.JG as e_JZGJBSJ_JG--教职工基本数据子类表 籍贯
      ,e.GJDQM as e_JZGJBSJ_GJDQM--教职工基本数据子类表 国籍/地区码
      ,[ej].GJDQMCJC as e_JZGJBSJ_GJDQM_GJDQMCJC--世界各国和地区名称代码 国家/地区名称简称
      ,[ej].EZMDM as e_JZGJBSJ_GJDQM_EZMDM--世界各国和地区名称代码 二字母代码
      ,[ej].SZMDM as e_JZGJBSJ_GJDQM_SZMDM--世界各国和地区名称代码 三字母代码
      ,e.CSDXZQHM as e_JZGJBSJ_CSDXZQHM--教职工基本数据子类表 出生地行政区划码
      ,[ek].MC as e_JZGJBSJ_CSDXZQHM_MC--中华人民共和国行政区划代码 名称
      ,e.XYZJM as e_JZGJBSJ_XYZJM--教职工基本数据子类表 信仰宗教码
      ,[el].MC as e_JZGJBSJ_XYZJM_MC--宗教信仰代码 名称
      ,e.JZGHKSZDXZQHM as e_JZGJBSJ_JZGHKSZDXZQHM--教职工基本数据子类表 教职工户口所在地行政区划码
      ,[em].MC as e_JZGJBSJ_JZGHKSZDXZQHM_MC--中华人民共和国行政区划代码 名称
      ,e.HKLBM as e_JZGJBSJ_HKLBM--教职工基本数据子类表 户口类别码
      ,[en].MC as e_JZGJBSJ_HKLBM_MC--户口类别代码 名称
      ,e.DQZZ as e_JZGJBSJ_DQZZ--教职工基本数据子类表 当前住址
      ,e.DQZZYZBM as e_JZGJBSJ_DQZZYZBM--教职工基本数据子类表 当前住址邮政编码
      ,e.CJGZNY as e_JZGJBSJ_CJGZNY--教职工基本数据子类表 参加工作年月
      ,e.CJNY as e_JZGJBSJ_CJNY--教职工基本数据子类表 从教年月
      ,e.LXNY as e_JZGJBSJ_LXNY--教职工基本数据子类表 来校年月
      ,e.BZLBM as e_JZGJBSJ_BZLBM--教职工基本数据子类表 编制类别码
      ,[eo].MC as e_JZGJBSJ_BZLBM_MC--编制类别代码表 名称
      ,e.JZGLBM as e_JZGJBSJ_JZGLBM--教职工基本数据子类表 教职工类别码
      ,[ep].MC as e_JZGJBSJ_JZGLBM_MC--教职工类别代码表 名称
      ,[ep].SM as e_JZGJBSJ_JZGLBM_SM--教职工类别代码表 说明
      ,e.GWLBM as e_JZGJBSJ_GWLBM--教职工基本数据子类表 岗位类别码
      ,[eq].MC as e_JZGJBSJ_GWLBM_MC--岗位类别代码表 名称
      ,e.SFJZJS as e_JZGJBSJ_SFJZJS--教职工基本数据子类表 是否兼职教师
      ,[er].MC as e_JZGJBSJ_SFJZJS_MC--是否标志代码表 名称
      ,e.SFSSXJS as e_JZGJBSJ_SFSSXJS--教职工基本数据子类表 是否双师型教师
      ,[es].MC as e_JZGJBSJ_SFSSXJS_MC--是否标志代码表 名称
      ,e.ZP as e_JZGJBSJ_ZP--教职工基本数据子类表 照片(路径)
      ,e.DQZTM as e_JZGJBSJ_DQZTM--教职工基本数据子类表 当前状态码
      ,[et].MC as e_JZGJBSJ_DQZTM_MC--教职工当前状态代码表 名称
      ,e.YDDH as e_JZGJBSJ_YDDH--教职工基本数据子类表 移动电话
      ,e.GDDH as e_JZGJBSJ_GDDH--教职工基本数据子类表 固定电话
      ,e.TXDZYZBM as e_JZGJBSJ_TXDZYZBM--教职工基本数据子类表 通信地址邮政编码
      ,e.TXDZ as e_JZGJBSJ_TXDZ--教职工基本数据子类表 通信地址
      ,e.DZXX as e_JZGJBSJ_DZXX--教职工基本数据子类表 电子信箱
      ,e.WLDZ as e_JZGJBSJ_WLDZ--教职工基本数据子类表 网络地址
      ,e.JSTXH as e_JZGJBSJ_JSTXH--教职工基本数据子类表 即时通讯号
      ,e.JSKQJS as e_JZGJBSJ_JSKQJS--教职工基本数据子类表 教师考勤角色
      ,e.FullTeacherName as e_JZGJBSJ_FullTeacherName--教职工基本数据子类表 完整老师姓名
      ,e.RecordID as e_JZGJBSJ_RecordID--教职工基本数据子类表 记录ID
      ,e.TeacherGroupId as e_JZGJBSJ_TeacherGroupId--教职工基本数据子类表 表TeacherGroup的外键

FROM dbo.EDU_ZZJX_22_A14_YDPDJL AS a LEFT OUTER JOIN
      dbo.EDU_ZZJX_21_A02_SXSGL AS c ON a.SXSID = c.ID /*实习生ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_22_A13_YDPDZDPZ AS d ON a.ZDPZID = d.ID /*字段配置ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS e ON a.PDJSID = e.ID /*评定教师ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS [eb] ON e.SFZJLXM = [eb].DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS [ec] ON e.XBM = [ec].DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS [ed] ON e.MZM = [ed].DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS [ee] ON e.XXM = [ee].DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS [ef] ON e.JKZKM = [ef].DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS [eg] ON e.HYZTM = [eg].DM /*婚姻状态码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS [eh] ON e.ZZMMM = [eh].DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS [ei] ON e.GATQWM = [ei].DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS [ej] ON e.GJDQM = [ej].DM /*国籍/地区码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [ek] ON e.CSDXZQHM = [ek].DM /*出生地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS [el] ON e.XYZJM = [el].DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [em] ON e.JZGHKSZDXZQHM = [em].DM /*教职工户口所在地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS [en] ON e.HKLBM = [en].DM /*户口类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_BZLB AS [eo] ON e.BZLBM = [eo].DM /*编制类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGLB AS [ep] ON e.JZGLBM = [ep].DM /*教职工类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWLB AS [eq] ON e.GWLBM = [eq].DM /*岗位类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [er] ON e.SFJZJS = [er].DM /*是否兼职教师*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [es] ON e.SFSSXJS = [es].DM /*是否双师型教师*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGDQZT AS [et] ON e.DQZTM = [et].DM /*当前状态码*/
GO
