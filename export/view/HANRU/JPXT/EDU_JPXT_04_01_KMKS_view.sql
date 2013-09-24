
--科目考试表
CREATE VIEW [dbo].[VIEW_EDU_JPXT_04_01_KMKS_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校ID
      ,a.[KMDM]--科目代码
      ,a.[KSSJ]--考试时间
      ,a.[BZ]--备注
      ,c.MC as c_JKKM_MC--驾考科目代码 科目名称
      ,c.KSSX as c_JKKM_KSSX--驾考科目代码 考试顺序

FROM dbo.EDU_JPXT_04_01_KMKS AS a LEFT OUTER JOIN
      dbo.EDU_ZZ_JKKM AS c ON a.KMDM = c.DM /*科目代码*/
GO
