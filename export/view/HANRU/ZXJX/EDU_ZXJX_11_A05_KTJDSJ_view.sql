
--课题阶段数据表
CREATE VIEW [dbo].[VIEW_EDU_ZXJX_11_A05_KTJDSJ_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[KTID]--课题ID
      ,a.[JDMC]--阶段名称
      ,a.[JDGZNR]--阶段工作内容
      ,a.[SCSJ]--上传时间
      ,c.SCHOOLID as c_KTSJ_SCHOOLID--课题数据表 学校
      ,c.XNID as c_KTSJ_XNID--课题数据表 学年ID
      ,c.XQID as c_KTSJ_XQID--课题数据表 学期ID
      ,c.KTMC as c_KTSJ_KTMC--课题数据表 课题名称
      ,c.KTZT as c_KTSJ_KTZT--课题数据表 课题主题
      ,c.KTNR as c_KTSJ_KTNR--课题数据表 课题内容
      ,c.SQJSID as c_KTSJ_SQJSID--课题数据表 申请教师ID
      ,c.SQSJ as c_KTSJ_SQSJ--课题数据表 申请时间
      ,c.SHZT as c_KTSJ_SHZT--课题数据表 审核状态
      ,c.SHJSID as c_KTSJ_SHJSID--课题数据表 审核教师ID
      ,c.SHSJ as c_KTSJ_SHSJ--课题数据表 审核时间
      ,c.JXZT as c_KTSJ_JXZT--课题数据表 节项状态
      ,c.JXSJ as c_KTSJ_JXSJ--课题数据表 节项时间

FROM dbo.EDU_ZXJX_11_A05_KTJDSJ AS a LEFT OUTER JOIN
      dbo.EDU_ZXJX_11_A04_KTSJ AS c ON a.KTID = c.ID /*课题ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/
GO
