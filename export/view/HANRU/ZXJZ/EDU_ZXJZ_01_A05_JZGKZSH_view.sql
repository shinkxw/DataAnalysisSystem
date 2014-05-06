
--教职工扩展表(审核)
CREATE VIEW [dbo].[VIEW_EDU_ZXJZ_01_A05_JZGKZSH_DISP]
AS
SELECT a.[JZGID]--教工基本信息ID
      ,a.[SCHOOLID]--学校ID
      ,a.[GL]--工龄
      ,a.[JL]--教龄
      ,a.[GJRZNX]--高级任职年限
      ,a.[ZJRZNX]--中级任职年限
      ,a.[CJRZNX]--初级任职年限
      ,a.[RZNX]--任职年限
      ,a.[SSDZB]--所属党支部
      ,a.[BYYX]--毕业院校
      ,a.[XXJL]--学习经历
      ,a.[GZJL]--工作经历
      ,a.[HJQK]--获奖情况
      ,a.[ZC]--职称
      ,b.SCHOOLID as b_JZGJBSJ_SCHOOLID--教职工基本数据子类表 学校名
      ,b.GH as b_JZGJBSJ_GH--教职工基本数据子类表 工号
      ,b.XM as b_JZGJBSJ_XM--教职工基本数据子类表 姓名
      ,b.YWXM as b_JZGJBSJ_YWXM--教职工基本数据子类表 英文姓名
      ,b.XMPY as b_JZGJBSJ_XMPY--教职工基本数据子类表 姓名拼音
      ,b.CYM as b_JZGJBSJ_CYM--教职工基本数据子类表 曾用名
      ,b.XBM as b_JZGJBSJ_XBM--教职工基本数据子类表 性别码
      ,[bb].MC as b_JZGJBSJ_XBM_MC--人的性别代码 名称
      ,b.CSRQ as b_JZGJBSJ_CSRQ--教职工基本数据子类表 出生日期
      ,b.CSDM as b_JZGJBSJ_CSDM--教职工基本数据子类表 出生地码
      ,[bc].MC as b_JZGJBSJ_CSDM_MC--中华人民共和国行政区划代码 名称
      ,b.JG as b_JZGJBSJ_JG--教职工基本数据子类表 籍贯
      ,b.MZM as b_JZGJBSJ_MZM--教职工基本数据子类表 民族码
      ,[bd].MZMC as b_JZGJBSJ_MZM_MZMC--中国各民族名称的罗马字母拼写法和代码 民族名称
      ,[bd].ZMDM as b_JZGJBSJ_MZM_ZMDM--中国各民族名称的罗马字母拼写法和代码 字母代码
      ,b.GJDQM as b_JZGJBSJ_GJDQM--教职工基本数据子类表 国籍/地区码
      ,[be].GJDQMCJC as b_JZGJBSJ_GJDQM_GJDQMCJC--世界各国和地区名称代码 国家/地区名称简称
      ,[be].EZMDM as b_JZGJBSJ_GJDQM_EZMDM--世界各国和地区名称代码 二字母代码
      ,[be].SZMDM as b_JZGJBSJ_GJDQM_SZMDM--世界各国和地区名称代码 三字母代码
      ,b.SFZJLXM as b_JZGJBSJ_SFZJLXM--教职工基本数据子类表 身份证件类型码
      ,[bf].MC as b_JZGJBSJ_SFZJLXM_MC--身份证件类型代码表 名称
      ,b.SFZJH as b_JZGJBSJ_SFZJH--教职工基本数据子类表 身份证件号
      ,b.HYZKM as b_JZGJBSJ_HYZKM--教职工基本数据子类表 婚姻状况码
      ,[bg].MC as b_JZGJBSJ_HYZKM_MC--婚姻状况代码 名称
      ,b.GATQWM as b_JZGJBSJ_GATQWM--教职工基本数据子类表 港澳台侨外码
      ,[bh].MC as b_JZGJBSJ_GATQWM_MC--港澳台侨外代码表 名称
      ,[bh].SM as b_JZGJBSJ_GATQWM_SM--港澳台侨外代码表 说明
      ,b.ZZMMM as b_JZGJBSJ_ZZMMM--教职工基本数据子类表 政治面貌码
      ,[bi].MC as b_JZGJBSJ_ZZMMM_MC--政治面貌代码 名称
      ,[bi].JC as b_JZGJBSJ_ZZMMM_JC--政治面貌代码 简称
      ,b.JKZKM as b_JZGJBSJ_JKZKM--教职工基本数据子类表 健康状况码
      ,[bj].MC as b_JZGJBSJ_JKZKM_MC--健康状况1位数字代码 名称
      ,[bj].SM as b_JZGJBSJ_JKZKM_SM--健康状况1位数字代码 说明
      ,b.XYZJM as b_JZGJBSJ_XYZJM--教职工基本数据子类表 信仰宗教码
      ,[bk].MC as b_JZGJBSJ_XYZJM_MC--宗教信仰代码 名称
      ,b.XXM as b_JZGJBSJ_XXM--教职工基本数据子类表 血型码
      ,[bl].MC as b_JZGJBSJ_XXM_MC--血型代码表 名称
      ,[bl].JC as b_JZGJBSJ_XXM_JC--血型代码表 简称
      ,b.ZP as b_JZGJBSJ_ZP--教职工基本数据子类表 照片
      ,b.SFZJYXQ as b_JZGJBSJ_SFZJYXQ--教职工基本数据子类表 身份证件有效期
      ,b.JGH as b_JZGJBSJ_JGH--教职工基本数据子类表 机构号
      ,b.JTZZ as b_JZGJBSJ_JTZZ--教职工基本数据子类表 家庭住址
      ,b.XZZ as b_JZGJBSJ_XZZ--教职工基本数据子类表 现住址
      ,b.HKSZD as b_JZGJBSJ_HKSZD--教职工基本数据子类表 户口所在地
      ,b.HKXZM as b_JZGJBSJ_HKXZM--教职工基本数据子类表 户口性质码
      ,[bm].MC as b_JZGJBSJ_HKXZM_MC--户口类别代码 名称
      ,b.XLM as b_JZGJBSJ_XLM--教职工基本数据子类表 学历码
      ,[bn].MC as b_JZGJBSJ_XLM_MC--学历代码 名称
      ,b.GZNY as b_JZGJBSJ_GZNY--教职工基本数据子类表 参加工作年月
      ,b.LXNY as b_JZGJBSJ_LXNY--教职工基本数据子类表 来校年月
      ,b.CJNY as b_JZGJBSJ_CJNY--教职工基本数据子类表 从教年月
      ,b.BZLBM as b_JZGJBSJ_BZLBM--教职工基本数据子类表 编制类别码
      ,[bo].MC as b_JZGJBSJ_BZLBM_MC--中小学编制类别代码表 名称
      ,b.DABH as b_JZGJBSJ_DABH--教职工基本数据子类表 档案编号
      ,b.DAWB as b_JZGJBSJ_DAWB--教职工基本数据子类表 档案文本
      ,b.TXDZ as b_JZGJBSJ_TXDZ--教职工基本数据子类表 通信地址
      ,b.LXDH as b_JZGJBSJ_LXDH--教职工基本数据子类表 联系电话
      ,b.YZBM as b_JZGJBSJ_YZBM--教职工基本数据子类表 邮政编码
      ,b.DZXX as b_JZGJBSJ_DZXX--教职工基本数据子类表 电子信箱
      ,b.ZYDZ as b_JZGJBSJ_ZYDZ--教职工基本数据子类表 主页地址
      ,b.TC as b_JZGJBSJ_TC--教职工基本数据子类表 特长
      ,b.GWZYM as b_JZGJBSJ_GWZYM--教职工基本数据子类表 岗位职业码
      ,[bp].MC as b_JZGJBSJ_GWZYM_MC--岗位职业代码表 名称
      ,b.ZYRKXD as b_JZGJBSJ_ZYRKXD--教职工基本数据子类表 主要任课学段
      ,[bq].MC as b_JZGJBSJ_ZYRKXD_MC--任课学段代码表 名称

FROM dbo.EDU_ZXJZ_01_A05_JZGKZSH AS a LEFT OUTER JOIN
      dbo.EDU_ZXJZ_01_01_JZGJBSJ AS b ON a.JZGID = b.ID /*教工基本信息ID*/ AND a.SCHOOLID = b.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS [bb] ON b.XBM = [bb].DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [bc] ON b.CSDM = [bc].DM /*出生地码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS [bd] ON b.MZM = [bd].DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS [be] ON b.GJDQM = [be].DM /*国籍/地区码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS [bf] ON b.SFZJLXM = [bf].DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS [bg] ON b.HYZKM = [bg].DM /*婚姻状况码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS [bh] ON b.GATQWM = [bh].DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS [bi] ON b.ZZMMM = [bi].DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS [bj] ON b.JKZKM = [bj].DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS [bk] ON b.XYZJM = [bk].DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS [bl] ON b.XXM = [bl].DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS [bm] ON b.HKXZM = [bm].DM /*户口性质码*/ LEFT OUTER JOIN
      dbo.EDU_GB_XL AS [bn] ON b.XLM = [bn].DM /*学历码*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXBZLB AS [bo] ON b.BZLBM = [bo].DM /*编制类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWZY AS [bp] ON b.GWZYM = [bp].DM /*岗位职业码*/ LEFT OUTER JOIN
      dbo.EDU_JY_RKXD AS [bq] ON b.ZYRKXD = [bq].DM /*主要任课学段*/
GO
