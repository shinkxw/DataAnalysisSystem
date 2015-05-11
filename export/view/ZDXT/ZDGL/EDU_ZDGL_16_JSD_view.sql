
--接收单表
CREATE VIEW [dbo].[VIEW_EDU_ZDGL_16_JSD_DISP]
AS
SELECT a.[ID]--编号
      ,a.[JSDH]--接收单号
      ,a.[SXDWID]--送修单位ID
      ,a.[SXRQ]--送修日期
      ,b.KHDM as b_KH_KHDM--客户表 客户代码
      ,b.SZQYID as b_KH_SZQYID--客户表 所在区域ID
      ,b.SSGSID as b_KH_SSGSID--客户表 所属公司ID
      ,b.DWMC as b_KH_DWMC--客户表 单位名称
      ,b.PY as b_KH_PY--客户表 拼音
      ,b.KHDZ as b_KH_KHDZ--客户表 客户地址
      ,b.LXR as b_KH_LXR--客户表 联系人
      ,b.DH as b_KH_DH--客户表 电话

FROM dbo.EDU_ZDGL_16_JSD AS a LEFT OUTER JOIN
      dbo.EDU_ZDGL_08_KH AS b ON a.SXDWID = b.ID /*送修单位ID*/
GO
