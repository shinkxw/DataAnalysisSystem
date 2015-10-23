
--德育评价短信记录表
CREATE VIEW [dbo].[VIEW_EDU_ZZXS_25_A11_DYPJDXJL_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校ID
      ,a.[XQID]--学期ID
      ,a.[GLXSPFJLID]--关联学生评分记录ID
      ,a.[FSDXMC]--发送对象名称
      ,a.[DHHM]--电话号码
      ,a.[DXNR]--短信内容
      ,a.[TJSJ]--添加时间
      ,a.[FSSJ]--发送时间
      ,a.[FSZT]--发送状态
      ,c.SCHOOLID as c_XQ_SCHOOLID--学期数据表 学校名
      ,c.XNID as c_XQ_XNID--学期数据表 学年
      ,c.XQM as c_XQ_XQM--学期数据表 学期码
      ,[cb].MC as c_XQ_XQM_MC--学期代码表 名称
      ,c.XQMC as c_XQ_XQMC--学期数据表 学期名称
      ,c.XQKSRQ as c_XQ_XQKSRQ--学期数据表 学期开始日期
      ,c.XQJSRQ as c_XQ_XQJSRQ--学期数据表 学期结束日期
      ,c.BaseProjectInfoID as c_XQ_BaseProjectInfoID--学期数据表 表BaseProjectInfo外键
      ,d.SCHOOLID as d_DYPJXSPFJL_SCHOOLID--德育评价学生评分记录表 学校
      ,d.XQID as d_DYPJXSPFJL_XQID--德育评价学生评分记录表 学期ID
      ,d.ZCID as d_DYPJXSPFJL_ZCID--德育评价学生评分记录表 周次ID
      ,d.JSID as d_DYPJXSPFJL_JSID--德育评价学生评分记录表 教师ID
      ,d.BJID as d_DYPJXSPFJL_BJID--德育评价学生评分记录表 班级ID
      ,d.XSID as d_DYPJXSPFJL_XSID--德育评价学生评分记录表 学生ID
      ,d.DLID as d_DYPJXSPFJL_DLID--德育评价学生评分记录表 大类ID
      ,d.XLID as d_DYPJXSPFJL_XLID--德育评价学生评分记录表 小类ID
      ,d.SJ as d_DYPJXSPFJL_SJ--德育评价学生评分记录表 时间
      ,d.FZ as d_DYPJXSPFJL_FZ--德育评价学生评分记录表 分值
      ,d.BZ as d_DYPJXSPFJL_BZ--德育评价学生评分记录表 备注
      ,d.ZT as d_DYPJXSPFJL_ZT--德育评价学生评分记录表 状态
      ,d.TJSJ as d_DYPJXSPFJL_TJSJ--德育评价学生评分记录表 添加时间
      ,d.GLBJPFJLID as d_DYPJXSPFJL_GLBJPFJLID--德育评价学生评分记录表 关联班级评分记录ID
      ,d.SCZT as d_DYPJXSPFJL_SCZT--德育评价学生评分记录表 删除状态
      ,d.SCJSID as d_DYPJXSPFJL_SCJSID--德育评价学生评分记录表 删除教师ID
      ,d.SCSJ as d_DYPJXSPFJL_SCSJ--德育评价学生评分记录表 删除时间

FROM dbo.EDU_ZZXS_25_A11_DYPJDXJL AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS c ON a.XQID = c.ID /*学期ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZZXS_25_A04_DYPJXSPFJL AS d ON a.GLXSPFJLID = d.ID /*关联学生评分记录ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS [cb] ON c.XQM = [cb].DM /*学期码*/
GO
