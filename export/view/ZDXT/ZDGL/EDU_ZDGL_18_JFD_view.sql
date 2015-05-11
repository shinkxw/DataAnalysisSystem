
--交付单表
CREATE VIEW [dbo].[VIEW_EDU_ZDGL_18_JFD_DISP]
AS
SELECT a.[ID]--编号
      ,a.[JFDH]--交付单号
      ,a.[WXSID]--维修商ID
      ,a.[JFRQ]--交付日期
      ,b.WXSDM as b_WXS_WXSDM--维修商表 维修商代码
      ,b.WXSMC as b_WXS_WXSMC--维修商表 维修商名称
      ,b.LXR as b_WXS_LXR--维修商表 联系人
      ,b.LXDM as b_WXS_LXDM--维修商表 联系代码
      ,b.DZ as b_WXS_DZ--维修商表 地址

FROM dbo.EDU_ZDGL_18_JFD AS a LEFT OUTER JOIN
      dbo.EDU_ZDGL_09_WXS AS b ON a.WXSID = b.ID /*维修商ID*/
GO
