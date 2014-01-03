
--顶岗实习门户栏目
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_23_A03_DGSXMHLM_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[LMMC]--栏目名称
      ,a.[LMLJ]--栏目链接
      ,a.[CJ]--层级
      ,a.[FLMID]--父栏目ID
      ,a.[SFQY]--是否启用
      ,a.[PLSX]--排列顺序
      ,c.SCHOOLID as c_DGSXMHLM_SCHOOLID--顶岗实习门户栏目 学校
      ,c.LMMC as c_DGSXMHLM_LMMC--顶岗实习门户栏目 栏目名称
      ,c.LMLJ as c_DGSXMHLM_LMLJ--顶岗实习门户栏目 栏目链接
      ,c.CJ as c_DGSXMHLM_CJ--顶岗实习门户栏目 层级
      ,c.FLMID as c_DGSXMHLM_FLMID--顶岗实习门户栏目 父栏目ID
      ,c.SFQY as c_DGSXMHLM_SFQY--顶岗实习门户栏目 是否启用
      ,c.PLSX as c_DGSXMHLM_PLSX--顶岗实习门户栏目 排列顺序

FROM dbo.EDU_ZZJX_23_A03_DGSXMHLM AS a LEFT OUTER JOIN
      dbo.EDU_ZZJX_23_A03_DGSXMHLM AS c ON a.FLMID = c.ID /*父栏目ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/
GO
