
--接收单详细表
CREATE VIEW [dbo].[VIEW_EDU_ZDGL_17_JSDXX_DISP]
AS
SELECT a.[ID]--编号
      ,a.[XHID]--型号ID
      ,a.[XH]--序号
      ,a.[SN]--SN号
      ,a.[SFECFX]--是否二次返修
      ,a.[SXDWID]--送修单位ID
      ,a.[GZXXID]--故障信息ID
      ,a.[WXXXID]--维修信息ID
      ,a.[WXRID]--维修人ID
      ,a.[WXRQ]--维修日期
      ,b.XX as b_SBXH_XX--设备型号表 型号
      ,b.LXID as b_SBXH_LXID--设备型号表 类型ID
      ,b.SCCJID as b_SBXH_SCCJID--设备型号表 生产厂家ID
      ,b.PY as b_SBXH_PY--设备型号表 拼音
      ,b.MS as b_SBXH_MS--设备型号表 描述
      ,b.JG as b_SBXH_JG--设备型号表 价格
      ,c.MC as c_SFBZ_MC--是否标志代码表 名称
      ,d.KHDM as d_KH_KHDM--客户表 客户代码
      ,d.SZQYID as d_KH_SZQYID--客户表 所在区域ID
      ,d.SSGSID as d_KH_SSGSID--客户表 所属公司ID
      ,d.DWMC as d_KH_DWMC--客户表 单位名称
      ,d.PY as d_KH_PY--客户表 拼音
      ,d.KHDZ as d_KH_KHDZ--客户表 客户地址
      ,d.LXR as d_KH_LXR--客户表 联系人
      ,d.DH as d_KH_DH--客户表 电话
      ,e.GZDM as e_GZDM_GZDM--故障代码表 故障代码
      ,e.GZXX as e_GZDM_GZXX--故障代码表 故障现象
      ,f.WXDM as f_WXDM_WXDM--维修代码表 维修代码
      ,f.WXNR as f_WXDM_WXNR--维修代码表 维修内容
      ,f.WXJG as f_WXDM_WXJG--维修代码表 维修结果
      ,g.GH as g_WXR_GH--维修人表 工号
      ,g.XM as g_WXR_XM--维修人表 姓名
      ,g.LXDH as g_WXR_LXDH--维修人表 联系电话

FROM dbo.EDU_ZDGL_17_JSDXX AS a LEFT OUTER JOIN
      dbo.EDU_ZDGL_5_SBXH AS b ON a.XHID = b.ID /*型号ID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS c ON a.SFECFX = c.DM /*是否二次返修*/ LEFT OUTER JOIN
      dbo.EDU_ZDGL_8_KH AS d ON a.SXDWID = d.ID /*送修单位ID*/ LEFT OUTER JOIN
      dbo.EDU_ZDGL_1_GZDM AS e ON a.GZXXID = e.ID /*故障信息ID*/ LEFT OUTER JOIN
      dbo.EDU_ZDGL_2_WXDM AS f ON a.WXXXID = f.ID /*维修信息ID*/ LEFT OUTER JOIN
      dbo.EDU_ZDGL_10_WXR AS g ON a.WXRID = g.ID /*维修人ID*/
GO
