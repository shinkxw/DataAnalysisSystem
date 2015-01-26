
--导师制学生信息栏目表
CREATE VIEW [dbo].[VIEW_EDU_ZXXS_57_A31_DSZXSXXLM_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[FLMID]--父栏目ID
      ,a.[LMMC]--栏目名称
      ,a.[LMLX]--栏目类型
      ,a.[PLSX]--排列顺序
      ,c.SCHOOLID as c_DSZXSXXLM_SCHOOLID--导师制学生信息栏目表 学校
      ,c.FLMID as c_DSZXSXXLM_FLMID--导师制学生信息栏目表 父栏目ID
      ,c.LMMC as c_DSZXSXXLM_LMMC--导师制学生信息栏目表 栏目名称
      ,c.LMLX as c_DSZXSXXLM_LMLX--导师制学生信息栏目表 栏目类型
      ,c.PLSX as c_DSZXSXXLM_PLSX--导师制学生信息栏目表 排列顺序

FROM dbo.EDU_ZXXS_57_A31_DSZXSXXLM AS a LEFT OUTER JOIN
      dbo.EDU_ZXXS_57_A31_DSZXSXXLM AS c ON a.FLMID = c.ID /*父栏目ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/
GO
