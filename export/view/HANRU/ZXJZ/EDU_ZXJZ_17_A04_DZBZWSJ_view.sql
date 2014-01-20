
--党支部职位数据表
CREATE VIEW [dbo].[VIEW_EDU_ZXJZ_17_A04_DZBZWSJ_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[DZBID]--党支部ID
      ,a.[ZWMC]--职位名称
      ,a.[GZNR]--工作内容
      ,a.[BZ]--备注
      ,c.SCHOOLID as c_DZBSJ_SCHOOLID--党支部数据表 学校
      ,c.DZBMC as c_DZBSJ_DZBMC--党支部数据表 党支部名称
      ,c.SS as c_DZBSJ_SS--党支部数据表 所属
      ,c.BZ as c_DZBSJ_BZ--党支部数据表 备注

FROM dbo.EDU_ZXJZ_17_A04_DZBZWSJ AS a LEFT OUTER JOIN
      dbo.EDU_ZXJZ_17_A03_DZBSJ AS c ON a.DZBID = c.ID /*党支部ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/
GO
