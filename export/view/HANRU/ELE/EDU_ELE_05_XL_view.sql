
--校历表
CREATE VIEW [dbo].[VIEW_EDU_ELE_05_XL_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校ID
      ,a.[NAME]--校历名称
      ,a.[STARTDAY]--开始日期
      ,a.[ENDDAY]--结束日期
      ,a.[XNID]--学年ID
      ,a.[XQID]--学期ID
      ,c.SCHOOLID as c_XN_SCHOOLID--学年表 学校名
      ,c.XN as c_XN_XN--学年表 学年

FROM dbo.EDU_ELE_05_XL AS a LEFT OUTER JOIN
      dbo.EDU_SYS_01_XN AS c ON a.XNID = c.ID /*学年ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/
GO
