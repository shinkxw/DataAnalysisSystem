
--调课申请数据表
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_08_A01_TKSQSJ_DISP]
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
      ,c.SCHOOLID as c_JZGJBSJ_SCHOOLID--教职工基本数据子类表 学校名
      ,c.GH as c_JZGJBSJ_GH--教职工基本数据子类表 工号
      ,c.XM as c_JZGJBSJ_XM--教职工基本数据子类表 姓名
      ,c.YWXM as c_JZGJBSJ_YWXM--教职工基本数据子类表 英文姓名
      ,c.XMPY as c_JZGJBSJ_XMPY--教职工基本数据子类表 姓名拼音
      ,c.CYM as c_JZGJBSJ_CYM--教职工基本数据子类表 曾用名
      ,c.SFZJLXM as c_JZGJBSJ_SFZJLXM--教职工基本数据子类表 身份证件类型码
      ,cb.MC as c_JZGJBSJ_SFZJLXM_MC--身份证件类型代码表 名称
      ,c.SFZJH as c_JZGJBSJ_SFZJH--教职工基本数据子类表 身份证件号
      ,c.CSRQ as c_JZGJBSJ_CSRQ--教职工基本数据子类表 出生日期
      ,c.XBM as c_JZGJBSJ_XBM--教职工基本数据子类表 性别码
      ,cc.MC as c_JZGJBSJ_XBM_MC--人的性别代码 名称
      ,c.MZM as c_JZGJBSJ_MZM--教职工基本数据子类表 民族码
      ,cd.MZMC as c_JZGJBSJ_MZM_MZMC--中国各民族名称的罗马字母拼写法和代码 民族名称
      ,cd.ZMDM as c_JZGJBSJ_MZM_ZMDM--中国各民族名称的罗马字母拼写法和代码 字母代码
      ,c.XXM as c_JZGJBSJ_XXM--教职工基本数据子类表 血型码
      ,ce.MC as c_JZGJBSJ_XXM_MC--血型代码表 名称
      ,ce.JC as c_JZGJBSJ_XXM_JC--血型代码表 简称
      ,c.JKZKM as c_JZGJBSJ_JKZKM--教职工基本数据子类表 健康状况码
      ,cf.MC as c_JZGJBSJ_JKZKM_MC--健康状况1位数字代码 名称
      ,cf.SM as c_JZGJBSJ_JKZKM_SM--健康状况1位数字代码 说明
      ,c.HYZTM as c_JZGJBSJ_HYZTM--教职工基本数据子类表 婚姻状态码
      ,cg.MC as c_JZGJBSJ_HYZTM_MC--婚姻状况代码 名称
      ,c.ZZMMM as c_JZGJBSJ_ZZMMM--教职工基本数据子类表 政治面貌码
      ,ch.MC as c_JZGJBSJ_ZZMMM_MC--政治面貌代码 名称
      ,ch.JC as c_JZGJBSJ_ZZMMM_JC--政治面貌代码 简称
      ,c.GATQWM as c_JZGJBSJ_GATQWM--教职工基本数据子类表 港澳台侨外码
      ,ci.MC as c_JZGJBSJ_GATQWM_MC--港澳台侨外代码表 名称
      ,ci.SM as c_JZGJBSJ_GATQWM_SM--港澳台侨外代码表 说明
      ,c.JG as c_JZGJBSJ_JG--教职工基本数据子类表 籍贯
      ,c.GJDQM as c_JZGJBSJ_GJDQM--教职工基本数据子类表 国籍/地区码
      ,cj.GJDQMCJC as c_JZGJBSJ_GJDQM_GJDQMCJC--世界各国和地区名称代码 国家/地区名称简称
      ,cj.EZMDM as c_JZGJBSJ_GJDQM_EZMDM--世界各国和地区名称代码 二字母代码
      ,cj.SZMDM as c_JZGJBSJ_GJDQM_SZMDM--世界各国和地区名称代码 三字母代码
      ,c.CSDXZQHM as c_JZGJBSJ_CSDXZQHM--教职工基本数据子类表 出生地行政区划码
      ,ck.MC as c_JZGJBSJ_CSDXZQHM_MC--中华人民共和国行政区划代码 名称
      ,c.XYZJM as c_JZGJBSJ_XYZJM--教职工基本数据子类表 信仰宗教码
      ,cl.MC as c_JZGJBSJ_XYZJM_MC--宗教信仰代码 名称
      ,c.JZGHKSZDXZQHM as c_JZGJBSJ_JZGHKSZDXZQHM--教职工基本数据子类表 教职工户口所在地行政区划码
      ,cm.MC as c_JZGJBSJ_JZGHKSZDXZQHM_MC--中华人民共和国行政区划代码 名称
      ,c.HKLBM as c_JZGJBSJ_HKLBM--教职工基本数据子类表 户口类别码
      ,cn.MC as c_JZGJBSJ_HKLBM_MC--户口类别代码 名称
      ,c.DQZZ as c_JZGJBSJ_DQZZ--教职工基本数据子类表 当前住址
      ,c.DQZZYZBM as c_JZGJBSJ_DQZZYZBM--教职工基本数据子类表 当前住址邮政编码
      ,c.CJGZNY as c_JZGJBSJ_CJGZNY--教职工基本数据子类表 参加工作年月
      ,c.CJNY as c_JZGJBSJ_CJNY--教职工基本数据子类表 从教年月
      ,c.LXNY as c_JZGJBSJ_LXNY--教职工基本数据子类表 来校年月
      ,c.BZLBM as c_JZGJBSJ_BZLBM--教职工基本数据子类表 编制类别码
      ,co.MC as c_JZGJBSJ_BZLBM_MC--编制类别代码表 名称
      ,c.JZGLBM as c_JZGJBSJ_JZGLBM--教职工基本数据子类表 教职工类别码
      ,cp.MC as c_JZGJBSJ_JZGLBM_MC--教职工类别代码表 名称
      ,cp.SM as c_JZGJBSJ_JZGLBM_SM--教职工类别代码表 说明
      ,c.GWLBM as c_JZGJBSJ_GWLBM--教职工基本数据子类表 岗位类别码
      ,cq.MC as c_JZGJBSJ_GWLBM_MC--岗位类别代码表 名称
      ,c.SFJZJS as c_JZGJBSJ_SFJZJS--教职工基本数据子类表 是否兼职教师
      ,cr.MC as c_JZGJBSJ_SFJZJS_MC--是否标志代码表 名称
      ,c.SFSSXJS as c_JZGJBSJ_SFSSXJS--教职工基本数据子类表 是否双师型教师
      ,cs.MC as c_JZGJBSJ_SFSSXJS_MC--是否标志代码表 名称
      ,c.ZP as c_JZGJBSJ_ZP--教职工基本数据子类表 照片(路径)
      ,c.DQZTM as c_JZGJBSJ_DQZTM--教职工基本数据子类表 当前状态码
      ,ct.MC as c_JZGJBSJ_DQZTM_MC--教职工当前状态代码表 名称
      ,c.YDDH as c_JZGJBSJ_YDDH--教职工基本数据子类表 移动电话
      ,c.GDDH as c_JZGJBSJ_GDDH--教职工基本数据子类表 固定电话
      ,c.TXDZYZBM as c_JZGJBSJ_TXDZYZBM--教职工基本数据子类表 通信地址邮政编码
      ,c.TXDZ as c_JZGJBSJ_TXDZ--教职工基本数据子类表 通信地址
      ,c.DZXX as c_JZGJBSJ_DZXX--教职工基本数据子类表 电子信箱
      ,c.WLDZ as c_JZGJBSJ_WLDZ--教职工基本数据子类表 网络地址
      ,c.JSTXH as c_JZGJBSJ_JSTXH--教职工基本数据子类表 即时通讯号
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
      ,db.MC as d_KC_KSXS_MC--考试形式代码表 名称
      ,d.SKFSM as d_KC_SKFSM--课程数据子类表 授课方式码
      ,dc.MC as d_KC_SKFSM_MC--授课方式代码表 名称
      ,d.KCFY as d_KC_KCFY--课程数据子类表 课程费用
      ,e.SCHOOLID as e_TKLX_SCHOOLID--调课类型表 学校ID
      ,e.LXMC as e_TKLX_LXMC--调课类型表 类型名称
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
      ,h.MC as h_XQ_MC--星期代码 名称
      ,i.MC as i_SD_MC--时段代码 名称
      ,j.MC as j_JC_MC--节次代码 名称
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
      ,m.MC as m_XQ_MC--星期代码 名称
      ,n.MC as n_SD_MC--时段代码 名称
      ,o.MC as o_JC_MC--节次代码 名称

FROM dbo.EDU_ZZJX_08_A01_TKSQSJ AS a LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS c ON a.JSID = c.ID /*教师*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_01_02_KC AS d ON a.KCID = d.KCH /*课程*/ AND a.SCHOOLID = d.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_08_A02_TKLX AS e ON a.TKLXID = e.ID /*调课类型ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_05_XLZ AS f ON a.TKQQSZ = f.ID /*调课前起始周*/ AND a.SCHOOLID = f.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_05_XLZ AS g ON a.TKQJSZ = g.ID /*调课前结束周*/ AND a.SCHOOLID = g.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_XQ AS h ON a.TKQXQ = h.DM /*调课前星期*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_SD AS i ON a.TKQSD = i.DM /*调课前时段*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_JC AS j ON a.TKQJC = j.DM /*调课前节次*/ LEFT OUTER JOIN
      dbo.EDU_ELE_05_XLZ AS k ON a.TKHQSZ = k.ID /*调课后起始周*/ AND a.SCHOOLID = k.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_05_XLZ AS l ON a.TKHJSZ = l.ID /*调课后结束周*/ AND a.SCHOOLID = l.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_XQ AS m ON a.TKHXQ = m.DM /*调课后星期*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_SD AS n ON a.TKHSD = n.DM /*调课后时段*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_JC AS o ON a.TKHJC = o.DM /*调课后节次*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS cb ON c.SFZJLXM = cb.DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS cc ON c.XBM = cc.DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS cd ON c.MZM = cd.DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS ce ON c.XXM = ce.DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS cf ON c.JKZKM = cf.DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS cg ON c.HYZTM = cg.DM /*婚姻状态码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS ch ON c.ZZMMM = ch.DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS ci ON c.GATQWM = ci.DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS cj ON c.GJDQM = cj.DM /*国籍/地区码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS ck ON c.CSDXZQHM = ck.DM /*出生地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS cl ON c.XYZJM = cl.DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS cm ON c.JZGHKSZDXZQHM = cm.DM /*教职工户口所在地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS cn ON c.HKLBM = cn.DM /*户口类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_BZLB AS co ON c.BZLBM = co.DM /*编制类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGLB AS cp ON c.JZGLBM = cp.DM /*教职工类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWLB AS cq ON c.GWLBM = cq.DM /*岗位类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS cr ON c.SFJZJS = cr.DM /*是否兼职教师*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS cs ON c.SFSSXJS = cs.DM /*是否双师型教师*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGDQZT AS ct ON c.DQZTM = ct.DM /*当前状态码*/ LEFT OUTER JOIN
      dbo.EDU_JY_KSXS AS db ON d.KSXS = db.DM /*考试形式*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS dc ON d.SKFSM = dc.DM /*授课方式码*/
GO
