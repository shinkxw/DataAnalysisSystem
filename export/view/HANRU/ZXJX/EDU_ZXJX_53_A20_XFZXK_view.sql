
--学分制选课表
CREATE VIEW [dbo].[VIEW_EDU_ZXJX_53_A20_XFZXK_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[XQID]--学期ID
      ,a.[XKMC]--选课名称
      ,a.[XKKSSJ]--选课开始时间
      ,a.[XKJSSJ]--选课结束时间
      ,a.[SFYXSYXSECXK]--是否允许所有学生二次选课
      ,a.[ECXKKSSJ]--二次选课开始时间
      ,a.[ECXKJSSJ]--二次选课结束时间
      ,a.[XKFFYLC]--选课方法与流程
      ,a.[KXKCLXIDLB]--可选课程类型ID列表
      ,a.[KXKCLXMCLB]--可选课程类型名称列表
      ,a.[XKBJIDLB]--选课班级ID列表
      ,a.[XSZDXKMS]--学生最多选课门数
      ,c.SCHOOLID as c_XQ_SCHOOLID--学期数据表 学校名
      ,c.XNID as c_XQ_XNID--学期数据表 学年
      ,c.XQM as c_XQ_XQM--学期数据表 学期码
      ,[cb].MC as c_XQ_XQM_MC--学期代码表 名称
      ,c.XQMC as c_XQ_XQMC--学期数据表 学期名称
      ,c.XQKSRQ as c_XQ_XQKSRQ--学期数据表 学期开始日期
      ,c.XQJSRQ as c_XQ_XQJSRQ--学期数据表 学期结束日期
      ,c.BaseProjectInfoID as c_XQ_BaseProjectInfoID--学期数据表 表BaseProjectInfo外键

FROM dbo.EDU_ZXJX_53_A20_XFZXK AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS c ON a.XQID = c.ID /*学期ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS [cb] ON c.XQM = [cb].DM /*学期码*/
GO
