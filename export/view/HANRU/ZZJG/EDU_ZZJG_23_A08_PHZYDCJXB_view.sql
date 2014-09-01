
--平湖职业调查教学部表
CREATE VIEW [dbo].[VIEW_EDU_ZZJG_23_A08_PHZYDCJXB_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[DCMCID]--调查名称ID
      ,a.[JXBMC]--教学部名称
      ,a.[MESX]--名额上限
      ,c.SCHOOLID as c_PHZYDCMC_SCHOOLID--平湖职业调查名称表 学校
      ,c.DCMC as c_PHZYDCMC_DCMC--平湖职业调查名称表 调查名称
      ,c.BZ as c_PHZYDCMC_BZ--平湖职业调查名称表 备注
      ,c.ZT as c_PHZYDCMC_ZT--平湖职业调查名称表 状态

FROM dbo.EDU_ZZJG_23_A08_PHZYDCJXB AS a LEFT OUTER JOIN
      dbo.EDU_ZZJG_23_A01_PHZYDCMC AS c ON a.DCMCID = c.ID /*调查名称ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/
GO
