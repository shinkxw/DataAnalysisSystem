
--资料文件
CREATE VIEW [dbo].[VIEW_EDU_ZYZX_04_A03_ZLWJ_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[ZYMLID]--资源目录ID
      ,a.[BT]--标题
      ,a.[SCSJ]--上传时间
      ,a.[JJ]--简介
      ,a.[WJM]--文件名
      ,a.[SCYHID]--上传用户ID
      ,a.[ZLWJDX]--资料文件大小
      ,a.[ZLWJDXKB]--资料文件大小(KB)
      ,c.SCHOOLID as c_ZLWJML_SCHOOLID--资料文件目录 学校
      ,c.MLMC as c_ZLWJML_MLMC--资料文件目录 目录名称
      ,c.FMLID as c_ZLWJML_FMLID--资料文件目录 父目录ID
      ,c.PLSX as c_ZLWJML_PLSX--资料文件目录 排列顺序
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

FROM dbo.EDU_ZYZX_04_A03_ZLWJ AS a LEFT OUTER JOIN
      dbo.EDU_ZYZX_04_A01_ZLWJML AS c ON a.ZYMLID = c.ID /*资源目录ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.SCYHID = d.LOGINNAME /*上传用户ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校*/
GO
