
--学生换班记录表
CREATE VIEW [dbo].[VIEW_EDU_ZXXS_07_A03_XSHBJL_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校ID
      ,a.[XSXXID]--学生ID
      ,a.[XQID]--学期ID
      ,a.[YBJID]--原班级ID
      ,a.[XBJID]--现班级ID
      ,a.[CZRY]--操作人员
      ,a.[HBSJ]--换班时间
      ,c.SCHOOLID as c_XSXX_SCHOOLID--学生基本数据子类表 学校名
      ,c.XH as c_XSXX_XH--学生基本数据子类表 学号
      ,c.XM as c_XSXX_XM--学生基本数据子类表 姓名
      ,c.YWXM as c_XSXX_YWXM--学生基本数据子类表 英文姓名
      ,c.XMPY as c_XSXX_XMPY--学生基本数据子类表 姓名拼音
      ,c.CYM as c_XSXX_CYM--学生基本数据子类表 曾用名
      ,c.XBM as c_XSXX_XBM--学生基本数据子类表 性别码
      ,[cb].MC as c_XSXX_XBM_MC--人的性别代码 名称
      ,c.CSRQ as c_XSXX_CSRQ--学生基本数据子类表 出生日期
      ,c.CSDM as c_XSXX_CSDM--学生基本数据子类表 出生地码
      ,[cc].MC as c_XSXX_CSDM_MC--中华人民共和国行政区划代码 名称
      ,c.JG as c_XSXX_JG--学生基本数据子类表 籍贯
      ,c.MZM as c_XSXX_MZM--学生基本数据子类表 民族码
      ,[cd].MZMC as c_XSXX_MZM_MZMC--中国各民族名称的罗马字母拼写法和代码 民族名称
      ,[cd].ZMDM as c_XSXX_MZM_ZMDM--中国各民族名称的罗马字母拼写法和代码 字母代码
      ,c.GJDQM as c_XSXX_GJDQM--学生基本数据子类表 国籍/地区码
      ,[ce].GJDQMCJC as c_XSXX_GJDQM_GJDQMCJC--世界各国和地区名称代码 国家/地区名称简称
      ,[ce].EZMDM as c_XSXX_GJDQM_EZMDM--世界各国和地区名称代码 二字母代码
      ,[ce].SZMDM as c_XSXX_GJDQM_SZMDM--世界各国和地区名称代码 三字母代码
      ,c.SFZJLXM as c_XSXX_SFZJLXM--学生基本数据子类表 身份证件类型码
      ,[cf].MC as c_XSXX_SFZJLXM_MC--身份证件类型代码表 名称
      ,c.SFZJH as c_XSXX_SFZJH--学生基本数据子类表 身份证件号
      ,c.HYZKM as c_XSXX_HYZKM--学生基本数据子类表 婚姻状况码
      ,[cg].MC as c_XSXX_HYZKM_MC--婚姻状况代码 名称
      ,c.GATQWM as c_XSXX_GATQWM--学生基本数据子类表 港澳台侨外码
      ,[ch].MC as c_XSXX_GATQWM_MC--港澳台侨外代码表 名称
      ,[ch].SM as c_XSXX_GATQWM_SM--港澳台侨外代码表 说明
      ,c.ZZMMM as c_XSXX_ZZMMM--学生基本数据子类表 政治面貌码
      ,[ci].MC as c_XSXX_ZZMMM_MC--政治面貌代码 名称
      ,[ci].JC as c_XSXX_ZZMMM_JC--政治面貌代码 简称
      ,c.JKZKM as c_XSXX_JKZKM--学生基本数据子类表 健康状况码
      ,[cj].MC as c_XSXX_JKZKM_MC--健康状况1位数字代码 名称
      ,[cj].SM as c_XSXX_JKZKM_SM--健康状况1位数字代码 说明
      ,c.XYZJM as c_XSXX_XYZJM--学生基本数据子类表 信仰宗教码
      ,[ck].MC as c_XSXX_XYZJM_MC--宗教信仰代码 名称
      ,c.XXM as c_XSXX_XXM--学生基本数据子类表 血型码
      ,[cl].MC as c_XSXX_XXM_MC--血型代码表 名称
      ,[cl].JC as c_XSXX_XXM_JC--血型代码表 简称
      ,c.ZP as c_XSXX_ZP--学生基本数据子类表 照片
      ,c.SFZJYXQ as c_XSXX_SFZJYXQ--学生基本数据子类表 身份证件有效期
      ,c.DSZYBZ as c_XSXX_DSZYBZ--学生基本数据子类表 独生子女标志
      ,[cm].MC as c_XSXX_DSZYBZ_MC--是否标志代码表 名称
      ,c.RXNY as c_XSXX_RXNY--学生基本数据子类表 入学年月
      ,c.NJ as c_XSXX_NJ--学生基本数据子类表 年级
      ,c.BH as c_XSXX_BH--学生基本数据子类表 班号
      ,c.XSLBM as c_XSXX_XSLBM--学生基本数据子类表 学生类别码
      ,[cn].MC as c_XSXX_XSLBM_MC--学生类别代码表 名称
      ,[cn].SM as c_XSXX_XSLBM_SM--学生类别代码表 说明
      ,c.XZZ as c_XSXX_XZZ--学生基本数据子类表 现住址
      ,c.HKSZD as c_XSXX_HKSZD--学生基本数据子类表 户口所在地
      ,c.HKXZM as c_XSXX_HKXZM--学生基本数据子类表 户口性质码
      ,[co].MC as c_XSXX_HKXZM_MC--户口类别代码 名称
      ,c.SFLDRK as c_XSXX_SFLDRK--学生基本数据子类表 是否流动人口
      ,[cp].MC as c_XSXX_SFLDRK_MC--是否标志代码表 名称
      ,c.TC as c_XSXX_TC--学生基本数据子类表 特长
      ,c.LXDH as c_XSXX_LXDH--学生基本数据子类表 联系电话
      ,c.TXDZ as c_XSXX_TXDZ--学生基本数据子类表 通信地址
      ,c.YZBM as c_XSXX_YZBM--学生基本数据子类表 邮政编码
      ,c.DZXX as c_XSXX_DZXX--学生基本数据子类表 电子信箱
      ,c.ZYDZ as c_XSXX_ZYDZ--学生基本数据子类表 主页地址
      ,c.XJH as c_XSXX_XJH--学生基本数据子类表 学籍号
      ,c.XSDQZTM as c_XSXX_XSDQZTM--学生基本数据子类表 学生当前状态码
      ,[cq].MC as c_XSXX_XSDQZTM_MC--学生当前状态代码表 名称
      ,[cq].SM as c_XSXX_XSDQZTM_SM--学生当前状态代码表 说明
      ,d.SCHOOLID as d_XQ_SCHOOLID--学期数据表 学校名
      ,d.XNID as d_XQ_XNID--学期数据表 学年
      ,d.XQM as d_XQ_XQM--学期数据表 学期码
      ,[db].MC as d_XQ_XQM_MC--学期代码表 名称
      ,d.XQMC as d_XQ_XQMC--学期数据表 学期名称
      ,d.XQKSRQ as d_XQ_XQKSRQ--学期数据表 学期开始日期
      ,d.XQJSRQ as d_XQ_XQJSRQ--学期数据表 学期结束日期
      ,e.SCHOOLID as e_BJ_SCHOOLID--班级数据类表 学校名
      ,e.NJ as e_BJ_NJ--班级数据类表 年级号
      ,e.BJ as e_BJ_BJ--班级数据类表 班级名称
      ,e.JBNY as e_BJ_JBNY--班级数据类表 建班年月
      ,e.BZRGH as e_BJ_BZRGH--班级数据类表 班主任工号
      ,e.BZXH as e_BJ_BZXH--班级数据类表 班长学号
      ,e.BJRYCH as e_BJ_BJRYCH--班级数据类表 班级荣誉称号
      ,e.XZ as e_BJ_XZ--班级数据类表 学制
      ,e.BJLXM as e_BJ_BJLXM--班级数据类表 班级类型码
      ,[eb].MC as e_BJ_BJLXM_MC--中小学班级类型代码表 名称
      ,e.WLLX as e_BJ_WLLX--班级数据类表 文理类型
      ,e.BYRQ as e_BJ_BYRQ--班级数据类表 毕业日期
      ,e.SFSSMZSYJXB as e_BJ_SFSSMZSYJXB--班级数据类表 是否少数民族双语教学班
      ,[ec].MC as e_BJ_SFSSMZSYJXB_MC--是否标志代码表 名称
      ,e.SYJXMSM as e_BJ_SYJXMSM--班级数据类表 双语教学模式码
      ,[ed].MC as e_BJ_SYJXMSM_MC--少数民族双语教学模式代码表 名称
      ,[ed].SM as e_BJ_SYJXMSM_SM--少数民族双语教学模式代码表 说明
      ,e.BZRID as e_BJ_BZRID--班级数据类表 班主任ID
      ,e.ZT as e_BJ_ZT--班级数据类表 状态
      ,e.PLSX as e_BJ_PLSX--班级数据类表 排列顺序
      ,f.SCHOOLID as f_BJ_SCHOOLID--班级数据类表 学校名
      ,f.NJ as f_BJ_NJ--班级数据类表 年级号
      ,f.BJ as f_BJ_BJ--班级数据类表 班级名称
      ,f.JBNY as f_BJ_JBNY--班级数据类表 建班年月
      ,f.BZRGH as f_BJ_BZRGH--班级数据类表 班主任工号
      ,f.BZXH as f_BJ_BZXH--班级数据类表 班长学号
      ,f.BJRYCH as f_BJ_BJRYCH--班级数据类表 班级荣誉称号
      ,f.XZ as f_BJ_XZ--班级数据类表 学制
      ,f.BJLXM as f_BJ_BJLXM--班级数据类表 班级类型码
      ,[fb].MC as f_BJ_BJLXM_MC--中小学班级类型代码表 名称
      ,f.WLLX as f_BJ_WLLX--班级数据类表 文理类型
      ,f.BYRQ as f_BJ_BYRQ--班级数据类表 毕业日期
      ,f.SFSSMZSYJXB as f_BJ_SFSSMZSYJXB--班级数据类表 是否少数民族双语教学班
      ,[fc].MC as f_BJ_SFSSMZSYJXB_MC--是否标志代码表 名称
      ,f.SYJXMSM as f_BJ_SYJXMSM--班级数据类表 双语教学模式码
      ,[fd].MC as f_BJ_SYJXMSM_MC--少数民族双语教学模式代码表 名称
      ,[fd].SM as f_BJ_SYJXMSM_SM--少数民族双语教学模式代码表 说明
      ,f.BZRID as f_BJ_BZRID--班级数据类表 班主任ID
      ,f.ZT as f_BJ_ZT--班级数据类表 状态
      ,f.PLSX as f_BJ_PLSX--班级数据类表 排列顺序
      ,g.SCHOOLID as g_USER_SCHOOLID--应用系统用户表 学校ID
      ,g.APPID as g_USER_APPID--应用系统用户表 应用ID
      ,g.STATUS as g_USER_STATUS--应用系统用户表 用户状态
      ,g.USERTYPE as g_USER_USERTYPE--应用系统用户表 用户类别
      ,g.USERID as g_USER_USERID--应用系统用户表 用户ID
      ,g.ROLEIDLst as g_USER_ROLEIDLst--应用系统用户表 用户角色
      ,g.XM as g_USER_XM--应用系统用户表 姓名
      ,g.XB as g_USER_XB--应用系统用户表 性别
      ,g.QQ as g_USER_QQ--应用系统用户表 QQ
      ,g.DZYJ as g_USER_DZYJ--应用系统用户表 电子邮件
      ,g.LXDH as g_USER_LXDH--应用系统用户表 联系电话
      ,g.ZJDLSJ as g_USER_ZJDLSJ--应用系统用户表 最近一次登录时间
      ,g.DLCGCS as g_USER_DLCGCS--应用系统用户表 登录成功次数
      ,g.YHCJSJ as g_USER_YHCJSJ--应用系统用户表 用户创建时间
      ,g.YHRY as g_USER_YHRY--应用系统用户表 用户荣誉
      ,g.YHJF as g_USER_YHJF--应用系统用户表 用户积分

FROM dbo.EDU_ZXXS_07_A03_XSHBJL AS a LEFT OUTER JOIN
      dbo.EDU_ZXXS_01_01_XSXX AS c ON a.XSXXID = c.ID /*学生ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS d ON a.XQID = d.ID /*学期ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_03_01_BJ AS e ON a.YBJID = e.BH /*原班级ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_03_01_BJ AS f ON a.XBJID = f.BH /*现班级ID*/ AND a.SCHOOLID = f.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS g ON a.CZRY = g.LOGINNAME /*操作人员*/ AND a.SCHOOLID = g.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
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
      dbo.EDU_JY_SFBZ AS [cm] ON c.DSZYBZ = [cm].DM /*独生子女标志*/ LEFT OUTER JOIN
      dbo.EDU_JY_XSLB AS [cn] ON c.XSLBM = [cn].DM /*学生类别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS [co] ON c.HKXZM = [co].DM /*户口性质码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [cp] ON c.SFLDRK = [cp].DM /*是否流动人口*/ LEFT OUTER JOIN
      dbo.EDU_JY_XSDQZT AS [cq] ON c.XSDQZTM = [cq].DM /*学生当前状态码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS [db] ON d.XQM = [db].DM /*学期码*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXBJLX AS [eb] ON e.BJLXM = [eb].DM /*班级类型码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [ec] ON e.SFSSMZSYJXB = [ec].DM /*是否少数民族双语教学班*/ LEFT OUTER JOIN
      dbo.EDU_JY_SSMZSYJXMS AS [ed] ON e.SYJXMSM = [ed].DM /*双语教学模式码*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXBJLX AS [fb] ON f.BJLXM = [fb].DM /*班级类型码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [fc] ON f.SFSSMZSYJXB = [fc].DM /*是否少数民族双语教学班*/ LEFT OUTER JOIN
      dbo.EDU_JY_SSMZSYJXMS AS [fd] ON f.SYJXMSM = [fd].DM /*双语教学模式码*/
GO
