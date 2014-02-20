
--奖学金数据子类表
CREATE VIEW [dbo].[VIEW_EDU_ZZXS_10_02_JXJSJ_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校ID
      ,a.[JXJMC]--奖学金名称
      ,a.[JXJBH]--奖学金编号
      ,a.[JXJDJ]--奖学金等级
      ,a.[JXJLXM]--奖学金类型码
      ,a.[JXJE]--奖学金额
      ,a.[ZZDWHGR]--资助单位或个人
      ,a.[JXJLYM]--奖学金来源码
      ,a.[BZ]--备注
      ,a.[SFKQ]--是否开启
      ,a.[MXQKHJRS]--每学期可获奖人数
      ,c.MC as c_JXJLX_MC--奖学金类型代码表 名称
      ,d.MC as d_JLZZZJLY_MC--奖励资助资金来源代码表 名称

FROM dbo.EDU_ZZXS_10_02_JXJSJ AS a LEFT OUTER JOIN
      dbo.EDU_JY_JXJLX AS c ON a.JXJLXM = c.DM /*奖学金类型码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JLZZZJLY AS d ON a.JXJLYM = d.DM /*奖学金来源码*/
GO
