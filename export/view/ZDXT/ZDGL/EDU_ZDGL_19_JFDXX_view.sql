
--交付单详细表
CREATE VIEW [dbo].[VIEW_EDU_ZDGL_19_JFDXX_DISP]
AS
SELECT a.[ID]--编号
      ,a.[JFDID]--交付单ID
      ,a.[JSDXXID]--接收单详细ID
      ,b.JFDH as b_JFD_JFDH--交付单表 交付单号
      ,b.WXSID as b_JFD_WXSID--交付单表 维修商ID
      ,b.JFRQ as b_JFD_JFRQ--交付单表 交付日期
      ,c.XHID as c_JSDXX_XHID--接收单详细表 型号ID
      ,c.XH as c_JSDXX_XH--接收单详细表 序号
      ,c.SN as c_JSDXX_SN--接收单详细表 SN号
      ,c.SFECFX as c_JSDXX_SFECFX--接收单详细表 是否二次返修
      ,[cb].MC as c_JSDXX_SFECFX_MC--是否标志代码表 名称
      ,c.SXDWID as c_JSDXX_SXDWID--接收单详细表 送修单位ID
      ,c.GZXXID as c_JSDXX_GZXXID--接收单详细表 故障信息ID
      ,c.WXXXID as c_JSDXX_WXXXID--接收单详细表 维修信息ID
      ,c.WXRID as c_JSDXX_WXRID--接收单详细表 维修人ID
      ,c.WXRQ as c_JSDXX_WXRQ--接收单详细表 维修日期

FROM dbo.EDU_ZDGL_19_JFDXX AS a LEFT OUTER JOIN
      dbo.EDU_ZDGL_18_JFD AS b ON a.JFDID = b.ID /*交付单ID*/ LEFT OUTER JOIN
      dbo.EDU_ZDGL_17_JSDXX AS c ON a.JSDXXID = c.ID /*接收单详细ID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [cb] ON c.SFECFX = [cb].DM /*是否二次返修*/
GO
