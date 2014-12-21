
--工作内容栏目表
CREATE VIEW [dbo].[VIEW_EDU_ZYFZ_02_A02_GZNRLM_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[LMMC]--栏目名称
      ,a.[LMLBID]--栏目类别ID
      ,a.[SYMBID]--使用模板ID
      ,a.[PLFS]--排列方式
      ,a.[PLSX]--排列顺序
      ,a.[NMLLLM]--匿名浏览栏目
      ,a.[LMLX]--栏目类型
      ,c.SCHOOLID as c_LMLB_SCHOOLID--栏目类别表 学校
      ,c.LMLBMC as c_LMLB_LMLBMC--栏目类别表 栏目类别名称
      ,c.PLSX as c_LMLB_PLSX--栏目类别表 排列顺序
      ,c.FLBID as c_LMLB_FLBID--栏目类别表 父类别ID
      ,d.SCHOOLID as d_GZMB_SCHOOLID--工作模板表 学校
      ,d.MBMC as d_GZMB_MBMC--工作模板表 模板名称
      ,d.MBNR as d_GZMB_MBNR--工作模板表 模板内容

FROM dbo.EDU_ZYFZ_02_A02_GZNRLM AS a LEFT OUTER JOIN
      dbo.EDU_ZYFZ_02_A01_LMLB AS c ON a.LMLBID = c.ID /*栏目类别ID*/ LEFT OUTER JOIN
      dbo.EDU_ZYFZ_01_A04_GZMB AS d ON a.SYMBID = d.ID /*使用模板ID*/
GO
