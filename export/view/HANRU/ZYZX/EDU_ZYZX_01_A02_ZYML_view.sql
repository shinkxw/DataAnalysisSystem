
--资源目录
CREATE VIEW [dbo].[VIEW_EDU_ZYZX_01_A02_ZYML_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[MLMC]--目录名称
      ,a.[FMLID]--父目录ID
      ,a.[PLSX]--排列顺序
      ,a.[YYZID]--拥有者ID
      ,a.[WJLXIDLB]--上传文件类型ID列表
      ,a.[FWQX]--访问权限
      ,c.SCHOOLID as c_ZYML_SCHOOLID--资源目录 学校
      ,c.MLMC as c_ZYML_MLMC--资源目录 目录名称
      ,c.FMLID as c_ZYML_FMLID--资源目录 父目录ID
      ,c.PLSX as c_ZYML_PLSX--资源目录 排列顺序
      ,c.YYZID as c_ZYML_YYZID--资源目录 拥有者ID
      ,c.WJLXIDLB as c_ZYML_WJLXIDLB--资源目录 上传文件类型ID列表
      ,c.FWQX as c_ZYML_FWQX--资源目录 访问权限
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

FROM dbo.EDU_ZYZX_01_A02_ZYML AS a LEFT OUTER JOIN
      dbo.EDU_ZYZX_01_A02_ZYML AS c ON a.FMLID = c.ID /*父目录ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.YYZID = d.LOGINNAME /*拥有者ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校*/
GO
