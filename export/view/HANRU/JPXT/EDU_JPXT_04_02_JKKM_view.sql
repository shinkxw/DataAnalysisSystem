
--驾考科目表
CREATE VIEW [dbo].[VIEW_EDU_JPXT_04_02_JKKM_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校ID
      ,a.[CLXHMC]--科目名称
      ,a.[CLXHID]--车辆型号ID
      ,a.[KSSX]--考试顺序
      ,a.[BZ]--备注
      ,c.SCHOOLID as c_CLXH_SCHOOLID--车辆型号数据表 学校ID
      ,c.CLXHMC as c_CLXH_CLXHMC--车辆型号数据表 车辆型号名称
      ,c.BZ as c_CLXH_BZ--车辆型号数据表 备注

FROM dbo.EDU_JPXT_04_02_JKKM AS a LEFT OUTER JOIN
      dbo.EDU_JPXT_05_01_CLXH AS c ON a.CLXHID = c.ID /*车辆型号ID*/
GO
