--删除视图
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ELE_01_USER_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ELE_01_USER_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ELE_01_SCHOOL_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ELE_01_SCHOOL_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ELE_01_XQ_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ELE_01_XQ_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ELE_01_APPUSER_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ELE_01_APPUSER_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ELE_01_APPDLCS_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ELE_01_APPDLCS_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ELE_03_APPRZ_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ELE_03_APPRZ_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ELE_03_APPLL_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ELE_03_APPLL_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ELE_03_YHSYJL_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ELE_03_YHSYJL_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ELE_05_XL_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ELE_05_XL_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ELE_05_XLZ_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ELE_05_XLZ_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ELE_05_JC_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ELE_05_JC_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ELE_07_JFBD_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ELE_07_JFBD_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ELE_07_RYBD_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ELE_07_RYBD_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ELE_09_JKXX_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ELE_09_JKXX_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_OAXT_01_01_WJJBSJ_DISP')
            and   type = 'V')
   drop view VIEW_EDU_OAXT_01_01_WJJBSJ_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_OAXT_02_01_SWCL_DISP')
            and   type = 'V')
   drop view VIEW_EDU_OAXT_02_01_SWCL_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_OAXT_02_02_WJYB_DISP')
            and   type = 'V')
   drop view VIEW_EDU_OAXT_02_02_WJYB_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_OAXT_03_01_FWCL_DISP')
            and   type = 'V')
   drop view VIEW_EDU_OAXT_03_01_FWCL_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_OAXT_03_02_HG_DISP')
            and   type = 'V')
   drop view VIEW_EDU_OAXT_03_02_HG_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_OAXT_03_03_HQ_DISP')
            and   type = 'V')
   drop view VIEW_EDU_OAXT_03_03_HQ_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_OAXT_03_04_CP_DISP')
            and   type = 'V')
   drop view VIEW_EDU_OAXT_03_04_CP_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_OAXT_04_01_WJQT_DISP')
            and   type = 'V')
   drop view VIEW_EDU_OAXT_04_01_WJQT_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_OAXT_05_01_WJXH_DISP')
            and   type = 'V')
   drop view VIEW_EDU_OAXT_05_01_WJXH_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_OAXT_06_01_WJJQ_DISP')
            and   type = 'V')
   drop view VIEW_EDU_OAXT_06_01_WJJQ_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_OAXT_08_01_DADJ_DISP')
            and   type = 'V')
   drop view VIEW_EDU_OAXT_08_01_DADJ_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_OAXT_10_A01_TZ_DISP')
            and   type = 'V')
   drop view VIEW_EDU_OAXT_10_A01_TZ_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_OAXT_10_A02_TZYDJL_DISP')
            and   type = 'V')
   drop view VIEW_EDU_OAXT_10_A02_TZYDJL_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_OAXT_10_A03_GG_DISP')
            and   type = 'V')
   drop view VIEW_EDU_OAXT_10_A03_GG_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_OAXT_11_A01_YJ_DISP')
            and   type = 'V')
   drop view VIEW_EDU_OAXT_11_A01_YJ_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_OAXT_13_A01_DWSJ_DISP')
            and   type = 'V')
   drop view VIEW_EDU_OAXT_13_A01_DWSJ_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_OAXT_14_A01_GRRCXX_DISP')
            and   type = 'V')
   drop view VIEW_EDU_OAXT_14_A01_GRRCXX_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_OAXT_15_A01_ZCML_DISP')
            and   type = 'V')
   drop view VIEW_EDU_OAXT_15_A01_ZCML_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_OAXT_15_A03_ZCKC_DISP')
            and   type = 'V')
   drop view VIEW_EDU_OAXT_15_A03_ZCKC_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_OAXT_15_A04_ZCRK_DISP')
            and   type = 'V')
   drop view VIEW_EDU_OAXT_15_A04_ZCRK_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_OAXT_15_A05_ZCJH_DISP')
            and   type = 'V')
   drop view VIEW_EDU_OAXT_15_A05_ZCJH_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_OAXT_15_A06_ZCBG_DISP')
            and   type = 'V')
   drop view VIEW_EDU_OAXT_15_A06_ZCBG_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_OAXT_15_A08_BXGL_DISP')
            and   type = 'V')
   drop view VIEW_EDU_OAXT_15_A08_BXGL_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_OAXT_15_A09_WXJH_DISP')
            and   type = 'V')
   drop view VIEW_EDU_OAXT_15_A09_WXJH_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_OAXT_15_A10_ZCBF_DISP')
            and   type = 'V')
   drop view VIEW_EDU_OAXT_15_A10_ZCBF_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_OAXT_15_A12_ZCPDMX_DISP')
            and   type = 'V')
   drop view VIEW_EDU_OAXT_15_A12_ZCPDMX_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_OAXT_15_A13_WXJL_DISP')
            and   type = 'V')
   drop view VIEW_EDU_OAXT_15_A13_WXJL_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_OAXT_15_A14_BXGZXX_DISP')
            and   type = 'V')
   drop view VIEW_EDU_OAXT_15_A14_BXGZXX_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_OAXT_20_A03_LCMB_DISP')
            and   type = 'V')
   drop view VIEW_EDU_OAXT_20_A03_LCMB_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_OAXT_20_A04_LCBZ_DISP')
            and   type = 'V')
   drop view VIEW_EDU_OAXT_20_A04_LCBZ_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_OAXT_20_A05_LCSL_DISP')
            and   type = 'V')
   drop view VIEW_EDU_OAXT_20_A05_LCSL_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_OAXT_20_A06_LCSHJL_DISP')
            and   type = 'V')
   drop view VIEW_EDU_OAXT_20_A06_LCSHJL_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_OAXT_20_A07_LCMBLXPZ_DISP')
            and   type = 'V')
   drop view VIEW_EDU_OAXT_20_A07_LCMBLXPZ_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_OAXT_21_A02_QJSQ_DISP')
            and   type = 'V')
   drop view VIEW_EDU_OAXT_21_A02_QJSQ_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_OAXT_22_A02_HYSQ_DISP')
            and   type = 'V')
   drop view VIEW_EDU_OAXT_22_A02_HYSQ_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_OAXT_22_A04_HYJY_DISP')
            and   type = 'V')
   drop view VIEW_EDU_OAXT_22_A04_HYJY_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_OAXT_23_A01_GWSQ_DISP')
            and   type = 'V')
   drop view VIEW_EDU_OAXT_23_A01_GWSQ_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_OAXT_24_A01_YCSQ_DISP')
            and   type = 'V')
   drop view VIEW_EDU_OAXT_24_A01_YCSQ_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_OAXT_25_A01_CGSQ_DISP')
            and   type = 'V')
   drop view VIEW_EDU_OAXT_25_A01_CGSQ_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_OAXT_26_A03_SYSSQ_DISP')
            and   type = 'V')
   drop view VIEW_EDU_OAXT_26_A03_SYSSQ_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_OAXT_31_A01_GRTXL_DISP')
            and   type = 'V')
   drop view VIEW_EDU_OAXT_31_A01_GRTXL_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_OAXT_32_A02_DCWJTM_DISP')
            and   type = 'V')
   drop view VIEW_EDU_OAXT_32_A02_DCWJTM_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_OAXT_32_A03_DCWJTMXX_DISP')
            and   type = 'V')
   drop view VIEW_EDU_OAXT_32_A03_DCWJTMXX_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_OAXT_32_A04_DCWJJL_DISP')
            and   type = 'V')
   drop view VIEW_EDU_OAXT_32_A04_DCWJJL_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_OAXT_33_A03_FW_DISP')
            and   type = 'V')
   drop view VIEW_EDU_OAXT_33_A03_FW_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_OAXT_33_A04_SW_DISP')
            and   type = 'V')
   drop view VIEW_EDU_OAXT_33_A04_SW_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_OAXT_34_A01_WYLCJL_DISP')
            and   type = 'V')
   drop view VIEW_EDU_OAXT_34_A01_WYLCJL_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_OAXT_35_A01_RW_DISP')
            and   type = 'V')
   drop view VIEW_EDU_OAXT_35_A01_RW_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_OAXT_35_A02_RWJSR_DISP')
            and   type = 'V')
   drop view VIEW_EDU_OAXT_35_A02_RWJSR_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_OAXT_35_A03_HFJL_DISP')
            and   type = 'V')
   drop view VIEW_EDU_OAXT_35_A03_HFJL_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_OAXT_36_A02_BJGZJC_DISP')
            and   type = 'V')
   drop view VIEW_EDU_OAXT_36_A02_BJGZJC_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZDGL_05_SBXH_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZDGL_05_SBXH_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZDGL_08_KH_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZDGL_08_KH_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZDGL_11_FJPC_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZDGL_11_FJPC_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZDGL_12_FJXX_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZDGL_12_FJXX_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZDGL_13_FHPC_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZDGL_13_FHPC_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZDGL_14_FHXX_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZDGL_14_FHXX_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZDGL_16_JSD_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZDGL_16_JSD_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZDGL_17_JSDXX_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZDGL_17_JSDXX_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZDGL_18_JFD_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZDGL_18_JFD_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZDGL_19_JFDXX_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZDGL_19_JFDXX_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZDGL_20_FHD_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZDGL_20_FHD_DISP
GO
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZDGL_21_FHDXX_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZDGL_21_FHDXX_DISP
GO

--应用系统用户表
CREATE VIEW [dbo].[VIEW_EDU_ELE_01_USER_DISP]
AS
SELECT a.[LOGINNAME]--用户名
      ,a.[SCHOOLID]--学校ID
      ,a.[APPID]--应用ID
      ,a.[PWD]--密码
      ,a.[STATUS]--用户状态
      ,a.[USERTYPE]--用户类别
      ,a.[USERID]--用户ID
      ,a.[ROLEIDLst]--用户角色
      ,a.[XM]--姓名
      ,a.[XB]--性别
      ,a.[QQ]--QQ
      ,a.[DZYJ]--电子邮件
      ,a.[LXDH]--联系电话
      ,a.[ZJDLSJ]--最近一次登录时间
      ,a.[DLCGCS]--登录成功次数
      ,a.[YHCJSJ]--用户创建时间
      ,a.[YHRY]--用户荣誉
      ,a.[YHJF]--用户积分
      ,a.[BMID]--部门ID
      ,c.SCHOOLID as c_APP_SCHOOLID--应用表 学校ID
      ,c.NAME as c_APP_NAME--应用表 应用名称
      ,c.URL as c_APP_URL--应用表 网址
      ,c.AUTHIP as c_APP_AUTHIP--应用表 限用IP
      ,c.SM as c_APP_SM--应用表 说明
      ,c.DLFS as c_APP_DLFS--应用表 登录方式
      ,c.STATUS as c_APP_STATUS--应用表 应用状态
      ,c.TYPE as c_APP_TYPE--应用表 应用类别
      ,c.DLCSLB as c_APP_DLCSLB--应用表 登录参数列表
      ,c.MNDLJS as c_APP_MNDLJS--应用表 模拟登录JS
      ,c.SYDX as c_APP_SYDX--应用表 使用对象
      ,c.KJDX as c_APP_KJDX--应用表 可见对象
      ,d.GSDM as d_SSGS_GSDM--所属公司表 公司代码
      ,d.GSM as d_SSGS_GSM--所属公司表 公司名

FROM dbo.EDU_ELE_01_USER AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_APP AS c ON a.APPID = c.ID /*应用ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZDGL_07_SSGS AS d ON a.BMID = d.ID /*部门ID*/
GO

--学校配置表
CREATE VIEW [dbo].[VIEW_EDU_ELE_01_SCHOOL_DISP]
AS
SELECT a.[SCHOOLID]--学校ID
      ,a.[SCHOOLNAME]--学校名称
      ,a.[SCHOOLTYPE]--学校类型
      ,a.[XNID]--学年ID
      ,a.[XQID]--学期ID
      ,a.[MatchURL]--匹配url
      ,a.[MenhuURL]--门户url
      ,a.[MenhuWebid]--门户webid
      ,a.[LogLevel]--日志级别
      ,a.[ModuleIdList]--权限列表
      ,a.[EnableStatus]--启用状态
      ,a.[CreateTime]--开户时间
      ,a.[YXTID]--翼校通ID
      ,a.[LOGO]--图标
      ,c.SCHOOLID as c_XQ_SCHOOLID--学期数据表 学校名
      ,c.XNID as c_XQ_XNID--学期数据表 学年
      ,c.XQM as c_XQ_XQM--学期数据表 学期码
      ,[cb].MC as c_XQ_XQM_MC--学期代码表 名称
      ,c.XQMC as c_XQ_XQMC--学期数据表 学期名称
      ,c.XQKSRQ as c_XQ_XQKSRQ--学期数据表 学期开始日期
      ,c.XQJSRQ as c_XQ_XQJSRQ--学期数据表 学期结束日期

FROM dbo.EDU_ELE_01_SCHOOL AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS c ON a.XQID = c.ID /*学期ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS [cb] ON c.XQM = [cb].DM /*学期码*/
GO

--学期数据表
CREATE VIEW [dbo].[VIEW_EDU_ELE_01_XQ_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校名
      ,a.[XNID]--学年
      ,a.[XQM]--学期码
      ,a.[XQMC]--学期名称
      ,a.[XQKSRQ]--学期开始日期
      ,a.[XQJSRQ]--学期结束日期
      ,c.SCHOOLID as c_XN_SCHOOLID--学年表 学校名
      ,c.XN as c_XN_XN--学年表 学年
      ,d.MC as d_XQ_MC--学期代码表 名称

FROM dbo.EDU_ELE_01_XQ AS a LEFT OUTER JOIN
      dbo.EDU_SYS_01_XN AS c ON a.XNID = c.ID /*学年*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS d ON a.XQM = d.DM /*学期码*/
GO

--第三方应用用户表
CREATE VIEW [dbo].[VIEW_EDU_ELE_01_APPUSER_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[YHID]--用户ID
      ,a.[APPID]--应用ID
      ,a.[YHMC]--用户名称
      ,a.[YHZT]--用户状态
      ,c.SCHOOLID as c_USER_SCHOOLID--应用系统用户表 学校ID
      ,c.APPID as c_USER_APPID--应用系统用户表 应用ID
      ,c.PWD as c_USER_PWD--应用系统用户表 密码
      ,c.STATUS as c_USER_STATUS--应用系统用户表 用户状态
      ,c.USERTYPE as c_USER_USERTYPE--应用系统用户表 用户类别
      ,c.USERID as c_USER_USERID--应用系统用户表 用户ID
      ,c.ROLEIDLst as c_USER_ROLEIDLst--应用系统用户表 用户角色
      ,c.XM as c_USER_XM--应用系统用户表 姓名
      ,c.XB as c_USER_XB--应用系统用户表 性别
      ,c.QQ as c_USER_QQ--应用系统用户表 QQ
      ,c.DZYJ as c_USER_DZYJ--应用系统用户表 电子邮件
      ,c.LXDH as c_USER_LXDH--应用系统用户表 联系电话
      ,c.ZJDLSJ as c_USER_ZJDLSJ--应用系统用户表 最近一次登录时间
      ,c.DLCGCS as c_USER_DLCGCS--应用系统用户表 登录成功次数
      ,c.YHCJSJ as c_USER_YHCJSJ--应用系统用户表 用户创建时间
      ,c.YHRY as c_USER_YHRY--应用系统用户表 用户荣誉
      ,c.YHJF as c_USER_YHJF--应用系统用户表 用户积分
      ,c.BMID as c_USER_BMID--应用系统用户表 部门ID
      ,d.SCHOOLID as d_APP_SCHOOLID--应用表 学校ID
      ,d.NAME as d_APP_NAME--应用表 应用名称
      ,d.URL as d_APP_URL--应用表 网址
      ,d.AUTHIP as d_APP_AUTHIP--应用表 限用IP
      ,d.SM as d_APP_SM--应用表 说明
      ,d.DLFS as d_APP_DLFS--应用表 登录方式
      ,d.STATUS as d_APP_STATUS--应用表 应用状态
      ,d.TYPE as d_APP_TYPE--应用表 应用类别
      ,d.DLCSLB as d_APP_DLCSLB--应用表 登录参数列表
      ,d.MNDLJS as d_APP_MNDLJS--应用表 模拟登录JS
      ,d.SYDX as d_APP_SYDX--应用表 使用对象
      ,d.KJDX as d_APP_KJDX--应用表 可见对象

FROM dbo.EDU_ELE_01_APPUSER AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS c ON a.YHID = c.LOGINNAME /*用户ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_APP AS d ON a.APPID = d.ID /*应用ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校*/
GO

--第三方应用登录参数表
CREATE VIEW [dbo].[VIEW_EDU_ELE_01_APPDLCS_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[APPUSERID]--应用用户ID
      ,a.[CSMC]--参数名称
      ,a.[CSZ]--参数值
      ,c.SCHOOLID as c_APPUSER_SCHOOLID--第三方应用用户表 学校
      ,c.YHID as c_APPUSER_YHID--第三方应用用户表 用户ID
      ,c.APPID as c_APPUSER_APPID--第三方应用用户表 应用ID
      ,c.YHMC as c_APPUSER_YHMC--第三方应用用户表 用户名称
      ,c.YHZT as c_APPUSER_YHZT--第三方应用用户表 用户状态

FROM dbo.EDU_ELE_01_APPDLCS AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_APPUSER AS c ON a.APPUSERID = c.ID /*应用用户ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/
GO

--应用日志表
CREATE VIEW [dbo].[VIEW_EDU_ELE_03_APPRZ_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校名
      ,a.[APPID]--应用ID
      ,a.[RZLX]--日志类型
      ,a.[YHID]--操作用户
      ,a.[CZSJ]--操作时间
      ,a.[CZYY]--操作应用
      ,a.[CZLX]--操作类型
      ,a.[CZJTXX]--操作具体信息
      ,c.SCHOOLID as c_USER_SCHOOLID--应用系统用户表 学校ID
      ,c.APPID as c_USER_APPID--应用系统用户表 应用ID
      ,c.PWD as c_USER_PWD--应用系统用户表 密码
      ,c.STATUS as c_USER_STATUS--应用系统用户表 用户状态
      ,c.USERTYPE as c_USER_USERTYPE--应用系统用户表 用户类别
      ,c.USERID as c_USER_USERID--应用系统用户表 用户ID
      ,c.ROLEIDLst as c_USER_ROLEIDLst--应用系统用户表 用户角色
      ,c.XM as c_USER_XM--应用系统用户表 姓名
      ,c.XB as c_USER_XB--应用系统用户表 性别
      ,c.QQ as c_USER_QQ--应用系统用户表 QQ
      ,c.DZYJ as c_USER_DZYJ--应用系统用户表 电子邮件
      ,c.LXDH as c_USER_LXDH--应用系统用户表 联系电话
      ,c.ZJDLSJ as c_USER_ZJDLSJ--应用系统用户表 最近一次登录时间
      ,c.DLCGCS as c_USER_DLCGCS--应用系统用户表 登录成功次数
      ,c.YHCJSJ as c_USER_YHCJSJ--应用系统用户表 用户创建时间
      ,c.YHRY as c_USER_YHRY--应用系统用户表 用户荣誉
      ,c.YHJF as c_USER_YHJF--应用系统用户表 用户积分
      ,c.BMID as c_USER_BMID--应用系统用户表 部门ID

FROM dbo.EDU_ELE_03_APPRZ AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS c ON a.YHID = c.LOGINNAME /*操作用户*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/
GO

--应用履历表
CREATE VIEW [dbo].[VIEW_EDU_ELE_03_APPLL_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校名
      ,a.[APPID]--应用ID
      ,a.[YHID]--操作用户
      ,a.[CZSJ]--操作时间
      ,a.[CZYY]--操作应用
      ,a.[CZBM]--操作表名
      ,a.[CZXX]--操作信息
      ,c.SCHOOLID as c_USER_SCHOOLID--应用系统用户表 学校ID
      ,c.APPID as c_USER_APPID--应用系统用户表 应用ID
      ,c.PWD as c_USER_PWD--应用系统用户表 密码
      ,c.STATUS as c_USER_STATUS--应用系统用户表 用户状态
      ,c.USERTYPE as c_USER_USERTYPE--应用系统用户表 用户类别
      ,c.USERID as c_USER_USERID--应用系统用户表 用户ID
      ,c.ROLEIDLst as c_USER_ROLEIDLst--应用系统用户表 用户角色
      ,c.XM as c_USER_XM--应用系统用户表 姓名
      ,c.XB as c_USER_XB--应用系统用户表 性别
      ,c.QQ as c_USER_QQ--应用系统用户表 QQ
      ,c.DZYJ as c_USER_DZYJ--应用系统用户表 电子邮件
      ,c.LXDH as c_USER_LXDH--应用系统用户表 联系电话
      ,c.ZJDLSJ as c_USER_ZJDLSJ--应用系统用户表 最近一次登录时间
      ,c.DLCGCS as c_USER_DLCGCS--应用系统用户表 登录成功次数
      ,c.YHCJSJ as c_USER_YHCJSJ--应用系统用户表 用户创建时间
      ,c.YHRY as c_USER_YHRY--应用系统用户表 用户荣誉
      ,c.YHJF as c_USER_YHJF--应用系统用户表 用户积分
      ,c.BMID as c_USER_BMID--应用系统用户表 部门ID

FROM dbo.EDU_ELE_03_APPLL AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS c ON a.YHID = c.LOGINNAME /*操作用户*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/
GO

--用户使用记录表
CREATE VIEW [dbo].[VIEW_EDU_ELE_03_YHSYJL_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[APPID]--应用ID
      ,a.[MODULEID]--功能ID
      ,a.[YHID]--用户ID
      ,a.[GNMC]--功能名称
      ,a.[LJ]--链接
      ,a.[SYSJ]--使用时间
      ,a.[XHHMS]--消耗毫秒数
      ,c.SCHOOLID as c_APP_SCHOOLID--应用表 学校ID
      ,c.NAME as c_APP_NAME--应用表 应用名称
      ,c.URL as c_APP_URL--应用表 网址
      ,c.AUTHIP as c_APP_AUTHIP--应用表 限用IP
      ,c.SM as c_APP_SM--应用表 说明
      ,c.DLFS as c_APP_DLFS--应用表 登录方式
      ,c.STATUS as c_APP_STATUS--应用表 应用状态
      ,c.TYPE as c_APP_TYPE--应用表 应用类别
      ,c.DLCSLB as c_APP_DLCSLB--应用表 登录参数列表
      ,c.MNDLJS as c_APP_MNDLJS--应用表 模拟登录JS
      ,c.SYDX as c_APP_SYDX--应用表 使用对象
      ,c.KJDX as c_APP_KJDX--应用表 可见对象
      ,d.APPID as d_MODULE_APPID--导航表 
      ,d.NAME as d_MODULE_NAME--导航表 
      ,d.Depth as d_MODULE_Depth--导航表 
      ,d.PID as d_MODULE_PID--导航表 
      ,d.MenuDisp as d_MODULE_MenuDisp--导航表 
      ,d.MenuUserType as d_MODULE_MenuUserType--导航表 
      ,d.Link as d_MODULE_Link--导航表 
      ,d.OrderIndex as d_MODULE_OrderIndex--导航表 
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

FROM dbo.EDU_ELE_03_YHSYJL AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_APP AS c ON a.APPID = c.ID /*应用ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_SYS_01_MODULE AS d ON a.MODULEID = d.ID /*功能ID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS e ON a.YHID = e.LOGINNAME /*用户ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校*/
GO

--校历表
CREATE VIEW [dbo].[VIEW_EDU_ELE_05_XL_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校ID
      ,a.[NAME]--校历名称
      ,a.[STARTDAY]--开始日期
      ,a.[ENDDAY]--结束日期
      ,a.[XNID]--学年ID
      ,a.[XQID]--学期ID
      ,c.SCHOOLID as c_XN_SCHOOLID--学年表 学校名
      ,c.XN as c_XN_XN--学年表 学年
      ,d.SCHOOLID as d_XQ_SCHOOLID--学期数据表 学校名
      ,d.XNID as d_XQ_XNID--学期数据表 学年
      ,d.XQM as d_XQ_XQM--学期数据表 学期码
      ,[db].MC as d_XQ_XQM_MC--学期代码表 名称
      ,d.XQMC as d_XQ_XQMC--学期数据表 学期名称
      ,d.XQKSRQ as d_XQ_XQKSRQ--学期数据表 学期开始日期
      ,d.XQJSRQ as d_XQ_XQJSRQ--学期数据表 学期结束日期

FROM dbo.EDU_ELE_05_XL AS a LEFT OUTER JOIN
      dbo.EDU_SYS_01_XN AS c ON a.XNID = c.ID /*学年ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS d ON a.XQID = d.ID /*学期ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS [db] ON d.XQM = [db].DM /*学期码*/
GO

--校历周表
CREATE VIEW [dbo].[VIEW_EDU_ELE_05_XLZ_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校ID
      ,a.[XLID]--校历ID
      ,a.[NAME]--校历周名称
      ,a.[STARTDAY]--开始日期
      ,a.[ENDDAY]--结束日期
      ,a.[ZJH]--周计划
      ,c.SCHOOLID as c_XL_SCHOOLID--校历表 学校ID
      ,c.NAME as c_XL_NAME--校历表 校历名称
      ,c.STARTDAY as c_XL_STARTDAY--校历表 开始日期
      ,c.ENDDAY as c_XL_ENDDAY--校历表 结束日期
      ,c.XNID as c_XL_XNID--校历表 学年ID
      ,c.XQID as c_XL_XQID--校历表 学期ID

FROM dbo.EDU_ELE_05_XLZ AS a LEFT OUTER JOIN
      dbo.EDU_ELE_05_XL AS c ON a.XLID = c.ID /*校历ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/
GO

--节次
CREATE VIEW [dbo].[VIEW_EDU_ELE_05_JC_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校名
      ,a.[SDID]--所属时段ID
      ,a.[MC]--名称
      ,c.SCHOOLID as c_SD_SCHOOLID--时段 学校名
      ,c.MC as c_SD_MC--时段 名称

FROM dbo.EDU_ELE_05_JC AS a LEFT OUTER JOIN
      dbo.EDU_ELE_05_SD AS c ON a.SDID = c.ID /*所属时段ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/
GO

--积分变动表
CREATE VIEW [dbo].[VIEW_EDU_ELE_07_JFBD_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校名
      ,a.[APPID]--应用ID
      ,a.[YHID]--用户ID
      ,a.[BDSJ]--变动时间
      ,a.[BDTM]--变动条目
      ,a.[BDJF]--变动积分
      ,a.[CZXX]--操作信息
      ,c.SCHOOLID as c_APP_SCHOOLID--应用表 学校ID
      ,c.NAME as c_APP_NAME--应用表 应用名称
      ,c.URL as c_APP_URL--应用表 网址
      ,c.AUTHIP as c_APP_AUTHIP--应用表 限用IP
      ,c.SM as c_APP_SM--应用表 说明
      ,c.DLFS as c_APP_DLFS--应用表 登录方式
      ,c.STATUS as c_APP_STATUS--应用表 应用状态
      ,c.TYPE as c_APP_TYPE--应用表 应用类别
      ,c.DLCSLB as c_APP_DLCSLB--应用表 登录参数列表
      ,c.MNDLJS as c_APP_MNDLJS--应用表 模拟登录JS
      ,c.SYDX as c_APP_SYDX--应用表 使用对象
      ,c.KJDX as c_APP_KJDX--应用表 可见对象
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

FROM dbo.EDU_ELE_07_JFBD AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_APP AS c ON a.APPID = c.ID /*应用ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.YHID = d.LOGINNAME /*用户ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校名*/
GO

--荣誉变动表
CREATE VIEW [dbo].[VIEW_EDU_ELE_07_RYBD_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校名
      ,a.[APPID]--应用ID
      ,a.[YHID]--用户ID
      ,a.[BDSJ]--变动时间
      ,a.[BDTM]--变动条目
      ,a.[BDRY]--变动荣誉
      ,a.[CZXX]--操作信息
      ,c.SCHOOLID as c_APP_SCHOOLID--应用表 学校ID
      ,c.NAME as c_APP_NAME--应用表 应用名称
      ,c.URL as c_APP_URL--应用表 网址
      ,c.AUTHIP as c_APP_AUTHIP--应用表 限用IP
      ,c.SM as c_APP_SM--应用表 说明
      ,c.DLFS as c_APP_DLFS--应用表 登录方式
      ,c.STATUS as c_APP_STATUS--应用表 应用状态
      ,c.TYPE as c_APP_TYPE--应用表 应用类别
      ,c.DLCSLB as c_APP_DLCSLB--应用表 登录参数列表
      ,c.MNDLJS as c_APP_MNDLJS--应用表 模拟登录JS
      ,c.SYDX as c_APP_SYDX--应用表 使用对象
      ,c.KJDX as c_APP_KJDX--应用表 可见对象
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

FROM dbo.EDU_ELE_07_RYBD AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_APP AS c ON a.APPID = c.ID /*应用ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.YHID = d.LOGINNAME /*用户ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校名*/
GO

--接口信息表
CREATE VIEW [dbo].[VIEW_EDU_ELE_09_JKXX_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校ID
      ,a.[JKLB]--接口类别
      ,a.[JKSM]--接口说明
      ,a.[CRCS]--传入参数
      ,a.[TZWZ]--跳转网址
      ,a.[KQZT]--开启状态
      ,a.[FWCS]--访问次数
      ,a.[TJSJ]--添加时间
      ,a.[TJYH]--添加用户
      ,c.SCHOOLID as c_USER_SCHOOLID--应用系统用户表 学校ID
      ,c.APPID as c_USER_APPID--应用系统用户表 应用ID
      ,c.PWD as c_USER_PWD--应用系统用户表 密码
      ,c.STATUS as c_USER_STATUS--应用系统用户表 用户状态
      ,c.USERTYPE as c_USER_USERTYPE--应用系统用户表 用户类别
      ,c.USERID as c_USER_USERID--应用系统用户表 用户ID
      ,c.ROLEIDLst as c_USER_ROLEIDLst--应用系统用户表 用户角色
      ,c.XM as c_USER_XM--应用系统用户表 姓名
      ,c.XB as c_USER_XB--应用系统用户表 性别
      ,c.QQ as c_USER_QQ--应用系统用户表 QQ
      ,c.DZYJ as c_USER_DZYJ--应用系统用户表 电子邮件
      ,c.LXDH as c_USER_LXDH--应用系统用户表 联系电话
      ,c.ZJDLSJ as c_USER_ZJDLSJ--应用系统用户表 最近一次登录时间
      ,c.DLCGCS as c_USER_DLCGCS--应用系统用户表 登录成功次数
      ,c.YHCJSJ as c_USER_YHCJSJ--应用系统用户表 用户创建时间
      ,c.YHRY as c_USER_YHRY--应用系统用户表 用户荣誉
      ,c.YHJF as c_USER_YHJF--应用系统用户表 用户积分
      ,c.BMID as c_USER_BMID--应用系统用户表 部门ID

FROM dbo.EDU_ELE_09_JKXX AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS c ON a.TJYH = c.LOGINNAME /*添加用户*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/
GO

--文件基本数据类表
CREATE VIEW [dbo].[VIEW_EDU_OAXT_01_01_WJJBSJ_DISP]
AS
SELECT a.[SCHOOLID]--学校名
      ,a.[ID]--文件ID
      ,a.[WJBH]--文件编号
      ,a.[WJWH]--文件文号
      ,a.[BT]--标题
      ,a.[ZTC]--主题词
      ,a.[MJM]--密级码
      ,a.[JJCDM]--紧急程度码
      ,a.[YS]--页数
      ,a.[WJFLM]--文件分类码
      ,a.[ZW]--正文
      ,a.[FJ]--附件
      ,a.[FWRQ]--发文日期
      ,a.[CSDW]--抄送单位
      ,c.HYPYDM as c_WXBMZJ_HYPYDM--文献保密等级代码与标识 汉语拼音代码
      ,c.HZDM as c_WXBMZJ_HZDM--文献保密等级代码与标识 汉字代码
      ,c.MC as c_WXBMZJ_MC--文献保密等级代码与标识 名称
      ,d.MC as d_JJCD_MC--紧急程度代码表 名称
      ,e.MC as e_WJFL_MC--文件分类代码表 名称
      ,e.SM as e_WJFL_SM--文件分类代码表 说明

FROM dbo.EDU_OAXT_01_01_WJJBSJ AS a LEFT OUTER JOIN
      dbo.EDU_GB_WXBMZJ AS c ON a.MJM = c.DM /*密级码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JJCD AS d ON a.JJCDM = d.DM /*紧急程度码*/ LEFT OUTER JOIN
      dbo.EDU_JY_WJFL AS e ON a.WJFLM = e.DM /*文件分类码*/
GO

--收文处理子类表
CREATE VIEW [dbo].[VIEW_EDU_OAXT_02_01_SWCL_DISP]
AS
SELECT a.[SCHOOLID]--学校名
      ,a.[WJID]--文件ID
      ,a.[QSRID]--签收人ID
      ,a.[CFRID]--拆封人ID
      ,a.[DJRID]--登记人ID
      ,a.[QSRGH]--签收人工号
      ,a.[CFRGH]--拆封人工号
      ,a.[DJRGH]--登记人工号
      ,a.[SWRQ]--收文日期
      ,a.[LWDW]--来文单位
      ,a.[FS]--份数
      ,a.[CLQK]--处理情况
      ,a.[FYFS]--翻印份数
      ,c.SCHOOLID as c_WJJBSJ_SCHOOLID--文件基本数据类表 学校名
      ,c.WJBH as c_WJJBSJ_WJBH--文件基本数据类表 文件编号
      ,c.WJWH as c_WJJBSJ_WJWH--文件基本数据类表 文件文号
      ,c.BT as c_WJJBSJ_BT--文件基本数据类表 标题
      ,c.ZTC as c_WJJBSJ_ZTC--文件基本数据类表 主题词
      ,c.MJM as c_WJJBSJ_MJM--文件基本数据类表 密级码
      ,[cb].HYPYDM as c_WJJBSJ_MJM_HYPYDM--文献保密等级代码与标识 汉语拼音代码
      ,[cb].HZDM as c_WJJBSJ_MJM_HZDM--文献保密等级代码与标识 汉字代码
      ,[cb].MC as c_WJJBSJ_MJM_MC--文献保密等级代码与标识 名称
      ,c.JJCDM as c_WJJBSJ_JJCDM--文件基本数据类表 紧急程度码
      ,[cc].MC as c_WJJBSJ_JJCDM_MC--紧急程度代码表 名称
      ,c.YS as c_WJJBSJ_YS--文件基本数据类表 页数
      ,c.WJFLM as c_WJJBSJ_WJFLM--文件基本数据类表 文件分类码
      ,[cd].MC as c_WJJBSJ_WJFLM_MC--文件分类代码表 名称
      ,[cd].SM as c_WJJBSJ_WJFLM_SM--文件分类代码表 说明
      ,c.ZW as c_WJJBSJ_ZW--文件基本数据类表 正文
      ,c.FJ as c_WJJBSJ_FJ--文件基本数据类表 附件
      ,c.FWRQ as c_WJJBSJ_FWRQ--文件基本数据类表 发文日期
      ,c.CSDW as c_WJJBSJ_CSDW--文件基本数据类表 抄送单位
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

FROM dbo.EDU_OAXT_02_01_SWCL AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_01_01_WJJBSJ AS c ON a.WJID = c.ID /*文件ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.QSRID = d.LOGINNAME /*签收人ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS e ON a.CFRID = e.LOGINNAME /*拆封人ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS f ON a.DJRID = f.LOGINNAME /*登记人ID*/ AND a.SCHOOLID = f.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_GB_WXBMZJ AS [cb] ON c.MJM = [cb].DM /*密级码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JJCD AS [cc] ON c.JJCDM = [cc].DM /*紧急程度码*/ LEFT OUTER JOIN
      dbo.EDU_JY_WJFL AS [cd] ON c.WJFLM = [cd].DM /*文件分类码*/
GO

--文件阅办子类表
CREATE VIEW [dbo].[VIEW_EDU_OAXT_02_02_WJYB_DISP]
AS
SELECT a.[SCHOOLID]--学校名
      ,a.[WJID]--文件ID
      ,a.[YBRID]--阅办人ID
      ,a.[YBLBM]--阅办类别码
      ,a.[YBJB]--阅办级别
      ,a.[YBDW]--阅办单位
      ,a.[YBDWBH]--阅办单位编号
      ,a.[YBRGH]--阅办人工号
      ,a.[YBYJ]--阅办意见
      ,a.[YBRQ]--阅办日期
      ,c.SCHOOLID as c_WJJBSJ_SCHOOLID--文件基本数据类表 学校名
      ,c.WJBH as c_WJJBSJ_WJBH--文件基本数据类表 文件编号
      ,c.WJWH as c_WJJBSJ_WJWH--文件基本数据类表 文件文号
      ,c.BT as c_WJJBSJ_BT--文件基本数据类表 标题
      ,c.ZTC as c_WJJBSJ_ZTC--文件基本数据类表 主题词
      ,c.MJM as c_WJJBSJ_MJM--文件基本数据类表 密级码
      ,[cb].HYPYDM as c_WJJBSJ_MJM_HYPYDM--文献保密等级代码与标识 汉语拼音代码
      ,[cb].HZDM as c_WJJBSJ_MJM_HZDM--文献保密等级代码与标识 汉字代码
      ,[cb].MC as c_WJJBSJ_MJM_MC--文献保密等级代码与标识 名称
      ,c.JJCDM as c_WJJBSJ_JJCDM--文件基本数据类表 紧急程度码
      ,[cc].MC as c_WJJBSJ_JJCDM_MC--紧急程度代码表 名称
      ,c.YS as c_WJJBSJ_YS--文件基本数据类表 页数
      ,c.WJFLM as c_WJJBSJ_WJFLM--文件基本数据类表 文件分类码
      ,[cd].MC as c_WJJBSJ_WJFLM_MC--文件分类代码表 名称
      ,[cd].SM as c_WJJBSJ_WJFLM_SM--文件分类代码表 说明
      ,c.ZW as c_WJJBSJ_ZW--文件基本数据类表 正文
      ,c.FJ as c_WJJBSJ_FJ--文件基本数据类表 附件
      ,c.FWRQ as c_WJJBSJ_FWRQ--文件基本数据类表 发文日期
      ,c.CSDW as c_WJJBSJ_CSDW--文件基本数据类表 抄送单位
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
      ,e.MC as e_YBLB_MC--阅办类别代码表 名称
      ,e.SM as e_YBLB_SM--阅办类别代码表 说明

FROM dbo.EDU_OAXT_02_02_WJYB AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_01_01_WJJBSJ AS c ON a.WJID = c.ID /*文件ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.YBRID = d.LOGINNAME /*阅办人ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_JY_YBLB AS e ON a.YBLBM = e.DM /*阅办类别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_WXBMZJ AS [cb] ON c.MJM = [cb].DM /*密级码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JJCD AS [cc] ON c.JJCDM = [cc].DM /*紧急程度码*/ LEFT OUTER JOIN
      dbo.EDU_JY_WJFL AS [cd] ON c.WJFLM = [cd].DM /*文件分类码*/
GO

--发文处理子类表
CREATE VIEW [dbo].[VIEW_EDU_OAXT_03_01_FWCL_DISP]
AS
SELECT a.[SCHOOLID]--学校名
      ,a.[WJID]--文件ID
      ,a.[NGRID]--拟稿人ID
      ,a.[QFRID]--签发人ID
      ,a.[DJRID]--登记人ID
      ,a.[DZRID]--打字人ID
      ,a.[JDRID]--校对人ID
      ,a.[NGRGH]--拟稿人工号
      ,a.[NGRQ]--拟稿日期
      ,a.[QFRGH]--签发人工号
      ,a.[QFRQ]--签发日期
      ,a.[FSFW]--发送范围
      ,a.[FSFSM]--发送方式码
      ,a.[DJRGH]--登记人工号
      ,a.[DJRQ]--登记日期
      ,a.[FWJS]--发文件数
      ,a.[GWFWRQ]--公文发文日期
      ,a.[CLQK]--处理情况
      ,a.[DZRGH]--打字人工号
      ,a.[JDRGH]--校对人工号
      ,a.[FZFSM]--封装方式码
      ,c.SCHOOLID as c_WJJBSJ_SCHOOLID--文件基本数据类表 学校名
      ,c.WJBH as c_WJJBSJ_WJBH--文件基本数据类表 文件编号
      ,c.WJWH as c_WJJBSJ_WJWH--文件基本数据类表 文件文号
      ,c.BT as c_WJJBSJ_BT--文件基本数据类表 标题
      ,c.ZTC as c_WJJBSJ_ZTC--文件基本数据类表 主题词
      ,c.MJM as c_WJJBSJ_MJM--文件基本数据类表 密级码
      ,[cb].HYPYDM as c_WJJBSJ_MJM_HYPYDM--文献保密等级代码与标识 汉语拼音代码
      ,[cb].HZDM as c_WJJBSJ_MJM_HZDM--文献保密等级代码与标识 汉字代码
      ,[cb].MC as c_WJJBSJ_MJM_MC--文献保密等级代码与标识 名称
      ,c.JJCDM as c_WJJBSJ_JJCDM--文件基本数据类表 紧急程度码
      ,[cc].MC as c_WJJBSJ_JJCDM_MC--紧急程度代码表 名称
      ,c.YS as c_WJJBSJ_YS--文件基本数据类表 页数
      ,c.WJFLM as c_WJJBSJ_WJFLM--文件基本数据类表 文件分类码
      ,[cd].MC as c_WJJBSJ_WJFLM_MC--文件分类代码表 名称
      ,[cd].SM as c_WJJBSJ_WJFLM_SM--文件分类代码表 说明
      ,c.ZW as c_WJJBSJ_ZW--文件基本数据类表 正文
      ,c.FJ as c_WJJBSJ_FJ--文件基本数据类表 附件
      ,c.FWRQ as c_WJJBSJ_FWRQ--文件基本数据类表 发文日期
      ,c.CSDW as c_WJJBSJ_CSDW--文件基本数据类表 抄送单位
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
      ,g.YHRY as g_USER_YHRY--应用系统用户表 用户荣誉
      ,g.YHJF as g_USER_YHJF--应用系统用户表 用户积分
      ,g.BMID as g_USER_BMID--应用系统用户表 部门ID
      ,h.SCHOOLID as h_USER_SCHOOLID--应用系统用户表 学校ID
      ,h.APPID as h_USER_APPID--应用系统用户表 应用ID
      ,h.PWD as h_USER_PWD--应用系统用户表 密码
      ,h.STATUS as h_USER_STATUS--应用系统用户表 用户状态
      ,h.USERTYPE as h_USER_USERTYPE--应用系统用户表 用户类别
      ,h.USERID as h_USER_USERID--应用系统用户表 用户ID
      ,h.ROLEIDLst as h_USER_ROLEIDLst--应用系统用户表 用户角色
      ,h.XM as h_USER_XM--应用系统用户表 姓名
      ,h.XB as h_USER_XB--应用系统用户表 性别
      ,h.QQ as h_USER_QQ--应用系统用户表 QQ
      ,h.DZYJ as h_USER_DZYJ--应用系统用户表 电子邮件
      ,h.LXDH as h_USER_LXDH--应用系统用户表 联系电话
      ,h.ZJDLSJ as h_USER_ZJDLSJ--应用系统用户表 最近一次登录时间
      ,h.DLCGCS as h_USER_DLCGCS--应用系统用户表 登录成功次数
      ,h.YHCJSJ as h_USER_YHCJSJ--应用系统用户表 用户创建时间
      ,h.YHRY as h_USER_YHRY--应用系统用户表 用户荣誉
      ,h.YHJF as h_USER_YHJF--应用系统用户表 用户积分
      ,h.BMID as h_USER_BMID--应用系统用户表 部门ID
      ,i.MC as i_FSFS_MC--发送方式代码表 名称
      ,j.MC as j_GWFZFS_MC--公文封装方式代码表 名称

FROM dbo.EDU_OAXT_03_01_FWCL AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_01_01_WJJBSJ AS c ON a.WJID = c.ID /*文件ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.NGRID = d.LOGINNAME /*拟稿人ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS e ON a.QFRID = e.LOGINNAME /*签发人ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS f ON a.DJRID = f.LOGINNAME /*登记人ID*/ AND a.SCHOOLID = f.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS g ON a.DZRID = g.LOGINNAME /*打字人ID*/ AND a.SCHOOLID = g.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS h ON a.JDRID = h.LOGINNAME /*校对人ID*/ AND a.SCHOOLID = h.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_JY_FSFS AS i ON a.FSFSM = i.DM /*发送方式码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWFZFS AS j ON a.FZFSM = j.DM /*封装方式码*/ LEFT OUTER JOIN
      dbo.EDU_GB_WXBMZJ AS [cb] ON c.MJM = [cb].DM /*密级码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JJCD AS [cc] ON c.JJCDM = [cc].DM /*紧急程度码*/ LEFT OUTER JOIN
      dbo.EDU_JY_WJFL AS [cd] ON c.WJFLM = [cd].DM /*文件分类码*/
GO

--核稿子类表
CREATE VIEW [dbo].[VIEW_EDU_OAXT_03_02_HG_DISP]
AS
SELECT a.[SCHOOLID]--学校名
      ,a.[WJID]--文件ID
      ,a.[HGRID]--核稿人ID
      ,a.[HGRGH]--核稿人工号
      ,a.[HGDW]--核稿单位
      ,a.[HGYJ]--核稿意见
      ,a.[HGRQ]--核稿日期
      ,c.SCHOOLID as c_WJJBSJ_SCHOOLID--文件基本数据类表 学校名
      ,c.WJBH as c_WJJBSJ_WJBH--文件基本数据类表 文件编号
      ,c.WJWH as c_WJJBSJ_WJWH--文件基本数据类表 文件文号
      ,c.BT as c_WJJBSJ_BT--文件基本数据类表 标题
      ,c.ZTC as c_WJJBSJ_ZTC--文件基本数据类表 主题词
      ,c.MJM as c_WJJBSJ_MJM--文件基本数据类表 密级码
      ,[cb].HYPYDM as c_WJJBSJ_MJM_HYPYDM--文献保密等级代码与标识 汉语拼音代码
      ,[cb].HZDM as c_WJJBSJ_MJM_HZDM--文献保密等级代码与标识 汉字代码
      ,[cb].MC as c_WJJBSJ_MJM_MC--文献保密等级代码与标识 名称
      ,c.JJCDM as c_WJJBSJ_JJCDM--文件基本数据类表 紧急程度码
      ,[cc].MC as c_WJJBSJ_JJCDM_MC--紧急程度代码表 名称
      ,c.YS as c_WJJBSJ_YS--文件基本数据类表 页数
      ,c.WJFLM as c_WJJBSJ_WJFLM--文件基本数据类表 文件分类码
      ,[cd].MC as c_WJJBSJ_WJFLM_MC--文件分类代码表 名称
      ,[cd].SM as c_WJJBSJ_WJFLM_SM--文件分类代码表 说明
      ,c.ZW as c_WJJBSJ_ZW--文件基本数据类表 正文
      ,c.FJ as c_WJJBSJ_FJ--文件基本数据类表 附件
      ,c.FWRQ as c_WJJBSJ_FWRQ--文件基本数据类表 发文日期
      ,c.CSDW as c_WJJBSJ_CSDW--文件基本数据类表 抄送单位
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

FROM dbo.EDU_OAXT_03_02_HG AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_01_01_WJJBSJ AS c ON a.WJID = c.ID /*文件ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.HGRID = d.LOGINNAME /*核稿人ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_GB_WXBMZJ AS [cb] ON c.MJM = [cb].DM /*密级码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JJCD AS [cc] ON c.JJCDM = [cc].DM /*紧急程度码*/ LEFT OUTER JOIN
      dbo.EDU_JY_WJFL AS [cd] ON c.WJFLM = [cd].DM /*文件分类码*/
GO

--会签子类表
CREATE VIEW [dbo].[VIEW_EDU_OAXT_03_03_HQ_DISP]
AS
SELECT a.[SCHOOLID]--学校名
      ,a.[WJID]--文件ID
      ,a.[HQRID]--会签人ID
      ,a.[HQR]--会签人
      ,a.[HQDW]--会签单位
      ,a.[HQYJ]--会签意见
      ,a.[HQRQ]--会签日期
      ,c.SCHOOLID as c_WJJBSJ_SCHOOLID--文件基本数据类表 学校名
      ,c.WJBH as c_WJJBSJ_WJBH--文件基本数据类表 文件编号
      ,c.WJWH as c_WJJBSJ_WJWH--文件基本数据类表 文件文号
      ,c.BT as c_WJJBSJ_BT--文件基本数据类表 标题
      ,c.ZTC as c_WJJBSJ_ZTC--文件基本数据类表 主题词
      ,c.MJM as c_WJJBSJ_MJM--文件基本数据类表 密级码
      ,[cb].HYPYDM as c_WJJBSJ_MJM_HYPYDM--文献保密等级代码与标识 汉语拼音代码
      ,[cb].HZDM as c_WJJBSJ_MJM_HZDM--文献保密等级代码与标识 汉字代码
      ,[cb].MC as c_WJJBSJ_MJM_MC--文献保密等级代码与标识 名称
      ,c.JJCDM as c_WJJBSJ_JJCDM--文件基本数据类表 紧急程度码
      ,[cc].MC as c_WJJBSJ_JJCDM_MC--紧急程度代码表 名称
      ,c.YS as c_WJJBSJ_YS--文件基本数据类表 页数
      ,c.WJFLM as c_WJJBSJ_WJFLM--文件基本数据类表 文件分类码
      ,[cd].MC as c_WJJBSJ_WJFLM_MC--文件分类代码表 名称
      ,[cd].SM as c_WJJBSJ_WJFLM_SM--文件分类代码表 说明
      ,c.ZW as c_WJJBSJ_ZW--文件基本数据类表 正文
      ,c.FJ as c_WJJBSJ_FJ--文件基本数据类表 附件
      ,c.FWRQ as c_WJJBSJ_FWRQ--文件基本数据类表 发文日期
      ,c.CSDW as c_WJJBSJ_CSDW--文件基本数据类表 抄送单位
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

FROM dbo.EDU_OAXT_03_03_HQ AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_01_01_WJJBSJ AS c ON a.WJID = c.ID /*文件ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.HQRID = d.LOGINNAME /*会签人ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_GB_WXBMZJ AS [cb] ON c.MJM = [cb].DM /*密级码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JJCD AS [cc] ON c.JJCDM = [cc].DM /*紧急程度码*/ LEFT OUTER JOIN
      dbo.EDU_JY_WJFL AS [cd] ON c.WJFLM = [cd].DM /*文件分类码*/
GO

--呈批子类表
CREATE VIEW [dbo].[VIEW_EDU_OAXT_03_04_CP_DISP]
AS
SELECT a.[SCHOOLID]--学校名
      ,a.[WJID]--文件ID
      ,a.[PFRID]--批复人ID
      ,a.[PFR]--批复人
      ,a.[PFDW]--批复单位
      ,a.[PFYJ]--批复意见
      ,a.[PFRQ]--批复日期
      ,c.SCHOOLID as c_WJJBSJ_SCHOOLID--文件基本数据类表 学校名
      ,c.WJBH as c_WJJBSJ_WJBH--文件基本数据类表 文件编号
      ,c.WJWH as c_WJJBSJ_WJWH--文件基本数据类表 文件文号
      ,c.BT as c_WJJBSJ_BT--文件基本数据类表 标题
      ,c.ZTC as c_WJJBSJ_ZTC--文件基本数据类表 主题词
      ,c.MJM as c_WJJBSJ_MJM--文件基本数据类表 密级码
      ,[cb].HYPYDM as c_WJJBSJ_MJM_HYPYDM--文献保密等级代码与标识 汉语拼音代码
      ,[cb].HZDM as c_WJJBSJ_MJM_HZDM--文献保密等级代码与标识 汉字代码
      ,[cb].MC as c_WJJBSJ_MJM_MC--文献保密等级代码与标识 名称
      ,c.JJCDM as c_WJJBSJ_JJCDM--文件基本数据类表 紧急程度码
      ,[cc].MC as c_WJJBSJ_JJCDM_MC--紧急程度代码表 名称
      ,c.YS as c_WJJBSJ_YS--文件基本数据类表 页数
      ,c.WJFLM as c_WJJBSJ_WJFLM--文件基本数据类表 文件分类码
      ,[cd].MC as c_WJJBSJ_WJFLM_MC--文件分类代码表 名称
      ,[cd].SM as c_WJJBSJ_WJFLM_SM--文件分类代码表 说明
      ,c.ZW as c_WJJBSJ_ZW--文件基本数据类表 正文
      ,c.FJ as c_WJJBSJ_FJ--文件基本数据类表 附件
      ,c.FWRQ as c_WJJBSJ_FWRQ--文件基本数据类表 发文日期
      ,c.CSDW as c_WJJBSJ_CSDW--文件基本数据类表 抄送单位
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

FROM dbo.EDU_OAXT_03_04_CP AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_01_01_WJJBSJ AS c ON a.WJID = c.ID /*文件ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.PFRID = d.LOGINNAME /*批复人ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_GB_WXBMZJ AS [cb] ON c.MJM = [cb].DM /*密级码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JJCD AS [cc] ON c.JJCDM = [cc].DM /*紧急程度码*/ LEFT OUTER JOIN
      dbo.EDU_JY_WJFL AS [cd] ON c.WJFLM = [cd].DM /*文件分类码*/
GO

--文件清退数据类表
CREATE VIEW [dbo].[VIEW_EDU_OAXT_04_01_WJQT_DISP]
AS
SELECT a.[SCHOOLID]--学校名
      ,a.[WJID]--文件ID
      ,a.[JBRID]--经办人ID
      ,a.[QTRQ]--清退日期
      ,a.[QTFW]--清退范围
      ,a.[QTSM]--清退说明
      ,a.[JBRGH]--经办人工号
      ,c.SCHOOLID as c_WJJBSJ_SCHOOLID--文件基本数据类表 学校名
      ,c.WJBH as c_WJJBSJ_WJBH--文件基本数据类表 文件编号
      ,c.WJWH as c_WJJBSJ_WJWH--文件基本数据类表 文件文号
      ,c.BT as c_WJJBSJ_BT--文件基本数据类表 标题
      ,c.ZTC as c_WJJBSJ_ZTC--文件基本数据类表 主题词
      ,c.MJM as c_WJJBSJ_MJM--文件基本数据类表 密级码
      ,[cb].HYPYDM as c_WJJBSJ_MJM_HYPYDM--文献保密等级代码与标识 汉语拼音代码
      ,[cb].HZDM as c_WJJBSJ_MJM_HZDM--文献保密等级代码与标识 汉字代码
      ,[cb].MC as c_WJJBSJ_MJM_MC--文献保密等级代码与标识 名称
      ,c.JJCDM as c_WJJBSJ_JJCDM--文件基本数据类表 紧急程度码
      ,[cc].MC as c_WJJBSJ_JJCDM_MC--紧急程度代码表 名称
      ,c.YS as c_WJJBSJ_YS--文件基本数据类表 页数
      ,c.WJFLM as c_WJJBSJ_WJFLM--文件基本数据类表 文件分类码
      ,[cd].MC as c_WJJBSJ_WJFLM_MC--文件分类代码表 名称
      ,[cd].SM as c_WJJBSJ_WJFLM_SM--文件分类代码表 说明
      ,c.ZW as c_WJJBSJ_ZW--文件基本数据类表 正文
      ,c.FJ as c_WJJBSJ_FJ--文件基本数据类表 附件
      ,c.FWRQ as c_WJJBSJ_FWRQ--文件基本数据类表 发文日期
      ,c.CSDW as c_WJJBSJ_CSDW--文件基本数据类表 抄送单位
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

FROM dbo.EDU_OAXT_04_01_WJQT AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_01_01_WJJBSJ AS c ON a.WJID = c.ID /*文件ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.JBRID = d.LOGINNAME /*经办人ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_GB_WXBMZJ AS [cb] ON c.MJM = [cb].DM /*密级码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JJCD AS [cc] ON c.JJCDM = [cc].DM /*紧急程度码*/ LEFT OUTER JOIN
      dbo.EDU_JY_WJFL AS [cd] ON c.WJFLM = [cd].DM /*文件分类码*/
GO

--文件销毁数据类表
CREATE VIEW [dbo].[VIEW_EDU_OAXT_05_01_WJXH_DISP]
AS
SELECT a.[SCHOOLID]--学校名
      ,a.[WJID]--文件ID
      ,a.[XHSPRID]--销毁审批人ID
      ,a.[JBRID]--经办人ID
      ,a.[XHRQ]--销毁日期
      ,a.[XHSPRGH]--销毁审批人工号
      ,a.[XHSM]--销毁说明
      ,a.[JBRGH]--经办人工号
      ,c.SCHOOLID as c_WJJBSJ_SCHOOLID--文件基本数据类表 学校名
      ,c.WJBH as c_WJJBSJ_WJBH--文件基本数据类表 文件编号
      ,c.WJWH as c_WJJBSJ_WJWH--文件基本数据类表 文件文号
      ,c.BT as c_WJJBSJ_BT--文件基本数据类表 标题
      ,c.ZTC as c_WJJBSJ_ZTC--文件基本数据类表 主题词
      ,c.MJM as c_WJJBSJ_MJM--文件基本数据类表 密级码
      ,[cb].HYPYDM as c_WJJBSJ_MJM_HYPYDM--文献保密等级代码与标识 汉语拼音代码
      ,[cb].HZDM as c_WJJBSJ_MJM_HZDM--文献保密等级代码与标识 汉字代码
      ,[cb].MC as c_WJJBSJ_MJM_MC--文献保密等级代码与标识 名称
      ,c.JJCDM as c_WJJBSJ_JJCDM--文件基本数据类表 紧急程度码
      ,[cc].MC as c_WJJBSJ_JJCDM_MC--紧急程度代码表 名称
      ,c.YS as c_WJJBSJ_YS--文件基本数据类表 页数
      ,c.WJFLM as c_WJJBSJ_WJFLM--文件基本数据类表 文件分类码
      ,[cd].MC as c_WJJBSJ_WJFLM_MC--文件分类代码表 名称
      ,[cd].SM as c_WJJBSJ_WJFLM_SM--文件分类代码表 说明
      ,c.ZW as c_WJJBSJ_ZW--文件基本数据类表 正文
      ,c.FJ as c_WJJBSJ_FJ--文件基本数据类表 附件
      ,c.FWRQ as c_WJJBSJ_FWRQ--文件基本数据类表 发文日期
      ,c.CSDW as c_WJJBSJ_CSDW--文件基本数据类表 抄送单位
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

FROM dbo.EDU_OAXT_05_01_WJXH AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_01_01_WJJBSJ AS c ON a.WJID = c.ID /*文件ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.XHSPRID = d.LOGINNAME /*销毁审批人ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS e ON a.JBRID = e.LOGINNAME /*经办人ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_GB_WXBMZJ AS [cb] ON c.MJM = [cb].DM /*密级码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JJCD AS [cc] ON c.JJCDM = [cc].DM /*紧急程度码*/ LEFT OUTER JOIN
      dbo.EDU_JY_WJFL AS [cd] ON c.WJFLM = [cd].DM /*文件分类码*/
GO

--文件借阅数据类表
CREATE VIEW [dbo].[VIEW_EDU_OAXT_06_01_WJJQ_DISP]
AS
SELECT a.[SCHOOLID]--学校名
      ,a.[WJID]--文件ID
      ,a.[JYSPRID]--借阅审批人ID
      ,a.[JYJBRID]--借阅经办人ID
      ,a.[JYR]--借阅人
      ,a.[JYRQ]--借阅日期
      ,a.[JYSPRGH]--借阅审批人工号
      ,a.[JYJBRGH]--借阅经办人工号
      ,a.[JYYY]--借阅原因
      ,c.SCHOOLID as c_WJJBSJ_SCHOOLID--文件基本数据类表 学校名
      ,c.WJBH as c_WJJBSJ_WJBH--文件基本数据类表 文件编号
      ,c.WJWH as c_WJJBSJ_WJWH--文件基本数据类表 文件文号
      ,c.BT as c_WJJBSJ_BT--文件基本数据类表 标题
      ,c.ZTC as c_WJJBSJ_ZTC--文件基本数据类表 主题词
      ,c.MJM as c_WJJBSJ_MJM--文件基本数据类表 密级码
      ,[cb].HYPYDM as c_WJJBSJ_MJM_HYPYDM--文献保密等级代码与标识 汉语拼音代码
      ,[cb].HZDM as c_WJJBSJ_MJM_HZDM--文献保密等级代码与标识 汉字代码
      ,[cb].MC as c_WJJBSJ_MJM_MC--文献保密等级代码与标识 名称
      ,c.JJCDM as c_WJJBSJ_JJCDM--文件基本数据类表 紧急程度码
      ,[cc].MC as c_WJJBSJ_JJCDM_MC--紧急程度代码表 名称
      ,c.YS as c_WJJBSJ_YS--文件基本数据类表 页数
      ,c.WJFLM as c_WJJBSJ_WJFLM--文件基本数据类表 文件分类码
      ,[cd].MC as c_WJJBSJ_WJFLM_MC--文件分类代码表 名称
      ,[cd].SM as c_WJJBSJ_WJFLM_SM--文件分类代码表 说明
      ,c.ZW as c_WJJBSJ_ZW--文件基本数据类表 正文
      ,c.FJ as c_WJJBSJ_FJ--文件基本数据类表 附件
      ,c.FWRQ as c_WJJBSJ_FWRQ--文件基本数据类表 发文日期
      ,c.CSDW as c_WJJBSJ_CSDW--文件基本数据类表 抄送单位
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

FROM dbo.EDU_OAXT_06_01_WJJQ AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_01_01_WJJBSJ AS c ON a.WJID = c.ID /*文件ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.JYSPRID = d.LOGINNAME /*借阅审批人ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS e ON a.JYJBRID = e.LOGINNAME /*借阅经办人ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_GB_WXBMZJ AS [cb] ON c.MJM = [cb].DM /*密级码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JJCD AS [cc] ON c.JJCDM = [cc].DM /*紧急程度码*/ LEFT OUTER JOIN
      dbo.EDU_JY_WJFL AS [cd] ON c.WJFLM = [cd].DM /*文件分类码*/
GO

--档案登记数据表
CREATE VIEW [dbo].[VIEW_EDU_OAXT_08_01_DADJ_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校名
      ,a.[QZH]--全宗号
      ,a.[ND]--年度
      ,a.[MLH]--目录号
      ,a.[AJH]--案卷号
      ,a.[TM]--题名
      ,a.[ZTC]--主题词
      ,a.[QSRQ]--起始日期
      ,a.[JZRQ]--截止日期
      ,a.[BGQXM]--保管期限码
      ,a.[MJM]--密级码
      ,a.[YS]--页数
      ,a.[FS]--份数
      ,a.[BZDW]--编制单位
      ,a.[CFWZ]--存放位置
      ,a.[DAFLM]--档案分类码
      ,c.MC as c_YWDABGQX_MC--一位档案保管期限代码表 名称
      ,c.ZMDM as c_YWDABGQX_ZMDM--一位档案保管期限代码表 字母代码
      ,c.SM as c_YWDABGQX_SM--一位档案保管期限代码表 说明
      ,d.HYPYDM as d_WXBMZJ_HYPYDM--文献保密等级代码与标识 汉语拼音代码
      ,d.HZDM as d_WXBMZJ_HZDM--文献保密等级代码与标识 汉字代码
      ,d.MC as d_WXBMZJ_MC--文献保密等级代码与标识 名称
      ,e.MC as e_LWGDXXDASTFL_MC--两位高等学校档案实体分类码 名称

FROM dbo.EDU_OAXT_08_01_DADJ AS a LEFT OUTER JOIN
      dbo.EDU_JY_YWDABGQX AS c ON a.BGQXM = c.DM /*保管期限码*/ LEFT OUTER JOIN
      dbo.EDU_GB_WXBMZJ AS d ON a.MJM = d.DM /*密级码*/ LEFT OUTER JOIN
      dbo.EDU_GB_LWGDXXDASTFL AS e ON a.DAFLM = e.DM /*档案分类码*/
GO

--通知数据表
CREATE VIEW [dbo].[VIEW_EDU_OAXT_10_A01_TZ_DISP]
AS
SELECT a.[ID]--通知ID
      ,a.[SCHOOLID]--学校ID
      ,a.[FSRID]--发送人ID
      ,a.[FSRLB]--发送人类别
      ,a.[BT]--标题
      ,a.[NR]--内容
      ,a.[FJ]--附件
      ,a.[TJRQ]--添加日期
      ,a.[JSRS]--接收人数
      ,a.[JSRIDLB]--接收人ID列表
      ,a.[JSRMZLB]--接收人名字列表
      ,a.[YYDRIDLB]--已阅读人ID列表
      ,a.[YYDRMZLB]--已阅读人名字列表
      ,a.[FSZT]--发送状态
      ,c.SCHOOLID as c_USER_SCHOOLID--应用系统用户表 学校ID
      ,c.APPID as c_USER_APPID--应用系统用户表 应用ID
      ,c.PWD as c_USER_PWD--应用系统用户表 密码
      ,c.STATUS as c_USER_STATUS--应用系统用户表 用户状态
      ,c.USERTYPE as c_USER_USERTYPE--应用系统用户表 用户类别
      ,c.USERID as c_USER_USERID--应用系统用户表 用户ID
      ,c.ROLEIDLst as c_USER_ROLEIDLst--应用系统用户表 用户角色
      ,c.XM as c_USER_XM--应用系统用户表 姓名
      ,c.XB as c_USER_XB--应用系统用户表 性别
      ,c.QQ as c_USER_QQ--应用系统用户表 QQ
      ,c.DZYJ as c_USER_DZYJ--应用系统用户表 电子邮件
      ,c.LXDH as c_USER_LXDH--应用系统用户表 联系电话
      ,c.ZJDLSJ as c_USER_ZJDLSJ--应用系统用户表 最近一次登录时间
      ,c.DLCGCS as c_USER_DLCGCS--应用系统用户表 登录成功次数
      ,c.YHCJSJ as c_USER_YHCJSJ--应用系统用户表 用户创建时间
      ,c.YHRY as c_USER_YHRY--应用系统用户表 用户荣誉
      ,c.YHJF as c_USER_YHJF--应用系统用户表 用户积分
      ,c.BMID as c_USER_BMID--应用系统用户表 部门ID

FROM dbo.EDU_OAXT_10_A01_TZ AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS c ON a.FSRID = c.LOGINNAME /*发送人ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/
GO

--通知阅读记录
CREATE VIEW [dbo].[VIEW_EDU_OAXT_10_A02_TZYDJL_DISP]
AS
SELECT a.[ID]--通知阅读记录ID
      ,a.[SCHOOLID]--学校ID
      ,a.[TZID]--通知ID
      ,a.[BTZRID]--被通知人ID
      ,a.[YDRQ]--阅读日期
      ,a.[SFYD]--是否已阅读
      ,a.[SCZT]--删除状态
      ,c.SCHOOLID as c_TZ_SCHOOLID--通知数据表 学校ID
      ,c.FSRID as c_TZ_FSRID--通知数据表 发送人ID
      ,c.FSRLB as c_TZ_FSRLB--通知数据表 发送人类别
      ,c.BT as c_TZ_BT--通知数据表 标题
      ,c.NR as c_TZ_NR--通知数据表 内容
      ,c.FJ as c_TZ_FJ--通知数据表 附件
      ,c.TJRQ as c_TZ_TJRQ--通知数据表 添加日期
      ,c.JSRS as c_TZ_JSRS--通知数据表 接收人数
      ,c.JSRIDLB as c_TZ_JSRIDLB--通知数据表 接收人ID列表
      ,c.JSRMZLB as c_TZ_JSRMZLB--通知数据表 接收人名字列表
      ,c.YYDRIDLB as c_TZ_YYDRIDLB--通知数据表 已阅读人ID列表
      ,c.YYDRMZLB as c_TZ_YYDRMZLB--通知数据表 已阅读人名字列表
      ,c.FSZT as c_TZ_FSZT--通知数据表 发送状态
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
      ,e.MC as e_SFBZ_MC--是否标志代码表 名称

FROM dbo.EDU_OAXT_10_A02_TZYDJL AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_10_A01_TZ AS c ON a.TZID = c.ID /*通知ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.BTZRID = d.LOGINNAME /*被通知人ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS e ON a.SFYD = e.DM /*是否已阅读*/
GO

--公告数据表
CREATE VIEW [dbo].[VIEW_EDU_OAXT_10_A03_GG_DISP]
AS
SELECT a.[ID]--公告ID
      ,a.[SCHOOLID]--学校ID
      ,a.[FBRID]--发布人ID
      ,a.[FBBM]--发布部门
      ,a.[FBSJ]--发布时间
      ,a.[BT]--公告标题
      ,a.[NR]--公告内容
      ,a.[ZT]--公告状态
      ,c.SCHOOLID as c_USER_SCHOOLID--应用系统用户表 学校ID
      ,c.APPID as c_USER_APPID--应用系统用户表 应用ID
      ,c.PWD as c_USER_PWD--应用系统用户表 密码
      ,c.STATUS as c_USER_STATUS--应用系统用户表 用户状态
      ,c.USERTYPE as c_USER_USERTYPE--应用系统用户表 用户类别
      ,c.USERID as c_USER_USERID--应用系统用户表 用户ID
      ,c.ROLEIDLst as c_USER_ROLEIDLst--应用系统用户表 用户角色
      ,c.XM as c_USER_XM--应用系统用户表 姓名
      ,c.XB as c_USER_XB--应用系统用户表 性别
      ,c.QQ as c_USER_QQ--应用系统用户表 QQ
      ,c.DZYJ as c_USER_DZYJ--应用系统用户表 电子邮件
      ,c.LXDH as c_USER_LXDH--应用系统用户表 联系电话
      ,c.ZJDLSJ as c_USER_ZJDLSJ--应用系统用户表 最近一次登录时间
      ,c.DLCGCS as c_USER_DLCGCS--应用系统用户表 登录成功次数
      ,c.YHCJSJ as c_USER_YHCJSJ--应用系统用户表 用户创建时间
      ,c.YHRY as c_USER_YHRY--应用系统用户表 用户荣誉
      ,c.YHJF as c_USER_YHJF--应用系统用户表 用户积分
      ,c.BMID as c_USER_BMID--应用系统用户表 部门ID

FROM dbo.EDU_OAXT_10_A03_GG AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS c ON a.FBRID = c.LOGINNAME /*发布人ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/
GO

--邮件数据表
CREATE VIEW [dbo].[VIEW_EDU_OAXT_11_A01_YJ_DISP]
AS
SELECT a.[ID]--邮件ID
      ,a.[SCHOOLID]--学校ID
      ,a.[YYZID]--拥有者ID
      ,a.[FSRID]--发送人ID
      ,a.[JSRID]--接收人ID
      ,a.[FSRMC]--发送人名称
      ,a.[JSRMC]--接收人名称
      ,a.[JSRIDLB]--接收人ID列表
      ,a.[JSRMCLB]--接收人名称列表
      ,a.[BT]--标题
      ,a.[NR]--内容
      ,a.[FJ]--附件
      ,a.[FSSJ]--发送时间
      ,a.[SFYD]--是否已阅读
      ,a.[YJLX]--邮件类型
      ,c.SCHOOLID as c_USER_SCHOOLID--应用系统用户表 学校ID
      ,c.APPID as c_USER_APPID--应用系统用户表 应用ID
      ,c.PWD as c_USER_PWD--应用系统用户表 密码
      ,c.STATUS as c_USER_STATUS--应用系统用户表 用户状态
      ,c.USERTYPE as c_USER_USERTYPE--应用系统用户表 用户类别
      ,c.USERID as c_USER_USERID--应用系统用户表 用户ID
      ,c.ROLEIDLst as c_USER_ROLEIDLst--应用系统用户表 用户角色
      ,c.XM as c_USER_XM--应用系统用户表 姓名
      ,c.XB as c_USER_XB--应用系统用户表 性别
      ,c.QQ as c_USER_QQ--应用系统用户表 QQ
      ,c.DZYJ as c_USER_DZYJ--应用系统用户表 电子邮件
      ,c.LXDH as c_USER_LXDH--应用系统用户表 联系电话
      ,c.ZJDLSJ as c_USER_ZJDLSJ--应用系统用户表 最近一次登录时间
      ,c.DLCGCS as c_USER_DLCGCS--应用系统用户表 登录成功次数
      ,c.YHCJSJ as c_USER_YHCJSJ--应用系统用户表 用户创建时间
      ,c.YHRY as c_USER_YHRY--应用系统用户表 用户荣誉
      ,c.YHJF as c_USER_YHJF--应用系统用户表 用户积分
      ,c.BMID as c_USER_BMID--应用系统用户表 部门ID
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
      ,f.MC as f_SFBZ_MC--是否标志代码表 名称

FROM dbo.EDU_OAXT_11_A01_YJ AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS c ON a.YYZID = c.LOGINNAME /*拥有者ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.FSRID = d.LOGINNAME /*发送人ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS e ON a.JSRID = e.LOGINNAME /*接收人ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS f ON a.SFYD = f.DM /*是否已阅读*/
GO

--单位数据表
CREATE VIEW [dbo].[VIEW_EDU_OAXT_13_A01_DWSJ_DISP]
AS
SELECT a.[ID]--单位ID
      ,a.[SCHOOLID]--学校ID
      ,a.[SJDWID]--上级单位ID
      ,a.[DWFZRID]--单位负责人ID
      ,a.[DWMC]--单位名称
      ,a.[DWCYIDLB]--单位成员ID列表
      ,c.SCHOOLID as c_DWSJ_SCHOOLID--单位数据表 学校ID
      ,c.SJDWID as c_DWSJ_SJDWID--单位数据表 上级单位ID
      ,c.DWFZRID as c_DWSJ_DWFZRID--单位数据表 单位负责人ID
      ,c.DWMC as c_DWSJ_DWMC--单位数据表 单位名称
      ,c.DWCYIDLB as c_DWSJ_DWCYIDLB--单位数据表 单位成员ID列表
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

FROM dbo.EDU_OAXT_13_A01_DWSJ AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_13_A01_DWSJ AS c ON a.SJDWID = c.ID /*上级单位ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.DWFZRID = d.LOGINNAME /*单位负责人ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校ID*/
GO

--个人日程信息表
CREATE VIEW [dbo].[VIEW_EDU_OAXT_14_A01_GRRCXX_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[YHID]--用户ID
      ,a.[BT]--标题
      ,a.[NR]--内容
      ,a.[KSSJ]--开始时间
      ,a.[JSSJ]--结束时间
      ,a.[SFTS]--是否提示
      ,a.[ZT]--状态
      ,c.SCHOOLID as c_USER_SCHOOLID--应用系统用户表 学校ID
      ,c.APPID as c_USER_APPID--应用系统用户表 应用ID
      ,c.PWD as c_USER_PWD--应用系统用户表 密码
      ,c.STATUS as c_USER_STATUS--应用系统用户表 用户状态
      ,c.USERTYPE as c_USER_USERTYPE--应用系统用户表 用户类别
      ,c.USERID as c_USER_USERID--应用系统用户表 用户ID
      ,c.ROLEIDLst as c_USER_ROLEIDLst--应用系统用户表 用户角色
      ,c.XM as c_USER_XM--应用系统用户表 姓名
      ,c.XB as c_USER_XB--应用系统用户表 性别
      ,c.QQ as c_USER_QQ--应用系统用户表 QQ
      ,c.DZYJ as c_USER_DZYJ--应用系统用户表 电子邮件
      ,c.LXDH as c_USER_LXDH--应用系统用户表 联系电话
      ,c.ZJDLSJ as c_USER_ZJDLSJ--应用系统用户表 最近一次登录时间
      ,c.DLCGCS as c_USER_DLCGCS--应用系统用户表 登录成功次数
      ,c.YHCJSJ as c_USER_YHCJSJ--应用系统用户表 用户创建时间
      ,c.YHRY as c_USER_YHRY--应用系统用户表 用户荣誉
      ,c.YHJF as c_USER_YHJF--应用系统用户表 用户积分
      ,c.BMID as c_USER_BMID--应用系统用户表 部门ID
      ,d.MC as d_SFBZ_MC--是否标志代码表 名称

FROM dbo.EDU_OAXT_14_A01_GRRCXX AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS c ON a.YHID = c.LOGINNAME /*用户ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS d ON a.SFTS = d.DM /*是否提示*/
GO

--资产目录表
CREATE VIEW [dbo].[VIEW_EDU_OAXT_15_A01_ZCML_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[Name]--校产目录
      ,a.[Superid]--父目录ID
      ,a.[Remark]--备注
      ,c.SCHOOLID as c_ZCML_SCHOOLID--资产目录表 学校
      ,c.Name as c_ZCML_Name--资产目录表 校产目录
      ,c.Superid as c_ZCML_Superid--资产目录表 父目录ID
      ,c.Remark as c_ZCML_Remark--资产目录表 备注

FROM dbo.EDU_OAXT_15_A01_ZCML AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_15_A01_ZCML AS c ON a.Superid = c.ID /*父目录ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/
GO

--资产库存表
CREATE VIEW [dbo].[VIEW_EDU_OAXT_15_A03_ZCKC_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[TypeID]--资产目录表ID
      ,a.[ClassID]--资产大类表ID
      ,a.[Name]--资产名称
      ,a.[Info]--资产规格
      ,a.[Productdate]--出厂时间
      ,a.[Price]--单价
      ,a.[SumCount]--数量
      ,a.[Merchant]--供应商
      ,a.[Vender]--厂家
      ,a.[Remark]--备注
      ,a.[AllCount]--资产总量
      ,a.[RKL]--入库量
      ,a.[RQ]--日期
      ,a.[DW]--单位
      ,a.[ZJ]--总价
      ,a.[SYBM]--使用部门
      ,a.[CFDW]--存放单位
      ,a.[FZR]--负责人
      ,a.[CZFS]--处置方式
      ,c.SCHOOLID as c_ZCML_SCHOOLID--资产目录表 学校
      ,c.Name as c_ZCML_Name--资产目录表 校产目录
      ,c.Superid as c_ZCML_Superid--资产目录表 父目录ID
      ,c.Remark as c_ZCML_Remark--资产目录表 备注
      ,d.SCHOOLID as d_ZCDL_SCHOOLID--资产大类表 学校
      ,d.Name as d_ZCDL_Name--资产大类表 校产类型
      ,d.Remark as d_ZCDL_Remark--资产大类表 备注

FROM dbo.EDU_OAXT_15_A03_ZCKC AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_15_A01_ZCML AS c ON a.TypeID = c.ID /*资产目录表ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_15_A02_ZCDL AS d ON a.ClassID = d.ID /*资产大类表ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校*/
GO

--资产入库表
CREATE VIEW [dbo].[VIEW_EDU_OAXT_15_A04_ZCRK_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[TypeID]--资产目录表ID
      ,a.[ClassID]--资产大类表ID
      ,a.[Name]--校产名称
      ,a.[Info]--资产规格
      ,a.[Productdate]--出厂时间
      ,a.[Price]--单价
      ,a.[SumCount]--数量
      ,a.[Merchant]--供应商
      ,a.[Vender]--厂家
      ,a.[Registdate]--登记时间
      ,a.[Remark]--备注
      ,a.[Status]--审核状态
      ,a.[RQ]--日期
      ,a.[DW]--单位
      ,a.[ZJ]--总价
      ,a.[SYBM]--使用部门
      ,a.[CFDW]--存放单位
      ,a.[FZR]--负责人
      ,a.[CZFS]--处置方式
      ,c.SCHOOLID as c_ZCML_SCHOOLID--资产目录表 学校
      ,c.Name as c_ZCML_Name--资产目录表 校产目录
      ,c.Superid as c_ZCML_Superid--资产目录表 父目录ID
      ,c.Remark as c_ZCML_Remark--资产目录表 备注
      ,d.SCHOOLID as d_ZCDL_SCHOOLID--资产大类表 学校
      ,d.Name as d_ZCDL_Name--资产大类表 校产类型
      ,d.Remark as d_ZCDL_Remark--资产大类表 备注

FROM dbo.EDU_OAXT_15_A04_ZCRK AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_15_A01_ZCML AS c ON a.TypeID = c.ID /*资产目录表ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_15_A02_ZCDL AS d ON a.ClassID = d.ID /*资产大类表ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校*/
GO

--资产借还表
CREATE VIEW [dbo].[VIEW_EDU_OAXT_15_A05_ZCJH_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[TypeID]--资产目录表ID
      ,a.[ClassID]--资产大类表ID
      ,a.[AID]--库存表ID
      ,a.[SumCount]--数量
      ,a.[Unit]--单位
      ,a.[Borrower]--借用方
      ,a.[Remark]--备注
      ,a.[Registdate]--登记时间
      ,c.SCHOOLID as c_ZCML_SCHOOLID--资产目录表 学校
      ,c.Name as c_ZCML_Name--资产目录表 校产目录
      ,c.Superid as c_ZCML_Superid--资产目录表 父目录ID
      ,c.Remark as c_ZCML_Remark--资产目录表 备注
      ,d.SCHOOLID as d_ZCDL_SCHOOLID--资产大类表 学校
      ,d.Name as d_ZCDL_Name--资产大类表 校产类型
      ,d.Remark as d_ZCDL_Remark--资产大类表 备注
      ,e.SCHOOLID as e_ZCKC_SCHOOLID--资产库存表 学校
      ,e.TypeID as e_ZCKC_TypeID--资产库存表 资产目录表ID
      ,e.ClassID as e_ZCKC_ClassID--资产库存表 资产大类表ID
      ,e.Name as e_ZCKC_Name--资产库存表 资产名称
      ,e.Info as e_ZCKC_Info--资产库存表 资产规格
      ,e.Productdate as e_ZCKC_Productdate--资产库存表 出厂时间
      ,e.Price as e_ZCKC_Price--资产库存表 单价
      ,e.SumCount as e_ZCKC_SumCount--资产库存表 数量
      ,e.Merchant as e_ZCKC_Merchant--资产库存表 供应商
      ,e.Vender as e_ZCKC_Vender--资产库存表 厂家
      ,e.Remark as e_ZCKC_Remark--资产库存表 备注
      ,e.AllCount as e_ZCKC_AllCount--资产库存表 资产总量
      ,e.RKL as e_ZCKC_RKL--资产库存表 入库量
      ,e.RQ as e_ZCKC_RQ--资产库存表 日期
      ,e.DW as e_ZCKC_DW--资产库存表 单位
      ,e.ZJ as e_ZCKC_ZJ--资产库存表 总价
      ,e.SYBM as e_ZCKC_SYBM--资产库存表 使用部门
      ,e.CFDW as e_ZCKC_CFDW--资产库存表 存放单位
      ,e.FZR as e_ZCKC_FZR--资产库存表 负责人
      ,e.CZFS as e_ZCKC_CZFS--资产库存表 处置方式

FROM dbo.EDU_OAXT_15_A05_ZCJH AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_15_A01_ZCML AS c ON a.TypeID = c.ID /*资产目录表ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_15_A02_ZCDL AS d ON a.ClassID = d.ID /*资产大类表ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_15_A03_ZCKC AS e ON a.AID = e.ID /*库存表ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校*/
GO

--资产变更表
CREATE VIEW [dbo].[VIEW_EDU_OAXT_15_A06_ZCBG_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[TypeID]--类别(领用、借用、报损)
      ,a.[TypeName]--类别名称
      ,a.[AID]--库存表ID
      ,a.[Name]--资产名称
      ,a.[Option]--操作
      ,a.[RegistTime]--登记时间
      ,a.[Remark]--备注
      ,a.[SumCount]--数量
      ,c.SCHOOLID as c_ZCKC_SCHOOLID--资产库存表 学校
      ,c.TypeID as c_ZCKC_TypeID--资产库存表 资产目录表ID
      ,c.ClassID as c_ZCKC_ClassID--资产库存表 资产大类表ID
      ,c.Name as c_ZCKC_Name--资产库存表 资产名称
      ,c.Info as c_ZCKC_Info--资产库存表 资产规格
      ,c.Productdate as c_ZCKC_Productdate--资产库存表 出厂时间
      ,c.Price as c_ZCKC_Price--资产库存表 单价
      ,c.SumCount as c_ZCKC_SumCount--资产库存表 数量
      ,c.Merchant as c_ZCKC_Merchant--资产库存表 供应商
      ,c.Vender as c_ZCKC_Vender--资产库存表 厂家
      ,c.Remark as c_ZCKC_Remark--资产库存表 备注
      ,c.AllCount as c_ZCKC_AllCount--资产库存表 资产总量
      ,c.RKL as c_ZCKC_RKL--资产库存表 入库量
      ,c.RQ as c_ZCKC_RQ--资产库存表 日期
      ,c.DW as c_ZCKC_DW--资产库存表 单位
      ,c.ZJ as c_ZCKC_ZJ--资产库存表 总价
      ,c.SYBM as c_ZCKC_SYBM--资产库存表 使用部门
      ,c.CFDW as c_ZCKC_CFDW--资产库存表 存放单位
      ,c.FZR as c_ZCKC_FZR--资产库存表 负责人
      ,c.CZFS as c_ZCKC_CZFS--资产库存表 处置方式

FROM dbo.EDU_OAXT_15_A06_ZCBG AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_15_A03_ZCKC AS c ON a.AID = c.ID /*库存表ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/
GO

--报修管理表
CREATE VIEW [dbo].[VIEW_EDU_OAXT_15_A08_BXGL_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[AID]--库存表ID
      ,a.[TypeID]--报修类型ID
      ,a.[Title]--报修主题
      ,a.[Telephone]--联系电话
      ,a.[Repairplace]--报修地点
      ,a.[Repaircontent]--报修内容
      ,a.[Repairpeople]--维修人
      ,a.[RepairDate]--维修时间
      ,a.[ReadrID]--阅读情况
      ,a.[Readr]--阅读情况
      ,a.[Applicant]--申请人
      ,a.[Approver]--审批人
      ,a.[Evaluate]--评价
      ,a.[StartDate]--开始时间
      ,a.[Status]--状态
      ,a.[Remark]--备注
      ,a.[SumCount]--数量
      ,a.[GZTP]--故障图片
      ,a.[WCZT]--完成状态
      ,a.[SCZT]--删除状态
      ,c.SCHOOLID as c_ZCKC_SCHOOLID--资产库存表 学校
      ,c.TypeID as c_ZCKC_TypeID--资产库存表 资产目录表ID
      ,c.ClassID as c_ZCKC_ClassID--资产库存表 资产大类表ID
      ,c.Name as c_ZCKC_Name--资产库存表 资产名称
      ,c.Info as c_ZCKC_Info--资产库存表 资产规格
      ,c.Productdate as c_ZCKC_Productdate--资产库存表 出厂时间
      ,c.Price as c_ZCKC_Price--资产库存表 单价
      ,c.SumCount as c_ZCKC_SumCount--资产库存表 数量
      ,c.Merchant as c_ZCKC_Merchant--资产库存表 供应商
      ,c.Vender as c_ZCKC_Vender--资产库存表 厂家
      ,c.Remark as c_ZCKC_Remark--资产库存表 备注
      ,c.AllCount as c_ZCKC_AllCount--资产库存表 资产总量
      ,c.RKL as c_ZCKC_RKL--资产库存表 入库量
      ,c.RQ as c_ZCKC_RQ--资产库存表 日期
      ,c.DW as c_ZCKC_DW--资产库存表 单位
      ,c.ZJ as c_ZCKC_ZJ--资产库存表 总价
      ,c.SYBM as c_ZCKC_SYBM--资产库存表 使用部门
      ,c.CFDW as c_ZCKC_CFDW--资产库存表 存放单位
      ,c.FZR as c_ZCKC_FZR--资产库存表 负责人
      ,c.CZFS as c_ZCKC_CZFS--资产库存表 处置方式
      ,d.SCHOOLID as d_BXLX_SCHOOLID--报修类型表 学校
      ,d.TypeName as d_BXLX_TypeName--报修类型表 类型名称
      ,d.Remark as d_BXLX_Remark--报修类型表 备注
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

FROM dbo.EDU_OAXT_15_A08_BXGL AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_15_A03_ZCKC AS c ON a.AID = c.ID /*库存表ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_15_A07_BXLX AS d ON a.TypeID = d.ID /*报修类型ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS e ON a.Applicant = e.LOGINNAME /*申请人*/ AND a.SCHOOLID = e.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS f ON a.Approver = f.LOGINNAME /*审批人*/ AND a.SCHOOLID = f.SCHOOLID /*学校*/
GO

--维修计划表
CREATE VIEW [dbo].[VIEW_EDU_OAXT_15_A09_WXJH_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[AID]--库存表ID
      ,a.[Title]--计划标题
      ,a.[Content]--维修内容
      ,c.SCHOOLID as c_ZCKC_SCHOOLID--资产库存表 学校
      ,c.TypeID as c_ZCKC_TypeID--资产库存表 资产目录表ID
      ,c.ClassID as c_ZCKC_ClassID--资产库存表 资产大类表ID
      ,c.Name as c_ZCKC_Name--资产库存表 资产名称
      ,c.Info as c_ZCKC_Info--资产库存表 资产规格
      ,c.Productdate as c_ZCKC_Productdate--资产库存表 出厂时间
      ,c.Price as c_ZCKC_Price--资产库存表 单价
      ,c.SumCount as c_ZCKC_SumCount--资产库存表 数量
      ,c.Merchant as c_ZCKC_Merchant--资产库存表 供应商
      ,c.Vender as c_ZCKC_Vender--资产库存表 厂家
      ,c.Remark as c_ZCKC_Remark--资产库存表 备注
      ,c.AllCount as c_ZCKC_AllCount--资产库存表 资产总量
      ,c.RKL as c_ZCKC_RKL--资产库存表 入库量
      ,c.RQ as c_ZCKC_RQ--资产库存表 日期
      ,c.DW as c_ZCKC_DW--资产库存表 单位
      ,c.ZJ as c_ZCKC_ZJ--资产库存表 总价
      ,c.SYBM as c_ZCKC_SYBM--资产库存表 使用部门
      ,c.CFDW as c_ZCKC_CFDW--资产库存表 存放单位
      ,c.FZR as c_ZCKC_FZR--资产库存表 负责人
      ,c.CZFS as c_ZCKC_CZFS--资产库存表 处置方式

FROM dbo.EDU_OAXT_15_A09_WXJH AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_15_A03_ZCKC AS c ON a.AID = c.ID /*库存表ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/
GO

--资产报废表
CREATE VIEW [dbo].[VIEW_EDU_OAXT_15_A10_ZCBF_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[AID]--库存表ID
      ,a.[Sum]--数量
      ,a.[Reporter]--申报人
      ,a.[Remark]--备注
      ,a.[RegsterID]--登记人ID
      ,a.[Statu]--状态
      ,a.[Registdate]--登记时间
      ,c.SCHOOLID as c_ZCKC_SCHOOLID--资产库存表 学校
      ,c.TypeID as c_ZCKC_TypeID--资产库存表 资产目录表ID
      ,c.ClassID as c_ZCKC_ClassID--资产库存表 资产大类表ID
      ,c.Name as c_ZCKC_Name--资产库存表 资产名称
      ,c.Info as c_ZCKC_Info--资产库存表 资产规格
      ,c.Productdate as c_ZCKC_Productdate--资产库存表 出厂时间
      ,c.Price as c_ZCKC_Price--资产库存表 单价
      ,c.SumCount as c_ZCKC_SumCount--资产库存表 数量
      ,c.Merchant as c_ZCKC_Merchant--资产库存表 供应商
      ,c.Vender as c_ZCKC_Vender--资产库存表 厂家
      ,c.Remark as c_ZCKC_Remark--资产库存表 备注
      ,c.AllCount as c_ZCKC_AllCount--资产库存表 资产总量
      ,c.RKL as c_ZCKC_RKL--资产库存表 入库量
      ,c.RQ as c_ZCKC_RQ--资产库存表 日期
      ,c.DW as c_ZCKC_DW--资产库存表 单位
      ,c.ZJ as c_ZCKC_ZJ--资产库存表 总价
      ,c.SYBM as c_ZCKC_SYBM--资产库存表 使用部门
      ,c.CFDW as c_ZCKC_CFDW--资产库存表 存放单位
      ,c.FZR as c_ZCKC_FZR--资产库存表 负责人
      ,c.CZFS as c_ZCKC_CZFS--资产库存表 处置方式
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

FROM dbo.EDU_OAXT_15_A10_ZCBF AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_15_A03_ZCKC AS c ON a.AID = c.ID /*库存表ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.RegsterID = d.LOGINNAME /*登记人ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校*/
GO

--资产盘点明细表
CREATE VIEW [dbo].[VIEW_EDU_OAXT_15_A12_ZCPDMX_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[AID]--库存表ID
      ,a.[PID]--盘点表ID
      ,a.[PUserID]--盘点人ID
      ,a.[Storesum]--库存数
      ,a.[RealSum]--实存数
      ,a.[Name]--资产名称
      ,a.[AllCount]--资产总量
      ,a.[Remark]--备注
      ,a.[BorrowCount]--借用数量
      ,c.SCHOOLID as c_ZCKC_SCHOOLID--资产库存表 学校
      ,c.TypeID as c_ZCKC_TypeID--资产库存表 资产目录表ID
      ,c.ClassID as c_ZCKC_ClassID--资产库存表 资产大类表ID
      ,c.Name as c_ZCKC_Name--资产库存表 资产名称
      ,c.Info as c_ZCKC_Info--资产库存表 资产规格
      ,c.Productdate as c_ZCKC_Productdate--资产库存表 出厂时间
      ,c.Price as c_ZCKC_Price--资产库存表 单价
      ,c.SumCount as c_ZCKC_SumCount--资产库存表 数量
      ,c.Merchant as c_ZCKC_Merchant--资产库存表 供应商
      ,c.Vender as c_ZCKC_Vender--资产库存表 厂家
      ,c.Remark as c_ZCKC_Remark--资产库存表 备注
      ,c.AllCount as c_ZCKC_AllCount--资产库存表 资产总量
      ,c.RKL as c_ZCKC_RKL--资产库存表 入库量
      ,c.RQ as c_ZCKC_RQ--资产库存表 日期
      ,c.DW as c_ZCKC_DW--资产库存表 单位
      ,c.ZJ as c_ZCKC_ZJ--资产库存表 总价
      ,c.SYBM as c_ZCKC_SYBM--资产库存表 使用部门
      ,c.CFDW as c_ZCKC_CFDW--资产库存表 存放单位
      ,c.FZR as c_ZCKC_FZR--资产库存表 负责人
      ,c.CZFS as c_ZCKC_CZFS--资产库存表 处置方式
      ,d.SCHOOLID as d_ZCPD_SCHOOLID--资产盘点表 学校
      ,d.Title as d_ZCPD_Title--资产盘点表 盘点名称
      ,d.PanDate as d_ZCPD_PanDate--资产盘点表 盘点日期
      ,d.PanTypeIDs as d_ZCPD_PanTypeIDs--资产盘点表 盘点目录ID列表
      ,d.Remark as d_ZCPD_Remark--资产盘点表 备注
      ,d.Statu as d_ZCPD_Statu--资产盘点表 状态
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

FROM dbo.EDU_OAXT_15_A12_ZCPDMX AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_15_A03_ZCKC AS c ON a.AID = c.ID /*库存表ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_15_A11_ZCPD AS d ON a.PID = d.ID /*盘点表ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS e ON a.PUserID = e.LOGINNAME /*盘点人ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校*/
GO

--维修记录表
CREATE VIEW [dbo].[VIEW_EDU_OAXT_15_A13_WXJL_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[WPID]--物品ID
      ,a.[WXZT]--维修状态
      ,a.[BZ]--备注
      ,c.SCHOOLID as c_BXGL_SCHOOLID--报修管理表 学校
      ,c.AID as c_BXGL_AID--报修管理表 库存表ID
      ,c.TypeID as c_BXGL_TypeID--报修管理表 报修类型ID
      ,c.Title as c_BXGL_Title--报修管理表 报修主题
      ,c.Telephone as c_BXGL_Telephone--报修管理表 联系电话
      ,c.Repairplace as c_BXGL_Repairplace--报修管理表 报修地点
      ,c.Repaircontent as c_BXGL_Repaircontent--报修管理表 报修内容
      ,c.Repairpeople as c_BXGL_Repairpeople--报修管理表 维修人
      ,c.RepairDate as c_BXGL_RepairDate--报修管理表 维修时间
      ,c.ReadrID as c_BXGL_ReadrID--报修管理表 阅读情况
      ,c.Readr as c_BXGL_Readr--报修管理表 阅读情况
      ,c.Applicant as c_BXGL_Applicant--报修管理表 申请人
      ,c.Approver as c_BXGL_Approver--报修管理表 审批人
      ,c.Evaluate as c_BXGL_Evaluate--报修管理表 评价
      ,c.StartDate as c_BXGL_StartDate--报修管理表 开始时间
      ,c.Status as c_BXGL_Status--报修管理表 状态
      ,c.Remark as c_BXGL_Remark--报修管理表 备注
      ,c.SumCount as c_BXGL_SumCount--报修管理表 数量
      ,c.GZTP as c_BXGL_GZTP--报修管理表 故障图片
      ,c.WCZT as c_BXGL_WCZT--报修管理表 完成状态
      ,c.SCZT as c_BXGL_SCZT--报修管理表 删除状态

FROM dbo.EDU_OAXT_15_A13_WXJL AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_15_A08_BXGL AS c ON a.WPID = c.ID /*物品ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/
GO

--报修故障信息表
CREATE VIEW [dbo].[VIEW_EDU_OAXT_15_A14_BXGZXX_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[BXLXID]--报修类型ID
      ,a.[GZXX]--故障信息
      ,c.SCHOOLID as c_BXLX_SCHOOLID--报修类型表 学校
      ,c.TypeName as c_BXLX_TypeName--报修类型表 类型名称
      ,c.Remark as c_BXLX_Remark--报修类型表 备注

FROM dbo.EDU_OAXT_15_A14_BXGZXX AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_15_A07_BXLX AS c ON a.BXLXID = c.ID /*报修类型ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/
GO

--流程模板表
CREATE VIEW [dbo].[VIEW_EDU_OAXT_20_A03_LCMB_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[MBLXID]--模板类型ID
      ,a.[MBMC]--模板名称
      ,a.[BDID]--表单ID
      ,a.[QSBZID]--起始步骤ID
      ,a.[JSBZID]--结束步骤ID
      ,a.[TJSJ]--添加时间
      ,a.[BZ]--备注
      ,c.LXMC as c_LCMBLX_LXMC--流程模板类型表 类型名称
      ,c.BZ as c_LCMBLX_BZ--流程模板类型表 备注
      ,d.SCHOOLID as d_LCBDSJ_SCHOOLID--流程表单数据表 学校
      ,d.BDMC as d_LCBDSJ_BDMC--流程表单数据表 表单名称
      ,d.BDNR as d_LCBDSJ_BDNR--流程表单数据表 表单内容
      ,d.TJSJ as d_LCBDSJ_TJSJ--流程表单数据表 添加时间
      ,d.BZ as d_LCBDSJ_BZ--流程表单数据表 备注
      ,e.SCHOOLID as e_LCBZ_SCHOOLID--流程步骤表 学校
      ,e.BZMC as e_LCBZ_BZMC--流程步骤表 步骤名称
      ,e.LCMBID as e_LCBZ_LCMBID--流程步骤表 流程模板ID
      ,e.SPRIDLB as e_LCBZ_SPRIDLB--流程步骤表 审批人ID列表
      ,e.SPRMCLB as e_LCBZ_SPRMCLB--流程步骤表 审批人名称列表
      ,e.SYBZID as e_LCBZ_SYBZID--流程步骤表 上一步骤ID
      ,e.XYBZID as e_LCBZ_XYBZID--流程步骤表 下一步骤ID
      ,e.BZ as e_LCBZ_BZ--流程步骤表 备注
      ,f.SCHOOLID as f_LCBZ_SCHOOLID--流程步骤表 学校
      ,f.BZMC as f_LCBZ_BZMC--流程步骤表 步骤名称
      ,f.LCMBID as f_LCBZ_LCMBID--流程步骤表 流程模板ID
      ,f.SPRIDLB as f_LCBZ_SPRIDLB--流程步骤表 审批人ID列表
      ,f.SPRMCLB as f_LCBZ_SPRMCLB--流程步骤表 审批人名称列表
      ,f.SYBZID as f_LCBZ_SYBZID--流程步骤表 上一步骤ID
      ,f.XYBZID as f_LCBZ_XYBZID--流程步骤表 下一步骤ID
      ,f.BZ as f_LCBZ_BZ--流程步骤表 备注

FROM dbo.EDU_OAXT_20_A03_LCMB AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_20_A01_LCMBLX AS c ON a.MBLXID = c.ID /*模板类型ID*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_20_A02_LCBDSJ AS d ON a.BDID = d.ID /*表单ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_20_A04_LCBZ AS e ON a.QSBZID = e.ID /*起始步骤ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_20_A04_LCBZ AS f ON a.JSBZID = f.ID /*结束步骤ID*/ AND a.SCHOOLID = f.SCHOOLID /*学校*/
GO

--流程步骤表
CREATE VIEW [dbo].[VIEW_EDU_OAXT_20_A04_LCBZ_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[BZMC]--步骤名称
      ,a.[LCMBID]--流程模板ID
      ,a.[SPRIDLB]--审批人ID列表
      ,a.[SPRMCLB]--审批人名称列表
      ,a.[SYBZID]--上一步骤ID
      ,a.[XYBZID]--下一步骤ID
      ,a.[BZ]--备注
      ,c.SCHOOLID as c_LCMB_SCHOOLID--流程模板表 学校
      ,c.MBLXID as c_LCMB_MBLXID--流程模板表 模板类型ID
      ,c.MBMC as c_LCMB_MBMC--流程模板表 模板名称
      ,c.BDID as c_LCMB_BDID--流程模板表 表单ID
      ,c.QSBZID as c_LCMB_QSBZID--流程模板表 起始步骤ID
      ,c.JSBZID as c_LCMB_JSBZID--流程模板表 结束步骤ID
      ,c.TJSJ as c_LCMB_TJSJ--流程模板表 添加时间
      ,c.BZ as c_LCMB_BZ--流程模板表 备注
      ,d.SCHOOLID as d_LCBZ_SCHOOLID--流程步骤表 学校
      ,d.BZMC as d_LCBZ_BZMC--流程步骤表 步骤名称
      ,d.LCMBID as d_LCBZ_LCMBID--流程步骤表 流程模板ID
      ,d.SPRIDLB as d_LCBZ_SPRIDLB--流程步骤表 审批人ID列表
      ,d.SPRMCLB as d_LCBZ_SPRMCLB--流程步骤表 审批人名称列表
      ,d.SYBZID as d_LCBZ_SYBZID--流程步骤表 上一步骤ID
      ,d.XYBZID as d_LCBZ_XYBZID--流程步骤表 下一步骤ID
      ,d.BZ as d_LCBZ_BZ--流程步骤表 备注
      ,e.SCHOOLID as e_LCBZ_SCHOOLID--流程步骤表 学校
      ,e.BZMC as e_LCBZ_BZMC--流程步骤表 步骤名称
      ,e.LCMBID as e_LCBZ_LCMBID--流程步骤表 流程模板ID
      ,e.SPRIDLB as e_LCBZ_SPRIDLB--流程步骤表 审批人ID列表
      ,e.SPRMCLB as e_LCBZ_SPRMCLB--流程步骤表 审批人名称列表
      ,e.SYBZID as e_LCBZ_SYBZID--流程步骤表 上一步骤ID
      ,e.XYBZID as e_LCBZ_XYBZID--流程步骤表 下一步骤ID
      ,e.BZ as e_LCBZ_BZ--流程步骤表 备注

FROM dbo.EDU_OAXT_20_A04_LCBZ AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_20_A03_LCMB AS c ON a.LCMBID = c.ID /*流程模板ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_20_A04_LCBZ AS d ON a.SYBZID = d.ID /*上一步骤ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_20_A04_LCBZ AS e ON a.XYBZID = e.ID /*下一步骤ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校*/
GO

--流程实例表
CREATE VIEW [dbo].[VIEW_EDU_OAXT_20_A05_LCSL_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[LCMBID]--流程模板ID
      ,a.[SQRID]--申请人ID
      ,a.[SPRID]--审批人ID
      ,a.[SQSJ]--申请时间
      ,a.[DQBZID]--当前步骤ID
      ,a.[DQBZZXZT]--当前步骤执行状态
      ,a.[YXQ]--有效期
      ,a.[SLZT]--实例状态
      ,a.[FJ]--附件
      ,a.[BZ]--备注
      ,a.[LXID]--类型ID
      ,a.[LXMC]--类型名称
      ,c.SCHOOLID as c_LCMB_SCHOOLID--流程模板表 学校
      ,c.MBLXID as c_LCMB_MBLXID--流程模板表 模板类型ID
      ,c.MBMC as c_LCMB_MBMC--流程模板表 模板名称
      ,c.BDID as c_LCMB_BDID--流程模板表 表单ID
      ,c.QSBZID as c_LCMB_QSBZID--流程模板表 起始步骤ID
      ,c.JSBZID as c_LCMB_JSBZID--流程模板表 结束步骤ID
      ,c.TJSJ as c_LCMB_TJSJ--流程模板表 添加时间
      ,c.BZ as c_LCMB_BZ--流程模板表 备注
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
      ,f.SCHOOLID as f_LCBZ_SCHOOLID--流程步骤表 学校
      ,f.BZMC as f_LCBZ_BZMC--流程步骤表 步骤名称
      ,f.LCMBID as f_LCBZ_LCMBID--流程步骤表 流程模板ID
      ,f.SPRIDLB as f_LCBZ_SPRIDLB--流程步骤表 审批人ID列表
      ,f.SPRMCLB as f_LCBZ_SPRMCLB--流程步骤表 审批人名称列表
      ,f.SYBZID as f_LCBZ_SYBZID--流程步骤表 上一步骤ID
      ,f.XYBZID as f_LCBZ_XYBZID--流程步骤表 下一步骤ID
      ,f.BZ as f_LCBZ_BZ--流程步骤表 备注

FROM dbo.EDU_OAXT_20_A05_LCSL AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_20_A03_LCMB AS c ON a.LCMBID = c.ID /*流程模板ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.SQRID = d.LOGINNAME /*申请人ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS e ON a.SPRID = e.LOGINNAME /*审批人ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_20_A04_LCBZ AS f ON a.DQBZID = f.ID /*当前步骤ID*/ AND a.SCHOOLID = f.SCHOOLID /*学校*/
GO

--流程审核记录表
CREATE VIEW [dbo].[VIEW_EDU_OAXT_20_A06_LCSHJL_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[LCMBMC]--流程模板名称
      ,a.[LCSLID]--流程实例ID
      ,a.[BZMC]--步骤名称
      ,a.[BZID]--步骤ID
      ,a.[LCMBLXID]--流程模板类型ID
      ,a.[SQRID]--申请人ID
      ,a.[SPRID]--审批人ID
      ,a.[SHZT]--审核状态
      ,a.[TJSJ]--添加时间
      ,a.[BZ]--备注
      ,c.SCHOOLID as c_LCSL_SCHOOLID--流程实例表 学校
      ,c.LCMBID as c_LCSL_LCMBID--流程实例表 流程模板ID
      ,c.SQRID as c_LCSL_SQRID--流程实例表 申请人ID
      ,c.SPRID as c_LCSL_SPRID--流程实例表 审批人ID
      ,c.SQSJ as c_LCSL_SQSJ--流程实例表 申请时间
      ,c.DQBZID as c_LCSL_DQBZID--流程实例表 当前步骤ID
      ,c.DQBZZXZT as c_LCSL_DQBZZXZT--流程实例表 当前步骤执行状态
      ,c.YXQ as c_LCSL_YXQ--流程实例表 有效期
      ,c.SLZT as c_LCSL_SLZT--流程实例表 实例状态
      ,c.FJ as c_LCSL_FJ--流程实例表 附件
      ,c.BZ as c_LCSL_BZ--流程实例表 备注
      ,c.LXID as c_LCSL_LXID--流程实例表 类型ID
      ,c.LXMC as c_LCSL_LXMC--流程实例表 类型名称
      ,d.SCHOOLID as d_LCBZ_SCHOOLID--流程步骤表 学校
      ,d.BZMC as d_LCBZ_BZMC--流程步骤表 步骤名称
      ,d.LCMBID as d_LCBZ_LCMBID--流程步骤表 流程模板ID
      ,d.SPRIDLB as d_LCBZ_SPRIDLB--流程步骤表 审批人ID列表
      ,d.SPRMCLB as d_LCBZ_SPRMCLB--流程步骤表 审批人名称列表
      ,d.SYBZID as d_LCBZ_SYBZID--流程步骤表 上一步骤ID
      ,d.XYBZID as d_LCBZ_XYBZID--流程步骤表 下一步骤ID
      ,d.BZ as d_LCBZ_BZ--流程步骤表 备注
      ,e.LXMC as e_LCMBLX_LXMC--流程模板类型表 类型名称
      ,e.BZ as e_LCMBLX_BZ--流程模板类型表 备注
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
      ,g.YHRY as g_USER_YHRY--应用系统用户表 用户荣誉
      ,g.YHJF as g_USER_YHJF--应用系统用户表 用户积分
      ,g.BMID as g_USER_BMID--应用系统用户表 部门ID

FROM dbo.EDU_OAXT_20_A06_LCSHJL AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_20_A05_LCSL AS c ON a.LCSLID = c.ID /*流程实例ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_20_A04_LCBZ AS d ON a.BZID = d.ID /*步骤ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_20_A01_LCMBLX AS e ON a.LCMBLXID = e.ID /*流程模板类型ID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS f ON a.SQRID = f.LOGINNAME /*申请人ID*/ AND a.SCHOOLID = f.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS g ON a.SPRID = g.LOGINNAME /*审批人ID*/ AND a.SCHOOLID = g.SCHOOLID /*学校*/
GO

--流程模板类型配置表
CREATE VIEW [dbo].[VIEW_EDU_OAXT_20_A07_LCMBLXPZ_DISP]
AS
SELECT a.[LCMBLXID]--流程模板类型ID
      ,a.[SCHOOLID]--学校
      ,a.[BSYLC]--不使用流程
      ,b.LXMC as b_LCMBLX_LXMC--流程模板类型表 类型名称
      ,b.BZ as b_LCMBLX_BZ--流程模板类型表 备注

FROM dbo.EDU_OAXT_20_A07_LCMBLXPZ AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_20_A01_LCMBLX AS b ON a.LCMBLXID = b.ID /*流程模板类型ID*/
GO

--请假申请表
CREATE VIEW [dbo].[VIEW_EDU_OAXT_21_A02_QJSQ_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[LCSLID]--流程实例ID
      ,a.[QJLXID]--请假类型ID
      ,a.[QJYY]--请假原因
      ,a.[KSSJ]--开始时间
      ,a.[JSSJ]--结束时间
      ,a.[QJTS]--请假天数
      ,a.[SQSJ]--申请时间
      ,a.[SQZT]--申请状态
      ,a.[SQRID]--申请人ID
      ,a.[BZ]--备注
      ,a.[BJ]--补假
      ,a.[XJ]--销假
      ,a.[XJRID]--销假人ID
      ,a.[XJSJ]--销假时间
      ,c.SCHOOLID as c_LCSL_SCHOOLID--流程实例表 学校
      ,c.LCMBID as c_LCSL_LCMBID--流程实例表 流程模板ID
      ,c.SQRID as c_LCSL_SQRID--流程实例表 申请人ID
      ,c.SPRID as c_LCSL_SPRID--流程实例表 审批人ID
      ,c.SQSJ as c_LCSL_SQSJ--流程实例表 申请时间
      ,c.DQBZID as c_LCSL_DQBZID--流程实例表 当前步骤ID
      ,c.DQBZZXZT as c_LCSL_DQBZZXZT--流程实例表 当前步骤执行状态
      ,c.YXQ as c_LCSL_YXQ--流程实例表 有效期
      ,c.SLZT as c_LCSL_SLZT--流程实例表 实例状态
      ,c.FJ as c_LCSL_FJ--流程实例表 附件
      ,c.BZ as c_LCSL_BZ--流程实例表 备注
      ,c.LXID as c_LCSL_LXID--流程实例表 类型ID
      ,c.LXMC as c_LCSL_LXMC--流程实例表 类型名称
      ,d.SCHOOLID as d_QJLX_SCHOOLID--请假类型表 学校
      ,d.LXMC as d_QJLX_LXMC--请假类型表 类型名称
      ,d.BZ as d_QJLX_BZ--请假类型表 备注
      ,d.JSDW as d_QJLX_JSDW--请假类型表 计时单位
      ,d.ZCSJ as d_QJLX_ZCSJ--请假类型表 最长时间
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

FROM dbo.EDU_OAXT_21_A02_QJSQ AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_20_A05_LCSL AS c ON a.LCSLID = c.ID /*流程实例ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_21_A01_QJLX AS d ON a.QJLXID = d.ID /*请假类型ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS e ON a.SQRID = e.LOGINNAME /*申请人ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS f ON a.XJRID = f.LOGINNAME /*销假人ID*/ AND a.SCHOOLID = f.SCHOOLID /*学校*/
GO

--会议申请表
CREATE VIEW [dbo].[VIEW_EDU_OAXT_22_A02_HYSQ_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[LCSLID]--流程实例ID
      ,a.[HYMC]--会议名称
      ,a.[HYNR]--会议内容
      ,a.[ZCRID]--主持人
      ,a.[JLRID]--记录人
      ,a.[HYJB]--会议级别
      ,a.[HYDDID]--会议地点ID
      ,a.[HYDZ]--会议地址
      ,a.[YHRYIDLB]--与会人员ID列表
      ,a.[YHRYXMLB]--与会人员姓名列表
      ,a.[KSSJ]--开始时间
      ,a.[JSSJ]--结束时间
      ,a.[SQSJ]--申请时间
      ,a.[SQZT]--申请状态
      ,a.[SQRID]--申请人ID
      ,a.[BZ]--备注
      ,a.[FJ]--附件
      ,c.SCHOOLID as c_LCSL_SCHOOLID--流程实例表 学校
      ,c.LCMBID as c_LCSL_LCMBID--流程实例表 流程模板ID
      ,c.SQRID as c_LCSL_SQRID--流程实例表 申请人ID
      ,c.SPRID as c_LCSL_SPRID--流程实例表 审批人ID
      ,c.SQSJ as c_LCSL_SQSJ--流程实例表 申请时间
      ,c.DQBZID as c_LCSL_DQBZID--流程实例表 当前步骤ID
      ,c.DQBZZXZT as c_LCSL_DQBZZXZT--流程实例表 当前步骤执行状态
      ,c.YXQ as c_LCSL_YXQ--流程实例表 有效期
      ,c.SLZT as c_LCSL_SLZT--流程实例表 实例状态
      ,c.FJ as c_LCSL_FJ--流程实例表 附件
      ,c.BZ as c_LCSL_BZ--流程实例表 备注
      ,c.LXID as c_LCSL_LXID--流程实例表 类型ID
      ,c.LXMC as c_LCSL_LXMC--流程实例表 类型名称
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
      ,f.SCHOOLID as f_HYSSJ_SCHOOLID--会议室数据表 学校
      ,f.FJMC as f_HYSSJ_FJMC--会议室数据表 房间名称
      ,f.FJDZ as f_HYSSJ_FJDZ--会议室数据表 房间地址
      ,f.ZDRNRS as f_HYSSJ_ZDRNRS--会议室数据表 最大容纳人数
      ,f.BZ as f_HYSSJ_BZ--会议室数据表 备注
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
      ,g.YHRY as g_USER_YHRY--应用系统用户表 用户荣誉
      ,g.YHJF as g_USER_YHJF--应用系统用户表 用户积分
      ,g.BMID as g_USER_BMID--应用系统用户表 部门ID

FROM dbo.EDU_OAXT_22_A02_HYSQ AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_20_A05_LCSL AS c ON a.LCSLID = c.ID /*流程实例ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.ZCRID = d.LOGINNAME /*主持人*/ AND a.SCHOOLID = d.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS e ON a.JLRID = e.LOGINNAME /*记录人*/ AND a.SCHOOLID = e.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_22_A01_HYSSJ AS f ON a.HYDDID = f.ID /*会议地点ID*/ AND a.SCHOOLID = f.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS g ON a.SQRID = g.LOGINNAME /*申请人ID*/ AND a.SCHOOLID = g.SCHOOLID /*学校*/
GO

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

--公文申请表
CREATE VIEW [dbo].[VIEW_EDU_OAXT_23_A01_GWSQ_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[LCSLID]--流程实例ID
      ,a.[GWBT]--公文标题
      ,a.[GWNR]--公文内容
      ,a.[FJ]--附件
      ,a.[SJRIDLB]--收件人ID列表
      ,a.[SJRXMLB]--收件人姓名列表
      ,a.[YDQK]--阅读情况
      ,a.[SQSJ]--申请时间
      ,a.[SQRID]--申请人ID
      ,a.[SQZT]--申请状态
      ,a.[BZ]--备注
      ,a.[SWDW]--收文单位
      ,a.[YGDCS]--已归档次数
      ,a.[WJBH]--文件编号
      ,c.SCHOOLID as c_LCSL_SCHOOLID--流程实例表 学校
      ,c.LCMBID as c_LCSL_LCMBID--流程实例表 流程模板ID
      ,c.SQRID as c_LCSL_SQRID--流程实例表 申请人ID
      ,c.SPRID as c_LCSL_SPRID--流程实例表 审批人ID
      ,c.SQSJ as c_LCSL_SQSJ--流程实例表 申请时间
      ,c.DQBZID as c_LCSL_DQBZID--流程实例表 当前步骤ID
      ,c.DQBZZXZT as c_LCSL_DQBZZXZT--流程实例表 当前步骤执行状态
      ,c.YXQ as c_LCSL_YXQ--流程实例表 有效期
      ,c.SLZT as c_LCSL_SLZT--流程实例表 实例状态
      ,c.FJ as c_LCSL_FJ--流程实例表 附件
      ,c.BZ as c_LCSL_BZ--流程实例表 备注
      ,c.LXID as c_LCSL_LXID--流程实例表 类型ID
      ,c.LXMC as c_LCSL_LXMC--流程实例表 类型名称
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

FROM dbo.EDU_OAXT_23_A01_GWSQ AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_20_A05_LCSL AS c ON a.LCSLID = c.ID /*流程实例ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.SQRID = d.LOGINNAME /*申请人ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校*/
GO

--用车申请表
CREATE VIEW [dbo].[VIEW_EDU_OAXT_24_A01_YCSQ_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[LCSLID]--流程实例ID
      ,a.[YCYY]--用车原因
      ,a.[WCRS]--外出人数
      ,a.[KSSJ]--开始时间
      ,a.[SYTS]--使用天数
      ,a.[SQSJ]--申请时间
      ,a.[SQRID]--申请人ID
      ,a.[SQZT]--申请状态
      ,a.[BZ]--备注
      ,a.[SQCLID]--申请车辆ID
      ,a.[JSSJ]--结束时间
      ,c.SCHOOLID as c_LCSL_SCHOOLID--流程实例表 学校
      ,c.LCMBID as c_LCSL_LCMBID--流程实例表 流程模板ID
      ,c.SQRID as c_LCSL_SQRID--流程实例表 申请人ID
      ,c.SPRID as c_LCSL_SPRID--流程实例表 审批人ID
      ,c.SQSJ as c_LCSL_SQSJ--流程实例表 申请时间
      ,c.DQBZID as c_LCSL_DQBZID--流程实例表 当前步骤ID
      ,c.DQBZZXZT as c_LCSL_DQBZZXZT--流程实例表 当前步骤执行状态
      ,c.YXQ as c_LCSL_YXQ--流程实例表 有效期
      ,c.SLZT as c_LCSL_SLZT--流程实例表 实例状态
      ,c.FJ as c_LCSL_FJ--流程实例表 附件
      ,c.BZ as c_LCSL_BZ--流程实例表 备注
      ,c.LXID as c_LCSL_LXID--流程实例表 类型ID
      ,c.LXMC as c_LCSL_LXMC--流程实例表 类型名称
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
      ,e.SCHOOLID as e_CLSJ_SCHOOLID--车辆数据表 学校
      ,e.CLMC as e_CLSJ_CLMC--车辆数据表 车辆名称
      ,e.CLPP as e_CLSJ_CLPP--车辆数据表 车辆品牌
      ,e.CLCPH as e_CLSJ_CLCPH--车辆数据表 车辆车牌号
      ,e.ZDRNRS as e_CLSJ_ZDRNRS--车辆数据表 最大可载人数
      ,e.CLZT as e_CLSJ_CLZT--车辆数据表 车辆状态
      ,e.BZ as e_CLSJ_BZ--车辆数据表 备注

FROM dbo.EDU_OAXT_24_A01_YCSQ AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_20_A05_LCSL AS c ON a.LCSLID = c.ID /*流程实例ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.SQRID = d.LOGINNAME /*申请人ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_24_A03_CLSJ AS e ON a.SQCLID = e.ID /*申请车辆ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校*/
GO

--采购申请表
CREATE VIEW [dbo].[VIEW_EDU_OAXT_25_A01_CGSQ_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[LCSLID]--流程实例ID
      ,a.[CGDMC]--采购单名称
      ,a.[CGNR]--采购内容
      ,a.[FJ]--附件
      ,a.[SQSJ]--申请时间
      ,a.[SQRID]--申请人ID
      ,a.[CGZT]--采购状态
      ,a.[BZ]--备注
      ,c.SCHOOLID as c_LCSL_SCHOOLID--流程实例表 学校
      ,c.LCMBID as c_LCSL_LCMBID--流程实例表 流程模板ID
      ,c.SQRID as c_LCSL_SQRID--流程实例表 申请人ID
      ,c.SPRID as c_LCSL_SPRID--流程实例表 审批人ID
      ,c.SQSJ as c_LCSL_SQSJ--流程实例表 申请时间
      ,c.DQBZID as c_LCSL_DQBZID--流程实例表 当前步骤ID
      ,c.DQBZZXZT as c_LCSL_DQBZZXZT--流程实例表 当前步骤执行状态
      ,c.YXQ as c_LCSL_YXQ--流程实例表 有效期
      ,c.SLZT as c_LCSL_SLZT--流程实例表 实例状态
      ,c.FJ as c_LCSL_FJ--流程实例表 附件
      ,c.BZ as c_LCSL_BZ--流程实例表 备注
      ,c.LXID as c_LCSL_LXID--流程实例表 类型ID
      ,c.LXMC as c_LCSL_LXMC--流程实例表 类型名称
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

FROM dbo.EDU_OAXT_25_A01_CGSQ AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_20_A05_LCSL AS c ON a.LCSLID = c.ID /*流程实例ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.SQRID = d.LOGINNAME /*申请人ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校*/
GO

--实验室申请表
CREATE VIEW [dbo].[VIEW_EDU_OAXT_26_A03_SYSSQ_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[SYSID]--实验室ID
      ,a.[LCSLID]--流程实例ID
      ,a.[SYQC]--实验器材
      ,a.[SYMC]--实验名称
      ,a.[KM]--科目
      ,a.[BJ]--班级
      ,a.[KSSJ]--开始时间
      ,a.[JSSJ]--结束时间
      ,a.[SQSJ]--申请时间
      ,a.[SQZT]--申请状态
      ,a.[SQRID]--申请人ID
      ,a.[BZ]--备注
      ,c.SCHOOLID as c_SYSSJ_SCHOOLID--实验室数据表 学校
      ,c.MC as c_SYSSJ_MC--实验室数据表 名称
      ,c.DD as c_SYSSJ_DD--实验室数据表 地点
      ,c.FZR as c_SYSSJ_FZR--实验室数据表 负责人
      ,d.SCHOOLID as d_LCSL_SCHOOLID--流程实例表 学校
      ,d.LCMBID as d_LCSL_LCMBID--流程实例表 流程模板ID
      ,d.SQRID as d_LCSL_SQRID--流程实例表 申请人ID
      ,d.SPRID as d_LCSL_SPRID--流程实例表 审批人ID
      ,d.SQSJ as d_LCSL_SQSJ--流程实例表 申请时间
      ,d.DQBZID as d_LCSL_DQBZID--流程实例表 当前步骤ID
      ,d.DQBZZXZT as d_LCSL_DQBZZXZT--流程实例表 当前步骤执行状态
      ,d.YXQ as d_LCSL_YXQ--流程实例表 有效期
      ,d.SLZT as d_LCSL_SLZT--流程实例表 实例状态
      ,d.FJ as d_LCSL_FJ--流程实例表 附件
      ,d.BZ as d_LCSL_BZ--流程实例表 备注
      ,d.LXID as d_LCSL_LXID--流程实例表 类型ID
      ,d.LXMC as d_LCSL_LXMC--流程实例表 类型名称
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

FROM dbo.EDU_OAXT_26_A03_SYSSQ AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_26_A01_SYSSJ AS c ON a.SYSID = c.ID /*实验室ID*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_20_A05_LCSL AS d ON a.LCSLID = d.ID /*流程实例ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS e ON a.SQRID = e.LOGINNAME /*申请人ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校*/
GO

--个人通讯录表
CREATE VIEW [dbo].[VIEW_EDU_OAXT_31_A01_GRTXL_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[GRID]--个人ID
      ,a.[LXRXM]--联系人姓名
      ,a.[LXRDH]--联系人电话
      ,c.SCHOOLID as c_USER_SCHOOLID--应用系统用户表 学校ID
      ,c.APPID as c_USER_APPID--应用系统用户表 应用ID
      ,c.PWD as c_USER_PWD--应用系统用户表 密码
      ,c.STATUS as c_USER_STATUS--应用系统用户表 用户状态
      ,c.USERTYPE as c_USER_USERTYPE--应用系统用户表 用户类别
      ,c.USERID as c_USER_USERID--应用系统用户表 用户ID
      ,c.ROLEIDLst as c_USER_ROLEIDLst--应用系统用户表 用户角色
      ,c.XM as c_USER_XM--应用系统用户表 姓名
      ,c.XB as c_USER_XB--应用系统用户表 性别
      ,c.QQ as c_USER_QQ--应用系统用户表 QQ
      ,c.DZYJ as c_USER_DZYJ--应用系统用户表 电子邮件
      ,c.LXDH as c_USER_LXDH--应用系统用户表 联系电话
      ,c.ZJDLSJ as c_USER_ZJDLSJ--应用系统用户表 最近一次登录时间
      ,c.DLCGCS as c_USER_DLCGCS--应用系统用户表 登录成功次数
      ,c.YHCJSJ as c_USER_YHCJSJ--应用系统用户表 用户创建时间
      ,c.YHRY as c_USER_YHRY--应用系统用户表 用户荣誉
      ,c.YHJF as c_USER_YHJF--应用系统用户表 用户积分
      ,c.BMID as c_USER_BMID--应用系统用户表 部门ID

FROM dbo.EDU_OAXT_31_A01_GRTXL AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS c ON a.GRID = c.LOGINNAME /*个人ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/
GO

--调查问卷题目表
CREATE VIEW [dbo].[VIEW_EDU_OAXT_32_A02_DCWJTM_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[WJID]--所属问卷
      ,a.[TypeID]--题目类型
      ,a.[Title]--题目
      ,a.[SSDL]--所属大类
      ,c.SCHOOLID as c_DCWJ_SCHOOLID--调查问卷数据表 学校
      ,c.Title as c_DCWJ_Title--调查问卷数据表 问卷名称
      ,c.Users as c_DCWJ_Users--调查问卷数据表 参选人员
      ,c.StartTime as c_DCWJ_StartTime--调查问卷数据表 开始时间
      ,c.EndTime as c_DCWJ_EndTime--调查问卷数据表 结束时间
      ,c.IsStart as c_DCWJ_IsStart--调查问卷数据表 是否开启
      ,c.JJ as c_DCWJ_JJ--调查问卷数据表 简介

FROM dbo.EDU_OAXT_32_A02_DCWJTM AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_32_A01_DCWJ AS c ON a.WJID = c.ID /*所属问卷*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/
GO

--问卷题目选项表
CREATE VIEW [dbo].[VIEW_EDU_OAXT_32_A03_DCWJTMXX_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[TMID]--所属题目
      ,a.[WJID]--所属问卷
      ,a.[SelectItem]--选项
      ,a.[XXFZ]--选项分值
      ,c.SCHOOLID as c_DCWJTM_SCHOOLID--调查问卷题目表 学校
      ,c.WJID as c_DCWJTM_WJID--调查问卷题目表 所属问卷
      ,c.TypeID as c_DCWJTM_TypeID--调查问卷题目表 题目类型
      ,c.Title as c_DCWJTM_Title--调查问卷题目表 题目
      ,c.SSDL as c_DCWJTM_SSDL--调查问卷题目表 所属大类
      ,d.SCHOOLID as d_DCWJ_SCHOOLID--调查问卷数据表 学校
      ,d.Title as d_DCWJ_Title--调查问卷数据表 问卷名称
      ,d.Users as d_DCWJ_Users--调查问卷数据表 参选人员
      ,d.StartTime as d_DCWJ_StartTime--调查问卷数据表 开始时间
      ,d.EndTime as d_DCWJ_EndTime--调查问卷数据表 结束时间
      ,d.IsStart as d_DCWJ_IsStart--调查问卷数据表 是否开启
      ,d.JJ as d_DCWJ_JJ--调查问卷数据表 简介

FROM dbo.EDU_OAXT_32_A03_DCWJTMXX AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_32_A02_DCWJTM AS c ON a.TMID = c.ID /*所属题目*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_32_A01_DCWJ AS d ON a.WJID = d.ID /*所属问卷*/ AND a.SCHOOLID = d.SCHOOLID /*学校*/
GO

--问卷结果记录表
CREATE VIEW [dbo].[VIEW_EDU_OAXT_32_A04_DCWJJL_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[YHID]--用户ID
      ,a.[WJID]--所属问卷ID
      ,a.[TMID]--所属题目ID
      ,a.[XXID]--选项ID
      ,a.[XXFZ]--选项分值
      ,a.[TJZT]--提交状态
      ,c.SCHOOLID as c_USER_SCHOOLID--应用系统用户表 学校ID
      ,c.APPID as c_USER_APPID--应用系统用户表 应用ID
      ,c.PWD as c_USER_PWD--应用系统用户表 密码
      ,c.STATUS as c_USER_STATUS--应用系统用户表 用户状态
      ,c.USERTYPE as c_USER_USERTYPE--应用系统用户表 用户类别
      ,c.USERID as c_USER_USERID--应用系统用户表 用户ID
      ,c.ROLEIDLst as c_USER_ROLEIDLst--应用系统用户表 用户角色
      ,c.XM as c_USER_XM--应用系统用户表 姓名
      ,c.XB as c_USER_XB--应用系统用户表 性别
      ,c.QQ as c_USER_QQ--应用系统用户表 QQ
      ,c.DZYJ as c_USER_DZYJ--应用系统用户表 电子邮件
      ,c.LXDH as c_USER_LXDH--应用系统用户表 联系电话
      ,c.ZJDLSJ as c_USER_ZJDLSJ--应用系统用户表 最近一次登录时间
      ,c.DLCGCS as c_USER_DLCGCS--应用系统用户表 登录成功次数
      ,c.YHCJSJ as c_USER_YHCJSJ--应用系统用户表 用户创建时间
      ,c.YHRY as c_USER_YHRY--应用系统用户表 用户荣誉
      ,c.YHJF as c_USER_YHJF--应用系统用户表 用户积分
      ,c.BMID as c_USER_BMID--应用系统用户表 部门ID
      ,d.SCHOOLID as d_DCWJ_SCHOOLID--调查问卷数据表 学校
      ,d.Title as d_DCWJ_Title--调查问卷数据表 问卷名称
      ,d.Users as d_DCWJ_Users--调查问卷数据表 参选人员
      ,d.StartTime as d_DCWJ_StartTime--调查问卷数据表 开始时间
      ,d.EndTime as d_DCWJ_EndTime--调查问卷数据表 结束时间
      ,d.IsStart as d_DCWJ_IsStart--调查问卷数据表 是否开启
      ,d.JJ as d_DCWJ_JJ--调查问卷数据表 简介
      ,e.SCHOOLID as e_DCWJTM_SCHOOLID--调查问卷题目表 学校
      ,e.WJID as e_DCWJTM_WJID--调查问卷题目表 所属问卷
      ,e.TypeID as e_DCWJTM_TypeID--调查问卷题目表 题目类型
      ,e.Title as e_DCWJTM_Title--调查问卷题目表 题目
      ,e.SSDL as e_DCWJTM_SSDL--调查问卷题目表 所属大类
      ,f.SCHOOLID as f_DCWJTMXX_SCHOOLID--问卷题目选项表 学校
      ,f.TMID as f_DCWJTMXX_TMID--问卷题目选项表 所属题目
      ,f.WJID as f_DCWJTMXX_WJID--问卷题目选项表 所属问卷
      ,f.SelectItem as f_DCWJTMXX_SelectItem--问卷题目选项表 选项
      ,f.XXFZ as f_DCWJTMXX_XXFZ--问卷题目选项表 选项分值

FROM dbo.EDU_OAXT_32_A04_DCWJJL AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS c ON a.YHID = c.LOGINNAME /*用户ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_32_A01_DCWJ AS d ON a.WJID = d.ID /*所属问卷ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_32_A02_DCWJTM AS e ON a.TMID = e.ID /*所属题目ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_32_A03_DCWJTMXX AS f ON a.XXID = f.ID /*选项ID*/ AND a.SCHOOLID = f.SCHOOLID /*学校*/
GO

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

--收文表
CREATE VIEW [dbo].[VIEW_EDU_OAXT_33_A04_SW_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[GWID]--公文ID
      ,a.[XFRID]--下发人ID
      ,a.[JSRID]--接受人ID
      ,a.[XFSJ]--下发时间
      ,a.[QSZT]--签收状态
      ,a.[DXTZZT]--短信通知状态
      ,a.[HFZT]--回复状态
      ,a.[HFXX]--回复信息
      ,a.[HFFJ]--回复附件
      ,a.[CLZT]--处理状态
      ,a.[SCZT]--删除状态
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

FROM dbo.EDU_OAXT_33_A04_SW AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_33_A01_GWJCXX AS c ON a.GWID = c.ID /*公文ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.XFRID = d.LOGINNAME /*下发人ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS e ON a.JSRID = e.LOGINNAME /*接受人ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校*/
GO

--文印流程记录
CREATE VIEW [dbo].[VIEW_EDU_OAXT_34_A01_WYLCJL_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[WYBT]--文印标题
      ,a.[NR]--内容
      ,a.[BZ]--备注
      ,a.[SQRID]--申请人ID
      ,a.[SQSJ]--申请时间
      ,a.[SHZT]--审核状态
      ,a.[SHRID]--审核人ID
      ,a.[SHSJ]--审核时间
      ,a.[SHBZ]--审核备注
      ,a.[SHLBSFXS]--审核列表是否显示
      ,a.[DYZT]--打印状态
      ,a.[DYSJ]--打印时间
      ,a.[DYBZ]--打印备注
      ,a.[DYLBSFXS]--打印列表是否显示
      ,c.SCHOOLID as c_USER_SCHOOLID--应用系统用户表 学校ID
      ,c.APPID as c_USER_APPID--应用系统用户表 应用ID
      ,c.PWD as c_USER_PWD--应用系统用户表 密码
      ,c.STATUS as c_USER_STATUS--应用系统用户表 用户状态
      ,c.USERTYPE as c_USER_USERTYPE--应用系统用户表 用户类别
      ,c.USERID as c_USER_USERID--应用系统用户表 用户ID
      ,c.ROLEIDLst as c_USER_ROLEIDLst--应用系统用户表 用户角色
      ,c.XM as c_USER_XM--应用系统用户表 姓名
      ,c.XB as c_USER_XB--应用系统用户表 性别
      ,c.QQ as c_USER_QQ--应用系统用户表 QQ
      ,c.DZYJ as c_USER_DZYJ--应用系统用户表 电子邮件
      ,c.LXDH as c_USER_LXDH--应用系统用户表 联系电话
      ,c.ZJDLSJ as c_USER_ZJDLSJ--应用系统用户表 最近一次登录时间
      ,c.DLCGCS as c_USER_DLCGCS--应用系统用户表 登录成功次数
      ,c.YHCJSJ as c_USER_YHCJSJ--应用系统用户表 用户创建时间
      ,c.YHRY as c_USER_YHRY--应用系统用户表 用户荣誉
      ,c.YHJF as c_USER_YHJF--应用系统用户表 用户积分
      ,c.BMID as c_USER_BMID--应用系统用户表 部门ID
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

FROM dbo.EDU_OAXT_34_A01_WYLCJL AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS c ON a.SQRID = c.LOGINNAME /*申请人ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.SHRID = d.LOGINNAME /*审核人ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校*/
GO

--任务表
CREATE VIEW [dbo].[VIEW_EDU_OAXT_35_A01_RW_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校ID
      ,a.[RWBT]--任务标题
      ,a.[JSYHIDLB]--接收用户ID列表
      ,a.[JSYHXMLB]--接收用户姓名列表
      ,a.[JZRQ]--截止日期
      ,a.[NR]--内容
      ,a.[FBRID]--发布人ID
      ,a.[FBRXM]--发布人姓名
      ,a.[FBBMMC]--发布部门名称
      ,a.[FBSJ]--发布时间
      ,a.[RWZT]--任务状态
      ,c.SCHOOLID as c_USER_SCHOOLID--应用系统用户表 学校ID
      ,c.APPID as c_USER_APPID--应用系统用户表 应用ID
      ,c.PWD as c_USER_PWD--应用系统用户表 密码
      ,c.STATUS as c_USER_STATUS--应用系统用户表 用户状态
      ,c.USERTYPE as c_USER_USERTYPE--应用系统用户表 用户类别
      ,c.USERID as c_USER_USERID--应用系统用户表 用户ID
      ,c.ROLEIDLst as c_USER_ROLEIDLst--应用系统用户表 用户角色
      ,c.XM as c_USER_XM--应用系统用户表 姓名
      ,c.XB as c_USER_XB--应用系统用户表 性别
      ,c.QQ as c_USER_QQ--应用系统用户表 QQ
      ,c.DZYJ as c_USER_DZYJ--应用系统用户表 电子邮件
      ,c.LXDH as c_USER_LXDH--应用系统用户表 联系电话
      ,c.ZJDLSJ as c_USER_ZJDLSJ--应用系统用户表 最近一次登录时间
      ,c.DLCGCS as c_USER_DLCGCS--应用系统用户表 登录成功次数
      ,c.YHCJSJ as c_USER_YHCJSJ--应用系统用户表 用户创建时间
      ,c.YHRY as c_USER_YHRY--应用系统用户表 用户荣誉
      ,c.YHJF as c_USER_YHJF--应用系统用户表 用户积分
      ,c.BMID as c_USER_BMID--应用系统用户表 部门ID

FROM dbo.EDU_OAXT_35_A01_RW AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS c ON a.FBRID = c.LOGINNAME /*发布人ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/
GO

--任务接收人表
CREATE VIEW [dbo].[VIEW_EDU_OAXT_35_A02_RWJSR_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校ID
      ,a.[RWID]--任务ID
      ,a.[JSRID]--接收人ID
      ,a.[YDZT]--阅读状态
      ,a.[WCZT]--完成状态
      ,a.[SCZT]--删除状态
      ,a.[TJZT]--提交状态
      ,a.[FJ]--附件
      ,a.[BZ]--备注
      ,c.SCHOOLID as c_RW_SCHOOLID--任务表 学校ID
      ,c.RWBT as c_RW_RWBT--任务表 任务标题
      ,c.JSYHIDLB as c_RW_JSYHIDLB--任务表 接收用户ID列表
      ,c.JSYHXMLB as c_RW_JSYHXMLB--任务表 接收用户姓名列表
      ,c.JZRQ as c_RW_JZRQ--任务表 截止日期
      ,c.NR as c_RW_NR--任务表 内容
      ,c.FBRID as c_RW_FBRID--任务表 发布人ID
      ,c.FBRXM as c_RW_FBRXM--任务表 发布人姓名
      ,c.FBBMMC as c_RW_FBBMMC--任务表 发布部门名称
      ,c.FBSJ as c_RW_FBSJ--任务表 发布时间
      ,c.RWZT as c_RW_RWZT--任务表 任务状态
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

FROM dbo.EDU_OAXT_35_A02_RWJSR AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_35_A01_RW AS c ON a.RWID = c.ID /*任务ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.JSRID = d.LOGINNAME /*接收人ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校ID*/
GO

--回复记录表
CREATE VIEW [dbo].[VIEW_EDU_OAXT_35_A03_HFJL_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校ID
      ,a.[RWID]--任务ID
      ,a.[HFRID]--回复人ID
      ,a.[HFNR]--回复内容
      ,a.[HSSJ]--回复时间
      ,c.SCHOOLID as c_RW_SCHOOLID--任务表 学校ID
      ,c.RWBT as c_RW_RWBT--任务表 任务标题
      ,c.JSYHIDLB as c_RW_JSYHIDLB--任务表 接收用户ID列表
      ,c.JSYHXMLB as c_RW_JSYHXMLB--任务表 接收用户姓名列表
      ,c.JZRQ as c_RW_JZRQ--任务表 截止日期
      ,c.NR as c_RW_NR--任务表 内容
      ,c.FBRID as c_RW_FBRID--任务表 发布人ID
      ,c.FBRXM as c_RW_FBRXM--任务表 发布人姓名
      ,c.FBBMMC as c_RW_FBBMMC--任务表 发布部门名称
      ,c.FBSJ as c_RW_FBSJ--任务表 发布时间
      ,c.RWZT as c_RW_RWZT--任务表 任务状态
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

FROM dbo.EDU_OAXT_35_A03_HFJL AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_35_A01_RW AS c ON a.RWID = c.ID /*任务ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.HFRID = d.LOGINNAME /*回复人ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校ID*/
GO

--班级工作检查表
CREATE VIEW [dbo].[VIEW_EDU_OAXT_36_A02_BJGZJC_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校ID
      ,a.[GZLBID]--工作类别ID
      ,a.[BJ]--班级
      ,a.[RQ]--日期
      ,a.[JG]--结果
      ,a.[BJMC]--班级名称
      ,c.SCHOOLID as c_BJGZLB_SCHOOLID--班级工作类别表 学校ID
      ,c.GZLBMC as c_BJGZLB_GZLBMC--班级工作类别表 工作类别名称
      ,c.DJRYIDLB as c_BJGZLB_DJRYIDLB--班级工作类别表 登记人员ID列表
      ,c.DJRYXMLB as c_BJGZLB_DJRYXMLB--班级工作类别表 登记人员姓名列表

FROM dbo.EDU_OAXT_36_A02_BJGZJC AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_36_A01_BJGZLB AS c ON a.GZLBID = c.ID /*工作类别ID*/
GO

--设备型号表
CREATE VIEW [dbo].[VIEW_EDU_ZDGL_05_SBXH_DISP]
AS
SELECT a.[ID]--编号
      ,a.[XX]--型号
      ,a.[LXID]--类型ID
      ,a.[SCCJID]--生产厂家ID
      ,a.[PY]--拼音
      ,a.[MS]--描述
      ,a.[JG]--价格
      ,b.LXMC as b_SBXHLX_LXMC--设备型号类型表 类型名称
      ,b.LXJC as b_SBXHLX_LXJC--设备型号类型表 类型简称
      ,c.CJM as c_SCCJ_CJM--生产厂家表 厂家名
      ,c.CJDZ as c_SCCJ_CJDZ--生产厂家表 厂家地址
      ,c.LXR as c_SCCJ_LXR--生产厂家表 联系人
      ,c.LXDH as c_SCCJ_LXDH--生产厂家表 联系电话

FROM dbo.EDU_ZDGL_05_SBXH AS a LEFT OUTER JOIN
      dbo.EDU_ZDGL_03_SBXHLX AS b ON a.LXID = b.ID /*类型ID*/ LEFT OUTER JOIN
      dbo.EDU_ZDGL_04_SCCJ AS c ON a.SCCJID = c.ID /*生产厂家ID*/
GO

--客户表
CREATE VIEW [dbo].[VIEW_EDU_ZDGL_08_KH_DISP]
AS
SELECT a.[ID]--编号
      ,a.[KHDM]--客户代码
      ,a.[SZQYID]--所在区域ID
      ,a.[SSGSID]--所属公司ID
      ,a.[DWMC]--单位名称
      ,a.[PY]--拼音
      ,a.[KHDZ]--客户地址
      ,a.[LXR]--联系人
      ,a.[DH]--电话
      ,b.QHMC as b_XZQH_QHMC--行政区划表 区划名称
      ,b.QH as b_XZQH_QH--行政区划表 区号
      ,c.GSDM as c_SSGS_GSDM--所属公司表 公司代码
      ,c.GSM as c_SSGS_GSM--所属公司表 公司名

FROM dbo.EDU_ZDGL_08_KH AS a LEFT OUTER JOIN
      dbo.EDU_ZDGL_06_XZQH AS b ON a.SZQYID = b.QHM /*所在区域ID*/ LEFT OUTER JOIN
      dbo.EDU_ZDGL_07_SSGS AS c ON a.SSGSID = c.ID /*所属公司ID*/
GO

--分拣批次表
CREATE VIEW [dbo].[VIEW_EDU_ZDGL_11_FJPC_DISP]
AS
SELECT a.[ID]--编号
      ,a.[PCH]--批次号
      ,a.[KHID]--客户ID
      ,a.[JSRQ]--接受日期
      ,a.[LRSJ]--录入时间
      ,a.[FJWGSJ]--分拣完工时间
      ,a.[FJFZR]--分拣负责人
      ,a.[QRR]--确认人
      ,a.[QRRLXDH]--确认人联系电话
      ,a.[QRSJ]--确认时间
      ,a.[CSJG]--测试结果
      ,b.KHDM as b_KH_KHDM--客户表 客户代码
      ,b.SZQYID as b_KH_SZQYID--客户表 所在区域ID
      ,b.SSGSID as b_KH_SSGSID--客户表 所属公司ID
      ,b.DWMC as b_KH_DWMC--客户表 单位名称
      ,b.PY as b_KH_PY--客户表 拼音
      ,b.KHDZ as b_KH_KHDZ--客户表 客户地址
      ,b.LXR as b_KH_LXR--客户表 联系人
      ,b.DH as b_KH_DH--客户表 电话

FROM dbo.EDU_ZDGL_11_FJPC AS a LEFT OUTER JOIN
      dbo.EDU_ZDGL_08_KH AS b ON a.KHID = b.ID /*客户ID*/
GO

--分拣详细表
CREATE VIEW [dbo].[VIEW_EDU_ZDGL_12_FJXX_DISP]
AS
SELECT a.[ID]--编号
      ,a.[PCID]--批次ID
      ,a.[XHID]--型号ID
      ,a.[SRSL]--收入数量
      ,a.[LPSL]--良品数量
      ,a.[GZSL]--故障数量
      ,a.[BFSL]--报废数量
      ,a.[RWSHSL]--人为损坏数量
      ,a.[QT]--其他
      ,a.[HJ]--合计
      ,a.[BZ]--备注
      ,a.[JCFW]--基础服务
      ,a.[HK]--换壳
      ,a.[WX]--维修
      ,a.[XDY]--新电源
      ,a.[JDY]--旧电源
      ,a.[PJ]--配件
      ,a.[TH]--退回
      ,a.[QTE]--其他二
      ,a.[WF]--未返
      ,a.[FHRQ]--返回日期
      ,b.PCH as b_FJPC_PCH--分拣批次表 批次号
      ,b.KHID as b_FJPC_KHID--分拣批次表 客户ID
      ,b.JSRQ as b_FJPC_JSRQ--分拣批次表 接受日期
      ,b.LRSJ as b_FJPC_LRSJ--分拣批次表 录入时间
      ,b.FJWGSJ as b_FJPC_FJWGSJ--分拣批次表 分拣完工时间
      ,b.FJFZR as b_FJPC_FJFZR--分拣批次表 分拣负责人
      ,b.QRR as b_FJPC_QRR--分拣批次表 确认人
      ,b.QRRLXDH as b_FJPC_QRRLXDH--分拣批次表 确认人联系电话
      ,b.QRSJ as b_FJPC_QRSJ--分拣批次表 确认时间
      ,b.CSJG as b_FJPC_CSJG--分拣批次表 测试结果
      ,c.XX as c_SBXH_XX--设备型号表 型号
      ,c.LXID as c_SBXH_LXID--设备型号表 类型ID
      ,c.SCCJID as c_SBXH_SCCJID--设备型号表 生产厂家ID
      ,c.PY as c_SBXH_PY--设备型号表 拼音
      ,c.MS as c_SBXH_MS--设备型号表 描述
      ,c.JG as c_SBXH_JG--设备型号表 价格

FROM dbo.EDU_ZDGL_12_FJXX AS a LEFT OUTER JOIN
      dbo.EDU_ZDGL_11_FJPC AS b ON a.PCID = b.ID /*批次ID*/ LEFT OUTER JOIN
      dbo.EDU_ZDGL_05_SBXH AS c ON a.XHID = c.ID /*型号ID*/
GO

--发货批次表
CREATE VIEW [dbo].[VIEW_EDU_ZDGL_13_FHPC_DISP]
AS
SELECT a.[ID]--编号
      ,a.[FHPCH]--发货批次号
      ,a.[FHR]--发货人
      ,a.[WLGSID]--物流公司ID
      ,a.[ZXS]--总箱数
      ,a.[FHSJ]--发货时间
      ,a.[FJPCID]--分拣批次ID
      ,a.[FHRID]--发货人ID
      ,b.GSDM as b_WLGS_GSDM--物流公司表 公司代码
      ,b.GSM as b_WLGS_GSM--物流公司表 公司名
      ,b.GSLXR as b_WLGS_GSLXR--物流公司表 公司联系人
      ,b.LXDH as b_WLGS_LXDH--物流公司表 联系电话
      ,c.PCH as c_FJPC_PCH--分拣批次表 批次号
      ,c.KHID as c_FJPC_KHID--分拣批次表 客户ID
      ,c.JSRQ as c_FJPC_JSRQ--分拣批次表 接受日期
      ,c.LRSJ as c_FJPC_LRSJ--分拣批次表 录入时间
      ,c.FJWGSJ as c_FJPC_FJWGSJ--分拣批次表 分拣完工时间
      ,c.FJFZR as c_FJPC_FJFZR--分拣批次表 分拣负责人
      ,c.QRR as c_FJPC_QRR--分拣批次表 确认人
      ,c.QRRLXDH as c_FJPC_QRRLXDH--分拣批次表 确认人联系电话
      ,c.QRSJ as c_FJPC_QRSJ--分拣批次表 确认时间
      ,c.CSJG as c_FJPC_CSJG--分拣批次表 测试结果
      ,d.GH as d_FHR_GH--发货人表 工号
      ,d.XM as d_FHR_XM--发货人表 姓名
      ,d.LXDH as d_FHR_LXDH--发货人表 联系电话

FROM dbo.EDU_ZDGL_13_FHPC AS a LEFT OUTER JOIN
      dbo.EDU_ZDGL_15_WLGS AS b ON a.WLGSID = b.ID /*物流公司ID*/ LEFT OUTER JOIN
      dbo.EDU_ZDGL_11_FJPC AS c ON a.FJPCID = c.ID /*分拣批次ID*/ LEFT OUTER JOIN
      dbo.EDU_ZDGL_22_FHR AS d ON a.FHRID = d.ID /*发货人ID*/
GO

--发货详细表
CREATE VIEW [dbo].[VIEW_EDU_ZDGL_14_FHXX_DISP]
AS
SELECT a.[ID]--编号
      ,a.[FHPCID]--发货批次ID
      ,a.[FJXXID]--分拣详细ID
      ,a.[JCFW]--基础服务
      ,a.[HK]--换壳
      ,a.[WX]--维修
      ,a.[XDY]--新电源
      ,a.[JDY]--旧电源
      ,a.[PJ]--配件
      ,a.[TH]--退回
      ,a.[QT]--其他
      ,a.[WF]--未返
      ,a.[FHRQ]--返回日期
      ,b.FHPCH as b_FHPC_FHPCH--发货批次表 发货批次号
      ,b.FHR as b_FHPC_FHR--发货批次表 发货人
      ,b.WLGSID as b_FHPC_WLGSID--发货批次表 物流公司ID
      ,b.ZXS as b_FHPC_ZXS--发货批次表 总箱数
      ,b.FHSJ as b_FHPC_FHSJ--发货批次表 发货时间
      ,b.FJPCID as b_FHPC_FJPCID--发货批次表 分拣批次ID
      ,b.FHRID as b_FHPC_FHRID--发货批次表 发货人ID
      ,c.PCID as c_FJXX_PCID--分拣详细表 批次ID
      ,c.XHID as c_FJXX_XHID--分拣详细表 型号ID
      ,c.SRSL as c_FJXX_SRSL--分拣详细表 收入数量
      ,c.LPSL as c_FJXX_LPSL--分拣详细表 良品数量
      ,c.GZSL as c_FJXX_GZSL--分拣详细表 故障数量
      ,c.BFSL as c_FJXX_BFSL--分拣详细表 报废数量
      ,c.RWSHSL as c_FJXX_RWSHSL--分拣详细表 人为损坏数量
      ,c.QT as c_FJXX_QT--分拣详细表 其他
      ,c.HJ as c_FJXX_HJ--分拣详细表 合计
      ,c.BZ as c_FJXX_BZ--分拣详细表 备注
      ,c.JCFW as c_FJXX_JCFW--分拣详细表 基础服务
      ,c.HK as c_FJXX_HK--分拣详细表 换壳
      ,c.WX as c_FJXX_WX--分拣详细表 维修
      ,c.XDY as c_FJXX_XDY--分拣详细表 新电源
      ,c.JDY as c_FJXX_JDY--分拣详细表 旧电源
      ,c.PJ as c_FJXX_PJ--分拣详细表 配件
      ,c.TH as c_FJXX_TH--分拣详细表 退回
      ,c.QTE as c_FJXX_QTE--分拣详细表 其他二
      ,c.WF as c_FJXX_WF--分拣详细表 未返
      ,c.FHRQ as c_FJXX_FHRQ--分拣详细表 返回日期

FROM dbo.EDU_ZDGL_14_FHXX AS a LEFT OUTER JOIN
      dbo.EDU_ZDGL_13_FHPC AS b ON a.FHPCID = b.ID /*发货批次ID*/ LEFT OUTER JOIN
      dbo.EDU_ZDGL_12_FJXX AS c ON a.FJXXID = c.ID /*分拣详细ID*/
GO

--接收单表
CREATE VIEW [dbo].[VIEW_EDU_ZDGL_16_JSD_DISP]
AS
SELECT a.[ID]--编号
      ,a.[JSDH]--接收单号
      ,a.[SXDWID]--送修单位ID
      ,a.[SXRQ]--送修日期
      ,a.[BCZT]--保存状态
      ,a.[SFQR]--是否确认
      ,b.KHDM as b_KH_KHDM--客户表 客户代码
      ,b.SZQYID as b_KH_SZQYID--客户表 所在区域ID
      ,b.SSGSID as b_KH_SSGSID--客户表 所属公司ID
      ,b.DWMC as b_KH_DWMC--客户表 单位名称
      ,b.PY as b_KH_PY--客户表 拼音
      ,b.KHDZ as b_KH_KHDZ--客户表 客户地址
      ,b.LXR as b_KH_LXR--客户表 联系人
      ,b.DH as b_KH_DH--客户表 电话
      ,c.MC as c_SFBZ_MC--是否标志代码表 名称

FROM dbo.EDU_ZDGL_16_JSD AS a LEFT OUTER JOIN
      dbo.EDU_ZDGL_08_KH AS b ON a.SXDWID = b.ID /*送修单位ID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS c ON a.SFQR = c.DM /*是否确认*/
GO

--接收单详细表
CREATE VIEW [dbo].[VIEW_EDU_ZDGL_17_JSDXX_DISP]
AS
SELECT a.[ID]--编号
      ,a.[XHID]--型号ID
      ,a.[XH]--序号
      ,a.[SN]--SN号
      ,a.[SFECFX]--是否二次返修
      ,a.[SXDWID]--送修单位ID
      ,a.[GZXXID]--故障信息ID
      ,a.[WXXXID]--维修信息ID
      ,a.[WXRID]--维修人ID
      ,a.[WXRQ]--维修日期
      ,a.[JSDID]--接收单ID
      ,b.XX as b_SBXH_XX--设备型号表 型号
      ,b.LXID as b_SBXH_LXID--设备型号表 类型ID
      ,b.SCCJID as b_SBXH_SCCJID--设备型号表 生产厂家ID
      ,b.PY as b_SBXH_PY--设备型号表 拼音
      ,b.MS as b_SBXH_MS--设备型号表 描述
      ,b.JG as b_SBXH_JG--设备型号表 价格
      ,c.MC as c_SFBZ_MC--是否标志代码表 名称
      ,d.KHDM as d_KH_KHDM--客户表 客户代码
      ,d.SZQYID as d_KH_SZQYID--客户表 所在区域ID
      ,d.SSGSID as d_KH_SSGSID--客户表 所属公司ID
      ,d.DWMC as d_KH_DWMC--客户表 单位名称
      ,d.PY as d_KH_PY--客户表 拼音
      ,d.KHDZ as d_KH_KHDZ--客户表 客户地址
      ,d.LXR as d_KH_LXR--客户表 联系人
      ,d.DH as d_KH_DH--客户表 电话
      ,e.GZDM as e_GZDM_GZDM--故障代码表 故障代码
      ,e.GZXX as e_GZDM_GZXX--故障代码表 故障现象
      ,f.WXDM as f_WXDM_WXDM--维修代码表 维修代码
      ,f.WXNR as f_WXDM_WXNR--维修代码表 维修内容
      ,f.WXJG as f_WXDM_WXJG--维修代码表 维修结果
      ,g.GH as g_WXR_GH--维修人表 工号
      ,g.XM as g_WXR_XM--维修人表 姓名
      ,g.LXDH as g_WXR_LXDH--维修人表 联系电话
      ,h.JSDH as h_JSD_JSDH--接收单表 接收单号
      ,h.SXDWID as h_JSD_SXDWID--接收单表 送修单位ID
      ,h.SXRQ as h_JSD_SXRQ--接收单表 送修日期
      ,h.BCZT as h_JSD_BCZT--接收单表 保存状态
      ,h.SFQR as h_JSD_SFQR--接收单表 是否确认
      ,[hb].MC as h_JSD_SFQR_MC--是否标志代码表 名称

FROM dbo.EDU_ZDGL_17_JSDXX AS a LEFT OUTER JOIN
      dbo.EDU_ZDGL_05_SBXH AS b ON a.XHID = b.ID /*型号ID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS c ON a.SFECFX = c.DM /*是否二次返修*/ LEFT OUTER JOIN
      dbo.EDU_ZDGL_08_KH AS d ON a.SXDWID = d.ID /*送修单位ID*/ LEFT OUTER JOIN
      dbo.EDU_ZDGL_01_GZDM AS e ON a.GZXXID = e.ID /*故障信息ID*/ LEFT OUTER JOIN
      dbo.EDU_ZDGL_02_WXDM AS f ON a.WXXXID = f.ID /*维修信息ID*/ LEFT OUTER JOIN
      dbo.EDU_ZDGL_10_WXR AS g ON a.WXRID = g.ID /*维修人ID*/ LEFT OUTER JOIN
      dbo.EDU_ZDGL_16_JSD AS h ON a.JSDID = h.ID /*接收单ID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [hb] ON h.SFQR = [hb].DM /*是否确认*/
GO

--交付单表
CREATE VIEW [dbo].[VIEW_EDU_ZDGL_18_JFD_DISP]
AS
SELECT a.[ID]--编号
      ,a.[JFDH]--交付单号
      ,a.[WXSID]--维修商ID
      ,a.[JFRQ]--交付日期
      ,a.[SXDWID]--送修单位ID
      ,b.WXSDM as b_WXS_WXSDM--维修商表 维修商代码
      ,b.WXSMC as b_WXS_WXSMC--维修商表 维修商名称
      ,b.LXR as b_WXS_LXR--维修商表 联系人
      ,b.LXDM as b_WXS_LXDM--维修商表 联系代码
      ,b.DZ as b_WXS_DZ--维修商表 地址
      ,c.KHDM as c_KH_KHDM--客户表 客户代码
      ,c.SZQYID as c_KH_SZQYID--客户表 所在区域ID
      ,c.SSGSID as c_KH_SSGSID--客户表 所属公司ID
      ,c.DWMC as c_KH_DWMC--客户表 单位名称
      ,c.PY as c_KH_PY--客户表 拼音
      ,c.KHDZ as c_KH_KHDZ--客户表 客户地址
      ,c.LXR as c_KH_LXR--客户表 联系人
      ,c.DH as c_KH_DH--客户表 电话

FROM dbo.EDU_ZDGL_18_JFD AS a LEFT OUTER JOIN
      dbo.EDU_ZDGL_09_WXS AS b ON a.WXSID = b.ID /*维修商ID*/ LEFT OUTER JOIN
      dbo.EDU_ZDGL_08_KH AS c ON a.SXDWID = c.ID /*送修单位ID*/
GO

--交付单详细表
CREATE VIEW [dbo].[VIEW_EDU_ZDGL_19_JFDXX_DISP]
AS
SELECT a.[ID]--编号
      ,a.[JFDID]--交付单ID
      ,a.[JSDXXID]--接收单详细ID
      ,b.JFDH as b_JFD_JFDH--交付单表 交付单号
      ,b.WXSID as b_JFD_WXSID--交付单表 维修商ID
      ,b.JFRQ as b_JFD_JFRQ--交付单表 交付日期
      ,b.SXDWID as b_JFD_SXDWID--交付单表 送修单位ID
      ,c.XHID as c_JSDXX_XHID--接收单详细表 型号ID
      ,c.XH as c_JSDXX_XH--接收单详细表 序号
      ,c.SN as c_JSDXX_SN--接收单详细表 SN号
      ,c.SFECFX as c_JSDXX_SFECFX--接收单详细表 是否二次返修
      ,[cb].MC as c_JSDXX_SFECFX_MC--是否标志代码表 名称
      ,c.SXDWID as c_JSDXX_SXDWID--接收单详细表 送修单位ID
      ,c.GZXXID as c_JSDXX_GZXXID--接收单详细表 故障信息ID
      ,c.WXXXID as c_JSDXX_WXXXID--接收单详细表 维修信息ID
      ,c.WXRID as c_JSDXX_WXRID--接收单详细表 维修人ID
      ,c.WXRQ as c_JSDXX_WXRQ--接收单详细表 维修日期
      ,c.JSDID as c_JSDXX_JSDID--接收单详细表 接收单ID

FROM dbo.EDU_ZDGL_19_JFDXX AS a LEFT OUTER JOIN
      dbo.EDU_ZDGL_18_JFD AS b ON a.JFDID = b.ID /*交付单ID*/ LEFT OUTER JOIN
      dbo.EDU_ZDGL_17_JSDXX AS c ON a.JSDXXID = c.ID /*接收单详细ID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [cb] ON c.SFECFX = [cb].DM /*是否二次返修*/
GO

--返回单表
CREATE VIEW [dbo].[VIEW_EDU_ZDGL_20_FHD_DISP]
AS
SELECT a.[ID]--编号
      ,a.[FHDH]--返回单号
      ,a.[FHRQ]--返回日期
      ,a.[FHDWID]--返回单位ID
      ,b.KHDM as b_KH_KHDM--客户表 客户代码
      ,b.SZQYID as b_KH_SZQYID--客户表 所在区域ID
      ,b.SSGSID as b_KH_SSGSID--客户表 所属公司ID
      ,b.DWMC as b_KH_DWMC--客户表 单位名称
      ,b.PY as b_KH_PY--客户表 拼音
      ,b.KHDZ as b_KH_KHDZ--客户表 客户地址
      ,b.LXR as b_KH_LXR--客户表 联系人
      ,b.DH as b_KH_DH--客户表 电话

FROM dbo.EDU_ZDGL_20_FHD AS a LEFT OUTER JOIN
      dbo.EDU_ZDGL_08_KH AS b ON a.FHDWID = b.ID /*返回单位ID*/
GO

--返回单详细表
CREATE VIEW [dbo].[VIEW_EDU_ZDGL_21_FHDXX_DISP]
AS
SELECT a.[ID]--编号
      ,a.[FHDID]--返回单ID
      ,a.[JSDXXID]--接收单详细ID
      ,b.FHDH as b_FHD_FHDH--返回单表 返回单号
      ,b.FHRQ as b_FHD_FHRQ--返回单表 返回日期
      ,b.FHDWID as b_FHD_FHDWID--返回单表 返回单位ID
      ,c.XHID as c_JSDXX_XHID--接收单详细表 型号ID
      ,c.XH as c_JSDXX_XH--接收单详细表 序号
      ,c.SN as c_JSDXX_SN--接收单详细表 SN号
      ,c.SFECFX as c_JSDXX_SFECFX--接收单详细表 是否二次返修
      ,[cb].MC as c_JSDXX_SFECFX_MC--是否标志代码表 名称
      ,c.SXDWID as c_JSDXX_SXDWID--接收单详细表 送修单位ID
      ,c.GZXXID as c_JSDXX_GZXXID--接收单详细表 故障信息ID
      ,c.WXXXID as c_JSDXX_WXXXID--接收单详细表 维修信息ID
      ,c.WXRID as c_JSDXX_WXRID--接收单详细表 维修人ID
      ,c.WXRQ as c_JSDXX_WXRQ--接收单详细表 维修日期
      ,c.JSDID as c_JSDXX_JSDID--接收单详细表 接收单ID

FROM dbo.EDU_ZDGL_21_FHDXX AS a LEFT OUTER JOIN
      dbo.EDU_ZDGL_20_FHD AS b ON a.FHDID = b.ID /*返回单ID*/ LEFT OUTER JOIN
      dbo.EDU_ZDGL_17_JSDXX AS c ON a.JSDXXID = c.ID /*接收单详细ID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [cb] ON c.SFECFX = [cb].DM /*是否二次返修*/
GO
