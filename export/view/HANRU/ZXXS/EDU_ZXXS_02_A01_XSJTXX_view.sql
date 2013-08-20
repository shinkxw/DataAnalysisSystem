
--学生家庭信息数据表
CREATE VIEW [dbo].[VIEW_EDU_ZXXS_02_A01_XSJTXX_DISP]
AS
SELECT a.[XSXXID]--学生信息数据表
      ,a.[SCHOOLID]--学校名
      ,a.[JTZZ]--家庭住址
      ,a.[JTYZBM]--家庭邮政编码
      ,a.[JTDH]--家庭电话
      ,a.[JTLXR]--家庭联系人
      ,a.[JTDZXX]--家庭电子信箱
      ,a.[JTRK]--家庭人口
      ,a.[JTZYSRLY]--家庭主要收入来源
      ,a.[JTYSRJE]--家庭月收入金额
      ,a.[JTNSRJE]--家庭年收入金额
      ,a.[LJZJHCZ]--离家最近火车站
      ,b.SCHOOLID as b_XSXX_SCHOOLID--学生基本数据子类表 学校名
      ,b.XH as b_XSXX_XH--学生基本数据子类表 学号
      ,b.XM as b_XSXX_XM--学生基本数据子类表 姓名
      ,b.YWXM as b_XSXX_YWXM--学生基本数据子类表 英文姓名
      ,b.XMPY as b_XSXX_XMPY--学生基本数据子类表 姓名拼音
      ,b.CYM as b_XSXX_CYM--学生基本数据子类表 曾用名
      ,b.XBM as b_XSXX_XBM--学生基本数据子类表 性别码
      ,bb.MC as b_XSXX_XBM_MC--人的性别代码 名称
      ,b.CSRQ as b_XSXX_CSRQ--学生基本数据子类表 出生日期
      ,b.CSDM as b_XSXX_CSDM--学生基本数据子类表 出生地码
      ,bc.MC as b_XSXX_CSDM_MC--中华人民共和国行政区划代码 名称
      ,b.JG as b_XSXX_JG--学生基本数据子类表 籍贯
      ,b.MZM as b_XSXX_MZM--学生基本数据子类表 民族码
      ,bd.MZMC as b_XSXX_MZM_MZMC--中国各民族名称的罗马字母拼写法和代码 民族名称
      ,bd.ZMDM as b_XSXX_MZM_ZMDM--中国各民族名称的罗马字母拼写法和代码 字母代码
      ,b.GJDQM as b_XSXX_GJDQM--学生基本数据子类表 国籍/地区码
      ,be.GJDQMCJC as b_XSXX_GJDQM_GJDQMCJC--世界各国和地区名称代码 国家/地区名称简称
      ,be.EZMDM as b_XSXX_GJDQM_EZMDM--世界各国和地区名称代码 二字母代码
      ,be.SZMDM as b_XSXX_GJDQM_SZMDM--世界各国和地区名称代码 三字母代码
      ,b.SFZJLXM as b_XSXX_SFZJLXM--学生基本数据子类表 身份证件类型码
      ,bf.MC as b_XSXX_SFZJLXM_MC--身份证件类型代码表 名称
      ,b.SFZJH as b_XSXX_SFZJH--学生基本数据子类表 身份证件号
      ,b.HYZKM as b_XSXX_HYZKM--学生基本数据子类表 婚姻状况码
      ,bg.MC as b_XSXX_HYZKM_MC--婚姻状况代码 名称
      ,b.GATQWM as b_XSXX_GATQWM--学生基本数据子类表 港澳台侨外码
      ,bh.MC as b_XSXX_GATQWM_MC--港澳台侨外代码表 名称
      ,bh.SM as b_XSXX_GATQWM_SM--港澳台侨外代码表 说明
      ,b.ZZMMM as b_XSXX_ZZMMM--学生基本数据子类表 政治面貌码
      ,bi.MC as b_XSXX_ZZMMM_MC--政治面貌代码 名称
      ,bi.JC as b_XSXX_ZZMMM_JC--政治面貌代码 简称
      ,b.JKZKM as b_XSXX_JKZKM--学生基本数据子类表 健康状况码
      ,bj.MC as b_XSXX_JKZKM_MC--健康状况1位数字代码 名称
      ,bj.SM as b_XSXX_JKZKM_SM--健康状况1位数字代码 说明
      ,b.XYZJM as b_XSXX_XYZJM--学生基本数据子类表 信仰宗教码
      ,bk.MC as b_XSXX_XYZJM_MC--宗教信仰代码 名称
      ,b.XXM as b_XSXX_XXM--学生基本数据子类表 血型码
      ,bl.MC as b_XSXX_XXM_MC--血型代码表 名称
      ,bl.JC as b_XSXX_XXM_JC--血型代码表 简称
      ,b.ZP as b_XSXX_ZP--学生基本数据子类表 照片
      ,b.SFZJYXQ as b_XSXX_SFZJYXQ--学生基本数据子类表 身份证件有效期
      ,b.DSZYBZ as b_XSXX_DSZYBZ--学生基本数据子类表 独生子女标志
      ,bm.MC as b_XSXX_DSZYBZ_MC--是否标志代码表 名称
      ,b.RXNY as b_XSXX_RXNY--学生基本数据子类表 入学年月
      ,b.NJ as b_XSXX_NJ--学生基本数据子类表 年级
      ,b.BH as b_XSXX_BH--学生基本数据子类表 班号
      ,b.XSLBM as b_XSXX_XSLBM--学生基本数据子类表 学生类别码
      ,bn.MC as b_XSXX_XSLBM_MC--学生类别代码表 名称
      ,bn.SM as b_XSXX_XSLBM_SM--学生类别代码表 说明
      ,b.XZZ as b_XSXX_XZZ--学生基本数据子类表 现住址
      ,b.HKSZD as b_XSXX_HKSZD--学生基本数据子类表 户口所在地
      ,b.HKXZM as b_XSXX_HKXZM--学生基本数据子类表 户口性质码
      ,bo.MC as b_XSXX_HKXZM_MC--户口类别代码 名称
      ,b.SFLDRK as b_XSXX_SFLDRK--学生基本数据子类表 是否流动人口
      ,bp.MC as b_XSXX_SFLDRK_MC--是否标志代码表 名称
      ,b.TC as b_XSXX_TC--学生基本数据子类表 特长
      ,b.LXDH as b_XSXX_LXDH--学生基本数据子类表 联系电话
      ,b.TXDZ as b_XSXX_TXDZ--学生基本数据子类表 通信地址
      ,b.YZBM as b_XSXX_YZBM--学生基本数据子类表 邮政编码
      ,b.DZXX as b_XSXX_DZXX--学生基本数据子类表 电子信箱
      ,b.ZYDZ as b_XSXX_ZYDZ--学生基本数据子类表 主页地址
      ,b.XJH as b_XSXX_XJH--学生基本数据子类表 学籍号
      ,c.SCHOOLNAME as c_SCHOOL_SCHOOLNAME--学校配置表 学校名称
      ,c.SCHOOLTYPE as c_SCHOOL_SCHOOLTYPE--学校配置表 学校类型
      ,c.XNID as c_SCHOOL_XNID--学校配置表 学年ID
      ,c.XQID as c_SCHOOL_XQID--学校配置表 学期ID
      ,c.MatchURL as c_SCHOOL_MatchURL--学校配置表 匹配url
      ,c.LogLevel as c_SCHOOL_LogLevel--学校配置表 日志级别

FROM dbo.EDU_ZXXS_02_A01_XSJTXX AS a LEFT OUTER JOIN
      dbo.EDU_ZXXS_01_01_XSXX AS b ON a.XSXXID = b.ID /*学生信息数据表*/ AND a.SCHOOLID = b.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS c ON a.SCHOOLID = c.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS bb ON b.XBM = bb.DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS bc ON b.CSDM = bc.DM /*出生地码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS bd ON b.MZM = bd.DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS be ON b.GJDQM = be.DM /*国籍/地区码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS bf ON b.SFZJLXM = bf.DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS bg ON b.HYZKM = bg.DM /*婚姻状况码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS bh ON b.GATQWM = bh.DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS bi ON b.ZZMMM = bi.DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS bj ON b.JKZKM = bj.DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS bk ON b.XYZJM = bk.DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS bl ON b.XXM = bl.DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS bm ON b.DSZYBZ = bm.DM /*独生子女标志*/ LEFT OUTER JOIN
      dbo.EDU_JY_XSLB AS bn ON b.XSLBM = bn.DM /*学生类别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS bo ON b.HKXZM = bo.DM /*户口性质码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS bp ON b.SFLDRK = bp.DM /*是否流动人口*/
GO
