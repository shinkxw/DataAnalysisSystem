
--工作内容表
CREATE VIEW [dbo].[VIEW_EDU_ZYFZ_02_A04_GZNR_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[BT]--标题
      ,a.[GJC]--关键词
      ,a.[SSLMID]--所属栏目ID
      ,a.[SSXKID]--所属学科ID
      ,a.[SSNJID]--所属年级ID
      ,a.[SFGK]--是否公开
      ,a.[NR]--内容
      ,a.[FBRID]--发布人ID
      ,a.[FBSJ]--发布时间
      ,a.[LLL]--浏览量
      ,c.SCHOOLID as c_GZNRLM_SCHOOLID--工作内容栏目表 学校
      ,c.LMMC as c_GZNRLM_LMMC--工作内容栏目表 栏目名称
      ,c.LMLBID as c_GZNRLM_LMLBID--工作内容栏目表 栏目类别ID
      ,c.SYMBID as c_GZNRLM_SYMBID--工作内容栏目表 使用模板ID
      ,c.PLFS as c_GZNRLM_PLFS--工作内容栏目表 排列方式
      ,c.PLSX as c_GZNRLM_PLSX--工作内容栏目表 排列顺序
      ,c.NMLLLM as c_GZNRLM_NMLLLM--工作内容栏目表 匿名浏览栏目
      ,d.SCHOOLID as d_XK_SCHOOLID--学科表 学校
      ,d.XKMC as d_XK_XKMC--学科表 学科名称
      ,e.SCHOOLID as e_NJ_SCHOOLID--年级表 学校
      ,e.NJMC as e_NJ_NJMC--年级表 年级名称
      ,f.MC as f_SFBZ_MC--是否标志代码表 名称
      ,g.SCHOOLID as g_USER_SCHOOLID--应用系统用户表 学校ID
      ,g.APPID as g_USER_APPID--应用系统用户表 应用ID
      ,g.PWD as g_USER_PWD--应用系统用户表 密码
      ,g.STATUS as g_USER_STATUS--应用系统用户表 用户状态
      ,g.USERTYPE as g_USER_USERTYPE--应用系统用户表 用户类别
      ,g.USERID as g_USER_USERID--应用系统用户表 用户ID
      ,g.ROLEIDLst as g_USER_ROLEIDLst--应用系统用户表 用户角色
      ,g.XM as g_USER_XM--应用系统用户表 姓名
      ,g.XB as g_USER_XB--应用系统用户表 性别
      ,g.QQ as g_USER_QQ--应用系统用户表 QQ
      ,g.DZYJ as g_USER_DZYJ--应用系统用户表 电子邮件
      ,g.LXDH as g_USER_LXDH--应用系统用户表 联系电话
      ,g.ZJDLSJ as g_USER_ZJDLSJ--应用系统用户表 最近一次登录时间
      ,g.DLCGCS as g_USER_DLCGCS--应用系统用户表 登录成功次数
      ,g.YHCJSJ as g_USER_YHCJSJ--应用系统用户表 用户创建时间
      ,g.YHRY as g_USER_YHRY--应用系统用户表 用户荣誉
      ,g.YHJF as g_USER_YHJF--应用系统用户表 用户积分

FROM dbo.EDU_ZYFZ_02_A04_GZNR AS a LEFT OUTER JOIN
      dbo.EDU_ZYFZ_02_A02_GZNRLM AS c ON a.SSLMID = c.ID /*所属栏目ID*/ LEFT OUTER JOIN
      dbo.EDU_ZYFZ_01_A01_XK AS d ON a.SSXKID = d.ID /*所属学科ID*/ LEFT OUTER JOIN
      dbo.EDU_ZYFZ_01_A02_NJ AS e ON a.SSNJID = e.ID /*所属年级ID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS f ON a.SFGK = f.DM /*是否公开*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS g ON a.FBRID = g.LOGINNAME /*发布人ID*/ AND a.SCHOOLID = g.SCHOOLID /*学校*/
GO
