
--流程步骤表
CREATE VIEW [dbo].[VIEW_EDU_OAXT_20_A04_LCBZ_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[BZMC]--步骤名称
      ,a.[LCMBID]--流程模板ID
      ,a.[SPRIDLB]--审批人ID列表
      ,a.[SPRMCLB]--审批人名称列表
      ,a.[SYBZID]--上一步骤ID
      ,a.[XYBZID]--下一步骤ID
      ,a.[BZ]--备注
      ,c.SCHOOLID as c_LCMB_SCHOOLID--流程模板表 学校
      ,c.MBLXID as c_LCMB_MBLXID--流程模板表 模板类型ID
      ,c.MBMC as c_LCMB_MBMC--流程模板表 模板名称
      ,c.BDID as c_LCMB_BDID--流程模板表 表单ID
      ,c.TJSJ as c_LCMB_TJSJ--流程模板表 添加时间
      ,c.BZ as c_LCMB_BZ--流程模板表 备注
      ,d.SCHOOLID as d_LCBZ_SCHOOLID--流程步骤表 学校
      ,d.BZMC as d_LCBZ_BZMC--流程步骤表 步骤名称
      ,d.LCMBID as d_LCBZ_LCMBID--流程步骤表 流程模板ID
      ,d.SPRIDLB as d_LCBZ_SPRIDLB--流程步骤表 审批人ID列表
      ,d.SPRMCLB as d_LCBZ_SPRMCLB--流程步骤表 审批人名称列表
      ,d.SYBZID as d_LCBZ_SYBZID--流程步骤表 上一步骤ID
      ,d.XYBZID as d_LCBZ_XYBZID--流程步骤表 下一步骤ID
      ,d.BZ as d_LCBZ_BZ--流程步骤表 备注
      ,e.SCHOOLID as e_LCBZ_SCHOOLID--流程步骤表 学校
      ,e.BZMC as e_LCBZ_BZMC--流程步骤表 步骤名称
      ,e.LCMBID as e_LCBZ_LCMBID--流程步骤表 流程模板ID
      ,e.SPRIDLB as e_LCBZ_SPRIDLB--流程步骤表 审批人ID列表
      ,e.SPRMCLB as e_LCBZ_SPRMCLB--流程步骤表 审批人名称列表
      ,e.SYBZID as e_LCBZ_SYBZID--流程步骤表 上一步骤ID
      ,e.XYBZID as e_LCBZ_XYBZID--流程步骤表 下一步骤ID
      ,e.BZ as e_LCBZ_BZ--流程步骤表 备注

FROM dbo.EDU_OAXT_20_A04_LCBZ AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_20_A03_LCMB AS c ON a.LCMBID = c.ID /*流程模板ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_20_A04_LCBZ AS d ON a.SYBZID = d.ID /*上一步骤ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_20_A04_LCBZ AS e ON a.XYBZID = e.ID /*下一步骤ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校*/
GO
