
--面批记录表
CREATE VIEW [dbo].[VIEW_EDU_ZXJX_06_A01_MPJL_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校名
      ,a.[XNID]--学年
      ,a.[XQID]--学期
      ,a.[NJID]--年级
      ,a.[BJID]--班级
      ,a.[MPJS]--面批教师
      ,a.[MPKC]--面批课程
      ,a.[MPXS]--面批学生
      ,a.[MPJG]--面批结果
      ,a.[MPSJ]--面批时间
      ,a.[RRSJ]--录入时间
      ,a.[BZ]--备注
      ,c.SCHOOLID as c_XN_SCHOOLID--学年表 学校名
      ,c.XN as c_XN_XN--学年表 学年
      ,d.SCHOOLID as d_XQ_SCHOOLID--学期数据表 学校名
      ,d.XNID as d_XQ_XNID--学期数据表 学年
      ,d.XQM as d_XQ_XQM--学期数据表 学期码
      ,db.MC as d_XQ_XQM_MC--学期代码表 名称
      ,d.XQMC as d_XQ_XQMC--学期数据表 学期名称
      ,d.XQKSRQ as d_XQ_XQKSRQ--学期数据表 学期开始日期
      ,d.XQJSRQ as d_XQ_XQJSRQ--学期数据表 学期结束日期
      ,e.SCHOOLID as e_NJ_SCHOOLID--年级数据类表 学校名
      ,e.NJMC as e_NJ_NJMC--年级数据类表 年级名称
      ,f.SCHOOLID as f_BJ_SCHOOLID--班级数据类表 学校名
      ,f.NJ as f_BJ_NJ--班级数据类表 年级号
      ,f.BJ as f_BJ_BJ--班级数据类表 班级名称
      ,f.JBNY as f_BJ_JBNY--班级数据类表 建班年月
      ,f.BZRGH as f_BJ_BZRGH--班级数据类表 班主任工号
      ,f.BZXH as f_BJ_BZXH--班级数据类表 班长学号
      ,f.BJRYCH as f_BJ_BJRYCH--班级数据类表 班级荣誉称号
      ,f.XZ as f_BJ_XZ--班级数据类表 学制
      ,f.BJLXM as f_BJ_BJLXM--班级数据类表 班级类型码
      ,fb.MC as f_BJ_BJLXM_MC--中小学班级类型代码表 名称
      ,f.WLLX as f_BJ_WLLX--班级数据类表 文理类型
      ,f.BYRQ as f_BJ_BYRQ--班级数据类表 毕业日期
      ,f.SFSSMZSYJXB as f_BJ_SFSSMZSYJXB--班级数据类表 是否少数民族双语教学班
      ,fc.MC as f_BJ_SFSSMZSYJXB_MC--是否标志代码表 名称
      ,f.SYJXMSM as f_BJ_SYJXMSM--班级数据类表 双语教学模式码
      ,fd.MC as f_BJ_SYJXMSM_MC--少数民族双语教学模式代码表 名称
      ,fd.SM as f_BJ_SYJXMSM_SM--少数民族双语教学模式代码表 说明
      ,g.SCHOOLID as g_JZGJBSJ_SCHOOLID--教职工基本数据子类表 学校名
      ,g.GH as g_JZGJBSJ_GH--教职工基本数据子类表 工号
      ,g.XM as g_JZGJBSJ_XM--教职工基本数据子类表 姓名
      ,g.YWXM as g_JZGJBSJ_YWXM--教职工基本数据子类表 英文姓名
      ,g.XMPY as g_JZGJBSJ_XMPY--教职工基本数据子类表 姓名拼音
      ,g.CYM as g_JZGJBSJ_CYM--教职工基本数据子类表 曾用名
      ,g.XBM as g_JZGJBSJ_XBM--教职工基本数据子类表 性别码
      ,gb.MC as g_JZGJBSJ_XBM_MC--人的性别代码 名称
      ,g.CSRQ as g_JZGJBSJ_CSRQ--教职工基本数据子类表 出生日期
      ,g.CSDM as g_JZGJBSJ_CSDM--教职工基本数据子类表 出生地码
      ,gc.MC as g_JZGJBSJ_CSDM_MC--中华人民共和国行政区划代码 名称
      ,g.JG as g_JZGJBSJ_JG--教职工基本数据子类表 籍贯
      ,g.MZM as g_JZGJBSJ_MZM--教职工基本数据子类表 民族码
      ,gd.MZMC as g_JZGJBSJ_MZM_MZMC--中国各民族名称的罗马字母拼写法和代码 民族名称
      ,gd.ZMDM as g_JZGJBSJ_MZM_ZMDM--中国各民族名称的罗马字母拼写法和代码 字母代码
      ,g.GJDQM as g_JZGJBSJ_GJDQM--教职工基本数据子类表 国籍/地区码
      ,ge.GJDQMCJC as g_JZGJBSJ_GJDQM_GJDQMCJC--世界各国和地区名称代码 国家/地区名称简称
      ,ge.EZMDM as g_JZGJBSJ_GJDQM_EZMDM--世界各国和地区名称代码 二字母代码
      ,ge.SZMDM as g_JZGJBSJ_GJDQM_SZMDM--世界各国和地区名称代码 三字母代码
      ,g.SFZJLXM as g_JZGJBSJ_SFZJLXM--教职工基本数据子类表 身份证件类型码
      ,gf.MC as g_JZGJBSJ_SFZJLXM_MC--身份证件类型代码表 名称
      ,g.SFZJH as g_JZGJBSJ_SFZJH--教职工基本数据子类表 身份证件号
      ,g.HYZKM as g_JZGJBSJ_HYZKM--教职工基本数据子类表 婚姻状况码
      ,gg.MC as g_JZGJBSJ_HYZKM_MC--婚姻状况代码 名称
      ,g.GATQWM as g_JZGJBSJ_GATQWM--教职工基本数据子类表 港澳台侨外码
      ,gh.MC as g_JZGJBSJ_GATQWM_MC--港澳台侨外代码表 名称
      ,gh.SM as g_JZGJBSJ_GATQWM_SM--港澳台侨外代码表 说明
      ,g.ZZMMM as g_JZGJBSJ_ZZMMM--教职工基本数据子类表 政治面貌码
      ,gi.MC as g_JZGJBSJ_ZZMMM_MC--政治面貌代码 名称
      ,gi.JC as g_JZGJBSJ_ZZMMM_JC--政治面貌代码 简称
      ,g.JKZKM as g_JZGJBSJ_JKZKM--教职工基本数据子类表 健康状况码
      ,gj.MC as g_JZGJBSJ_JKZKM_MC--健康状况1位数字代码 名称
      ,gj.SM as g_JZGJBSJ_JKZKM_SM--健康状况1位数字代码 说明
      ,g.XYZJM as g_JZGJBSJ_XYZJM--教职工基本数据子类表 信仰宗教码
      ,gk.MC as g_JZGJBSJ_XYZJM_MC--宗教信仰代码 名称
      ,g.XXM as g_JZGJBSJ_XXM--教职工基本数据子类表 血型码
      ,gl.MC as g_JZGJBSJ_XXM_MC--血型代码表 名称
      ,gl.JC as g_JZGJBSJ_XXM_JC--血型代码表 简称
      ,g.ZP as g_JZGJBSJ_ZP--教职工基本数据子类表 照片
      ,g.SFZJYXQ as g_JZGJBSJ_SFZJYXQ--教职工基本数据子类表 身份证件有效期
      ,g.JGH as g_JZGJBSJ_JGH--教职工基本数据子类表 机构号
      ,g.JTZZ as g_JZGJBSJ_JTZZ--教职工基本数据子类表 家庭住址
      ,g.XZZ as g_JZGJBSJ_XZZ--教职工基本数据子类表 现住址
      ,g.HKSZD as g_JZGJBSJ_HKSZD--教职工基本数据子类表 户口所在地
      ,g.HKXZM as g_JZGJBSJ_HKXZM--教职工基本数据子类表 户口性质码
      ,gm.MC as g_JZGJBSJ_HKXZM_MC--户口类别代码 名称
      ,g.XLM as g_JZGJBSJ_XLM--教职工基本数据子类表 学历码
      ,gn.MC as g_JZGJBSJ_XLM_MC--学历代码 名称
      ,g.GZNY as g_JZGJBSJ_GZNY--教职工基本数据子类表 参加工作年月
      ,g.LXNY as g_JZGJBSJ_LXNY--教职工基本数据子类表 来校年月
      ,g.CJNY as g_JZGJBSJ_CJNY--教职工基本数据子类表 从教年月
      ,g.BZLBM as g_JZGJBSJ_BZLBM--教职工基本数据子类表 编制类别码
      ,go.MC as g_JZGJBSJ_BZLBM_MC--中小学编制类别代码表 名称
      ,g.DABH as g_JZGJBSJ_DABH--教职工基本数据子类表 档案编号
      ,g.DAWB as g_JZGJBSJ_DAWB--教职工基本数据子类表 档案文本
      ,g.TXDZ as g_JZGJBSJ_TXDZ--教职工基本数据子类表 通信地址
      ,g.LXDH as g_JZGJBSJ_LXDH--教职工基本数据子类表 联系电话
      ,g.YZBM as g_JZGJBSJ_YZBM--教职工基本数据子类表 邮政编码
      ,g.DZXX as g_JZGJBSJ_DZXX--教职工基本数据子类表 电子信箱
      ,g.ZYDZ as g_JZGJBSJ_ZYDZ--教职工基本数据子类表 主页地址
      ,g.TC as g_JZGJBSJ_TC--教职工基本数据子类表 特长
      ,g.GWZYM as g_JZGJBSJ_GWZYM--教职工基本数据子类表 岗位职业码
      ,gp.MC as g_JZGJBSJ_GWZYM_MC--岗位职业代码表 名称
      ,g.ZYRKXD as g_JZGJBSJ_ZYRKXD--教职工基本数据子类表 主要任课学段
      ,gq.MC as g_JZGJBSJ_ZYRKXD_MC--任课学段代码表 名称
      ,h.SCHOOLID as h_KC_SCHOOLID--课程数据类 学校名
      ,h.KCMC as h_KC_KCMC--课程数据类 课程名称
      ,h.KCM as h_KC_KCM--课程数据类 课程码
      ,hb.MC as h_KC_KCM_MC--中小学课程代码表 名称
      ,hb.SYXX as h_KC_KCM_SYXX--中小学课程代码表 适用学校
      ,h.KCDJM as h_KC_KCDJM--课程数据类 课程等级码
      ,hc.MC as h_KC_KCDJM_MC--中小学课程等级代码表 名称
      ,h.KCBM as h_KC_KCBM--课程数据类 课程别名
      ,h.KCJJ as h_KC_KCJJ--课程数据类 课程简介
      ,h.KCYQ as h_KC_KCYQ--课程数据类 课程要求
      ,h.ZXS as h_KC_ZXS--课程数据类 总学时
      ,h.ZHXS as h_KC_ZHXS--课程数据类 周学时
      ,h.ZXXS as h_KC_ZXXS--课程数据类 自学学时
      ,h.SKFSM as h_KC_SKFSM--课程数据类 授课方式码
      ,hd.MC as h_KC_SKFSM_MC--授课方式代码表 名称
      ,h.JCBM as h_KC_JCBM--课程数据类 教材编码
      ,h.CKSM as h_KC_CKSM--课程数据类 参考书目
      ,h.CDXZ as h_KC_CDXZ--课程数据类 场地限制
      ,h.SFZK as h_KC_SFZK--课程数据类 是否主课
      ,he.MC as h_KC_SFZK_MC--是否标志代码表 名称
      ,i.SCHOOLID as i_XSXX_SCHOOLID--学生基本数据子类表 学校名
      ,i.XH as i_XSXX_XH--学生基本数据子类表 学号
      ,i.XM as i_XSXX_XM--学生基本数据子类表 姓名
      ,i.YWXM as i_XSXX_YWXM--学生基本数据子类表 英文姓名
      ,i.XMPY as i_XSXX_XMPY--学生基本数据子类表 姓名拼音
      ,i.CYM as i_XSXX_CYM--学生基本数据子类表 曾用名
      ,i.XBM as i_XSXX_XBM--学生基本数据子类表 性别码
      ,ib.MC as i_XSXX_XBM_MC--人的性别代码 名称
      ,i.CSRQ as i_XSXX_CSRQ--学生基本数据子类表 出生日期
      ,i.CSDM as i_XSXX_CSDM--学生基本数据子类表 出生地码
      ,ic.MC as i_XSXX_CSDM_MC--中华人民共和国行政区划代码 名称
      ,i.JG as i_XSXX_JG--学生基本数据子类表 籍贯
      ,i.MZM as i_XSXX_MZM--学生基本数据子类表 民族码
      ,id.MZMC as i_XSXX_MZM_MZMC--中国各民族名称的罗马字母拼写法和代码 民族名称
      ,id.ZMDM as i_XSXX_MZM_ZMDM--中国各民族名称的罗马字母拼写法和代码 字母代码
      ,i.GJDQM as i_XSXX_GJDQM--学生基本数据子类表 国籍/地区码
      ,ie.GJDQMCJC as i_XSXX_GJDQM_GJDQMCJC--世界各国和地区名称代码 国家/地区名称简称
      ,ie.EZMDM as i_XSXX_GJDQM_EZMDM--世界各国和地区名称代码 二字母代码
      ,ie.SZMDM as i_XSXX_GJDQM_SZMDM--世界各国和地区名称代码 三字母代码
      ,i.SFZJLXM as i_XSXX_SFZJLXM--学生基本数据子类表 身份证件类型码
      ,if.MC as i_XSXX_SFZJLXM_MC--身份证件类型代码表 名称
      ,i.SFZJH as i_XSXX_SFZJH--学生基本数据子类表 身份证件号
      ,i.HYZKM as i_XSXX_HYZKM--学生基本数据子类表 婚姻状况码
      ,ig.MC as i_XSXX_HYZKM_MC--婚姻状况代码 名称
      ,i.GATQWM as i_XSXX_GATQWM--学生基本数据子类表 港澳台侨外码
      ,ih.MC as i_XSXX_GATQWM_MC--港澳台侨外代码表 名称
      ,ih.SM as i_XSXX_GATQWM_SM--港澳台侨外代码表 说明
      ,i.ZZMMM as i_XSXX_ZZMMM--学生基本数据子类表 政治面貌码
      ,ii.MC as i_XSXX_ZZMMM_MC--政治面貌代码 名称
      ,ii.JC as i_XSXX_ZZMMM_JC--政治面貌代码 简称
      ,i.JKZKM as i_XSXX_JKZKM--学生基本数据子类表 健康状况码
      ,ij.MC as i_XSXX_JKZKM_MC--健康状况1位数字代码 名称
      ,ij.SM as i_XSXX_JKZKM_SM--健康状况1位数字代码 说明
      ,i.XYZJM as i_XSXX_XYZJM--学生基本数据子类表 信仰宗教码
      ,ik.MC as i_XSXX_XYZJM_MC--宗教信仰代码 名称
      ,i.XXM as i_XSXX_XXM--学生基本数据子类表 血型码
      ,il.MC as i_XSXX_XXM_MC--血型代码表 名称
      ,il.JC as i_XSXX_XXM_JC--血型代码表 简称
      ,i.ZP as i_XSXX_ZP--学生基本数据子类表 照片
      ,i.SFZJYXQ as i_XSXX_SFZJYXQ--学生基本数据子类表 身份证件有效期
      ,i.DSZYBZ as i_XSXX_DSZYBZ--学生基本数据子类表 独生子女标志
      ,im.MC as i_XSXX_DSZYBZ_MC--是否标志代码表 名称
      ,i.RXNY as i_XSXX_RXNY--学生基本数据子类表 入学年月
      ,i.NJ as i_XSXX_NJ--学生基本数据子类表 年级
      ,i.BH as i_XSXX_BH--学生基本数据子类表 班号
      ,i.XSLBM as i_XSXX_XSLBM--学生基本数据子类表 学生类别码
      ,in.MC as i_XSXX_XSLBM_MC--学生类别代码表 名称
      ,in.SM as i_XSXX_XSLBM_SM--学生类别代码表 说明
      ,i.XZZ as i_XSXX_XZZ--学生基本数据子类表 现住址
      ,i.HKSZD as i_XSXX_HKSZD--学生基本数据子类表 户口所在地
      ,i.HKXZM as i_XSXX_HKXZM--学生基本数据子类表 户口性质码
      ,io.MC as i_XSXX_HKXZM_MC--户口类别代码 名称
      ,i.SFLDRK as i_XSXX_SFLDRK--学生基本数据子类表 是否流动人口
      ,ip.MC as i_XSXX_SFLDRK_MC--是否标志代码表 名称
      ,i.TC as i_XSXX_TC--学生基本数据子类表 特长
      ,i.LXDH as i_XSXX_LXDH--学生基本数据子类表 联系电话
      ,i.TXDZ as i_XSXX_TXDZ--学生基本数据子类表 通信地址
      ,i.YZBM as i_XSXX_YZBM--学生基本数据子类表 邮政编码
      ,i.DZXX as i_XSXX_DZXX--学生基本数据子类表 电子信箱
      ,i.ZYDZ as i_XSXX_ZYDZ--学生基本数据子类表 主页地址
      ,i.XJH as i_XSXX_XJH--学生基本数据子类表 学籍号

FROM dbo.EDU_ZXJX_06_A01_MPJL AS a LEFT OUTER JOIN
      dbo.EDU_SYS_01_XN AS c ON a.XNID = c.ID /*学年*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS d ON a.XQID = d.ID /*学期*/ AND a.SCHOOLID = d.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_02_01_NJ AS e ON a.NJID = e.NJ /*年级*/ AND a.SCHOOLID = e.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_03_01_BJ AS f ON a.BJID = f.BH /*班级*/ AND a.SCHOOLID = f.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZXJZ_01_01_JZGJBSJ AS g ON a.MPJS = g.ID /*面批教师*/ AND a.SCHOOLID = g.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZXJX_01_01_KC AS h ON a.MPKC = h.KCH /*面批课程*/ AND a.SCHOOLID = h.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZXXS_01_01_XSXX AS i ON a.MPXS = i.ID /*面批学生*/ AND a.SCHOOLID = i.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS db ON d.XQM = db.DM /*学期码*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXBJLX AS fb ON f.BJLXM = fb.DM /*班级类型码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS fc ON f.SFSSMZSYJXB = fc.DM /*是否少数民族双语教学班*/ LEFT OUTER JOIN
      dbo.EDU_JY_SSMZSYJXMS AS fd ON f.SYJXMSM = fd.DM /*双语教学模式码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS gb ON g.XBM = gb.DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS gc ON g.CSDM = gc.DM /*出生地码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS gd ON g.MZM = gd.DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS ge ON g.GJDQM = ge.DM /*国籍/地区码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS gf ON g.SFZJLXM = gf.DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS gg ON g.HYZKM = gg.DM /*婚姻状况码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS gh ON g.GATQWM = gh.DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS gi ON g.ZZMMM = gi.DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS gj ON g.JKZKM = gj.DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS gk ON g.XYZJM = gk.DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS gl ON g.XXM = gl.DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS gm ON g.HKXZM = gm.DM /*户口性质码*/ LEFT OUTER JOIN
      dbo.EDU_GB_XL AS gn ON g.XLM = gn.DM /*学历码*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXBZLB AS go ON g.BZLBM = go.DM /*编制类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWZY AS gp ON g.GWZYM = gp.DM /*岗位职业码*/ LEFT OUTER JOIN
      dbo.EDU_JY_RKXD AS gq ON g.ZYRKXD = gq.DM /*主要任课学段*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXKC AS hb ON h.KCM = hb.DM /*课程码*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXKCDJ AS hc ON h.KCDJM = hc.DM /*课程等级码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS hd ON h.SKFSM = hd.DM /*授课方式码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS he ON h.SFZK = he.DM /*是否主课*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS ib ON i.XBM = ib.DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS ic ON i.CSDM = ic.DM /*出生地码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS id ON i.MZM = id.DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS ie ON i.GJDQM = ie.DM /*国籍/地区码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS if ON i.SFZJLXM = if.DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS ig ON i.HYZKM = ig.DM /*婚姻状况码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS ih ON i.GATQWM = ih.DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS ii ON i.ZZMMM = ii.DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS ij ON i.JKZKM = ij.DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS ik ON i.XYZJM = ik.DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS il ON i.XXM = il.DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS im ON i.DSZYBZ = im.DM /*独生子女标志*/ LEFT OUTER JOIN
      dbo.EDU_JY_XSLB AS in ON i.XSLBM = in.DM /*学生类别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS io ON i.HKXZM = io.DM /*户口性质码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS ip ON i.SFLDRK = ip.DM /*是否流动人口*/
GO
