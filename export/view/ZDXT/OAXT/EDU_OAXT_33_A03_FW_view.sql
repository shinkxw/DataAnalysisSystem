
--发文表
CREATE VIEW [dbo].[VIEW_EDU_OAXT_33_A03_FW_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[GWID]--公文ID
      ,a.[FZ]--附注
      ,a.[SHRID]--审核人ID
      ,a.[DXTZZT]--短信通知状态
      ,a.[SHPZ]--审核批注
      ,a.[GZID]--公章ID
      ,a.[ZYCD]--重要程度
      ,a.[SFHF]--是否需要回复
      ,a.[FSDW]--发送单位或科室
      ,a.[FSZLY]--发送者留言
      ,a.[FSRID]--发送人ID
      ,a.[BSZT]--报审状态
      ,a.[SHZT]--审核状态
      ,a.[FSZT]--发送状态
      ,a.[BJZT]--办结状态
      ,c.SCHOOLID as c_GWJCXX_SCHOOLID--公文基础信息表 学校
      ,c.HTWZ as c_GWJCXX_HTWZ--公文基础信息表 红头文字
      ,c.GWBT as c_GWJCXX_GWBT--公文基础信息表 公文标题
      ,c.SJ as c_GWJCXX_SJ--公文基础信息表 时间
      ,c.ZW as c_GWJCXX_ZW--公文基础信息表 正文
      ,c.BH as c_GWJCXX_BH--公文基础信息表 编号
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
      ,e.SCHOOLID as e_GZ_SCHOOLID--公章信息表 学校
      ,e.QZTPLJ as e_GZ_QZTPLJ--公章信息表 签章图片路径
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
      ,f.BMID as f_USER_BMID--应用系统用户表 部门ID

FROM dbo.EDU_OAXT_33_A03_FW AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_33_A01_GWJCXX AS c ON a.GWID = c.ID /*公文ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.SHRID = d.LOGINNAME /*审核人ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_33_A02_GZ AS e ON a.GZID = e.ID /*公章ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS f ON a.FSRID = f.LOGINNAME /*发送人ID*/ AND a.SCHOOLID = f.SCHOOLID /*学校*/
GO
