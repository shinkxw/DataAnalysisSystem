
--试卷表
CREATE VIEW [dbo].[VIEW_EDU_ZYZX_02_A04_SJ_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[KCH]--课程ID
      ,a.[SYFF]--适用范围
      ,a.[SJMC]--试卷名称
      ,a.[NDXS]--难度系数
      ,a.[FZ]--分值
      ,a.[NR]--内容
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

FROM dbo.EDU_ZYZX_02_A04_SJ AS a LEFT OUTER JOIN
      dbo.EDU_ZZJX_01_02_KC AS c ON a.KCH = c.KCH /*课程ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.SCRID = d.LOGINNAME /*上传人ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS e ON a.SHRID = e.LOGINNAME /*审核人ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_JY_KSXS AS [cb] ON c.KSXS = [cb].DM /*考试形式*/ LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS [cc] ON c.SKFSM = [cc].DM /*授课方式码*/
GO
