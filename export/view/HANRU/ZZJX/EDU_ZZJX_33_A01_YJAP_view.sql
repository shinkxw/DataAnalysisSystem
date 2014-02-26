
--阅卷安排表
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_33_A01_YJAP_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[ZYKCPKJGID]--专业课程排考结果ID
      ,a.[TeacherID]--阅卷教师ID
      ,a.[ExamID]--考试ID
      ,a.[EXAMROOMID]--考场ID
      ,a.[CCID]--场次ID
      ,a.[ZYXXID]--专业ID
      ,a.[NJID]--年级ID
      ,a.[BJID]--班级ID
      ,a.[KCQDID]--考试科目ID
      ,a.[YJFS]--阅卷方式
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
      ,d.SCHOOLID as d_JZGJBSJ_SCHOOLID--教职工基本数据子类表 学校名
      ,d.GH as d_JZGJBSJ_GH--教职工基本数据子类表 工号
      ,d.XM as d_JZGJBSJ_XM--教职工基本数据子类表 姓名
      ,d.YWXM as d_JZGJBSJ_YWXM--教职工基本数据子类表 英文姓名
      ,d.XMPY as d_JZGJBSJ_XMPY--教职工基本数据子类表 姓名拼音
      ,d.CYM as d_JZGJBSJ_CYM--教职工基本数据子类表 曾用名
      ,d.SFZJLXM as d_JZGJBSJ_SFZJLXM--教职工基本数据子类表 身份证件类型码
      ,[db].MC as d_JZGJBSJ_SFZJLXM_MC--身份证件类型代码表 名称
      ,d.SFZJH as d_JZGJBSJ_SFZJH--教职工基本数据子类表 身份证件号
      ,d.CSRQ as d_JZGJBSJ_CSRQ--教职工基本数据子类表 出生日期
      ,d.XBM as d_JZGJBSJ_XBM--教职工基本数据子类表 性别码
      ,[dc].MC as d_JZGJBSJ_XBM_MC--人的性别代码 名称
      ,d.MZM as d_JZGJBSJ_MZM--教职工基本数据子类表 民族码
      ,[dd].MZMC as d_JZGJBSJ_MZM_MZMC--中国各民族名称的罗马字母拼写法和代码 民族名称
      ,[dd].ZMDM as d_JZGJBSJ_MZM_ZMDM--中国各民族名称的罗马字母拼写法和代码 字母代码
      ,d.XXM as d_JZGJBSJ_XXM--教职工基本数据子类表 血型码
      ,[de].MC as d_JZGJBSJ_XXM_MC--血型代码表 名称
      ,[de].JC as d_JZGJBSJ_XXM_JC--血型代码表 简称
      ,d.JKZKM as d_JZGJBSJ_JKZKM--教职工基本数据子类表 健康状况码
      ,[df].MC as d_JZGJBSJ_JKZKM_MC--健康状况1位数字代码 名称
      ,[df].SM as d_JZGJBSJ_JKZKM_SM--健康状况1位数字代码 说明
      ,d.HYZTM as d_JZGJBSJ_HYZTM--教职工基本数据子类表 婚姻状态码
      ,[dg].MC as d_JZGJBSJ_HYZTM_MC--婚姻状况代码 名称
      ,d.ZZMMM as d_JZGJBSJ_ZZMMM--教职工基本数据子类表 政治面貌码
      ,[dh].MC as d_JZGJBSJ_ZZMMM_MC--政治面貌代码 名称
      ,[dh].JC as d_JZGJBSJ_ZZMMM_JC--政治面貌代码 简称
      ,d.GATQWM as d_JZGJBSJ_GATQWM--教职工基本数据子类表 港澳台侨外码
      ,[di].MC as d_JZGJBSJ_GATQWM_MC--港澳台侨外代码表 名称
      ,[di].SM as d_JZGJBSJ_GATQWM_SM--港澳台侨外代码表 说明
      ,d.JG as d_JZGJBSJ_JG--教职工基本数据子类表 籍贯
      ,d.GJDQM as d_JZGJBSJ_GJDQM--教职工基本数据子类表 国籍/地区码
      ,[dj].GJDQMCJC as d_JZGJBSJ_GJDQM_GJDQMCJC--世界各国和地区名称代码 国家/地区名称简称
      ,[dj].EZMDM as d_JZGJBSJ_GJDQM_EZMDM--世界各国和地区名称代码 二字母代码
      ,[dj].SZMDM as d_JZGJBSJ_GJDQM_SZMDM--世界各国和地区名称代码 三字母代码
      ,d.CSDXZQHM as d_JZGJBSJ_CSDXZQHM--教职工基本数据子类表 出生地行政区划码
      ,[dk].MC as d_JZGJBSJ_CSDXZQHM_MC--中华人民共和国行政区划代码 名称
      ,d.XYZJM as d_JZGJBSJ_XYZJM--教职工基本数据子类表 信仰宗教码
      ,[dl].MC as d_JZGJBSJ_XYZJM_MC--宗教信仰代码 名称
      ,d.JZGHKSZDXZQHM as d_JZGJBSJ_JZGHKSZDXZQHM--教职工基本数据子类表 教职工户口所在地行政区划码
      ,[dm].MC as d_JZGJBSJ_JZGHKSZDXZQHM_MC--中华人民共和国行政区划代码 名称
      ,d.HKLBM as d_JZGJBSJ_HKLBM--教职工基本数据子类表 户口类别码
      ,[dn].MC as d_JZGJBSJ_HKLBM_MC--户口类别代码 名称
      ,d.DQZZ as d_JZGJBSJ_DQZZ--教职工基本数据子类表 当前住址
      ,d.DQZZYZBM as d_JZGJBSJ_DQZZYZBM--教职工基本数据子类表 当前住址邮政编码
      ,d.CJGZNY as d_JZGJBSJ_CJGZNY--教职工基本数据子类表 参加工作年月
      ,d.CJNY as d_JZGJBSJ_CJNY--教职工基本数据子类表 从教年月
      ,d.LXNY as d_JZGJBSJ_LXNY--教职工基本数据子类表 来校年月
      ,d.BZLBM as d_JZGJBSJ_BZLBM--教职工基本数据子类表 编制类别码
      ,[do].MC as d_JZGJBSJ_BZLBM_MC--编制类别代码表 名称
      ,d.JZGLBM as d_JZGJBSJ_JZGLBM--教职工基本数据子类表 教职工类别码
      ,[dp].MC as d_JZGJBSJ_JZGLBM_MC--教职工类别代码表 名称
      ,[dp].SM as d_JZGJBSJ_JZGLBM_SM--教职工类别代码表 说明
      ,d.GWLBM as d_JZGJBSJ_GWLBM--教职工基本数据子类表 岗位类别码
      ,[dq].MC as d_JZGJBSJ_GWLBM_MC--岗位类别代码表 名称
      ,d.SFJZJS as d_JZGJBSJ_SFJZJS--教职工基本数据子类表 是否兼职教师
      ,[dr].MC as d_JZGJBSJ_SFJZJS_MC--是否标志代码表 名称
      ,d.SFSSXJS as d_JZGJBSJ_SFSSXJS--教职工基本数据子类表 是否双师型教师
      ,[ds].MC as d_JZGJBSJ_SFSSXJS_MC--是否标志代码表 名称
      ,d.ZP as d_JZGJBSJ_ZP--教职工基本数据子类表 照片(路径)
      ,d.DQZTM as d_JZGJBSJ_DQZTM--教职工基本数据子类表 当前状态码
      ,[dt].MC as d_JZGJBSJ_DQZTM_MC--教职工当前状态代码表 名称
      ,d.YDDH as d_JZGJBSJ_YDDH--教职工基本数据子类表 移动电话
      ,d.GDDH as d_JZGJBSJ_GDDH--教职工基本数据子类表 固定电话
      ,d.TXDZYZBM as d_JZGJBSJ_TXDZYZBM--教职工基本数据子类表 通信地址邮政编码
      ,d.TXDZ as d_JZGJBSJ_TXDZ--教职工基本数据子类表 通信地址
      ,d.DZXX as d_JZGJBSJ_DZXX--教职工基本数据子类表 电子信箱
      ,d.WLDZ as d_JZGJBSJ_WLDZ--教职工基本数据子类表 网络地址
      ,d.JSTXH as d_JZGJBSJ_JSTXH--教职工基本数据子类表 即时通讯号
      ,e.SCHOOLID as e_EXAM_SCHOOLID--考试表 学校
      ,e.Name as e_EXAM_Name--考试表 考试名称
      ,e.CJKSKMLM as e_EXAM_CJKSKMLM--考试表 参加考试科目列表
      ,e.StartDate as e_EXAM_StartDate--考试表 开始日期
      ,e.EndDate as e_EXAM_EndDate--考试表 截止日期
      ,e.XqID as e_EXAM_XqID--考试表 学期ID
      ,e.DffsID as e_EXAM_DffsID--考试表 登分方式
      ,f.SCHOOLID as f_EXAMROOM_SCHOOLID--考场表 学校
      ,f.Name as f_EXAMROOM_Name--考场表 考场名称
      ,f.RoomID as f_EXAMROOM_RoomID--考场表 教室ID
      ,f.ExamID as f_EXAMROOM_ExamID--考场表 考试ID
      ,f.StuCount as f_EXAMROOM_StuCount--考场表 考生容纳人数
      ,g.SCHOOLID as g_KSCC_SCHOOLID--考试场次表 学校
      ,g.ExamID as g_KSCC_ExamID--考试场次表 考试ID
      ,g.Name as g_KSCC_Name--考试场次表 场次名称
      ,g.TypeID as g_KSCC_TypeID--考试场次表 考试时段类型
      ,g.ExamDate as g_KSCC_ExamDate--考试场次表 考试日期
      ,h.SCHOOLID as h_ZYXX_SCHOOLID--专业基本信息数据表 学校名
      ,h.ZYDM as h_ZYXX_ZYDM--专业基本信息数据表 专业代码
      ,[hb].ZYMLLB as h_ZYXX_ZYDM_ZYMLLB--自建专业代码 专业目录类别
      ,[hb].MC as h_ZYXX_ZYDM_MC--自建专业代码 名称
      ,h.ZYMC as h_ZYXX_ZYMC--专业基本信息数据表 专业名称
      ,h.ZYYWMC as h_ZYXX_ZYYWMC--专业基本信息数据表 专业英文名称
      ,h.XZ as h_ZYXX_XZ--专业基本信息数据表 学制
      ,h.ZYFXMC as h_ZYXX_ZYFXMC--专业基本信息数据表 专业方向名称
      ,h.ZYJC as h_ZYXX_ZYJC--专业基本信息数据表 专业简称
      ,h.JLNY as h_ZYXX_JLNY--专业基本信息数据表 建立年月
      ,h.ZYJSS as h_ZYXX_ZYJSS--专业基本信息数据表 专业教师数
      ,h.KSJGH as h_ZYXX_KSJGH--专业基本信息数据表 开设机构号
      ,h.ZXF as h_ZYXX_ZXF--专业基本信息数据表 总学分
      ,h.SSZYML as h_ZYXX_SSZYML--专业基本信息数据表 所属专业目录
      ,[hc].MC as h_ZYXX_SSZYML_MC--专业目录代码 名称
      ,h.ZYLB as h_ZYXX_ZYLB--专业基本信息数据表 专业类别名称
      ,i.SCHOOLID as i_ZZNJ_SCHOOLID--学校年级数据表 学校名
      ,i.NJMC as i_ZZNJ_NJMC--学校年级数据表 年级名称
      ,i.SSNF as i_ZZNJ_SSNF--学校年级数据表 所属年份
      ,i.NJZT as i_ZZNJ_NJZT--学校年级数据表 年级状态
      ,[ib].MC as i_ZZNJ_NJZT_MC--是否标志代码表 名称
      ,j.SCHOOLID as j_ZZBJ_SCHOOLID--学校班级数据表 学校名
      ,j.ZYXXID as j_ZZBJ_ZYXXID--学校班级数据表 专业基本信息
      ,j.ZZNJID as j_ZZBJ_ZZNJID--学校班级数据表 学校年级数据表
      ,j.XZBMC as j_ZZBJ_XZBMC--学校班级数据表 行政班名称
      ,j.JBNY as j_ZZBJ_JBNY--学校班级数据表 建班年月
      ,j.BZRGH as j_ZZBJ_BZRGH--学校班级数据表 班主任工号
      ,j.JSBH as j_ZZBJ_JSBH--学校班级数据表 教室编号
      ,j.NANSRS as j_ZZBJ_NANSRS--学校班级数据表 男生人数
      ,j.NVSRS as j_ZZBJ_NVSRS--学校班级数据表 女生人数
      ,j.ZRS as j_ZZBJ_ZRS--学校班级数据表 总人数
      ,j.BZXH as j_ZZBJ_BZXH--学校班级数据表 班长学号
      ,j.JXJH as j_ZZBJ_JXJH--学校班级数据表 教学计划
      ,j.JGH as j_ZZBJ_JGH--学校班级数据表 机构号
      ,j.XQDM as j_ZZBJ_XQDM--学校班级数据表 校区代码
      ,j.BZRID as j_ZZBJ_BZRID--学校班级数据表 班主任ID
      ,k.SCHOOLID as k_JXJHKCQD_SCHOOLID--教学计划课程清单数据子类表 学校ID
      ,k.JXJHID as k_JXJHKCQD_JXJHID--教学计划课程清单数据子类表 教学计划ID
      ,k.KCH as k_JXJHKCQD_KCH--教学计划课程清单数据子类表 课程号
      ,k.JHBH as k_JXJHKCQD_JHBH--教学计划课程清单数据子类表 计划编号
      ,k.XQID as k_JXJHKCQD_XQID--教学计划课程清单数据子类表 学期ID
      ,k.KCMC as k_JXJHKCQD_KCMC--教学计划课程清单数据子类表 课程名称
      ,k.YXKC as k_JXJHKCQD_YXKC--教学计划课程清单数据子类表 预修课程
      ,k.SFHXKC as k_JXJHKCQD_SFHXKC--教学计划课程清单数据子类表 是否核心（骨干）
      ,[kb].MC as k_JXJHKCQD_SFHXKC_MC--是否标志代码表 名称
      ,k.KCFLM as k_JXJHKCQD_KCFLM--教学计划课程清单数据子类表 课程分类码
      ,[kc].MC as k_JXJHKCQD_KCFLM_MC--课程分类代码 名称
      ,k.KCSXM as k_JXJHKCQD_KCSXM--教学计划课程清单数据子类表 课程属性码
      ,[kd].MC as k_JXJHKCQD_KCSXM_MC--课程属性代码表 名称
      ,[kd].SM as k_JXJHKCQD_KCSXM_SM--课程属性代码表 说明
      ,k.ZXXQ as k_JXJHKCQD_ZXXQ--教学计划课程清单数据子类表 执行学期
      ,k.ZKS as k_JXJHKCQD_ZKS--教学计划课程清单数据子类表 总课时
      ,k.LLKS as k_JXJHKCQD_LLKS--教学计划课程清单数据子类表 理论课时
      ,k.SJKS as k_JXJHKCQD_SJKS--教学计划课程清单数据子类表 实践课时
      ,k.XF as k_JXJHKCQD_XF--教学计划课程清单数据子类表 学分
      ,k.XFRDHGX as k_JXJHKCQD_XFRDHGX--教学计划课程清单数据子类表 学分认定合格线
      ,k.JXDG as k_JXJHKCQD_JXDG--教学计划课程清单数据子类表 教学大纲

FROM dbo.EDU_ZZJX_33_A01_YJAP AS a LEFT OUTER JOIN
      dbo.EDU_ZZJX_32_A02_ZYKCPKJG AS c ON a.ZYKCPKJGID = c.ID /*专业课程排考结果ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_01_01_JZGJBSJ AS d ON a.TeacherID = d.ID /*阅卷教师ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_32_A01_EXAM AS e ON a.ExamID = e.ID /*考试ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_30_A02_EXAMROOM AS f ON a.EXAMROOMID = f.ID /*考场ID*/ AND a.SCHOOLID = f.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_31_A02_KSCC AS g ON a.CCID = g.ID /*场次ID*/ AND a.SCHOOLID = g.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_01_01_ZYXX AS h ON a.ZYXXID = h.ZYBH /*专业ID*/ AND a.SCHOOLID = h.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_02_01_ZZNJ AS i ON a.NJID = i.NJDM /*年级ID*/ AND a.SCHOOLID = i.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_02_02_ZZBJ AS j ON a.BJID = j.XZBDM /*班级ID*/ AND a.SCHOOLID = j.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_03_03_JXJHKCQD AS k ON a.KCQDID = k.ID /*考试科目ID*/ AND a.SCHOOLID = k.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS [db] ON d.SFZJLXM = [db].DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS [dc] ON d.XBM = [dc].DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS [dd] ON d.MZM = [dd].DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS [de] ON d.XXM = [de].DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS [df] ON d.JKZKM = [df].DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS [dg] ON d.HYZTM = [dg].DM /*婚姻状态码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS [dh] ON d.ZZMMM = [dh].DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS [di] ON d.GATQWM = [di].DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS [dj] ON d.GJDQM = [dj].DM /*国籍/地区码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [dk] ON d.CSDXZQHM = [dk].DM /*出生地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS [dl] ON d.XYZJM = [dl].DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [dm] ON d.JZGHKSZDXZQHM = [dm].DM /*教职工户口所在地行政区划码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HKLB AS [dn] ON d.HKLBM = [dn].DM /*户口类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_BZLB AS [do] ON d.BZLBM = [do].DM /*编制类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGLB AS [dp] ON d.JZGLBM = [dp].DM /*教职工类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWLB AS [dq] ON d.GWLBM = [dq].DM /*岗位类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [dr] ON d.SFJZJS = [dr].DM /*是否兼职教师*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [ds] ON d.SFSSXJS = [ds].DM /*是否双师型教师*/ LEFT OUTER JOIN
      dbo.EDU_JY_JZGDQZT AS [dt] ON d.DQZTM = [dt].DM /*当前状态码*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZJZY AS [hb] ON h.ZYDM = [hb].DM /*专业代码*/ AND h.SSZYML = [hb].ZYMLLB /*所属专业目录*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZYML AS [hc] ON h.SSZYML = [hc].DM /*所属专业目录*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [ib] ON i.NJZT = [ib].DM /*年级状态*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [kb] ON k.SFHXKC = [kb].DM /*是否核心（骨干）*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_KCFL AS [kc] ON k.KCFLM = [kc].DM /*课程分类码*/ LEFT OUTER JOIN
      dbo.EDU_JY_KCSX AS [kd] ON k.KCSXM = [kd].DM /*课程属性码*/
GO
