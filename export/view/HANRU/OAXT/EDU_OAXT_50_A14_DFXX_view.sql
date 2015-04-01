
--打分选项表
CREATE VIEW [dbo].[VIEW_EDU_OAXT_50_A14_DFXX_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校ID
      ,a.[XMID]--项目ID
      ,a.[DFFSID]--打分方式ID
      ,a.[XXMC]--选项名称
      ,a.[XXFZ]--选项分值
      ,a.[PLSX]--排列顺序
      ,c.SCHOOLID as c_DFXM_SCHOOLID--打分项目表 学校ID
      ,c.XMMC as c_DFXM_XMMC--打分项目表 项目名称
      ,c.APPID as c_DFXM_APPID--打分项目表 所在应用ID
      ,d.SCHOOLID as d_DFFS_SCHOOLID--打分方式表 学校ID
      ,d.XMID as d_DFFS_XMID--打分方式表 项目ID
      ,d.DFLX as d_DFFS_DFLX--打分方式表 打分类型
      ,d.ZDZ as d_DFFS_ZDZ--打分方式表 最大值
      ,d.ZXZ as d_DFFS_ZXZ--打分方式表 最小值
      ,d.MRZ as d_DFFS_MRZ--打分方式表 默认值

FROM dbo.EDU_OAXT_50_A14_DFXX AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_50_A01_DFXM AS c ON a.XMID = c.ID /*项目ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_50_A13_DFFS AS d ON a.DFFSID = d.ID /*打分方式ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校ID*/ AND a.XMID = d.XMID /*项目ID*/
GO
