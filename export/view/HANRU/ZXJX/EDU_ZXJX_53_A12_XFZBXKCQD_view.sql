
--学分制必修课程清单表
CREATE VIEW [dbo].[VIEW_EDU_ZXJX_53_A12_XFZBXKCQD_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校ID
      ,a.[JXJHID]--教学计划ID
      ,a.[KCID]--课程ID
      ,a.[XS]--学分
      ,c.SCHOOLID as c_XFZXQJXJH_SCHOOLID--学分制学期教学计划表 学校ID
      ,c.XQID as c_XFZXQJXJH_XQID--学分制学期教学计划表 学期ID
      ,c.NJID as c_XFZXQJXJH_NJID--学分制学期教学计划表 年级ID
      ,c.BJLBID as c_XFZXQJXJH_BJLBID--学分制学期教学计划表 班级类别ID
      ,c.BJID as c_XFZXQJXJH_BJID--学分制学期教学计划表 班级ID
      ,d.SCHOOLID as d_XFZKC_SCHOOLID--学分制课程表 学校ID
      ,d.KCH as d_XFZKC_KCH--学分制课程表 课程号
      ,d.KCLB as d_XFZKC_KCLB--学分制课程表 课程类别
      ,d.SSKM as d_XFZKC_SSKM--学分制课程表 所属科目
      ,d.KCMC as d_XFZKC_KCMC--学分制课程表 课程名称
      ,d.SFBX as d_XFZKC_SFBX--学分制课程表 是否必修
      ,d.SFSY as d_XFZKC_SFSY--学分制课程表 是否使用
      ,d.PLSX as d_XFZKC_PLSX--学分制课程表 排列顺序

FROM dbo.EDU_ZXJX_53_A12_XFZBXKCQD AS a LEFT OUTER JOIN
      dbo.EDU_ZXJX_53_A11_XFZXQJXJH AS c ON a.JXJHID = c.ID /*教学计划ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZXJX_53_A01_XFZKC AS d ON a.KCID = d.ID /*课程ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校ID*/
GO
