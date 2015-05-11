
--客户表
CREATE VIEW [dbo].[VIEW_EDU_ZDGL_08_KH_DISP]
AS
SELECT a.[ID]--编号
      ,a.[KHDM]--客户代码
      ,a.[SZQYID]--所在区域ID
      ,a.[SSGSID]--所属公司ID
      ,a.[DWMC]--单位名称
      ,a.[PY]--拼音
      ,a.[KHDZ]--客户地址
      ,a.[LXR]--联系人
      ,a.[DH]--电话
      ,b.QHM as b_XZQH_QHM--行政区划表 区划码
      ,b.QHMC as b_XZQH_QHMC--行政区划表 区划名称
      ,b.QH as b_XZQH_QH--行政区划表 区号
      ,c.GSDM as c_SSGS_GSDM--所属公司表 公司代码
      ,c.GSM as c_SSGS_GSM--所属公司表 公司名

FROM dbo.EDU_ZDGL_08_KH AS a LEFT OUTER JOIN
      dbo.EDU_ZDGL_06_XZQH AS b ON a.SZQYID = b.ID /*所在区域ID*/ LEFT OUTER JOIN
      dbo.EDU_ZDGL_07_SSGS AS c ON a.SSGSID = c.ID /*所属公司ID*/
GO
