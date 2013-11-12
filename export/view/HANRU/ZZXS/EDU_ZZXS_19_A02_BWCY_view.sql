
--班委成员表
CREATE VIEW [dbo].[VIEW_EDU_ZZXS_19_A02_BWCY_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[BWID]--班委ID
      ,a.[XSXXID]--学生ID
      ,a.[XQID]--学期ID
      ,a.[ZYXXID]--专业ID
      ,a.[NJID]--年级ID
      ,a.[BJID]--班级ID
      ,c.SCHOOLID as c_BWSJ_SCHOOLID--班委数据表 学校
      ,c.BWMC as c_BWSJ_BWMC--班委数据表 班委名称
      ,d.SCHOOLID as d_XSXX_SCHOOLID--学生信息数据表 学校名
      ,d.XH as d_XSXX_XH--学生信息数据表 学号
      ,d.XM as d_XSXX_XM--学生信息数据表 姓名
      ,d.YWXM as d_XSXX_YWXM--学生信息数据表 英文姓名
      ,d.XMPY as d_XSXX_XMPY--学生信息数据表 姓名拼音
      ,d.CYM as d_XSXX_CYM--学生信息数据表 曾用名
      ,d.SFZJLXM as d_XSXX_SFZJLXM--学生信息数据表 身份证件类型码
      ,[db].MC as d_XSXX_SFZJLXM_MC--身份证件类型代码表 名称
      ,d.SFZJH as d_XSXX_SFZJH--学生信息数据表 身份证件号
      ,d.XBM as d_XSXX_XBM--学生信息数据表 性别码
      ,[dc].MC as d_XSXX_XBM_MC--人的性别代码 名称
      ,d.XXM as d_XSXX_XXM--学生信息数据表 血型码
      ,[dd].MC as d_XSXX_XXM_MC--血型代码表 名称
      ,[dd].JC as d_XSXX_XXM_JC--血型代码表 简称
      ,d.CSRQ as d_XSXX_CSRQ--学生信息数据表 出生日期
      ,d.CSDM as d_XSXX_CSDM--学生信息数据表 出生地码
      ,[de].MC as d_XSXX_CSDM_MC--中华人民共和国行政区划代码 名称
      ,d.JG as d_XSXX_JG--学生信息数据表 籍贯
      ,d.MZM as d_XSXX_MZM--学生信息数据表 民族码
      ,[df].MZMC as d_XSXX_MZM_MZMC--中国各民族名称的罗马字母拼写法和代码 民族名称
      ,[df].ZMDM as d_XSXX_MZM_ZMDM--中国各民族名称的罗马字母拼写法和代码 字母代码
      ,d.HYZKM as d_XSXX_HYZKM--学生信息数据表 婚姻状况码
      ,[dg].MC as d_XSXX_HYZKM_MC--婚姻状况代码 名称
      ,d.XYZJM as d_XSXX_XYZJM--学生信息数据表 信仰宗教码
      ,[dh].MC as d_XSXX_XYZJM_MC--宗教信仰代码 名称
      ,d.GATQWM as d_XSXX_GATQWM--学生信息数据表 港澳台侨外码
      ,[di].MC as d_XSXX_GATQWM_MC--港澳台侨外代码表 名称
      ,[di].SM as d_XSXX_GATQWM_SM--港澳台侨外代码表 说明
      ,d.JKZKM as d_XSXX_JKZKM--学生信息数据表 健康状况码
      ,[dj].MC as d_XSXX_JKZKM_MC--健康状况1位数字代码 名称
      ,[dj].SM as d_XSXX_JKZKM_SM--健康状况1位数字代码 说明
      ,d.ZZMMM as d_XSXX_ZZMMM--学生信息数据表 政治面貌码
      ,[dk].MC as d_XSXX_ZZMMM_MC--政治面貌代码 名称
      ,[dk].JC as d_XSXX_ZZMMM_JC--政治面貌代码 简称
      ,d.HKSZDXZQHM as d_XSXX_HKSZDXZQHM--学生信息数据表 户口所在地行政区划码
      ,[dl].MC as d_XSXX_HKSZDXZQHM_MC--中华人民共和国行政区划代码 名称
      ,d.HKLBM as d_XSXX_HKLBM--学生信息数据表 户口类别码
      ,[dm].MC as d_XSXX_HKLBM_MC--户口类别代码 名称
      ,d.SFSLDRK as d_XSXX_SFSLDRK--学生信息数据表 是否是流动人口
      ,[dn].MC as d_XSXX_SFSLDRK_MC--是否标志代码表 名称
      ,d.GJDQM as d_XSXX_GJDQM--学生信息数据表 国籍/地区
      ,[do].GJDQMCJC as d_XSXX_GJDQM_GJDQMCJC--世界各国和地区名称代码 国家/地区名称简称
      ,[do].EZMDM as d_XSXX_GJDQM_EZMDM--世界各国和地区名称代码 二字母代码
      ,[do].SZMDM as d_XSXX_GJDQM_SZMDM--世界各国和地区名称代码 三字母代码
      ,d.TC as d_XSXX_TC--学生信息数据表 特长
      ,d.XSLXDH as d_XSXX_XSLXDH--学生信息数据表 学生联系电话
      ,d.WLDZ as d_XSXX_WLDZ--学生信息数据表 网络地址
      ,d.JSTXH as d_XSXX_JSTXH--学生信息数据表 即时通讯号
      ,d.DZXX as d_XSXX_DZXX--学生信息数据表 电子信箱
      ,d.ZP as d_XSXX_ZP--学生信息数据表 照片(路径)
      ,e.SCHOOLID as e_XQ_SCHOOLID--学期数据表 学校名
      ,e.XNID as e_XQ_XNID--学期数据表 学年
      ,e.XQM as e_XQ_XQM--学期数据表 学期码
      ,[eb].MC as e_XQ_XQM_MC--学期代码表 名称
      ,e.XQMC as e_XQ_XQMC--学期数据表 学期名称
      ,e.XQKSRQ as e_XQ_XQKSRQ--学期数据表 学期开始日期
      ,e.XQJSRQ as e_XQ_XQJSRQ--学期数据表 学期结束日期
      ,f.SCHOOLID as f_ZYXX_SCHOOLID--专业基本信息数据表 学校名
      ,f.ZYDM as f_ZYXX_ZYDM--专业基本信息数据表 专业代码
      ,[fb].ZYMLLB as f_ZYXX_ZYDM_ZYMLLB--自建专业代码 专业目录类别
      ,[fb].MC as f_ZYXX_ZYDM_MC--自建专业代码 名称
      ,f.ZYMC as f_ZYXX_ZYMC--专业基本信息数据表 专业名称
      ,f.ZYYWMC as f_ZYXX_ZYYWMC--专业基本信息数据表 专业英文名称
      ,f.XZ as f_ZYXX_XZ--专业基本信息数据表 学制
      ,f.ZYFXMC as f_ZYXX_ZYFXMC--专业基本信息数据表 专业方向名称
      ,f.ZYJC as f_ZYXX_ZYJC--专业基本信息数据表 专业简称
      ,f.JLNY as f_ZYXX_JLNY--专业基本信息数据表 建立年月
      ,f.ZYJSS as f_ZYXX_ZYJSS--专业基本信息数据表 专业教师数
      ,f.KSJGH as f_ZYXX_KSJGH--专业基本信息数据表 开设机构号
      ,f.ZXF as f_ZYXX_ZXF--专业基本信息数据表 总学分
      ,f.SSZYML as f_ZYXX_SSZYML--专业基本信息数据表 所属专业目录
      ,[fc].MC as f_ZYXX_SSZYML_MC--专业目录代码 名称
      ,f.ZYLB as f_ZYXX_ZYLB--专业基本信息数据表 专业类别名称
      ,g.SCHOOLID as g_ZZNJ_SCHOOLID--学校年级数据表 学校名
      ,g.NJMC as g_ZZNJ_NJMC--学校年级数据表 年级名称
      ,g.SSNF as g_ZZNJ_SSNF--学校年级数据表 所属年份
      ,g.NJZT as g_ZZNJ_NJZT--学校年级数据表 年级状态
      ,[gb].MC as g_ZZNJ_NJZT_MC--是否标志代码表 名称
      ,h.SCHOOLID as h_ZZBJ_SCHOOLID--学校班级数据表 学校名
      ,h.ZYXXID as h_ZZBJ_ZYXXID--学校班级数据表 专业基本信息
      ,h.ZZNJID as h_ZZBJ_ZZNJID--学校班级数据表 学校年级数据表
      ,h.XZBMC as h_ZZBJ_XZBMC--学校班级数据表 行政班名称
      ,h.JBNY as h_ZZBJ_JBNY--学校班级数据表 建班年月
      ,h.BZRGH as h_ZZBJ_BZRGH--学校班级数据表 班主任工号
      ,h.JSBH as h_ZZBJ_JSBH--学校班级数据表 教室编号
      ,h.NANSRS as h_ZZBJ_NANSRS--学校班级数据表 男生人数
      ,h.NVSRS as h_ZZBJ_NVSRS--学校班级数据表 女生人数
      ,h.ZRS as h_ZZBJ_ZRS--学校班级数据表 总人数
      ,h.BZXH as h_ZZBJ_BZXH--学校班级数据表 班长学号
      ,h.JXJH as h_ZZBJ_JXJH--学校班级数据表 教学计划
      ,h.JGH as h_ZZBJ_JGH--学校班级数据表 机构号
      ,h.XQDM as h_ZZBJ_XQDM--学校班级数据表 校区代码
      ,h.BZRID as h_ZZBJ_BZRID--学校班级数据表 班主任ID

FROM dbo.EDU_ZZXS_19_A02_BWCY AS a LEFT OUTER JOIN
      dbo.EDU_ZZXS_19_A01_BWSJ AS c ON a.BWID = c.ID /*班委ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZXS_01_01_XSXX AS d ON a.XSXXID = d.ID /*学生ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS e ON a.XQID = e.ID /*学期ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_01_01_ZYXX AS f ON a.ZYXXID = f.ZYBH /*专业ID*/ AND a.SCHOOLID = f.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_02_01_ZZNJ AS g ON a.NJID = g.NJDM /*年级ID*/ AND a.SCHOOLID = g.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_02_02_ZZBJ AS h ON a.BJID = h.XZBDM /*班级ID*/ AND a.SCHOOLID = h.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS [db] ON d.SFZJLXM = [db].DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS [dc] ON d.XBM = [dc].DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS [dd] ON d.XXM = [dd].DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [de] ON d.CSDM = [de].DM /*出生地码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS [df] ON d.MZM = [df].DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS [dg] ON d.HYZKM = [dg].DM /*婚姻状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS [dh] ON d.XYZJM = [dh].DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS [di] ON d.GATQWM = [di].DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS [dj] ON d.JKZKM = [dj].DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS [dk] ON d.ZZMMM = [dk].DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [dl] ON d.HKSZDXZQHM = [dl].DM /*户口所在地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS [dm] ON d.HKLBM = [dm].DM /*户口类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [dn] ON d.SFSLDRK = [dn].DM /*是否是流动人口*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS [do] ON d.GJDQM = [do].DM /*国籍/地区*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS [eb] ON e.XQM = [eb].DM /*学期码*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZJZY AS [fb] ON f.ZYDM = [fb].DM /*专业代码*/ AND f.SSZYML = [fb].ZYMLLB /*所属专业目录*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZYML AS [fc] ON f.SSZYML = [fc].DM /*所属专业目录*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [gb] ON g.NJZT = [gb].DM /*年级状态*/
GO
