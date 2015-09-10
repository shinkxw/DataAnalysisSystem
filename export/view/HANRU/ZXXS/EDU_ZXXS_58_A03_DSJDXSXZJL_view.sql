
--导师结对学生选择记录表
CREATE VIEW [dbo].[VIEW_EDU_ZXXS_58_A03_DSJDXSXZJL_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[XQID]--学期ID
      ,a.[XSID]--学生ID
      ,a.[JS1ID]--教师1ID
      ,a.[JS2ID]--教师2ID
      ,a.[DS1ID]--导师1ID
      ,a.[DS2ID]--导师2ID
      ,a.[XZJG1]--选择结果1
      ,a.[XZJG2]--选择结果2
      ,c.SCHOOLID as c_XQ_SCHOOLID--学期数据表 学校名
      ,c.XNID as c_XQ_XNID--学期数据表 学年
      ,c.XQM as c_XQ_XQM--学期数据表 学期码
      ,[cb].MC as c_XQ_XQM_MC--学期代码表 名称
      ,c.XQMC as c_XQ_XQMC--学期数据表 学期名称
      ,c.XQKSRQ as c_XQ_XQKSRQ--学期数据表 学期开始日期
      ,c.XQJSRQ as c_XQ_XQJSRQ--学期数据表 学期结束日期
      ,c.BaseProjectInfoID as c_XQ_BaseProjectInfoID--学期数据表 表BaseProjectInfo外键
      ,d.SCHOOLID as d_XSXX_SCHOOLID--学生基本数据子类表 学校名
      ,d.XH as d_XSXX_XH--学生基本数据子类表 学号
      ,d.XM as d_XSXX_XM--学生基本数据子类表 姓名
      ,d.YWXM as d_XSXX_YWXM--学生基本数据子类表 英文姓名
      ,d.XMPY as d_XSXX_XMPY--学生基本数据子类表 姓名拼音
      ,d.CYM as d_XSXX_CYM--学生基本数据子类表 曾用名
      ,d.XBM as d_XSXX_XBM--学生基本数据子类表 性别码
      ,[db].MC as d_XSXX_XBM_MC--人的性别代码 名称
      ,d.CSRQ as d_XSXX_CSRQ--学生基本数据子类表 出生日期
      ,d.CSDM as d_XSXX_CSDM--学生基本数据子类表 出生地码
      ,[dc].MC as d_XSXX_CSDM_MC--中华人民共和国行政区划代码 名称
      ,d.JG as d_XSXX_JG--学生基本数据子类表 籍贯
      ,d.MZM as d_XSXX_MZM--学生基本数据子类表 民族码
      ,[dd].MZMC as d_XSXX_MZM_MZMC--中国各民族名称的罗马字母拼写法和代码 民族名称
      ,[dd].ZMDM as d_XSXX_MZM_ZMDM--中国各民族名称的罗马字母拼写法和代码 字母代码
      ,d.GJDQM as d_XSXX_GJDQM--学生基本数据子类表 国籍/地区码
      ,[de].GJDQMCJC as d_XSXX_GJDQM_GJDQMCJC--世界各国和地区名称代码 国家/地区名称简称
      ,[de].EZMDM as d_XSXX_GJDQM_EZMDM--世界各国和地区名称代码 二字母代码
      ,[de].SZMDM as d_XSXX_GJDQM_SZMDM--世界各国和地区名称代码 三字母代码
      ,d.SFZJLXM as d_XSXX_SFZJLXM--学生基本数据子类表 身份证件类型码
      ,[df].MC as d_XSXX_SFZJLXM_MC--身份证件类型代码表 名称
      ,d.SFZJH as d_XSXX_SFZJH--学生基本数据子类表 身份证件号
      ,d.HYZKM as d_XSXX_HYZKM--学生基本数据子类表 婚姻状况码
      ,[dg].MC as d_XSXX_HYZKM_MC--婚姻状况代码 名称
      ,d.GATQWM as d_XSXX_GATQWM--学生基本数据子类表 港澳台侨外码
      ,[dh].MC as d_XSXX_GATQWM_MC--港澳台侨外代码表 名称
      ,[dh].SM as d_XSXX_GATQWM_SM--港澳台侨外代码表 说明
      ,d.ZZMMM as d_XSXX_ZZMMM--学生基本数据子类表 政治面貌码
      ,[di].MC as d_XSXX_ZZMMM_MC--政治面貌代码 名称
      ,[di].JC as d_XSXX_ZZMMM_JC--政治面貌代码 简称
      ,d.JKZKM as d_XSXX_JKZKM--学生基本数据子类表 健康状况码
      ,[dj].MC as d_XSXX_JKZKM_MC--健康状况1位数字代码 名称
      ,[dj].SM as d_XSXX_JKZKM_SM--健康状况1位数字代码 说明
      ,d.XYZJM as d_XSXX_XYZJM--学生基本数据子类表 信仰宗教码
      ,[dk].MC as d_XSXX_XYZJM_MC--宗教信仰代码 名称
      ,d.XXM as d_XSXX_XXM--学生基本数据子类表 血型码
      ,[dl].MC as d_XSXX_XXM_MC--血型代码表 名称
      ,[dl].JC as d_XSXX_XXM_JC--血型代码表 简称
      ,d.ZP as d_XSXX_ZP--学生基本数据子类表 照片
      ,d.SFZJYXQ as d_XSXX_SFZJYXQ--学生基本数据子类表 身份证件有效期
      ,d.DSZYBZ as d_XSXX_DSZYBZ--学生基本数据子类表 独生子女标志
      ,[dm].MC as d_XSXX_DSZYBZ_MC--是否标志代码表 名称
      ,d.RXNY as d_XSXX_RXNY--学生基本数据子类表 入学年月
      ,d.NJ as d_XSXX_NJ--学生基本数据子类表 年级
      ,d.BH as d_XSXX_BH--学生基本数据子类表 班号
      ,d.XSLBM as d_XSXX_XSLBM--学生基本数据子类表 学生类别码
      ,[dn].MC as d_XSXX_XSLBM_MC--学生类别代码表 名称
      ,[dn].SM as d_XSXX_XSLBM_SM--学生类别代码表 说明
      ,d.XZZ as d_XSXX_XZZ--学生基本数据子类表 现住址
      ,d.HKSZD as d_XSXX_HKSZD--学生基本数据子类表 户口所在地
      ,d.HKXZM as d_XSXX_HKXZM--学生基本数据子类表 户口性质码
      ,[do].MC as d_XSXX_HKXZM_MC--户口类别代码 名称
      ,d.SFLDRK as d_XSXX_SFLDRK--学生基本数据子类表 是否流动人口
      ,[dp].MC as d_XSXX_SFLDRK_MC--是否标志代码表 名称
      ,d.TC as d_XSXX_TC--学生基本数据子类表 特长
      ,d.LXDH as d_XSXX_LXDH--学生基本数据子类表 联系电话
      ,d.TXDZ as d_XSXX_TXDZ--学生基本数据子类表 通信地址
      ,d.YZBM as d_XSXX_YZBM--学生基本数据子类表 邮政编码
      ,d.DZXX as d_XSXX_DZXX--学生基本数据子类表 电子信箱
      ,d.ZYDZ as d_XSXX_ZYDZ--学生基本数据子类表 主页地址
      ,d.XJH as d_XSXX_XJH--学生基本数据子类表 学籍号
      ,d.XSDQZTM as d_XSXX_XSDQZTM--学生基本数据子类表 学生当前状态码
      ,[dq].MC as d_XSXX_XSDQZTM_MC--学生当前状态代码表 名称
      ,[dq].SM as d_XSXX_XSDQZTM_SM--学生当前状态代码表 说明
      ,d.JHRY as d_XSXX_JHRY--学生基本数据子类表 监护人一
      ,d.JHRE as d_XSXX_JHRE--学生基本数据子类表 监护人二
      ,e.SCHOOLID as e_JZGJBSJ_SCHOOLID--教职工基本数据子类表 学校名
      ,e.GH as e_JZGJBSJ_GH--教职工基本数据子类表 工号
      ,e.XM as e_JZGJBSJ_XM--教职工基本数据子类表 姓名
      ,e.YWXM as e_JZGJBSJ_YWXM--教职工基本数据子类表 英文姓名
      ,e.XMPY as e_JZGJBSJ_XMPY--教职工基本数据子类表 姓名拼音
      ,e.CYM as e_JZGJBSJ_CYM--教职工基本数据子类表 曾用名
      ,e.XBM as e_JZGJBSJ_XBM--教职工基本数据子类表 性别码
      ,[eb].MC as e_JZGJBSJ_XBM_MC--人的性别代码 名称
      ,e.CSRQ as e_JZGJBSJ_CSRQ--教职工基本数据子类表 出生日期
      ,e.CSDM as e_JZGJBSJ_CSDM--教职工基本数据子类表 出生地码
      ,[ec].MC as e_JZGJBSJ_CSDM_MC--中华人民共和国行政区划代码 名称
      ,e.JG as e_JZGJBSJ_JG--教职工基本数据子类表 籍贯
      ,e.MZM as e_JZGJBSJ_MZM--教职工基本数据子类表 民族码
      ,[ed].MZMC as e_JZGJBSJ_MZM_MZMC--中国各民族名称的罗马字母拼写法和代码 民族名称
      ,[ed].ZMDM as e_JZGJBSJ_MZM_ZMDM--中国各民族名称的罗马字母拼写法和代码 字母代码
      ,e.GJDQM as e_JZGJBSJ_GJDQM--教职工基本数据子类表 国籍/地区码
      ,[ee].GJDQMCJC as e_JZGJBSJ_GJDQM_GJDQMCJC--世界各国和地区名称代码 国家/地区名称简称
      ,[ee].EZMDM as e_JZGJBSJ_GJDQM_EZMDM--世界各国和地区名称代码 二字母代码
      ,[ee].SZMDM as e_JZGJBSJ_GJDQM_SZMDM--世界各国和地区名称代码 三字母代码
      ,e.SFZJLXM as e_JZGJBSJ_SFZJLXM--教职工基本数据子类表 身份证件类型码
      ,[ef].MC as e_JZGJBSJ_SFZJLXM_MC--身份证件类型代码表 名称
      ,e.SFZJH as e_JZGJBSJ_SFZJH--教职工基本数据子类表 身份证件号
      ,e.HYZKM as e_JZGJBSJ_HYZKM--教职工基本数据子类表 婚姻状况码
      ,[eg].MC as e_JZGJBSJ_HYZKM_MC--婚姻状况代码 名称
      ,e.GATQWM as e_JZGJBSJ_GATQWM--教职工基本数据子类表 港澳台侨外码
      ,[eh].MC as e_JZGJBSJ_GATQWM_MC--港澳台侨外代码表 名称
      ,[eh].SM as e_JZGJBSJ_GATQWM_SM--港澳台侨外代码表 说明
      ,e.ZZMMM as e_JZGJBSJ_ZZMMM--教职工基本数据子类表 政治面貌码
      ,[ei].MC as e_JZGJBSJ_ZZMMM_MC--政治面貌代码 名称
      ,[ei].JC as e_JZGJBSJ_ZZMMM_JC--政治面貌代码 简称
      ,e.JKZKM as e_JZGJBSJ_JKZKM--教职工基本数据子类表 健康状况码
      ,[ej].MC as e_JZGJBSJ_JKZKM_MC--健康状况1位数字代码 名称
      ,[ej].SM as e_JZGJBSJ_JKZKM_SM--健康状况1位数字代码 说明
      ,e.XYZJM as e_JZGJBSJ_XYZJM--教职工基本数据子类表 信仰宗教码
      ,[ek].MC as e_JZGJBSJ_XYZJM_MC--宗教信仰代码 名称
      ,e.XXM as e_JZGJBSJ_XXM--教职工基本数据子类表 血型码
      ,[el].MC as e_JZGJBSJ_XXM_MC--血型代码表 名称
      ,[el].JC as e_JZGJBSJ_XXM_JC--血型代码表 简称
      ,e.ZP as e_JZGJBSJ_ZP--教职工基本数据子类表 照片
      ,e.SFZJYXQ as e_JZGJBSJ_SFZJYXQ--教职工基本数据子类表 身份证件有效期
      ,e.JGH as e_JZGJBSJ_JGH--教职工基本数据子类表 机构号
      ,e.JTZZ as e_JZGJBSJ_JTZZ--教职工基本数据子类表 家庭住址
      ,e.XZZ as e_JZGJBSJ_XZZ--教职工基本数据子类表 现住址
      ,e.HKSZD as e_JZGJBSJ_HKSZD--教职工基本数据子类表 户口所在地
      ,e.HKXZM as e_JZGJBSJ_HKXZM--教职工基本数据子类表 户口性质码
      ,[em].MC as e_JZGJBSJ_HKXZM_MC--户口类别代码 名称
      ,e.XLM as e_JZGJBSJ_XLM--教职工基本数据子类表 学历码
      ,[en].MC as e_JZGJBSJ_XLM_MC--学历代码 名称
      ,e.GZNY as e_JZGJBSJ_GZNY--教职工基本数据子类表 参加工作年月
      ,e.LXNY as e_JZGJBSJ_LXNY--教职工基本数据子类表 来校年月
      ,e.CJNY as e_JZGJBSJ_CJNY--教职工基本数据子类表 从教年月
      ,e.BZLBM as e_JZGJBSJ_BZLBM--教职工基本数据子类表 编制类别码
      ,[eo].MC as e_JZGJBSJ_BZLBM_MC--中小学编制类别代码表 名称
      ,e.DABH as e_JZGJBSJ_DABH--教职工基本数据子类表 档案编号
      ,e.DAWB as e_JZGJBSJ_DAWB--教职工基本数据子类表 档案文本
      ,e.TXDZ as e_JZGJBSJ_TXDZ--教职工基本数据子类表 通信地址
      ,e.LXDH as e_JZGJBSJ_LXDH--教职工基本数据子类表 联系电话
      ,e.YZBM as e_JZGJBSJ_YZBM--教职工基本数据子类表 邮政编码
      ,e.DZXX as e_JZGJBSJ_DZXX--教职工基本数据子类表 电子信箱
      ,e.ZYDZ as e_JZGJBSJ_ZYDZ--教职工基本数据子类表 主页地址
      ,e.TC as e_JZGJBSJ_TC--教职工基本数据子类表 特长
      ,e.GWZYM as e_JZGJBSJ_GWZYM--教职工基本数据子类表 岗位职业码
      ,[ep].MC as e_JZGJBSJ_GWZYM_MC--岗位职业代码表 名称
      ,e.ZYRKXD as e_JZGJBSJ_ZYRKXD--教职工基本数据子类表 主要任课学段
      ,[eq].MC as e_JZGJBSJ_ZYRKXD_MC--任课学段代码表 名称
      ,e.JZGLXID as e_JZGJBSJ_JZGLXID--教职工基本数据子类表 教职工类型ID
      ,e.XQ as e_JZGJBSJ_XQ--教职工基本数据子类表 校区
      ,e.ZGZC as e_JZGJBSJ_ZGZC--教职工基本数据子类表 最高职称
      ,e.PDSJ as e_JZGJBSJ_PDSJ--教职工基本数据子类表 评定时间
      ,e.XPZC as e_JZGJBSJ_XPZC--教职工基本数据子类表 现品职称
      ,e.PDESJ as e_JZGJBSJ_PDESJ--教职工基本数据子类表 聘得时间
      ,e.RBXQDW as e_JZGJBSJ_RBXQDW--教职工基本数据子类表 入本校前单位
      ,e.ZZZT as e_JZGJBSJ_ZZZT--教职工基本数据子类表 在职状态
      ,e.SZBM as e_JZGJBSJ_SZBM--教职工基本数据子类表 所在部门
      ,e.XZZW as e_JZGJBSJ_XZZW--教职工基本数据子类表 行政职务
      ,e.DH as e_JZGJBSJ_DH--教职工基本数据子类表 短号
      ,e.PTHDJ as e_JZGJBSJ_PTHDJ--教职工基本数据子类表 普通话等级
      ,e.JSZH as e_JZGJBSJ_JSZH--教职工基本数据子类表 教师证号
      ,e.JSJDJ as e_JZGJBSJ_JSJDJ--教职工基本数据子类表 计算机等级
      ,e.GGJSDJ as e_JZGJBSJ_GGJSDJ--教职工基本数据子类表 骨干教师等级
      ,e.RJXK as e_JZGJBSJ_RJXK--教职工基本数据子类表 任教学科
      ,e.SFRSDL as e_JZGJBSJ_SFRSDL--教职工基本数据子类表 是否人事代理
      ,e.NDKH as e_JZGJBSJ_NDKH--教职工基本数据子类表 年度考核
      ,e.XXJL as e_JZGJBSJ_XXJL--教职工基本数据子类表 学习经历
      ,e.GZJL as e_JZGJBSJ_GZJL--教职工基本数据子类表 工作经历
      ,e.JYQK as e_JZGJBSJ_JYQK--教职工基本数据子类表 教研情况
      ,e.GZYLJCQK as e_JZGJBSJ_GZYLJCQK--教职工基本数据子类表 工作以来奖惩情况
      ,e.JTZYCY as e_JZGJBSJ_JTZYCY--教职工基本数据子类表 家庭主要成员
      ,e.BZ as e_JZGJBSJ_BZ--教职工基本数据子类表 备注
      ,e.DYXLCD as e_JZGJBSJ_DYXLCD--教职工基本数据子类表 第一学历程度
      ,e.DYXLFS as e_JZGJBSJ_DYXLFS--教职工基本数据子类表 第一学历方式
      ,e.DYXLXZ as e_JZGJBSJ_DYXLXZ--教职工基本数据子类表 第一学历学制
      ,e.DYXLXW as e_JZGJBSJ_DYXLXW--教职工基本数据子类表 第一学历学位
      ,e.DYXLBYSJ as e_JZGJBSJ_DYXLBYSJ--教职工基本数据子类表 第一学历毕业时间
      ,e.DYXLBYXX as e_JZGJBSJ_DYXLBYXX--教职工基本数据子类表 第一学历毕业学校
      ,e.DYXLZY as e_JZGJBSJ_DYXLZY--教职工基本数据子类表 第一学历专业
      ,e.ZGXLCD as e_JZGJBSJ_ZGXLCD--教职工基本数据子类表 最高学历程度
      ,e.ZGXLFS as e_JZGJBSJ_ZGXLFS--教职工基本数据子类表 最高学历方式
      ,e.ZGXLXZ as e_JZGJBSJ_ZGXLXZ--教职工基本数据子类表 最高学历学制
      ,e.ZGXLXW as e_JZGJBSJ_ZGXLXW--教职工基本数据子类表 最高学历学位
      ,e.ZGXLBYSJ as e_JZGJBSJ_ZGXLBYSJ--教职工基本数据子类表 最高学历毕业时间
      ,e.ZGXLBYXX as e_JZGJBSJ_ZGXLBYXX--教职工基本数据子类表 最高学历毕业学校
      ,e.ZGXLZY as e_JZGJBSJ_ZGXLZY--教职工基本数据子类表 最高学历专业
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
      ,f.DYXLCD as f_JZGJBSJ_DYXLCD--教职工基本数据子类表 第一学历程度
      ,f.DYXLFS as f_JZGJBSJ_DYXLFS--教职工基本数据子类表 第一学历方式
      ,f.DYXLXZ as f_JZGJBSJ_DYXLXZ--教职工基本数据子类表 第一学历学制
      ,f.DYXLXW as f_JZGJBSJ_DYXLXW--教职工基本数据子类表 第一学历学位
      ,f.DYXLBYSJ as f_JZGJBSJ_DYXLBYSJ--教职工基本数据子类表 第一学历毕业时间
      ,f.DYXLBYXX as f_JZGJBSJ_DYXLBYXX--教职工基本数据子类表 第一学历毕业学校
      ,f.DYXLZY as f_JZGJBSJ_DYXLZY--教职工基本数据子类表 第一学历专业
      ,f.ZGXLCD as f_JZGJBSJ_ZGXLCD--教职工基本数据子类表 最高学历程度
      ,f.ZGXLFS as f_JZGJBSJ_ZGXLFS--教职工基本数据子类表 最高学历方式
      ,f.ZGXLXZ as f_JZGJBSJ_ZGXLXZ--教职工基本数据子类表 最高学历学制
      ,f.ZGXLXW as f_JZGJBSJ_ZGXLXW--教职工基本数据子类表 最高学历学位
      ,f.ZGXLBYSJ as f_JZGJBSJ_ZGXLBYSJ--教职工基本数据子类表 最高学历毕业时间
      ,f.ZGXLBYXX as f_JZGJBSJ_ZGXLBYXX--教职工基本数据子类表 最高学历毕业学校
      ,f.ZGXLZY as f_JZGJBSJ_ZGXLZY--教职工基本数据子类表 最高学历专业
      ,g.SCHOOLID as g_DSZDS_SCHOOLID--导师制导师表 学校
      ,g.XQID as g_DSZDS_XQID--导师制导师表 学期ID
      ,g.JSID as g_DSZDS_JSID--导师制导师表 教师ID
      ,g.JUESEID as g_DSZDS_JUESEID--导师制导师表 角色ID
      ,g.TJSJ as g_DSZDS_TJSJ--导师制导师表 添加时间
      ,g.XH as g_DSZDS_XH--导师制导师表 序号
      ,h.SCHOOLID as h_DSZDS_SCHOOLID--导师制导师表 学校
      ,h.XQID as h_DSZDS_XQID--导师制导师表 学期ID
      ,h.JSID as h_DSZDS_JSID--导师制导师表 教师ID
      ,h.JUESEID as h_DSZDS_JUESEID--导师制导师表 角色ID
      ,h.TJSJ as h_DSZDS_TJSJ--导师制导师表 添加时间
      ,h.XH as h_DSZDS_XH--导师制导师表 序号

FROM dbo.EDU_ZXXS_58_A03_DSJDXSXZJL AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS c ON a.XQID = c.ID /*学期ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZXXS_01_01_XSXX AS d ON a.XSID = d.ID /*学生ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZXJZ_01_01_JZGJBSJ AS e ON a.JS1ID = e.ID /*教师1ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZXJZ_01_01_JZGJBSJ AS f ON a.JS2ID = f.ID /*教师2ID*/ AND a.SCHOOLID = f.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZXXS_57_A03_DSZDS AS g ON a.DS1ID = g.ID /*导师1ID*/ AND a.SCHOOLID = g.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZXXS_57_A03_DSZDS AS h ON a.DS2ID = h.ID /*导师2ID*/ AND a.SCHOOLID = h.SCHOOLID /*学校*/ LEFT OUTER JOIN
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
      dbo.EDU_JY_SFBZ AS [dm] ON d.DSZYBZ = [dm].DM /*独生子女标志*/ LEFT OUTER JOIN
      dbo.EDU_JY_XSLB AS [dn] ON d.XSLBM = [dn].DM /*学生类别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS [do] ON d.HKXZM = [do].DM /*户口性质码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [dp] ON d.SFLDRK = [dp].DM /*是否流动人口*/ LEFT OUTER JOIN
      dbo.EDU_JY_XSDQZT AS [dq] ON d.XSDQZTM = [dq].DM /*学生当前状态码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS [eb] ON e.XBM = [eb].DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [ec] ON e.CSDM = [ec].DM /*出生地码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS [ed] ON e.MZM = [ed].DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS [ee] ON e.GJDQM = [ee].DM /*国籍/地区码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS [ef] ON e.SFZJLXM = [ef].DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS [eg] ON e.HYZKM = [eg].DM /*婚姻状况码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS [eh] ON e.GATQWM = [eh].DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS [ei] ON e.ZZMMM = [ei].DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS [ej] ON e.JKZKM = [ej].DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS [ek] ON e.XYZJM = [ek].DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS [el] ON e.XXM = [el].DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS [em] ON e.HKXZM = [em].DM /*户口性质码*/ LEFT OUTER JOIN
      dbo.EDU_GB_XL AS [en] ON e.XLM = [en].DM /*学历码*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXBZLB AS [eo] ON e.BZLBM = [eo].DM /*编制类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWZY AS [ep] ON e.GWZYM = [ep].DM /*岗位职业码*/ LEFT OUTER JOIN
      dbo.EDU_JY_RKXD AS [eq] ON e.ZYRKXD = [eq].DM /*主要任课学段*/ LEFT OUTER JOIN
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
