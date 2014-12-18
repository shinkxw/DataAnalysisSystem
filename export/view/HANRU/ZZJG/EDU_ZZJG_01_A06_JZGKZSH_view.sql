
--教职工扩展表(审核)
CREATE VIEW [dbo].[VIEW_EDU_ZZJG_01_A06_JZGKZSH_DISP]
AS
SELECT a.[JZGJBSJID]--教工基本信息ID
      ,a.[SCHOOLID]--学校ID
      ,a.[JL]--教龄
      ,a.[GL]--工龄
      ,a.[GZJY]--工作经验
      ,a.[LDJN]--劳动技能
      ,a.[XXJL]--学习经历
      ,a.[WJGLSJ]--未记工龄时间
      ,a.[RDSJ]--入党（团）时间
      ,a.[JRBDWSJ]--进入本单位时间
      ,a.[XZZW]--行政职务
      ,a.[ZYJSZG]--专业技术资格
      ,a.[ZYJSZGHDSJ]--专业技术资格取得时间
      ,a.[XL]--学历
      ,a.[BYYXXJZY]--毕业院校系及专业
      ,a.[BYSJ]--毕业时间
      ,a.[XW]--学位
      ,a.[ZZJYXL]--在职教育学历
      ,a.[ZZJYBYYXXJZY]--在职教育毕业院校系及专业
      ,a.[ZZJYXW]--在职教育学位
      ,a.[ZZJYBYSJ]--在职教育毕业时间
      ,a.[PTHDJ]--普通话等级
      ,a.[JSZGZZL]--教师资格证种类
      ,a.[XPYGW]--现聘用岗位
      ,a.[GWDJ]--岗位等级
      ,b.SCHOOLID as b_JZGJBSJ_SCHOOLID--教职工基本数据子类表 学校名
      ,b.GH as b_JZGJBSJ_GH--教职工基本数据子类表 工号
      ,b.XM as b_JZGJBSJ_XM--教职工基本数据子类表 姓名
      ,b.YWXM as b_JZGJBSJ_YWXM--教职工基本数据子类表 英文姓名
      ,b.XMPY as b_JZGJBSJ_XMPY--教职工基本数据子类表 姓名拼音
      ,b.CYM as b_JZGJBSJ_CYM--教职工基本数据子类表 曾用名
      ,b.SFZJLXM as b_JZGJBSJ_SFZJLXM--教职工基本数据子类表 身份证件类型码
      ,[bb].MC as b_JZGJBSJ_SFZJLXM_MC--身份证件类型代码表 名称
      ,b.SFZJH as b_JZGJBSJ_SFZJH--教职工基本数据子类表 身份证件号
      ,b.CSRQ as b_JZGJBSJ_CSRQ--教职工基本数据子类表 出生日期
      ,b.XBM as b_JZGJBSJ_XBM--教职工基本数据子类表 性别码
      ,[bc].MC as b_JZGJBSJ_XBM_MC--人的性别代码 名称
      ,b.MZM as b_JZGJBSJ_MZM--教职工基本数据子类表 民族码
      ,[bd].MZMC as b_JZGJBSJ_MZM_MZMC--中国各民族名称的罗马字母拼写法和代码 民族名称
      ,[bd].ZMDM as b_JZGJBSJ_MZM_ZMDM--中国各民族名称的罗马字母拼写法和代码 字母代码
      ,b.XXM as b_JZGJBSJ_XXM--教职工基本数据子类表 血型码
      ,[be].MC as b_JZGJBSJ_XXM_MC--血型代码表 名称
      ,[be].JC as b_JZGJBSJ_XXM_JC--血型代码表 简称
      ,b.JKZKM as b_JZGJBSJ_JKZKM--教职工基本数据子类表 健康状况码
      ,[bf].MC as b_JZGJBSJ_JKZKM_MC--健康状况1位数字代码 名称
      ,[bf].SM as b_JZGJBSJ_JKZKM_SM--健康状况1位数字代码 说明
      ,b.HYZTM as b_JZGJBSJ_HYZTM--教职工基本数据子类表 婚姻状态码
      ,[bg].MC as b_JZGJBSJ_HYZTM_MC--婚姻状况代码 名称
      ,b.ZZMMM as b_JZGJBSJ_ZZMMM--教职工基本数据子类表 政治面貌码
      ,[bh].MC as b_JZGJBSJ_ZZMMM_MC--政治面貌代码 名称
      ,[bh].JC as b_JZGJBSJ_ZZMMM_JC--政治面貌代码 简称
      ,b.GATQWM as b_JZGJBSJ_GATQWM--教职工基本数据子类表 港澳台侨外码
      ,[bi].MC as b_JZGJBSJ_GATQWM_MC--港澳台侨外代码表 名称
      ,[bi].SM as b_JZGJBSJ_GATQWM_SM--港澳台侨外代码表 说明
      ,b.JG as b_JZGJBSJ_JG--教职工基本数据子类表 籍贯
      ,b.GJDQM as b_JZGJBSJ_GJDQM--教职工基本数据子类表 国籍/地区码
      ,[bj].GJDQMCJC as b_JZGJBSJ_GJDQM_GJDQMCJC--世界各国和地区名称代码 国家/地区名称简称
      ,[bj].EZMDM as b_JZGJBSJ_GJDQM_EZMDM--世界各国和地区名称代码 二字母代码
      ,[bj].SZMDM as b_JZGJBSJ_GJDQM_SZMDM--世界各国和地区名称代码 三字母代码
      ,b.CSDXZQHM as b_JZGJBSJ_CSDXZQHM--教职工基本数据子类表 出生地行政区划码
      ,[bk].MC as b_JZGJBSJ_CSDXZQHM_MC--中华人民共和国行政区划代码 名称
      ,b.XYZJM as b_JZGJBSJ_XYZJM--教职工基本数据子类表 信仰宗教码
      ,[bl].MC as b_JZGJBSJ_XYZJM_MC--宗教信仰代码 名称
      ,b.JZGHKSZDXZQHM as b_JZGJBSJ_JZGHKSZDXZQHM--教职工基本数据子类表 教职工户口所在地行政区划码
      ,[bm].MC as b_JZGJBSJ_JZGHKSZDXZQHM_MC--中华人民共和国行政区划代码 名称
      ,b.HKLBM as b_JZGJBSJ_HKLBM--教职工基本数据子类表 户口类别码
      ,[bn].MC as b_JZGJBSJ_HKLBM_MC--户口类别代码 名称
      ,b.DQZZ as b_JZGJBSJ_DQZZ--教职工基本数据子类表 当前住址
      ,b.DQZZYZBM as b_JZGJBSJ_DQZZYZBM--教职工基本数据子类表 当前住址邮政编码
      ,b.CJGZNY as b_JZGJBSJ_CJGZNY--教职工基本数据子类表 参加工作年月
      ,b.CJNY as b_JZGJBSJ_CJNY--教职工基本数据子类表 从教年月
      ,b.LXNY as b_JZGJBSJ_LXNY--教职工基本数据子类表 来校年月
      ,b.BZLBM as b_JZGJBSJ_BZLBM--教职工基本数据子类表 编制类别码
      ,[bo].MC as b_JZGJBSJ_BZLBM_MC--编制类别代码表 名称
      ,b.JZGLBM as b_JZGJBSJ_JZGLBM--教职工基本数据子类表 教职工类别码
      ,[bp].MC as b_JZGJBSJ_JZGLBM_MC--教职工类别代码表 名称
      ,[bp].SM as b_JZGJBSJ_JZGLBM_SM--教职工类别代码表 说明
      ,b.GWLBM as b_JZGJBSJ_GWLBM--教职工基本数据子类表 岗位类别码
      ,[bq].MC as b_JZGJBSJ_GWLBM_MC--岗位类别代码表 名称
      ,b.SFJZJS as b_JZGJBSJ_SFJZJS--教职工基本数据子类表 是否兼职教师
      ,[br].MC as b_JZGJBSJ_SFJZJS_MC--是否标志代码表 名称
      ,b.SFSSXJS as b_JZGJBSJ_SFSSXJS--教职工基本数据子类表 是否双师型教师
      ,[bs].MC as b_JZGJBSJ_SFSSXJS_MC--是否标志代码表 名称
      ,b.ZP as b_JZGJBSJ_ZP--教职工基本数据子类表 照片(路径)
      ,b.DQZTM as b_JZGJBSJ_DQZTM--教职工基本数据子类表 当前状态码
      ,[bt].MC as b_JZGJBSJ_DQZTM_MC--教职工当前状态代码表 名称
      ,b.YDDH as b_JZGJBSJ_YDDH--教职工基本数据子类表 移动电话
      ,b.GDDH as b_JZGJBSJ_GDDH--教职工基本数据子类表 固定电话
      ,b.TXDZYZBM as b_JZGJBSJ_TXDZYZBM--教职工基本数据子类表 通信地址邮政编码
      ,b.TXDZ as b_JZGJBSJ_TXDZ--教职工基本数据子类表 通信地址
      ,b.DZXX as b_JZGJBSJ_DZXX--教职工基本数据子类表 电子信箱
      ,b.WLDZ as b_JZGJBSJ_WLDZ--教职工基本数据子类表 网络地址
      ,b.JSTXH as b_JZGJBSJ_JSTXH--教职工基本数据子类表 即时通讯号

FROM dbo.EDU_ZZJG_01_A06_JZGKZSH AS a LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS b ON a.JZGJBSJID = b.ID /*教工基本信息ID*/ AND a.SCHOOLID = b.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS [bb] ON b.SFZJLXM = [bb].DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS [bc] ON b.XBM = [bc].DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS [bd] ON b.MZM = [bd].DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS [be] ON b.XXM = [be].DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS [bf] ON b.JKZKM = [bf].DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS [bg] ON b.HYZTM = [bg].DM /*婚姻状态码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS [bh] ON b.ZZMMM = [bh].DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS [bi] ON b.GATQWM = [bi].DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS [bj] ON b.GJDQM = [bj].DM /*国籍/地区码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [bk] ON b.CSDXZQHM = [bk].DM /*出生地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS [bl] ON b.XYZJM = [bl].DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [bm] ON b.JZGHKSZDXZQHM = [bm].DM /*教职工户口所在地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS [bn] ON b.HKLBM = [bn].DM /*户口类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_BZLB AS [bo] ON b.BZLBM = [bo].DM /*编制类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGLB AS [bp] ON b.JZGLBM = [bp].DM /*教职工类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWLB AS [bq] ON b.GWLBM = [bq].DM /*岗位类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [br] ON b.SFJZJS = [br].DM /*是否兼职教师*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [bs] ON b.SFSSXJS = [bs].DM /*是否双师型教师*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGDQZT AS [bt] ON b.DQZTM = [bt].DM /*当前状态码*/
GO
