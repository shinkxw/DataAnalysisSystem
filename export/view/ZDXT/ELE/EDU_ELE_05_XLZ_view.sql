
--校历周表
CREATE VIEW [dbo].[VIEW_EDU_ELE_05_XLZ_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校ID
      ,a.[XLID]--校历ID
      ,a.[NAME]--校历周名称
      ,a.[STARTDAY]--开始日期
      ,a.[ENDDAY]--结束日期
      ,a.[ZJH]--周计划
      ,c.SCHOOLID as c_XL_SCHOOLID--校历表 学校ID
      ,c.NAME as c_XL_NAME--校历表 校历名称
      ,c.STARTDAY as c_XL_STARTDAY--校历表 开始日期
      ,c.ENDDAY as c_XL_ENDDAY--校历表 结束日期
      ,c.XNID as c_XL_XNID--校历表 学年ID
      ,c.XQID as c_XL_XQID--校历表 学期ID

FROM dbo.EDU_ELE_05_XLZ AS a LEFT OUTER JOIN
      dbo.EDU_ELE_05_XL AS c ON a.XLID = c.ID /*校历ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/
GO
