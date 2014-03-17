
--个人荣誉表
CREATE VIEW [dbo].[VIEW_EDU_ZYFZ_02_A06_GRRY_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[RYMC]--荣誉名称
      ,a.[RYJBID]--荣誉级别ID
      ,a.[SSXNID]--所属学年ID
      ,a.[SJDW]--授奖单位
      ,a.[SJSJ]--授奖时间
      ,a.[SFGK]--是否公开
      ,a.[HJRID]--获奖人ID
      ,a.[NR]--内容
      ,a.[BZ]--备注
      ,a.[TJSJ]--添加时间
      ,c.SCHOOLID as c_RYJB_SCHOOLID--荣誉级别表 学校
      ,c.RYJBMC as c_RYJB_RYJBMC--荣誉级别表 荣誉级别名称
      ,d.SCHOOLID as d_XN_SCHOOLID--学年表 学校名
      ,d.XN as d_XN_XN--学年表 学年
      ,e.MC as e_SFBZ_MC--是否标志代码表 名称
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
      ,f.YHRY as f_USER_YHRY--应用系统用户表 用户荣誉
      ,f.YHJF as f_USER_YHJF--应用系统用户表 用户积分

FROM dbo.EDU_ZYFZ_02_A06_GRRY AS a LEFT OUTER JOIN
      dbo.EDU_ZYFZ_01_A03_RYJB AS c ON a.RYJBID = c.ID /*荣誉级别ID*/ LEFT OUTER JOIN
      dbo.EDU_SYS_01_XN AS d ON a.SSXNID = d.ID /*所属学年ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS e ON a.SFGK = e.DM /*是否公开*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS f ON a.HJRID = f.LOGINNAME /*获奖人ID*/ AND a.SCHOOLID = f.SCHOOLID /*学校*/
GO
