
--专业课程排考结果表
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_32_A02_ZYKCPKJG_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[ExamID]--考试ID
      ,a.[EXAMROOMID]--考场ID
      ,a.[CCID]--场次ID
      ,a.[KCQDID]--考试科目ID
      ,a.[ZYXXID]--专业ID
      ,a.[NJID]--年级ID
      ,c.SCHOOLID as c_EXAM_SCHOOLID--考试表 学校
      ,c.Name as c_EXAM_Name--考试表 考试名称
      ,c.CJKSKMLM as c_EXAM_CJKSKMLM--考试表 参加考试科目列表
      ,c.StartDate as c_EXAM_StartDate--考试表 开始日期
      ,c.EndDate as c_EXAM_EndDate--考试表 截止日期
      ,c.XqID as c_EXAM_XqID--考试表 学期ID
      ,c.DffsID as c_EXAM_DffsID--考试表 登分方式
      ,d.SCHOOLID as d_EXAMROOM_SCHOOLID--考场表 学校
      ,d.Name as d_EXAMROOM_Name--考场表 考场名称
      ,d.RoomID as d_EXAMROOM_RoomID--考场表 教室ID
      ,d.ExamID as d_EXAMROOM_ExamID--考场表 考试ID
      ,d.StuCount as d_EXAMROOM_StuCount--考场表 考生容纳人数
      ,e.SCHOOLID as e_KSCC_SCHOOLID--考试场次表 学校
      ,e.ExamID as e_KSCC_ExamID--考试场次表 考试ID
      ,e.Name as e_KSCC_Name--考试场次表 场次名称
      ,e.TypeID as e_KSCC_TypeID--考试场次表 考试时段类型
      ,e.ExamDate as e_KSCC_ExamDate--考试场次表 考试日期
      ,f.SCHOOLID as f_JXJHKCQD_SCHOOLID--教学计划课程清单数据子类表 学校ID
      ,f.JXJHID as f_JXJHKCQD_JXJHID--教学计划课程清单数据子类表 教学计划ID
      ,f.KCH as f_JXJHKCQD_KCH--教学计划课程清单数据子类表 课程号
      ,f.JHBH as f_JXJHKCQD_JHBH--教学计划课程清单数据子类表 计划编号
      ,f.XQID as f_JXJHKCQD_XQID--教学计划课程清单数据子类表 学期ID
      ,f.KCMC as f_JXJHKCQD_KCMC--教学计划课程清单数据子类表 课程名称
      ,f.YXKC as f_JXJHKCQD_YXKC--教学计划课程清单数据子类表 预修课程
      ,f.SFHXKC as f_JXJHKCQD_SFHXKC--教学计划课程清单数据子类表 是否核心（骨干）
      ,[fb].MC as f_JXJHKCQD_SFHXKC_MC--授课方式代码表 名称
      ,f.KCFLM as f_JXJHKCQD_KCFLM--教学计划课程清单数据子类表 课程分类码
      ,[fc].MC as f_JXJHKCQD_KCFLM_MC--课程分类代码 名称
      ,f.KCSXM as f_JXJHKCQD_KCSXM--教学计划课程清单数据子类表 课程属性码
      ,[fd].MC as f_JXJHKCQD_KCSXM_MC--课程属性代码表 名称
      ,[fd].SM as f_JXJHKCQD_KCSXM_SM--课程属性代码表 说明
      ,f.ZXXQ as f_JXJHKCQD_ZXXQ--教学计划课程清单数据子类表 执行学期
      ,f.ZKS as f_JXJHKCQD_ZKS--教学计划课程清单数据子类表 总课时
      ,f.LLKS as f_JXJHKCQD_LLKS--教学计划课程清单数据子类表 理论课时
      ,f.SJKS as f_JXJHKCQD_SJKS--教学计划课程清单数据子类表 实践课时
      ,f.XF as f_JXJHKCQD_XF--教学计划课程清单数据子类表 学分
      ,g.SCHOOLID as g_ZYXX_SCHOOLID--专业基本信息数据表 学校名
      ,g.ZYDM as g_ZYXX_ZYDM--专业基本信息数据表 专业代码
      ,[gb].ZYMLLB as g_ZYXX_ZYDM_ZYMLLB--自建专业代码 专业目录类别
      ,[gb].MC as g_ZYXX_ZYDM_MC--自建专业代码 名称
      ,g.ZYMC as g_ZYXX_ZYMC--专业基本信息数据表 专业名称
      ,g.ZYYWMC as g_ZYXX_ZYYWMC--专业基本信息数据表 专业英文名称
      ,g.XZ as g_ZYXX_XZ--专业基本信息数据表 学制
      ,g.ZYFXMC as g_ZYXX_ZYFXMC--专业基本信息数据表 专业方向名称
      ,g.ZYJC as g_ZYXX_ZYJC--专业基本信息数据表 专业简称
      ,g.JLNY as g_ZYXX_JLNY--专业基本信息数据表 建立年月
      ,g.ZYJSS as g_ZYXX_ZYJSS--专业基本信息数据表 专业教师数
      ,g.KSJGH as g_ZYXX_KSJGH--专业基本信息数据表 开设机构号
      ,g.ZXF as g_ZYXX_ZXF--专业基本信息数据表 总学分
      ,g.SSZYML as g_ZYXX_SSZYML--专业基本信息数据表 所属专业目录
      ,[gc].MC as g_ZYXX_SSZYML_MC--专业目录代码 名称
      ,g.ZYLB as g_ZYXX_ZYLB--专业基本信息数据表 专业类别名称
      ,h.SCHOOLID as h_ZZNJ_SCHOOLID--学校年级数据表 学校名
      ,h.NJMC as h_ZZNJ_NJMC--学校年级数据表 年级名称
      ,h.SSNF as h_ZZNJ_SSNF--学校年级数据表 所属年份
      ,h.NJZT as h_ZZNJ_NJZT--学校年级数据表 年级状态
      ,[hb].MC as h_ZZNJ_NJZT_MC--是否标志代码表 名称

FROM dbo.EDU_ZZJX_32_A02_ZYKCPKJG AS a LEFT OUTER JOIN
      dbo.EDU_ZZJX_32_A01_EXAM AS c ON a.ExamID = c.ID /*考试ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_30_A02_EXAMROOM AS d ON a.EXAMROOMID = d.ID /*考场ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_31_A02_KSCC AS e ON a.CCID = e.ID /*场次ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_03_03_JXJHKCQD AS f ON a.KCQDID = f.ID /*考试科目ID*/ AND a.SCHOOLID = f.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_01_01_ZYXX AS g ON a.ZYXXID = g.ZYBH /*专业ID*/ AND a.SCHOOLID = g.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_02_01_ZZNJ AS h ON a.NJID = h.NJDM /*年级ID*/ AND a.SCHOOLID = h.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS [fb] ON f.SFHXKC = [fb].DM /*是否核心（骨干）*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_KCFL AS [fc] ON f.KCFLM = [fc].DM /*课程分类码*/ LEFT OUTER JOIN
      dbo.EDU_JY_KCSX AS [fd] ON f.KCSXM = [fd].DM /*课程属性码*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZJZY AS [gb] ON g.ZYDM = [gb].DM /*专业代码*/ AND g.SSZYML = [gb].ZYMLLB /*所属专业目录*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZYML AS [gc] ON g.SSZYML = [gc].DM /*所属专业目录*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [hb] ON h.NJZT = [hb].DM /*年级状态*/
GO
