
--评教结果表
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_50_A15_PJJG_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[PJID]--评教ID
      ,a.[JXBID]--教学班ID
      ,a.[XSID]--学生ID
      ,a.[TMID]--题目ID
      ,a.[FZ]--分值
      ,a.[PJJSID]--评价教师ID
      ,c.SCHOOLID as c_XKXSPJ_SCHOOLID--选课学生评教表 学校
      ,c.PJMC as c_XKXSPJ_PJMC--选课学生评教表 评教名称
      ,c.KSSJ as c_XKXSPJ_KSSJ--选课学生评教表 开始时间
      ,c.JSSJ as c_XKXSPJ_JSSJ--选课学生评教表 结束时间
      ,d.SCHOOLID as d_JXBSJ_SCHOOLID--教学班数据表 学校
      ,d.XXKCLBID as d_JXBSJ_XXKCLBID--教学班数据表 选修课程类别ID
      ,d.KCMC as d_JXBSJ_KCMC--教学班数据表 课程名称
      ,d.KCJS as d_JXBSJ_KCJS--教学班数据表 课程介绍
      ,d.JXJH as d_JXBSJ_JXJH--教学班数据表 教学计划
      ,d.ZKS as d_JXBSJ_ZKS--教学班数据表 总课时
      ,d.XF as d_JXBSJ_XF--教学班数据表 学分
      ,d.XQID as d_JXBSJ_XQID--教学班数据表 学期ID
      ,d.NJID as d_JXBSJ_NJID--教学班数据表 年级ID列表
      ,d.NJMCLB as d_JXBSJ_NJMCLB--教学班数据表 年级名称列表
      ,d.DQZT as d_JXBSJ_DQZT--教学班数据表 当前状态
      ,d.KKJSID as d_JXBSJ_KKJSID--教学班数据表 开课教师ID
      ,d.SKSJID as d_JXBSJ_SKSJID--教学班数据表 上课时间ID
      ,d.SKDD as d_JXBSJ_SKDD--教学班数据表 上课地点
      ,d.BJKRNRS as d_JXBSJ_BJKRNRS--教学班数据表 班级可容纳人数
      ,d.ZDKBRS as d_JXBSJ_ZDKBRS--教学班数据表 最低开班人数
      ,d.BJIDLB as d_JXBSJ_BJIDLB--教学班数据表 班级ID列表
      ,d.BJMCLB as d_JXBSJ_BJMCLB--教学班数据表 班级名称列表
      ,d.QTJSIDLB as d_JXBSJ_QTJSIDLB--教学班数据表 其他教师ID列表
      ,d.QTJSMCLB as d_JXBSJ_QTJSMCLB--教学班数据表 其他教师名称列表
      ,d.WEEKKS as d_JXBSJ_WEEKKS--教学班数据表 周课时
      ,d.SKZCIDLB as d_JXBSJ_SKZCIDLB--教学班数据表 上课周次ID列表
      ,d.SKZCMCLB as d_JXBSJ_SKZCMCLB--教学班数据表 上课周次名称列表
      ,d.KCSLT as d_JXBSJ_KCSLT--教学班数据表 课程缩略图
      ,d.DJL as d_JXBSJ_DJL--教学班数据表 点击量
      ,d.SBZT as d_JXBSJ_SBZT--教学班数据表 上报状态
      ,d.KGZT as d_JXBSJ_KGZT--教学班数据表 开关状态
      ,d.SFXXK as d_JXBSJ_SFXXK--教学班数据表 是否限选课
      ,e.SCHOOLID as e_XSXX_SCHOOLID--学生信息数据表 学校名
      ,e.XH as e_XSXX_XH--学生信息数据表 学号
      ,e.XM as e_XSXX_XM--学生信息数据表 姓名
      ,e.YWXM as e_XSXX_YWXM--学生信息数据表 英文姓名
      ,e.XMPY as e_XSXX_XMPY--学生信息数据表 姓名拼音
      ,e.CYM as e_XSXX_CYM--学生信息数据表 曾用名
      ,e.SFZJLXM as e_XSXX_SFZJLXM--学生信息数据表 身份证件类型码
      ,[eb].MC as e_XSXX_SFZJLXM_MC--身份证件类型代码表 名称
      ,e.SFZJH as e_XSXX_SFZJH--学生信息数据表 身份证件号
      ,e.XBM as e_XSXX_XBM--学生信息数据表 性别码
      ,[ec].MC as e_XSXX_XBM_MC--人的性别代码 名称
      ,e.XXM as e_XSXX_XXM--学生信息数据表 血型码
      ,[ed].MC as e_XSXX_XXM_MC--血型代码表 名称
      ,[ed].JC as e_XSXX_XXM_JC--血型代码表 简称
      ,e.CSRQ as e_XSXX_CSRQ--学生信息数据表 出生日期
      ,e.CSDM as e_XSXX_CSDM--学生信息数据表 出生地码
      ,[ee].MC as e_XSXX_CSDM_MC--中华人民共和国行政区划代码 名称
      ,e.JG as e_XSXX_JG--学生信息数据表 籍贯
      ,e.MZM as e_XSXX_MZM--学生信息数据表 民族码
      ,[ef].MZMC as e_XSXX_MZM_MZMC--中国各民族名称的罗马字母拼写法和代码 民族名称
      ,[ef].ZMDM as e_XSXX_MZM_ZMDM--中国各民族名称的罗马字母拼写法和代码 字母代码
      ,e.HYZKM as e_XSXX_HYZKM--学生信息数据表 婚姻状况码
      ,[eg].MC as e_XSXX_HYZKM_MC--婚姻状况代码 名称
      ,e.XYZJM as e_XSXX_XYZJM--学生信息数据表 信仰宗教码
      ,[eh].MC as e_XSXX_XYZJM_MC--宗教信仰代码 名称
      ,e.GATQWM as e_XSXX_GATQWM--学生信息数据表 港澳台侨外码
      ,[ei].MC as e_XSXX_GATQWM_MC--港澳台侨外代码表 名称
      ,[ei].SM as e_XSXX_GATQWM_SM--港澳台侨外代码表 说明
      ,e.JKZKM as e_XSXX_JKZKM--学生信息数据表 健康状况码
      ,[ej].MC as e_XSXX_JKZKM_MC--健康状况1位数字代码 名称
      ,[ej].SM as e_XSXX_JKZKM_SM--健康状况1位数字代码 说明
      ,e.ZZMMM as e_XSXX_ZZMMM--学生信息数据表 政治面貌码
      ,[ek].MC as e_XSXX_ZZMMM_MC--政治面貌代码 名称
      ,[ek].JC as e_XSXX_ZZMMM_JC--政治面貌代码 简称
      ,e.HKSZDXZQHM as e_XSXX_HKSZDXZQHM--学生信息数据表 户口所在地行政区划码
      ,[el].MC as e_XSXX_HKSZDXZQHM_MC--中华人民共和国行政区划代码 名称
      ,e.HKLBM as e_XSXX_HKLBM--学生信息数据表 户口类别码
      ,[em].MC as e_XSXX_HKLBM_MC--户口类别代码 名称
      ,e.SFSLDRK as e_XSXX_SFSLDRK--学生信息数据表 是否是流动人口
      ,[en].MC as e_XSXX_SFSLDRK_MC--是否标志代码表 名称
      ,e.GJDQM as e_XSXX_GJDQM--学生信息数据表 国籍/地区
      ,[eo].GJDQMCJC as e_XSXX_GJDQM_GJDQMCJC--世界各国和地区名称代码 国家/地区名称简称
      ,[eo].EZMDM as e_XSXX_GJDQM_EZMDM--世界各国和地区名称代码 二字母代码
      ,[eo].SZMDM as e_XSXX_GJDQM_SZMDM--世界各国和地区名称代码 三字母代码
      ,e.TC as e_XSXX_TC--学生信息数据表 特长
      ,e.XSLXDH as e_XSXX_XSLXDH--学生信息数据表 学生联系电话
      ,e.WLDZ as e_XSXX_WLDZ--学生信息数据表 网络地址
      ,e.JSTXH as e_XSXX_JSTXH--学生信息数据表 即时通讯号
      ,e.DZXX as e_XSXX_DZXX--学生信息数据表 电子信箱
      ,e.ZP as e_XSXX_ZP--学生信息数据表 照片(路径)
      ,e.RXXQID as e_XSXX_RXXQID--学生信息数据表 入学学期ID
      ,e.NFCKH as e_XSXX_NFCKH--学生信息数据表 NFC卡号
      ,f.SCHOOLID as f_PJTM_SCHOOLID--评教题目表 学校
      ,f.PJID as f_PJTM_PJID--评教题目表 评教ID
      ,f.PFFSID as f_PJTM_PFFSID--评教题目表 评分方式ID
      ,f.TMMC as f_PJTM_TMMC--评教题目表 题目名称
      ,f.PJZB as f_PJTM_PJZB--评教题目表 评教指标

FROM dbo.EDU_ZZJX_50_A15_PJJG AS a LEFT OUTER JOIN
      dbo.EDU_ZZJX_50_A11_XKXSPJ AS c ON a.PJID = c.ID /*评教ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_50_A03_JXBSJ AS d ON a.JXBID = d.ID /*教学班ID*/ LEFT OUTER JOIN
      dbo.EDU_ZZXS_01_01_XSXX AS e ON a.XSID = e.ID /*学生ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_50_A14_PJTM AS f ON a.TMID = f.ID /*题目ID*/ AND a.SCHOOLID = f.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS [eb] ON e.SFZJLXM = [eb].DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS [ec] ON e.XBM = [ec].DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS [ed] ON e.XXM = [ed].DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [ee] ON e.CSDM = [ee].DM /*出生地码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS [ef] ON e.MZM = [ef].DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS [eg] ON e.HYZKM = [eg].DM /*婚姻状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS [eh] ON e.XYZJM = [eh].DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS [ei] ON e.GATQWM = [ei].DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS [ej] ON e.JKZKM = [ej].DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS [ek] ON e.ZZMMM = [ek].DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [el] ON e.HKSZDXZQHM = [el].DM /*户口所在地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS [em] ON e.HKLBM = [em].DM /*户口类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [en] ON e.SFSLDRK = [en].DM /*是否是流动人口*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS [eo] ON e.GJDQM = [eo].DM /*国籍/地区*/
GO
