
--顶岗实习友情链接
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_23_A02_DGSXYQLJ_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校名
      ,a.[YQLJLXID]--友情链接类型ID
      ,a.[TITLE]--标题
      ,a.[IMAGEURL]--图片
      ,a.[URL]--链接
      ,c.SCHOOLID as c_DGSXYQLJLX_SCHOOLID--顶岗实习友情链接类型 学校名
      ,c.NAME as c_DGSXYQLJLX_NAME--顶岗实习友情链接类型 类型名

FROM dbo.EDU_ZZJX_23_A02_DGSXYQLJ AS a LEFT OUTER JOIN
      dbo.EDU_ZZJX_23_A01_DGSXYQLJLX AS c ON a.YQLJLXID = c.ID /*友情链接类型ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/
GO
