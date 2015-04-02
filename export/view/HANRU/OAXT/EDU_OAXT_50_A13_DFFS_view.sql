
--打分方式表
CREATE VIEW [dbo].[VIEW_EDU_OAXT_50_A13_DFFS_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校ID
      ,a.[XMID]--项目ID
      ,a.[DFFSMC]--打分方式名称
      ,a.[DFLX]--打分类型
      ,a.[ZDZ]--最大值
      ,a.[ZXZ]--最小值
      ,a.[MRZ]--默认值
      ,c.SCHOOLID as c_DFXM_SCHOOLID--打分项目表 学校ID
      ,c.XMMC as c_DFXM_XMMC--打分项目表 项目名称
      ,c.APPID as c_DFXM_APPID--打分项目表 所在应用ID

FROM dbo.EDU_OAXT_50_A13_DFFS AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_50_A01_DFXM AS c ON a.XMID = c.ID /*项目ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/
GO
