
--分拣批次表
CREATE VIEW [dbo].[VIEW_EDU_ZDGL_11_FJPC_DISP]
AS
SELECT a.[ID]--编号
      ,a.[PCH]--批次号
      ,a.[KHID]--客户ID
      ,a.[JSRQ]--接受日期
      ,a.[LRSJ]--录入时间
      ,a.[FJWGSJ]--分拣完工时间
      ,a.[FJFZR]--分拣负责人
      ,a.[QRR]--确认人
      ,a.[QRRLXDH]--确认人联系电话
      ,a.[QRSJ]--确认时间
      ,a.[CSJG]--测试结果
      ,b.KHDM as b_KH_KHDM--客户表 客户代码
      ,b.SZQYID as b_KH_SZQYID--客户表 所在区域ID
      ,b.SSGSID as b_KH_SSGSID--客户表 所属公司ID
      ,b.DWMC as b_KH_DWMC--客户表 单位名称
      ,b.PY as b_KH_PY--客户表 拼音
      ,b.KHDZ as b_KH_KHDZ--客户表 客户地址
      ,b.LXR as b_KH_LXR--客户表 联系人
      ,b.DH as b_KH_DH--客户表 电话
      ,b.XTLX as b_KH_XTLX--客户表 系统类型

FROM dbo.EDU_ZDGL_11_FJPC AS a LEFT OUTER JOIN
      dbo.EDU_ZDGL_08_KH AS b ON a.KHID = b.ID /*客户ID*/
GO
