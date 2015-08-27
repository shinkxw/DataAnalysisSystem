
--手册内容表
CREATE VIEW [dbo].[VIEW_EDU_ZXJX_54_A03_SCNR_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[BJID]--班级ID
      ,a.[XMID]--项目ID
      ,a.[XNID]--学年ID
      ,a.[XQID]--学期ID
      ,a.[NR]--内容
      ,c.SCHOOLID as c_BJ_SCHOOLID--班级数据类表 学校名
      ,c.NJ as c_BJ_NJ--班级数据类表 年级号
      ,c.BJ as c_BJ_BJ--班级数据类表 班级名称
      ,c.JBNY as c_BJ_JBNY--班级数据类表 建班年月
      ,c.BZRGH as c_BJ_BZRGH--班级数据类表 班主任工号
      ,c.BZXH as c_BJ_BZXH--班级数据类表 班长学号
      ,c.BJRYCH as c_BJ_BJRYCH--班级数据类表 班级荣誉称号
      ,c.XZ as c_BJ_XZ--班级数据类表 学制
      ,c.BJLXM as c_BJ_BJLXM--班级数据类表 班级类型码
      ,[cb].MC as c_BJ_BJLXM_MC--中小学班级类型代码表 名称
      ,c.WLLX as c_BJ_WLLX--班级数据类表 文理类型
      ,c.BYRQ as c_BJ_BYRQ--班级数据类表 毕业日期
      ,c.SFSSMZSYJXB as c_BJ_SFSSMZSYJXB--班级数据类表 是否少数民族双语教学班
      ,[cc].MC as c_BJ_SFSSMZSYJXB_MC--是否标志代码表 名称
      ,c.SYJXMSM as c_BJ_SYJXMSM--班级数据类表 双语教学模式码
      ,[cd].MC as c_BJ_SYJXMSM_MC--少数民族双语教学模式代码表 名称
      ,[cd].SM as c_BJ_SYJXMSM_SM--少数民族双语教学模式代码表 说明
      ,c.BZRID as c_BJ_BZRID--班级数据类表 班主任ID
      ,c.ZT as c_BJ_ZT--班级数据类表 状态
      ,c.PLSX as c_BJ_PLSX--班级数据类表 排列顺序
      ,c.BJLBID as c_BJ_BJLBID--班级数据类表 班级类别ID
      ,c.FBZRID as c_BJ_FBZRID--班级数据类表 副班主任ID
      ,d.SCHOOLID as d_SCXM_SCHOOLID--手册项目表 学校
      ,d.XMMC as d_SCXM_XMMC--手册项目表 项目名称
      ,d.SFQFXQ as d_SCXM_SFQFXQ--手册项目表 是否区分学期
      ,d.PLSX as d_SCXM_PLSX--手册项目表 排列顺序
      ,d.SCNRMBID as d_SCXM_SCNRMBID--手册项目表 手册内容模板ID
      ,e.SCHOOLID as e_XN_SCHOOLID--学年表 学校名
      ,e.XN as e_XN_XN--学年表 学年
      ,f.SCHOOLID as f_XQ_SCHOOLID--学期数据表 学校名
      ,f.XNID as f_XQ_XNID--学期数据表 学年
      ,f.XQM as f_XQ_XQM--学期数据表 学期码
      ,[fb].MC as f_XQ_XQM_MC--学期代码表 名称
      ,f.XQMC as f_XQ_XQMC--学期数据表 学期名称
      ,f.XQKSRQ as f_XQ_XQKSRQ--学期数据表 学期开始日期
      ,f.XQJSRQ as f_XQ_XQJSRQ--学期数据表 学期结束日期

FROM dbo.EDU_ZXJX_54_A03_SCNR AS a LEFT OUTER JOIN
      dbo.EDU_ZXXX_03_01_BJ AS c ON a.BJID = c.BH /*班级ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZXJX_54_A02_SCXM AS d ON a.XMID = d.ID /*项目ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_SYS_01_XN AS e ON a.XNID = e.ID /*学年ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS f ON a.XQID = f.ID /*学期ID*/ AND a.SCHOOLID = f.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXBJLX AS [cb] ON c.BJLXM = [cb].DM /*班级类型码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [cc] ON c.SFSSMZSYJXB = [cc].DM /*是否少数民族双语教学班*/ LEFT OUTER JOIN
      dbo.EDU_JY_SSMZSYJXMS AS [cd] ON c.SYJXMSM = [cd].DM /*双语教学模式码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS [fb] ON f.XQM = [fb].DM /*学期码*/
GO
