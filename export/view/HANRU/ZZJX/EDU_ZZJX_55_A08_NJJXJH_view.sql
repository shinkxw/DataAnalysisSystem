
--年级教学计划表
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_55_A08_NJJXJH_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[XQID]--学期ID
      ,a.[ZYID]--专业ID
      ,a.[NJID]--年级ID
      ,a.[ZYKCKID]--专业课程库ID
      ,a.[XF]--学分
      ,a.[KS]--课时
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
      ,d.XXZ as d_ZYXX_XXZ--专业基本信息数据表 新学制
      ,d.XZXF as d_ZYXX_XZXF--专业基本信息数据表 新总学分
      ,d.PYMB as d_ZYXX_PYMB--专业基本信息数据表 培养目标
      ,d.PYGG as d_ZYXX_PYGG--专业基本信息数据表 培养规格
      ,d.ZKS as d_ZYXX_ZKS--专业基本信息数据表 总课时
      ,d.SFSY as d_ZYXX_SFSY--专业基本信息数据表 是否使用
      ,e.SCHOOLID as e_ZZNJ_SCHOOLID--学校年级数据表 学校名
      ,e.NJMC as e_ZZNJ_NJMC--学校年级数据表 年级名称
      ,e.SSNF as e_ZZNJ_SSNF--学校年级数据表 所属年份
      ,e.NJZT as e_ZZNJ_NJZT--学校年级数据表 年级状态
      ,[eb].MC as e_ZZNJ_NJZT_MC--是否标志代码表 名称
      ,e.PLSX as e_ZZNJ_PLSX--学校年级数据表 排列顺序
      ,f.SCHOOLID as f_ZYKCK_SCHOOLID--专业课程库表 学校
      ,f.ZYID as f_ZYKCK_ZYID--专业课程库表 专业ID
      ,f.FZXXID as f_ZYKCK_FZXXID--专业课程库表 分制信息ID
      ,f.KCPFLXID as f_ZYKCK_KCPFLXID--专业课程库表 课程评分类型ID
      ,f.KCBH as f_ZYKCK_KCBH--专业课程库表 课程名称
      ,f.ZXF as f_ZYKCK_ZXF--专业课程库表 总学分
      ,f.ZXS as f_ZYKCK_ZXS--专业课程库表 总学时
      ,f.KKDW as f_ZYKCK_KKDW--专业课程库表 开课单位
      ,f.KSXS as f_ZYKCK_KSXS--专业课程库表 考试形式
      ,f.SKFSM as f_ZYKCK_SKFSM--专业课程库表 授课方式码
      ,f.JXDG as f_ZYKCK_JXDG--专业课程库表 教学大纲
      ,f.SFSY as f_ZYKCK_SFSY--专业课程库表 是否使用

FROM dbo.EDU_ZZJX_55_A08_NJJXJH AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS c ON a.XQID = c.ID /*学期ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_01_01_ZYXX AS d ON a.ZYID = d.ZYBH /*专业ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_02_01_ZZNJ AS e ON a.NJID = e.NJDM /*年级ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_55_A04_ZYKCK AS f ON a.ZYKCKID = f.ID /*专业课程库ID*/ AND a.SCHOOLID = f.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS [cb] ON c.XQM = [cb].DM /*学期码*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZJZY AS [db] ON d.ZYDM = [db].DM /*专业代码*/ AND d.SSZYML = [db].ZYMLLB /*所属专业目录*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_ZYML AS [dc] ON d.SSZYML = [dc].DM /*所属专业目录*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [eb] ON e.NJZT = [eb].DM /*年级状态*/
GO
