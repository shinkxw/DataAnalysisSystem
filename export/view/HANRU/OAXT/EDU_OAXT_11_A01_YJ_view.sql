
--邮件数据表
CREATE VIEW [dbo].[VIEW_EDU_OAXT_11_A01_YJ_DISP]
AS
SELECT a.[ID]--邮件ID
      ,a.[SCHOOLID]--学校ID
      ,a.[YYZID]--拥有者ID
      ,a.[FSRID]--发送人ID
      ,a.[JSRID]--接收人ID
      ,a.[FSRMC]--发送人名称
      ,a.[JSRMC]--接收人名称
      ,a.[JSRIDLB]--接收人ID列表
      ,a.[JSRMCLB]--接收人名称列表
      ,a.[BT]--标题
      ,a.[NR]--内容
      ,a.[FJ]--附件
      ,a.[FSSJ]--发送时间
      ,a.[SFYD]--是否已阅读
      ,a.[YJLX]--邮件类型
      ,b.SCHOOLNAME as b_SCHOOL_SCHOOLNAME--学校名称
      ,b.SCHOOLTYPE as b_SCHOOL_SCHOOLTYPE--学校类型
      ,b.XNID as b_SCHOOL_XNID--学年ID
      ,b.XQID as b_SCHOOL_XQID--学期ID
      ,b.MatchURL as b_SCHOOL_MatchURL--匹配url
      ,b.LogLevel as b_SCHOOL_LogLevel--日志级别
      ,c.SCHOOLID as c_USER_SCHOOLID--学校ID
      ,c.APPID as c_USER_APPID--应用ID
      ,c.PWD as c_USER_PWD--密码
      ,c.STATUS as c_USER_STATUS--用户状态
      ,c.USERTYPE as c_USER_USERTYPE--用户类别
      ,c.USERID as c_USER_USERID--用户ID
      ,c.ROLEIDLst as c_USER_ROLEIDLst--用户角色
      ,c.XM as c_USER_XM--姓名
      ,c.XB as c_USER_XB--性别
      ,c.QQ as c_USER_QQ--QQ
      ,c.DZYJ as c_USER_DZYJ--电子邮件
      ,c.LXDH as c_USER_LXDH--联系电话
      ,c.ZJDLSJ as c_USER_ZJDLSJ--最近一次登录时间
      ,c.DLCGCS as c_USER_DLCGCS--登录成功次数
      ,c.YHCJSJ as c_USER_YHCJSJ--用户创建时间
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
      ,e.SCHOOLID as e_USER_SCHOOLID--学校ID
      ,e.APPID as e_USER_APPID--应用ID
      ,e.PWD as e_USER_PWD--密码
      ,e.STATUS as e_USER_STATUS--用户状态
      ,e.USERTYPE as e_USER_USERTYPE--用户类别
      ,e.USERID as e_USER_USERID--用户ID
      ,e.ROLEIDLst as e_USER_ROLEIDLst--用户角色
      ,e.XM as e_USER_XM--姓名
      ,e.XB as e_USER_XB--性别
      ,e.QQ as e_USER_QQ--QQ
      ,e.DZYJ as e_USER_DZYJ--电子邮件
      ,e.LXDH as e_USER_LXDH--联系电话
      ,e.ZJDLSJ as e_USER_ZJDLSJ--最近一次登录时间
      ,e.DLCGCS as e_USER_DLCGCS--登录成功次数
      ,e.YHCJSJ as e_USER_YHCJSJ--用户创建时间
      ,f.MC as f_SFBZ_MC--名称

FROM dbo.EDU_OAXT_11_A01_YJ AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS c ON a.YYZID = c.LOGINNAME /*拥有者ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.FSRID = d.LOGINNAME /*发送人ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS e ON a.JSRID = e.LOGINNAME /*接收人ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS f ON a.SFYD = f.DM /*是否已阅读*/
GO
