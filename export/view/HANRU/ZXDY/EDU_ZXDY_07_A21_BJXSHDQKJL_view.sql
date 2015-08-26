
--班级学生活动情况记录表
CREATE VIEW [dbo].[VIEW_EDU_ZXDY_07_A21_BJXSHDQKJL_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校ID
      ,a.[HDBJ]--活动班级
      ,a.[SJ]--时间
      ,a.[DD]--地点
      ,a.[CYRS]--参与人数
      ,a.[HDXS]--活动形式
      ,a.[HDZT]--活动主题
      ,a.[HDGCJL]--活动过程记录（包含图片）
      ,a.[HDHJ]--活动后记（班主任点评）
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

FROM dbo.EDU_ZXDY_07_A21_BJXSHDQKJL AS a LEFT OUTER JOIN
      dbo.EDU_ZXXX_03_01_BJ AS c ON a.HDBJ = c.BH /*活动班级*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXBJLX AS [cb] ON c.BJLXM = [cb].DM /*班级类型码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [cc] ON c.SFSSMZSYJXB = [cc].DM /*是否少数民族双语教学班*/ LEFT OUTER JOIN
      dbo.EDU_JY_SSMZSYJXMS AS [cd] ON c.SYJXMSM = [cd].DM /*双语教学模式码*/
GO
