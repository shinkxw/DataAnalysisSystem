
--考试成绩
CREATE VIEW [dbo].[VIEW_EDU_CFXT_01_A04_KSCJ_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[KSID]--考试ID
      ,a.[KMID]--科目ID
      ,a.[CKXSID]--参考学生ID
      ,a.[CJ]--成绩
      ,c.SCHOOLID as c_KS_SCHOOLID--考试信息 学校
      ,c.KSMC as c_KS_KSMC--考试信息 考试名称
      ,c.KSKMIDLB as c_KS_KSKMIDLB--考试信息 考试科目ID列表
      ,c.KSKMMCLB as c_KS_KSKMMCLB--考试信息 考试科目名称列表
      ,c.CFWZ as c_KS_CFWZ--考试信息 查分网址
      ,c.CFZT as c_KS_CFZT--考试信息 查分状态
      ,d.SCHOOLID as d_KM_SCHOOLID--科目信息 学校
      ,d.KMMC as d_KM_KMMC--科目信息 科目名称
      ,d.KMZF as d_KM_KMZF--科目信息 科目总分
      ,e.SCHOOLID as e_CKXS_SCHOOLID--参考学生信息 学校
      ,e.KSID as e_CKXS_KSID--参考学生信息 考试ID
      ,e.XM as e_CKXS_XM--参考学生信息 姓名
      ,e.ZKZH as e_CKXS_ZKZH--参考学生信息 准考证号
      ,e.JZDH as e_CKXS_JZDH--参考学生信息 家长电话
      ,e.ZCJ as e_CKXS_ZCJ--参考学生信息 总成绩
      ,e.JG as e_CKXS_JG--参考学生信息 结果

FROM dbo.EDU_CFXT_01_A04_KSCJ AS a LEFT OUTER JOIN
      dbo.EDU_CFXT_01_A02_KS AS c ON a.KSID = c.ID /*考试ID*/ LEFT OUTER JOIN
      dbo.EDU_CFXT_01_A01_KM AS d ON a.KMID = d.ID /*科目ID*/ LEFT OUTER JOIN
      dbo.EDU_CFXT_01_A03_CKXS AS e ON a.CKXSID = e.ID /*参考学生ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校*/
GO
