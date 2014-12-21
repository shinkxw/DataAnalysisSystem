
--资源文件
CREATE VIEW [dbo].[VIEW_EDU_ZYZX_01_A06_ZYWJ_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[ZYMLID]--资源目录
      ,a.[ZYBT]--资源标题
      ,a.[SYDX]--适用对象
      ,a.[GJZ]--关键字
      ,a.[JJ]--简介
      ,a.[ZYLX]--资源类型
      ,a.[SYXZ]--使用限制
      ,a.[LY]--来源
      ,a.[YYZID]--拥有者ID
      ,a.[ZYMC]--资源名称
      ,a.[ZYDX]--资源大小
      ,a.[ZYLJ]--资源路径
      ,a.[WJLXID]--文件类型
      ,a.[ZYPJ]--资源评级
      ,a.[SLT]--缩略图
      ,a.[SCSJ]--上传时间
      ,a.[LLRC]--浏览人次
      ,a.[XZRC]--下载人次
      ,a.[PLRC]--评论人次
      ,a.[PFRC]--评分人次
      ,a.[ZYZT]--资源状态
      ,a.[SHZT]--审核状态
      ,a.[SHRID]--审核人ID
      ,a.[SHSJ]--审核时间
      ,a.[ZYDXKB]--资源大小(KB)
      ,c.SCHOOLID as c_ZYML_SCHOOLID--资源目录 学校
      ,c.MLMC as c_ZYML_MLMC--资源目录 目录名称
      ,c.FMLID as c_ZYML_FMLID--资源目录 父目录ID
      ,c.PLSX as c_ZYML_PLSX--资源目录 排列顺序
      ,c.SFSYZS as c_ZYML_SFSYZS--资源目录 是否首页展示
      ,c.SFQY as c_ZYML_SFQY--资源目录 是否启用
      ,c.URL as c_ZYML_URL--资源目录 网址
      ,c.FMLIDLB as c_ZYML_FMLIDLB--资源目录 父目录ID列表
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
      ,e.SCHOOLID as e_WJLX_SCHOOLID--文件类型 学校
      ,e.LXMC as e_WJLX_LXMC--文件类型 类型名称
      ,f.SCHOOLID as f_USER_SCHOOLID--应用系统用户表 学校ID
      ,f.APPID as f_USER_APPID--应用系统用户表 应用ID
      ,'' as f_USER_PWD--应用系统用户表 密码
      ,f.STATUS as f_USER_STATUS--应用系统用户表 用户状态
      ,f.USERTYPE as f_USER_USERTYPE--应用系统用户表 用户类别
      ,f.USERID as f_USER_USERID--应用系统用户表 用户ID
      ,f.ROLEIDLst as f_USER_ROLEIDLst--应用系统用户表 用户角色
      ,f.XM as f_USER_XM--应用系统用户表 姓名
      ,f.XB as f_USER_XB--应用系统用户表 性别
      ,f.QQ as f_USER_QQ--应用系统用户表 QQ
      ,f.DZYJ as f_USER_DZYJ--应用系统用户表 电子邮件
      ,f.LXDH as f_USER_LXDH--应用系统用户表 联系电话
      ,f.ZJDLSJ as f_USER_ZJDLSJ--应用系统用户表 最近一次登录时间
      ,f.DLCGCS as f_USER_DLCGCS--应用系统用户表 登录成功次数
      ,f.YHCJSJ as f_USER_YHCJSJ--应用系统用户表 用户创建时间
      ,f.YHRY as f_USER_YHRY--应用系统用户表 用户荣誉
      ,f.YHJF as f_USER_YHJF--应用系统用户表 用户积分

FROM dbo.EDU_ZYZX_01_A06_ZYWJ AS a LEFT OUTER JOIN
      dbo.EDU_ZYZX_01_A01_ZYML AS c ON a.ZYMLID = c.ID /*资源目录*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.YYZID = d.LOGINNAME /*拥有者ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZYZX_01_A03_WJLX AS e ON a.WJLXID = e.ID /*文件类型*/ AND a.SCHOOLID = e.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS f ON a.SHRID = f.LOGINNAME /*审核人ID*/ AND a.SCHOOLID = f.SCHOOLID /*学校*/
GO
