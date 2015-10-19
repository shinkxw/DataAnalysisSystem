
--导师数据表
CREATE VIEW [dbo].[VIEW_EDU_ZXXS_20_A01_DSSJ_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[XQID]--学期ID
      ,a.[JSID]--教师ID
      ,a.[DSXM]--导师姓名
      ,a.[DSJS]--导师介绍
      ,a.[BJIDLB]--班级ID列表
      ,a.[BJMCLB]--班级名称列表
      ,a.[ZDKXZRS]--最多可选择人数
      ,a.[ZDXXZRS]--最低需选择人数
      ,c.SCHOOLID as c_XQ_SCHOOLID--学期数据表 学校名
      ,c.XNID as c_XQ_XNID--学期数据表 学年
      ,c.XQM as c_XQ_XQM--学期数据表 学期码
      ,[cb].MC as c_XQ_XQM_MC--学期代码表 名称
      ,c.XQMC as c_XQ_XQMC--学期数据表 学期名称
      ,c.XQKSRQ as c_XQ_XQKSRQ--学期数据表 学期开始日期
      ,c.XQJSRQ as c_XQ_XQJSRQ--学期数据表 学期结束日期
      ,c.BaseProjectInfoID as c_XQ_BaseProjectInfoID--学期数据表 表BaseProjectInfo外键
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
      ,d.JZGLXID as d_JZGJBSJ_JZGLXID--教职工基本数据子类表 教职工类型ID
      ,d.XQ as d_JZGJBSJ_XQ--教职工基本数据子类表 校区
      ,d.ZGZC as d_JZGJBSJ_ZGZC--教职工基本数据子类表 最高职称
      ,d.PDSJ as d_JZGJBSJ_PDSJ--教职工基本数据子类表 评定时间
      ,d.XPZC as d_JZGJBSJ_XPZC--教职工基本数据子类表 现品职称
      ,d.PDESJ as d_JZGJBSJ_PDESJ--教职工基本数据子类表 聘得时间
      ,d.RBXQDW as d_JZGJBSJ_RBXQDW--教职工基本数据子类表 入本校前单位
      ,d.ZZZT as d_JZGJBSJ_ZZZT--教职工基本数据子类表 在职状态
      ,d.SZBM as d_JZGJBSJ_SZBM--教职工基本数据子类表 所在部门
      ,d.XZZW as d_JZGJBSJ_XZZW--教职工基本数据子类表 行政职务
      ,d.DH as d_JZGJBSJ_DH--教职工基本数据子类表 短号
      ,d.PTHDJ as d_JZGJBSJ_PTHDJ--教职工基本数据子类表 普通话等级
      ,d.JSZH as d_JZGJBSJ_JSZH--教职工基本数据子类表 教师证号
      ,d.JSJDJ as d_JZGJBSJ_JSJDJ--教职工基本数据子类表 计算机等级
      ,d.GGJSDJ as d_JZGJBSJ_GGJSDJ--教职工基本数据子类表 骨干教师等级
      ,d.RJXK as d_JZGJBSJ_RJXK--教职工基本数据子类表 任教学科
      ,d.SFRSDL as d_JZGJBSJ_SFRSDL--教职工基本数据子类表 是否人事代理
      ,d.NDKH as d_JZGJBSJ_NDKH--教职工基本数据子类表 年度考核
      ,d.XXJL as d_JZGJBSJ_XXJL--教职工基本数据子类表 学习经历
      ,d.GZJL as d_JZGJBSJ_GZJL--教职工基本数据子类表 工作经历
      ,d.JYQK as d_JZGJBSJ_JYQK--教职工基本数据子类表 教研情况
      ,d.GZYLJCQK as d_JZGJBSJ_GZYLJCQK--教职工基本数据子类表 工作以来奖惩情况
      ,d.JTZYCY as d_JZGJBSJ_JTZYCY--教职工基本数据子类表 家庭主要成员
      ,d.BZ as d_JZGJBSJ_BZ--教职工基本数据子类表 备注
      ,d.DYXLCD as d_JZGJBSJ_DYXLCD--教职工基本数据子类表 第一学历程度
      ,d.DYXLFS as d_JZGJBSJ_DYXLFS--教职工基本数据子类表 第一学历方式
      ,d.DYXLXZ as d_JZGJBSJ_DYXLXZ--教职工基本数据子类表 第一学历学制
      ,d.DYXLXW as d_JZGJBSJ_DYXLXW--教职工基本数据子类表 第一学历学位
      ,d.DYXLBYSJ as d_JZGJBSJ_DYXLBYSJ--教职工基本数据子类表 第一学历毕业时间
      ,d.DYXLBYXX as d_JZGJBSJ_DYXLBYXX--教职工基本数据子类表 第一学历毕业学校
      ,d.DYXLZY as d_JZGJBSJ_DYXLZY--教职工基本数据子类表 第一学历专业
      ,d.ZGXLCD as d_JZGJBSJ_ZGXLCD--教职工基本数据子类表 最高学历程度
      ,d.ZGXLFS as d_JZGJBSJ_ZGXLFS--教职工基本数据子类表 最高学历方式
      ,d.ZGXLXZ as d_JZGJBSJ_ZGXLXZ--教职工基本数据子类表 最高学历学制
      ,d.ZGXLXW as d_JZGJBSJ_ZGXLXW--教职工基本数据子类表 最高学历学位
      ,d.ZGXLBYSJ as d_JZGJBSJ_ZGXLBYSJ--教职工基本数据子类表 最高学历毕业时间
      ,d.ZGXLBYXX as d_JZGJBSJ_ZGXLBYXX--教职工基本数据子类表 最高学历毕业学校
      ,d.ZGXLZY as d_JZGJBSJ_ZGXLZY--教职工基本数据子类表 最高学历专业

FROM dbo.EDU_ZXXS_20_A01_DSSJ AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS c ON a.XQID = c.ID /*学期ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZXJZ_01_01_JZGJBSJ AS d ON a.JSID = d.ID /*教师ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS [cb] ON c.XQM = [cb].DM /*学期码*/ LEFT OUTER JOIN
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
