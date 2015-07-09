
--交付单表
CREATE VIEW [dbo].[VIEW_EDU_ZDGL_18_JFD_DISP]
AS
SELECT a.[ID]--编号
      ,a.[JFDH]--交付单号
      ,a.[WXSID]--维修商ID
      ,a.[JFRQ]--交付日期
      ,a.[SXDWID]--送修单位ID
      ,b.WXSDM as b_WXS_WXSDM--维修商表 维修商代码
      ,b.WXSMC as b_WXS_WXSMC--维修商表 维修商名称
      ,b.LXR as b_WXS_LXR--维修商表 联系人
      ,b.LXDM as b_WXS_LXDM--维修商表 联系代码
      ,b.DZ as b_WXS_DZ--维修商表 地址
      ,c.KHDM as c_KH_KHDM--客户表 客户代码
      ,c.SZQYID as c_KH_SZQYID--客户表 所在区域ID
      ,c.SSGSID as c_KH_SSGSID--客户表 所属公司ID
      ,c.DWMC as c_KH_DWMC--客户表 单位名称
      ,c.PY as c_KH_PY--客户表 拼音
      ,c.KHDZ as c_KH_KHDZ--客户表 客户地址
      ,c.LXR as c_KH_LXR--客户表 联系人
      ,c.DH as c_KH_DH--客户表 电话
      ,c.XTLX as c_KH_XTLX--客户表 系统类型

FROM dbo.EDU_ZDGL_18_JFD AS a LEFT OUTER JOIN
      dbo.EDU_ZDGL_09_WXS AS b ON a.WXSID = b.ID /*维修商ID*/ LEFT OUTER JOIN
      dbo.EDU_ZDGL_08_KH AS c ON a.SXDWID = c.ID /*送修单位ID*/
GO
