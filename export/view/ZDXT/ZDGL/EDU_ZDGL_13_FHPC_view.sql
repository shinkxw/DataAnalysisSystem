
--发货批次表
CREATE VIEW [dbo].[VIEW_EDU_ZDGL_13_FHPC_DISP]
AS
SELECT a.[ID]--编号
      ,a.[FHPCH]--发货批次号
      ,a.[FHR]--发货人
      ,a.[WLGSID]--物流公司ID
      ,a.[ZXS]--总箱数
      ,a.[FHSJ]--发货时间
      ,b.GSDM as b_WLGS_GSDM--物流公司表 公司代码
      ,b.GSM as b_WLGS_GSM--物流公司表 公司名
      ,b.GSLXR as b_WLGS_GSLXR--物流公司表 公司联系人
      ,b.LXDH as b_WLGS_LXDH--物流公司表 联系电话

FROM dbo.EDU_ZDGL_13_FHPC AS a LEFT OUTER JOIN
      dbo.EDU_ZDGL_15_WLGS AS b ON a.WLGSID = b.ID /*物流公司ID*/
GO
