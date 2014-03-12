
--成绩划档方式
CREATE VIEW [dbo].[VIEW_EDU_CFXT_01_A05_CJHDFS_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[KSID]--考试ID
      ,a.[PL]--划档类型
      ,a.[PLRID]--划档最大值
      ,a.[PLSJ]--划档最小值
      ,a.[JG]--结果
      ,c.SCHOOLID as c_KS_SCHOOLID--考试信息 学校
      ,c.KSMC as c_KS_KSMC--考试信息 考试名称
      ,c.KSKMIDLB as c_KS_KSKMIDLB--考试信息 考试科目ID列表
      ,c.KSKMMCLB as c_KS_KSKMMCLB--考试信息 考试科目名称列表
      ,c.CFWZ as c_KS_CFWZ--考试信息 查分网址
      ,c.CFZT as c_KS_CFZT--考试信息 查分状态

FROM dbo.EDU_CFXT_01_A05_CJHDFS AS a LEFT OUTER JOIN
      dbo.EDU_CFXT_01_A02_KS AS c ON a.KSID = c.ID /*考试ID*/
GO
