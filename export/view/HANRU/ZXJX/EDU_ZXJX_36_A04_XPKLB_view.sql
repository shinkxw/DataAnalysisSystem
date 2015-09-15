
--需排课列表
CREATE VIEW [dbo].[VIEW_EDU_ZXJX_36_A04_XPKLB_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[JSQJXXID]--教师请假信息表ID
      ,a.[PKJGJLID]--排课结果记录表ID
      ,a.[RQ]--日期
      ,a.[CLZT]--处理状态
      ,a.[XPKJSID]--需排课教师ID
      ,a.[TJJSID]--推荐教师ID
      ,a.[DKJSID]--代课教师ID
      ,a.[DKLXID]--代课类型ID
      ,a.[PKSJ]--排课时间
      ,a.[QRSJ]--确认时间
      ,a.[PKRID]--排课人ID
      ,c.SCHOOLID as c_JSQJXX_SCHOOLID--教师请假信息表 学校
      ,c.QJJSID as c_JSQJXX_QJJSID--教师请假信息表 请假教师ID
      ,c.JSQJLXID as c_JSQJXX_JSQJLXID--教师请假信息表 教师请假类型ID
      ,c.QJKSSJ as c_JSQJXX_QJKSSJ--教师请假信息表 请假开始时间
      ,c.QJJSSJ as c_JSQJXX_QJJSSJ--教师请假信息表 请假结束时间
      ,c.CLZT as c_JSQJXX_CLZT--教师请假信息表 处理状态
      ,c.KCCLFS as c_JSQJXX_KCCLFS--教师请假信息表 课程处理方式
      ,c.QJYY as c_JSQJXX_QJYY--教师请假信息表 请假原因
      ,c.SQSJ as c_JSQJXX_SQSJ--教师请假信息表 申请时间
      ,c.BZ as c_JSQJXX_BZ--教师请假信息表 备注
      ,c.SHRID as c_JSQJXX_SHRID--教师请假信息表 审核人ID
      ,d.SCHOOLID as d_PKJGJL_SCHOOLID--排课结果记录表 学校名
      ,d.XQID as d_PKJGJL_XQID--排课结果记录表 学期ID
      ,d.TEACHERID as d_PKJGJL_TEACHERID--排课结果记录表 老师
      ,d.TEACHERNAME as d_PKJGJL_TEACHERNAME--排课结果记录表 老师
      ,d.COURSEID as d_PKJGJL_COURSEID--排课结果记录表 课程
      ,d.COURSENAME as d_PKJGJL_COURSENAME--排课结果记录表 课程
      ,d.CLASSID as d_PKJGJL_CLASSID--排课结果记录表 班级
      ,d.CLASSNAME as d_PKJGJL_CLASSNAME--排课结果记录表 班级
      ,d.WEEKDAY as d_PKJGJL_WEEKDAY--排课结果记录表 工作日
      ,d.WEEKDAYNAME as d_PKJGJL_WEEKDAYNAME--排课结果记录表 工作日名称
      ,d.PERIOD as d_PKJGJL_PERIOD--排课结果记录表 时段
      ,d.PERIODNAME as d_PKJGJL_PERIODNAME--排课结果记录表 时段名称
      ,d.SESSION as d_PKJGJL_SESSION--排课结果记录表 节次
      ,d.SESSIONNAME as d_PKJGJL_SESSIONNAME--排课结果记录表 节次名称
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
      ,h.SCHOOLID as h_DKLX_SCHOOLID--代课类型表 学校
      ,h.LXMC as h_DKLX_LXMC--代课类型表 类型名称
      ,h.BZ as h_DKLX_BZ--代课类型表 备注
      ,i.SCHOOLID as i_USER_SCHOOLID--应用系统用户表 学校ID
      ,i.APPID as i_USER_APPID--应用系统用户表 应用ID
      ,'' as i_USER_PWD--应用系统用户表 密码
      ,i.STATUS as i_USER_STATUS--应用系统用户表 用户状态
      ,i.USERTYPE as i_USER_USERTYPE--应用系统用户表 用户类别
      ,i.USERID as i_USER_USERID--应用系统用户表 用户ID
      ,i.ROLEIDLst as i_USER_ROLEIDLst--应用系统用户表 用户角色
      ,i.XM as i_USER_XM--应用系统用户表 姓名
      ,i.XB as i_USER_XB--应用系统用户表 性别
      ,i.QQ as i_USER_QQ--应用系统用户表 QQ
      ,i.DZYJ as i_USER_DZYJ--应用系统用户表 电子邮件
      ,i.LXDH as i_USER_LXDH--应用系统用户表 联系电话
      ,i.ZJDLSJ as i_USER_ZJDLSJ--应用系统用户表 最近一次登录时间
      ,i.DLCGCS as i_USER_DLCGCS--应用系统用户表 登录成功次数
      ,i.YHCJSJ as i_USER_YHCJSJ--应用系统用户表 用户创建时间
      ,i.YHRY as i_USER_YHRY--应用系统用户表 用户荣誉
      ,i.YHJF as i_USER_YHJF--应用系统用户表 用户积分

FROM dbo.EDU_ZXJX_36_A04_XPKLB AS a LEFT OUTER JOIN
      dbo.EDU_ZXJX_36_A03_JSQJXX AS c ON a.JSQJXXID = c.ID /*教师请假信息表ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ELE_04_PKJGJL AS d ON a.PKJGJLID = d.ID /*排课结果记录表ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZXJZ_01_01_JZGJBSJ AS e ON a.XPKJSID = e.ID /*需排课教师ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZXJZ_01_01_JZGJBSJ AS f ON a.TJJSID = f.ID /*推荐教师ID*/ AND a.SCHOOLID = f.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZXJZ_01_01_JZGJBSJ AS g ON a.DKJSID = g.ID /*代课教师ID*/ AND a.SCHOOLID = g.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZXJX_36_A02_DKLX AS h ON a.DKLXID = h.ID /*代课类型ID*/ AND a.SCHOOLID = h.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS i ON a.PKRID = i.LOGINNAME /*排课人ID*/ AND a.SCHOOLID = i.SCHOOLID /*学校*/ LEFT OUTER JOIN
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
      dbo.EDU_JY_RKXD AS [fq] ON f.ZYRKXD = [fq].DM /*主要任课学段*/ LEFT OUTER JOIN
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
