
--分拣详细表
CREATE VIEW [dbo].[VIEW_EDU_ZDGL_12_FJXX_DISP]
AS
SELECT a.[ID]--编号
      ,a.[PCH]--批次号
      ,a.[XHID]--型号ID
      ,a.[SRSL]--收入数量
      ,a.[LPSL]--良品数量
      ,a.[GZSL]--故障数量
      ,a.[BFSL]--报废数量
      ,a.[RWSHSL]--人为损坏数量
      ,a.[QT]--其他
      ,a.[HJ]--合计
      ,a.[BZ]--备注
      ,b.XX as b_SBXH_XX--设备型号表 型号
      ,b.LXID as b_SBXH_LXID--设备型号表 类型ID
      ,b.SCCJID as b_SBXH_SCCJID--设备型号表 生产厂家ID
      ,b.PY as b_SBXH_PY--设备型号表 拼音
      ,b.MS as b_SBXH_MS--设备型号表 描述
      ,b.JG as b_SBXH_JG--设备型号表 价格

FROM dbo.EDU_ZDGL_12_FJXX AS a LEFT OUTER JOIN
      dbo.EDU_ZDGL_05_SBXH AS b ON a.XHID = b.ID /*型号ID*/
GO
