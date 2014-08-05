
--报修设备表
CREATE VIEW [dbo].[VIEW_EDU_ZDGL_07_BXSB_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SBXHID]--设备型号ID
      ,a.[SXDWID]--送修单位ID
      ,a.[SXDWMC]--送修单位名称
      ,a.[SNM]--S/N码
      ,a.[SCRQ]--生产日期
      ,a.[SBLXMC]--设备类型名称
      ,a.[SCCJMC]--生产厂家名称
      ,a.[SBXHMC]--设备型号名称
      ,a.[BXZT]--保修状态
      ,a.[BXHTID]--保修合同ID
      ,a.[SBZT]--设备状态
      ,a.[WXZT]--维修状态
      ,a.[RKSJ]--入库时间
      ,a.[RKCZYHID]--入库操作用户
      ,a.[FXM]--返修码
      ,a.[WXJSSJ]--维修结束时间
      ,a.[WXJSDJYHID]--维修结束登记用户
      ,b.SBLXID as b_SBXH_SBLXID--设备型号配置表 设备类型ID
      ,b.SCCJID as b_SBXH_SCCJID--设备型号配置表 生产厂家ID
      ,b.XHMC as b_SBXH_XHMC--设备型号配置表 型号名称
      ,b.WLMS as b_SBXH_WLMS--设备型号配置表 物料描述
      ,b.XHMCPY as b_SBXH_XHMCPY--设备型号配置表 型号名称拼音
      ,c.QHM as c_SXDW_QHM--送修单位信息表 区划码
      ,[cb].MC as c_SXDW_QHM_MC--中华人民共和国行政区划代码 名称
      ,c.SSSJQHM as c_SXDW_SSSJQHM--送修单位信息表 所属市级区划码
      ,c.DWMC as c_SXDW_DWMC--送修单位信息表 单位名称
      ,c.DWMCPY as c_SXDW_DWMCPY--送修单位信息表 单位名称拼音
      ,d.HTMC as d_BXHT_HTMC--保修合同表 合同名称
      ,d.WXSX as d_BXHT_WXSX--保修合同表 维修时限
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
      ,e.YHRY as e_USER_YHRY--应用系统用户表 用户荣誉
      ,e.YHJF as e_USER_YHJF--应用系统用户表 用户积分
      ,e.BMID as e_USER_BMID--应用系统用户表 部门ID
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

FROM dbo.EDU_ZDGL_07_BXSB AS a LEFT OUTER JOIN
      dbo.EDU_ZDGL_03_SBXH AS b ON a.SBXHID = b.ID /*设备型号ID*/ LEFT OUTER JOIN
      dbo.EDU_ZDGL_04_SXDW AS c ON a.SXDWID = c.ID /*送修单位ID*/ LEFT OUTER JOIN
      dbo.EDU_ZDGL_05_BXHT AS d ON a.BXHTID = d.ID /*保修合同ID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS e ON a.RKCZYHID = e.LOGINNAME /*入库操作用户*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS f ON a.WXJSDJYHID = f.LOGINNAME /*维修结束登记用户*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS [cb] ON c.QHM = [cb].DM /*区划码*/
GO
