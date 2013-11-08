
--解除处分步骤表
CREATE VIEW [dbo].[VIEW_EDU_ZZXS_18_A03_JCCFBZ_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[CFLXID]--处分类型ID
      ,a.[BZMC]--步骤名称
      ,a.[SHRIDLB]--审核人ID列表
      ,a.[SHRMCLB]--审核人名称列表
      ,a.[SYBZID]--上一步骤ID
      ,a.[XYBZID]--下一步骤ID
      ,a.[BZ]--备注
      ,c.SCHOOLID as c_CFLX_SCHOOLID--处分类型表 学校
      ,c.CFLXMC as c_CFLX_CFLXMC--处分类型表 处分类型名称
      ,c.CFGLDW as c_CFLX_CFGLDW--处分类型表 处分管理单位
      ,c.SFCZCKQ as c_CFLX_SFCZCKQ--处分类型表 是否存在查看期
      ,[cb].MC as c_CFLX_SFCZCKQ_MC--是否标志代码表 名称
      ,c.CKQ as c_CFLX_CKQ--处分类型表 查看期
      ,c.SFYXJC as c_CFLX_SFYXJC--处分类型表 是否允许解除
      ,[cc].MC as c_CFLX_SFYXJC_MC--是否标志代码表 名称
      ,c.BZ as c_CFLX_BZ--处分类型表 备注
      ,d.SCHOOLID as d_JCCFBZ_SCHOOLID--解除处分步骤表 学校
      ,d.CFLXID as d_JCCFBZ_CFLXID--解除处分步骤表 处分类型ID
      ,d.BZMC as d_JCCFBZ_BZMC--解除处分步骤表 步骤名称
      ,d.SHRIDLB as d_JCCFBZ_SHRIDLB--解除处分步骤表 审核人ID列表
      ,d.SHRMCLB as d_JCCFBZ_SHRMCLB--解除处分步骤表 审核人名称列表
      ,d.SYBZID as d_JCCFBZ_SYBZID--解除处分步骤表 上一步骤ID
      ,d.XYBZID as d_JCCFBZ_XYBZID--解除处分步骤表 下一步骤ID
      ,d.BZ as d_JCCFBZ_BZ--解除处分步骤表 备注
      ,e.SCHOOLID as e_JCCFBZ_SCHOOLID--解除处分步骤表 学校
      ,e.CFLXID as e_JCCFBZ_CFLXID--解除处分步骤表 处分类型ID
      ,e.BZMC as e_JCCFBZ_BZMC--解除处分步骤表 步骤名称
      ,e.SHRIDLB as e_JCCFBZ_SHRIDLB--解除处分步骤表 审核人ID列表
      ,e.SHRMCLB as e_JCCFBZ_SHRMCLB--解除处分步骤表 审核人名称列表
      ,e.SYBZID as e_JCCFBZ_SYBZID--解除处分步骤表 上一步骤ID
      ,e.XYBZID as e_JCCFBZ_XYBZID--解除处分步骤表 下一步骤ID
      ,e.BZ as e_JCCFBZ_BZ--解除处分步骤表 备注

FROM dbo.EDU_ZZXS_18_A03_JCCFBZ AS a LEFT OUTER JOIN
      dbo.EDU_ZZXS_18_A02_CFLX AS c ON a.CFLXID = c.ID /*处分类型ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZXS_18_A03_JCCFBZ AS d ON a.SYBZID = d.ID /*上一步骤ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZXS_18_A03_JCCFBZ AS e ON a.XYBZID = e.ID /*下一步骤ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [cb] ON c.SFCZCKQ = [cb].DM /*是否存在查看期*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [cc] ON c.SFYXJC = [cc].DM /*是否允许解除*/
GO
