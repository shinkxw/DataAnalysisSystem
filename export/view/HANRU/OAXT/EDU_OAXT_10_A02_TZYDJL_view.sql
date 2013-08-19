
--通知阅读记录
CREATE VIEW [dbo].[VIEW_EDU_OAXT_10_A02_TZYDJL_DISP]
AS
SELECT a.[ID]--通知阅读记录ID
      ,a.[SCHOOLID]--学校ID
      ,a.[TZID]--通知ID
      ,a.[BTZRID]--被通知人ID
      ,a.[YDRQ]--阅读日期
      ,a.[SFYD]--是否已阅读
      ,b.SCHOOLNAME as b_SCHOOL_SCHOOLNAME--学校名称
      ,b.SCHOOLTYPE as b_SCHOOL_SCHOOLTYPE--学校类型
      ,b.XNID as b_SCHOOL_XNID--学年ID
      ,b.XQID as b_SCHOOL_XQID--学期ID
      ,b.MatchURL as b_SCHOOL_MatchURL--匹配url
      ,b.LogLevel as b_SCHOOL_LogLevel--日志级别
      ,c.SCHOOLID as c_TZ_SCHOOLID--学校ID
      ,c.FSRID as c_TZ_FSRID--发送人ID
      ,c.FSRLB as c_TZ_FSRLB--发送人类别
      ,c.BT as c_TZ_BT--标题
      ,c.NR as c_TZ_NR--内容
      ,c.FJ as c_TZ_FJ--附件
      ,c.TJRQ as c_TZ_TJRQ--添加日期
      ,c.JSRS as c_TZ_JSRS--接收人数
      ,c.JSRIDLB as c_TZ_JSRIDLB--接收人ID列表
      ,c.JSRMZLB as c_TZ_JSRMZLB--接收人名字列表
      ,c.YYDRIDLB as c_TZ_YYDRIDLB--已阅读人ID列表
      ,c.YYDRMZLB as c_TZ_YYDRMZLB--已阅读人名字列表
      ,c.FSZT as c_TZ_FSZT--发送状态
      ,d.SCHOOLID as d_USER_SCHOOLID--学校ID
      ,d.APPID as d_USER_APPID--应用ID
      ,d.PWD as d_USER_PWD--密码
      ,d.STATUS as d_USER_STATUS--用户状态
      ,d.USERTYPE as d_USER_USERTYPE--用户类别
      ,d.USERID as d_USER_USERID--用户ID
      ,d.ROLEIDLst as d_USER_ROLEIDLst--用户角色
      ,d.XM as d_USER_XM--姓名
      ,d.XB as d_USER_XB--性别
      ,d.QQ as d_USER_QQ--QQ
      ,d.DZYJ as d_USER_DZYJ--电子邮件
      ,d.LXDH as d_USER_LXDH--联系电话
      ,d.ZJDLSJ as d_USER_ZJDLSJ--最近一次登录时间
      ,d.DLCGCS as d_USER_DLCGCS--登录成功次数
      ,d.YHCJSJ as d_USER_YHCJSJ--用户创建时间
      ,e.MC as e_SFBZ_MC--名称

FROM dbo.EDU_OAXT_10_A02_TZYDJL AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_10_A01_TZ AS c ON a.TZID = c.ID /*通知ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.BTZRID = d.LOGINNAME /*被通知人ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS e ON a.SFYD = e.DM /*是否已阅读*/
GO
