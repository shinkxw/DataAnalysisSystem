
--会议纪要表
CREATE VIEW [dbo].[VIEW_EDU_OAXT_22_A04_HYJY_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[HYID]--会议ID
      ,a.[HYJYNR]--会议纪要内容
      ,a.[JLRID]--记录人
      ,a.[JLSJ]--记录时间
      ,c.SCHOOLID as c_HYSQ_SCHOOLID--会议申请表 学校
      ,c.LCSLID as c_HYSQ_LCSLID--会议申请表 流程实例ID
      ,c.HYMC as c_HYSQ_HYMC--会议申请表 会议名称
      ,c.HYNR as c_HYSQ_HYNR--会议申请表 会议内容
      ,c.ZCRID as c_HYSQ_ZCRID--会议申请表 主持人
      ,c.JLRID as c_HYSQ_JLRID--会议申请表 记录人
      ,c.HYJB as c_HYSQ_HYJB--会议申请表 会议级别
      ,c.HYDDID as c_HYSQ_HYDDID--会议申请表 会议地点ID
      ,c.HYDZ as c_HYSQ_HYDZ--会议申请表 会议地址
      ,c.YHRYIDLB as c_HYSQ_YHRYIDLB--会议申请表 与会人员ID列表
      ,c.YHRYXMLB as c_HYSQ_YHRYXMLB--会议申请表 与会人员姓名列表
      ,c.KSSJ as c_HYSQ_KSSJ--会议申请表 开始时间
      ,c.JSSJ as c_HYSQ_JSSJ--会议申请表 结束时间
      ,c.SQSJ as c_HYSQ_SQSJ--会议申请表 申请时间
      ,c.SQZT as c_HYSQ_SQZT--会议申请表 申请状态
      ,c.SQRID as c_HYSQ_SQRID--会议申请表 申请人ID
      ,c.BZ as c_HYSQ_BZ--会议申请表 备注
      ,c.FJ as c_HYSQ_FJ--会议申请表 附件
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
      ,d.YHRY as d_USER_YHRY--应用系统用户表 用户荣誉
      ,d.YHJF as d_USER_YHJF--应用系统用户表 用户积分
      ,d.BMID as d_USER_BMID--应用系统用户表 部门ID

FROM dbo.EDU_OAXT_22_A04_HYJY AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_22_A02_HYSQ AS c ON a.HYID = c.ID /*会议ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.JLRID = d.LOGINNAME /*记录人*/ AND a.SCHOOLID = d.SCHOOLID /*学校*/
GO
