
--公文流转表
CREATE VIEW [dbo].[VIEW_EDU_OAXT_39_A03_GWLZ_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[SWBID]--收文表ID
      ,a.[XFRID]--下发人ID
      ,a.[JSRID]--接收人ID
      ,a.[XFSJ]--下发时间
      ,a.[QSZT]--签收状态
      ,a.[QSSJ]--签收时间
      ,a.[DXTZZT]--短信通知状态
      ,a.[CLZT]--处理状态
      ,a.[CLJG]--处理结果
      ,a.[FJ]--附件
      ,a.[SCZT]--删除状态
      ,a.[SHZT]--收回状态
      ,c.SCHOOLID as c_SWB_SCHOOLID--收文表 学校
      ,c.LBID as c_SWB_LBID--收文表 类别ID
      ,c.LWDW as c_SWB_LWDW--收文表 来文单位
      ,c.LWRQ as c_SWB_LWRQ--收文表 来文日期
      ,c.LWWH as c_SWB_LWWH--收文表 来文文号
      ,c.WJBT as c_SWB_WJBT--收文表 文件标题
      ,c.WJNR as c_SWB_WJNR--收文表 文件内容
      ,c.PSYJ as c_SWB_PSYJ--收文表 批示意见
      ,c.SFSH as c_SWB_SFSH--收文表 是否收回
      ,[cb].MC as c_SWB_SFSH_MC--是否标志代码表 名称
      ,c.XFWDLX as c_SWB_XFWDLX--收文表 下发文档类型
      ,c.SBWH as c_SWB_SBWH--收文表 收编文号
      ,d.SCHOOLID as d_USER_SCHOOLID--应用系统用户表 学校ID
      ,d.APPID as d_USER_APPID--应用系统用户表 应用ID
      ,d.PWD as d_USER_PWD--应用系统用户表 密码
      ,d.STATUS as d_USER_STATUS--应用系统用户表 用户状态
      ,d.USERTYPE as d_USER_USERTYPE--应用系统用户表 用户类别
      ,d.USERID as d_USER_USERID--应用系统用户表 用户ID
      ,d.ROLEIDLst as d_USER_ROLEIDLst--应用系统用户表 用户角色
      ,d.XM as d_USER_XM--应用系统用户表 姓名
      ,d.XB as d_USER_XB--应用系统用户表 性别
      ,d.QQ as d_USER_QQ--应用系统用户表 QQ
      ,d.DZYJ as d_USER_DZYJ--应用系统用户表 电子邮件
      ,d.LXDH as d_USER_LXDH--应用系统用户表 联系电话
      ,d.ZJDLSJ as d_USER_ZJDLSJ--应用系统用户表 最近一次登录时间
      ,d.DLCGCS as d_USER_DLCGCS--应用系统用户表 登录成功次数
      ,d.YHCJSJ as d_USER_YHCJSJ--应用系统用户表 用户创建时间
      ,d.YHRY as d_USER_YHRY--应用系统用户表 用户荣誉
      ,d.YHJF as d_USER_YHJF--应用系统用户表 用户积分
      ,e.SCHOOLID as e_USER_SCHOOLID--应用系统用户表 学校ID
      ,e.APPID as e_USER_APPID--应用系统用户表 应用ID
      ,e.PWD as e_USER_PWD--应用系统用户表 密码
      ,e.STATUS as e_USER_STATUS--应用系统用户表 用户状态
      ,e.USERTYPE as e_USER_USERTYPE--应用系统用户表 用户类别
      ,e.USERID as e_USER_USERID--应用系统用户表 用户ID
      ,e.ROLEIDLst as e_USER_ROLEIDLst--应用系统用户表 用户角色
      ,e.XM as e_USER_XM--应用系统用户表 姓名
      ,e.XB as e_USER_XB--应用系统用户表 性别
      ,e.QQ as e_USER_QQ--应用系统用户表 QQ
      ,e.DZYJ as e_USER_DZYJ--应用系统用户表 电子邮件
      ,e.LXDH as e_USER_LXDH--应用系统用户表 联系电话
      ,e.ZJDLSJ as e_USER_ZJDLSJ--应用系统用户表 最近一次登录时间
      ,e.DLCGCS as e_USER_DLCGCS--应用系统用户表 登录成功次数
      ,e.YHCJSJ as e_USER_YHCJSJ--应用系统用户表 用户创建时间
      ,e.YHRY as e_USER_YHRY--应用系统用户表 用户荣誉
      ,e.YHJF as e_USER_YHJF--应用系统用户表 用户积分

FROM dbo.EDU_OAXT_39_A03_GWLZ AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_39_A02_SWB AS c ON a.SWBID = c.ID /*收文表ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.XFRID = d.LOGINNAME /*下发人ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS e ON a.JSRID = e.LOGINNAME /*接收人ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [cb] ON c.SFSH = [cb].DM /*是否收回*/
GO
