
--学籍基本数据表
CREATE VIEW [dbo].[VIEW_EDU_ZZXS_07_01_XJSJ_DISP]
AS
SELECT a.[XSXXID]--学生信息数据表
      ,a.[SCHOOLID]--学校名
      ,a.[ZYXXID]--专业基本信息
      ,a.[ZZBJID]--学校班级数据表
      ,a.[ZZNJID]--学校年级数据表
      ,a.[RXNY]--入学年月
      ,a.[XSLBM]--学生类别码
      ,a.[XZ]--学制
      ,a.[ZYM]--专业码
      ,a.[XSDQZTM]--学生当前状态码
      ,b.SCHOOLID as b_XSXX_SCHOOLID--学生信息数据表 学校名
      ,b.XH as b_XSXX_XH--学生信息数据表 学号
      ,b.XM as b_XSXX_XM--学生信息数据表 姓名
      ,b.YWXM as b_XSXX_YWXM--学生信息数据表 英文姓名
      ,b.XMPY as b_XSXX_XMPY--学生信息数据表 姓名拼音
      ,b.CYM as b_XSXX_CYM--学生信息数据表 曾用名
      ,b.SFZJLXM as b_XSXX_SFZJLXM--学生信息数据表 身份证件类型码
      ,bb.MC as b_XSXX_SFZJLXM_MC--身份证件类型代码表 名称
      ,b.SFZJH as b_XSXX_SFZJH--学生信息数据表 身份证件号
      ,b.XBM as b_XSXX_XBM--学生信息数据表 性别码
      ,bc.MC as b_XSXX_XBM_MC--人的性别代码 名称
      ,b.XXM as b_XSXX_XXM--学生信息数据表 血型码
      ,bd.MC as b_XSXX_XXM_MC--血型代码表 名称
      ,bd.JC as b_XSXX_XXM_JC--血型代码表 简称
      ,b.CSRQ as b_XSXX_CSRQ--学生信息数据表 出生日期
      ,b.CSDM as b_XSXX_CSDM--学生信息数据表 出生地码
      ,be.MC as b_XSXX_CSDM_MC--中华人民共和国行政区划代码 名称
      ,b.JG as b_XSXX_JG--学生信息数据表 籍贯
      ,b.MZM as b_XSXX_MZM--学生信息数据表 民族码
      ,bf.MZMC as b_XSXX_MZM_MZMC--中国各民族名称的罗马字母拼写法和代码 民族名称
      ,bf.ZMDM as b_XSXX_MZM_ZMDM--中国各民族名称的罗马字母拼写法和代码 字母代码
      ,b.HYZKM as b_XSXX_HYZKM--学生信息数据表 婚姻状况码
      ,bg.MC as b_XSXX_HYZKM_MC--婚姻状况代码 名称
      ,b.XYZJM as b_XSXX_XYZJM--学生信息数据表 信仰宗教码
      ,bh.MC as b_XSXX_XYZJM_MC--宗教信仰代码 名称
      ,b.GATQWM as b_XSXX_GATQWM--学生信息数据表 港澳台侨外码
      ,bi.MC as b_XSXX_GATQWM_MC--港澳台侨外代码表 名称
      ,bi.SM as b_XSXX_GATQWM_SM--港澳台侨外代码表 说明
      ,b.JKZKM as b_XSXX_JKZKM--学生信息数据表 健康状况码
      ,bj.MC as b_XSXX_JKZKM_MC--健康状况1位数字代码 名称
      ,bj.SM as b_XSXX_JKZKM_SM--健康状况1位数字代码 说明
      ,b.ZZMMM as b_XSXX_ZZMMM--学生信息数据表 政治面貌码
      ,bk.MC as b_XSXX_ZZMMM_MC--政治面貌代码 名称
      ,bk.JC as b_XSXX_ZZMMM_JC--政治面貌代码 简称
      ,b.HKSZDXZQHM as b_XSXX_HKSZDXZQHM--学生信息数据表 户口所在地行政区划码
      ,bl.MC as b_XSXX_HKSZDXZQHM_MC--中华人民共和国行政区划代码 名称
      ,b.HKLBM as b_XSXX_HKLBM--学生信息数据表 户口类别码
      ,bm.MC as b_XSXX_HKLBM_MC--户口类别代码 名称
      ,b.SFSLDRK as b_XSXX_SFSLDRK--学生信息数据表 是否是流动人口
      ,bn.MC as b_XSXX_SFSLDRK_MC--是否标志代码表 名称
      ,b.GJDQM as b_XSXX_GJDQM--学生信息数据表 国籍/地区
      ,bo.GJDQMCJC as b_XSXX_GJDQM_GJDQMCJC--世界各国和地区名称代码 国家/地区名称简称
      ,bo.EZMDM as b_XSXX_GJDQM_EZMDM--世界各国和地区名称代码 二字母代码
      ,bo.SZMDM as b_XSXX_GJDQM_SZMDM--世界各国和地区名称代码 三字母代码
      ,b.TC as b_XSXX_TC--学生信息数据表 特长
      ,b.XSLXDH as b_XSXX_XSLXDH--学生信息数据表 学生联系电话
      ,b.WLDZ as b_XSXX_WLDZ--学生信息数据表 网络地址
      ,b.JSTXH as b_XSXX_JSTXH--学生信息数据表 即时通讯号
      ,b.DZXX as b_XSXX_DZXX--学生信息数据表 电子信箱
      ,b.ZP as b_XSXX_ZP--学生信息数据表 照片(路径)
      ,c.SCHOOLNAME as c_SCHOOL_SCHOOLNAME--学校配置表 学校名称
      ,c.SCHOOLTYPE as c_SCHOOL_SCHOOLTYPE--学校配置表 学校类型
      ,c.XNID as c_SCHOOL_XNID--学校配置表 学年ID
      ,c.XQID as c_SCHOOL_XQID--学校配置表 学期ID
      ,c.MatchURL as c_SCHOOL_MatchURL--学校配置表 匹配url
      ,c.MenhuURL as c_SCHOOL_MenhuURL--学校配置表 门户url
      ,c.MenhuWebid as c_SCHOOL_MenhuWebid--学校配置表 门户webid
      ,c.LogLevel as c_SCHOOL_LogLevel--学校配置表 日志级别
      ,c.ModuleIdList as c_SCHOOL_ModuleIdList--学校配置表 权限列表
      ,d.SCHOOLID as d_ZYXX_SCHOOLID--专业基本信息数据表 学校名
      ,d.ZYDM as d_ZYXX_ZYDM--专业基本信息数据表 专业代码
      ,db.ZYMLLB as d_ZYXX_ZYDM_ZYMLLB--自建专业代码 专业目录类别
      ,db.MC as d_ZYXX_ZYDM_MC--自建专业代码 名称
      ,d.ZYMC as d_ZYXX_ZYMC--专业基本信息数据表 专业名称
      ,d.ZYYWMC as d_ZYXX_ZYYWMC--专业基本信息数据表 专业英文名称
      ,d.XZ as d_ZYXX_XZ--专业基本信息数据表 学制
      ,d.ZYFXMC as d_ZYXX_ZYFXMC--专业基本信息数据表 专业方向名称
      ,d.ZYJC as d_ZYXX_ZYJC--专业基本信息数据表 专业简称
      ,d.JLNY as d_ZYXX_JLNY--专业基本信息数据表 建立年月
      ,d.ZYJSS as d_ZYXX_ZYJSS--专业基本信息数据表 专业教师数
      ,d.KSJGH as d_ZYXX_KSJGH--专业基本信息数据表 开设机构号
      ,d.ZXF as d_ZYXX_ZXF--专业基本信息数据表 总学分
      ,d.SSZYML as d_ZYXX_SSZYML--专业基本信息数据表 所属专业目录
      ,dc.MC as d_ZYXX_SSZYML_MC--专业目录代码 名称
      ,d.ZYLB as d_ZYXX_ZYLB--专业基本信息数据表 专业类别名称
      ,e.SCHOOLID as e_ZZBJ_SCHOOLID--学校班级数据表 学校名
      ,e.ZYXXID as e_ZZBJ_ZYXXID--学校班级数据表 专业基本信息
      ,e.ZZNJID as e_ZZBJ_ZZNJID--学校班级数据表 学校年级数据表
      ,e.XZBMC as e_ZZBJ_XZBMC--学校班级数据表 行政班名称
      ,e.JBNY as e_ZZBJ_JBNY--学校班级数据表 建班年月
      ,e.BZRGH as e_ZZBJ_BZRGH--学校班级数据表 班主任工号
      ,e.JSBH as e_ZZBJ_JSBH--学校班级数据表 教室编号
      ,e.NANSRS as e_ZZBJ_NANSRS--学校班级数据表 男生人数
      ,e.NVSRS as e_ZZBJ_NVSRS--学校班级数据表 女生人数
      ,e.ZRS as e_ZZBJ_ZRS--学校班级数据表 总人数
      ,e.BZXH as e_ZZBJ_BZXH--学校班级数据表 班长学号
      ,e.JXJH as e_ZZBJ_JXJH--学校班级数据表 教学计划
      ,e.JGH as e_ZZBJ_JGH--学校班级数据表 机构号
      ,e.XQDM as e_ZZBJ_XQDM--学校班级数据表 校区代码
      ,f.SCHOOLID as f_ZZNJ_SCHOOLID--学校年级数据表 学校名
      ,f.NJMC as f_ZZNJ_NJMC--学校年级数据表 年级名称
      ,f.SSNF as f_ZZNJ_SSNF--学校年级数据表 所属年份
      ,f.NJZT as f_ZZNJ_NJZT--学校年级数据表 年级状态
      ,fb.MC as f_ZZNJ_NJZT_MC--是否标志代码表 名称
      ,g.MC as g_XSLB_MC--学生类别代码表 名称
      ,g.SM as g_XSLB_SM--学生类别代码表 说明
      ,h.MC as h_XSDQZT_MC--学生当前状态代码表 名称
      ,h.SM as h_XSDQZT_SM--学生当前状态代码表 说明

FROM dbo.EDU_ZZXS_07_01_XJSJ AS a LEFT OUTER JOIN
      dbo.EDU_ZZXS_01_01_XSXX AS b ON a.XSXXID = b.ID /*学生信息数据表*/ AND a.SCHOOLID = b.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS c ON a.SCHOOLID = c.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_01_01_ZYXX AS d ON a.ZYXXID = d.ZYBH /*专业基本信息*/ AND a.SCHOOLID = d.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_02_02_ZZBJ AS e ON a.ZZBJID = e.XZBDM /*学校班级数据表*/ AND a.SCHOOLID = e.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_02_01_ZZNJ AS f ON a.ZZNJID = f.NJDM /*学校年级数据表*/ AND a.SCHOOLID = f.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_JY_XSLB AS g ON a.XSLBM = g.DM /*学生类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XSDQZT AS h ON a.XSDQZTM = h.DM /*学生当前状态码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS bb ON b.SFZJLXM = bb.DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS bc ON b.XBM = bc.DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS bd ON b.XXM = bd.DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS be ON b.CSDM = be.DM /*出生地码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS bf ON b.MZM = bf.DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS bg ON b.HYZKM = bg.DM /*婚姻状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS bh ON b.XYZJM = bh.DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS bi ON b.GATQWM = bi.DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS bj ON b.JKZKM = bj.DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS bk ON b.ZZMMM = bk.DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS bl ON b.HKSZDXZQHM = bl.DM /*户口所在地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS bm ON b.HKLBM = bm.DM /*户口类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS bn ON b.SFSLDRK = bn.DM /*是否是流动人口*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS bo ON b.GJDQM = bo.DM /*国籍/地区*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZJZY AS db ON d.ZYDM = db.DM /*专业代码*/ AND d.SSZYML = db.ZYMLLB /*所属专业目录*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZYML AS dc ON d.SSZYML = dc.DM /*所属专业目录*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS fb ON f.NJZT = fb.DM /*年级状态*/
GO
