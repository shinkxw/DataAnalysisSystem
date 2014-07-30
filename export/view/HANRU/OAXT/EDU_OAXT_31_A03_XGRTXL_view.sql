
--新个人通讯录表
CREATE VIEW [dbo].[VIEW_EDU_OAXT_31_A03_XGRTXL_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[TXLID]--通讯录ID
      ,a.[ZDPZID]--字段配置表ID
      ,a.[NR]--内容
      ,c.SCHOOLID as c_GRTXL_SCHOOLID--个人通讯录表 学校
      ,c.GRID as c_GRTXL_GRID--个人通讯录表 个人ID
      ,c.LXRXM as c_GRTXL_LXRXM--个人通讯录表 联系人姓名
      ,c.LXRDH as c_GRTXL_LXRDH--个人通讯录表 联系人电话
      ,d.SCHOOLID as d_GRTXLZDPZ_SCHOOLID--个人通讯录字段配置表 学校
      ,d.ZDMC as d_GRTXLZDPZ_ZDMC--个人通讯录字段配置表 字段名称

FROM dbo.EDU_OAXT_31_A03_XGRTXL AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_31_A01_GRTXL AS c ON a.TXLID = c.ID /*通讯录ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_31_A02_GRTXLZDPZ AS d ON a.ZDPZID = d.ID /*字段配置表ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校*/
GO
