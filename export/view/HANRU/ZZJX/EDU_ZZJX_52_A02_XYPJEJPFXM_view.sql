
--学业评价二级评分项目表
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_52_A02_XYPJEJPFXM_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[YJXMID]--一级项目ID
      ,a.[XMMC]--项目名称
      ,a.[MRFZ]--默认分值
      ,a.[NFXGFZ]--能否修改分值
      ,a.[FZSX]--分值上限
      ,a.[FZXX]--分值下限
      ,a.[PLSX]--排列顺序
      ,c.SCHOOLID as c_XYPJYJPFXM_SCHOOLID--学业评价一级评分项目表 学校
      ,c.XMMC as c_XYPJYJPFXM_XMMC--学业评价一级评分项目表 项目名称
      ,c.PLSX as c_XYPJYJPFXM_PLSX--学业评价一级评分项目表 排列顺序

FROM dbo.EDU_ZZJX_52_A02_XYPJEJPFXM AS a LEFT OUTER JOIN
      dbo.EDU_ZZJX_52_A01_XYPJYJPFXM AS c ON a.YJXMID = c.ID /*一级项目ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/
GO
