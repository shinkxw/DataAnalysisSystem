
--专业课程排考结果表
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_32_A02_ZYKCPKJG_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[ExamID]--考试ID
      ,a.[EXAMROOMID]--考场ID
      ,a.[CCID]--场次ID
      ,a.[KCQDID]--考试科目ID
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
      ,fb.MC as f_JXJHKCQD_SFHXKC_MC--授课方式代码表 名称
      ,f.KCFLM as f_JXJHKCQD_KCFLM--教学计划课程清单数据子类表 课程分类码
      ,fc.MC as f_JXJHKCQD_KCFLM_MC--课程分类代码 名称
      ,f.KCSXM as f_JXJHKCQD_KCSXM--教学计划课程清单数据子类表 课程属性码
      ,fd.MC as f_JXJHKCQD_KCSXM_MC--课程属性代码表 名称
      ,fd.SM as f_JXJHKCQD_KCSXM_SM--课程属性代码表 说明
      ,f.ZXXQ as f_JXJHKCQD_ZXXQ--教学计划课程清单数据子类表 执行学期
      ,f.ZKS as f_JXJHKCQD_ZKS--教学计划课程清单数据子类表 总课时
      ,f.LLKS as f_JXJHKCQD_LLKS--教学计划课程清单数据子类表 理论课时
      ,f.SJKS as f_JXJHKCQD_SJKS--教学计划课程清单数据子类表 实践课时
      ,f.XF as f_JXJHKCQD_XF--教学计划课程清单数据子类表 学分

FROM dbo.EDU_ZZJX_32_A02_ZYKCPKJG AS a LEFT OUTER JOIN
      dbo.EDU_ZZJX_32_A01_EXAM AS c ON a.ExamID = c.ID /*考试ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_30_A02_EXAMROOM AS d ON a.EXAMROOMID = d.ID /*考场ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_31_A02_KSCC AS e ON a.CCID = e.ID /*场次ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_03_03_JXJHKCQD AS f ON a.KCQDID = f.ID /*考试科目ID*/ AND a.SCHOOLID = f.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS fb ON f.SFHXKC = fb.DM /*是否核心（骨干）*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_KCFL AS fc ON f.KCFLM = fc.DM /*课程分类码*/ LEFT OUTER JOIN
      dbo.EDU_JY_KCSX AS fd ON f.KCSXM = fd.DM /*课程属性码*/
GO
