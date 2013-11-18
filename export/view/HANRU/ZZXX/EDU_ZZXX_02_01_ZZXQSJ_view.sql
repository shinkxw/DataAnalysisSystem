
--校区数据表
CREATE VIEW [dbo].[VIEW_EDU_ZZXX_02_01_ZZXQSJ_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校名
      ,a.[XQDM]--校区代码
      ,a.[XQMC]--校区名称
      ,a.[XQDZ]--校区地址
      ,a.[XQLXDH]--校区联系电话
      ,a.[XQFZRH]--校区负责人号
      ,a.[DZYJ]--电子邮件
      ,a.[XQYZBM]--校区邮政编码
      ,a.[XQSZDXZQHM]--校区所在地行政区划码
      ,a.[XQMJ]--校区面积
      ,a.[XQJZMJ]--校区建筑面积
      ,a.[XQJXKYSBZZ]--校区教学科研仪器设备总值
      ,a.[XQGDZCZZ]--校区固定资产总值
      ,c.MC as c_ZHRMGHGXZQH_MC--中华人民共和国行政区划代码 名称

FROM dbo.EDU_ZZXX_02_01_ZZXQSJ AS a LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS c ON a.XQSZDXZQHM = c.DM /*校区所在地行政区划码*/
GO
