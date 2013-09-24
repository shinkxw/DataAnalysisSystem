
--科目考试表
CREATE VIEW [dbo].[VIEW_EDU_JPXT_04_01_KMKS_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校ID
      ,a.[KMID]--科目ID
      ,a.[KSSJ]--考试时间
      ,a.[BZ]--备注
      ,c.SCHOOLID as c_JKKM_SCHOOLID--驾考科目表 学校ID
      ,c.CLXHMC as c_JKKM_CLXHMC--驾考科目表 科目名称
      ,c.CLXHID as c_JKKM_CLXHID--驾考科目表 车辆型号ID
      ,c.KSSX as c_JKKM_KSSX--驾考科目表 考试顺序
      ,c.BZ as c_JKKM_BZ--驾考科目表 备注

FROM dbo.EDU_JPXT_04_01_KMKS AS a LEFT OUTER JOIN
      dbo.EDU_JPXT_04_02_JKKM AS c ON a.KMID = c.ID /*科目ID*/
GO
