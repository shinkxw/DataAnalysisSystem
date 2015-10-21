
--调课申请数据表
CREATE VIEW [dbo].[VIEW_EDU_ZXJX_09_A01_TKSQSJ_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校ID
      ,a.[JSID]--教师
      ,a.[KCID]--课程
      ,a.[TKLXID]--调课类型ID
      ,a.[TKQQSZ]--调课前起始周
      ,a.[TKQJSZ]--调课前结束周
      ,a.[TKQXQ]--调课前星期
      ,a.[TKQSD]--调课前时段
      ,a.[TKQJC]--调课前节次
      ,a.[TKHQSZ]--调课后起始周
      ,a.[TKHJSZ]--调课后结束周
      ,a.[TKHXQ]--调课后星期
      ,a.[TKHSD]--调课后时段
      ,a.[TKHJC]--调课后节次
      ,a.[ZT]--当前状态
      ,a.[BZ]--备注
      ,a.[SQSJ]--申请时间
      ,a.[JSJSID]--接收教师ID
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
      ,c.XQ as c_JZGJBSJ_XQ--教职工基本数据子类表 校区
      ,c.ZGZC as c_JZGJBSJ_ZGZC--教职工基本数据子类表 最高职称
      ,c.PDSJ as c_JZGJBSJ_PDSJ--教职工基本数据子类表 评定时间
      ,c.XPZC as c_JZGJBSJ_XPZC--教职工基本数据子类表 现品职称
      ,c.PDESJ as c_JZGJBSJ_PDESJ--教职工基本数据子类表 聘得时间
      ,c.RBXQDW as c_JZGJBSJ_RBXQDW--教职工基本数据子类表 入本校前单位
      ,c.ZZZT as c_JZGJBSJ_ZZZT--教职工基本数据子类表 在职状态
      ,c.SZBM as c_JZGJBSJ_SZBM--教职工基本数据子类表 所在部门
      ,c.XZZW as c_JZGJBSJ_XZZW--教职工基本数据子类表 行政职务
      ,c.DH as c_JZGJBSJ_DH--教职工基本数据子类表 短号
      ,c.PTHDJ as c_JZGJBSJ_PTHDJ--教职工基本数据子类表 普通话等级
      ,c.JSZH as c_JZGJBSJ_JSZH--教职工基本数据子类表 教师证号
      ,c.JSJDJ as c_JZGJBSJ_JSJDJ--教职工基本数据子类表 计算机等级
      ,c.GGJSDJ as c_JZGJBSJ_GGJSDJ--教职工基本数据子类表 骨干教师等级
      ,c.RJXK as c_JZGJBSJ_RJXK--教职工基本数据子类表 任教学科
      ,c.SFRSDL as c_JZGJBSJ_SFRSDL--教职工基本数据子类表 是否人事代理
      ,c.NDKH as c_JZGJBSJ_NDKH--教职工基本数据子类表 年度考核
      ,c.XXJL as c_JZGJBSJ_XXJL--教职工基本数据子类表 学习经历
      ,c.GZJL as c_JZGJBSJ_GZJL--教职工基本数据子类表 工作经历
      ,c.JYQK as c_JZGJBSJ_JYQK--教职工基本数据子类表 教研情况
      ,c.GZYLJCQK as c_JZGJBSJ_GZYLJCQK--教职工基本数据子类表 工作以来奖惩情况
      ,c.JTZYCY as c_JZGJBSJ_JTZYCY--教职工基本数据子类表 家庭主要成员
      ,c.BZ as c_JZGJBSJ_BZ--教职工基本数据子类表 备注
      ,c.DYXLCD as c_JZGJBSJ_DYXLCD--教职工基本数据子类表 第一学历程度
      ,c.DYXLFS as c_JZGJBSJ_DYXLFS--教职工基本数据子类表 第一学历方式
      ,c.DYXLXZ as c_JZGJBSJ_DYXLXZ--教职工基本数据子类表 第一学历学制
      ,c.DYXLXW as c_JZGJBSJ_DYXLXW--教职工基本数据子类表 第一学历学位
      ,c.DYXLBYSJ as c_JZGJBSJ_DYXLBYSJ--教职工基本数据子类表 第一学历毕业时间
      ,c.DYXLBYXX as c_JZGJBSJ_DYXLBYXX--教职工基本数据子类表 第一学历毕业学校
      ,c.DYXLZY as c_JZGJBSJ_DYXLZY--教职工基本数据子类表 第一学历专业
      ,c.ZGXLCD as c_JZGJBSJ_ZGXLCD--教职工基本数据子类表 最高学历程度
      ,c.ZGXLFS as c_JZGJBSJ_ZGXLFS--教职工基本数据子类表 最高学历方式
      ,c.ZGXLXZ as c_JZGJBSJ_ZGXLXZ--教职工基本数据子类表 最高学历学制
      ,c.ZGXLXW as c_JZGJBSJ_ZGXLXW--教职工基本数据子类表 最高学历学位
      ,c.ZGXLBYSJ as c_JZGJBSJ_ZGXLBYSJ--教职工基本数据子类表 最高学历毕业时间
      ,c.ZGXLBYXX as c_JZGJBSJ_ZGXLBYXX--教职工基本数据子类表 最高学历毕业学校
      ,c.ZGXLZY as c_JZGJBSJ_ZGXLZY--教职工基本数据子类表 最高学历专业
      ,d.SCHOOLID as d_KC_SCHOOLID--课程数据类 学校名
      ,d.KCMC as d_KC_KCMC--课程数据类 课程名称
      ,d.KCM as d_KC_KCM--课程数据类 课程码
      ,[db].MC as d_KC_KCM_MC--中小学课程代码表 名称
      ,[db].SYXX as d_KC_KCM_SYXX--中小学课程代码表 适用学校
      ,d.KCDJM as d_KC_KCDJM--课程数据类 课程等级码
      ,[dc].MC as d_KC_KCDJM_MC--中小学课程等级代码表 名称
      ,d.KCBM as d_KC_KCBM--课程数据类 课程别名
      ,d.KCJJ as d_KC_KCJJ--课程数据类 课程简介
      ,d.KCYQ as d_KC_KCYQ--课程数据类 课程要求
      ,d.ZXS as d_KC_ZXS--课程数据类 总学时
      ,d.ZHXS as d_KC_ZHXS--课程数据类 周学时
      ,d.ZXXS as d_KC_ZXXS--课程数据类 自学学时
      ,d.SKFSM as d_KC_SKFSM--课程数据类 授课方式码
      ,[dd].MC as d_KC_SKFSM_MC--授课方式代码表 名称
      ,d.JCBM as d_KC_JCBM--课程数据类 教材编码
      ,d.CKSM as d_KC_CKSM--课程数据类 参考书目
      ,d.CDXZ as d_KC_CDXZ--课程数据类 场地限制
      ,d.SFZK as d_KC_SFZK--课程数据类 是否主课
      ,[de].MC as d_KC_SFZK_MC--是否标志代码表 名称
      ,d.PLSX as d_KC_PLSX--课程数据类 排列顺序
      ,e.MC as e_TKLX_MC--调课类型代码 类型名称
      ,f.SCHOOLID as f_XLZ_SCHOOLID--校历周表 学校ID
      ,f.XLID as f_XLZ_XLID--校历周表 校历ID
      ,f.NAME as f_XLZ_NAME--校历周表 校历周名称
      ,f.STARTDAY as f_XLZ_STARTDAY--校历周表 开始日期
      ,f.ENDDAY as f_XLZ_ENDDAY--校历周表 结束日期
      ,f.ZJH as f_XLZ_ZJH--校历周表 周计划
      ,g.SCHOOLID as g_XLZ_SCHOOLID--校历周表 学校ID
      ,g.XLID as g_XLZ_XLID--校历周表 校历ID
      ,g.NAME as g_XLZ_NAME--校历周表 校历周名称
      ,g.STARTDAY as g_XLZ_STARTDAY--校历周表 开始日期
      ,g.ENDDAY as g_XLZ_ENDDAY--校历周表 结束日期
      ,g.ZJH as g_XLZ_ZJH--校历周表 周计划
      ,h.SCHOOLID as h_WEEKDAY_SCHOOLID--星期 学校名
      ,h.MC as h_WEEKDAY_MC--星期 名称
      ,i.SCHOOLID as i_SD_SCHOOLID--时段 学校名
      ,i.MC as i_SD_MC--时段 名称
      ,j.SCHOOLID as j_JC_SCHOOLID--节次 学校名
      ,j.SDID as j_JC_SDID--节次 所属时段ID
      ,j.MC as j_JC_MC--节次 名称
      ,j.KSXS as j_JC_KSXS--节次 开始小时
      ,j.KSFZ as j_JC_KSFZ--节次 开始分钟
      ,j.JSXS as j_JC_JSXS--节次 结束小时
      ,j.JSFZ as j_JC_JSFZ--节次 结束分钟
      ,k.SCHOOLID as k_XLZ_SCHOOLID--校历周表 学校ID
      ,k.XLID as k_XLZ_XLID--校历周表 校历ID
      ,k.NAME as k_XLZ_NAME--校历周表 校历周名称
      ,k.STARTDAY as k_XLZ_STARTDAY--校历周表 开始日期
      ,k.ENDDAY as k_XLZ_ENDDAY--校历周表 结束日期
      ,k.ZJH as k_XLZ_ZJH--校历周表 周计划
      ,l.SCHOOLID as l_XLZ_SCHOOLID--校历周表 学校ID
      ,l.XLID as l_XLZ_XLID--校历周表 校历ID
      ,l.NAME as l_XLZ_NAME--校历周表 校历周名称
      ,l.STARTDAY as l_XLZ_STARTDAY--校历周表 开始日期
      ,l.ENDDAY as l_XLZ_ENDDAY--校历周表 结束日期
      ,l.ZJH as l_XLZ_ZJH--校历周表 周计划
      ,m.SCHOOLID as m_WEEKDAY_SCHOOLID--星期 学校名
      ,m.MC as m_WEEKDAY_MC--星期 名称
      ,n.SCHOOLID as n_SD_SCHOOLID--时段 学校名
      ,n.MC as n_SD_MC--时段 名称
      ,o.SCHOOLID as o_JC_SCHOOLID--节次 学校名
      ,o.SDID as o_JC_SDID--节次 所属时段ID
      ,o.MC as o_JC_MC--节次 名称
      ,o.KSXS as o_JC_KSXS--节次 开始小时
      ,o.KSFZ as o_JC_KSFZ--节次 开始分钟
      ,o.JSXS as o_JC_JSXS--节次 结束小时
      ,o.JSFZ as o_JC_JSFZ--节次 结束分钟

FROM dbo.EDU_ZXJX_09_A01_TKSQSJ AS a LEFT OUTER JOIN
      dbo.EDU_ZXJZ_01_01_JZGJBSJ AS c ON a.JSID = c.ID /*教师*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZXJX_01_01_KC AS d ON a.KCID = d.KCH /*课程*/ AND a.SCHOOLID = d.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_TKLX AS e ON a.TKLXID = e.DM /*调课类型ID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_05_XLZ AS f ON a.TKQQSZ = f.ID /*调课前起始周*/ AND a.SCHOOLID = f.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_05_XLZ AS g ON a.TKQJSZ = g.ID /*调课前结束周*/ AND a.SCHOOLID = g.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_05_WEEKDAY AS h ON a.TKQXQ = h.ID /*调课前星期*/ AND a.SCHOOLID = h.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_05_SD AS i ON a.TKQSD = i.ID /*调课前时段*/ AND a.SCHOOLID = i.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_05_JC AS j ON a.TKQJC = j.ID /*调课前节次*/ AND a.SCHOOLID = j.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_05_XLZ AS k ON a.TKHQSZ = k.ID /*调课后起始周*/ AND a.SCHOOLID = k.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_05_XLZ AS l ON a.TKHJSZ = l.ID /*调课后结束周*/ AND a.SCHOOLID = l.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_05_WEEKDAY AS m ON a.TKHXQ = m.ID /*调课后星期*/ AND a.SCHOOLID = m.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_05_SD AS n ON a.TKHSD = n.ID /*调课后时段*/ AND a.SCHOOLID = n.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_05_JC AS o ON a.TKHJC = o.ID /*调课后节次*/ AND a.SCHOOLID = o.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
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
      dbo.EDU_JY_ZXXKC AS [db] ON d.KCM = [db].DM /*课程码*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXKCDJ AS [dc] ON d.KCDJM = [dc].DM /*课程等级码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS [dd] ON d.SKFSM = [dd].DM /*授课方式码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [de] ON d.SFZK = [de].DM /*是否主课*/
GO
