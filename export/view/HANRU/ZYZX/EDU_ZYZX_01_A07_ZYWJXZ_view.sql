
--资源文件下载
CREATE VIEW [dbo].[VIEW_EDU_ZYZX_01_A07_ZYWJXZ_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[ZYWJID]--资源文件ID
      ,a.[XZRID]--下载人ID
      ,a.[XZSJ]--下载时间
      ,c.SCHOOLID as c_ZYWJ_SCHOOLID--资源文件 学校
      ,c.ZYMLID as c_ZYWJ_ZYMLID--资源文件 资源目录
      ,c.ZYBT as c_ZYWJ_ZYBT--资源文件 资源标题
      ,c.SYDX as c_ZYWJ_SYDX--资源文件 适用对象
      ,c.GJZ as c_ZYWJ_GJZ--资源文件 关键字
      ,c.JJ as c_ZYWJ_JJ--资源文件 简介
      ,c.ZYLX as c_ZYWJ_ZYLX--资源文件 资源类型
      ,c.SYXZ as c_ZYWJ_SYXZ--资源文件 使用限制
      ,c.LY as c_ZYWJ_LY--资源文件 来源
      ,c.YYZID as c_ZYWJ_YYZID--资源文件 拥有者ID
      ,c.ZYMC as c_ZYWJ_ZYMC--资源文件 资源名称
      ,c.ZYDX as c_ZYWJ_ZYDX--资源文件 资源大小
      ,c.ZYLJ as c_ZYWJ_ZYLJ--资源文件 资源路径
      ,c.WJLXID as c_ZYWJ_WJLXID--资源文件 文件类型
      ,c.ZYPJ as c_ZYWJ_ZYPJ--资源文件 资源评级
      ,c.SLT as c_ZYWJ_SLT--资源文件 缩略图
      ,c.SCSJ as c_ZYWJ_SCSJ--资源文件 上传时间
      ,c.LLRC as c_ZYWJ_LLRC--资源文件 浏览人次
      ,c.XZRC as c_ZYWJ_XZRC--资源文件 下载人次
      ,c.PLRC as c_ZYWJ_PLRC--资源文件 评论人次
      ,c.PFRC as c_ZYWJ_PFRC--资源文件 评分人次
      ,c.ZYZT as c_ZYWJ_ZYZT--资源文件 资源状态
      ,c.SHZT as c_ZYWJ_SHZT--资源文件 审核状态
      ,c.SHRID as c_ZYWJ_SHRID--资源文件 审核人ID
      ,c.SHSJ as c_ZYWJ_SHSJ--资源文件 审核时间
      ,c.ZYDXKB as c_ZYWJ_ZYDXKB--资源文件 资源大小(KB)
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

FROM dbo.EDU_ZYZX_01_A07_ZYWJXZ AS a LEFT OUTER JOIN
      dbo.EDU_ZYZX_01_A06_ZYWJ AS c ON a.ZYWJID = c.ID /*资源文件ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.XZRID = d.LOGINNAME /*下载人ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校*/
GO
