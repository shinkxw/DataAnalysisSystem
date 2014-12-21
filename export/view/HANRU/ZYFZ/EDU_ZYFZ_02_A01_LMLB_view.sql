
--栏目类别表
CREATE VIEW [dbo].[VIEW_EDU_ZYFZ_02_A01_LMLB_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[LMLBMC]--栏目类别名称
      ,a.[PLSX]--排列顺序
      ,a.[FLBID]--父类别ID
      ,c.SCHOOLID as c_LMLB_SCHOOLID--栏目类别表 学校
      ,c.LMLBMC as c_LMLB_LMLBMC--栏目类别表 栏目类别名称
      ,c.PLSX as c_LMLB_PLSX--栏目类别表 排列顺序
      ,c.FLBID as c_LMLB_FLBID--栏目类别表 父类别ID

FROM dbo.EDU_ZYFZ_02_A01_LMLB AS a LEFT OUTER JOIN
      dbo.EDU_ZYFZ_02_A01_LMLB AS c ON a.FLBID = c.ID /*父类别ID*/
GO
