
--发货批次表
CREATE VIEW [dbo].[VIEW_EDU_ZDGL_13_FHPC_DISP]
AS
SELECT a.[ID]--编号
      ,a.[FHPCH]--发货批次号
      ,a.[FHR]--发货人
      ,a.[WLGSID]--物流公司ID
      ,a.[ZXS]--总箱数
      ,a.[FHSJ]--发货时间
      ,a.[FJPCID]--分拣批次ID
      ,a.[FHRID]--发货人ID
      ,b.GSDM as b_WLGS_GSDM--物流公司表 公司代码
      ,b.GSM as b_WLGS_GSM--物流公司表 公司名
      ,b.GSLXR as b_WLGS_GSLXR--物流公司表 公司联系人
      ,b.LXDH as b_WLGS_LXDH--物流公司表 联系电话
      ,c.PCH as c_FJPC_PCH--分拣批次表 批次号
      ,c.KHID as c_FJPC_KHID--分拣批次表 客户ID
      ,c.JSRQ as c_FJPC_JSRQ--分拣批次表 接受日期
      ,c.LRSJ as c_FJPC_LRSJ--分拣批次表 录入时间
      ,c.FJWGSJ as c_FJPC_FJWGSJ--分拣批次表 分拣完工时间
      ,c.FJFZR as c_FJPC_FJFZR--分拣批次表 分拣负责人
      ,c.QRR as c_FJPC_QRR--分拣批次表 确认人
      ,c.QRRLXDH as c_FJPC_QRRLXDH--分拣批次表 确认人联系电话
      ,c.QRSJ as c_FJPC_QRSJ--分拣批次表 确认时间
      ,c.CSJG as c_FJPC_CSJG--分拣批次表 测试结果
      ,d.GH as d_FHR_GH--发货人表 工号
      ,d.XM as d_FHR_XM--发货人表 姓名
      ,d.LXDH as d_FHR_LXDH--发货人表 联系电话

FROM dbo.EDU_ZDGL_13_FHPC AS a LEFT OUTER JOIN
      dbo.EDU_ZDGL_15_WLGS AS b ON a.WLGSID = b.ID /*物流公司ID*/ LEFT OUTER JOIN
      dbo.EDU_ZDGL_11_FJPC AS c ON a.FJPCID = c.ID /*分拣批次ID*/ LEFT OUTER JOIN
      dbo.EDU_ZDGL_22_FHR AS d ON a.FHRID = d.ID /*发货人ID*/
GO
