
--学生成绩类型表
CREATE VIEW [dbo].[VIEW_EDU_ZZXS_06_02_XSCJLX_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校ID
      ,a.[LXMC]--类型名称
      ,a.[QZ]--权重
      ,a.[KCQDID]--课程清单ID
      ,c.SCHOOLID as c_JXJHKCQD_SCHOOLID--教学计划课程清单数据子类表 学校ID
      ,c.JXJHID as c_JXJHKCQD_JXJHID--教学计划课程清单数据子类表 教学计划ID
      ,c.KCH as c_JXJHKCQD_KCH--教学计划课程清单数据子类表 课程号
      ,c.JHBH as c_JXJHKCQD_JHBH--教学计划课程清单数据子类表 计划编号
      ,c.XQID as c_JXJHKCQD_XQID--教学计划课程清单数据子类表 学期ID
      ,c.KCMC as c_JXJHKCQD_KCMC--教学计划课程清单数据子类表 课程名称
      ,c.YXKC as c_JXJHKCQD_YXKC--教学计划课程清单数据子类表 预修课程
      ,c.SFHXKC as c_JXJHKCQD_SFHXKC--教学计划课程清单数据子类表 是否核心（骨干）
      ,[cb].MC as c_JXJHKCQD_SFHXKC_MC--授课方式代码表 名称
      ,c.KCFLM as c_JXJHKCQD_KCFLM--教学计划课程清单数据子类表 课程分类码
      ,[cc].MC as c_JXJHKCQD_KCFLM_MC--课程分类代码 名称
      ,c.KCSXM as c_JXJHKCQD_KCSXM--教学计划课程清单数据子类表 课程属性码
      ,[cd].MC as c_JXJHKCQD_KCSXM_MC--课程属性代码表 名称
      ,[cd].SM as c_JXJHKCQD_KCSXM_SM--课程属性代码表 说明
      ,c.ZXXQ as c_JXJHKCQD_ZXXQ--教学计划课程清单数据子类表 执行学期
      ,c.ZKS as c_JXJHKCQD_ZKS--教学计划课程清单数据子类表 总课时
      ,c.LLKS as c_JXJHKCQD_LLKS--教学计划课程清单数据子类表 理论课时
      ,c.SJKS as c_JXJHKCQD_SJKS--教学计划课程清单数据子类表 实践课时
      ,c.XF as c_JXJHKCQD_XF--教学计划课程清单数据子类表 学分
      ,c.XFRDHGX as c_JXJHKCQD_XFRDHGX--教学计划课程清单数据子类表 学分认定合格线

FROM dbo.EDU_ZZXS_06_02_XSCJLX AS a LEFT OUTER JOIN
      dbo.EDU_ZZJX_03_03_JXJHKCQD AS c ON a.KCQDID = c.ID /*课程清单ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS [cb] ON c.SFHXKC = [cb].DM /*是否核心（骨干）*/ LEFT OUTER JOIN
      dbo.EDU_ZZ_KCFL AS [cc] ON c.KCFLM = [cc].DM /*课程分类码*/ LEFT OUTER JOIN
      dbo.EDU_JY_KCSX AS [cd] ON c.KCSXM = [cd].DM /*课程属性码*/
GO
