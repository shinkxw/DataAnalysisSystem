
--必修课课堂记录结果表
CREATE VIEW [dbo].[VIEW_EDU_ZXJX_53_A25_BXKKTJLJG_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[XKJLID]--选课记录ID
      ,a.[XMID]--项目ID
      ,a.[JG]--结果
      ,c.SCHOOLID as c_XSBXKXKJL_SCHOOLID--学生必修课选课记录表 学校
      ,c.XSID as c_XSBXKXKJL_XSID--学生必修课选课记录表 学生ID
      ,c.BXKJXBID as c_XSBXKXKJL_BXKJXBID--学生必修课选课记录表 必修课教学班ID
      ,d.SCHOOLID as d_BXKKTJLXM_SCHOOLID--必修课课堂记录项目表 学校
      ,d.XMMC as d_BXKKTJLXM_XMMC--必修课课堂记录项目表 项目名称
      ,d.SRLX as d_BXKKTJLXM_SRLX--必修课课堂记录项目表 输入类型
      ,d.MRZ as d_BXKKTJLXM_MRZ--必修课课堂记录项目表 默认值
      ,d.PLSX as d_BXKKTJLXM_PLSX--必修课课堂记录项目表 排列顺序

FROM dbo.EDU_ZXJX_53_A25_BXKKTJLJG AS a LEFT OUTER JOIN
      dbo.EDU_ZXJX_53_A22_XSBXKXKJL AS c ON a.XKJLID = c.ID /*选课记录ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZXJX_53_A24_BXKKTJLXM AS d ON a.XMID = d.ID /*项目ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校*/
GO
