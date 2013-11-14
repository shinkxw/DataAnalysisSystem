
--招聘岗位数据表
CREATE VIEW [dbo].[VIEW_EDU_ZZJG_16_A01_ZPGWSJ_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校名
      ,a.[ZPGWMC]--招聘岗位名称
      ,a.[ZWMC]--职务名称
      ,a.[ZPRS]--招聘人数
      ,a.[GWQSNY]--岗位起始年月
      ,a.[GWJSNY]--岗位结束年月
      ,a.[SFKQ]--是否开启
      ,c.MC as c_SFBZ_MC--是否标志代码表 名称

FROM dbo.EDU_ZZJG_16_A01_ZPGWSJ AS a LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS c ON a.SFKQ = c.DM /*是否开启*/
GO
