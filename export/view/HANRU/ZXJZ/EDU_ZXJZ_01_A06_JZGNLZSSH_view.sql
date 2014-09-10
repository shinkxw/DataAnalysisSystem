
--教职工能力证书数据类表(审核)
CREATE VIEW [dbo].[VIEW_EDU_ZXJZ_01_A06_JZGNLZSSH_DISP]
AS
SELECT a.[SCHOOLID]--学校名
      ,a.[JZGJBSJID]--教职工ID
      ,a.[ZSMC]--证书名称
      ,a.[ZSBH]--证书编号
      ,a.[ZSBFDW]--证书颁发单位
      ,a.[ZSBFRQ]--证书颁发日期
      ,a.[ZSBZ]--证书备注
      ,a.[SFSZYZGZS]--是否是职业资格证书
      ,a.[JJ]--简介
      ,a.[ZT]--状态
      ,c.SCHOOLID as c_JZGJBSJ_SCHOOLID--教职工基本数据子类表 学校名
      ,c.GH as c_JZGJBSJ_GH--教职工基本数据子类表 工号
      ,c.XM as c_JZGJBSJ_XM--教职工基本数据子类表 姓名
      ,c.YWXM as c_JZGJBSJ_YWXM--教职工基本数据子类表 英文姓名
      ,c.XMPY as c_JZGJBSJ_XMPY--教职工基本数据子类表 姓名拼音
      ,c.CYM as c_JZGJBSJ_CYM--教职工基本数据子类表 曾用名
      ,c.XBM as c_JZGJBSJ_XBM--教职工基本数据子类表 性别码
      ,[cb].MC as c_JZGJBSJ_XBM_MC--人的性别代码 名称
      ,c.CSRQ as c_JZGJBSJ_CSRQ--教职工基本数据子类表 出生日期
      ,c.CSDM as c_JZGJBSJ_CSDM--教职工基本数据子类表 出生地码
      ,[cc].MC as c_JZGJBSJ_CSDM_MC--中华人民共和国行政区划代码 名称
      ,c.JG as c_JZGJBSJ_JG--教职工基本数据子类表 籍贯
      ,c.MZM as c_JZGJBSJ_MZM--教职工基本数据子类表 民族码
      ,[cd].MZMC as c_JZGJBSJ_MZM_MZMC--中国各民族名称的罗马字母拼写法和代码 民族名称
      ,[cd].ZMDM as c_JZGJBSJ_MZM_ZMDM--中国各民族名称的罗马字母拼写法和代码 字母代码
      ,c.GJDQM as c_JZGJBSJ_GJDQM--教职工基本数据子类表 国籍/地区码
      ,[ce].GJDQMCJC as c_JZGJBSJ_GJDQM_GJDQMCJC--世界各国和地区名称代码 国家/地区名称简称
      ,[ce].EZMDM as c_JZGJBSJ_GJDQM_EZMDM--世界各国和地区名称代码 二字母代码
      ,[ce].SZMDM as c_JZGJBSJ_GJDQM_SZMDM--世界各国和地区名称代码 三字母代码
      ,c.SFZJLXM as c_JZGJBSJ_SFZJLXM--教职工基本数据子类表 身份证件类型码
      ,[cf].MC as c_JZGJBSJ_SFZJLXM_MC--身份证件类型代码表 名称
      ,c.SFZJH as c_JZGJBSJ_SFZJH--教职工基本数据子类表 身份证件号
      ,c.HYZKM as c_JZGJBSJ_HYZKM--教职工基本数据子类表 婚姻状况码
      ,[cg].MC as c_JZGJBSJ_HYZKM_MC--婚姻状况代码 名称
      ,c.GATQWM as c_JZGJBSJ_GATQWM--教职工基本数据子类表 港澳台侨外码
      ,[ch].MC as c_JZGJBSJ_GATQWM_MC--港澳台侨外代码表 名称
      ,[ch].SM as c_JZGJBSJ_GATQWM_SM--港澳台侨外代码表 说明
      ,c.ZZMMM as c_JZGJBSJ_ZZMMM--教职工基本数据子类表 政治面貌码
      ,[ci].MC as c_JZGJBSJ_ZZMMM_MC--政治面貌代码 名称
      ,[ci].JC as c_JZGJBSJ_ZZMMM_JC--政治面貌代码 简称
      ,c.JKZKM as c_JZGJBSJ_JKZKM--教职工基本数据子类表 健康状况码
      ,[cj].MC as c_JZGJBSJ_JKZKM_MC--健康状况1位数字代码 名称
      ,[cj].SM as c_JZGJBSJ_JKZKM_SM--健康状况1位数字代码 说明
      ,c.XYZJM as c_JZGJBSJ_XYZJM--教职工基本数据子类表 信仰宗教码
      ,[ck].MC as c_JZGJBSJ_XYZJM_MC--宗教信仰代码 名称
      ,c.XXM as c_JZGJBSJ_XXM--教职工基本数据子类表 血型码
      ,[cl].MC as c_JZGJBSJ_XXM_MC--血型代码表 名称
      ,[cl].JC as c_JZGJBSJ_XXM_JC--血型代码表 简称
      ,c.ZP as c_JZGJBSJ_ZP--教职工基本数据子类表 照片
      ,c.SFZJYXQ as c_JZGJBSJ_SFZJYXQ--教职工基本数据子类表 身份证件有效期
      ,c.JGH as c_JZGJBSJ_JGH--教职工基本数据子类表 机构号
      ,c.JTZZ as c_JZGJBSJ_JTZZ--教职工基本数据子类表 家庭住址
      ,c.XZZ as c_JZGJBSJ_XZZ--教职工基本数据子类表 现住址
      ,c.HKSZD as c_JZGJBSJ_HKSZD--教职工基本数据子类表 户口所在地
      ,c.HKXZM as c_JZGJBSJ_HKXZM--教职工基本数据子类表 户口性质码
      ,[cm].MC as c_JZGJBSJ_HKXZM_MC--户口类别代码 名称
      ,c.XLM as c_JZGJBSJ_XLM--教职工基本数据子类表 学历码
      ,[cn].MC as c_JZGJBSJ_XLM_MC--学历代码 名称
      ,c.GZNY as c_JZGJBSJ_GZNY--教职工基本数据子类表 参加工作年月
      ,c.LXNY as c_JZGJBSJ_LXNY--教职工基本数据子类表 来校年月
      ,c.CJNY as c_JZGJBSJ_CJNY--教职工基本数据子类表 从教年月
      ,c.BZLBM as c_JZGJBSJ_BZLBM--教职工基本数据子类表 编制类别码
      ,[co].MC as c_JZGJBSJ_BZLBM_MC--中小学编制类别代码表 名称
      ,c.DABH as c_JZGJBSJ_DABH--教职工基本数据子类表 档案编号
      ,c.DAWB as c_JZGJBSJ_DAWB--教职工基本数据子类表 档案文本
      ,c.TXDZ as c_JZGJBSJ_TXDZ--教职工基本数据子类表 通信地址
      ,c.LXDH as c_JZGJBSJ_LXDH--教职工基本数据子类表 联系电话
      ,c.YZBM as c_JZGJBSJ_YZBM--教职工基本数据子类表 邮政编码
      ,c.DZXX as c_JZGJBSJ_DZXX--教职工基本数据子类表 电子信箱
      ,c.ZYDZ as c_JZGJBSJ_ZYDZ--教职工基本数据子类表 主页地址
      ,c.TC as c_JZGJBSJ_TC--教职工基本数据子类表 特长
      ,c.GWZYM as c_JZGJBSJ_GWZYM--教职工基本数据子类表 岗位职业码
      ,[cp].MC as c_JZGJBSJ_GWZYM_MC--岗位职业代码表 名称
      ,c.ZYRKXD as c_JZGJBSJ_ZYRKXD--教职工基本数据子类表 主要任课学段
      ,[cq].MC as c_JZGJBSJ_ZYRKXD_MC--任课学段代码表 名称
      ,c.JZGLXID as c_JZGJBSJ_JZGLXID--教职工基本数据子类表 教职工类型ID
      ,d.MC as d_SFBZ_MC--是否标志代码表 名称

FROM dbo.EDU_ZXJZ_01_A06_JZGNLZSSH AS a LEFT OUTER JOIN
      dbo.EDU_ZXJZ_01_01_JZGJBSJ AS c ON a.JZGJBSJID = c.ID /*教职工ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS d ON a.SFSZYZGZS = d.DM /*是否是职业资格证书*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS [cb] ON c.XBM = [cb].DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [cc] ON c.CSDM = [cc].DM /*出生地码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS [cd] ON c.MZM = [cd].DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS [ce] ON c.GJDQM = [ce].DM /*国籍/地区码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS [cf] ON c.SFZJLXM = [cf].DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS [cg] ON c.HYZKM = [cg].DM /*婚姻状况码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS [ch] ON c.GATQWM = [ch].DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS [ci] ON c.ZZMMM = [ci].DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS [cj] ON c.JKZKM = [cj].DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS [ck] ON c.XYZJM = [ck].DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS [cl] ON c.XXM = [cl].DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS [cm] ON c.HKXZM = [cm].DM /*户口性质码*/ LEFT OUTER JOIN
      dbo.EDU_GB_XL AS [cn] ON c.XLM = [cn].DM /*学历码*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXBZLB AS [co] ON c.BZLBM = [co].DM /*编制类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWZY AS [cp] ON c.GWZYM = [cp].DM /*岗位职业码*/ LEFT OUTER JOIN
      dbo.EDU_JY_RKXD AS [cq] ON c.ZYRKXD = [cq].DM /*主要任课学段*/
GO
