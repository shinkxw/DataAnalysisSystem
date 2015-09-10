
--班级数据类表
CREATE VIEW [dbo].[VIEW_EDU_ZXXX_03_01_BJ_DISP]
AS
SELECT a.[SCHOOLID]--学校名
      ,a.[BH]--班号
      ,a.[NJ]--年级号
      ,a.[BJ]--班级名称
      ,a.[JBNY]--建班年月
      ,a.[BZRGH]--班主任工号
      ,a.[BZXH]--班长学号
      ,a.[BJRYCH]--班级荣誉称号
      ,a.[XZ]--学制
      ,a.[BJLXM]--班级类型码
      ,a.[WLLX]--文理类型
      ,a.[BYRQ]--毕业日期
      ,a.[SFSSMZSYJXB]--是否少数民族双语教学班
      ,a.[SYJXMSM]--双语教学模式码
      ,a.[BZRID]--班主任ID
      ,a.[ZT]--状态
      ,a.[PLSX]--排列顺序
      ,a.[BJLBID]--班级类别ID
      ,a.[FBZRID]--副班主任ID
      ,c.SCHOOLID as c_NJ_SCHOOLID--年级数据类表 学校名
      ,c.NJMC as c_NJ_NJMC--年级数据类表 年级名称
      ,c.ZT as c_NJ_ZT--年级数据类表 状态
      ,c.PLSX as c_NJ_PLSX--年级数据类表 排列顺序
      ,d.MC as d_ZXXBJLX_MC--中小学班级类型代码表 名称
      ,e.MC as e_SFBZ_MC--是否标志代码表 名称
      ,f.MC as f_SSMZSYJXMS_MC--少数民族双语教学模式代码表 名称
      ,f.SM as f_SSMZSYJXMS_SM--少数民族双语教学模式代码表 说明
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
      ,h.SCHOOLID as h_BJLB_SCHOOLID--班级类别表 学校
      ,h.LBMC as h_BJLB_LBMC--班级类别表 类别名称
      ,i.SCHOOLID as i_JZGJBSJ_SCHOOLID--教职工基本数据子类表 学校名
      ,i.GH as i_JZGJBSJ_GH--教职工基本数据子类表 工号
      ,i.XM as i_JZGJBSJ_XM--教职工基本数据子类表 姓名
      ,i.YWXM as i_JZGJBSJ_YWXM--教职工基本数据子类表 英文姓名
      ,i.XMPY as i_JZGJBSJ_XMPY--教职工基本数据子类表 姓名拼音
      ,i.CYM as i_JZGJBSJ_CYM--教职工基本数据子类表 曾用名
      ,i.XBM as i_JZGJBSJ_XBM--教职工基本数据子类表 性别码
      ,[ib].MC as i_JZGJBSJ_XBM_MC--人的性别代码 名称
      ,i.CSRQ as i_JZGJBSJ_CSRQ--教职工基本数据子类表 出生日期
      ,i.CSDM as i_JZGJBSJ_CSDM--教职工基本数据子类表 出生地码
      ,[ic].MC as i_JZGJBSJ_CSDM_MC--中华人民共和国行政区划代码 名称
      ,i.JG as i_JZGJBSJ_JG--教职工基本数据子类表 籍贯
      ,i.MZM as i_JZGJBSJ_MZM--教职工基本数据子类表 民族码
      ,[id].MZMC as i_JZGJBSJ_MZM_MZMC--中国各民族名称的罗马字母拼写法和代码 民族名称
      ,[id].ZMDM as i_JZGJBSJ_MZM_ZMDM--中国各民族名称的罗马字母拼写法和代码 字母代码
      ,i.GJDQM as i_JZGJBSJ_GJDQM--教职工基本数据子类表 国籍/地区码
      ,[ie].GJDQMCJC as i_JZGJBSJ_GJDQM_GJDQMCJC--世界各国和地区名称代码 国家/地区名称简称
      ,[ie].EZMDM as i_JZGJBSJ_GJDQM_EZMDM--世界各国和地区名称代码 二字母代码
      ,[ie].SZMDM as i_JZGJBSJ_GJDQM_SZMDM--世界各国和地区名称代码 三字母代码
      ,i.SFZJLXM as i_JZGJBSJ_SFZJLXM--教职工基本数据子类表 身份证件类型码
      ,[if].MC as i_JZGJBSJ_SFZJLXM_MC--身份证件类型代码表 名称
      ,i.SFZJH as i_JZGJBSJ_SFZJH--教职工基本数据子类表 身份证件号
      ,i.HYZKM as i_JZGJBSJ_HYZKM--教职工基本数据子类表 婚姻状况码
      ,[ig].MC as i_JZGJBSJ_HYZKM_MC--婚姻状况代码 名称
      ,i.GATQWM as i_JZGJBSJ_GATQWM--教职工基本数据子类表 港澳台侨外码
      ,[ih].MC as i_JZGJBSJ_GATQWM_MC--港澳台侨外代码表 名称
      ,[ih].SM as i_JZGJBSJ_GATQWM_SM--港澳台侨外代码表 说明
      ,i.ZZMMM as i_JZGJBSJ_ZZMMM--教职工基本数据子类表 政治面貌码
      ,[ii].MC as i_JZGJBSJ_ZZMMM_MC--政治面貌代码 名称
      ,[ii].JC as i_JZGJBSJ_ZZMMM_JC--政治面貌代码 简称
      ,i.JKZKM as i_JZGJBSJ_JKZKM--教职工基本数据子类表 健康状况码
      ,[ij].MC as i_JZGJBSJ_JKZKM_MC--健康状况1位数字代码 名称
      ,[ij].SM as i_JZGJBSJ_JKZKM_SM--健康状况1位数字代码 说明
      ,i.XYZJM as i_JZGJBSJ_XYZJM--教职工基本数据子类表 信仰宗教码
      ,[ik].MC as i_JZGJBSJ_XYZJM_MC--宗教信仰代码 名称
      ,i.XXM as i_JZGJBSJ_XXM--教职工基本数据子类表 血型码
      ,[il].MC as i_JZGJBSJ_XXM_MC--血型代码表 名称
      ,[il].JC as i_JZGJBSJ_XXM_JC--血型代码表 简称
      ,i.ZP as i_JZGJBSJ_ZP--教职工基本数据子类表 照片
      ,i.SFZJYXQ as i_JZGJBSJ_SFZJYXQ--教职工基本数据子类表 身份证件有效期
      ,i.JGH as i_JZGJBSJ_JGH--教职工基本数据子类表 机构号
      ,i.JTZZ as i_JZGJBSJ_JTZZ--教职工基本数据子类表 家庭住址
      ,i.XZZ as i_JZGJBSJ_XZZ--教职工基本数据子类表 现住址
      ,i.HKSZD as i_JZGJBSJ_HKSZD--教职工基本数据子类表 户口所在地
      ,i.HKXZM as i_JZGJBSJ_HKXZM--教职工基本数据子类表 户口性质码
      ,[im].MC as i_JZGJBSJ_HKXZM_MC--户口类别代码 名称
      ,i.XLM as i_JZGJBSJ_XLM--教职工基本数据子类表 学历码
      ,[in].MC as i_JZGJBSJ_XLM_MC--学历代码 名称
      ,i.GZNY as i_JZGJBSJ_GZNY--教职工基本数据子类表 参加工作年月
      ,i.LXNY as i_JZGJBSJ_LXNY--教职工基本数据子类表 来校年月
      ,i.CJNY as i_JZGJBSJ_CJNY--教职工基本数据子类表 从教年月
      ,i.BZLBM as i_JZGJBSJ_BZLBM--教职工基本数据子类表 编制类别码
      ,[io].MC as i_JZGJBSJ_BZLBM_MC--中小学编制类别代码表 名称
      ,i.DABH as i_JZGJBSJ_DABH--教职工基本数据子类表 档案编号
      ,i.DAWB as i_JZGJBSJ_DAWB--教职工基本数据子类表 档案文本
      ,i.TXDZ as i_JZGJBSJ_TXDZ--教职工基本数据子类表 通信地址
      ,i.LXDH as i_JZGJBSJ_LXDH--教职工基本数据子类表 联系电话
      ,i.YZBM as i_JZGJBSJ_YZBM--教职工基本数据子类表 邮政编码
      ,i.DZXX as i_JZGJBSJ_DZXX--教职工基本数据子类表 电子信箱
      ,i.ZYDZ as i_JZGJBSJ_ZYDZ--教职工基本数据子类表 主页地址
      ,i.TC as i_JZGJBSJ_TC--教职工基本数据子类表 特长
      ,i.GWZYM as i_JZGJBSJ_GWZYM--教职工基本数据子类表 岗位职业码
      ,[ip].MC as i_JZGJBSJ_GWZYM_MC--岗位职业代码表 名称
      ,i.ZYRKXD as i_JZGJBSJ_ZYRKXD--教职工基本数据子类表 主要任课学段
      ,[iq].MC as i_JZGJBSJ_ZYRKXD_MC--任课学段代码表 名称
      ,i.JZGLXID as i_JZGJBSJ_JZGLXID--教职工基本数据子类表 教职工类型ID
      ,i.XQ as i_JZGJBSJ_XQ--教职工基本数据子类表 校区
      ,i.ZGZC as i_JZGJBSJ_ZGZC--教职工基本数据子类表 最高职称
      ,i.PDSJ as i_JZGJBSJ_PDSJ--教职工基本数据子类表 评定时间
      ,i.XPZC as i_JZGJBSJ_XPZC--教职工基本数据子类表 现品职称
      ,i.PDESJ as i_JZGJBSJ_PDESJ--教职工基本数据子类表 聘得时间
      ,i.RBXQDW as i_JZGJBSJ_RBXQDW--教职工基本数据子类表 入本校前单位
      ,i.ZZZT as i_JZGJBSJ_ZZZT--教职工基本数据子类表 在职状态
      ,i.SZBM as i_JZGJBSJ_SZBM--教职工基本数据子类表 所在部门
      ,i.XZZW as i_JZGJBSJ_XZZW--教职工基本数据子类表 行政职务
      ,i.DH as i_JZGJBSJ_DH--教职工基本数据子类表 短号
      ,i.PTHDJ as i_JZGJBSJ_PTHDJ--教职工基本数据子类表 普通话等级
      ,i.JSZH as i_JZGJBSJ_JSZH--教职工基本数据子类表 教师证号
      ,i.JSJDJ as i_JZGJBSJ_JSJDJ--教职工基本数据子类表 计算机等级
      ,i.GGJSDJ as i_JZGJBSJ_GGJSDJ--教职工基本数据子类表 骨干教师等级
      ,i.RJXK as i_JZGJBSJ_RJXK--教职工基本数据子类表 任教学科
      ,i.SFRSDL as i_JZGJBSJ_SFRSDL--教职工基本数据子类表 是否人事代理
      ,i.NDKH as i_JZGJBSJ_NDKH--教职工基本数据子类表 年度考核
      ,i.XXJL as i_JZGJBSJ_XXJL--教职工基本数据子类表 学习经历
      ,i.GZJL as i_JZGJBSJ_GZJL--教职工基本数据子类表 工作经历
      ,i.JYQK as i_JZGJBSJ_JYQK--教职工基本数据子类表 教研情况
      ,i.GZYLJCQK as i_JZGJBSJ_GZYLJCQK--教职工基本数据子类表 工作以来奖惩情况
      ,i.JTZYCY as i_JZGJBSJ_JTZYCY--教职工基本数据子类表 家庭主要成员
      ,i.BZ as i_JZGJBSJ_BZ--教职工基本数据子类表 备注
      ,i.DYXLCD as i_JZGJBSJ_DYXLCD--教职工基本数据子类表 第一学历程度
      ,i.DYXLFS as i_JZGJBSJ_DYXLFS--教职工基本数据子类表 第一学历方式
      ,i.DYXLXZ as i_JZGJBSJ_DYXLXZ--教职工基本数据子类表 第一学历学制
      ,i.DYXLXW as i_JZGJBSJ_DYXLXW--教职工基本数据子类表 第一学历学位
      ,i.DYXLBYSJ as i_JZGJBSJ_DYXLBYSJ--教职工基本数据子类表 第一学历毕业时间
      ,i.DYXLBYXX as i_JZGJBSJ_DYXLBYXX--教职工基本数据子类表 第一学历毕业学校
      ,i.DYXLZY as i_JZGJBSJ_DYXLZY--教职工基本数据子类表 第一学历专业
      ,i.ZGXLCD as i_JZGJBSJ_ZGXLCD--教职工基本数据子类表 最高学历程度
      ,i.ZGXLFS as i_JZGJBSJ_ZGXLFS--教职工基本数据子类表 最高学历方式
      ,i.ZGXLXZ as i_JZGJBSJ_ZGXLXZ--教职工基本数据子类表 最高学历学制
      ,i.ZGXLXW as i_JZGJBSJ_ZGXLXW--教职工基本数据子类表 最高学历学位
      ,i.ZGXLBYSJ as i_JZGJBSJ_ZGXLBYSJ--教职工基本数据子类表 最高学历毕业时间
      ,i.ZGXLBYXX as i_JZGJBSJ_ZGXLBYXX--教职工基本数据子类表 最高学历毕业学校
      ,i.ZGXLZY as i_JZGJBSJ_ZGXLZY--教职工基本数据子类表 最高学历专业

FROM dbo.EDU_ZXXX_03_01_BJ AS a LEFT OUTER JOIN
      dbo.EDU_ZXXX_02_01_NJ AS c ON a.NJ = c.NJ /*年级号*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXBJLX AS d ON a.BJLXM = d.DM /*班级类型码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS e ON a.SFSSMZSYJXB = e.DM /*是否少数民族双语教学班*/ LEFT OUTER JOIN
      dbo.EDU_JY_SSMZSYJXMS AS f ON a.SYJXMSM = f.DM /*双语教学模式码*/ LEFT OUTER JOIN
      dbo.EDU_ZXJZ_01_01_JZGJBSJ AS g ON a.BZRID = g.ID /*班主任ID*/ AND a.SCHOOLID = g.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_03_A01_BJLB AS h ON a.BJLBID = h.ID /*班级类别ID*/ AND a.SCHOOLID = h.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZXJZ_01_01_JZGJBSJ AS i ON a.FBZRID = i.ID /*副班主任ID*/ AND a.SCHOOLID = i.SCHOOLID /*学校名*/ LEFT OUTER JOIN
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
      dbo.EDU_JY_RKXD AS [gq] ON g.ZYRKXD = [gq].DM /*主要任课学段*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS [ib] ON i.XBM = [ib].DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [ic] ON i.CSDM = [ic].DM /*出生地码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS [id] ON i.MZM = [id].DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS [ie] ON i.GJDQM = [ie].DM /*国籍/地区码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS [if] ON i.SFZJLXM = [if].DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS [ig] ON i.HYZKM = [ig].DM /*婚姻状况码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS [ih] ON i.GATQWM = [ih].DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS [ii] ON i.ZZMMM = [ii].DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS [ij] ON i.JKZKM = [ij].DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS [ik] ON i.XYZJM = [ik].DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS [il] ON i.XXM = [il].DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS [im] ON i.HKXZM = [im].DM /*户口性质码*/ LEFT OUTER JOIN
      dbo.EDU_GB_XL AS [in] ON i.XLM = [in].DM /*学历码*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXBZLB AS [io] ON i.BZLBM = [io].DM /*编制类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWZY AS [ip] ON i.GWZYM = [ip].DM /*岗位职业码*/ LEFT OUTER JOIN
      dbo.EDU_JY_RKXD AS [iq] ON i.ZYRKXD = [iq].DM /*主要任课学段*/
GO
