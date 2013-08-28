
--在校考试成绩数据子类表
CREATE VIEW [dbo].[VIEW_EDU_ZXXS_02_06_ZXKSCJ_DISP]
AS
SELECT a.[ID]--考试成绩表
      ,a.[SCHOOLID]--学校名
      ,a.[XSXXID]--学生ID
      ,a.[XN]--学年（度）
      ,a.[XQM]--学期码
      ,a.[KSRQ]--考试日期
      ,a.[KCH]--课程号
      ,a.[KSFSM]--考试方式码
      ,a.[KSXZM]--考试性质码
      ,a.[KSXSM]--考试形式码
      ,a.[FSLKSCJ]--分数类考试成绩
      ,a.[DJLKSCJ]--等级类考试成绩
      ,a.[KCCJ]--课程成绩
      ,a.[KCDJCJM]--课程等级成绩码
      ,a.[RKJSGH]--任课教师工号
      ,a.[CJLRRH]--成绩录入人号
      ,a.[CJLRRQ]--成绩录入日期
      ,a.[CJLRSJ]--成绩录入时间
      ,a.[XQID]--学期
      ,a.[XNID]--学年
      ,a.[RKJSID]--任课教师ID
      ,a.[CJLRRID]--成绩录入人ID
      ,c.SCHOOLID as c_XSXX_SCHOOLID--学生基本数据子类表 学校名
      ,c.XH as c_XSXX_XH--学生基本数据子类表 学号
      ,c.XM as c_XSXX_XM--学生基本数据子类表 姓名
      ,c.YWXM as c_XSXX_YWXM--学生基本数据子类表 英文姓名
      ,c.XMPY as c_XSXX_XMPY--学生基本数据子类表 姓名拼音
      ,c.CYM as c_XSXX_CYM--学生基本数据子类表 曾用名
      ,c.XBM as c_XSXX_XBM--学生基本数据子类表 性别码
      ,cb.MC as c_XSXX_XBM_MC--人的性别代码 名称
      ,c.CSRQ as c_XSXX_CSRQ--学生基本数据子类表 出生日期
      ,c.CSDM as c_XSXX_CSDM--学生基本数据子类表 出生地码
      ,cc.MC as c_XSXX_CSDM_MC--中华人民共和国行政区划代码 名称
      ,c.JG as c_XSXX_JG--学生基本数据子类表 籍贯
      ,c.MZM as c_XSXX_MZM--学生基本数据子类表 民族码
      ,cd.MZMC as c_XSXX_MZM_MZMC--中国各民族名称的罗马字母拼写法和代码 民族名称
      ,cd.ZMDM as c_XSXX_MZM_ZMDM--中国各民族名称的罗马字母拼写法和代码 字母代码
      ,c.GJDQM as c_XSXX_GJDQM--学生基本数据子类表 国籍/地区码
      ,ce.GJDQMCJC as c_XSXX_GJDQM_GJDQMCJC--世界各国和地区名称代码 国家/地区名称简称
      ,ce.EZMDM as c_XSXX_GJDQM_EZMDM--世界各国和地区名称代码 二字母代码
      ,ce.SZMDM as c_XSXX_GJDQM_SZMDM--世界各国和地区名称代码 三字母代码
      ,c.SFZJLXM as c_XSXX_SFZJLXM--学生基本数据子类表 身份证件类型码
      ,cf.MC as c_XSXX_SFZJLXM_MC--身份证件类型代码表 名称
      ,c.SFZJH as c_XSXX_SFZJH--学生基本数据子类表 身份证件号
      ,c.HYZKM as c_XSXX_HYZKM--学生基本数据子类表 婚姻状况码
      ,cg.MC as c_XSXX_HYZKM_MC--婚姻状况代码 名称
      ,c.GATQWM as c_XSXX_GATQWM--学生基本数据子类表 港澳台侨外码
      ,ch.MC as c_XSXX_GATQWM_MC--港澳台侨外代码表 名称
      ,ch.SM as c_XSXX_GATQWM_SM--港澳台侨外代码表 说明
      ,c.ZZMMM as c_XSXX_ZZMMM--学生基本数据子类表 政治面貌码
      ,ci.MC as c_XSXX_ZZMMM_MC--政治面貌代码 名称
      ,ci.JC as c_XSXX_ZZMMM_JC--政治面貌代码 简称
      ,c.JKZKM as c_XSXX_JKZKM--学生基本数据子类表 健康状况码
      ,cj.MC as c_XSXX_JKZKM_MC--健康状况1位数字代码 名称
      ,cj.SM as c_XSXX_JKZKM_SM--健康状况1位数字代码 说明
      ,c.XYZJM as c_XSXX_XYZJM--学生基本数据子类表 信仰宗教码
      ,ck.MC as c_XSXX_XYZJM_MC--宗教信仰代码 名称
      ,c.XXM as c_XSXX_XXM--学生基本数据子类表 血型码
      ,cl.MC as c_XSXX_XXM_MC--血型代码表 名称
      ,cl.JC as c_XSXX_XXM_JC--血型代码表 简称
      ,c.ZP as c_XSXX_ZP--学生基本数据子类表 照片
      ,c.SFZJYXQ as c_XSXX_SFZJYXQ--学生基本数据子类表 身份证件有效期
      ,c.DSZYBZ as c_XSXX_DSZYBZ--学生基本数据子类表 独生子女标志
      ,cm.MC as c_XSXX_DSZYBZ_MC--是否标志代码表 名称
      ,c.RXNY as c_XSXX_RXNY--学生基本数据子类表 入学年月
      ,c.NJ as c_XSXX_NJ--学生基本数据子类表 年级
      ,c.BH as c_XSXX_BH--学生基本数据子类表 班号
      ,c.XSLBM as c_XSXX_XSLBM--学生基本数据子类表 学生类别码
      ,cn.MC as c_XSXX_XSLBM_MC--学生类别代码表 名称
      ,cn.SM as c_XSXX_XSLBM_SM--学生类别代码表 说明
      ,c.XZZ as c_XSXX_XZZ--学生基本数据子类表 现住址
      ,c.HKSZD as c_XSXX_HKSZD--学生基本数据子类表 户口所在地
      ,c.HKXZM as c_XSXX_HKXZM--学生基本数据子类表 户口性质码
      ,co.MC as c_XSXX_HKXZM_MC--户口类别代码 名称
      ,c.SFLDRK as c_XSXX_SFLDRK--学生基本数据子类表 是否流动人口
      ,cp.MC as c_XSXX_SFLDRK_MC--是否标志代码表 名称
      ,c.TC as c_XSXX_TC--学生基本数据子类表 特长
      ,c.LXDH as c_XSXX_LXDH--学生基本数据子类表 联系电话
      ,c.TXDZ as c_XSXX_TXDZ--学生基本数据子类表 通信地址
      ,c.YZBM as c_XSXX_YZBM--学生基本数据子类表 邮政编码
      ,c.DZXX as c_XSXX_DZXX--学生基本数据子类表 电子信箱
      ,c.ZYDZ as c_XSXX_ZYDZ--学生基本数据子类表 主页地址
      ,c.XJH as c_XSXX_XJH--学生基本数据子类表 学籍号
      ,d.MC as d_XQ_MC--学期代码表 名称
      ,e.SCHOOLID as e_KC_SCHOOLID--课程数据类 学校名
      ,e.KCMC as e_KC_KCMC--课程数据类 课程名称
      ,e.KCM as e_KC_KCM--课程数据类 课程码
      ,eb.MC as e_KC_KCM_MC--中小学课程代码表 名称
      ,eb.SYXX as e_KC_KCM_SYXX--中小学课程代码表 适用学校
      ,e.KCDJM as e_KC_KCDJM--课程数据类 课程等级码
      ,ec.MC as e_KC_KCDJM_MC--中小学课程等级代码表 名称
      ,e.KCBM as e_KC_KCBM--课程数据类 课程别名
      ,e.KCJJ as e_KC_KCJJ--课程数据类 课程简介
      ,e.KCYQ as e_KC_KCYQ--课程数据类 课程要求
      ,e.ZXS as e_KC_ZXS--课程数据类 总学时
      ,e.ZHXS as e_KC_ZHXS--课程数据类 周学时
      ,e.ZXXS as e_KC_ZXXS--课程数据类 自学学时
      ,e.SKFSM as e_KC_SKFSM--课程数据类 授课方式码
      ,ed.MC as e_KC_SKFSM_MC--授课方式代码表 名称
      ,e.JCBM as e_KC_JCBM--课程数据类 教材编码
      ,e.CKSM as e_KC_CKSM--课程数据类 参考书目
      ,e.CDXZ as e_KC_CDXZ--课程数据类 场地限制
      ,e.SFZK as e_KC_SFZK--课程数据类 是否主课
      ,ee.MC as e_KC_SFZK_MC--是否标志代码表 名称
      ,f.MC as f_KSFS_MC--考试方式代码表 名称
      ,f.SM as f_KSFS_SM--考试方式代码表 说明
      ,g.MC as g_KSXZ_MC--考试性质代码表 名称
      ,g.SM as g_KSXZ_SM--考试性质代码表 说明
      ,h.MC as h_KSXS_MC--考试形式代码表 名称
      ,i.SCHOOLID as i_XQ_SCHOOLID--学期数据表 学校名
      ,i.XNID as i_XQ_XNID--学期数据表 学年
      ,i.XQM as i_XQ_XQM--学期数据表 学期码
      ,ib.MC as i_XQ_XQM_MC--学期代码表 名称
      ,i.XQMC as i_XQ_XQMC--学期数据表 学期名称
      ,i.XQKSRQ as i_XQ_XQKSRQ--学期数据表 学期开始日期
      ,i.XQJSRQ as i_XQ_XQJSRQ--学期数据表 学期结束日期
      ,j.SCHOOLID as j_XN_SCHOOLID--学年表 学校名
      ,j.XN as j_XN_XN--学年表 学年
      ,k.SCHOOLID as k_JZGJBSJ_SCHOOLID--教职工基本数据子类表 学校名
      ,k.GH as k_JZGJBSJ_GH--教职工基本数据子类表 工号
      ,k.XM as k_JZGJBSJ_XM--教职工基本数据子类表 姓名
      ,k.YWXM as k_JZGJBSJ_YWXM--教职工基本数据子类表 英文姓名
      ,k.XMPY as k_JZGJBSJ_XMPY--教职工基本数据子类表 姓名拼音
      ,k.CYM as k_JZGJBSJ_CYM--教职工基本数据子类表 曾用名
      ,k.XBM as k_JZGJBSJ_XBM--教职工基本数据子类表 性别码
      ,kb.MC as k_JZGJBSJ_XBM_MC--人的性别代码 名称
      ,k.CSRQ as k_JZGJBSJ_CSRQ--教职工基本数据子类表 出生日期
      ,k.CSDM as k_JZGJBSJ_CSDM--教职工基本数据子类表 出生地码
      ,kc.MC as k_JZGJBSJ_CSDM_MC--中华人民共和国行政区划代码 名称
      ,k.JG as k_JZGJBSJ_JG--教职工基本数据子类表 籍贯
      ,k.MZM as k_JZGJBSJ_MZM--教职工基本数据子类表 民族码
      ,kd.MZMC as k_JZGJBSJ_MZM_MZMC--中国各民族名称的罗马字母拼写法和代码 民族名称
      ,kd.ZMDM as k_JZGJBSJ_MZM_ZMDM--中国各民族名称的罗马字母拼写法和代码 字母代码
      ,k.GJDQM as k_JZGJBSJ_GJDQM--教职工基本数据子类表 国籍/地区码
      ,ke.GJDQMCJC as k_JZGJBSJ_GJDQM_GJDQMCJC--世界各国和地区名称代码 国家/地区名称简称
      ,ke.EZMDM as k_JZGJBSJ_GJDQM_EZMDM--世界各国和地区名称代码 二字母代码
      ,ke.SZMDM as k_JZGJBSJ_GJDQM_SZMDM--世界各国和地区名称代码 三字母代码
      ,k.SFZJLXM as k_JZGJBSJ_SFZJLXM--教职工基本数据子类表 身份证件类型码
      ,kf.MC as k_JZGJBSJ_SFZJLXM_MC--身份证件类型代码表 名称
      ,k.SFZJH as k_JZGJBSJ_SFZJH--教职工基本数据子类表 身份证件号
      ,k.HYZKM as k_JZGJBSJ_HYZKM--教职工基本数据子类表 婚姻状况码
      ,kg.MC as k_JZGJBSJ_HYZKM_MC--婚姻状况代码 名称
      ,k.GATQWM as k_JZGJBSJ_GATQWM--教职工基本数据子类表 港澳台侨外码
      ,kh.MC as k_JZGJBSJ_GATQWM_MC--港澳台侨外代码表 名称
      ,kh.SM as k_JZGJBSJ_GATQWM_SM--港澳台侨外代码表 说明
      ,k.ZZMMM as k_JZGJBSJ_ZZMMM--教职工基本数据子类表 政治面貌码
      ,ki.MC as k_JZGJBSJ_ZZMMM_MC--政治面貌代码 名称
      ,ki.JC as k_JZGJBSJ_ZZMMM_JC--政治面貌代码 简称
      ,k.JKZKM as k_JZGJBSJ_JKZKM--教职工基本数据子类表 健康状况码
      ,kj.MC as k_JZGJBSJ_JKZKM_MC--健康状况1位数字代码 名称
      ,kj.SM as k_JZGJBSJ_JKZKM_SM--健康状况1位数字代码 说明
      ,k.XYZJM as k_JZGJBSJ_XYZJM--教职工基本数据子类表 信仰宗教码
      ,kk.MC as k_JZGJBSJ_XYZJM_MC--宗教信仰代码 名称
      ,k.XXM as k_JZGJBSJ_XXM--教职工基本数据子类表 血型码
      ,kl.MC as k_JZGJBSJ_XXM_MC--血型代码表 名称
      ,kl.JC as k_JZGJBSJ_XXM_JC--血型代码表 简称
      ,k.ZP as k_JZGJBSJ_ZP--教职工基本数据子类表 照片
      ,k.SFZJYXQ as k_JZGJBSJ_SFZJYXQ--教职工基本数据子类表 身份证件有效期
      ,k.JGH as k_JZGJBSJ_JGH--教职工基本数据子类表 机构号
      ,k.JTZZ as k_JZGJBSJ_JTZZ--教职工基本数据子类表 家庭住址
      ,k.XZZ as k_JZGJBSJ_XZZ--教职工基本数据子类表 现住址
      ,k.HKSZD as k_JZGJBSJ_HKSZD--教职工基本数据子类表 户口所在地
      ,k.HKXZM as k_JZGJBSJ_HKXZM--教职工基本数据子类表 户口性质码
      ,km.MC as k_JZGJBSJ_HKXZM_MC--户口类别代码 名称
      ,k.XLM as k_JZGJBSJ_XLM--教职工基本数据子类表 学历码
      ,kn.MC as k_JZGJBSJ_XLM_MC--学历代码 名称
      ,k.GZNY as k_JZGJBSJ_GZNY--教职工基本数据子类表 参加工作年月
      ,k.LXNY as k_JZGJBSJ_LXNY--教职工基本数据子类表 来校年月
      ,k.CJNY as k_JZGJBSJ_CJNY--教职工基本数据子类表 从教年月
      ,k.BZLBM as k_JZGJBSJ_BZLBM--教职工基本数据子类表 编制类别码
      ,ko.MC as k_JZGJBSJ_BZLBM_MC--中小学编制类别代码表 名称
      ,k.DABH as k_JZGJBSJ_DABH--教职工基本数据子类表 档案编号
      ,k.DAWB as k_JZGJBSJ_DAWB--教职工基本数据子类表 档案文本
      ,k.TXDZ as k_JZGJBSJ_TXDZ--教职工基本数据子类表 通信地址
      ,k.LXDH as k_JZGJBSJ_LXDH--教职工基本数据子类表 联系电话
      ,k.YZBM as k_JZGJBSJ_YZBM--教职工基本数据子类表 邮政编码
      ,k.DZXX as k_JZGJBSJ_DZXX--教职工基本数据子类表 电子信箱
      ,k.ZYDZ as k_JZGJBSJ_ZYDZ--教职工基本数据子类表 主页地址
      ,k.TC as k_JZGJBSJ_TC--教职工基本数据子类表 特长
      ,k.GWZYM as k_JZGJBSJ_GWZYM--教职工基本数据子类表 岗位职业码
      ,kp.MC as k_JZGJBSJ_GWZYM_MC--岗位职业代码表 名称
      ,k.ZYRKXD as k_JZGJBSJ_ZYRKXD--教职工基本数据子类表 主要任课学段
      ,kq.MC as k_JZGJBSJ_ZYRKXD_MC--任课学段代码表 名称
      ,l.SCHOOLID as l_JZGJBSJ_SCHOOLID--教职工基本数据子类表 学校名
      ,l.GH as l_JZGJBSJ_GH--教职工基本数据子类表 工号
      ,l.XM as l_JZGJBSJ_XM--教职工基本数据子类表 姓名
      ,l.YWXM as l_JZGJBSJ_YWXM--教职工基本数据子类表 英文姓名
      ,l.XMPY as l_JZGJBSJ_XMPY--教职工基本数据子类表 姓名拼音
      ,l.CYM as l_JZGJBSJ_CYM--教职工基本数据子类表 曾用名
      ,l.XBM as l_JZGJBSJ_XBM--教职工基本数据子类表 性别码
      ,lb.MC as l_JZGJBSJ_XBM_MC--人的性别代码 名称
      ,l.CSRQ as l_JZGJBSJ_CSRQ--教职工基本数据子类表 出生日期
      ,l.CSDM as l_JZGJBSJ_CSDM--教职工基本数据子类表 出生地码
      ,lc.MC as l_JZGJBSJ_CSDM_MC--中华人民共和国行政区划代码 名称
      ,l.JG as l_JZGJBSJ_JG--教职工基本数据子类表 籍贯
      ,l.MZM as l_JZGJBSJ_MZM--教职工基本数据子类表 民族码
      ,ld.MZMC as l_JZGJBSJ_MZM_MZMC--中国各民族名称的罗马字母拼写法和代码 民族名称
      ,ld.ZMDM as l_JZGJBSJ_MZM_ZMDM--中国各民族名称的罗马字母拼写法和代码 字母代码
      ,l.GJDQM as l_JZGJBSJ_GJDQM--教职工基本数据子类表 国籍/地区码
      ,le.GJDQMCJC as l_JZGJBSJ_GJDQM_GJDQMCJC--世界各国和地区名称代码 国家/地区名称简称
      ,le.EZMDM as l_JZGJBSJ_GJDQM_EZMDM--世界各国和地区名称代码 二字母代码
      ,le.SZMDM as l_JZGJBSJ_GJDQM_SZMDM--世界各国和地区名称代码 三字母代码
      ,l.SFZJLXM as l_JZGJBSJ_SFZJLXM--教职工基本数据子类表 身份证件类型码
      ,lf.MC as l_JZGJBSJ_SFZJLXM_MC--身份证件类型代码表 名称
      ,l.SFZJH as l_JZGJBSJ_SFZJH--教职工基本数据子类表 身份证件号
      ,l.HYZKM as l_JZGJBSJ_HYZKM--教职工基本数据子类表 婚姻状况码
      ,lg.MC as l_JZGJBSJ_HYZKM_MC--婚姻状况代码 名称
      ,l.GATQWM as l_JZGJBSJ_GATQWM--教职工基本数据子类表 港澳台侨外码
      ,lh.MC as l_JZGJBSJ_GATQWM_MC--港澳台侨外代码表 名称
      ,lh.SM as l_JZGJBSJ_GATQWM_SM--港澳台侨外代码表 说明
      ,l.ZZMMM as l_JZGJBSJ_ZZMMM--教职工基本数据子类表 政治面貌码
      ,li.MC as l_JZGJBSJ_ZZMMM_MC--政治面貌代码 名称
      ,li.JC as l_JZGJBSJ_ZZMMM_JC--政治面貌代码 简称
      ,l.JKZKM as l_JZGJBSJ_JKZKM--教职工基本数据子类表 健康状况码
      ,lj.MC as l_JZGJBSJ_JKZKM_MC--健康状况1位数字代码 名称
      ,lj.SM as l_JZGJBSJ_JKZKM_SM--健康状况1位数字代码 说明
      ,l.XYZJM as l_JZGJBSJ_XYZJM--教职工基本数据子类表 信仰宗教码
      ,lk.MC as l_JZGJBSJ_XYZJM_MC--宗教信仰代码 名称
      ,l.XXM as l_JZGJBSJ_XXM--教职工基本数据子类表 血型码
      ,ll.MC as l_JZGJBSJ_XXM_MC--血型代码表 名称
      ,ll.JC as l_JZGJBSJ_XXM_JC--血型代码表 简称
      ,l.ZP as l_JZGJBSJ_ZP--教职工基本数据子类表 照片
      ,l.SFZJYXQ as l_JZGJBSJ_SFZJYXQ--教职工基本数据子类表 身份证件有效期
      ,l.JGH as l_JZGJBSJ_JGH--教职工基本数据子类表 机构号
      ,l.JTZZ as l_JZGJBSJ_JTZZ--教职工基本数据子类表 家庭住址
      ,l.XZZ as l_JZGJBSJ_XZZ--教职工基本数据子类表 现住址
      ,l.HKSZD as l_JZGJBSJ_HKSZD--教职工基本数据子类表 户口所在地
      ,l.HKXZM as l_JZGJBSJ_HKXZM--教职工基本数据子类表 户口性质码
      ,lm.MC as l_JZGJBSJ_HKXZM_MC--户口类别代码 名称
      ,l.XLM as l_JZGJBSJ_XLM--教职工基本数据子类表 学历码
      ,ln.MC as l_JZGJBSJ_XLM_MC--学历代码 名称
      ,l.GZNY as l_JZGJBSJ_GZNY--教职工基本数据子类表 参加工作年月
      ,l.LXNY as l_JZGJBSJ_LXNY--教职工基本数据子类表 来校年月
      ,l.CJNY as l_JZGJBSJ_CJNY--教职工基本数据子类表 从教年月
      ,l.BZLBM as l_JZGJBSJ_BZLBM--教职工基本数据子类表 编制类别码
      ,lo.MC as l_JZGJBSJ_BZLBM_MC--中小学编制类别代码表 名称
      ,l.DABH as l_JZGJBSJ_DABH--教职工基本数据子类表 档案编号
      ,l.DAWB as l_JZGJBSJ_DAWB--教职工基本数据子类表 档案文本
      ,l.TXDZ as l_JZGJBSJ_TXDZ--教职工基本数据子类表 通信地址
      ,l.LXDH as l_JZGJBSJ_LXDH--教职工基本数据子类表 联系电话
      ,l.YZBM as l_JZGJBSJ_YZBM--教职工基本数据子类表 邮政编码
      ,l.DZXX as l_JZGJBSJ_DZXX--教职工基本数据子类表 电子信箱
      ,l.ZYDZ as l_JZGJBSJ_ZYDZ--教职工基本数据子类表 主页地址
      ,l.TC as l_JZGJBSJ_TC--教职工基本数据子类表 特长
      ,l.GWZYM as l_JZGJBSJ_GWZYM--教职工基本数据子类表 岗位职业码
      ,lp.MC as l_JZGJBSJ_GWZYM_MC--岗位职业代码表 名称
      ,l.ZYRKXD as l_JZGJBSJ_ZYRKXD--教职工基本数据子类表 主要任课学段
      ,lq.MC as l_JZGJBSJ_ZYRKXD_MC--任课学段代码表 名称

FROM dbo.EDU_ZXXS_02_06_ZXKSCJ AS a LEFT OUTER JOIN
      dbo.EDU_ZXXS_01_01_XSXX AS c ON a.XSXXID = c.ID /*学生ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS d ON a.XQM = d.DM /*学期码*/ LEFT OUTER JOIN
      dbo.EDU_ZXJX_01_01_KC AS e ON a.KCH = e.KCH /*课程号*/ AND a.SCHOOLID = e.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_JY_KSFS AS f ON a.KSFSM = f.DM /*考试方式码*/ LEFT OUTER JOIN
      dbo.EDU_JY_KSXZ AS g ON a.KSXZM = g.DM /*考试性质码*/ LEFT OUTER JOIN
      dbo.EDU_JY_KSXS AS h ON a.KSXSM = h.DM /*考试形式码*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS i ON a.XQID = i.ID /*学期*/ AND a.SCHOOLID = i.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_SYS_01_XN AS j ON a.XNID = j.ID /*学年*/ AND a.SCHOOLID = j.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZXJZ_01_01_JZGJBSJ AS k ON a.RKJSID = k.ID /*任课教师ID*/ AND a.SCHOOLID = k.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZXJZ_01_01_JZGJBSJ AS l ON a.CJLRRID = l.ID /*成绩录入人ID*/ AND a.SCHOOLID = l.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS cb ON c.XBM = cb.DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS cc ON c.CSDM = cc.DM /*出生地码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS cd ON c.MZM = cd.DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS ce ON c.GJDQM = ce.DM /*国籍/地区码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS cf ON c.SFZJLXM = cf.DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS cg ON c.HYZKM = cg.DM /*婚姻状况码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS ch ON c.GATQWM = ch.DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS ci ON c.ZZMMM = ci.DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS cj ON c.JKZKM = cj.DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS ck ON c.XYZJM = ck.DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS cl ON c.XXM = cl.DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS cm ON c.DSZYBZ = cm.DM /*独生子女标志*/ LEFT OUTER JOIN
      dbo.EDU_JY_XSLB AS cn ON c.XSLBM = cn.DM /*学生类别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS co ON c.HKXZM = co.DM /*户口性质码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS cp ON c.SFLDRK = cp.DM /*是否流动人口*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXKC AS eb ON e.KCM = eb.DM /*课程码*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXKCDJ AS ec ON e.KCDJM = ec.DM /*课程等级码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS ed ON e.SKFSM = ed.DM /*授课方式码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS ee ON e.SFZK = ee.DM /*是否主课*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS ib ON i.XQM = ib.DM /*学期码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS kb ON k.XBM = kb.DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS kc ON k.CSDM = kc.DM /*出生地码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS kd ON k.MZM = kd.DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS ke ON k.GJDQM = ke.DM /*国籍/地区码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS kf ON k.SFZJLXM = kf.DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS kg ON k.HYZKM = kg.DM /*婚姻状况码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS kh ON k.GATQWM = kh.DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS ki ON k.ZZMMM = ki.DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS kj ON k.JKZKM = kj.DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS kk ON k.XYZJM = kk.DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS kl ON k.XXM = kl.DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS km ON k.HKXZM = km.DM /*户口性质码*/ LEFT OUTER JOIN
      dbo.EDU_GB_XL AS kn ON k.XLM = kn.DM /*学历码*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXBZLB AS ko ON k.BZLBM = ko.DM /*编制类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWZY AS kp ON k.GWZYM = kp.DM /*岗位职业码*/ LEFT OUTER JOIN
      dbo.EDU_JY_RKXD AS kq ON k.ZYRKXD = kq.DM /*主要任课学段*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS lb ON l.XBM = lb.DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS lc ON l.CSDM = lc.DM /*出生地码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS ld ON l.MZM = ld.DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS le ON l.GJDQM = le.DM /*国籍/地区码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS lf ON l.SFZJLXM = lf.DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS lg ON l.HYZKM = lg.DM /*婚姻状况码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS lh ON l.GATQWM = lh.DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS li ON l.ZZMMM = li.DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS lj ON l.JKZKM = lj.DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS lk ON l.XYZJM = lk.DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS ll ON l.XXM = ll.DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS lm ON l.HKXZM = lm.DM /*户口性质码*/ LEFT OUTER JOIN
      dbo.EDU_GB_XL AS ln ON l.XLM = ln.DM /*学历码*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXBZLB AS lo ON l.BZLBM = lo.DM /*编制类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWZY AS lp ON l.GWZYM = lp.DM /*岗位职业码*/ LEFT OUTER JOIN
      dbo.EDU_JY_RKXD AS lq ON l.ZYRKXD = lq.DM /*主要任课学段*/
GO
