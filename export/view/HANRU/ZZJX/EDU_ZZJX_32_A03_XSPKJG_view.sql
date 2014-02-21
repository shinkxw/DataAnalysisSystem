
--学生排考结果表
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_32_A03_XSPKJG_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[KCPKID]--专业课程排考结果ID
      ,a.[ExamID]--考试ID
      ,a.[EXAMROOMID]--考场ID
      ,a.[CCID]--场次ID
      ,a.[KCQDID]--考试科目ID
      ,a.[StudentID]--学生ID
      ,a.[SeatID]--座位号
      ,a.[AdmissionID]--准考证号
      ,a.[ZYXXID]--专业ID
      ,a.[NJID]--年级ID
      ,a.[BJID]--班级ID
      ,a.[KSSDLXID]--考试时段类型ID
      ,c.SCHOOLID as c_ZYKCPKJG_SCHOOLID--专业课程排考结果表 学校
      ,c.ExamID as c_ZYKCPKJG_ExamID--专业课程排考结果表 考试ID
      ,c.EXAMROOMID as c_ZYKCPKJG_EXAMROOMID--专业课程排考结果表 考场ID
      ,c.CCID as c_ZYKCPKJG_CCID--专业课程排考结果表 场次ID
      ,c.KCQDID as c_ZYKCPKJG_KCQDID--专业课程排考结果表 考试科目ID
      ,c.ZYXXID as c_ZYKCPKJG_ZYXXID--专业课程排考结果表 专业ID
      ,c.NJID as c_ZYKCPKJG_NJID--专业课程排考结果表 年级ID
      ,c.BJID as c_ZYKCPKJG_BJID--专业课程排考结果表 班级ID
      ,c.CKRS as c_ZYKCPKJG_CKRS--专业课程排考结果表 参考人数
      ,c.SKRS as c_ZYKCPKJG_SKRS--专业课程排考结果表 实考人数
      ,c.ZJKLSID as c_ZYKCPKJG_ZJKLSID--专业课程排考结果表 主监考老师ID
      ,c.FJKLSID as c_ZYKCPKJG_FJKLSID--专业课程排考结果表 副监考老师ID
      ,d.SCHOOLID as d_EXAM_SCHOOLID--考试表 学校
      ,d.Name as d_EXAM_Name--考试表 考试名称
      ,d.CJKSKMLM as d_EXAM_CJKSKMLM--考试表 参加考试科目列表
      ,d.StartDate as d_EXAM_StartDate--考试表 开始日期
      ,d.EndDate as d_EXAM_EndDate--考试表 截止日期
      ,d.XqID as d_EXAM_XqID--考试表 学期ID
      ,d.DffsID as d_EXAM_DffsID--考试表 登分方式
      ,e.SCHOOLID as e_EXAMROOM_SCHOOLID--考场表 学校
      ,e.Name as e_EXAMROOM_Name--考场表 考场名称
      ,e.RoomID as e_EXAMROOM_RoomID--考场表 教室ID
      ,e.ExamID as e_EXAMROOM_ExamID--考场表 考试ID
      ,e.StuCount as e_EXAMROOM_StuCount--考场表 考生容纳人数
      ,f.SCHOOLID as f_KSCC_SCHOOLID--考试场次表 学校
      ,f.ExamID as f_KSCC_ExamID--考试场次表 考试ID
      ,f.Name as f_KSCC_Name--考试场次表 场次名称
      ,f.TypeID as f_KSCC_TypeID--考试场次表 考试时段类型
      ,f.ExamDate as f_KSCC_ExamDate--考试场次表 考试日期
      ,g.SCHOOLID as g_JXJHKCQD_SCHOOLID--教学计划课程清单数据子类表 学校ID
      ,g.JXJHID as g_JXJHKCQD_JXJHID--教学计划课程清单数据子类表 教学计划ID
      ,g.KCH as g_JXJHKCQD_KCH--教学计划课程清单数据子类表 课程号
      ,g.JHBH as g_JXJHKCQD_JHBH--教学计划课程清单数据子类表 计划编号
      ,g.XQID as g_JXJHKCQD_XQID--教学计划课程清单数据子类表 学期ID
      ,g.KCMC as g_JXJHKCQD_KCMC--教学计划课程清单数据子类表 课程名称
      ,g.YXKC as g_JXJHKCQD_YXKC--教学计划课程清单数据子类表 预修课程
      ,g.SFHXKC as g_JXJHKCQD_SFHXKC--教学计划课程清单数据子类表 是否核心（骨干）
      ,[gb].MC as g_JXJHKCQD_SFHXKC_MC--是否标志代码表 名称
      ,g.KCFLM as g_JXJHKCQD_KCFLM--教学计划课程清单数据子类表 课程分类码
      ,[gc].MC as g_JXJHKCQD_KCFLM_MC--课程分类代码 名称
      ,g.KCSXM as g_JXJHKCQD_KCSXM--教学计划课程清单数据子类表 课程属性码
      ,[gd].MC as g_JXJHKCQD_KCSXM_MC--课程属性代码表 名称
      ,[gd].SM as g_JXJHKCQD_KCSXM_SM--课程属性代码表 说明
      ,g.ZXXQ as g_JXJHKCQD_ZXXQ--教学计划课程清单数据子类表 执行学期
      ,g.ZKS as g_JXJHKCQD_ZKS--教学计划课程清单数据子类表 总课时
      ,g.LLKS as g_JXJHKCQD_LLKS--教学计划课程清单数据子类表 理论课时
      ,g.SJKS as g_JXJHKCQD_SJKS--教学计划课程清单数据子类表 实践课时
      ,g.XF as g_JXJHKCQD_XF--教学计划课程清单数据子类表 学分
      ,g.XFRDHGX as g_JXJHKCQD_XFRDHGX--教学计划课程清单数据子类表 学分认定合格线
      ,h.SCHOOLID as h_XSXX_SCHOOLID--学生信息数据表 学校名
      ,h.XH as h_XSXX_XH--学生信息数据表 学号
      ,h.XM as h_XSXX_XM--学生信息数据表 姓名
      ,h.YWXM as h_XSXX_YWXM--学生信息数据表 英文姓名
      ,h.XMPY as h_XSXX_XMPY--学生信息数据表 姓名拼音
      ,h.CYM as h_XSXX_CYM--学生信息数据表 曾用名
      ,h.SFZJLXM as h_XSXX_SFZJLXM--学生信息数据表 身份证件类型码
      ,[hb].MC as h_XSXX_SFZJLXM_MC--身份证件类型代码表 名称
      ,h.SFZJH as h_XSXX_SFZJH--学生信息数据表 身份证件号
      ,h.XBM as h_XSXX_XBM--学生信息数据表 性别码
      ,[hc].MC as h_XSXX_XBM_MC--人的性别代码 名称
      ,h.XXM as h_XSXX_XXM--学生信息数据表 血型码
      ,[hd].MC as h_XSXX_XXM_MC--血型代码表 名称
      ,[hd].JC as h_XSXX_XXM_JC--血型代码表 简称
      ,h.CSRQ as h_XSXX_CSRQ--学生信息数据表 出生日期
      ,h.CSDM as h_XSXX_CSDM--学生信息数据表 出生地码
      ,[he].MC as h_XSXX_CSDM_MC--中华人民共和国行政区划代码 名称
      ,h.JG as h_XSXX_JG--学生信息数据表 籍贯
      ,h.MZM as h_XSXX_MZM--学生信息数据表 民族码
      ,[hf].MZMC as h_XSXX_MZM_MZMC--中国各民族名称的罗马字母拼写法和代码 民族名称
      ,[hf].ZMDM as h_XSXX_MZM_ZMDM--中国各民族名称的罗马字母拼写法和代码 字母代码
      ,h.HYZKM as h_XSXX_HYZKM--学生信息数据表 婚姻状况码
      ,[hg].MC as h_XSXX_HYZKM_MC--婚姻状况代码 名称
      ,h.XYZJM as h_XSXX_XYZJM--学生信息数据表 信仰宗教码
      ,[hh].MC as h_XSXX_XYZJM_MC--宗教信仰代码 名称
      ,h.GATQWM as h_XSXX_GATQWM--学生信息数据表 港澳台侨外码
      ,[hi].MC as h_XSXX_GATQWM_MC--港澳台侨外代码表 名称
      ,[hi].SM as h_XSXX_GATQWM_SM--港澳台侨外代码表 说明
      ,h.JKZKM as h_XSXX_JKZKM--学生信息数据表 健康状况码
      ,[hj].MC as h_XSXX_JKZKM_MC--健康状况1位数字代码 名称
      ,[hj].SM as h_XSXX_JKZKM_SM--健康状况1位数字代码 说明
      ,h.ZZMMM as h_XSXX_ZZMMM--学生信息数据表 政治面貌码
      ,[hk].MC as h_XSXX_ZZMMM_MC--政治面貌代码 名称
      ,[hk].JC as h_XSXX_ZZMMM_JC--政治面貌代码 简称
      ,h.HKSZDXZQHM as h_XSXX_HKSZDXZQHM--学生信息数据表 户口所在地行政区划码
      ,[hl].MC as h_XSXX_HKSZDXZQHM_MC--中华人民共和国行政区划代码 名称
      ,h.HKLBM as h_XSXX_HKLBM--学生信息数据表 户口类别码
      ,[hm].MC as h_XSXX_HKLBM_MC--户口类别代码 名称
      ,h.SFSLDRK as h_XSXX_SFSLDRK--学生信息数据表 是否是流动人口
      ,[hn].MC as h_XSXX_SFSLDRK_MC--是否标志代码表 名称
      ,h.GJDQM as h_XSXX_GJDQM--学生信息数据表 国籍/地区
      ,[ho].GJDQMCJC as h_XSXX_GJDQM_GJDQMCJC--世界各国和地区名称代码 国家/地区名称简称
      ,[ho].EZMDM as h_XSXX_GJDQM_EZMDM--世界各国和地区名称代码 二字母代码
      ,[ho].SZMDM as h_XSXX_GJDQM_SZMDM--世界各国和地区名称代码 三字母代码
      ,h.TC as h_XSXX_TC--学生信息数据表 特长
      ,h.XSLXDH as h_XSXX_XSLXDH--学生信息数据表 学生联系电话
      ,h.WLDZ as h_XSXX_WLDZ--学生信息数据表 网络地址
      ,h.JSTXH as h_XSXX_JSTXH--学生信息数据表 即时通讯号
      ,h.DZXX as h_XSXX_DZXX--学生信息数据表 电子信箱
      ,h.ZP as h_XSXX_ZP--学生信息数据表 照片(路径)
      ,h.RXXQID as h_XSXX_RXXQID--学生信息数据表 入学学期ID
      ,i.SCHOOLID as i_ZYXX_SCHOOLID--专业基本信息数据表 学校名
      ,i.ZYDM as i_ZYXX_ZYDM--专业基本信息数据表 专业代码
      ,[ib].ZYMLLB as i_ZYXX_ZYDM_ZYMLLB--自建专业代码 专业目录类别
      ,[ib].MC as i_ZYXX_ZYDM_MC--自建专业代码 名称
      ,i.ZYMC as i_ZYXX_ZYMC--专业基本信息数据表 专业名称
      ,i.ZYYWMC as i_ZYXX_ZYYWMC--专业基本信息数据表 专业英文名称
      ,i.XZ as i_ZYXX_XZ--专业基本信息数据表 学制
      ,i.ZYFXMC as i_ZYXX_ZYFXMC--专业基本信息数据表 专业方向名称
      ,i.ZYJC as i_ZYXX_ZYJC--专业基本信息数据表 专业简称
      ,i.JLNY as i_ZYXX_JLNY--专业基本信息数据表 建立年月
      ,i.ZYJSS as i_ZYXX_ZYJSS--专业基本信息数据表 专业教师数
      ,i.KSJGH as i_ZYXX_KSJGH--专业基本信息数据表 开设机构号
      ,i.ZXF as i_ZYXX_ZXF--专业基本信息数据表 总学分
      ,i.SSZYML as i_ZYXX_SSZYML--专业基本信息数据表 所属专业目录
      ,[ic].MC as i_ZYXX_SSZYML_MC--专业目录代码 名称
      ,i.ZYLB as i_ZYXX_ZYLB--专业基本信息数据表 专业类别名称
      ,j.SCHOOLID as j_ZZNJ_SCHOOLID--学校年级数据表 学校名
      ,j.NJMC as j_ZZNJ_NJMC--学校年级数据表 年级名称
      ,j.SSNF as j_ZZNJ_SSNF--学校年级数据表 所属年份
      ,j.NJZT as j_ZZNJ_NJZT--学校年级数据表 年级状态
      ,[jb].MC as j_ZZNJ_NJZT_MC--是否标志代码表 名称
      ,k.SCHOOLID as k_ZZBJ_SCHOOLID--学校班级数据表 学校名
      ,k.ZYXXID as k_ZZBJ_ZYXXID--学校班级数据表 专业基本信息
      ,k.ZZNJID as k_ZZBJ_ZZNJID--学校班级数据表 学校年级数据表
      ,k.XZBMC as k_ZZBJ_XZBMC--学校班级数据表 行政班名称
      ,k.JBNY as k_ZZBJ_JBNY--学校班级数据表 建班年月
      ,k.BZRGH as k_ZZBJ_BZRGH--学校班级数据表 班主任工号
      ,k.JSBH as k_ZZBJ_JSBH--学校班级数据表 教室编号
      ,k.NANSRS as k_ZZBJ_NANSRS--学校班级数据表 男生人数
      ,k.NVSRS as k_ZZBJ_NVSRS--学校班级数据表 女生人数
      ,k.ZRS as k_ZZBJ_ZRS--学校班级数据表 总人数
      ,k.BZXH as k_ZZBJ_BZXH--学校班级数据表 班长学号
      ,k.JXJH as k_ZZBJ_JXJH--学校班级数据表 教学计划
      ,k.JGH as k_ZZBJ_JGH--学校班级数据表 机构号
      ,k.XQDM as k_ZZBJ_XQDM--学校班级数据表 校区代码
      ,k.BZRID as k_ZZBJ_BZRID--学校班级数据表 班主任ID
      ,l.SCHOOLID as l_KSSDLX_SCHOOLID--考试时段类型表 学校
      ,l.TypeName as l_KSSDLX_TypeName--考试时段类型表 类型名
      ,l.StartTime as l_KSSDLX_StartTime--考试时段类型表 开始时间
      ,l.EndTime as l_KSSDLX_EndTime--考试时段类型表 结束时间

FROM dbo.EDU_ZZJX_32_A03_XSPKJG AS a LEFT OUTER JOIN
      dbo.EDU_ZZJX_32_A02_ZYKCPKJG AS c ON a.KCPKID = c.ID /*专业课程排考结果ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_32_A01_EXAM AS d ON a.ExamID = d.ID /*考试ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_30_A02_EXAMROOM AS e ON a.EXAMROOMID = e.ID /*考场ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_31_A02_KSCC AS f ON a.CCID = f.ID /*场次ID*/ AND a.SCHOOLID = f.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_03_03_JXJHKCQD AS g ON a.KCQDID = g.ID /*考试科目ID*/ AND a.SCHOOLID = g.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZXS_01_01_XSXX AS h ON a.StudentID = h.ID /*学生ID*/ AND a.SCHOOLID = h.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_01_01_ZYXX AS i ON a.ZYXXID = i.ZYBH /*专业ID*/ AND a.SCHOOLID = i.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_02_01_ZZNJ AS j ON a.NJID = j.NJDM /*年级ID*/ AND a.SCHOOLID = j.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_02_02_ZZBJ AS k ON a.BJID = k.XZBDM /*班级ID*/ AND a.SCHOOLID = k.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_31_A01_KSSDLX AS l ON a.KSSDLXID = l.ID /*考试时段类型ID*/ AND a.SCHOOLID = l.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [gb] ON g.SFHXKC = [gb].DM /*是否核心（骨干）*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_KCFL AS [gc] ON g.KCFLM = [gc].DM /*课程分类码*/ LEFT OUTER JOIN
      dbo.EDU_JY_KCSX AS [gd] ON g.KCSXM = [gd].DM /*课程属性码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS [hb] ON h.SFZJLXM = [hb].DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS [hc] ON h.XBM = [hc].DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS [hd] ON h.XXM = [hd].DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [he] ON h.CSDM = [he].DM /*出生地码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS [hf] ON h.MZM = [hf].DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS [hg] ON h.HYZKM = [hg].DM /*婚姻状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS [hh] ON h.XYZJM = [hh].DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS [hi] ON h.GATQWM = [hi].DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS [hj] ON h.JKZKM = [hj].DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS [hk] ON h.ZZMMM = [hk].DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [hl] ON h.HKSZDXZQHM = [hl].DM /*户口所在地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS [hm] ON h.HKLBM = [hm].DM /*户口类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [hn] ON h.SFSLDRK = [hn].DM /*是否是流动人口*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS [ho] ON h.GJDQM = [ho].DM /*国籍/地区*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZJZY AS [ib] ON i.ZYDM = [ib].DM /*专业代码*/ AND i.SSZYML = [ib].ZYMLLB /*所属专业目录*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZYML AS [ic] ON i.SSZYML = [ic].DM /*所属专业目录*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [jb] ON j.NJZT = [jb].DM /*年级状态*/
GO
