
--手册项目表
CREATE VIEW [dbo].[VIEW_EDU_ZXJX_54_A02_SCXM_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[XMMC]--项目名称
      ,a.[SFQFXQ]--是否区分学期
      ,a.[PLSX]--排列顺序
      ,a.[SCNRMBID]--手册内容模板ID
      ,c.SCHOOLID as c_SCNRMB_SCHOOLID--手册内容模板表 学校
      ,c.MC as c_SCNRMB_MC--手册内容模板表 名称
      ,c.NR as c_SCNRMB_NR--手册内容模板表 内容

FROM dbo.EDU_ZXJX_54_A02_SCXM AS a LEFT OUTER JOIN
      dbo.EDU_ZXJX_54_A01_SCNRMB AS c ON a.SCNRMBID = c.ID /*手册内容模板ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/
GO
