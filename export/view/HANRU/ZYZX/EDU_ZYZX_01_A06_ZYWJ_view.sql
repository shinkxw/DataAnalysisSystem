
--资源文件
CREATE VIEW [dbo].[VIEW_EDU_ZYZX_01_A06_ZYWJ_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[ZYFLID]--资源类型
      ,a.[ZYMLID]--资源目录
      ,a.[ZYBT]--资源标题
      ,a.[BZ]--备注
      ,a.[GJZ]--关键字
      ,a.[YYZID]--拥有者ID
      ,a.[ZYLLLX]--资源浏览类型
      ,a.[WJLXID]--文件类型
      ,a.[ZYNR]--资源内容
      ,a.[FJMC]--附件名称
      ,a.[FJDX]--附件大小
      ,a.[FJLJ]--附件路径
      ,a.[ZYZT]--资源状态
      ,a.[ZYPJ]--资源评级
      ,a.[SCSJ]--上传时间
      ,a.[SYNJ]--适用年级
      ,a.[SYXK]--适用学科
      ,a.[LLRC]--浏览人次
      ,a.[SHZT]--审核状态
      ,a.[SHRID]--审核人ID
      ,a.[SHSJ]--审核时间
      ,c.SCHOOLID as c_ZYFL_SCHOOLID--资源分类 学校
      ,c.FLMC as c_ZYFL_FLMC--资源分类 分类名称
      ,c.FFLID as c_ZYFL_FFLID--资源分类 父分类ID
      ,c.PLSX as c_ZYFL_PLSX--资源分类 排列顺序
      ,c.SFSYZS as c_ZYFL_SFSYZS--资源分类 是否首页展示
      ,c.SFQY as c_ZYFL_SFQY--资源分类 是否启用
      ,d.SCHOOLID as d_ZYML_SCHOOLID--资源目录 学校
      ,d.MLMC as d_ZYML_MLMC--资源目录 目录名称
      ,d.FMLID as d_ZYML_FMLID--资源目录 父目录ID
      ,d.PLSX as d_ZYML_PLSX--资源目录 排列顺序
      ,d.YYZID as d_ZYML_YYZID--资源目录 拥有者ID
      ,d.WJLXIDLB as d_ZYML_WJLXIDLB--资源目录 上传文件类型ID列表
      ,d.FWQX as d_ZYML_FWQX--资源目录 访问权限
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
      ,f.SCHOOLID as f_WJLX_SCHOOLID--文件类型 学校
      ,f.LXMC as f_WJLX_LXMC--文件类型 类型名称
      ,g.SCHOOLID as g_KCK_SCHOOLID--课程库表 学校
      ,g.KCDM as g_KCK_KCDM--课程库表 课程代码
      ,g.KCMC as g_KCK_KCMC--课程库表 课程名称
      ,h.SCHOOLID as h_USER_SCHOOLID--应用系统用户表 学校ID
      ,h.APPID as h_USER_APPID--应用系统用户表 应用ID
      ,h.PWD as h_USER_PWD--应用系统用户表 密码
      ,h.STATUS as h_USER_STATUS--应用系统用户表 用户状态
      ,h.USERTYPE as h_USER_USERTYPE--应用系统用户表 用户类别
      ,h.USERID as h_USER_USERID--应用系统用户表 用户ID
      ,h.ROLEIDLst as h_USER_ROLEIDLst--应用系统用户表 用户角色
      ,h.XM as h_USER_XM--应用系统用户表 姓名
      ,h.XB as h_USER_XB--应用系统用户表 性别
      ,h.QQ as h_USER_QQ--应用系统用户表 QQ
      ,h.DZYJ as h_USER_DZYJ--应用系统用户表 电子邮件
      ,h.LXDH as h_USER_LXDH--应用系统用户表 联系电话
      ,h.ZJDLSJ as h_USER_ZJDLSJ--应用系统用户表 最近一次登录时间
      ,h.DLCGCS as h_USER_DLCGCS--应用系统用户表 登录成功次数
      ,h.YHCJSJ as h_USER_YHCJSJ--应用系统用户表 用户创建时间

FROM dbo.EDU_ZYZX_01_A06_ZYWJ AS a LEFT OUTER JOIN
      dbo.EDU_ZYZX_01_A01_ZYFL AS c ON a.ZYFLID = c.ID /*资源类型*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZYZX_01_A02_ZYML AS d ON a.ZYMLID = d.ID /*资源目录*/ AND a.SCHOOLID = d.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS e ON a.YYZID = e.LOGINNAME /*拥有者ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZYZX_01_A03_WJLX AS f ON a.WJLXID = f.ID /*文件类型*/ AND a.SCHOOLID = f.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZYZX_03_A01_KCK AS g ON a.SYXK = g.ID /*适用学科*/ AND a.SCHOOLID = g.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS h ON a.SHRID = h.LOGINNAME /*审核人ID*/ AND a.SCHOOLID = h.SCHOOLID /*学校*/
GO
