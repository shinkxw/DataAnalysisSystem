
--学分制限选课程清单表
CREATE VIEW [dbo].[VIEW_EDU_ZXJX_53_A13_XFZXXKCQD_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校ID
      ,a.[JXJHID]--教学计划ID
      ,a.[KCIDLB]--课程ID列表
      ,a.[KCMCLB]--课程名称列表
      ,a.[XXMS]--限选数量
      ,a.[XF]--学分
      ,c.SCHOOLID as c_XFZXQJXJH_SCHOOLID--学分制学期教学计划表 学校ID
      ,c.XQID as c_XFZXQJXJH_XQID--学分制学期教学计划表 学期ID
      ,c.NJID as c_XFZXQJXJH_NJID--学分制学期教学计划表 年级ID
      ,c.BJLBID as c_XFZXQJXJH_BJLBID--学分制学期教学计划表 班级类别ID
      ,c.BJID as c_XFZXQJXJH_BJID--学分制学期教学计划表 班级ID
      ,c.KCLX as c_XFZXQJXJH_KCLX--学分制学期教学计划表 课程类型

FROM dbo.EDU_ZXJX_53_A13_XFZXXKCQD AS a LEFT OUTER JOIN
      dbo.EDU_ZXJX_53_A11_XFZXQJXJH AS c ON a.JXJHID = c.ID /*教学计划ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/
GO
