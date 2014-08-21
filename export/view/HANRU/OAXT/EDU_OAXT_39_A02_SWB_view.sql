
--收文表
CREATE VIEW [dbo].[VIEW_EDU_OAXT_39_A02_SWB_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[LBID]--类别ID
      ,a.[LWDW]--来文单位
      ,a.[LWRQ]--来文日期
      ,a.[LWWH]--来文文号
      ,a.[WJBT]--文件标题
      ,a.[WJNR]--文件内容
      ,a.[PSYJ]--批示意见
      ,a.[SFSH]--是否收回
      ,a.[XFWDLX]--下发文档类型
      ,c.SCHOOLID as c_GWLB_SCHOOLID--公文类别表 学校ID
      ,c.LBMC as c_GWLB_LBMC--公文类别表 类别名称
      ,d.MC as d_SFBZ_MC--是否标志代码表 名称

FROM dbo.EDU_OAXT_39_A02_SWB AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_39_A01_GWLB AS c ON a.LBID = c.ID /*类别ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS d ON a.SFSH = d.DM /*是否收回*/
GO
