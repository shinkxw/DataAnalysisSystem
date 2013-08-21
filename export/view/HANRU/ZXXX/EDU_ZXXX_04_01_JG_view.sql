
--机构数据类表
CREATE VIEW [dbo].[VIEW_EDU_ZXXX_04_01_JG_DISP]
AS
SELECT a.[SCHOOLID]--学校名
      ,a.[JGH]--机构号
      ,a.[LSJGH]--隶属机构号
      ,a.[JGMC]--机构名称
      ,a.[JGJC]--机构简称
      ,a.[FZRGH]--负责人工号
      ,c.SCHOOLID as c_JG_SCHOOLID--机构数据类表 学校名
      ,c.LSJGH as c_JG_LSJGH--机构数据类表 隶属机构号
      ,c.JGMC as c_JG_JGMC--机构数据类表 机构名称
      ,c.JGJC as c_JG_JGJC--机构数据类表 机构简称
      ,c.FZRGH as c_JG_FZRGH--机构数据类表 负责人工号

FROM dbo.EDU_ZXXX_04_01_JG AS a LEFT OUTER JOIN
      dbo.EDU_ZXXX_04_01_JG AS c ON a.LSJGH = c.JGH /*隶属机构号*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/
GO
