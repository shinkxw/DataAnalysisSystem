
--党支部成员信息表
CREATE VIEW [dbo].[VIEW_EDU_ZXJZ_17_A05_DZBCYXX_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[DYXXID]--党员信息ID
      ,a.[JZGJBSJID]--教工基本信息ID
      ,a.[DZBID]--党支部ID
      ,a.[DZBZWID]--党支部职位ID
      ,a.[TJJSID]--添加教师ID
      ,a.[TJSJ]--添加时间
      ,c.SCHOOLID as c_DYXX_SCHOOLID--党员信息表 学校
      ,c.JZGJBSJID as c_DYXX_JZGJBSJID--党员信息表 教工基本信息ID
      ,c.RDSJ as c_DYXX_RDSJ--党员信息表 入党时间
      ,c.RDDD as c_DYXX_RDDD--党员信息表 入党地点
      ,c.RDJSR as c_DYXX_RDJSR--党员信息表 入党介绍人
      ,c.DQZT as c_DYXX_DQZT--党员信息表 当前状态
      ,c.TJJSID as c_DYXX_TJJSID--党员信息表 添加教师ID
      ,c.TJSJ as c_DYXX_TJSJ--党员信息表 添加时间
      ,c.BZ as c_DYXX_BZ--党员信息表 备注
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
      ,e.SCHOOLID as e_DZBSJ_SCHOOLID--党支部数据表 学校
      ,e.DZBMC as e_DZBSJ_DZBMC--党支部数据表 党支部名称
      ,e.SS as e_DZBSJ_SS--党支部数据表 所属
      ,e.BZ as e_DZBSJ_BZ--党支部数据表 备注
      ,f.SCHOOLID as f_DZBZWSJ_SCHOOLID--党支部职位数据表 学校
      ,f.DZBID as f_DZBZWSJ_DZBID--党支部职位数据表 党支部ID
      ,f.ZWMC as f_DZBZWSJ_ZWMC--党支部职位数据表 职位名称
      ,f.GZNR as f_DZBZWSJ_GZNR--党支部职位数据表 工作内容
      ,f.BZ as f_DZBZWSJ_BZ--党支部职位数据表 备注
      ,g.SCHOOLID as g_JZGJBSJ_SCHOOLID--教职工基本数据子类表 学校名
      ,g.GH as g_JZGJBSJ_GH--教职工基本数据子类表 工号
      ,g.XM as g_JZGJBSJ_XM--教职工基本数据子类表 姓名
      ,g.YWXM as g_JZGJBSJ_YWXM--教职工基本数据子类表 英文姓名
      ,g.XMPY as g_JZGJBSJ_XMPY--教职工基本数据子类表 姓名拼音
      ,g.CYM as g_JZGJBSJ_CYM--教职工基本数据子类表 曾用名
      ,g.XBM as g_JZGJBSJ_XBM--教职工基本数据子类表 性别码
      ,[gb].MC as g_JZGJBSJ_XBM_MC--人的性别代码 名称
      ,g.CSRQ as g_JZGJBSJ_CSRQ--教职工基本数据子类表 出生日期
      ,g.CSDM as g_JZGJBSJ_CSDM--教职工基本数据子类表 出生地码
      ,[gc].MC as g_JZGJBSJ_CSDM_MC--中华人民共和国行政区划代码 名称
      ,g.JG as g_JZGJBSJ_JG--教职工基本数据子类表 籍贯
      ,g.MZM as g_JZGJBSJ_MZM--教职工基本数据子类表 民族码
      ,[gd].MZMC as g_JZGJBSJ_MZM_MZMC--中国各民族名称的罗马字母拼写法和代码 民族名称
      ,[gd].ZMDM as g_JZGJBSJ_MZM_ZMDM--中国各民族名称的罗马字母拼写法和代码 字母代码
      ,g.GJDQM as g_JZGJBSJ_GJDQM--教职工基本数据子类表 国籍/地区码
      ,[ge].GJDQMCJC as g_JZGJBSJ_GJDQM_GJDQMCJC--世界各国和地区名称代码 国家/地区名称简称
      ,[ge].EZMDM as g_JZGJBSJ_GJDQM_EZMDM--世界各国和地区名称代码 二字母代码
      ,[ge].SZMDM as g_JZGJBSJ_GJDQM_SZMDM--世界各国和地区名称代码 三字母代码
      ,g.SFZJLXM as g_JZGJBSJ_SFZJLXM--教职工基本数据子类表 身份证件类型码
      ,[gf].MC as g_JZGJBSJ_SFZJLXM_MC--身份证件类型代码表 名称
      ,g.SFZJH as g_JZGJBSJ_SFZJH--教职工基本数据子类表 身份证件号
      ,g.HYZKM as g_JZGJBSJ_HYZKM--教职工基本数据子类表 婚姻状况码
      ,[gg].MC as g_JZGJBSJ_HYZKM_MC--婚姻状况代码 名称
      ,g.GATQWM as g_JZGJBSJ_GATQWM--教职工基本数据子类表 港澳台侨外码
      ,[gh].MC as g_JZGJBSJ_GATQWM_MC--港澳台侨外代码表 名称
      ,[gh].SM as g_JZGJBSJ_GATQWM_SM--港澳台侨外代码表 说明
      ,g.ZZMMM as g_JZGJBSJ_ZZMMM--教职工基本数据子类表 政治面貌码
      ,[gi].MC as g_JZGJBSJ_ZZMMM_MC--政治面貌代码 名称
      ,[gi].JC as g_JZGJBSJ_ZZMMM_JC--政治面貌代码 简称
      ,g.JKZKM as g_JZGJBSJ_JKZKM--教职工基本数据子类表 健康状况码
      ,[gj].MC as g_JZGJBSJ_JKZKM_MC--健康状况1位数字代码 名称
      ,[gj].SM as g_JZGJBSJ_JKZKM_SM--健康状况1位数字代码 说明
      ,g.XYZJM as g_JZGJBSJ_XYZJM--教职工基本数据子类表 信仰宗教码
      ,[gk].MC as g_JZGJBSJ_XYZJM_MC--宗教信仰代码 名称
      ,g.XXM as g_JZGJBSJ_XXM--教职工基本数据子类表 血型码
      ,[gl].MC as g_JZGJBSJ_XXM_MC--血型代码表 名称
      ,[gl].JC as g_JZGJBSJ_XXM_JC--血型代码表 简称
      ,g.ZP as g_JZGJBSJ_ZP--教职工基本数据子类表 照片
      ,g.SFZJYXQ as g_JZGJBSJ_SFZJYXQ--教职工基本数据子类表 身份证件有效期
      ,g.JGH as g_JZGJBSJ_JGH--教职工基本数据子类表 机构号
      ,g.JTZZ as g_JZGJBSJ_JTZZ--教职工基本数据子类表 家庭住址
      ,g.XZZ as g_JZGJBSJ_XZZ--教职工基本数据子类表 现住址
      ,g.HKSZD as g_JZGJBSJ_HKSZD--教职工基本数据子类表 户口所在地
      ,g.HKXZM as g_JZGJBSJ_HKXZM--教职工基本数据子类表 户口性质码
      ,[gm].MC as g_JZGJBSJ_HKXZM_MC--户口类别代码 名称
      ,g.XLM as g_JZGJBSJ_XLM--教职工基本数据子类表 学历码
      ,[gn].MC as g_JZGJBSJ_XLM_MC--学历代码 名称
      ,g.GZNY as g_JZGJBSJ_GZNY--教职工基本数据子类表 参加工作年月
      ,g.LXNY as g_JZGJBSJ_LXNY--教职工基本数据子类表 来校年月
      ,g.CJNY as g_JZGJBSJ_CJNY--教职工基本数据子类表 从教年月
      ,g.BZLBM as g_JZGJBSJ_BZLBM--教职工基本数据子类表 编制类别码
      ,[go].MC as g_JZGJBSJ_BZLBM_MC--中小学编制类别代码表 名称
      ,g.DABH as g_JZGJBSJ_DABH--教职工基本数据子类表 档案编号
      ,g.DAWB as g_JZGJBSJ_DAWB--教职工基本数据子类表 档案文本
      ,g.TXDZ as g_JZGJBSJ_TXDZ--教职工基本数据子类表 通信地址
      ,g.LXDH as g_JZGJBSJ_LXDH--教职工基本数据子类表 联系电话
      ,g.YZBM as g_JZGJBSJ_YZBM--教职工基本数据子类表 邮政编码
      ,g.DZXX as g_JZGJBSJ_DZXX--教职工基本数据子类表 电子信箱
      ,g.ZYDZ as g_JZGJBSJ_ZYDZ--教职工基本数据子类表 主页地址
      ,g.TC as g_JZGJBSJ_TC--教职工基本数据子类表 特长
      ,g.GWZYM as g_JZGJBSJ_GWZYM--教职工基本数据子类表 岗位职业码
      ,[gp].MC as g_JZGJBSJ_GWZYM_MC--岗位职业代码表 名称
      ,g.ZYRKXD as g_JZGJBSJ_ZYRKXD--教职工基本数据子类表 主要任课学段
      ,[gq].MC as g_JZGJBSJ_ZYRKXD_MC--任课学段代码表 名称
      ,g.JZGLXID as g_JZGJBSJ_JZGLXID--教职工基本数据子类表 教职工类型ID
      ,g.XQ as g_JZGJBSJ_XQ--教职工基本数据子类表 校区
      ,g.ZGZC as g_JZGJBSJ_ZGZC--教职工基本数据子类表 最高职称
      ,g.PDSJ as g_JZGJBSJ_PDSJ--教职工基本数据子类表 评定时间
      ,g.XPZC as g_JZGJBSJ_XPZC--教职工基本数据子类表 现品职称
      ,g.PDESJ as g_JZGJBSJ_PDESJ--教职工基本数据子类表 聘得时间
      ,g.RBXQDW as g_JZGJBSJ_RBXQDW--教职工基本数据子类表 入本校前单位
      ,g.ZZZT as g_JZGJBSJ_ZZZT--教职工基本数据子类表 在职状态
      ,g.SZBM as g_JZGJBSJ_SZBM--教职工基本数据子类表 所在部门
      ,g.XZZW as g_JZGJBSJ_XZZW--教职工基本数据子类表 行政职务
      ,g.DH as g_JZGJBSJ_DH--教职工基本数据子类表 短号
      ,g.PTHDJ as g_JZGJBSJ_PTHDJ--教职工基本数据子类表 普通话等级
      ,g.JSZH as g_JZGJBSJ_JSZH--教职工基本数据子类表 教师证号
      ,g.JSJDJ as g_JZGJBSJ_JSJDJ--教职工基本数据子类表 计算机等级
      ,g.GGJSDJ as g_JZGJBSJ_GGJSDJ--教职工基本数据子类表 骨干教师等级
      ,g.RJXK as g_JZGJBSJ_RJXK--教职工基本数据子类表 任教学科
      ,g.SFRSDL as g_JZGJBSJ_SFRSDL--教职工基本数据子类表 是否人事代理
      ,g.NDKH as g_JZGJBSJ_NDKH--教职工基本数据子类表 年度考核
      ,g.XXJL as g_JZGJBSJ_XXJL--教职工基本数据子类表 学习经历
      ,g.GZJL as g_JZGJBSJ_GZJL--教职工基本数据子类表 工作经历
      ,g.JYQK as g_JZGJBSJ_JYQK--教职工基本数据子类表 教研情况
      ,g.GZYLJCQK as g_JZGJBSJ_GZYLJCQK--教职工基本数据子类表 工作以来奖惩情况
      ,g.JTZYCY as g_JZGJBSJ_JTZYCY--教职工基本数据子类表 家庭主要成员
      ,g.BZ as g_JZGJBSJ_BZ--教职工基本数据子类表 备注
      ,g.DYXLCD as g_JZGJBSJ_DYXLCD--教职工基本数据子类表 第一学历程度
      ,g.DYXLFS as g_JZGJBSJ_DYXLFS--教职工基本数据子类表 第一学历方式
      ,g.DYXLXZ as g_JZGJBSJ_DYXLXZ--教职工基本数据子类表 第一学历学制
      ,g.DYXLXW as g_JZGJBSJ_DYXLXW--教职工基本数据子类表 第一学历学位
      ,g.DYXLBYSJ as g_JZGJBSJ_DYXLBYSJ--教职工基本数据子类表 第一学历毕业时间
      ,g.DYXLBYXX as g_JZGJBSJ_DYXLBYXX--教职工基本数据子类表 第一学历毕业学校
      ,g.DYXLZY as g_JZGJBSJ_DYXLZY--教职工基本数据子类表 第一学历专业
      ,g.ZGXLCD as g_JZGJBSJ_ZGXLCD--教职工基本数据子类表 最高学历程度
      ,g.ZGXLFS as g_JZGJBSJ_ZGXLFS--教职工基本数据子类表 最高学历方式
      ,g.ZGXLXZ as g_JZGJBSJ_ZGXLXZ--教职工基本数据子类表 最高学历学制
      ,g.ZGXLXW as g_JZGJBSJ_ZGXLXW--教职工基本数据子类表 最高学历学位
      ,g.ZGXLBYSJ as g_JZGJBSJ_ZGXLBYSJ--教职工基本数据子类表 最高学历毕业时间
      ,g.ZGXLBYXX as g_JZGJBSJ_ZGXLBYXX--教职工基本数据子类表 最高学历毕业学校
      ,g.ZGXLZY as g_JZGJBSJ_ZGXLZY--教职工基本数据子类表 最高学历专业

FROM dbo.EDU_ZXJZ_17_A05_DZBCYXX AS a LEFT OUTER JOIN
      dbo.EDU_ZXJZ_17_A01_DYXX AS c ON a.DYXXID = c.ID /*党员信息ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZXJZ_01_01_JZGJBSJ AS d ON a.JZGJBSJID = d.ID /*教工基本信息ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZXJZ_17_A03_DZBSJ AS e ON a.DZBID = e.ID /*党支部ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZXJZ_17_A04_DZBZWSJ AS f ON a.DZBZWID = f.ID /*党支部职位ID*/ AND a.SCHOOLID = f.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZXJZ_01_01_JZGJBSJ AS g ON a.TJJSID = g.ID /*添加教师ID*/ AND a.SCHOOLID = g.SCHOOLID /*学校*/ LEFT OUTER JOIN
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
      dbo.EDU_JY_RKXD AS [dq] ON d.ZYRKXD = [dq].DM /*主要任课学段*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS [gb] ON g.XBM = [gb].DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [gc] ON g.CSDM = [gc].DM /*出生地码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS [gd] ON g.MZM = [gd].DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS [ge] ON g.GJDQM = [ge].DM /*国籍/地区码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS [gf] ON g.SFZJLXM = [gf].DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS [gg] ON g.HYZKM = [gg].DM /*婚姻状况码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS [gh] ON g.GATQWM = [gh].DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS [gi] ON g.ZZMMM = [gi].DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS [gj] ON g.JKZKM = [gj].DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS [gk] ON g.XYZJM = [gk].DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS [gl] ON g.XXM = [gl].DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS [gm] ON g.HKXZM = [gm].DM /*户口性质码*/ LEFT OUTER JOIN
      dbo.EDU_GB_XL AS [gn] ON g.XLM = [gn].DM /*学历码*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXBZLB AS [go] ON g.BZLBM = [go].DM /*编制类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWZY AS [gp] ON g.GWZYM = [gp].DM /*岗位职业码*/ LEFT OUTER JOIN
      dbo.EDU_JY_RKXD AS [gq] ON g.ZYRKXD = [gq].DM /*主要任课学段*/
GO
