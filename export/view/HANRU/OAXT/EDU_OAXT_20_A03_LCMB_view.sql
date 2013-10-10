
--流程模板表
CREATE VIEW [dbo].[VIEW_EDU_OAXT_20_A03_LCMB_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[MBLXID]--模板类型ID
      ,a.[MBMC]--模板名称
      ,a.[BDID]--表单ID
      ,a.[TJSJ]--添加时间
      ,a.[BZ]--备注
      ,c.LXMC as c_LCMBLX_LXMC--流程模板类型表 类型名称
      ,c.BZ as c_LCMBLX_BZ--流程模板类型表 备注
      ,d.SCHOOLID as d_LCBDSJ_SCHOOLID--流程表单数据表 学校
      ,d.BDMC as d_LCBDSJ_BDMC--流程表单数据表 表单名称
      ,d.BDNR as d_LCBDSJ_BDNR--流程表单数据表 表单内容
      ,d.TJSJ as d_LCBDSJ_TJSJ--流程表单数据表 添加时间
      ,d.BZ as d_LCBDSJ_BZ--流程表单数据表 备注

FROM dbo.EDU_OAXT_20_A03_LCMB AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_20_A01_LCMBLX AS c ON a.MBLXID = c.ID /*模板类型ID*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_20_A02_LCBDSJ AS d ON a.BDID = d.ID /*表单ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校*/
GO
