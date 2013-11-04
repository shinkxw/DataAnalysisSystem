
--学生教材领用表
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_04_A04_XSJCLY_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校ID
      ,a.[XQID]--学期ID
      ,a.[ZYXXID]--专业ID
      ,a.[NJID]--年级ID
      ,a.[BJID]--班级ID
      ,a.[KCID]--课程ID
      ,a.[JCID]--教材ID
      ,a.[LYSL]--领用数量
      ,a.[LYXSID]--领用学生ID
      ,a.[LYSJ]--领用时间
      ,a.[JSR]--经手人
      ,c.SCHOOLID as c_XQ_SCHOOLID--学期数据表 学校名
      ,c.XNID as c_XQ_XNID--学期数据表 学年
      ,c.XQM as c_XQ_XQM--学期数据表 学期码
      ,[cb].MC as c_XQ_XQM_MC--学期代码表 名称
      ,c.XQMC as c_XQ_XQMC--学期数据表 学期名称
      ,c.XQKSRQ as c_XQ_XQKSRQ--学期数据表 学期开始日期
      ,c.XQJSRQ as c_XQ_XQJSRQ--学期数据表 学期结束日期
      ,d.SCHOOLID as d_ZYXX_SCHOOLID--专业基本信息数据表 学校名
      ,d.ZYDM as d_ZYXX_ZYDM--专业基本信息数据表 专业代码
      ,[db].ZYMLLB as d_ZYXX_ZYDM_ZYMLLB--自建专业代码 专业目录类别
      ,[db].MC as d_ZYXX_ZYDM_MC--自建专业代码 名称
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
      ,[dc].MC as d_ZYXX_SSZYML_MC--专业目录代码 名称
      ,d.ZYLB as d_ZYXX_ZYLB--专业基本信息数据表 专业类别名称
      ,e.SCHOOLID as e_ZZNJ_SCHOOLID--学校年级数据表 学校名
      ,e.NJMC as e_ZZNJ_NJMC--学校年级数据表 年级名称
      ,e.SSNF as e_ZZNJ_SSNF--学校年级数据表 所属年份
      ,e.NJZT as e_ZZNJ_NJZT--学校年级数据表 年级状态
      ,[eb].MC as e_ZZNJ_NJZT_MC--是否标志代码表 名称
      ,f.SCHOOLID as f_ZZBJ_SCHOOLID--学校班级数据表 学校名
      ,f.ZYXXID as f_ZZBJ_ZYXXID--学校班级数据表 专业基本信息
      ,f.ZZNJID as f_ZZBJ_ZZNJID--学校班级数据表 学校年级数据表
      ,f.XZBMC as f_ZZBJ_XZBMC--学校班级数据表 行政班名称
      ,f.JBNY as f_ZZBJ_JBNY--学校班级数据表 建班年月
      ,f.BZRGH as f_ZZBJ_BZRGH--学校班级数据表 班主任工号
      ,f.JSBH as f_ZZBJ_JSBH--学校班级数据表 教室编号
      ,f.NANSRS as f_ZZBJ_NANSRS--学校班级数据表 男生人数
      ,f.NVSRS as f_ZZBJ_NVSRS--学校班级数据表 女生人数
      ,f.ZRS as f_ZZBJ_ZRS--学校班级数据表 总人数
      ,f.BZXH as f_ZZBJ_BZXH--学校班级数据表 班长学号
      ,f.JXJH as f_ZZBJ_JXJH--学校班级数据表 教学计划
      ,f.JGH as f_ZZBJ_JGH--学校班级数据表 机构号
      ,f.XQDM as f_ZZBJ_XQDM--学校班级数据表 校区代码
      ,f.BZRID as f_ZZBJ_BZRID--学校班级数据表 班主任ID
      ,g.SCHOOLID as g_KC_SCHOOLID--课程数据子类表 学校ID
      ,g.KCMC as g_KC_KCMC--课程数据子类表 课程名称
      ,g.KCYWM as g_KC_KCYWM--课程数据子类表 课程英文名
      ,g.KCBM as g_KC_KCBM--课程数据子类表 课程别名
      ,g.KCJS as g_KC_KCJS--课程数据子类表 课程介绍
      ,g.XF as g_KC_XF--课程数据子类表 学分
      ,g.ZXS as g_KC_ZXS--课程数据子类表 总学时
      ,g.LLXS as g_KC_LLXS--课程数据子类表 理论学时
      ,g.SJXS as g_KC_SJXS--课程数据子类表 实践学时
      ,g.QTXS as g_KC_QTXS--课程数据子类表 其他学时
      ,g.CKSM as g_KC_CKSM--课程数据子类表 参考书目
      ,g.KKDW as g_KC_KKDW--课程数据子类表 开课单位
      ,g.KSXS as g_KC_KSXS--课程数据子类表 考试形式
      ,[gb].MC as g_KC_KSXS_MC--考试形式代码表 名称
      ,g.SKFSM as g_KC_SKFSM--课程数据子类表 授课方式码
      ,[gc].MC as g_KC_SKFSM_MC--授课方式代码表 名称
      ,g.KCFY as g_KC_KCFY--课程数据子类表 课程费用
      ,h.SCHOOLID as h_JCJBXX_SCHOOLID--教材基本信息表 学校ID
      ,h.JCDM as h_JCJBXX_JCDM--教材基本信息表 教材代码
      ,h.JCMC as h_JCJBXX_JCMC--教材基本信息表 教材名称
      ,h.CBH as h_JCJBXX_CBH--教材基本信息表 出版号
      ,h.DYZZ as h_JCJBXX_DYZZ--教材基本信息表 第一作者
      ,h.QTZZ as h_JCJBXX_QTZZ--教材基本信息表 其他作者
      ,h.BC as h_JCJBXX_BC--教材基本信息表 版次
      ,h.YC as h_JCJBXX_YC--教材基本信息表 印次
      ,h.JG as h_JCJBXX_JG--教材基本信息表 价格
      ,h.CBS as h_JCJBXX_CBS--教材基本信息表 出版社
      ,h.CBRQ as h_JCJBXX_CBRQ--教材基本信息表 出版日期
      ,h.SFYLXC as h_JCJBXX_SFYLXC--教材基本信息表 是否有练习册
      ,[hb].MC as h_JCJBXX_SFYLXC_MC--是否标志代码表 名称
      ,h.SFYJCJF as h_JCJBXX_SFYJCJF--教材基本信息表 是否有教参教辅
      ,[hc].MC as h_JCJBXX_SFYJCJF_MC--是否标志代码表 名称
      ,h.NRJJ as h_JCJBXX_NRJJ--教材基本信息表 内容简介
      ,h.DQZT as h_JCJBXX_DQZT--教材基本信息表 当前状态
      ,h.ZDKC as h_JCJBXX_ZDKC--教材基本信息表 最低库存
      ,h.DQKC as h_JCJBXX_DQKC--教材基本信息表 当前库存
      ,i.SCHOOLID as i_XSXX_SCHOOLID--学生信息数据表 学校名
      ,i.XH as i_XSXX_XH--学生信息数据表 学号
      ,i.XM as i_XSXX_XM--学生信息数据表 姓名
      ,i.YWXM as i_XSXX_YWXM--学生信息数据表 英文姓名
      ,i.XMPY as i_XSXX_XMPY--学生信息数据表 姓名拼音
      ,i.CYM as i_XSXX_CYM--学生信息数据表 曾用名
      ,i.SFZJLXM as i_XSXX_SFZJLXM--学生信息数据表 身份证件类型码
      ,[ib].MC as i_XSXX_SFZJLXM_MC--身份证件类型代码表 名称
      ,i.SFZJH as i_XSXX_SFZJH--学生信息数据表 身份证件号
      ,i.XBM as i_XSXX_XBM--学生信息数据表 性别码
      ,[ic].MC as i_XSXX_XBM_MC--人的性别代码 名称
      ,i.XXM as i_XSXX_XXM--学生信息数据表 血型码
      ,[id].MC as i_XSXX_XXM_MC--血型代码表 名称
      ,[id].JC as i_XSXX_XXM_JC--血型代码表 简称
      ,i.CSRQ as i_XSXX_CSRQ--学生信息数据表 出生日期
      ,i.CSDM as i_XSXX_CSDM--学生信息数据表 出生地码
      ,[ie].MC as i_XSXX_CSDM_MC--中华人民共和国行政区划代码 名称
      ,i.JG as i_XSXX_JG--学生信息数据表 籍贯
      ,i.MZM as i_XSXX_MZM--学生信息数据表 民族码
      ,[if].MZMC as i_XSXX_MZM_MZMC--中国各民族名称的罗马字母拼写法和代码 民族名称
      ,[if].ZMDM as i_XSXX_MZM_ZMDM--中国各民族名称的罗马字母拼写法和代码 字母代码
      ,i.HYZKM as i_XSXX_HYZKM--学生信息数据表 婚姻状况码
      ,[ig].MC as i_XSXX_HYZKM_MC--婚姻状况代码 名称
      ,i.XYZJM as i_XSXX_XYZJM--学生信息数据表 信仰宗教码
      ,[ih].MC as i_XSXX_XYZJM_MC--宗教信仰代码 名称
      ,i.GATQWM as i_XSXX_GATQWM--学生信息数据表 港澳台侨外码
      ,[ii].MC as i_XSXX_GATQWM_MC--港澳台侨外代码表 名称
      ,[ii].SM as i_XSXX_GATQWM_SM--港澳台侨外代码表 说明
      ,i.JKZKM as i_XSXX_JKZKM--学生信息数据表 健康状况码
      ,[ij].MC as i_XSXX_JKZKM_MC--健康状况1位数字代码 名称
      ,[ij].SM as i_XSXX_JKZKM_SM--健康状况1位数字代码 说明
      ,i.ZZMMM as i_XSXX_ZZMMM--学生信息数据表 政治面貌码
      ,[ik].MC as i_XSXX_ZZMMM_MC--政治面貌代码 名称
      ,[ik].JC as i_XSXX_ZZMMM_JC--政治面貌代码 简称
      ,i.HKSZDXZQHM as i_XSXX_HKSZDXZQHM--学生信息数据表 户口所在地行政区划码
      ,[il].MC as i_XSXX_HKSZDXZQHM_MC--中华人民共和国行政区划代码 名称
      ,i.HKLBM as i_XSXX_HKLBM--学生信息数据表 户口类别码
      ,[im].MC as i_XSXX_HKLBM_MC--户口类别代码 名称
      ,i.SFSLDRK as i_XSXX_SFSLDRK--学生信息数据表 是否是流动人口
      ,[in].MC as i_XSXX_SFSLDRK_MC--是否标志代码表 名称
      ,i.GJDQM as i_XSXX_GJDQM--学生信息数据表 国籍/地区
      ,[io].GJDQMCJC as i_XSXX_GJDQM_GJDQMCJC--世界各国和地区名称代码 国家/地区名称简称
      ,[io].EZMDM as i_XSXX_GJDQM_EZMDM--世界各国和地区名称代码 二字母代码
      ,[io].SZMDM as i_XSXX_GJDQM_SZMDM--世界各国和地区名称代码 三字母代码
      ,i.TC as i_XSXX_TC--学生信息数据表 特长
      ,i.XSLXDH as i_XSXX_XSLXDH--学生信息数据表 学生联系电话
      ,i.WLDZ as i_XSXX_WLDZ--学生信息数据表 网络地址
      ,i.JSTXH as i_XSXX_JSTXH--学生信息数据表 即时通讯号
      ,i.DZXX as i_XSXX_DZXX--学生信息数据表 电子信箱
      ,i.ZP as i_XSXX_ZP--学生信息数据表 照片(路径)

FROM dbo.EDU_ZZJX_04_A04_XSJCLY AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS c ON a.XQID = c.ID /*学期ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_01_01_ZYXX AS d ON a.ZYXXID = d.ZYBH /*专业ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_02_01_ZZNJ AS e ON a.NJID = e.NJDM /*年级ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_02_02_ZZBJ AS f ON a.BJID = f.XZBDM /*班级ID*/ AND a.SCHOOLID = f.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_01_02_KC AS g ON a.KCID = g.KCH /*课程ID*/ AND a.SCHOOLID = g.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_04_01_JCJBXX AS h ON a.JCID = h.ID /*教材ID*/ AND a.SCHOOLID = h.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZZXS_01_01_XSXX AS i ON a.LYXSID = i.ID /*领用学生ID*/ AND a.SCHOOLID = i.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS [cb] ON c.XQM = [cb].DM /*学期码*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZJZY AS [db] ON d.ZYDM = [db].DM /*专业代码*/ AND d.SSZYML = [db].ZYMLLB /*所属专业目录*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZYML AS [dc] ON d.SSZYML = [dc].DM /*所属专业目录*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [eb] ON e.NJZT = [eb].DM /*年级状态*/ LEFT OUTER JOIN
      dbo.EDU_JY_KSXS AS [gb] ON g.KSXS = [gb].DM /*考试形式*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS [gc] ON g.SKFSM = [gc].DM /*授课方式码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [hb] ON h.SFYLXC = [hb].DM /*是否有练习册*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [hc] ON h.SFYJCJF = [hc].DM /*是否有教参教辅*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS [ib] ON i.SFZJLXM = [ib].DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS [ic] ON i.XBM = [ic].DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS [id] ON i.XXM = [id].DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [ie] ON i.CSDM = [ie].DM /*出生地码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS [if] ON i.MZM = [if].DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS [ig] ON i.HYZKM = [ig].DM /*婚姻状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS [ih] ON i.XYZJM = [ih].DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS [ii] ON i.GATQWM = [ii].DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS [ij] ON i.JKZKM = [ij].DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS [ik] ON i.ZZMMM = [ik].DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [il] ON i.HKSZDXZQHM = [il].DM /*户口所在地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS [im] ON i.HKLBM = [im].DM /*户口类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [in] ON i.SFSLDRK = [in].DM /*是否是流动人口*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS [io] ON i.GJDQM = [io].DM /*国籍/地区*/
GO
