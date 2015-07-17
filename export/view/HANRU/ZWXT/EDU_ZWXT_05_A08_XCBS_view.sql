
--校产报失表
CREATE VIEW [dbo].[VIEW_EDU_ZWXT_05_A08_XCBS_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校ID
      ,a.[XCID]--校产ID
      ,a.[BSYHID]--报失用户ID
      ,a.[BSSJ]--报失时间
      ,a.[SHYHID]--审核用户ID
      ,a.[SHSJ]--审核时间
      ,a.[BSZT]--报失状态
      ,a.[BSSM]--报失说明
      ,c.SCHOOLID as c_XC_SCHOOLID--校产表 学校ID
      ,c.XCLXID as c_XC_XCLXID--校产表 校产类型ID
      ,c.XCMLID as c_XC_XCMLID--校产表 校产目录ID
      ,c.DQBGYHID as c_XC_DQBGYHID--校产表 当前保管用户ID
      ,c.MC as c_XC_MC--校产表 名称
      ,c.GG as c_XC_GG--校产表 规格
      ,c.DJ as c_XC_DJ--校产表 单价
      ,c.SL as c_XC_SL--校产表 数量
      ,c.DW as c_XC_DW--校产表 单位
      ,c.SCRQ as c_XC_SCRQ--校产表 生产日期
      ,c.RKSJ as c_XC_RKSJ--校产表 入库时间
      ,c.SCCJ as c_XC_SCCJ--校产表 生产厂家
      ,c.DQZT as c_XC_DQZT--校产表 当前状态
      ,c.BZ as c_XC_BZ--校产表 备注
      ,c.XCBH as c_XC_XCBH--校产表 校产编号
      ,c.CFDD as c_XC_CFDD--校产表 存放地点
      ,c.ZXRQ as c_XC_ZXRQ--校产表 注销日期
      ,c.BYL as c_XC_BYL--校产表 备用列
      ,c.CFBH as c_XC_CFBH--校产表 拆分编号
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
      ,e.SCHOOLID as e_USER_SCHOOLID--应用系统用户表 学校ID
      ,e.APPID as e_USER_APPID--应用系统用户表 应用ID
      ,'' as e_USER_PWD--应用系统用户表 密码
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

FROM dbo.EDU_ZWXT_05_A08_XCBS AS a LEFT OUTER JOIN
      dbo.EDU_ZWXT_05_A03_XC AS c ON a.XCID = c.ID /*校产ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.BSYHID = d.LOGINNAME /*报失用户ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS e ON a.SHYHID = e.LOGINNAME /*审核用户ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校ID*/
GO
