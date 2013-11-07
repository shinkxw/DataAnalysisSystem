
--处分类型表
CREATE VIEW [dbo].[VIEW_EDU_ZZXS_18_A02_CFLX_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[CFLXMC]--处分类型名称
      ,a.[CFGLDW]--处分管理单位
      ,a.[SFCZCKQ]--是否存在查看期
      ,a.[CKQ]--查看期
      ,a.[SFQXJC]--是否允许解除
      ,a.[BZ]--备注
      ,c.MC as c_SFBZ_MC--是否标志代码表 名称
      ,d.MC as d_SFBZ_MC--是否标志代码表 名称

FROM dbo.EDU_ZZXS_18_A02_CFLX AS a LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS c ON a.SFCZCKQ = c.DM /*是否存在查看期*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS d ON a.SFQXJC = d.DM /*是否允许解除*/
GO
