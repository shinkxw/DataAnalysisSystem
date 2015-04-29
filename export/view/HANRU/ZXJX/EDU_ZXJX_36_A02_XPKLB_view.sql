
--需排课列表
CREATE VIEW [dbo].[VIEW_EDU_ZXJX_36_A02_XPKLB_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[JSQJXXID]--教师请假信息表ID
      ,a.[PKJGJLID]--排课结果记录表ID
      ,a.[RQ]--日期
      ,a.[CLZT]--处理状态
      ,c.SCHOOLID as c_JSQJXX_SCHOOLID--教师请假信息表 学校
      ,c.QJJSID as c_JSQJXX_QJJSID--教师请假信息表 请假教师ID
      ,c.QJKSSJ as c_JSQJXX_QJKSSJ--教师请假信息表 请假开始时间
      ,c.QJJSSJ as c_JSQJXX_QJJSSJ--教师请假信息表 请假结束时间
      ,c.CLZT as c_JSQJXX_CLZT--教师请假信息表 处理状态
      ,d.SCHOOLID as d_PKJGJL_SCHOOLID--排课结果记录表 学校名
      ,d.XQID as d_PKJGJL_XQID--排课结果记录表 学期ID
      ,d.TEACHERID as d_PKJGJL_TEACHERID--排课结果记录表 老师
      ,d.TEACHERNAME as d_PKJGJL_TEACHERNAME--排课结果记录表 老师
      ,d.COURSEID as d_PKJGJL_COURSEID--排课结果记录表 课程
      ,d.COURSENAME as d_PKJGJL_COURSENAME--排课结果记录表 课程
      ,d.CLASSID as d_PKJGJL_CLASSID--排课结果记录表 班级
      ,d.CLASSNAME as d_PKJGJL_CLASSNAME--排课结果记录表 班级
      ,d.WEEKDAY as d_PKJGJL_WEEKDAY--排课结果记录表 工作日
      ,d.WEEKDAYNAME as d_PKJGJL_WEEKDAYNAME--排课结果记录表 工作日名称
      ,d.PERIOD as d_PKJGJL_PERIOD--排课结果记录表 时段
      ,d.PERIODNAME as d_PKJGJL_PERIODNAME--排课结果记录表 时段名称
      ,d.SESSION as d_PKJGJL_SESSION--排课结果记录表 节次
      ,d.SESSIONNAME as d_PKJGJL_SESSIONNAME--排课结果记录表 节次名称

FROM dbo.EDU_ZXJX_36_A02_XPKLB AS a LEFT OUTER JOIN
      dbo.EDU_ZXJX_36_A01_JSQJXX AS c ON a.JSQJXXID = c.ID /*教师请假信息表ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ELE_04_PKJGJL AS d ON a.PKJGJLID = d.ID /*排课结果记录表ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校*/
GO
