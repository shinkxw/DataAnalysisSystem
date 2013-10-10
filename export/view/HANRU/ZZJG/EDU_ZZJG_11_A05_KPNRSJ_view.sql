
--考评内容数据表
CREATE VIEW [dbo].[VIEW_EDU_ZZJG_11_A05_KPNRSJ_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[KPNRMC]--考评内容名称
      ,a.[KPNRLX]--考评内容类型
      ,a.[KPZTID]--考评主体ID
      ,c.MC as c_KPZT_MC--考评主体代码 名称

FROM dbo.EDU_ZZJG_11_A05_KPNRSJ AS a LEFT OUTER JOIN
      dbo.EDU_ZJ_KPZT AS c ON a.KPZTID = c.DM /*考评主体ID*/
GO
