
--友情链接
CREATE VIEW [dbo].[VIEW_EDU_XYDT_01_A12_YQLJ_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校名
      ,a.[YQLJLXID]--友情链接类型ID
      ,a.[TITLE]--标题
      ,a.[IMAGEURL]--图片
      ,a.[URL]--链接
      ,c.SCHOOLID as c_YQLJLX_SCHOOLID--友情链接类型 学校名
      ,c.NAME as c_YQLJLX_NAME--友情链接类型 类型名
      ,c.SHOWSTYLE as c_YQLJLX_SHOWSTYLE--友情链接类型 显示方式

FROM dbo.EDU_XYDT_01_A12_YQLJ AS a LEFT OUTER JOIN
      dbo.EDU_XYDT_01_A11_YQLJLX AS c ON a.YQLJLXID = c.ID /*友情链接类型ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/
GO
