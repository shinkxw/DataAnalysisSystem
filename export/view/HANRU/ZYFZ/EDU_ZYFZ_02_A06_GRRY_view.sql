
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
      ,a.[HJRID]--获奖人ID
      ,a.[NR]--内容
      ,a.[BZ]--备注
      ,a.[TJSJ]--添加时间
      ,a.[SHZT]--审核状态
      ,c.SCHOOLID as c_RYJB_SCHOOLID--荣誉级别表 学校
      ,c.RYJBMC as c_RYJB_RYJBMC--荣誉级别表 荣誉级别名称
      ,d.SCHOOLID as d_XN_SCHOOLID--学年表 学校名
      ,d.XN as d_XN_XN--学年表 学年
      ,e.SCHOOLID as e_USER_SCHOOLID--应用系统用户表 学校ID
      ,e.APPID as e_USER_APPID--应用系统用户表 应用ID
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
      ,e.YHRY as e_USER_YHRY--应用系统用户表 用户荣誉
      ,e.YHJF as e_USER_YHJF--应用系统用户表 用户积分

FROM dbo.EDU_ZYFZ_02_A06_GRRY AS a LEFT OUTER JOIN
      dbo.EDU_ZYFZ_01_A03_RYJB AS c ON a.RYJBID = c.ID /*荣誉级别ID*/ LEFT OUTER JOIN
      dbo.EDU_SYS_01_XN AS d ON a.SSXNID = d.ID /*所属学年ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS e ON a.HJRID = e.LOGINNAME /*获奖人ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校*/
GO
