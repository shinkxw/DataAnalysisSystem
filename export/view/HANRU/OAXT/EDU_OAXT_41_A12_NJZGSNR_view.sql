
--年级组公示内容表
CREATE VIEW [dbo].[VIEW_EDU_OAXT_41_A12_NJZGSNR_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校ID
      ,a.[LBID]--类别ID
      ,a.[FBYHID]--发布用户ID
      ,a.[FBSJ]--发布时间
      ,a.[BT]--标题
      ,a.[NR]--内容
      ,c.SCHOOLID as c_NJZGSLB_SCHOOLID--年级组公示类别表 学校ID
      ,c.LBMC as c_NJZGSLB_LBMC--年级组公示类别表 类别名称
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

FROM dbo.EDU_OAXT_41_A12_NJZGSNR AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_41_A11_NJZGSLB AS c ON a.LBID = c.ID /*类别ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.FBYHID = d.LOGINNAME /*发布用户ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校ID*/
GO
