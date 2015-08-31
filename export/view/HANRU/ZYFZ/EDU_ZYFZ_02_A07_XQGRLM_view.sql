
--学期个人栏目表
CREATE VIEW [dbo].[VIEW_EDU_ZYFZ_02_A07_XQGRLM_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[XQID]--学期ID
      ,a.[YHID]--用户ID
      ,a.[LMLBID]--栏目类别ID
      ,a.[LMMC]--栏目名称
      ,a.[JSZP]--教师自评
      ,a.[XXPD]--学校评定
      ,a.[LMLX]--栏目类型
      ,a.[SYMBID]--使用模板ID
      ,a.[PLSX]--排列顺序
      ,c.SCHOOLID as c_XQ_SCHOOLID--学期数据表 学校名
      ,c.XNID as c_XQ_XNID--学期数据表 学年
      ,c.XQM as c_XQ_XQM--学期数据表 学期码
      ,[cb].MC as c_XQ_XQM_MC--学期代码表 名称
      ,c.XQMC as c_XQ_XQMC--学期数据表 学期名称
      ,c.XQKSRQ as c_XQ_XQKSRQ--学期数据表 学期开始日期
      ,c.XQJSRQ as c_XQ_XQJSRQ--学期数据表 学期结束日期
      ,c.BaseProjectInfoID as c_XQ_BaseProjectInfoID--学期数据表 表BaseProjectInfo外键
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
      ,e.SCHOOLID as e_LMLB_SCHOOLID--栏目类别表 学校
      ,e.LMLBMC as e_LMLB_LMLBMC--栏目类别表 栏目类别名称
      ,e.PLSX as e_LMLB_PLSX--栏目类别表 排列顺序
      ,e.FLBID as e_LMLB_FLBID--栏目类别表 父类别ID
      ,f.SCHOOLID as f_GZMB_SCHOOLID--工作模板表 学校
      ,f.MBMC as f_GZMB_MBMC--工作模板表 模板名称
      ,f.MBNR as f_GZMB_MBNR--工作模板表 模板内容

FROM dbo.EDU_ZYFZ_02_A07_XQGRLM AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS c ON a.XQID = c.ID /*学期ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.YHID = d.LOGINNAME /*用户ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZYFZ_02_A01_LMLB AS e ON a.LMLBID = e.ID /*栏目类别ID*/ LEFT OUTER JOIN
      dbo.EDU_ZYFZ_01_A04_GZMB AS f ON a.SYMBID = f.ID /*使用模板ID*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS [cb] ON c.XQM = [cb].DM /*学期码*/
GO
