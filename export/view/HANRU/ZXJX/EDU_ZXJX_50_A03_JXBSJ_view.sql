
--教学班数据表
CREATE VIEW [dbo].[VIEW_EDU_ZXJX_50_A03_JXBSJ_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[XXKCLBID]--选修课程类别ID
      ,a.[KCMC]--课程名称
      ,a.[KCJS]--课程介绍
      ,a.[JXJH]--教学计划
      ,a.[ZKS]--总课时
      ,a.[XF]--学分
      ,a.[XQID]--学期ID
      ,a.[NJID]--年级ID
      ,a.[DQZT]--当前状态
      ,a.[KKJSID]--开课教师ID
      ,a.[SKSJID]--上课时间ID
      ,a.[SKDD]--上课地点
      ,a.[BJKRNRS]--班级可容纳人数
      ,a.[ZDKBRS]--最低开班人数
      ,c.SCHOOLID as c_XXKCLB_SCHOOLID--选修课程类别表 学校
      ,c.LBMC as c_XXKCLB_LBMC--选修课程类别表 类别名称
      ,c.JJ as c_XXKCLB_JJ--选修课程类别表 简介
      ,d.SCHOOLID as d_XQ_SCHOOLID--学期数据表 学校名
      ,d.XNID as d_XQ_XNID--学期数据表 学年
      ,d.XQM as d_XQ_XQM--学期数据表 学期码
      ,[db].MC as d_XQ_XQM_MC--学期代码表 名称
      ,d.XQMC as d_XQ_XQMC--学期数据表 学期名称
      ,d.XQKSRQ as d_XQ_XQKSRQ--学期数据表 学期开始日期
      ,d.XQJSRQ as d_XQ_XQJSRQ--学期数据表 学期结束日期
      ,d.BaseProjectInfoID as d_XQ_BaseProjectInfoID--学期数据表 表BaseProjectInfo外键
      ,e.SCHOOLID as e_NJ_SCHOOLID--年级数据类表 学校名
      ,e.NJMC as e_NJ_NJMC--年级数据类表 年级名称
      ,e.ZT as e_NJ_ZT--年级数据类表 状态
      ,e.PLSX as e_NJ_PLSX--年级数据类表 排列顺序
      ,f.SCHOOLID as f_JZGJBSJ_SCHOOLID--教职工基本数据子类表 学校名
      ,f.GH as f_JZGJBSJ_GH--教职工基本数据子类表 工号
      ,f.XM as f_JZGJBSJ_XM--教职工基本数据子类表 姓名
      ,f.YWXM as f_JZGJBSJ_YWXM--教职工基本数据子类表 英文姓名
      ,f.XMPY as f_JZGJBSJ_XMPY--教职工基本数据子类表 姓名拼音
      ,f.CYM as f_JZGJBSJ_CYM--教职工基本数据子类表 曾用名
      ,f.XBM as f_JZGJBSJ_XBM--教职工基本数据子类表 性别码
      ,[fb].MC as f_JZGJBSJ_XBM_MC--人的性别代码 名称
      ,f.CSRQ as f_JZGJBSJ_CSRQ--教职工基本数据子类表 出生日期
      ,f.CSDM as f_JZGJBSJ_CSDM--教职工基本数据子类表 出生地码
      ,[fc].MC as f_JZGJBSJ_CSDM_MC--中华人民共和国行政区划代码 名称
      ,f.JG as f_JZGJBSJ_JG--教职工基本数据子类表 籍贯
      ,f.MZM as f_JZGJBSJ_MZM--教职工基本数据子类表 民族码
      ,[fd].MZMC as f_JZGJBSJ_MZM_MZMC--中国各民族名称的罗马字母拼写法和代码 民族名称
      ,[fd].ZMDM as f_JZGJBSJ_MZM_ZMDM--中国各民族名称的罗马字母拼写法和代码 字母代码
      ,f.GJDQM as f_JZGJBSJ_GJDQM--教职工基本数据子类表 国籍/地区码
      ,[fe].GJDQMCJC as f_JZGJBSJ_GJDQM_GJDQMCJC--世界各国和地区名称代码 国家/地区名称简称
      ,[fe].EZMDM as f_JZGJBSJ_GJDQM_EZMDM--世界各国和地区名称代码 二字母代码
      ,[fe].SZMDM as f_JZGJBSJ_GJDQM_SZMDM--世界各国和地区名称代码 三字母代码
      ,f.SFZJLXM as f_JZGJBSJ_SFZJLXM--教职工基本数据子类表 身份证件类型码
      ,[ff].MC as f_JZGJBSJ_SFZJLXM_MC--身份证件类型代码表 名称
      ,f.SFZJH as f_JZGJBSJ_SFZJH--教职工基本数据子类表 身份证件号
      ,f.HYZKM as f_JZGJBSJ_HYZKM--教职工基本数据子类表 婚姻状况码
      ,[fg].MC as f_JZGJBSJ_HYZKM_MC--婚姻状况代码 名称
      ,f.GATQWM as f_JZGJBSJ_GATQWM--教职工基本数据子类表 港澳台侨外码
      ,[fh].MC as f_JZGJBSJ_GATQWM_MC--港澳台侨外代码表 名称
      ,[fh].SM as f_JZGJBSJ_GATQWM_SM--港澳台侨外代码表 说明
      ,f.ZZMMM as f_JZGJBSJ_ZZMMM--教职工基本数据子类表 政治面貌码
      ,[fi].MC as f_JZGJBSJ_ZZMMM_MC--政治面貌代码 名称
      ,[fi].JC as f_JZGJBSJ_ZZMMM_JC--政治面貌代码 简称
      ,f.JKZKM as f_JZGJBSJ_JKZKM--教职工基本数据子类表 健康状况码
      ,[fj].MC as f_JZGJBSJ_JKZKM_MC--健康状况1位数字代码 名称
      ,[fj].SM as f_JZGJBSJ_JKZKM_SM--健康状况1位数字代码 说明
      ,f.XYZJM as f_JZGJBSJ_XYZJM--教职工基本数据子类表 信仰宗教码
      ,[fk].MC as f_JZGJBSJ_XYZJM_MC--宗教信仰代码 名称
      ,f.XXM as f_JZGJBSJ_XXM--教职工基本数据子类表 血型码
      ,[fl].MC as f_JZGJBSJ_XXM_MC--血型代码表 名称
      ,[fl].JC as f_JZGJBSJ_XXM_JC--血型代码表 简称
      ,f.ZP as f_JZGJBSJ_ZP--教职工基本数据子类表 照片
      ,f.SFZJYXQ as f_JZGJBSJ_SFZJYXQ--教职工基本数据子类表 身份证件有效期
      ,f.JGH as f_JZGJBSJ_JGH--教职工基本数据子类表 机构号
      ,f.JTZZ as f_JZGJBSJ_JTZZ--教职工基本数据子类表 家庭住址
      ,f.XZZ as f_JZGJBSJ_XZZ--教职工基本数据子类表 现住址
      ,f.HKSZD as f_JZGJBSJ_HKSZD--教职工基本数据子类表 户口所在地
      ,f.HKXZM as f_JZGJBSJ_HKXZM--教职工基本数据子类表 户口性质码
      ,[fm].MC as f_JZGJBSJ_HKXZM_MC--户口类别代码 名称
      ,f.XLM as f_JZGJBSJ_XLM--教职工基本数据子类表 学历码
      ,[fn].MC as f_JZGJBSJ_XLM_MC--学历代码 名称
      ,f.GZNY as f_JZGJBSJ_GZNY--教职工基本数据子类表 参加工作年月
      ,f.LXNY as f_JZGJBSJ_LXNY--教职工基本数据子类表 来校年月
      ,f.CJNY as f_JZGJBSJ_CJNY--教职工基本数据子类表 从教年月
      ,f.BZLBM as f_JZGJBSJ_BZLBM--教职工基本数据子类表 编制类别码
      ,[fo].MC as f_JZGJBSJ_BZLBM_MC--中小学编制类别代码表 名称
      ,f.DABH as f_JZGJBSJ_DABH--教职工基本数据子类表 档案编号
      ,f.DAWB as f_JZGJBSJ_DAWB--教职工基本数据子类表 档案文本
      ,f.TXDZ as f_JZGJBSJ_TXDZ--教职工基本数据子类表 通信地址
      ,f.LXDH as f_JZGJBSJ_LXDH--教职工基本数据子类表 联系电话
      ,f.YZBM as f_JZGJBSJ_YZBM--教职工基本数据子类表 邮政编码
      ,f.DZXX as f_JZGJBSJ_DZXX--教职工基本数据子类表 电子信箱
      ,f.ZYDZ as f_JZGJBSJ_ZYDZ--教职工基本数据子类表 主页地址
      ,f.TC as f_JZGJBSJ_TC--教职工基本数据子类表 特长
      ,f.GWZYM as f_JZGJBSJ_GWZYM--教职工基本数据子类表 岗位职业码
      ,[fp].MC as f_JZGJBSJ_GWZYM_MC--岗位职业代码表 名称
      ,f.ZYRKXD as f_JZGJBSJ_ZYRKXD--教职工基本数据子类表 主要任课学段
      ,[fq].MC as f_JZGJBSJ_ZYRKXD_MC--任课学段代码表 名称
      ,f.JZGLXID as f_JZGJBSJ_JZGLXID--教职工基本数据子类表 教职工类型ID
      ,f.XQ as f_JZGJBSJ_XQ--教职工基本数据子类表 校区
      ,f.ZGZC as f_JZGJBSJ_ZGZC--教职工基本数据子类表 最高职称
      ,f.PDSJ as f_JZGJBSJ_PDSJ--教职工基本数据子类表 评定时间
      ,f.XPZC as f_JZGJBSJ_XPZC--教职工基本数据子类表 现品职称
      ,f.PDESJ as f_JZGJBSJ_PDESJ--教职工基本数据子类表 聘得时间
      ,f.RBXQDW as f_JZGJBSJ_RBXQDW--教职工基本数据子类表 入本校前单位
      ,f.ZZZT as f_JZGJBSJ_ZZZT--教职工基本数据子类表 在职状态
      ,f.SZBM as f_JZGJBSJ_SZBM--教职工基本数据子类表 所在部门
      ,f.XZZW as f_JZGJBSJ_XZZW--教职工基本数据子类表 行政职务
      ,f.DH as f_JZGJBSJ_DH--教职工基本数据子类表 短号
      ,f.PTHDJ as f_JZGJBSJ_PTHDJ--教职工基本数据子类表 普通话等级
      ,f.JSZH as f_JZGJBSJ_JSZH--教职工基本数据子类表 教师证号
      ,f.JSJDJ as f_JZGJBSJ_JSJDJ--教职工基本数据子类表 计算机等级
      ,f.GGJSDJ as f_JZGJBSJ_GGJSDJ--教职工基本数据子类表 骨干教师等级
      ,f.RJXK as f_JZGJBSJ_RJXK--教职工基本数据子类表 任教学科
      ,f.SFRSDL as f_JZGJBSJ_SFRSDL--教职工基本数据子类表 是否人事代理
      ,f.NDKH as f_JZGJBSJ_NDKH--教职工基本数据子类表 年度考核
      ,f.XXJL as f_JZGJBSJ_XXJL--教职工基本数据子类表 学习经历
      ,f.GZJL as f_JZGJBSJ_GZJL--教职工基本数据子类表 工作经历
      ,f.JYQK as f_JZGJBSJ_JYQK--教职工基本数据子类表 教研情况
      ,f.GZYLJCQK as f_JZGJBSJ_GZYLJCQK--教职工基本数据子类表 工作以来奖惩情况
      ,f.JTZYCY as f_JZGJBSJ_JTZYCY--教职工基本数据子类表 家庭主要成员
      ,f.BZ as f_JZGJBSJ_BZ--教职工基本数据子类表 备注
      ,g.SCHOOLID as g_KKSJ_SCHOOLID--开课时间表 学校
      ,g.SKSJ as g_KKSJ_SKSJ--开课时间表 上课时间
      ,g.SDIDLB as g_KKSJ_SDIDLB--开课时间表 时段ID列表
      ,g.SDMCLB as g_KKSJ_SDMCLB--开课时间表 时段名称列表

FROM dbo.EDU_ZXJX_50_A03_JXBSJ AS a LEFT OUTER JOIN
      dbo.EDU_ZXJX_50_A01_XXKCLB AS c ON a.XXKCLBID = c.ID /*选修课程类别ID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS d ON a.XQID = d.ID /*学期ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_02_01_NJ AS e ON a.NJID = e.NJ /*年级ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZXJZ_01_01_JZGJBSJ AS f ON a.KKJSID = f.ID /*开课教师ID*/ AND a.SCHOOLID = f.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZXJX_50_A02_KKSJ AS g ON a.SKSJID = g.ID /*上课时间ID*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS [db] ON d.XQM = [db].DM /*学期码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS [fb] ON f.XBM = [fb].DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [fc] ON f.CSDM = [fc].DM /*出生地码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS [fd] ON f.MZM = [fd].DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS [fe] ON f.GJDQM = [fe].DM /*国籍/地区码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS [ff] ON f.SFZJLXM = [ff].DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS [fg] ON f.HYZKM = [fg].DM /*婚姻状况码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS [fh] ON f.GATQWM = [fh].DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS [fi] ON f.ZZMMM = [fi].DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS [fj] ON f.JKZKM = [fj].DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS [fk] ON f.XYZJM = [fk].DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS [fl] ON f.XXM = [fl].DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS [fm] ON f.HKXZM = [fm].DM /*户口性质码*/ LEFT OUTER JOIN
      dbo.EDU_GB_XL AS [fn] ON f.XLM = [fn].DM /*学历码*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXBZLB AS [fo] ON f.BZLBM = [fo].DM /*编制类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWZY AS [fp] ON f.GWZYM = [fp].DM /*岗位职业码*/ LEFT OUTER JOIN
      dbo.EDU_JY_RKXD AS [fq] ON f.ZYRKXD = [fq].DM /*主要任课学段*/
GO
