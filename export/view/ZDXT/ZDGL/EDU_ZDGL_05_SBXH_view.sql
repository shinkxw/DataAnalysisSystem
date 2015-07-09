
--设备型号表
CREATE VIEW [dbo].[VIEW_EDU_ZDGL_05_SBXH_DISP]
AS
SELECT a.[ID]--编号
      ,a.[XX]--型号
      ,a.[LXID]--类型ID
      ,a.[SCCJID]--生产厂家ID
      ,a.[PY]--拼音
      ,a.[MS]--描述
      ,a.[JG]--价格
      ,a.[XTLX]--系统类型
      ,b.LXMC as b_SBXHLX_LXMC--设备型号类型表 类型名称
      ,b.LXJC as b_SBXHLX_LXJC--设备型号类型表 类型简称
      ,c.CJM as c_SCCJ_CJM--生产厂家表 厂家名
      ,c.CJDZ as c_SCCJ_CJDZ--生产厂家表 厂家地址
      ,c.LXR as c_SCCJ_LXR--生产厂家表 联系人
      ,c.LXDH as c_SCCJ_LXDH--生产厂家表 联系电话

FROM dbo.EDU_ZDGL_05_SBXH AS a LEFT OUTER JOIN
      dbo.EDU_ZDGL_03_SBXHLX AS b ON a.LXID = b.ID /*类型ID*/ LEFT OUTER JOIN
      dbo.EDU_ZDGL_04_SCCJ AS c ON a.SCCJID = c.ID /*生产厂家ID*/
GO
