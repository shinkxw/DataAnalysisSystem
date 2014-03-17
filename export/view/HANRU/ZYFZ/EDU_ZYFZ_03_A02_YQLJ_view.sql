
--友情链接表
CREATE VIEW [dbo].[VIEW_EDU_ZYFZ_03_A02_YQLJ_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[LJLXID]--链接类型ID
      ,a.[LJMC]--链接名称
      ,a.[LJTP]--链接图片
      ,a.[LJDZ]--链接地址
      ,c.SCHOOLID as c_YQLJLX_SCHOOLID--友情链接类型表 学校
      ,c.LXMC as c_YQLJLX_LXMC--友情链接类型表 类型名称
      ,c.XSFS as c_YQLJLX_XSFS--友情链接类型表 显示方式

FROM dbo.EDU_ZYFZ_03_A02_YQLJ AS a LEFT OUTER JOIN
      dbo.EDU_ZYFZ_03_A01_YQLJLX AS c ON a.LJLXID = c.ID /*链接类型ID*/
GO
