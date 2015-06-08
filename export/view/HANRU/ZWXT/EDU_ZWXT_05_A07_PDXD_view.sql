
--盘点详单表
CREATE VIEW [dbo].[VIEW_EDU_ZWXT_05_A07_PDXD_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校ID
      ,a.[PDID]--盘点ID
      ,a.[XCID]--校产ID
      ,a.[XCSL]--校产数量
      ,a.[PDSS]--盘点实数
      ,a.[BZ]--备注
      ,a.[BGYHID]--保管用户ID
      ,c.SCHOOLID as c_PD_SCHOOLID--盘点表 学校ID
      ,c.PDMC as c_PD_PDMC--盘点表 盘点名称
      ,c.KSSJ as c_PD_KSSJ--盘点表 开始时间
      ,c.JSSJ as c_PD_JSSJ--盘点表 结束时间
      ,c.BZ as c_PD_BZ--盘点表 备注
      ,d.SCHOOLID as d_XC_SCHOOLID--校产表 学校ID
      ,d.XCLXID as d_XC_XCLXID--校产表 校产类型ID
      ,d.XCMLID as d_XC_XCMLID--校产表 校产目录ID
      ,d.DQBGYHID as d_XC_DQBGYHID--校产表 当前保管用户ID
      ,d.MC as d_XC_MC--校产表 名称
      ,d.GG as d_XC_GG--校产表 规格
      ,d.DJ as d_XC_DJ--校产表 单价
      ,d.SL as d_XC_SL--校产表 数量
      ,d.DW as d_XC_DW--校产表 单位
      ,d.SCRQ as d_XC_SCRQ--校产表 生产日期
      ,d.RKSJ as d_XC_RKSJ--校产表 入库时间
      ,d.SCCJ as d_XC_SCCJ--校产表 生产厂家
      ,d.DQZT as d_XC_DQZT--校产表 当前状态
      ,d.BZ as d_XC_BZ--校产表 备注
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

FROM dbo.EDU_ZWXT_05_A07_PDXD AS a LEFT OUTER JOIN
      dbo.EDU_ZWXT_05_A06_PD AS c ON a.PDID = c.ID /*盘点ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZWXT_05_A03_XC AS d ON a.XCID = d.ID /*校产ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS e ON a.BGYHID = e.LOGINNAME /*保管用户ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校ID*/
GO
