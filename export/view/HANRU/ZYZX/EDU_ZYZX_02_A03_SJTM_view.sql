
--试卷题目表
CREATE VIEW [dbo].[VIEW_EDU_ZYZX_02_A03_SJTM_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[KCH]--课程ID
      ,a.[ZSDID]--知识点ID
      ,a.[LXID]--类型ID
      ,a.[TM]--题目
      ,a.[NDXS]--难度系数
      ,a.[FZ]--分值
      ,a.[SHZT]--审核状态
      ,a.[SCRID]--上传人ID
      ,a.[SCSJ]--上传时间
      ,a.[SHRID]--审核人ID
      ,a.[SHSJ]--审核时间
      ,c.SCHOOLID as c_KC_SCHOOLID--课程数据子类表 学校ID
      ,c.KCMC as c_KC_KCMC--课程数据子类表 课程名称
      ,c.KCYWM as c_KC_KCYWM--课程数据子类表 课程英文名
      ,c.KCBM as c_KC_KCBM--课程数据子类表 课程别名
      ,c.KCJS as c_KC_KCJS--课程数据子类表 课程介绍
      ,c.XF as c_KC_XF--课程数据子类表 学分
      ,c.ZXS as c_KC_ZXS--课程数据子类表 总学时
      ,c.LLXS as c_KC_LLXS--课程数据子类表 理论学时
      ,c.SJXS as c_KC_SJXS--课程数据子类表 实践学时
      ,c.QTXS as c_KC_QTXS--课程数据子类表 其他学时
      ,c.CKSM as c_KC_CKSM--课程数据子类表 参考书目
      ,c.KKDW as c_KC_KKDW--课程数据子类表 开课单位
      ,c.KSXS as c_KC_KSXS--课程数据子类表 考试形式
      ,[cb].MC as c_KC_KSXS_MC--考试形式代码表 名称
      ,c.SKFSM as c_KC_SKFSM--课程数据子类表 授课方式码
      ,[cc].MC as c_KC_SKFSM_MC--授课方式代码表 名称
      ,c.KCFY as c_KC_KCFY--课程数据子类表 课程费用
      ,d.SCHOOLID as d_SJZSD_SCHOOLID--试卷知识点表 学校
      ,d.KCH as d_SJZSD_KCH--试卷知识点表 课程ID
      ,d.ZSDMC as d_SJZSD_ZSDMC--试卷知识点表 知识点名称
      ,e.SCHOOLID as e_SJLX_SCHOOLID--试题类型表 学校
      ,e.LXMC as e_SJLX_LXMC--试题类型表 类型名称
      ,f.SCHOOLID as f_USER_SCHOOLID--应用系统用户表 学校ID
      ,f.APPID as f_USER_APPID--应用系统用户表 应用ID
      ,f.PWD as f_USER_PWD--应用系统用户表 密码
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

FROM dbo.EDU_ZYZX_02_A03_SJTM AS a LEFT OUTER JOIN
      dbo.EDU_ZZJX_01_02_KC AS c ON a.KCH = c.KCH /*课程ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZYZX_02_A02_SJZSD AS d ON a.ZSDID = d.ID /*知识点ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZYZX_02_A01_SJLX AS e ON a.LXID = e.ID /*类型ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS f ON a.SCRID = f.LOGINNAME /*上传人ID*/ AND a.SCHOOLID = f.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS g ON a.SHRID = g.LOGINNAME /*审核人ID*/ AND a.SCHOOLID = g.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_JY_KSXS AS [cb] ON c.KSXS = [cb].DM /*考试形式*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS [cc] ON c.SKFSM = [cc].DM /*授课方式码*/
GO
