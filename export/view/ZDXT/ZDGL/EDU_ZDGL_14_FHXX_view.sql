
--发货详细表
CREATE VIEW [dbo].[VIEW_EDU_ZDGL_14_FHXX_DISP]
AS
SELECT a.[ID]--编号
      ,a.[FHPCID]--发货批次ID
      ,a.[FJXXID]--分拣详细ID
      ,a.[JCFW]--基础服务
      ,a.[HK]--换壳
      ,a.[WX]--维修
      ,a.[XDY]--新电源
      ,a.[JDY]--旧电源
      ,a.[PJ]--配件
      ,a.[TH]--退回
      ,a.[QT]--其他
      ,a.[WF]--未返
      ,a.[FHRQ]--返回日期
      ,b.FHPCH as b_FHPC_FHPCH--发货批次表 发货批次号
      ,b.FHR as b_FHPC_FHR--发货批次表 发货人
      ,b.WLGSID as b_FHPC_WLGSID--发货批次表 物流公司ID
      ,b.ZXS as b_FHPC_ZXS--发货批次表 总箱数
      ,b.FHSJ as b_FHPC_FHSJ--发货批次表 发货时间
      ,b.FJPCID as b_FHPC_FJPCID--发货批次表 分拣批次ID
      ,b.FHRID as b_FHPC_FHRID--发货批次表 发货人ID
      ,c.PCID as c_FJXX_PCID--分拣详细表 批次ID
      ,c.XHID as c_FJXX_XHID--分拣详细表 型号ID
      ,c.SRSL as c_FJXX_SRSL--分拣详细表 收入数量
      ,c.LPSL as c_FJXX_LPSL--分拣详细表 良品数量
      ,c.GZSL as c_FJXX_GZSL--分拣详细表 故障数量
      ,c.BFSL as c_FJXX_BFSL--分拣详细表 报废数量
      ,c.RWSHSL as c_FJXX_RWSHSL--分拣详细表 人为损坏数量
      ,c.QT as c_FJXX_QT--分拣详细表 其他
      ,c.HJ as c_FJXX_HJ--分拣详细表 合计
      ,c.BZ as c_FJXX_BZ--分拣详细表 备注
      ,c.JCFW as c_FJXX_JCFW--分拣详细表 基础服务
      ,c.HK as c_FJXX_HK--分拣详细表 换壳
      ,c.WX as c_FJXX_WX--分拣详细表 维修
      ,c.XDY as c_FJXX_XDY--分拣详细表 新电源
      ,c.JDY as c_FJXX_JDY--分拣详细表 旧电源
      ,c.PJ as c_FJXX_PJ--分拣详细表 配件
      ,c.TH as c_FJXX_TH--分拣详细表 退回
      ,c.QTE as c_FJXX_QTE--分拣详细表 其他二
      ,c.WF as c_FJXX_WF--分拣详细表 未返
      ,c.FHRQ as c_FJXX_FHRQ--分拣详细表 返回日期

FROM dbo.EDU_ZDGL_14_FHXX AS a LEFT OUTER JOIN
      dbo.EDU_ZDGL_13_FHPC AS b ON a.FHPCID = b.ID /*发货批次ID*/ LEFT OUTER JOIN
      dbo.EDU_ZDGL_12_FJXX AS c ON a.FJXXID = c.ID /*分拣详细ID*/
GO
