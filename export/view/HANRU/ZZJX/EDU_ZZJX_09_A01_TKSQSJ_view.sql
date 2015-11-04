
--调课申请数据表
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_09_A01_TKSQSJ_DISP]
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
      ,a.[TKBJID]--调课班级ID
      ,a.[KCMC]--课程名称
      ,c.SCHOOLID as c_JZGJBSJ_SCHOOLID--教职工基本数据子类表 学校名
      ,c.GH as c_JZGJBSJ_GH--教职工基本数据子类表 工号
      ,c.XM as c_JZGJBSJ_XM--教职工基本数据子类表 姓名
      ,c.YWXM as c_JZGJBSJ_YWXM--教职工基本数据子类表 英文姓名
      ,c.XMPY as c_JZGJBSJ_XMPY--教职工基本数据子类表 姓名拼音
      ,c.CYM as c_JZGJBSJ_CYM--教职工基本数据子类表 曾用名
      ,c.SFZJLXM as c_JZGJBSJ_SFZJLXM--教职工基本数据子类表 身份证件类型码
      ,[cb].MC as c_JZGJBSJ_SFZJLXM_MC--身份证件类型代码表 名称
      ,c.SFZJH as c_JZGJBSJ_SFZJH--教职工基本数据子类表 身份证件号
      ,c.CSRQ as c_JZGJBSJ_CSRQ--教职工基本数据子类表 出生日期
      ,c.XBM as c_JZGJBSJ_XBM--教职工基本数据子类表 性别码
      ,[cc].MC as c_JZGJBSJ_XBM_MC--人的性别代码 名称
      ,c.MZM as c_JZGJBSJ_MZM--教职工基本数据子类表 民族码
      ,[cd].MZMC as c_JZGJBSJ_MZM_MZMC--中国各民族名称的罗马字母拼写法和代码 民族名称
      ,[cd].ZMDM as c_JZGJBSJ_MZM_ZMDM--中国各民族名称的罗马字母拼写法和代码 字母代码
      ,c.XXM as c_JZGJBSJ_XXM--教职工基本数据子类表 血型码
      ,[ce].MC as c_JZGJBSJ_XXM_MC--血型代码表 名称
      ,[ce].JC as c_JZGJBSJ_XXM_JC--血型代码表 简称
      ,c.JKZKM as c_JZGJBSJ_JKZKM--教职工基本数据子类表 健康状况码
      ,[cf].MC as c_JZGJBSJ_JKZKM_MC--健康状况1位数字代码 名称
      ,[cf].SM as c_JZGJBSJ_JKZKM_SM--健康状况1位数字代码 说明
      ,c.HYZTM as c_JZGJBSJ_HYZTM--教职工基本数据子类表 婚姻状态码
      ,[cg].MC as c_JZGJBSJ_HYZTM_MC--婚姻状况代码 名称
      ,c.ZZMMM as c_JZGJBSJ_ZZMMM--教职工基本数据子类表 政治面貌码
      ,[ch].MC as c_JZGJBSJ_ZZMMM_MC--政治面貌代码 名称
      ,[ch].JC as c_JZGJBSJ_ZZMMM_JC--政治面貌代码 简称
      ,c.GATQWM as c_JZGJBSJ_GATQWM--教职工基本数据子类表 港澳台侨外码
      ,[ci].MC as c_JZGJBSJ_GATQWM_MC--港澳台侨外代码表 名称
      ,[ci].SM as c_JZGJBSJ_GATQWM_SM--港澳台侨外代码表 说明
      ,c.JG as c_JZGJBSJ_JG--教职工基本数据子类表 籍贯
      ,c.GJDQM as c_JZGJBSJ_GJDQM--教职工基本数据子类表 国籍/地区码
      ,[cj].GJDQMCJC as c_JZGJBSJ_GJDQM_GJDQMCJC--世界各国和地区名称代码 国家/地区名称简称
      ,[cj].EZMDM as c_JZGJBSJ_GJDQM_EZMDM--世界各国和地区名称代码 二字母代码
      ,[cj].SZMDM as c_JZGJBSJ_GJDQM_SZMDM--世界各国和地区名称代码 三字母代码
      ,c.CSDXZQHM as c_JZGJBSJ_CSDXZQHM--教职工基本数据子类表 出生地行政区划码
      ,[ck].MC as c_JZGJBSJ_CSDXZQHM_MC--中华人民共和国行政区划代码 名称
      ,c.XYZJM as c_JZGJBSJ_XYZJM--教职工基本数据子类表 信仰宗教码
      ,[cl].MC as c_JZGJBSJ_XYZJM_MC--宗教信仰代码 名称
      ,c.JZGHKSZDXZQHM as c_JZGJBSJ_JZGHKSZDXZQHM--教职工基本数据子类表 教职工户口所在地行政区划码
      ,[cm].MC as c_JZGJBSJ_JZGHKSZDXZQHM_MC--中华人民共和国行政区划代码 名称
      ,c.HKLBM as c_JZGJBSJ_HKLBM--教职工基本数据子类表 户口类别码
      ,[cn].MC as c_JZGJBSJ_HKLBM_MC--户口类别代码 名称
      ,c.DQZZ as c_JZGJBSJ_DQZZ--教职工基本数据子类表 当前住址
      ,c.DQZZYZBM as c_JZGJBSJ_DQZZYZBM--教职工基本数据子类表 当前住址邮政编码
      ,c.CJGZNY as c_JZGJBSJ_CJGZNY--教职工基本数据子类表 参加工作年月
      ,c.CJNY as c_JZGJBSJ_CJNY--教职工基本数据子类表 从教年月
      ,c.LXNY as c_JZGJBSJ_LXNY--教职工基本数据子类表 来校年月
      ,c.BZLBM as c_JZGJBSJ_BZLBM--教职工基本数据子类表 编制类别码
      ,[co].MC as c_JZGJBSJ_BZLBM_MC--编制类别代码表 名称
      ,c.JZGLBM as c_JZGJBSJ_JZGLBM--教职工基本数据子类表 教职工类别码
      ,[cp].MC as c_JZGJBSJ_JZGLBM_MC--教职工类别代码表 名称
      ,[cp].SM as c_JZGJBSJ_JZGLBM_SM--教职工类别代码表 说明
      ,c.GWLBM as c_JZGJBSJ_GWLBM--教职工基本数据子类表 岗位类别码
      ,[cq].MC as c_JZGJBSJ_GWLBM_MC--岗位类别代码表 名称
      ,c.SFJZJS as c_JZGJBSJ_SFJZJS--教职工基本数据子类表 是否兼职教师
      ,[cr].MC as c_JZGJBSJ_SFJZJS_MC--是否标志代码表 名称
      ,c.SFSSXJS as c_JZGJBSJ_SFSSXJS--教职工基本数据子类表 是否双师型教师
      ,[cs].MC as c_JZGJBSJ_SFSSXJS_MC--是否标志代码表 名称
      ,c.ZP as c_JZGJBSJ_ZP--教职工基本数据子类表 照片(路径)
      ,c.DQZTM as c_JZGJBSJ_DQZTM--教职工基本数据子类表 当前状态码
      ,[ct].MC as c_JZGJBSJ_DQZTM_MC--教职工当前状态代码表 名称
      ,c.YDDH as c_JZGJBSJ_YDDH--教职工基本数据子类表 移动电话
      ,c.GDDH as c_JZGJBSJ_GDDH--教职工基本数据子类表 固定电话
      ,c.TXDZYZBM as c_JZGJBSJ_TXDZYZBM--教职工基本数据子类表 通信地址邮政编码
      ,c.TXDZ as c_JZGJBSJ_TXDZ--教职工基本数据子类表 通信地址
      ,c.DZXX as c_JZGJBSJ_DZXX--教职工基本数据子类表 电子信箱
      ,c.WLDZ as c_JZGJBSJ_WLDZ--教职工基本数据子类表 网络地址
      ,c.JSTXH as c_JZGJBSJ_JSTXH--教职工基本数据子类表 即时通讯号
      ,c.JSKQJS as c_JZGJBSJ_JSKQJS--教职工基本数据子类表 教师考勤角色
      ,c.TeacherGroupId as c_JZGJBSJ_TeacherGroupId--教职工基本数据子类表 表TeacherGroup的外键
      ,c.PersonalCard1 as c_JZGJBSJ_PersonalCard1--教职工基本数据子类表 个人卡1
      ,c.PersonalCard2 as c_JZGJBSJ_PersonalCard2--教职工基本数据子类表 个人卡2
      ,c.PersonalCard3 as c_JZGJBSJ_PersonalCard3--教职工基本数据子类表 个人卡3
      ,d.SCHOOLID as d_KC_SCHOOLID--课程数据子类表 学校ID
      ,d.KCMC as d_KC_KCMC--课程数据子类表 课程名称
      ,d.KCYWM as d_KC_KCYWM--课程数据子类表 课程英文名
      ,d.KCBM as d_KC_KCBM--课程数据子类表 课程别名
      ,d.KCJS as d_KC_KCJS--课程数据子类表 课程介绍
      ,d.XF as d_KC_XF--课程数据子类表 学分
      ,d.ZXS as d_KC_ZXS--课程数据子类表 总学时
      ,d.LLXS as d_KC_LLXS--课程数据子类表 理论学时
      ,d.SJXS as d_KC_SJXS--课程数据子类表 实践学时
      ,d.QTXS as d_KC_QTXS--课程数据子类表 其他学时
      ,d.CKSM as d_KC_CKSM--课程数据子类表 参考书目
      ,d.KKDW as d_KC_KKDW--课程数据子类表 开课单位
      ,d.KSXS as d_KC_KSXS--课程数据子类表 考试形式
      ,[db].MC as d_KC_KSXS_MC--考试形式代码表 名称
      ,d.SKFSM as d_KC_SKFSM--课程数据子类表 授课方式码
      ,[dc].MC as d_KC_SKFSM_MC--授课方式代码表 名称
      ,d.KCFY as d_KC_KCFY--课程数据子类表 课程费用
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
      ,p.SCHOOLID as p_JZGJBSJ_SCHOOLID--教职工基本数据子类表 学校名
      ,p.GH as p_JZGJBSJ_GH--教职工基本数据子类表 工号
      ,p.XM as p_JZGJBSJ_XM--教职工基本数据子类表 姓名
      ,p.YWXM as p_JZGJBSJ_YWXM--教职工基本数据子类表 英文姓名
      ,p.XMPY as p_JZGJBSJ_XMPY--教职工基本数据子类表 姓名拼音
      ,p.CYM as p_JZGJBSJ_CYM--教职工基本数据子类表 曾用名
      ,p.SFZJLXM as p_JZGJBSJ_SFZJLXM--教职工基本数据子类表 身份证件类型码
      ,[pb].MC as p_JZGJBSJ_SFZJLXM_MC--身份证件类型代码表 名称
      ,p.SFZJH as p_JZGJBSJ_SFZJH--教职工基本数据子类表 身份证件号
      ,p.CSRQ as p_JZGJBSJ_CSRQ--教职工基本数据子类表 出生日期
      ,p.XBM as p_JZGJBSJ_XBM--教职工基本数据子类表 性别码
      ,[pc].MC as p_JZGJBSJ_XBM_MC--人的性别代码 名称
      ,p.MZM as p_JZGJBSJ_MZM--教职工基本数据子类表 民族码
      ,[pd].MZMC as p_JZGJBSJ_MZM_MZMC--中国各民族名称的罗马字母拼写法和代码 民族名称
      ,[pd].ZMDM as p_JZGJBSJ_MZM_ZMDM--中国各民族名称的罗马字母拼写法和代码 字母代码
      ,p.XXM as p_JZGJBSJ_XXM--教职工基本数据子类表 血型码
      ,[pe].MC as p_JZGJBSJ_XXM_MC--血型代码表 名称
      ,[pe].JC as p_JZGJBSJ_XXM_JC--血型代码表 简称
      ,p.JKZKM as p_JZGJBSJ_JKZKM--教职工基本数据子类表 健康状况码
      ,[pf].MC as p_JZGJBSJ_JKZKM_MC--健康状况1位数字代码 名称
      ,[pf].SM as p_JZGJBSJ_JKZKM_SM--健康状况1位数字代码 说明
      ,p.HYZTM as p_JZGJBSJ_HYZTM--教职工基本数据子类表 婚姻状态码
      ,[pg].MC as p_JZGJBSJ_HYZTM_MC--婚姻状况代码 名称
      ,p.ZZMMM as p_JZGJBSJ_ZZMMM--教职工基本数据子类表 政治面貌码
      ,[ph].MC as p_JZGJBSJ_ZZMMM_MC--政治面貌代码 名称
      ,[ph].JC as p_JZGJBSJ_ZZMMM_JC--政治面貌代码 简称
      ,p.GATQWM as p_JZGJBSJ_GATQWM--教职工基本数据子类表 港澳台侨外码
      ,[pi].MC as p_JZGJBSJ_GATQWM_MC--港澳台侨外代码表 名称
      ,[pi].SM as p_JZGJBSJ_GATQWM_SM--港澳台侨外代码表 说明
      ,p.JG as p_JZGJBSJ_JG--教职工基本数据子类表 籍贯
      ,p.GJDQM as p_JZGJBSJ_GJDQM--教职工基本数据子类表 国籍/地区码
      ,[pj].GJDQMCJC as p_JZGJBSJ_GJDQM_GJDQMCJC--世界各国和地区名称代码 国家/地区名称简称
      ,[pj].EZMDM as p_JZGJBSJ_GJDQM_EZMDM--世界各国和地区名称代码 二字母代码
      ,[pj].SZMDM as p_JZGJBSJ_GJDQM_SZMDM--世界各国和地区名称代码 三字母代码
      ,p.CSDXZQHM as p_JZGJBSJ_CSDXZQHM--教职工基本数据子类表 出生地行政区划码
      ,[pk].MC as p_JZGJBSJ_CSDXZQHM_MC--中华人民共和国行政区划代码 名称
      ,p.XYZJM as p_JZGJBSJ_XYZJM--教职工基本数据子类表 信仰宗教码
      ,[pl].MC as p_JZGJBSJ_XYZJM_MC--宗教信仰代码 名称
      ,p.JZGHKSZDXZQHM as p_JZGJBSJ_JZGHKSZDXZQHM--教职工基本数据子类表 教职工户口所在地行政区划码
      ,[pm].MC as p_JZGJBSJ_JZGHKSZDXZQHM_MC--中华人民共和国行政区划代码 名称
      ,p.HKLBM as p_JZGJBSJ_HKLBM--教职工基本数据子类表 户口类别码
      ,[pn].MC as p_JZGJBSJ_HKLBM_MC--户口类别代码 名称
      ,p.DQZZ as p_JZGJBSJ_DQZZ--教职工基本数据子类表 当前住址
      ,p.DQZZYZBM as p_JZGJBSJ_DQZZYZBM--教职工基本数据子类表 当前住址邮政编码
      ,p.CJGZNY as p_JZGJBSJ_CJGZNY--教职工基本数据子类表 参加工作年月
      ,p.CJNY as p_JZGJBSJ_CJNY--教职工基本数据子类表 从教年月
      ,p.LXNY as p_JZGJBSJ_LXNY--教职工基本数据子类表 来校年月
      ,p.BZLBM as p_JZGJBSJ_BZLBM--教职工基本数据子类表 编制类别码
      ,[po].MC as p_JZGJBSJ_BZLBM_MC--编制类别代码表 名称
      ,p.JZGLBM as p_JZGJBSJ_JZGLBM--教职工基本数据子类表 教职工类别码
      ,[pp].MC as p_JZGJBSJ_JZGLBM_MC--教职工类别代码表 名称
      ,[pp].SM as p_JZGJBSJ_JZGLBM_SM--教职工类别代码表 说明
      ,p.GWLBM as p_JZGJBSJ_GWLBM--教职工基本数据子类表 岗位类别码
      ,[pq].MC as p_JZGJBSJ_GWLBM_MC--岗位类别代码表 名称
      ,p.SFJZJS as p_JZGJBSJ_SFJZJS--教职工基本数据子类表 是否兼职教师
      ,[pr].MC as p_JZGJBSJ_SFJZJS_MC--是否标志代码表 名称
      ,p.SFSSXJS as p_JZGJBSJ_SFSSXJS--教职工基本数据子类表 是否双师型教师
      ,[ps].MC as p_JZGJBSJ_SFSSXJS_MC--是否标志代码表 名称
      ,p.ZP as p_JZGJBSJ_ZP--教职工基本数据子类表 照片(路径)
      ,p.DQZTM as p_JZGJBSJ_DQZTM--教职工基本数据子类表 当前状态码
      ,[pt].MC as p_JZGJBSJ_DQZTM_MC--教职工当前状态代码表 名称
      ,p.YDDH as p_JZGJBSJ_YDDH--教职工基本数据子类表 移动电话
      ,p.GDDH as p_JZGJBSJ_GDDH--教职工基本数据子类表 固定电话
      ,p.TXDZYZBM as p_JZGJBSJ_TXDZYZBM--教职工基本数据子类表 通信地址邮政编码
      ,p.TXDZ as p_JZGJBSJ_TXDZ--教职工基本数据子类表 通信地址
      ,p.DZXX as p_JZGJBSJ_DZXX--教职工基本数据子类表 电子信箱
      ,p.WLDZ as p_JZGJBSJ_WLDZ--教职工基本数据子类表 网络地址
      ,p.JSTXH as p_JZGJBSJ_JSTXH--教职工基本数据子类表 即时通讯号
      ,p.JSKQJS as p_JZGJBSJ_JSKQJS--教职工基本数据子类表 教师考勤角色
      ,p.TeacherGroupId as p_JZGJBSJ_TeacherGroupId--教职工基本数据子类表 表TeacherGroup的外键
      ,p.PersonalCard1 as p_JZGJBSJ_PersonalCard1--教职工基本数据子类表 个人卡1
      ,p.PersonalCard2 as p_JZGJBSJ_PersonalCard2--教职工基本数据子类表 个人卡2
      ,p.PersonalCard3 as p_JZGJBSJ_PersonalCard3--教职工基本数据子类表 个人卡3
      ,q.SCHOOLID as q_ZZBJ_SCHOOLID--学校班级数据表 学校名
      ,q.ZYXXID as q_ZZBJ_ZYXXID--学校班级数据表 专业基本信息
      ,q.ZZNJID as q_ZZBJ_ZZNJID--学校班级数据表 学校年级数据表
      ,q.XZBMC as q_ZZBJ_XZBMC--学校班级数据表 行政班名称
      ,q.JBNY as q_ZZBJ_JBNY--学校班级数据表 建班年月
      ,q.BZRGH as q_ZZBJ_BZRGH--学校班级数据表 班主任工号
      ,q.JSBH as q_ZZBJ_JSBH--学校班级数据表 教室编号
      ,q.NANSRS as q_ZZBJ_NANSRS--学校班级数据表 男生人数
      ,q.NVSRS as q_ZZBJ_NVSRS--学校班级数据表 女生人数
      ,q.ZRS as q_ZZBJ_ZRS--学校班级数据表 总人数
      ,q.BZXH as q_ZZBJ_BZXH--学校班级数据表 班长学号
      ,q.JXJH as q_ZZBJ_JXJH--学校班级数据表 教学计划
      ,q.JGH as q_ZZBJ_JGH--学校班级数据表 机构号
      ,q.XQDM as q_ZZBJ_XQDM--学校班级数据表 校区代码
      ,q.BZRID as q_ZZBJ_BZRID--学校班级数据表 班主任ID
      ,q.PLSX as q_ZZBJ_PLSX--学校班级数据表 排列顺序
      ,q.ID as q_ZZBJ_ID--学校班级数据表 表Record外键

FROM dbo.EDU_ZZJX_09_A01_TKSQSJ AS a LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS c ON a.JSID = c.ID /*教师*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_01_02_KC AS d ON a.KCID = d.KCH /*课程*/ AND a.SCHOOLID = d.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
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
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS p ON a.JSJSID = p.ID /*接收教师ID*/ AND a.SCHOOLID = p.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_02_02_ZZBJ AS q ON a.TKBJID = q.XZBDM /*调课班级ID*/ AND a.SCHOOLID = q.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS [cb] ON c.SFZJLXM = [cb].DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS [cc] ON c.XBM = [cc].DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS [cd] ON c.MZM = [cd].DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS [ce] ON c.XXM = [ce].DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS [cf] ON c.JKZKM = [cf].DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS [cg] ON c.HYZTM = [cg].DM /*婚姻状态码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS [ch] ON c.ZZMMM = [ch].DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS [ci] ON c.GATQWM = [ci].DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS [cj] ON c.GJDQM = [cj].DM /*国籍/地区码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [ck] ON c.CSDXZQHM = [ck].DM /*出生地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS [cl] ON c.XYZJM = [cl].DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [cm] ON c.JZGHKSZDXZQHM = [cm].DM /*教职工户口所在地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS [cn] ON c.HKLBM = [cn].DM /*户口类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_BZLB AS [co] ON c.BZLBM = [co].DM /*编制类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGLB AS [cp] ON c.JZGLBM = [cp].DM /*教职工类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWLB AS [cq] ON c.GWLBM = [cq].DM /*岗位类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [cr] ON c.SFJZJS = [cr].DM /*是否兼职教师*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [cs] ON c.SFSSXJS = [cs].DM /*是否双师型教师*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGDQZT AS [ct] ON c.DQZTM = [ct].DM /*当前状态码*/ LEFT OUTER JOIN
      dbo.EDU_JY_KSXS AS [db] ON d.KSXS = [db].DM /*考试形式*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS [dc] ON d.SKFSM = [dc].DM /*授课方式码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS [pb] ON p.SFZJLXM = [pb].DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS [pc] ON p.XBM = [pc].DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS [pd] ON p.MZM = [pd].DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS [pe] ON p.XXM = [pe].DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS [pf] ON p.JKZKM = [pf].DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS [pg] ON p.HYZTM = [pg].DM /*婚姻状态码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS [ph] ON p.ZZMMM = [ph].DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS [pi] ON p.GATQWM = [pi].DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS [pj] ON p.GJDQM = [pj].DM /*国籍/地区码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [pk] ON p.CSDXZQHM = [pk].DM /*出生地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS [pl] ON p.XYZJM = [pl].DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [pm] ON p.JZGHKSZDXZQHM = [pm].DM /*教职工户口所在地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS [pn] ON p.HKLBM = [pn].DM /*户口类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_BZLB AS [po] ON p.BZLBM = [po].DM /*编制类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGLB AS [pp] ON p.JZGLBM = [pp].DM /*教职工类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWLB AS [pq] ON p.GWLBM = [pq].DM /*岗位类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [pr] ON p.SFJZJS = [pr].DM /*是否兼职教师*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [ps] ON p.SFSSXJS = [ps].DM /*是否双师型教师*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGDQZT AS [pt] ON p.DQZTM = [pt].DM /*当前状态码*/
GO
