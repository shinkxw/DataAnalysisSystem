
--通知阅读记录
CREATE VIEW [dbo].[VIEW_EDU_OAXT_10_A02_TZYDJL_DISP]
AS
SELECT a.[ID]--通知阅读记录ID
      ,a.[SCHOOLID]--学校ID
      ,a.[TZID]--通知ID
      ,a.[BTZRID]--被通知人ID
      ,a.[YDRQ]--阅读日期
      ,a.[SFYD]--是否已阅读
      ,a.[SCZT]--删除状态
      ,c.SCHOOLID as c_TZ_SCHOOLID--通知数据表 学校ID
      ,c.FSRID as c_TZ_FSRID--通知数据表 发送人ID
      ,c.FSRLB as c_TZ_FSRLB--通知数据表 发送人类别
      ,c.BT as c_TZ_BT--通知数据表 标题
      ,c.NR as c_TZ_NR--通知数据表 内容
      ,c.FJ as c_TZ_FJ--通知数据表 附件
      ,c.TJRQ as c_TZ_TJRQ--通知数据表 添加日期
      ,c.JSRS as c_TZ_JSRS--通知数据表 接收人数
      ,c.JSRIDLB as c_TZ_JSRIDLB--通知数据表 接收人ID列表
      ,c.JSRMZLB as c_TZ_JSRMZLB--通知数据表 接收人名字列表
      ,c.YYDRIDLB as c_TZ_YYDRIDLB--通知数据表 已阅读人ID列表
      ,c.YYDRMZLB as c_TZ_YYDRMZLB--通知数据表 已阅读人名字列表
      ,c.FSZT as c_TZ_FSZT--通知数据表 发送状态
      ,c.FBBM as c_TZ_FBBM--通知数据表 发布部门
      ,d.SCHOOLID as d_USER_SCHOOLID--应用系统用户表 学校ID
      ,d.APPID as d_USER_APPID--应用系统用户表 应用ID
      ,'' as d_USER_PWD--应用系统用户表 密码
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
      ,e.MC as e_SFBZ_MC--是否标志代码表 名称

FROM dbo.EDU_OAXT_10_A02_TZYDJL AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_10_A01_TZ AS c ON a.TZID = c.ID /*通知ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.BTZRID = d.LOGINNAME /*被通知人ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS e ON a.SFYD = e.DM /*是否已阅读*/
GO
