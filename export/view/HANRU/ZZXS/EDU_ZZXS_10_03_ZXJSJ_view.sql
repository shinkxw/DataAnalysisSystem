
--助学金数据子类表
CREATE VIEW [dbo].[VIEW_EDU_ZZXS_10_03_ZXJSJ_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校ID
      ,a.[ZXJE]--助学金额
      ,a.[ZXJMC]--助学金名称
      ,a.[ZZDWHGR]--资助单位或个人
      ,a.[ZXJLX]--助学金类型
      ,a.[BZ]--备注
      ,a.[SFKQ]--是否开启
      ,a.[MXQKHJRS]--每学期可获奖人数
      ,c.MC as c_ZXJFL_MC--助学金分类代码 名称

FROM dbo.EDU_ZZXS_10_03_ZXJSJ AS a LEFT OUTER JOIN
      dbo.EDU_ZZ_ZXJFL AS c ON a.ZXJLX = c.DM /*助学金类型*/
GO
