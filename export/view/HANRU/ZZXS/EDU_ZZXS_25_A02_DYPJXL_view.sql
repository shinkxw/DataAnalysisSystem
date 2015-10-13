
--德育评价小类表
CREATE VIEW [dbo].[VIEW_EDU_ZZXS_25_A02_DYPJXL_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[PFDXLX]--评分对象类型
      ,a.[DLID]--大类ID
      ,a.[MC]--名称
      ,a.[MRFZ]--默认分值
      ,a.[NFXGFZ]--能否修改分值
      ,a.[FZSX]--分值上限
      ,a.[FZXX]--分值下限
      ,a.[PLSX]--排列顺序
      ,c.SCHOOLID as c_DYPJDL_SCHOOLID--德育评价大类表 学校
      ,c.PFDXLX as c_DYPJDL_PFDXLX--德育评价大类表 评分对象类型
      ,c.MC as c_DYPJDL_MC--德育评价大类表 名称
      ,c.PLSX as c_DYPJDL_PLSX--德育评价大类表 排列顺序

FROM dbo.EDU_ZZXS_25_A02_DYPJXL AS a LEFT OUTER JOIN
      dbo.EDU_ZZXS_25_A01_DYPJDL AS c ON a.DLID = c.ID /*大类ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/
GO
