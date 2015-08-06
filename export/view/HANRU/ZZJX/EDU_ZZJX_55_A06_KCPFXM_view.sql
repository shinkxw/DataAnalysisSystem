
--课程评分项目表
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_55_A06_KCPFXM_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[LXID]--类型ID
      ,a.[FXMID]--父项目ID
      ,a.[XMMC]--项目名称
      ,a.[SFYZXM]--是否有子项目
      ,a.[BL]--比例
      ,a.[SFYXXG]--是否允许修改
      ,a.[XGSX]--修改上限
      ,a.[XGXX]--修改下限
      ,a.[LY]--来源
      ,a.[PLSX]--排列顺序
      ,c.SCHOOLID as c_KCPFLX_SCHOOLID--课程评分类型表 学校
      ,c.LXMC as c_KCPFLX_LXMC--课程评分类型表 类型名称
      ,d.SCHOOLID as d_KCPFXM_SCHOOLID--课程评分项目表 学校
      ,d.LXID as d_KCPFXM_LXID--课程评分项目表 类型ID
      ,d.FXMID as d_KCPFXM_FXMID--课程评分项目表 父项目ID
      ,d.XMMC as d_KCPFXM_XMMC--课程评分项目表 项目名称
      ,d.SFYZXM as d_KCPFXM_SFYZXM--课程评分项目表 是否有子项目
      ,d.BL as d_KCPFXM_BL--课程评分项目表 比例
      ,d.SFYXXG as d_KCPFXM_SFYXXG--课程评分项目表 是否允许修改
      ,d.XGSX as d_KCPFXM_XGSX--课程评分项目表 修改上限
      ,d.XGXX as d_KCPFXM_XGXX--课程评分项目表 修改下限
      ,d.LY as d_KCPFXM_LY--课程评分项目表 来源
      ,d.PLSX as d_KCPFXM_PLSX--课程评分项目表 排列顺序

FROM dbo.EDU_ZZJX_55_A06_KCPFXM AS a LEFT OUTER JOIN
      dbo.EDU_ZZJX_55_A05_KCPFLX AS c ON a.LXID = c.ID /*类型ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_55_A06_KCPFXM AS d ON a.FXMID = d.ID /*父项目ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校*/
GO
