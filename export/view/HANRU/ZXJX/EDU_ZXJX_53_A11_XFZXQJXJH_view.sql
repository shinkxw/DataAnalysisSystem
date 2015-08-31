
--学分制学期教学计划表
CREATE VIEW [dbo].[VIEW_EDU_ZXJX_53_A11_XFZXQJXJH_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校ID
      ,a.[XQID]--学期ID
      ,a.[NJID]--年级ID
      ,a.[BJLBID]--班级类别ID
      ,a.[BJID]--班级ID
      ,a.[KCLX]--课程类型
      ,c.SCHOOLID as c_XQ_SCHOOLID--学期数据表 学校名
      ,c.XNID as c_XQ_XNID--学期数据表 学年
      ,c.XQM as c_XQ_XQM--学期数据表 学期码
      ,[cb].MC as c_XQ_XQM_MC--学期代码表 名称
      ,c.XQMC as c_XQ_XQMC--学期数据表 学期名称
      ,c.XQKSRQ as c_XQ_XQKSRQ--学期数据表 学期开始日期
      ,c.XQJSRQ as c_XQ_XQJSRQ--学期数据表 学期结束日期
      ,c.BaseProjectInfoID as c_XQ_BaseProjectInfoID--学期数据表 表BaseProjectInfo外键
      ,d.SCHOOLID as d_NJ_SCHOOLID--年级数据类表 学校名
      ,d.NJMC as d_NJ_NJMC--年级数据类表 年级名称
      ,d.ZT as d_NJ_ZT--年级数据类表 状态
      ,d.PLSX as d_NJ_PLSX--年级数据类表 排列顺序
      ,e.SCHOOLID as e_BJLB_SCHOOLID--班级类别表 学校
      ,e.LBMC as e_BJLB_LBMC--班级类别表 类别名称
      ,f.SCHOOLID as f_BJ_SCHOOLID--班级数据类表 学校名
      ,f.NJ as f_BJ_NJ--班级数据类表 年级号
      ,f.BJ as f_BJ_BJ--班级数据类表 班级名称
      ,f.JBNY as f_BJ_JBNY--班级数据类表 建班年月
      ,f.BZRGH as f_BJ_BZRGH--班级数据类表 班主任工号
      ,f.BZXH as f_BJ_BZXH--班级数据类表 班长学号
      ,f.BJRYCH as f_BJ_BJRYCH--班级数据类表 班级荣誉称号
      ,f.XZ as f_BJ_XZ--班级数据类表 学制
      ,f.BJLXM as f_BJ_BJLXM--班级数据类表 班级类型码
      ,[fb].MC as f_BJ_BJLXM_MC--中小学班级类型代码表 名称
      ,f.WLLX as f_BJ_WLLX--班级数据类表 文理类型
      ,f.BYRQ as f_BJ_BYRQ--班级数据类表 毕业日期
      ,f.SFSSMZSYJXB as f_BJ_SFSSMZSYJXB--班级数据类表 是否少数民族双语教学班
      ,[fc].MC as f_BJ_SFSSMZSYJXB_MC--是否标志代码表 名称
      ,f.SYJXMSM as f_BJ_SYJXMSM--班级数据类表 双语教学模式码
      ,[fd].MC as f_BJ_SYJXMSM_MC--少数民族双语教学模式代码表 名称
      ,[fd].SM as f_BJ_SYJXMSM_SM--少数民族双语教学模式代码表 说明
      ,f.BZRID as f_BJ_BZRID--班级数据类表 班主任ID
      ,f.ZT as f_BJ_ZT--班级数据类表 状态
      ,f.PLSX as f_BJ_PLSX--班级数据类表 排列顺序
      ,f.BJLBID as f_BJ_BJLBID--班级数据类表 班级类别ID
      ,f.FBZRID as f_BJ_FBZRID--班级数据类表 副班主任ID

FROM dbo.EDU_ZXJX_53_A11_XFZXQJXJH AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS c ON a.XQID = c.ID /*学期ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_02_01_NJ AS d ON a.NJID = d.NJ /*年级ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_03_A01_BJLB AS e ON a.BJLBID = e.ID /*班级类别ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_03_01_BJ AS f ON a.BJID = f.BH /*班级ID*/ AND a.SCHOOLID = f.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS [cb] ON c.XQM = [cb].DM /*学期码*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXBJLX AS [fb] ON f.BJLXM = [fb].DM /*班级类型码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [fc] ON f.SFSSMZSYJXB = [fc].DM /*是否少数民族双语教学班*/ LEFT OUTER JOIN
      dbo.EDU_JY_SSMZSYJXMS AS [fd] ON f.SYJXMSM = [fd].DM /*双语教学模式码*/
GO
