
--课程评分项目表
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_55_A06_KCPFXM_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[FXMID]--父项目ID
      ,a.[XMMC]--项目名称
      ,a.[SFYZXM]--是否有子项目
      ,a.[BL]--比例
      ,a.[SFYXXG]--是否允许修改
      ,a.[XGSX]--修改上限
      ,a.[XGXX]--修改下限
      ,a.[LY]--来源
      ,a.[PLSX]--排列顺序
      ,c.SCHOOLID as c_KCPFXM_SCHOOLID--课程评分项目表 学校
      ,c.FXMID as c_KCPFXM_FXMID--课程评分项目表 父项目ID
      ,c.XMMC as c_KCPFXM_XMMC--课程评分项目表 项目名称
      ,c.SFYZXM as c_KCPFXM_SFYZXM--课程评分项目表 是否有子项目
      ,c.BL as c_KCPFXM_BL--课程评分项目表 比例
      ,c.SFYXXG as c_KCPFXM_SFYXXG--课程评分项目表 是否允许修改
      ,c.XGSX as c_KCPFXM_XGSX--课程评分项目表 修改上限
      ,c.XGXX as c_KCPFXM_XGXX--课程评分项目表 修改下限
      ,c.LY as c_KCPFXM_LY--课程评分项目表 来源
      ,c.PLSX as c_KCPFXM_PLSX--课程评分项目表 排列顺序

FROM dbo.EDU_ZZJX_55_A06_KCPFXM AS a LEFT OUTER JOIN
      dbo.EDU_ZZJX_55_A06_KCPFXM AS c ON a.FXMID = c.ID /*父项目ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/
GO
