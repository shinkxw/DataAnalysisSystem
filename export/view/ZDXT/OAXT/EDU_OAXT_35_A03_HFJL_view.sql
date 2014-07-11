
--回复记录表
CREATE VIEW [dbo].[VIEW_EDU_OAXT_35_A03_HFJL_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校ID
      ,a.[RWID]--任务ID
      ,a.[HFRID]--回复人ID
      ,a.[HFNR]--回复内容
      ,a.[HSSJ]--回复时间
      ,c.SCHOOLID as c_RW_SCHOOLID--任务表 学校ID
      ,c.RWBT as c_RW_RWBT--任务表 任务标题
      ,c.JSYHIDLB as c_RW_JSYHIDLB--任务表 接收用户ID列表
      ,c.JSYHXMLB as c_RW_JSYHXMLB--任务表 接收用户姓名列表
      ,c.JZRQ as c_RW_JZRQ--任务表 截止日期
      ,c.NR as c_RW_NR--任务表 内容
      ,c.FBRID as c_RW_FBRID--任务表 发布人ID
      ,c.FBRXM as c_RW_FBRXM--任务表 发布人姓名
      ,c.FBBMMC as c_RW_FBBMMC--任务表 发布部门名称
      ,c.FBSJ as c_RW_FBSJ--任务表 发布时间
      ,c.RWZT as c_RW_RWZT--任务表 任务状态
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
      ,d.BMID as d_USER_BMID--应用系统用户表 部门ID

FROM dbo.EDU_OAXT_35_A03_HFJL AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_35_A01_RW AS c ON a.RWID = c.ID /*任务ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.HFRID = d.LOGINNAME /*回复人ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校ID*/
GO
