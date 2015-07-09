
--分拣详细表
CREATE VIEW [dbo].[VIEW_EDU_ZDGL_12_FJXX_DISP]
AS
SELECT a.[ID]--编号
      ,a.[PCID]--批次ID
      ,a.[XHID]--型号ID
      ,a.[SRSL]--收入数量
      ,a.[LPSL]--良品数量
      ,a.[GZSL]--故障数量
      ,a.[BFSL]--报废数量
      ,a.[RWSHSL]--人为损坏数量
      ,a.[QT]--其他
      ,a.[HJ]--合计
      ,a.[BZ]--备注
      ,a.[JCFW]--基础服务
      ,a.[HK]--换壳
      ,a.[WX]--维修
      ,a.[XDY]--新电源
      ,a.[JDY]--旧电源
      ,a.[PJ]--配件
      ,a.[TH]--退回
      ,a.[QTE]--其他二
      ,a.[WF]--未返
      ,a.[FHRQ]--返回日期
      ,b.PCH as b_FJPC_PCH--分拣批次表 批次号
      ,b.KHID as b_FJPC_KHID--分拣批次表 客户ID
      ,b.JSRQ as b_FJPC_JSRQ--分拣批次表 接受日期
      ,b.LRSJ as b_FJPC_LRSJ--分拣批次表 录入时间
      ,b.FJWGSJ as b_FJPC_FJWGSJ--分拣批次表 分拣完工时间
      ,b.FJFZR as b_FJPC_FJFZR--分拣批次表 分拣负责人
      ,b.QRR as b_FJPC_QRR--分拣批次表 确认人
      ,b.QRRLXDH as b_FJPC_QRRLXDH--分拣批次表 确认人联系电话
      ,b.QRSJ as b_FJPC_QRSJ--分拣批次表 确认时间
      ,b.CSJG as b_FJPC_CSJG--分拣批次表 测试结果
      ,c.XX as c_SBXH_XX--设备型号表 型号
      ,c.LXID as c_SBXH_LXID--设备型号表 类型ID
      ,c.SCCJID as c_SBXH_SCCJID--设备型号表 生产厂家ID
      ,c.PY as c_SBXH_PY--设备型号表 拼音
      ,c.MS as c_SBXH_MS--设备型号表 描述
      ,c.JG as c_SBXH_JG--设备型号表 价格
      ,c.XTLX as c_SBXH_XTLX--设备型号表 系统类型

FROM dbo.EDU_ZDGL_12_FJXX AS a LEFT OUTER JOIN
      dbo.EDU_ZDGL_11_FJPC AS b ON a.PCID = b.ID /*批次ID*/ LEFT OUTER JOIN
      dbo.EDU_ZDGL_05_SBXH AS c ON a.XHID = c.ID /*型号ID*/
GO
