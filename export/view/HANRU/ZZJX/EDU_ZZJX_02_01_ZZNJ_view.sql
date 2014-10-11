
--学校年级数据表
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_02_01_ZZNJ_DISP]
AS
SELECT a.[NJDM]--年级代码
      ,a.[SCHOOLID]--学校名
      ,a.[NJMC]--年级名称
      ,a.[SSNF]--所属年份
      ,a.[NJZT]--年级状态
      ,a.[PLSX]--排列顺序
      ,c.MC as c_SFBZ_MC--是否标志代码表 名称

FROM dbo.EDU_ZZJX_02_01_ZZNJ AS a LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS c ON a.NJZT = c.DM /*年级状态*/
GO
