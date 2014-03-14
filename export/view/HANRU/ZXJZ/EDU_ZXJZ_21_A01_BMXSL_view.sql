
--部门行事历表
CREATE VIEW [dbo].[VIEW_EDU_ZXJZ_21_A01_BMXSL_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[BMBH]--部门编号
      ,a.[SJ]--时间
      ,a.[ZYGZ]--主要工作
      ,a.[BZ]--备注
      ,c.SCHOOLID as c_JG_SCHOOLID--机构数据类表 学校名
      ,c.LSJGH as c_JG_LSJGH--机构数据类表 隶属机构号
      ,c.JGMC as c_JG_JGMC--机构数据类表 机构名称
      ,c.JGJC as c_JG_JGJC--机构数据类表 机构简称
      ,c.FZRGH as c_JG_FZRGH--机构数据类表 负责人工号

FROM dbo.EDU_ZXJZ_21_A01_BMXSL AS a LEFT OUTER JOIN
      dbo.EDU_ZXXX_04_01_JG AS c ON a.BMBH = c.JGH /*部门编号*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/
GO
