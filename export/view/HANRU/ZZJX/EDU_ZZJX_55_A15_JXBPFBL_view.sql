
--教学班评分比例表
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_55_A15_JXBPFBL_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[JXJHID]--教学计划表ID
      ,a.[KCPFXMID]--课程评分项目表ID
      ,a.[BL]--比例
      ,a.[KCLX]--课程类型
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

FROM dbo.EDU_ZZJX_55_A15_JXBPFBL AS a LEFT OUTER JOIN
      dbo.EDU_ZZJX_55_A06_KCPFXM AS c ON a.KCPFXMID = c.ID /*课程评分项目表ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/
GO
