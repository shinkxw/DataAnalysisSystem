
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
      ,a.[NR]--内容
      ,a.[FBRID]--发布人ID
      ,a.[FBSJ]--发布时间
      ,a.[LLL]--浏览量
      ,a.[XQID]--学期ID
      ,a.[SHZT]--审核状态
      ,c.SCHOOLID as c_XQGRLM_SCHOOLID--学期个人栏目表 学校
      ,c.XQID as c_XQGRLM_XQID--学期个人栏目表 学期ID
      ,c.YHID as c_XQGRLM_YHID--学期个人栏目表 用户ID
      ,c.LMLBID as c_XQGRLM_LMLBID--学期个人栏目表 栏目类别ID
      ,c.LMMC as c_XQGRLM_LMMC--学期个人栏目表 栏目名称
      ,c.JSZP as c_XQGRLM_JSZP--学期个人栏目表 教师自评
      ,c.XXPD as c_XQGRLM_XXPD--学期个人栏目表 学校评定
      ,c.LMLX as c_XQGRLM_LMLX--学期个人栏目表 栏目类型
      ,d.SCHOOLID as d_XK_SCHOOLID--学科表 学校
      ,d.XKMC as d_XK_XKMC--学科表 学科名称
      ,e.SCHOOLID as e_NJ_SCHOOLID--年级表 学校
      ,e.NJMC as e_NJ_NJMC--年级表 年级名称
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
      ,g.SCHOOLID as g_XQ_SCHOOLID--学期数据表 学校名
      ,g.XNID as g_XQ_XNID--学期数据表 学年
      ,g.XQM as g_XQ_XQM--学期数据表 学期码
      ,[gb].MC as g_XQ_XQM_MC--学期代码表 名称
      ,g.XQMC as g_XQ_XQMC--学期数据表 学期名称
      ,g.XQKSRQ as g_XQ_XQKSRQ--学期数据表 学期开始日期
      ,g.XQJSRQ as g_XQ_XQJSRQ--学期数据表 学期结束日期

FROM dbo.EDU_ZYFZ_02_A04_GZNR AS a LEFT OUTER JOIN
      dbo.EDU_ZYFZ_02_A07_XQGRLM AS c ON a.SSLMID = c.ID /*所属栏目ID*/ LEFT OUTER JOIN
      dbo.EDU_ZYFZ_01_A01_XK AS d ON a.SSXKID = d.ID /*所属学科ID*/ LEFT OUTER JOIN
      dbo.EDU_ZYFZ_01_A02_NJ AS e ON a.SSNJID = e.ID /*所属年级ID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS f ON a.FBRID = f.LOGINNAME /*发布人ID*/ AND a.SCHOOLID = f.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS g ON a.XQID = g.ID /*学期ID*/ AND a.SCHOOLID = g.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS [gb] ON g.XQM = [gb].DM /*学期码*/
GO
