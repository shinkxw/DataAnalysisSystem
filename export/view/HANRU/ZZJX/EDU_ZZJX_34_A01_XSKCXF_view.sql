
--学生课程学分表
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_34_A01_XSKCXF_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[StudentID]--学生ID
      ,a.[XQID]--学期ID
      ,a.[ZYXXID]--专业ID
      ,a.[NJID]--年级ID
      ,a.[BJID]--班级ID
      ,a.[KCQDID]--考试科目ID
      ,a.[XF]--获得学分
      ,c.SCHOOLID as c_XSXX_SCHOOLID--学生信息数据表 学校名
      ,c.XH as c_XSXX_XH--学生信息数据表 学号
      ,c.XM as c_XSXX_XM--学生信息数据表 姓名
      ,c.YWXM as c_XSXX_YWXM--学生信息数据表 英文姓名
      ,c.XMPY as c_XSXX_XMPY--学生信息数据表 姓名拼音
      ,c.CYM as c_XSXX_CYM--学生信息数据表 曾用名
      ,c.SFZJLXM as c_XSXX_SFZJLXM--学生信息数据表 身份证件类型码
      ,[cb].MC as c_XSXX_SFZJLXM_MC--身份证件类型代码表 名称
      ,c.SFZJH as c_XSXX_SFZJH--学生信息数据表 身份证件号
      ,c.XBM as c_XSXX_XBM--学生信息数据表 性别码
      ,[cc].MC as c_XSXX_XBM_MC--人的性别代码 名称
      ,c.XXM as c_XSXX_XXM--学生信息数据表 血型码
      ,[cd].MC as c_XSXX_XXM_MC--血型代码表 名称
      ,[cd].JC as c_XSXX_XXM_JC--血型代码表 简称
      ,c.CSRQ as c_XSXX_CSRQ--学生信息数据表 出生日期
      ,c.CSDM as c_XSXX_CSDM--学生信息数据表 出生地码
      ,[ce].MC as c_XSXX_CSDM_MC--中华人民共和国行政区划代码 名称
      ,c.JG as c_XSXX_JG--学生信息数据表 籍贯
      ,c.MZM as c_XSXX_MZM--学生信息数据表 民族码
      ,[cf].MZMC as c_XSXX_MZM_MZMC--中国各民族名称的罗马字母拼写法和代码 民族名称
      ,[cf].ZMDM as c_XSXX_MZM_ZMDM--中国各民族名称的罗马字母拼写法和代码 字母代码
      ,c.HYZKM as c_XSXX_HYZKM--学生信息数据表 婚姻状况码
      ,[cg].MC as c_XSXX_HYZKM_MC--婚姻状况代码 名称
      ,c.XYZJM as c_XSXX_XYZJM--学生信息数据表 信仰宗教码
      ,[ch].MC as c_XSXX_XYZJM_MC--宗教信仰代码 名称
      ,c.GATQWM as c_XSXX_GATQWM--学生信息数据表 港澳台侨外码
      ,[ci].MC as c_XSXX_GATQWM_MC--港澳台侨外代码表 名称
      ,[ci].SM as c_XSXX_GATQWM_SM--港澳台侨外代码表 说明
      ,c.JKZKM as c_XSXX_JKZKM--学生信息数据表 健康状况码
      ,[cj].MC as c_XSXX_JKZKM_MC--健康状况1位数字代码 名称
      ,[cj].SM as c_XSXX_JKZKM_SM--健康状况1位数字代码 说明
      ,c.ZZMMM as c_XSXX_ZZMMM--学生信息数据表 政治面貌码
      ,[ck].MC as c_XSXX_ZZMMM_MC--政治面貌代码 名称
      ,[ck].JC as c_XSXX_ZZMMM_JC--政治面貌代码 简称
      ,c.HKSZDXZQHM as c_XSXX_HKSZDXZQHM--学生信息数据表 户口所在地行政区划码
      ,[cl].MC as c_XSXX_HKSZDXZQHM_MC--中华人民共和国行政区划代码 名称
      ,c.HKLBM as c_XSXX_HKLBM--学生信息数据表 户口类别码
      ,[cm].MC as c_XSXX_HKLBM_MC--户口类别代码 名称
      ,c.SFSLDRK as c_XSXX_SFSLDRK--学生信息数据表 是否是流动人口
      ,[cn].MC as c_XSXX_SFSLDRK_MC--是否标志代码表 名称
      ,c.GJDQM as c_XSXX_GJDQM--学生信息数据表 国籍/地区
      ,[co].GJDQMCJC as c_XSXX_GJDQM_GJDQMCJC--世界各国和地区名称代码 国家/地区名称简称
      ,[co].EZMDM as c_XSXX_GJDQM_EZMDM--世界各国和地区名称代码 二字母代码
      ,[co].SZMDM as c_XSXX_GJDQM_SZMDM--世界各国和地区名称代码 三字母代码
      ,c.TC as c_XSXX_TC--学生信息数据表 特长
      ,c.XSLXDH as c_XSXX_XSLXDH--学生信息数据表 学生联系电话
      ,c.WLDZ as c_XSXX_WLDZ--学生信息数据表 网络地址
      ,c.JSTXH as c_XSXX_JSTXH--学生信息数据表 即时通讯号
      ,c.DZXX as c_XSXX_DZXX--学生信息数据表 电子信箱
      ,c.ZP as c_XSXX_ZP--学生信息数据表 照片(路径)
      ,c.RXXQID as c_XSXX_RXXQID--学生信息数据表 入学学期ID
      ,d.SCHOOLID as d_XQ_SCHOOLID--学期数据表 学校名
      ,d.XNID as d_XQ_XNID--学期数据表 学年
      ,d.XQM as d_XQ_XQM--学期数据表 学期码
      ,[db].MC as d_XQ_XQM_MC--学期代码表 名称
      ,d.XQMC as d_XQ_XQMC--学期数据表 学期名称
      ,d.XQKSRQ as d_XQ_XQKSRQ--学期数据表 学期开始日期
      ,d.XQJSRQ as d_XQ_XQJSRQ--学期数据表 学期结束日期
      ,e.SCHOOLID as e_ZYXX_SCHOOLID--专业基本信息数据表 学校名
      ,e.ZYDM as e_ZYXX_ZYDM--专业基本信息数据表 专业代码
      ,[eb].ZYMLLB as e_ZYXX_ZYDM_ZYMLLB--自建专业代码 专业目录类别
      ,[eb].MC as e_ZYXX_ZYDM_MC--自建专业代码 名称
      ,e.ZYMC as e_ZYXX_ZYMC--专业基本信息数据表 专业名称
      ,e.ZYYWMC as e_ZYXX_ZYYWMC--专业基本信息数据表 专业英文名称
      ,e.XZ as e_ZYXX_XZ--专业基本信息数据表 学制
      ,e.ZYFXMC as e_ZYXX_ZYFXMC--专业基本信息数据表 专业方向名称
      ,e.ZYJC as e_ZYXX_ZYJC--专业基本信息数据表 专业简称
      ,e.JLNY as e_ZYXX_JLNY--专业基本信息数据表 建立年月
      ,e.ZYJSS as e_ZYXX_ZYJSS--专业基本信息数据表 专业教师数
      ,e.KSJGH as e_ZYXX_KSJGH--专业基本信息数据表 开设机构号
      ,e.ZXF as e_ZYXX_ZXF--专业基本信息数据表 总学分
      ,e.SSZYML as e_ZYXX_SSZYML--专业基本信息数据表 所属专业目录
      ,[ec].MC as e_ZYXX_SSZYML_MC--专业目录代码 名称
      ,e.ZYLB as e_ZYXX_ZYLB--专业基本信息数据表 专业类别名称
      ,f.SCHOOLID as f_ZZNJ_SCHOOLID--学校年级数据表 学校名
      ,f.NJMC as f_ZZNJ_NJMC--学校年级数据表 年级名称
      ,f.SSNF as f_ZZNJ_SSNF--学校年级数据表 所属年份
      ,f.NJZT as f_ZZNJ_NJZT--学校年级数据表 年级状态
      ,[fb].MC as f_ZZNJ_NJZT_MC--是否标志代码表 名称
      ,g.SCHOOLID as g_ZZBJ_SCHOOLID--学校班级数据表 学校名
      ,g.ZYXXID as g_ZZBJ_ZYXXID--学校班级数据表 专业基本信息
      ,g.ZZNJID as g_ZZBJ_ZZNJID--学校班级数据表 学校年级数据表
      ,g.XZBMC as g_ZZBJ_XZBMC--学校班级数据表 行政班名称
      ,g.JBNY as g_ZZBJ_JBNY--学校班级数据表 建班年月
      ,g.BZRGH as g_ZZBJ_BZRGH--学校班级数据表 班主任工号
      ,g.JSBH as g_ZZBJ_JSBH--学校班级数据表 教室编号
      ,g.NANSRS as g_ZZBJ_NANSRS--学校班级数据表 男生人数
      ,g.NVSRS as g_ZZBJ_NVSRS--学校班级数据表 女生人数
      ,g.ZRS as g_ZZBJ_ZRS--学校班级数据表 总人数
      ,g.BZXH as g_ZZBJ_BZXH--学校班级数据表 班长学号
      ,g.JXJH as g_ZZBJ_JXJH--学校班级数据表 教学计划
      ,g.JGH as g_ZZBJ_JGH--学校班级数据表 机构号
      ,g.XQDM as g_ZZBJ_XQDM--学校班级数据表 校区代码
      ,g.BZRID as g_ZZBJ_BZRID--学校班级数据表 班主任ID
      ,h.SCHOOLID as h_JXJHKCQD_SCHOOLID--教学计划课程清单数据子类表 学校ID
      ,h.JXJHID as h_JXJHKCQD_JXJHID--教学计划课程清单数据子类表 教学计划ID
      ,h.KCH as h_JXJHKCQD_KCH--教学计划课程清单数据子类表 课程号
      ,h.JHBH as h_JXJHKCQD_JHBH--教学计划课程清单数据子类表 计划编号
      ,h.XQID as h_JXJHKCQD_XQID--教学计划课程清单数据子类表 学期ID
      ,h.KCMC as h_JXJHKCQD_KCMC--教学计划课程清单数据子类表 课程名称
      ,h.YXKC as h_JXJHKCQD_YXKC--教学计划课程清单数据子类表 预修课程
      ,h.SFHXKC as h_JXJHKCQD_SFHXKC--教学计划课程清单数据子类表 是否核心（骨干）
      ,[hb].MC as h_JXJHKCQD_SFHXKC_MC--是否标志代码表 名称
      ,h.KCFLM as h_JXJHKCQD_KCFLM--教学计划课程清单数据子类表 课程分类码
      ,[hc].MC as h_JXJHKCQD_KCFLM_MC--课程分类代码 名称
      ,h.KCSXM as h_JXJHKCQD_KCSXM--教学计划课程清单数据子类表 课程属性码
      ,[hd].MC as h_JXJHKCQD_KCSXM_MC--课程属性代码表 名称
      ,[hd].SM as h_JXJHKCQD_KCSXM_SM--课程属性代码表 说明
      ,h.ZXXQ as h_JXJHKCQD_ZXXQ--教学计划课程清单数据子类表 执行学期
      ,h.ZKS as h_JXJHKCQD_ZKS--教学计划课程清单数据子类表 总课时
      ,h.LLKS as h_JXJHKCQD_LLKS--教学计划课程清单数据子类表 理论课时
      ,h.SJKS as h_JXJHKCQD_SJKS--教学计划课程清单数据子类表 实践课时
      ,h.XF as h_JXJHKCQD_XF--教学计划课程清单数据子类表 学分
      ,h.XFRDHGX as h_JXJHKCQD_XFRDHGX--教学计划课程清单数据子类表 学分认定合格线
      ,h.JXDG as h_JXJHKCQD_JXDG--教学计划课程清单数据子类表 教学大纲

FROM dbo.EDU_ZZJX_34_A01_XSKCXF AS a LEFT OUTER JOIN
      dbo.EDU_ZZXS_01_01_XSXX AS c ON a.StudentID = c.ID /*学生ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS d ON a.XQID = d.ID /*学期ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_01_01_ZYXX AS e ON a.ZYXXID = e.ZYBH /*专业ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_02_01_ZZNJ AS f ON a.NJID = f.NJDM /*年级ID*/ AND a.SCHOOLID = f.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_02_02_ZZBJ AS g ON a.BJID = g.XZBDM /*班级ID*/ AND a.SCHOOLID = g.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_03_03_JXJHKCQD AS h ON a.KCQDID = h.ID /*考试科目ID*/ AND a.SCHOOLID = h.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS [cb] ON c.SFZJLXM = [cb].DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS [cc] ON c.XBM = [cc].DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS [cd] ON c.XXM = [cd].DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [ce] ON c.CSDM = [ce].DM /*出生地码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS [cf] ON c.MZM = [cf].DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS [cg] ON c.HYZKM = [cg].DM /*婚姻状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS [ch] ON c.XYZJM = [ch].DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS [ci] ON c.GATQWM = [ci].DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS [cj] ON c.JKZKM = [cj].DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS [ck] ON c.ZZMMM = [ck].DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [cl] ON c.HKSZDXZQHM = [cl].DM /*户口所在地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS [cm] ON c.HKLBM = [cm].DM /*户口类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [cn] ON c.SFSLDRK = [cn].DM /*是否是流动人口*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS [co] ON c.GJDQM = [co].DM /*国籍/地区*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS [db] ON d.XQM = [db].DM /*学期码*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZJZY AS [eb] ON e.ZYDM = [eb].DM /*专业代码*/ AND e.SSZYML = [eb].ZYMLLB /*所属专业目录*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZYML AS [ec] ON e.SSZYML = [ec].DM /*所属专业目录*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [fb] ON f.NJZT = [fb].DM /*年级状态*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [hb] ON h.SFHXKC = [hb].DM /*是否核心（骨干）*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_KCFL AS [hc] ON h.KCFLM = [hc].DM /*课程分类码*/ LEFT OUTER JOIN
      dbo.EDU_JY_KCSX AS [hd] ON h.KCSXM = [hd].DM /*课程属性码*/
GO
