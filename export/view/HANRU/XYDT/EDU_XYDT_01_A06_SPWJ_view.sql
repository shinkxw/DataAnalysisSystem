
--视频文件
CREATE VIEW [dbo].[VIEW_EDU_XYDT_01_A06_SPWJ_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[SPMLID]--视频目录ID
      ,a.[ZYBT]--视频标题
      ,a.[GJZ]--关键字
      ,a.[SYXZ]--使用限制
      ,a.[LY]--来源
      ,a.[WBSPLJ]--外部视频链接
      ,a.[YYZID]--拥有者ID
      ,a.[SPMC]--视频名称
      ,a.[SPDX]--视频大小
      ,a.[SPLJ]--视频路径
      ,a.[SPLXID]--视频类型ID
      ,a.[SPPJ]--视频评级
      ,a.[SLT]--缩略图
      ,a.[SCSJ]--上传时间
      ,a.[LLRC]--浏览人次
      ,a.[XZRC]--下载人次
      ,a.[PLRC]--评论人次
      ,a.[PFRC]--评分人次
      ,a.[SHZT]--审核状态
      ,a.[SHRID]--审核人ID
      ,a.[SHSJ]--审核时间
      ,a.[ZYDXKB]--资源大小(KB)
      ,c.SCHOOLID as c_SPML_SCHOOLID--视频目录 学校
      ,c.MLMC as c_SPML_MLMC--视频目录 目录名称
      ,c.FMLID as c_SPML_FMLID--视频目录 父目录ID
      ,c.PLSX as c_SPML_PLSX--视频目录 排列顺序
      ,c.SFSYZS as c_SPML_SFSYZS--视频目录 是否首页展示
      ,c.SFQY as c_SPML_SFQY--视频目录 是否启用
      ,c.URL as c_SPML_URL--视频目录 网址
      ,c.FMLIDLB as c_SPML_FMLIDLB--视频目录 父目录ID列表
      ,d.SCHOOLID as d_USER_SCHOOLID--应用系统用户表 学校ID
      ,d.APPID as d_USER_APPID--应用系统用户表 应用ID
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
      ,e.SCHOOLID as e_SPLX_SCHOOLID--视频类型 学校
      ,e.LXMC as e_SPLX_LXMC--视频类型 类型名称
      ,f.SCHOOLID as f_USER_SCHOOLID--应用系统用户表 学校ID
      ,f.APPID as f_USER_APPID--应用系统用户表 应用ID
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

FROM dbo.EDU_XYDT_01_A06_SPWJ AS a LEFT OUTER JOIN
      dbo.EDU_XYDT_01_A01_SPML AS c ON a.SPMLID = c.ID /*视频目录ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.YYZID = d.LOGINNAME /*拥有者ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_XYDT_01_A03_SPLX AS e ON a.SPLXID = e.ID /*视频类型ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS f ON a.SHRID = f.LOGINNAME /*审核人ID*/ AND a.SCHOOLID = f.SCHOOLID /*学校*/
GO
