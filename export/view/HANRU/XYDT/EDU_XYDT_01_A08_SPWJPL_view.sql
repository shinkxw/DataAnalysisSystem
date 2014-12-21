
--视频文件评论
CREATE VIEW [dbo].[VIEW_EDU_XYDT_01_A08_SPWJPL_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[SPWJID]--视频文件ID
      ,a.[PL]--评论
      ,a.[PLRID]--评论人ID
      ,a.[PLSJ]--评论时间
      ,c.SCHOOLID as c_SPWJ_SCHOOLID--视频文件 学校
      ,c.SPMLID as c_SPWJ_SPMLID--视频文件 视频目录ID
      ,c.ZYBT as c_SPWJ_ZYBT--视频文件 视频标题
      ,c.GJZ as c_SPWJ_GJZ--视频文件 关键字
      ,c.SYXZ as c_SPWJ_SYXZ--视频文件 使用限制
      ,c.LY as c_SPWJ_LY--视频文件 来源
      ,c.WBSPLJ as c_SPWJ_WBSPLJ--视频文件 外部视频链接
      ,c.YYZID as c_SPWJ_YYZID--视频文件 拥有者ID
      ,c.SPMC as c_SPWJ_SPMC--视频文件 视频名称
      ,c.SPDX as c_SPWJ_SPDX--视频文件 视频大小
      ,c.SPLJ as c_SPWJ_SPLJ--视频文件 视频路径
      ,c.SPLXID as c_SPWJ_SPLXID--视频文件 视频类型ID
      ,c.SPPJ as c_SPWJ_SPPJ--视频文件 视频评级
      ,c.SLT as c_SPWJ_SLT--视频文件 缩略图
      ,c.SCSJ as c_SPWJ_SCSJ--视频文件 上传时间
      ,c.LLRC as c_SPWJ_LLRC--视频文件 浏览人次
      ,c.XZRC as c_SPWJ_XZRC--视频文件 下载人次
      ,c.PLRC as c_SPWJ_PLRC--视频文件 评论人次
      ,c.PFRC as c_SPWJ_PFRC--视频文件 评分人次
      ,c.SHZT as c_SPWJ_SHZT--视频文件 审核状态
      ,c.SHRID as c_SPWJ_SHRID--视频文件 审核人ID
      ,c.SHSJ as c_SPWJ_SHSJ--视频文件 审核时间
      ,c.ZYDXKB as c_SPWJ_ZYDXKB--视频文件 资源大小(KB)
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

FROM dbo.EDU_XYDT_01_A08_SPWJPL AS a LEFT OUTER JOIN
      dbo.EDU_XYDT_01_A06_SPWJ AS c ON a.SPWJID = c.ID /*视频文件ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.PLRID = d.LOGINNAME /*评论人ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校*/
GO
