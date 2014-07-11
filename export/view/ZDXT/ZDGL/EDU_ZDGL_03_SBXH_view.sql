
--设备型号配置表
CREATE VIEW [dbo].[VIEW_EDU_ZDGL_03_SBXH_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SBLXID]--设备类型ID
      ,a.[SCCJID]--生产厂家ID
      ,a.[XHMC]--型号名称
      ,a.[WLMS]--物料描述
      ,a.[XHMCPY]--型号名称拼音
      ,b.LXMC as b_SBLX_LXMC--设备类型配置表 类型名称
      ,b.ZT as b_SBLX_ZT--设备类型配置表 状态
      ,c.CJMC as c_SCCJ_CJMC--生产厂家信息表 厂家名称
      ,c.ZT as c_SCCJ_ZT--生产厂家信息表 状态

FROM dbo.EDU_ZDGL_03_SBXH AS a LEFT OUTER JOIN
      dbo.EDU_ZDGL_01_SBLX AS b ON a.SBLXID = b.ID /*设备类型ID*/ LEFT OUTER JOIN
      dbo.EDU_ZDGL_02_SCCJ AS c ON a.SCCJID = c.ID /*生产厂家ID*/
GO
