
--党员信息表
CREATE VIEW [dbo].[VIEW_EDU_ZXJZ_17_A01_DYXX_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[JZGJBSJID]--教工基本信息ID
      ,a.[RDSJ]--入党时间
      ,a.[RDDD]--入党地点
      ,a.[RDJSR]--入党介绍人
      ,a.[DQZT]--当前状态
      ,a.[TJJSID]--添加教师ID
      ,a.[TJSJ]--添加时间
      ,a.[BZ]--备注
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
      ,d.SCHOOLID as d_JZGJBSJ_SCHOOLID--教职工基本数据子类表 学校名
      ,d.GH as d_JZGJBSJ_GH--教职工基本数据子类表 工号
      ,d.XM as d_JZGJBSJ_XM--教职工基本数据子类表 姓名
      ,d.YWXM as d_JZGJBSJ_YWXM--教职工基本数据子类表 英文姓名
      ,d.XMPY as d_JZGJBSJ_XMPY--教职工基本数据子类表 姓名拼音
      ,d.CYM as d_JZGJBSJ_CYM--教职工基本数据子类表 曾用名
      ,d.XBM as d_JZGJBSJ_XBM--教职工基本数据子类表 性别码
      ,[db].MC as d_JZGJBSJ_XBM_MC--人的性别代码 名称
      ,d.CSRQ as d_JZGJBSJ_CSRQ--教职工基本数据子类表 出生日期
      ,d.CSDM as d_JZGJBSJ_CSDM--教职工基本数据子类表 出生地码
      ,[dc].MC as d_JZGJBSJ_CSDM_MC--中华人民共和国行政区划代码 名称
      ,d.JG as d_JZGJBSJ_JG--教职工基本数据子类表 籍贯
      ,d.MZM as d_JZGJBSJ_MZM--教职工基本数据子类表 民族码
      ,[dd].MZMC as d_JZGJBSJ_MZM_MZMC--中国各民族名称的罗马字母拼写法和代码 民族名称
      ,[dd].ZMDM as d_JZGJBSJ_MZM_ZMDM--中国各民族名称的罗马字母拼写法和代码 字母代码
      ,d.GJDQM as d_JZGJBSJ_GJDQM--教职工基本数据子类表 国籍/地区码
      ,[de].GJDQMCJC as d_JZGJBSJ_GJDQM_GJDQMCJC--世界各国和地区名称代码 国家/地区名称简称
      ,[de].EZMDM as d_JZGJBSJ_GJDQM_EZMDM--世界各国和地区名称代码 二字母代码
      ,[de].SZMDM as d_JZGJBSJ_GJDQM_SZMDM--世界各国和地区名称代码 三字母代码
      ,d.SFZJLXM as d_JZGJBSJ_SFZJLXM--教职工基本数据子类表 身份证件类型码
      ,[df].MC as d_JZGJBSJ_SFZJLXM_MC--身份证件类型代码表 名称
      ,d.SFZJH as d_JZGJBSJ_SFZJH--教职工基本数据子类表 身份证件号
      ,d.HYZKM as d_JZGJBSJ_HYZKM--教职工基本数据子类表 婚姻状况码
      ,[dg].MC as d_JZGJBSJ_HYZKM_MC--婚姻状况代码 名称
      ,d.GATQWM as d_JZGJBSJ_GATQWM--教职工基本数据子类表 港澳台侨外码
      ,[dh].MC as d_JZGJBSJ_GATQWM_MC--港澳台侨外代码表 名称
      ,[dh].SM as d_JZGJBSJ_GATQWM_SM--港澳台侨外代码表 说明
      ,d.ZZMMM as d_JZGJBSJ_ZZMMM--教职工基本数据子类表 政治面貌码
      ,[di].MC as d_JZGJBSJ_ZZMMM_MC--政治面貌代码 名称
      ,[di].JC as d_JZGJBSJ_ZZMMM_JC--政治面貌代码 简称
      ,d.JKZKM as d_JZGJBSJ_JKZKM--教职工基本数据子类表 健康状况码
      ,[dj].MC as d_JZGJBSJ_JKZKM_MC--健康状况1位数字代码 名称
      ,[dj].SM as d_JZGJBSJ_JKZKM_SM--健康状况1位数字代码 说明
      ,d.XYZJM as d_JZGJBSJ_XYZJM--教职工基本数据子类表 信仰宗教码
      ,[dk].MC as d_JZGJBSJ_XYZJM_MC--宗教信仰代码 名称
      ,d.XXM as d_JZGJBSJ_XXM--教职工基本数据子类表 血型码
      ,[dl].MC as d_JZGJBSJ_XXM_MC--血型代码表 名称
      ,[dl].JC as d_JZGJBSJ_XXM_JC--血型代码表 简称
      ,d.ZP as d_JZGJBSJ_ZP--教职工基本数据子类表 照片
      ,d.SFZJYXQ as d_JZGJBSJ_SFZJYXQ--教职工基本数据子类表 身份证件有效期
      ,d.JGH as d_JZGJBSJ_JGH--教职工基本数据子类表 机构号
      ,d.JTZZ as d_JZGJBSJ_JTZZ--教职工基本数据子类表 家庭住址
      ,d.XZZ as d_JZGJBSJ_XZZ--教职工基本数据子类表 现住址
      ,d.HKSZD as d_JZGJBSJ_HKSZD--教职工基本数据子类表 户口所在地
      ,d.HKXZM as d_JZGJBSJ_HKXZM--教职工基本数据子类表 户口性质码
      ,[dm].MC as d_JZGJBSJ_HKXZM_MC--户口类别代码 名称
      ,d.XLM as d_JZGJBSJ_XLM--教职工基本数据子类表 学历码
      ,[dn].MC as d_JZGJBSJ_XLM_MC--学历代码 名称
      ,d.GZNY as d_JZGJBSJ_GZNY--教职工基本数据子类表 参加工作年月
      ,d.LXNY as d_JZGJBSJ_LXNY--教职工基本数据子类表 来校年月
      ,d.CJNY as d_JZGJBSJ_CJNY--教职工基本数据子类表 从教年月
      ,d.BZLBM as d_JZGJBSJ_BZLBM--教职工基本数据子类表 编制类别码
      ,[do].MC as d_JZGJBSJ_BZLBM_MC--中小学编制类别代码表 名称
      ,d.DABH as d_JZGJBSJ_DABH--教职工基本数据子类表 档案编号
      ,d.DAWB as d_JZGJBSJ_DAWB--教职工基本数据子类表 档案文本
      ,d.TXDZ as d_JZGJBSJ_TXDZ--教职工基本数据子类表 通信地址
      ,d.LXDH as d_JZGJBSJ_LXDH--教职工基本数据子类表 联系电话
      ,d.YZBM as d_JZGJBSJ_YZBM--教职工基本数据子类表 邮政编码
      ,d.DZXX as d_JZGJBSJ_DZXX--教职工基本数据子类表 电子信箱
      ,d.ZYDZ as d_JZGJBSJ_ZYDZ--教职工基本数据子类表 主页地址
      ,d.TC as d_JZGJBSJ_TC--教职工基本数据子类表 特长
      ,d.GWZYM as d_JZGJBSJ_GWZYM--教职工基本数据子类表 岗位职业码
      ,[dp].MC as d_JZGJBSJ_GWZYM_MC--岗位职业代码表 名称
      ,d.ZYRKXD as d_JZGJBSJ_ZYRKXD--教职工基本数据子类表 主要任课学段
      ,[dq].MC as d_JZGJBSJ_ZYRKXD_MC--任课学段代码表 名称

FROM dbo.EDU_ZXJZ_17_A01_DYXX AS a LEFT OUTER JOIN
      dbo.EDU_ZXJZ_01_01_JZGJBSJ AS c ON a.JZGJBSJID = c.ID /*教工基本信息ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZXJZ_01_01_JZGJBSJ AS d ON a.TJJSID = d.ID /*添加教师ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校*/ LEFT OUTER JOIN
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
      dbo.EDU_JY_RKXD AS [cq] ON c.ZYRKXD = [cq].DM /*主要任课学段*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS [db] ON d.XBM = [db].DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [dc] ON d.CSDM = [dc].DM /*出生地码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS [dd] ON d.MZM = [dd].DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS [de] ON d.GJDQM = [de].DM /*国籍/地区码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS [df] ON d.SFZJLXM = [df].DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS [dg] ON d.HYZKM = [dg].DM /*婚姻状况码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS [dh] ON d.GATQWM = [dh].DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS [di] ON d.ZZMMM = [di].DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS [dj] ON d.JKZKM = [dj].DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS [dk] ON d.XYZJM = [dk].DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS [dl] ON d.XXM = [dl].DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS [dm] ON d.HKXZM = [dm].DM /*户口性质码*/ LEFT OUTER JOIN
      dbo.EDU_GB_XL AS [dn] ON d.XLM = [dn].DM /*学历码*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXBZLB AS [do] ON d.BZLBM = [do].DM /*编制类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWZY AS [dp] ON d.GWZYM = [dp].DM /*岗位职业码*/ LEFT OUTER JOIN
      dbo.EDU_JY_RKXD AS [dq] ON d.ZYRKXD = [dq].DM /*主要任课学段*/
GO
