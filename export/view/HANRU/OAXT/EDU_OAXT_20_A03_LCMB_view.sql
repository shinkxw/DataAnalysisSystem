
--流程模板表
CREATE VIEW [dbo].[VIEW_EDU_OAXT_20_A03_LCMB_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[MBLXID]--模板类型ID
      ,a.[MBMC]--模板名称
      ,a.[BDID]--表单ID
      ,a.[QSBZID]--起始步骤ID
      ,a.[JSBZID]--结束步骤ID
      ,a.[TJSJ]--添加时间
      ,a.[BZ]--备注
      ,c.LXMC as c_LCMBLX_LXMC--流程模板类型表 类型名称
      ,c.BZ as c_LCMBLX_BZ--流程模板类型表 备注
      ,d.SCHOOLID as d_LCBDSJ_SCHOOLID--流程表单数据表 学校
      ,d.BDMC as d_LCBDSJ_BDMC--流程表单数据表 表单名称
      ,d.BDNR as d_LCBDSJ_BDNR--流程表单数据表 表单内容
      ,d.TJSJ as d_LCBDSJ_TJSJ--流程表单数据表 添加时间
      ,d.BZ as d_LCBDSJ_BZ--流程表单数据表 备注
      ,e.SCHOOLID as e_LCBZ_SCHOOLID--流程步骤表 学校
      ,e.BZMC as e_LCBZ_BZMC--流程步骤表 步骤名称
      ,e.LCMBID as e_LCBZ_LCMBID--流程步骤表 流程模板ID
      ,e.SPRIDLB as e_LCBZ_SPRIDLB--流程步骤表 审批人ID列表
      ,e.SPRMCLB as e_LCBZ_SPRMCLB--流程步骤表 审批人名称列表
      ,e.SYBZID as e_LCBZ_SYBZID--流程步骤表 上一步骤ID
      ,e.XYBZID as e_LCBZ_XYBZID--流程步骤表 下一步骤ID
      ,e.BZ as e_LCBZ_BZ--流程步骤表 备注
      ,f.SCHOOLID as f_LCBZ_SCHOOLID--流程步骤表 学校
      ,f.BZMC as f_LCBZ_BZMC--流程步骤表 步骤名称
      ,f.LCMBID as f_LCBZ_LCMBID--流程步骤表 流程模板ID
      ,f.SPRIDLB as f_LCBZ_SPRIDLB--流程步骤表 审批人ID列表
      ,f.SPRMCLB as f_LCBZ_SPRMCLB--流程步骤表 审批人名称列表
      ,f.SYBZID as f_LCBZ_SYBZID--流程步骤表 上一步骤ID
      ,f.XYBZID as f_LCBZ_XYBZID--流程步骤表 下一步骤ID
      ,f.BZ as f_LCBZ_BZ--流程步骤表 备注

FROM dbo.EDU_OAXT_20_A03_LCMB AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_20_A01_LCMBLX AS c ON a.MBLXID = c.ID /*模板类型ID*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_20_A02_LCBDSJ AS d ON a.BDID = d.ID /*表单ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_20_A04_LCBZ AS e ON a.QSBZID = e.ID /*起始步骤ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_20_A04_LCBZ AS f ON a.JSBZID = f.ID /*结束步骤ID*/ AND a.SCHOOLID = f.SCHOOLID /*学校*/
GO
