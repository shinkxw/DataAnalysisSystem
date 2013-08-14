--删除视图
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ELE_01_USER_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ELE_01_USER_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ELE_01_SCHOOL_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ELE_01_SCHOOL_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ELE_03_APPRZ_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ELE_03_APPRZ_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ELE_03_APPLL_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ELE_03_APPLL_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ELE_02_YHFZ_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ELE_02_YHFZ_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_SYS_01_XN_DISP')
            and   type = 'V')
   drop view VIEW_EDU_SYS_01_XN_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_WZXT_VIP_DISP')
            and   type = 'V')
   drop view VIEW_EDU_WZXT_VIP_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_WZXT_TPXT_TPYS_DISP')
            and   type = 'V')
   drop view VIEW_EDU_WZXT_TPXT_TPYS_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_WZXT_TPXT_TPXX_DISP')
            and   type = 'V')
   drop view VIEW_EDU_WZXT_TPXT_TPXX_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_WZXT_TPXT_TPTM_DISP')
            and   type = 'V')
   drop view VIEW_EDU_WZXT_TPXT_TPTM_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_WZXT_TPXT_TPSZ_DISP')
            and   type = 'V')
   drop view VIEW_EDU_WZXT_TPXT_TPSZ_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_WZXT_TPXT_TPJL_DISP')
            and   type = 'V')
   drop view VIEW_EDU_WZXT_TPXT_TPJL_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_WZXT_MHXT_YQLJLX_DISP')
            and   type = 'V')
   drop view VIEW_EDU_WZXT_MHXT_YQLJLX_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_WZXT_MHXT_YQLJ_DISP')
            and   type = 'V')
   drop view VIEW_EDU_WZXT_MHXT_YQLJ_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_WZXT_MHXT_WZYS_DISP')
            and   type = 'V')
   drop view VIEW_EDU_WZXT_MHXT_WZYS_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_WZXT_MHXT_WZWZ_DISP')
            and   type = 'V')
   drop view VIEW_EDU_WZXT_MHXT_WZWZ_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_WZXT_MHXT_WZPZ_DISP')
            and   type = 'V')
   drop view VIEW_EDU_WZXT_MHXT_WZPZ_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_WZXT_MHXT_WZLM_DISP')
            and   type = 'V')
   drop view VIEW_EDU_WZXT_MHXT_WZLM_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_WZXT_MHXT_WZGG_DISP')
            and   type = 'V')
   drop view VIEW_EDU_WZXT_MHXT_WZGG_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_WZXT_MHXT_FWLL_DISP')
            and   type = 'V')
   drop view VIEW_EDU_WZXT_MHXT_FWLL_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_WZXT_MHXT_FBQX_DISP')
            and   type = 'V')
   drop view VIEW_EDU_WZXT_MHXT_FBQX_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZJ_ZJZY_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZJ_ZJZY_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZXBG_10_A01_TZ_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZXBG_10_A01_TZ_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZXBG_10_A02_TZYDJL_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZXBG_10_A02_TZYDJL_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZXBG_10_A03_GG_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZXBG_10_A03_GG_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZXBG_11_A01_YJ_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZXBG_11_A01_YJ_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZXBG_01_01_WJJBSJ_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZXBG_01_01_WJJBSJ_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZXBG_02_01_SWCL_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZXBG_02_01_SWCL_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZXBG_02_02_WJYB_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZXBG_02_02_WJYB_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZXBG_03_01_FWCL_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZXBG_03_01_FWCL_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZXBG_03_02_HG_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZXBG_03_02_HG_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZXBG_03_03_HQ_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZXBG_03_03_HQ_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZXBG_03_04_CP_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZXBG_03_04_CP_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZXBG_04_01_WJQT_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZXBG_04_01_WJQT_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZXBG_05_01_WJXH_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZXBG_05_01_WJXH_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZXBG_06_01_WJJQ_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZXBG_06_01_WJJQ_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZXBG_12_A01_SJFB_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZXBG_12_A01_SJFB_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZXBG_13_A01_DWSJ_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZXBG_13_A01_DWSJ_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZXDY_04_A01_ZZGW_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZXDY_04_A01_ZZGW_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZXDY_04_A02_ZZRYAP_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZXDY_04_A02_ZZRYAP_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZXDY_04_A03_ZZGWFP_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZXDY_04_A03_ZZGWFP_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZXDY_04_A04_GWFPMB_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZXDY_04_A04_GWFPMB_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZXDY_04_A05_TBZZJS_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZXDY_04_A05_TBZZJS_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZXDY_04_A06_ZZZC_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZXDY_04_A06_ZZZC_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZXDY_04_A07_MBFPNR_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZXDY_04_A07_MBFPNR_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZXDY_05_A01_ZZDFDL_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZXDY_05_A01_ZZDFDL_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZXDY_05_A02_ZZDFXZ_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZXDY_05_A02_ZZDFXZ_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZXDY_05_A03_ZZDFD_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZXDY_05_A03_ZZDFD_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZXDY_06_A01_ZZXJ_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZXDY_06_A01_ZZXJ_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZXDY_06_A02_GQXJH_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZXDY_06_A02_GQXJH_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZXJZ_01_01_JZGJBSJ_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZXJZ_01_01_JZGJBSJ_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZXXS_01_01_XSXX_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZXXS_01_01_XSXX_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZXXS_07_A02_XJYD_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZXXS_07_A02_XJYD_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZXXX_02_01_NJ_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZXXX_02_01_NJ_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZXXX_03_01_BJ_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZXXX_03_01_BJ_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZXXX_04_01_JG_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZXXX_04_01_JG_DISP
go
if exists (select 1 from  sysobjects where  id = object_id('VIEW_EDU_ZXXX_05_A01_ZXXQ_DISP')
            and   type = 'V')
   drop view VIEW_EDU_ZXXX_05_A01_ZXXQ_DISP
go

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
      ,b.XXDM as b_ZXXX_XXDM--学校代码
      ,b.XXMC as b_ZXXX_XXMC--学校名称
      ,b.XXYWMC as b_ZXXX_XXYWMC--学校英文名称
      ,b.XXDZ as b_ZXXX_XXDZ--学校地址
      ,b.XXYZBM as b_ZXXX_XXYZBM--学校邮政编码
      ,b.XZQHM as b_ZXXX_XZQHM--行政区划码
      ,b.JXNY as b_ZXXX_JXNY--建校年月
      ,b.XQR as b_ZXXX_XQR--校庆日
      ,b.XXBXLXM as b_ZXXX_XXBXLXM--学校办学类型码
      ,b.XXZGBMM as b_ZXXX_XXZGBMM--学校主管部门码
      ,b.FDDBRH as b_ZXXX_FDDBRH--法定代表人号
      ,b.FRZSH as b_ZXXX_FRZSH--法人证书号
      ,b.XZGH as b_ZXXX_XZGH--校长工号
      ,b.XZXM as b_ZXXX_XZXM--校长姓名
      ,b.DWFZRH as b_ZXXX_DWFZRH--党委负责人号
      ,b.ZZJGM as b_ZXXX_ZZJGM--组织机构码
      ,b.LXDH as b_ZXXX_LXDH--联系电话
      ,b.CZDH as b_ZXXX_CZDH--传真电话
      ,b.DZXX as b_ZXXX_DZXX--电子信箱
      ,b.ZYDZ as b_ZXXX_ZYDZ--主页地址
      ,b.LSYG as b_ZXXX_LSYG--历史沿革
      ,b.XXBBM as b_ZXXX_XXBBM--学校办别码
      ,b.SSZGDWM as b_ZXXX_SSZGDWM--所属主管单位码
      ,b.SZDCXLXM as b_ZXXX_SZDCXLXM--所在地城乡类型码
      ,b.SZDJJSXM as b_ZXXX_SZDJJSXM--所在地经济属性码
      ,b.SZDMZSX as b_ZXXX_SZDMZSX--所在地民族属性
      ,b.XXXZ as b_ZXXX_XXXZ--小学学制
      ,b.XXRXNL as b_ZXXX_XXRXNL--小学入学年龄
      ,b.CZXZ as b_ZXXX_CZXZ--初中学制
      ,b.CZRXNL as b_ZXXX_CZRXNL--初中入学年龄
      ,b.GZXZ as b_ZXXX_GZXZ--高中学制
      ,b.ZJXYYM as b_ZXXX_ZJXYYM--主教学语言码
      ,b.FJXYYM as b_ZXXX_FJXYYM--辅教学语言码
      ,b.ZSBJ as b_ZXXX_ZSBJ--招生半径

FROM dbo.EDU_ELE_01_USER AS a LEFT OUTER JOIN
      dbo.EDU_ZXXX_01_01_ZXXX AS b ON a.SCHOOLID = b.ID /*学校ID*/
GO

--当前学年学期配置表
CREATE VIEW [dbo].[VIEW_EDU_ELE_01_SCHOOL_DISP]
AS
SELECT a.[SCHOOLID]--学校ID
      ,a.[XNID]--学年ID
      ,a.[XQID]--学期ID
      ,a.[MatchURL]--匹配url
      ,a.[LogLevel]--日志级别
      ,b.XXDM as b_ZXXX_XXDM--学校代码
      ,b.XXMC as b_ZXXX_XXMC--学校名称
      ,b.XXYWMC as b_ZXXX_XXYWMC--学校英文名称
      ,b.XXDZ as b_ZXXX_XXDZ--学校地址
      ,b.XXYZBM as b_ZXXX_XXYZBM--学校邮政编码
      ,b.XZQHM as b_ZXXX_XZQHM--行政区划码
      ,b.JXNY as b_ZXXX_JXNY--建校年月
      ,b.XQR as b_ZXXX_XQR--校庆日
      ,b.XXBXLXM as b_ZXXX_XXBXLXM--学校办学类型码
      ,b.XXZGBMM as b_ZXXX_XXZGBMM--学校主管部门码
      ,b.FDDBRH as b_ZXXX_FDDBRH--法定代表人号
      ,b.FRZSH as b_ZXXX_FRZSH--法人证书号
      ,b.XZGH as b_ZXXX_XZGH--校长工号
      ,b.XZXM as b_ZXXX_XZXM--校长姓名
      ,b.DWFZRH as b_ZXXX_DWFZRH--党委负责人号
      ,b.ZZJGM as b_ZXXX_ZZJGM--组织机构码
      ,b.LXDH as b_ZXXX_LXDH--联系电话
      ,b.CZDH as b_ZXXX_CZDH--传真电话
      ,b.DZXX as b_ZXXX_DZXX--电子信箱
      ,b.ZYDZ as b_ZXXX_ZYDZ--主页地址
      ,b.LSYG as b_ZXXX_LSYG--历史沿革
      ,b.XXBBM as b_ZXXX_XXBBM--学校办别码
      ,b.SSZGDWM as b_ZXXX_SSZGDWM--所属主管单位码
      ,b.SZDCXLXM as b_ZXXX_SZDCXLXM--所在地城乡类型码
      ,b.SZDJJSXM as b_ZXXX_SZDJJSXM--所在地经济属性码
      ,b.SZDMZSX as b_ZXXX_SZDMZSX--所在地民族属性
      ,b.XXXZ as b_ZXXX_XXXZ--小学学制
      ,b.XXRXNL as b_ZXXX_XXRXNL--小学入学年龄
      ,b.CZXZ as b_ZXXX_CZXZ--初中学制
      ,b.CZRXNL as b_ZXXX_CZRXNL--初中入学年龄
      ,b.GZXZ as b_ZXXX_GZXZ--高中学制
      ,b.ZJXYYM as b_ZXXX_ZJXYYM--主教学语言码
      ,b.FJXYYM as b_ZXXX_FJXYYM--辅教学语言码
      ,b.ZSBJ as b_ZXXX_ZSBJ--招生半径
      ,c.SCHOOLID as c_ZXXQ_SCHOOLID--学校名
      ,c.XNID as c_ZXXQ_XNID--学年
      ,c.XQM as c_ZXXQ_XQM--学期码
      ,c.XQMC as c_ZXXQ_XQMC--学期名称
      ,c.XQKSRQ as c_ZXXQ_XQKSRQ--学期开始日期
      ,c.XQJSRQ as c_ZXXQ_XQJSRQ--学期结束日期

FROM dbo.EDU_ELE_01_SCHOOL AS a LEFT OUTER JOIN
      dbo.EDU_ZXXX_01_01_ZXXX AS b ON a.SCHOOLID = b.ID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_05_A01_ZXXQ AS c ON a.XQID = c.ID /*学期ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/
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
      ,b.XXDM as b_ZXXX_XXDM--学校代码
      ,b.XXMC as b_ZXXX_XXMC--学校名称
      ,b.XXYWMC as b_ZXXX_XXYWMC--学校英文名称
      ,b.XXDZ as b_ZXXX_XXDZ--学校地址
      ,b.XXYZBM as b_ZXXX_XXYZBM--学校邮政编码
      ,b.XZQHM as b_ZXXX_XZQHM--行政区划码
      ,b.JXNY as b_ZXXX_JXNY--建校年月
      ,b.XQR as b_ZXXX_XQR--校庆日
      ,b.XXBXLXM as b_ZXXX_XXBXLXM--学校办学类型码
      ,b.XXZGBMM as b_ZXXX_XXZGBMM--学校主管部门码
      ,b.FDDBRH as b_ZXXX_FDDBRH--法定代表人号
      ,b.FRZSH as b_ZXXX_FRZSH--法人证书号
      ,b.XZGH as b_ZXXX_XZGH--校长工号
      ,b.XZXM as b_ZXXX_XZXM--校长姓名
      ,b.DWFZRH as b_ZXXX_DWFZRH--党委负责人号
      ,b.ZZJGM as b_ZXXX_ZZJGM--组织机构码
      ,b.LXDH as b_ZXXX_LXDH--联系电话
      ,b.CZDH as b_ZXXX_CZDH--传真电话
      ,b.DZXX as b_ZXXX_DZXX--电子信箱
      ,b.ZYDZ as b_ZXXX_ZYDZ--主页地址
      ,b.LSYG as b_ZXXX_LSYG--历史沿革
      ,b.XXBBM as b_ZXXX_XXBBM--学校办别码
      ,b.SSZGDWM as b_ZXXX_SSZGDWM--所属主管单位码
      ,b.SZDCXLXM as b_ZXXX_SZDCXLXM--所在地城乡类型码
      ,b.SZDJJSXM as b_ZXXX_SZDJJSXM--所在地经济属性码
      ,b.SZDMZSX as b_ZXXX_SZDMZSX--所在地民族属性
      ,b.XXXZ as b_ZXXX_XXXZ--小学学制
      ,b.XXRXNL as b_ZXXX_XXRXNL--小学入学年龄
      ,b.CZXZ as b_ZXXX_CZXZ--初中学制
      ,b.CZRXNL as b_ZXXX_CZRXNL--初中入学年龄
      ,b.GZXZ as b_ZXXX_GZXZ--高中学制
      ,b.ZJXYYM as b_ZXXX_ZJXYYM--主教学语言码
      ,b.FJXYYM as b_ZXXX_FJXYYM--辅教学语言码
      ,b.ZSBJ as b_ZXXX_ZSBJ--招生半径
      ,c.SCHOOLID as c_USER_SCHOOLID--学校ID
      ,c.APPID as c_USER_APPID--应用ID
      ,c.PWD as c_USER_PWD--密码
      ,c.STATUS as c_USER_STATUS--用户状态
      ,c.USERTYPE as c_USER_USERTYPE--用户类别
      ,c.USERID as c_USER_USERID--用户ID
      ,c.ROLEIDLst as c_USER_ROLEIDLst--用户角色
      ,c.XM as c_USER_XM--姓名
      ,c.XB as c_USER_XB--性别
      ,c.QQ as c_USER_QQ--QQ
      ,c.DZYJ as c_USER_DZYJ--电子邮件
      ,c.LXDH as c_USER_LXDH--联系电话
      ,c.ZJDLSJ as c_USER_ZJDLSJ--最近一次登录时间
      ,c.DLCGCS as c_USER_DLCGCS--登录成功次数
      ,c.YHCJSJ as c_USER_YHCJSJ--用户创建时间

FROM dbo.EDU_ELE_03_APPRZ AS a LEFT OUTER JOIN
      dbo.EDU_ZXXX_01_01_ZXXX AS b ON a.SCHOOLID = b.ID /*学校名*/ LEFT OUTER JOIN
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
      ,b.XXDM as b_ZXXX_XXDM--学校代码
      ,b.XXMC as b_ZXXX_XXMC--学校名称
      ,b.XXYWMC as b_ZXXX_XXYWMC--学校英文名称
      ,b.XXDZ as b_ZXXX_XXDZ--学校地址
      ,b.XXYZBM as b_ZXXX_XXYZBM--学校邮政编码
      ,b.XZQHM as b_ZXXX_XZQHM--行政区划码
      ,b.JXNY as b_ZXXX_JXNY--建校年月
      ,b.XQR as b_ZXXX_XQR--校庆日
      ,b.XXBXLXM as b_ZXXX_XXBXLXM--学校办学类型码
      ,b.XXZGBMM as b_ZXXX_XXZGBMM--学校主管部门码
      ,b.FDDBRH as b_ZXXX_FDDBRH--法定代表人号
      ,b.FRZSH as b_ZXXX_FRZSH--法人证书号
      ,b.XZGH as b_ZXXX_XZGH--校长工号
      ,b.XZXM as b_ZXXX_XZXM--校长姓名
      ,b.DWFZRH as b_ZXXX_DWFZRH--党委负责人号
      ,b.ZZJGM as b_ZXXX_ZZJGM--组织机构码
      ,b.LXDH as b_ZXXX_LXDH--联系电话
      ,b.CZDH as b_ZXXX_CZDH--传真电话
      ,b.DZXX as b_ZXXX_DZXX--电子信箱
      ,b.ZYDZ as b_ZXXX_ZYDZ--主页地址
      ,b.LSYG as b_ZXXX_LSYG--历史沿革
      ,b.XXBBM as b_ZXXX_XXBBM--学校办别码
      ,b.SSZGDWM as b_ZXXX_SSZGDWM--所属主管单位码
      ,b.SZDCXLXM as b_ZXXX_SZDCXLXM--所在地城乡类型码
      ,b.SZDJJSXM as b_ZXXX_SZDJJSXM--所在地经济属性码
      ,b.SZDMZSX as b_ZXXX_SZDMZSX--所在地民族属性
      ,b.XXXZ as b_ZXXX_XXXZ--小学学制
      ,b.XXRXNL as b_ZXXX_XXRXNL--小学入学年龄
      ,b.CZXZ as b_ZXXX_CZXZ--初中学制
      ,b.CZRXNL as b_ZXXX_CZRXNL--初中入学年龄
      ,b.GZXZ as b_ZXXX_GZXZ--高中学制
      ,b.ZJXYYM as b_ZXXX_ZJXYYM--主教学语言码
      ,b.FJXYYM as b_ZXXX_FJXYYM--辅教学语言码
      ,b.ZSBJ as b_ZXXX_ZSBJ--招生半径
      ,c.SCHOOLID as c_USER_SCHOOLID--学校ID
      ,c.APPID as c_USER_APPID--应用ID
      ,c.PWD as c_USER_PWD--密码
      ,c.STATUS as c_USER_STATUS--用户状态
      ,c.USERTYPE as c_USER_USERTYPE--用户类别
      ,c.USERID as c_USER_USERID--用户ID
      ,c.ROLEIDLst as c_USER_ROLEIDLst--用户角色
      ,c.XM as c_USER_XM--姓名
      ,c.XB as c_USER_XB--性别
      ,c.QQ as c_USER_QQ--QQ
      ,c.DZYJ as c_USER_DZYJ--电子邮件
      ,c.LXDH as c_USER_LXDH--联系电话
      ,c.ZJDLSJ as c_USER_ZJDLSJ--最近一次登录时间
      ,c.DLCGCS as c_USER_DLCGCS--登录成功次数
      ,c.YHCJSJ as c_USER_YHCJSJ--用户创建时间

FROM dbo.EDU_ELE_03_APPLL AS a LEFT OUTER JOIN
      dbo.EDU_ZXXX_01_01_ZXXX AS b ON a.SCHOOLID = b.ID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS c ON a.YHID = c.LOGINNAME /*操作用户*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/
GO

--用户分组表
CREATE VIEW [dbo].[VIEW_EDU_ELE_02_YHFZ_DISP]
AS
SELECT a.[ID]--分组ID
      ,a.[SCHOOLID]--学校ID
      ,a.[APPID]--应用ID
      ,a.[YHID]--用户ID
      ,a.[SJFZID]--上级分组ID
      ,a.[FZMC]--分组名称
      ,a.[FZYHID]--分组用户ID列表
      ,b.XXDM as b_ZXXX_XXDM--学校代码
      ,b.XXMC as b_ZXXX_XXMC--学校名称
      ,b.XXYWMC as b_ZXXX_XXYWMC--学校英文名称
      ,b.XXDZ as b_ZXXX_XXDZ--学校地址
      ,b.XXYZBM as b_ZXXX_XXYZBM--学校邮政编码
      ,b.XZQHM as b_ZXXX_XZQHM--行政区划码
      ,b.JXNY as b_ZXXX_JXNY--建校年月
      ,b.XQR as b_ZXXX_XQR--校庆日
      ,b.XXBXLXM as b_ZXXX_XXBXLXM--学校办学类型码
      ,b.XXZGBMM as b_ZXXX_XXZGBMM--学校主管部门码
      ,b.FDDBRH as b_ZXXX_FDDBRH--法定代表人号
      ,b.FRZSH as b_ZXXX_FRZSH--法人证书号
      ,b.XZGH as b_ZXXX_XZGH--校长工号
      ,b.XZXM as b_ZXXX_XZXM--校长姓名
      ,b.DWFZRH as b_ZXXX_DWFZRH--党委负责人号
      ,b.ZZJGM as b_ZXXX_ZZJGM--组织机构码
      ,b.LXDH as b_ZXXX_LXDH--联系电话
      ,b.CZDH as b_ZXXX_CZDH--传真电话
      ,b.DZXX as b_ZXXX_DZXX--电子信箱
      ,b.ZYDZ as b_ZXXX_ZYDZ--主页地址
      ,b.LSYG as b_ZXXX_LSYG--历史沿革
      ,b.XXBBM as b_ZXXX_XXBBM--学校办别码
      ,b.SSZGDWM as b_ZXXX_SSZGDWM--所属主管单位码
      ,b.SZDCXLXM as b_ZXXX_SZDCXLXM--所在地城乡类型码
      ,b.SZDJJSXM as b_ZXXX_SZDJJSXM--所在地经济属性码
      ,b.SZDMZSX as b_ZXXX_SZDMZSX--所在地民族属性
      ,b.XXXZ as b_ZXXX_XXXZ--小学学制
      ,b.XXRXNL as b_ZXXX_XXRXNL--小学入学年龄
      ,b.CZXZ as b_ZXXX_CZXZ--初中学制
      ,b.CZRXNL as b_ZXXX_CZRXNL--初中入学年龄
      ,b.GZXZ as b_ZXXX_GZXZ--高中学制
      ,b.ZJXYYM as b_ZXXX_ZJXYYM--主教学语言码
      ,b.FJXYYM as b_ZXXX_FJXYYM--辅教学语言码
      ,b.ZSBJ as b_ZXXX_ZSBJ--招生半径
      ,c.SCHOOLID as c_USER_SCHOOLID--学校ID
      ,c.APPID as c_USER_APPID--应用ID
      ,c.PWD as c_USER_PWD--密码
      ,c.STATUS as c_USER_STATUS--用户状态
      ,c.USERTYPE as c_USER_USERTYPE--用户类别
      ,c.USERID as c_USER_USERID--用户ID
      ,c.ROLEIDLst as c_USER_ROLEIDLst--用户角色
      ,c.XM as c_USER_XM--姓名
      ,c.XB as c_USER_XB--性别
      ,c.QQ as c_USER_QQ--QQ
      ,c.DZYJ as c_USER_DZYJ--电子邮件
      ,c.LXDH as c_USER_LXDH--联系电话
      ,c.ZJDLSJ as c_USER_ZJDLSJ--最近一次登录时间
      ,c.DLCGCS as c_USER_DLCGCS--登录成功次数
      ,c.YHCJSJ as c_USER_YHCJSJ--用户创建时间
      ,d.SCHOOLID as d_YHFZ_SCHOOLID--学校ID
      ,d.APPID as d_YHFZ_APPID--应用ID
      ,d.YHID as d_YHFZ_YHID--用户ID
      ,d.SJFZID as d_YHFZ_SJFZID--上级分组ID
      ,d.FZMC as d_YHFZ_FZMC--分组名称
      ,d.FZYHID as d_YHFZ_FZYHID--分组用户ID列表

FROM dbo.EDU_ELE_02_YHFZ AS a LEFT OUTER JOIN
      dbo.EDU_ZXXX_01_01_ZXXX AS b ON a.SCHOOLID = b.ID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS c ON a.YHID = c.LOGINNAME /*用户ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_02_YHFZ AS d ON a.SJFZID = d.ID /*上级分组ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校ID*/
GO

--学年表
CREATE VIEW [dbo].[VIEW_EDU_SYS_01_XN_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校名
      ,a.[XN]--学年
      ,b.XXDM as b_ZXXX_XXDM--学校代码
      ,b.XXMC as b_ZXXX_XXMC--学校名称
      ,b.XXYWMC as b_ZXXX_XXYWMC--学校英文名称
      ,b.XXDZ as b_ZXXX_XXDZ--学校地址
      ,b.XXYZBM as b_ZXXX_XXYZBM--学校邮政编码
      ,b.XZQHM as b_ZXXX_XZQHM--行政区划码
      ,b.JXNY as b_ZXXX_JXNY--建校年月
      ,b.XQR as b_ZXXX_XQR--校庆日
      ,b.XXBXLXM as b_ZXXX_XXBXLXM--学校办学类型码
      ,b.XXZGBMM as b_ZXXX_XXZGBMM--学校主管部门码
      ,b.FDDBRH as b_ZXXX_FDDBRH--法定代表人号
      ,b.FRZSH as b_ZXXX_FRZSH--法人证书号
      ,b.XZGH as b_ZXXX_XZGH--校长工号
      ,b.XZXM as b_ZXXX_XZXM--校长姓名
      ,b.DWFZRH as b_ZXXX_DWFZRH--党委负责人号
      ,b.ZZJGM as b_ZXXX_ZZJGM--组织机构码
      ,b.LXDH as b_ZXXX_LXDH--联系电话
      ,b.CZDH as b_ZXXX_CZDH--传真电话
      ,b.DZXX as b_ZXXX_DZXX--电子信箱
      ,b.ZYDZ as b_ZXXX_ZYDZ--主页地址
      ,b.LSYG as b_ZXXX_LSYG--历史沿革
      ,b.XXBBM as b_ZXXX_XXBBM--学校办别码
      ,b.SSZGDWM as b_ZXXX_SSZGDWM--所属主管单位码
      ,b.SZDCXLXM as b_ZXXX_SZDCXLXM--所在地城乡类型码
      ,b.SZDJJSXM as b_ZXXX_SZDJJSXM--所在地经济属性码
      ,b.SZDMZSX as b_ZXXX_SZDMZSX--所在地民族属性
      ,b.XXXZ as b_ZXXX_XXXZ--小学学制
      ,b.XXRXNL as b_ZXXX_XXRXNL--小学入学年龄
      ,b.CZXZ as b_ZXXX_CZXZ--初中学制
      ,b.CZRXNL as b_ZXXX_CZRXNL--初中入学年龄
      ,b.GZXZ as b_ZXXX_GZXZ--高中学制
      ,b.ZJXYYM as b_ZXXX_ZJXYYM--主教学语言码
      ,b.FJXYYM as b_ZXXX_FJXYYM--辅教学语言码
      ,b.ZSBJ as b_ZXXX_ZSBJ--招生半径

FROM dbo.EDU_SYS_01_XN AS a LEFT OUTER JOIN
      dbo.EDU_ZXXX_01_01_ZXXX AS b ON a.SCHOOLID = b.ID /*学校名*/
GO

--网站会员
CREATE VIEW [dbo].[VIEW_EDU_WZXT_VIP_DISP]
AS
SELECT a.[SCHOOLID]--学校名
      ,a.[WEBID]--网站ID
      ,a.[LOGINNAME]--用户名
      ,a.[LOGINPWD]--密码
      ,a.[REALNAME]--姓名
      ,a.[EMAIL]--电子邮箱
      ,a.[MOBILE]--联系电话
      ,a.[QQ]--QQ号码
      ,a.[AUDITSTATU]--审核状态
      ,a.[AUDITOR]--审核人ID
      ,a.[AUDITORNAME]--审核人
      ,b.XXDM as b_ZXXX_XXDM--学校代码
      ,b.XXMC as b_ZXXX_XXMC--学校名称
      ,b.XXYWMC as b_ZXXX_XXYWMC--学校英文名称
      ,b.XXDZ as b_ZXXX_XXDZ--学校地址
      ,b.XXYZBM as b_ZXXX_XXYZBM--学校邮政编码
      ,b.XZQHM as b_ZXXX_XZQHM--行政区划码
      ,b.JXNY as b_ZXXX_JXNY--建校年月
      ,b.XQR as b_ZXXX_XQR--校庆日
      ,b.XXBXLXM as b_ZXXX_XXBXLXM--学校办学类型码
      ,b.XXZGBMM as b_ZXXX_XXZGBMM--学校主管部门码
      ,b.FDDBRH as b_ZXXX_FDDBRH--法定代表人号
      ,b.FRZSH as b_ZXXX_FRZSH--法人证书号
      ,b.XZGH as b_ZXXX_XZGH--校长工号
      ,b.XZXM as b_ZXXX_XZXM--校长姓名
      ,b.DWFZRH as b_ZXXX_DWFZRH--党委负责人号
      ,b.ZZJGM as b_ZXXX_ZZJGM--组织机构码
      ,b.LXDH as b_ZXXX_LXDH--联系电话
      ,b.CZDH as b_ZXXX_CZDH--传真电话
      ,b.DZXX as b_ZXXX_DZXX--电子信箱
      ,b.ZYDZ as b_ZXXX_ZYDZ--主页地址
      ,b.LSYG as b_ZXXX_LSYG--历史沿革
      ,b.XXBBM as b_ZXXX_XXBBM--学校办别码
      ,b.SSZGDWM as b_ZXXX_SSZGDWM--所属主管单位码
      ,b.SZDCXLXM as b_ZXXX_SZDCXLXM--所在地城乡类型码
      ,b.SZDJJSXM as b_ZXXX_SZDJJSXM--所在地经济属性码
      ,b.SZDMZSX as b_ZXXX_SZDMZSX--所在地民族属性
      ,b.XXXZ as b_ZXXX_XXXZ--小学学制
      ,b.XXRXNL as b_ZXXX_XXRXNL--小学入学年龄
      ,b.CZXZ as b_ZXXX_CZXZ--初中学制
      ,b.CZRXNL as b_ZXXX_CZRXNL--初中入学年龄
      ,b.GZXZ as b_ZXXX_GZXZ--高中学制
      ,b.ZJXYYM as b_ZXXX_ZJXYYM--主教学语言码
      ,b.FJXYYM as b_ZXXX_FJXYYM--辅教学语言码
      ,b.ZSBJ as b_ZXXX_ZSBJ--招生半径
      ,c.SCHOOLID as c_WZPZ_SCHOOLID--学校名
      ,c.WEBNAME as c_WZPZ_WEBNAME--网站名
      ,c.STATUID as c_WZPZ_STATUID--是否开启
      ,c.WEBURL as c_WZPZ_WEBURL--网址
      ,c.CSSID as c_WZPZ_CSSID--网站样式

FROM dbo.EDU_WZXT_VIP AS a LEFT OUTER JOIN
      dbo.EDU_ZXXX_01_01_ZXXX AS b ON a.SCHOOLID = b.ID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_WZXT_MHXT_WZPZ AS c ON a.WEBID = c.WEBID /*网站ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/
GO

--投票样式库
CREATE VIEW [dbo].[VIEW_EDU_WZXT_TPXT_TPYS_DISP]
AS
SELECT a.[ID]--样式ID
      ,a.[SCHOOLID]--学校名
      ,a.[WEBID]--网站ID
      ,a.[NAME]--样式名
      ,a.[SHOWIMG]--效果图
      ,b.XXDM as b_ZXXX_XXDM--学校代码
      ,b.XXMC as b_ZXXX_XXMC--学校名称
      ,b.XXYWMC as b_ZXXX_XXYWMC--学校英文名称
      ,b.XXDZ as b_ZXXX_XXDZ--学校地址
      ,b.XXYZBM as b_ZXXX_XXYZBM--学校邮政编码
      ,b.XZQHM as b_ZXXX_XZQHM--行政区划码
      ,b.JXNY as b_ZXXX_JXNY--建校年月
      ,b.XQR as b_ZXXX_XQR--校庆日
      ,b.XXBXLXM as b_ZXXX_XXBXLXM--学校办学类型码
      ,b.XXZGBMM as b_ZXXX_XXZGBMM--学校主管部门码
      ,b.FDDBRH as b_ZXXX_FDDBRH--法定代表人号
      ,b.FRZSH as b_ZXXX_FRZSH--法人证书号
      ,b.XZGH as b_ZXXX_XZGH--校长工号
      ,b.XZXM as b_ZXXX_XZXM--校长姓名
      ,b.DWFZRH as b_ZXXX_DWFZRH--党委负责人号
      ,b.ZZJGM as b_ZXXX_ZZJGM--组织机构码
      ,b.LXDH as b_ZXXX_LXDH--联系电话
      ,b.CZDH as b_ZXXX_CZDH--传真电话
      ,b.DZXX as b_ZXXX_DZXX--电子信箱
      ,b.ZYDZ as b_ZXXX_ZYDZ--主页地址
      ,b.LSYG as b_ZXXX_LSYG--历史沿革
      ,b.XXBBM as b_ZXXX_XXBBM--学校办别码
      ,b.SSZGDWM as b_ZXXX_SSZGDWM--所属主管单位码
      ,b.SZDCXLXM as b_ZXXX_SZDCXLXM--所在地城乡类型码
      ,b.SZDJJSXM as b_ZXXX_SZDJJSXM--所在地经济属性码
      ,b.SZDMZSX as b_ZXXX_SZDMZSX--所在地民族属性
      ,b.XXXZ as b_ZXXX_XXXZ--小学学制
      ,b.XXRXNL as b_ZXXX_XXRXNL--小学入学年龄
      ,b.CZXZ as b_ZXXX_CZXZ--初中学制
      ,b.CZRXNL as b_ZXXX_CZRXNL--初中入学年龄
      ,b.GZXZ as b_ZXXX_GZXZ--高中学制
      ,b.ZJXYYM as b_ZXXX_ZJXYYM--主教学语言码
      ,b.FJXYYM as b_ZXXX_FJXYYM--辅教学语言码
      ,b.ZSBJ as b_ZXXX_ZSBJ--招生半径
      ,c.SCHOOLID as c_WZPZ_SCHOOLID--学校名
      ,c.WEBNAME as c_WZPZ_WEBNAME--网站名
      ,c.STATUID as c_WZPZ_STATUID--是否开启
      ,c.WEBURL as c_WZPZ_WEBURL--网址
      ,c.CSSID as c_WZPZ_CSSID--网站样式

FROM dbo.EDU_WZXT_TPXT_TPYS AS a LEFT OUTER JOIN
      dbo.EDU_ZXXX_01_01_ZXXX AS b ON a.SCHOOLID = b.ID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_WZXT_MHXT_WZPZ AS c ON a.WEBID = c.WEBID /*网站ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/
GO

--投票题目选项
CREATE VIEW [dbo].[VIEW_EDU_WZXT_TPXT_TPXX_DISP]
AS
SELECT a.[ID]--投票题目选项ID
      ,a.[SCHOOLID]--学校名
      ,a.[WEBID]--网站ID
      ,a.[TPID]--投票
      ,a.[TMID]--投票题目
      ,a.[TITLE]--标题
      ,a.[SUMTP]--已选人数
      ,b.XXDM as b_ZXXX_XXDM--学校代码
      ,b.XXMC as b_ZXXX_XXMC--学校名称
      ,b.XXYWMC as b_ZXXX_XXYWMC--学校英文名称
      ,b.XXDZ as b_ZXXX_XXDZ--学校地址
      ,b.XXYZBM as b_ZXXX_XXYZBM--学校邮政编码
      ,b.XZQHM as b_ZXXX_XZQHM--行政区划码
      ,b.JXNY as b_ZXXX_JXNY--建校年月
      ,b.XQR as b_ZXXX_XQR--校庆日
      ,b.XXBXLXM as b_ZXXX_XXBXLXM--学校办学类型码
      ,b.XXZGBMM as b_ZXXX_XXZGBMM--学校主管部门码
      ,b.FDDBRH as b_ZXXX_FDDBRH--法定代表人号
      ,b.FRZSH as b_ZXXX_FRZSH--法人证书号
      ,b.XZGH as b_ZXXX_XZGH--校长工号
      ,b.XZXM as b_ZXXX_XZXM--校长姓名
      ,b.DWFZRH as b_ZXXX_DWFZRH--党委负责人号
      ,b.ZZJGM as b_ZXXX_ZZJGM--组织机构码
      ,b.LXDH as b_ZXXX_LXDH--联系电话
      ,b.CZDH as b_ZXXX_CZDH--传真电话
      ,b.DZXX as b_ZXXX_DZXX--电子信箱
      ,b.ZYDZ as b_ZXXX_ZYDZ--主页地址
      ,b.LSYG as b_ZXXX_LSYG--历史沿革
      ,b.XXBBM as b_ZXXX_XXBBM--学校办别码
      ,b.SSZGDWM as b_ZXXX_SSZGDWM--所属主管单位码
      ,b.SZDCXLXM as b_ZXXX_SZDCXLXM--所在地城乡类型码
      ,b.SZDJJSXM as b_ZXXX_SZDJJSXM--所在地经济属性码
      ,b.SZDMZSX as b_ZXXX_SZDMZSX--所在地民族属性
      ,b.XXXZ as b_ZXXX_XXXZ--小学学制
      ,b.XXRXNL as b_ZXXX_XXRXNL--小学入学年龄
      ,b.CZXZ as b_ZXXX_CZXZ--初中学制
      ,b.CZRXNL as b_ZXXX_CZRXNL--初中入学年龄
      ,b.GZXZ as b_ZXXX_GZXZ--高中学制
      ,b.ZJXYYM as b_ZXXX_ZJXYYM--主教学语言码
      ,b.FJXYYM as b_ZXXX_FJXYYM--辅教学语言码
      ,b.ZSBJ as b_ZXXX_ZSBJ--招生半径
      ,c.SCHOOLID as c_WZPZ_SCHOOLID--学校名
      ,c.WEBNAME as c_WZPZ_WEBNAME--网站名
      ,c.STATUID as c_WZPZ_STATUID--是否开启
      ,c.WEBURL as c_WZPZ_WEBURL--网址
      ,c.CSSID as c_WZPZ_CSSID--网站样式
      ,d.SCHOOLID as d_TPSZ_SCHOOLID--学校名
      ,d.WEBID as d_TPSZ_WEBID--网站ID
      ,d.TITLE as d_TPSZ_TITLE--标题
      ,d.CONTENT as d_TPSZ_CONTENT--内容
      ,d.SHOWSTYLEID as d_TPSZ_SHOWSTYLEID--显示方式
      ,d.CSSID as d_TPSZ_CSSID--显示样式
      ,d.LOGINNAMELIST as d_TPSZ_LOGINNAMELIST--投票人
      ,d.STARTSTATU as d_TPSZ_STARTSTATU--是否开启
      ,e.SCHOOLID as e_TPTM_SCHOOLID--学校名
      ,e.WEBID as e_TPTM_WEBID--网站ID
      ,e.TPID as e_TPTM_TPID--投票
      ,e.TYPEID as e_TPTM_TYPEID--投票形式
      ,e.TITLE as e_TPTM_TITLE--标题
      ,e.CONTENT as e_TPTM_CONTENT--内容

FROM dbo.EDU_WZXT_TPXT_TPXX AS a LEFT OUTER JOIN
      dbo.EDU_ZXXX_01_01_ZXXX AS b ON a.SCHOOLID = b.ID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_WZXT_MHXT_WZPZ AS c ON a.WEBID = c.WEBID /*网站ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_WZXT_TPXT_TPSZ AS d ON a.TPID = d.ID /*投票*/ AND a.SCHOOLID = d.SCHOOLID /*学校名*/ AND a.WEBID = d.WEBID /*网站ID*/ LEFT OUTER JOIN
      dbo.EDU_WZXT_TPXT_TPTM AS e ON a.TMID = e.ID /*投票题目*/ AND a.SCHOOLID = e.SCHOOLID /*学校名*/ AND a.WEBID = e.WEBID /*网站ID*/
GO

--投票题目
CREATE VIEW [dbo].[VIEW_EDU_WZXT_TPXT_TPTM_DISP]
AS
SELECT a.[ID]--投票题目ID
      ,a.[SCHOOLID]--学校名
      ,a.[WEBID]--网站ID
      ,a.[TPID]--投票
      ,a.[TYPEID]--投票形式
      ,a.[TITLE]--标题
      ,a.[CONTENT]--内容
      ,b.XXDM as b_ZXXX_XXDM--学校代码
      ,b.XXMC as b_ZXXX_XXMC--学校名称
      ,b.XXYWMC as b_ZXXX_XXYWMC--学校英文名称
      ,b.XXDZ as b_ZXXX_XXDZ--学校地址
      ,b.XXYZBM as b_ZXXX_XXYZBM--学校邮政编码
      ,b.XZQHM as b_ZXXX_XZQHM--行政区划码
      ,b.JXNY as b_ZXXX_JXNY--建校年月
      ,b.XQR as b_ZXXX_XQR--校庆日
      ,b.XXBXLXM as b_ZXXX_XXBXLXM--学校办学类型码
      ,b.XXZGBMM as b_ZXXX_XXZGBMM--学校主管部门码
      ,b.FDDBRH as b_ZXXX_FDDBRH--法定代表人号
      ,b.FRZSH as b_ZXXX_FRZSH--法人证书号
      ,b.XZGH as b_ZXXX_XZGH--校长工号
      ,b.XZXM as b_ZXXX_XZXM--校长姓名
      ,b.DWFZRH as b_ZXXX_DWFZRH--党委负责人号
      ,b.ZZJGM as b_ZXXX_ZZJGM--组织机构码
      ,b.LXDH as b_ZXXX_LXDH--联系电话
      ,b.CZDH as b_ZXXX_CZDH--传真电话
      ,b.DZXX as b_ZXXX_DZXX--电子信箱
      ,b.ZYDZ as b_ZXXX_ZYDZ--主页地址
      ,b.LSYG as b_ZXXX_LSYG--历史沿革
      ,b.XXBBM as b_ZXXX_XXBBM--学校办别码
      ,b.SSZGDWM as b_ZXXX_SSZGDWM--所属主管单位码
      ,b.SZDCXLXM as b_ZXXX_SZDCXLXM--所在地城乡类型码
      ,b.SZDJJSXM as b_ZXXX_SZDJJSXM--所在地经济属性码
      ,b.SZDMZSX as b_ZXXX_SZDMZSX--所在地民族属性
      ,b.XXXZ as b_ZXXX_XXXZ--小学学制
      ,b.XXRXNL as b_ZXXX_XXRXNL--小学入学年龄
      ,b.CZXZ as b_ZXXX_CZXZ--初中学制
      ,b.CZRXNL as b_ZXXX_CZRXNL--初中入学年龄
      ,b.GZXZ as b_ZXXX_GZXZ--高中学制
      ,b.ZJXYYM as b_ZXXX_ZJXYYM--主教学语言码
      ,b.FJXYYM as b_ZXXX_FJXYYM--辅教学语言码
      ,b.ZSBJ as b_ZXXX_ZSBJ--招生半径
      ,c.SCHOOLID as c_WZPZ_SCHOOLID--学校名
      ,c.WEBNAME as c_WZPZ_WEBNAME--网站名
      ,c.STATUID as c_WZPZ_STATUID--是否开启
      ,c.WEBURL as c_WZPZ_WEBURL--网址
      ,c.CSSID as c_WZPZ_CSSID--网站样式
      ,d.SCHOOLID as d_TPSZ_SCHOOLID--学校名
      ,d.WEBID as d_TPSZ_WEBID--网站ID
      ,d.TITLE as d_TPSZ_TITLE--标题
      ,d.CONTENT as d_TPSZ_CONTENT--内容
      ,d.SHOWSTYLEID as d_TPSZ_SHOWSTYLEID--显示方式
      ,d.CSSID as d_TPSZ_CSSID--显示样式
      ,d.LOGINNAMELIST as d_TPSZ_LOGINNAMELIST--投票人
      ,d.STARTSTATU as d_TPSZ_STARTSTATU--是否开启

FROM dbo.EDU_WZXT_TPXT_TPTM AS a LEFT OUTER JOIN
      dbo.EDU_ZXXX_01_01_ZXXX AS b ON a.SCHOOLID = b.ID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_WZXT_MHXT_WZPZ AS c ON a.WEBID = c.WEBID /*网站ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_WZXT_TPXT_TPSZ AS d ON a.TPID = d.ID /*投票*/ AND a.SCHOOLID = d.SCHOOLID /*学校名*/ AND a.WEBID = d.WEBID /*网站ID*/
GO

--投票设置
CREATE VIEW [dbo].[VIEW_EDU_WZXT_TPXT_TPSZ_DISP]
AS
SELECT a.[ID]--投票设置ID
      ,a.[SCHOOLID]--学校名
      ,a.[WEBID]--网站ID
      ,a.[TITLE]--标题
      ,a.[CONTENT]--内容
      ,a.[SHOWSTYLEID]--显示方式
      ,a.[CSSID]--显示样式
      ,a.[LOGINNAMELIST]--投票人
      ,a.[STARTSTATU]--是否开启
      ,b.XXDM as b_ZXXX_XXDM--学校代码
      ,b.XXMC as b_ZXXX_XXMC--学校名称
      ,b.XXYWMC as b_ZXXX_XXYWMC--学校英文名称
      ,b.XXDZ as b_ZXXX_XXDZ--学校地址
      ,b.XXYZBM as b_ZXXX_XXYZBM--学校邮政编码
      ,b.XZQHM as b_ZXXX_XZQHM--行政区划码
      ,b.JXNY as b_ZXXX_JXNY--建校年月
      ,b.XQR as b_ZXXX_XQR--校庆日
      ,b.XXBXLXM as b_ZXXX_XXBXLXM--学校办学类型码
      ,b.XXZGBMM as b_ZXXX_XXZGBMM--学校主管部门码
      ,b.FDDBRH as b_ZXXX_FDDBRH--法定代表人号
      ,b.FRZSH as b_ZXXX_FRZSH--法人证书号
      ,b.XZGH as b_ZXXX_XZGH--校长工号
      ,b.XZXM as b_ZXXX_XZXM--校长姓名
      ,b.DWFZRH as b_ZXXX_DWFZRH--党委负责人号
      ,b.ZZJGM as b_ZXXX_ZZJGM--组织机构码
      ,b.LXDH as b_ZXXX_LXDH--联系电话
      ,b.CZDH as b_ZXXX_CZDH--传真电话
      ,b.DZXX as b_ZXXX_DZXX--电子信箱
      ,b.ZYDZ as b_ZXXX_ZYDZ--主页地址
      ,b.LSYG as b_ZXXX_LSYG--历史沿革
      ,b.XXBBM as b_ZXXX_XXBBM--学校办别码
      ,b.SSZGDWM as b_ZXXX_SSZGDWM--所属主管单位码
      ,b.SZDCXLXM as b_ZXXX_SZDCXLXM--所在地城乡类型码
      ,b.SZDJJSXM as b_ZXXX_SZDJJSXM--所在地经济属性码
      ,b.SZDMZSX as b_ZXXX_SZDMZSX--所在地民族属性
      ,b.XXXZ as b_ZXXX_XXXZ--小学学制
      ,b.XXRXNL as b_ZXXX_XXRXNL--小学入学年龄
      ,b.CZXZ as b_ZXXX_CZXZ--初中学制
      ,b.CZRXNL as b_ZXXX_CZRXNL--初中入学年龄
      ,b.GZXZ as b_ZXXX_GZXZ--高中学制
      ,b.ZJXYYM as b_ZXXX_ZJXYYM--主教学语言码
      ,b.FJXYYM as b_ZXXX_FJXYYM--辅教学语言码
      ,b.ZSBJ as b_ZXXX_ZSBJ--招生半径
      ,c.SCHOOLID as c_WZPZ_SCHOOLID--学校名
      ,c.WEBNAME as c_WZPZ_WEBNAME--网站名
      ,c.STATUID as c_WZPZ_STATUID--是否开启
      ,c.WEBURL as c_WZPZ_WEBURL--网址
      ,c.CSSID as c_WZPZ_CSSID--网站样式
      ,d.SCHOOLID as d_TPYS_SCHOOLID--学校名
      ,d.WEBID as d_TPYS_WEBID--网站ID
      ,d.NAME as d_TPYS_NAME--样式名
      ,d.SHOWIMG as d_TPYS_SHOWIMG--效果图

FROM dbo.EDU_WZXT_TPXT_TPSZ AS a LEFT OUTER JOIN
      dbo.EDU_ZXXX_01_01_ZXXX AS b ON a.SCHOOLID = b.ID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_WZXT_MHXT_WZPZ AS c ON a.WEBID = c.WEBID /*网站ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_WZXT_TPXT_TPYS AS d ON a.CSSID = d.ID /*显示样式*/ AND a.SCHOOLID = d.SCHOOLID /*学校名*/ AND a.WEBID = d.WEBID /*网站ID*/
GO

--投票记录
CREATE VIEW [dbo].[VIEW_EDU_WZXT_TPXT_TPJL_DISP]
AS
SELECT a.[ID]--投票记录ID
      ,a.[SCHOOLID]--学校名
      ,a.[WEBID]--网站ID
      ,a.[TPID]--投票
      ,a.[TPIP]--投票人
      ,a.[TPTIME]--投票时间
      ,b.XXDM as b_ZXXX_XXDM--学校代码
      ,b.XXMC as b_ZXXX_XXMC--学校名称
      ,b.XXYWMC as b_ZXXX_XXYWMC--学校英文名称
      ,b.XXDZ as b_ZXXX_XXDZ--学校地址
      ,b.XXYZBM as b_ZXXX_XXYZBM--学校邮政编码
      ,b.XZQHM as b_ZXXX_XZQHM--行政区划码
      ,b.JXNY as b_ZXXX_JXNY--建校年月
      ,b.XQR as b_ZXXX_XQR--校庆日
      ,b.XXBXLXM as b_ZXXX_XXBXLXM--学校办学类型码
      ,b.XXZGBMM as b_ZXXX_XXZGBMM--学校主管部门码
      ,b.FDDBRH as b_ZXXX_FDDBRH--法定代表人号
      ,b.FRZSH as b_ZXXX_FRZSH--法人证书号
      ,b.XZGH as b_ZXXX_XZGH--校长工号
      ,b.XZXM as b_ZXXX_XZXM--校长姓名
      ,b.DWFZRH as b_ZXXX_DWFZRH--党委负责人号
      ,b.ZZJGM as b_ZXXX_ZZJGM--组织机构码
      ,b.LXDH as b_ZXXX_LXDH--联系电话
      ,b.CZDH as b_ZXXX_CZDH--传真电话
      ,b.DZXX as b_ZXXX_DZXX--电子信箱
      ,b.ZYDZ as b_ZXXX_ZYDZ--主页地址
      ,b.LSYG as b_ZXXX_LSYG--历史沿革
      ,b.XXBBM as b_ZXXX_XXBBM--学校办别码
      ,b.SSZGDWM as b_ZXXX_SSZGDWM--所属主管单位码
      ,b.SZDCXLXM as b_ZXXX_SZDCXLXM--所在地城乡类型码
      ,b.SZDJJSXM as b_ZXXX_SZDJJSXM--所在地经济属性码
      ,b.SZDMZSX as b_ZXXX_SZDMZSX--所在地民族属性
      ,b.XXXZ as b_ZXXX_XXXZ--小学学制
      ,b.XXRXNL as b_ZXXX_XXRXNL--小学入学年龄
      ,b.CZXZ as b_ZXXX_CZXZ--初中学制
      ,b.CZRXNL as b_ZXXX_CZRXNL--初中入学年龄
      ,b.GZXZ as b_ZXXX_GZXZ--高中学制
      ,b.ZJXYYM as b_ZXXX_ZJXYYM--主教学语言码
      ,b.FJXYYM as b_ZXXX_FJXYYM--辅教学语言码
      ,b.ZSBJ as b_ZXXX_ZSBJ--招生半径
      ,c.SCHOOLID as c_WZPZ_SCHOOLID--学校名
      ,c.WEBNAME as c_WZPZ_WEBNAME--网站名
      ,c.STATUID as c_WZPZ_STATUID--是否开启
      ,c.WEBURL as c_WZPZ_WEBURL--网址
      ,c.CSSID as c_WZPZ_CSSID--网站样式
      ,d.SCHOOLID as d_TPSZ_SCHOOLID--学校名
      ,d.WEBID as d_TPSZ_WEBID--网站ID
      ,d.TITLE as d_TPSZ_TITLE--标题
      ,d.CONTENT as d_TPSZ_CONTENT--内容
      ,d.SHOWSTYLEID as d_TPSZ_SHOWSTYLEID--显示方式
      ,d.CSSID as d_TPSZ_CSSID--显示样式
      ,d.LOGINNAMELIST as d_TPSZ_LOGINNAMELIST--投票人
      ,d.STARTSTATU as d_TPSZ_STARTSTATU--是否开启

FROM dbo.EDU_WZXT_TPXT_TPJL AS a LEFT OUTER JOIN
      dbo.EDU_ZXXX_01_01_ZXXX AS b ON a.SCHOOLID = b.ID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_WZXT_MHXT_WZPZ AS c ON a.WEBID = c.WEBID /*网站ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_WZXT_TPXT_TPSZ AS d ON a.TPID = d.ID /*投票*/ AND a.SCHOOLID = d.SCHOOLID /*学校名*/ AND a.WEBID = d.WEBID /*网站ID*/
GO

--友情链接类型
CREATE VIEW [dbo].[VIEW_EDU_WZXT_MHXT_YQLJLX_DISP]
AS
SELECT a.[ID]--友情链接类型ID
      ,a.[SCHOOLID]--学校名
      ,a.[WEBID]--网站ID
      ,a.[NAME]--类型名
      ,a.[SHOWSTYLE]--显示方式
      ,b.XXDM as b_ZXXX_XXDM--学校代码
      ,b.XXMC as b_ZXXX_XXMC--学校名称
      ,b.XXYWMC as b_ZXXX_XXYWMC--学校英文名称
      ,b.XXDZ as b_ZXXX_XXDZ--学校地址
      ,b.XXYZBM as b_ZXXX_XXYZBM--学校邮政编码
      ,b.XZQHM as b_ZXXX_XZQHM--行政区划码
      ,b.JXNY as b_ZXXX_JXNY--建校年月
      ,b.XQR as b_ZXXX_XQR--校庆日
      ,b.XXBXLXM as b_ZXXX_XXBXLXM--学校办学类型码
      ,b.XXZGBMM as b_ZXXX_XXZGBMM--学校主管部门码
      ,b.FDDBRH as b_ZXXX_FDDBRH--法定代表人号
      ,b.FRZSH as b_ZXXX_FRZSH--法人证书号
      ,b.XZGH as b_ZXXX_XZGH--校长工号
      ,b.XZXM as b_ZXXX_XZXM--校长姓名
      ,b.DWFZRH as b_ZXXX_DWFZRH--党委负责人号
      ,b.ZZJGM as b_ZXXX_ZZJGM--组织机构码
      ,b.LXDH as b_ZXXX_LXDH--联系电话
      ,b.CZDH as b_ZXXX_CZDH--传真电话
      ,b.DZXX as b_ZXXX_DZXX--电子信箱
      ,b.ZYDZ as b_ZXXX_ZYDZ--主页地址
      ,b.LSYG as b_ZXXX_LSYG--历史沿革
      ,b.XXBBM as b_ZXXX_XXBBM--学校办别码
      ,b.SSZGDWM as b_ZXXX_SSZGDWM--所属主管单位码
      ,b.SZDCXLXM as b_ZXXX_SZDCXLXM--所在地城乡类型码
      ,b.SZDJJSXM as b_ZXXX_SZDJJSXM--所在地经济属性码
      ,b.SZDMZSX as b_ZXXX_SZDMZSX--所在地民族属性
      ,b.XXXZ as b_ZXXX_XXXZ--小学学制
      ,b.XXRXNL as b_ZXXX_XXRXNL--小学入学年龄
      ,b.CZXZ as b_ZXXX_CZXZ--初中学制
      ,b.CZRXNL as b_ZXXX_CZRXNL--初中入学年龄
      ,b.GZXZ as b_ZXXX_GZXZ--高中学制
      ,b.ZJXYYM as b_ZXXX_ZJXYYM--主教学语言码
      ,b.FJXYYM as b_ZXXX_FJXYYM--辅教学语言码
      ,b.ZSBJ as b_ZXXX_ZSBJ--招生半径
      ,c.SCHOOLID as c_WZPZ_SCHOOLID--学校名
      ,c.WEBNAME as c_WZPZ_WEBNAME--网站名
      ,c.STATUID as c_WZPZ_STATUID--是否开启
      ,c.WEBURL as c_WZPZ_WEBURL--网址
      ,c.CSSID as c_WZPZ_CSSID--网站样式

FROM dbo.EDU_WZXT_MHXT_YQLJLX AS a LEFT OUTER JOIN
      dbo.EDU_ZXXX_01_01_ZXXX AS b ON a.SCHOOLID = b.ID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_WZXT_MHXT_WZPZ AS c ON a.WEBID = c.WEBID /*网站ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/
GO

--友情链接
CREATE VIEW [dbo].[VIEW_EDU_WZXT_MHXT_YQLJ_DISP]
AS
SELECT a.[ID]--友情链接ID
      ,a.[SCHOOLID]--学校名
      ,a.[WEBID]--网站ID
      ,a.[TITLE]--标题
      ,a.[TYPEID]--类型
      ,a.[IMAGEURL]--图片
      ,a.[URL]--链接
      ,b.XXDM as b_ZXXX_XXDM--学校代码
      ,b.XXMC as b_ZXXX_XXMC--学校名称
      ,b.XXYWMC as b_ZXXX_XXYWMC--学校英文名称
      ,b.XXDZ as b_ZXXX_XXDZ--学校地址
      ,b.XXYZBM as b_ZXXX_XXYZBM--学校邮政编码
      ,b.XZQHM as b_ZXXX_XZQHM--行政区划码
      ,b.JXNY as b_ZXXX_JXNY--建校年月
      ,b.XQR as b_ZXXX_XQR--校庆日
      ,b.XXBXLXM as b_ZXXX_XXBXLXM--学校办学类型码
      ,b.XXZGBMM as b_ZXXX_XXZGBMM--学校主管部门码
      ,b.FDDBRH as b_ZXXX_FDDBRH--法定代表人号
      ,b.FRZSH as b_ZXXX_FRZSH--法人证书号
      ,b.XZGH as b_ZXXX_XZGH--校长工号
      ,b.XZXM as b_ZXXX_XZXM--校长姓名
      ,b.DWFZRH as b_ZXXX_DWFZRH--党委负责人号
      ,b.ZZJGM as b_ZXXX_ZZJGM--组织机构码
      ,b.LXDH as b_ZXXX_LXDH--联系电话
      ,b.CZDH as b_ZXXX_CZDH--传真电话
      ,b.DZXX as b_ZXXX_DZXX--电子信箱
      ,b.ZYDZ as b_ZXXX_ZYDZ--主页地址
      ,b.LSYG as b_ZXXX_LSYG--历史沿革
      ,b.XXBBM as b_ZXXX_XXBBM--学校办别码
      ,b.SSZGDWM as b_ZXXX_SSZGDWM--所属主管单位码
      ,b.SZDCXLXM as b_ZXXX_SZDCXLXM--所在地城乡类型码
      ,b.SZDJJSXM as b_ZXXX_SZDJJSXM--所在地经济属性码
      ,b.SZDMZSX as b_ZXXX_SZDMZSX--所在地民族属性
      ,b.XXXZ as b_ZXXX_XXXZ--小学学制
      ,b.XXRXNL as b_ZXXX_XXRXNL--小学入学年龄
      ,b.CZXZ as b_ZXXX_CZXZ--初中学制
      ,b.CZRXNL as b_ZXXX_CZRXNL--初中入学年龄
      ,b.GZXZ as b_ZXXX_GZXZ--高中学制
      ,b.ZJXYYM as b_ZXXX_ZJXYYM--主教学语言码
      ,b.FJXYYM as b_ZXXX_FJXYYM--辅教学语言码
      ,b.ZSBJ as b_ZXXX_ZSBJ--招生半径
      ,c.SCHOOLID as c_WZPZ_SCHOOLID--学校名
      ,c.WEBNAME as c_WZPZ_WEBNAME--网站名
      ,c.STATUID as c_WZPZ_STATUID--是否开启
      ,c.WEBURL as c_WZPZ_WEBURL--网址
      ,c.CSSID as c_WZPZ_CSSID--网站样式
      ,d.SCHOOLID as d_YQLJLX_SCHOOLID--学校名
      ,d.WEBID as d_YQLJLX_WEBID--网站ID
      ,d.NAME as d_YQLJLX_NAME--类型名
      ,d.SHOWSTYLE as d_YQLJLX_SHOWSTYLE--显示方式

FROM dbo.EDU_WZXT_MHXT_YQLJ AS a LEFT OUTER JOIN
      dbo.EDU_ZXXX_01_01_ZXXX AS b ON a.SCHOOLID = b.ID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_WZXT_MHXT_WZPZ AS c ON a.WEBID = c.WEBID /*网站ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_WZXT_MHXT_YQLJLX AS d ON a.TYPEID = d.ID /*类型*/ AND a.SCHOOLID = d.SCHOOLID /*学校名*/ AND a.WEBID = d.WEBID /*网站ID*/
GO

--样式库
CREATE VIEW [dbo].[VIEW_EDU_WZXT_MHXT_WZYS_DISP]
AS
SELECT a.[ID]--样式库ID
      ,a.[SCHOOLID]--学校名
      ,a.[WEBID]--网站ID
      ,a.[NAME]--样式名
      ,a.[SHOWIMG]--效果图
      ,b.XXDM as b_ZXXX_XXDM--学校代码
      ,b.XXMC as b_ZXXX_XXMC--学校名称
      ,b.XXYWMC as b_ZXXX_XXYWMC--学校英文名称
      ,b.XXDZ as b_ZXXX_XXDZ--学校地址
      ,b.XXYZBM as b_ZXXX_XXYZBM--学校邮政编码
      ,b.XZQHM as b_ZXXX_XZQHM--行政区划码
      ,b.JXNY as b_ZXXX_JXNY--建校年月
      ,b.XQR as b_ZXXX_XQR--校庆日
      ,b.XXBXLXM as b_ZXXX_XXBXLXM--学校办学类型码
      ,b.XXZGBMM as b_ZXXX_XXZGBMM--学校主管部门码
      ,b.FDDBRH as b_ZXXX_FDDBRH--法定代表人号
      ,b.FRZSH as b_ZXXX_FRZSH--法人证书号
      ,b.XZGH as b_ZXXX_XZGH--校长工号
      ,b.XZXM as b_ZXXX_XZXM--校长姓名
      ,b.DWFZRH as b_ZXXX_DWFZRH--党委负责人号
      ,b.ZZJGM as b_ZXXX_ZZJGM--组织机构码
      ,b.LXDH as b_ZXXX_LXDH--联系电话
      ,b.CZDH as b_ZXXX_CZDH--传真电话
      ,b.DZXX as b_ZXXX_DZXX--电子信箱
      ,b.ZYDZ as b_ZXXX_ZYDZ--主页地址
      ,b.LSYG as b_ZXXX_LSYG--历史沿革
      ,b.XXBBM as b_ZXXX_XXBBM--学校办别码
      ,b.SSZGDWM as b_ZXXX_SSZGDWM--所属主管单位码
      ,b.SZDCXLXM as b_ZXXX_SZDCXLXM--所在地城乡类型码
      ,b.SZDJJSXM as b_ZXXX_SZDJJSXM--所在地经济属性码
      ,b.SZDMZSX as b_ZXXX_SZDMZSX--所在地民族属性
      ,b.XXXZ as b_ZXXX_XXXZ--小学学制
      ,b.XXRXNL as b_ZXXX_XXRXNL--小学入学年龄
      ,b.CZXZ as b_ZXXX_CZXZ--初中学制
      ,b.CZRXNL as b_ZXXX_CZRXNL--初中入学年龄
      ,b.GZXZ as b_ZXXX_GZXZ--高中学制
      ,b.ZJXYYM as b_ZXXX_ZJXYYM--主教学语言码
      ,b.FJXYYM as b_ZXXX_FJXYYM--辅教学语言码
      ,b.ZSBJ as b_ZXXX_ZSBJ--招生半径
      ,c.SCHOOLID as c_WZPZ_SCHOOLID--学校名
      ,c.WEBNAME as c_WZPZ_WEBNAME--网站名
      ,c.STATUID as c_WZPZ_STATUID--是否开启
      ,c.WEBURL as c_WZPZ_WEBURL--网址
      ,c.CSSID as c_WZPZ_CSSID--网站样式

FROM dbo.EDU_WZXT_MHXT_WZYS AS a LEFT OUTER JOIN
      dbo.EDU_ZXXX_01_01_ZXXX AS b ON a.SCHOOLID = b.ID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_WZXT_MHXT_WZPZ AS c ON a.WEBID = c.WEBID /*网站ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/
GO

--网站文章
CREATE VIEW [dbo].[VIEW_EDU_WZXT_MHXT_WZWZ_DISP]
AS
SELECT a.[ID]--网站文章ID
      ,a.[SCHOOLID]--学校名
      ,a.[WEBID]--网站ID
      ,a.[TYPENAME]--类型名称
      ,a.[LMID]--栏目
      ,a.[TITLE]--标题
      ,a.[PUBLISHERNAME]--发布人
      ,a.[AUTHOR]--作者
      ,a.[AUTHORDEPART]--作者部门
      ,a.[PUBLISHDATE]--发布时间
      ,a.[CONTENT]--内容
      ,a.[URL]--链接
      ,a.[IMAGEURL]--图片
      ,a.[ATTACHMENTNAME]--附件名
      ,a.[ATTACHMENT]--附件
      ,a.[CHICKNUB]--点击量
      ,a.[AUDITSTATU]--审核状态
      ,a.[AUDITOR]--审核人ID
      ,a.[AUDITORNAME]--审核人
      ,a.[AUDITTIME]--审核时间
      ,a.[REMARK]--备注
      ,a.[SUMMARY]--摘要
      ,a.[DISPLAYTYPE]--是否显示
      ,a.[OPENFLAG]--内外网
      ,a.[LLQX]--浏览权限
      ,b.XXDM as b_ZXXX_XXDM--学校代码
      ,b.XXMC as b_ZXXX_XXMC--学校名称
      ,b.XXYWMC as b_ZXXX_XXYWMC--学校英文名称
      ,b.XXDZ as b_ZXXX_XXDZ--学校地址
      ,b.XXYZBM as b_ZXXX_XXYZBM--学校邮政编码
      ,b.XZQHM as b_ZXXX_XZQHM--行政区划码
      ,b.JXNY as b_ZXXX_JXNY--建校年月
      ,b.XQR as b_ZXXX_XQR--校庆日
      ,b.XXBXLXM as b_ZXXX_XXBXLXM--学校办学类型码
      ,b.XXZGBMM as b_ZXXX_XXZGBMM--学校主管部门码
      ,b.FDDBRH as b_ZXXX_FDDBRH--法定代表人号
      ,b.FRZSH as b_ZXXX_FRZSH--法人证书号
      ,b.XZGH as b_ZXXX_XZGH--校长工号
      ,b.XZXM as b_ZXXX_XZXM--校长姓名
      ,b.DWFZRH as b_ZXXX_DWFZRH--党委负责人号
      ,b.ZZJGM as b_ZXXX_ZZJGM--组织机构码
      ,b.LXDH as b_ZXXX_LXDH--联系电话
      ,b.CZDH as b_ZXXX_CZDH--传真电话
      ,b.DZXX as b_ZXXX_DZXX--电子信箱
      ,b.ZYDZ as b_ZXXX_ZYDZ--主页地址
      ,b.LSYG as b_ZXXX_LSYG--历史沿革
      ,b.XXBBM as b_ZXXX_XXBBM--学校办别码
      ,b.SSZGDWM as b_ZXXX_SSZGDWM--所属主管单位码
      ,b.SZDCXLXM as b_ZXXX_SZDCXLXM--所在地城乡类型码
      ,b.SZDJJSXM as b_ZXXX_SZDJJSXM--所在地经济属性码
      ,b.SZDMZSX as b_ZXXX_SZDMZSX--所在地民族属性
      ,b.XXXZ as b_ZXXX_XXXZ--小学学制
      ,b.XXRXNL as b_ZXXX_XXRXNL--小学入学年龄
      ,b.CZXZ as b_ZXXX_CZXZ--初中学制
      ,b.CZRXNL as b_ZXXX_CZRXNL--初中入学年龄
      ,b.GZXZ as b_ZXXX_GZXZ--高中学制
      ,b.ZJXYYM as b_ZXXX_ZJXYYM--主教学语言码
      ,b.FJXYYM as b_ZXXX_FJXYYM--辅教学语言码
      ,b.ZSBJ as b_ZXXX_ZSBJ--招生半径
      ,c.SCHOOLID as c_WZPZ_SCHOOLID--学校名
      ,c.WEBNAME as c_WZPZ_WEBNAME--网站名
      ,c.STATUID as c_WZPZ_STATUID--是否开启
      ,c.WEBURL as c_WZPZ_WEBURL--网址
      ,c.CSSID as c_WZPZ_CSSID--网站样式
      ,d.SCHOOLID as d_WZLM_SCHOOLID--学校名
      ,d.WEBID as d_WZLM_WEBID--网站ID
      ,d.LMSHOWSTYLE as d_WZLM_LMSHOWSTYLE--栏目使用类型
      ,d.NAME as d_WZLM_NAME--栏目名称
      ,d.URL as d_WZLM_URL--栏目链接
      ,d.IMAGEURL as d_WZLM_IMAGEURL--图片链接
      ,d.DEPTH as d_WZLM_DEPTH--层级
      ,d.PID as d_WZLM_PID--父目录
      ,d.LISTSHOWSTYLE as d_WZLM_LISTSHOWSTYLE--列表显示型式
      ,d.ORDERTYPE as d_WZLM_ORDERTYPE--排序方式
      ,d.SHOWNUMBER as d_WZLM_SHOWNUMBER--显示个数
      ,d.OPENFLAG as d_WZLM_OPENFLAG--内外网
      ,d.LLQX as d_WZLM_LLQX--浏览权限

FROM dbo.EDU_WZXT_MHXT_WZWZ AS a LEFT OUTER JOIN
      dbo.EDU_ZXXX_01_01_ZXXX AS b ON a.SCHOOLID = b.ID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_WZXT_MHXT_WZPZ AS c ON a.WEBID = c.WEBID /*网站ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_WZXT_MHXT_WZLM AS d ON a.LMID = d.ID /*栏目*/ AND a.SCHOOLID = d.SCHOOLID /*学校名*/ AND a.WEBID = d.WEBID /*网站ID*/
GO

--网站配置
CREATE VIEW [dbo].[VIEW_EDU_WZXT_MHXT_WZPZ_DISP]
AS
SELECT a.[WEBID]--网站ID
      ,a.[SCHOOLID]--学校名
      ,a.[WEBNAME]--网站名
      ,a.[STATUID]--是否开启
      ,a.[WEBURL]--网址
      ,a.[CSSID]--网站样式
      ,b.SCHOOLID as b_WZPZ_SCHOOLID--学校名
      ,b.WEBNAME as b_WZPZ_WEBNAME--网站名
      ,b.STATUID as b_WZPZ_STATUID--是否开启
      ,b.WEBURL as b_WZPZ_WEBURL--网址
      ,b.CSSID as b_WZPZ_CSSID--网站样式
      ,c.XXDM as c_ZXXX_XXDM--学校代码
      ,c.XXMC as c_ZXXX_XXMC--学校名称
      ,c.XXYWMC as c_ZXXX_XXYWMC--学校英文名称
      ,c.XXDZ as c_ZXXX_XXDZ--学校地址
      ,c.XXYZBM as c_ZXXX_XXYZBM--学校邮政编码
      ,c.XZQHM as c_ZXXX_XZQHM--行政区划码
      ,c.JXNY as c_ZXXX_JXNY--建校年月
      ,c.XQR as c_ZXXX_XQR--校庆日
      ,c.XXBXLXM as c_ZXXX_XXBXLXM--学校办学类型码
      ,c.XXZGBMM as c_ZXXX_XXZGBMM--学校主管部门码
      ,c.FDDBRH as c_ZXXX_FDDBRH--法定代表人号
      ,c.FRZSH as c_ZXXX_FRZSH--法人证书号
      ,c.XZGH as c_ZXXX_XZGH--校长工号
      ,c.XZXM as c_ZXXX_XZXM--校长姓名
      ,c.DWFZRH as c_ZXXX_DWFZRH--党委负责人号
      ,c.ZZJGM as c_ZXXX_ZZJGM--组织机构码
      ,c.LXDH as c_ZXXX_LXDH--联系电话
      ,c.CZDH as c_ZXXX_CZDH--传真电话
      ,c.DZXX as c_ZXXX_DZXX--电子信箱
      ,c.ZYDZ as c_ZXXX_ZYDZ--主页地址
      ,c.LSYG as c_ZXXX_LSYG--历史沿革
      ,c.XXBBM as c_ZXXX_XXBBM--学校办别码
      ,c.SSZGDWM as c_ZXXX_SSZGDWM--所属主管单位码
      ,c.SZDCXLXM as c_ZXXX_SZDCXLXM--所在地城乡类型码
      ,c.SZDJJSXM as c_ZXXX_SZDJJSXM--所在地经济属性码
      ,c.SZDMZSX as c_ZXXX_SZDMZSX--所在地民族属性
      ,c.XXXZ as c_ZXXX_XXXZ--小学学制
      ,c.XXRXNL as c_ZXXX_XXRXNL--小学入学年龄
      ,c.CZXZ as c_ZXXX_CZXZ--初中学制
      ,c.CZRXNL as c_ZXXX_CZRXNL--初中入学年龄
      ,c.GZXZ as c_ZXXX_GZXZ--高中学制
      ,c.ZJXYYM as c_ZXXX_ZJXYYM--主教学语言码
      ,c.FJXYYM as c_ZXXX_FJXYYM--辅教学语言码
      ,c.ZSBJ as c_ZXXX_ZSBJ--招生半径
      ,d.SCHOOLID as d_WZYS_SCHOOLID--学校名
      ,d.WEBID as d_WZYS_WEBID--网站ID
      ,d.NAME as d_WZYS_NAME--样式名
      ,d.SHOWIMG as d_WZYS_SHOWIMG--效果图

FROM dbo.EDU_WZXT_MHXT_WZPZ AS a LEFT OUTER JOIN
      dbo.EDU_WZXT_MHXT_WZPZ AS b ON a.WEBID = b.WEBID /*网站ID*/ AND a.SCHOOLID = b.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_01_01_ZXXX AS c ON a.SCHOOLID = c.ID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_WZXT_MHXT_WZYS AS d ON a.CSSID = d.ID /*网站样式*/ AND a.SCHOOLID = d.SCHOOLID /*学校名*/ AND a.WEBID = d.WEBID /*网站ID*/
GO

--网站栏目（导航）
CREATE VIEW [dbo].[VIEW_EDU_WZXT_MHXT_WZLM_DISP]
AS
SELECT a.[ID]--网站栏目（导航）ID
      ,a.[SCHOOLID]--学校名
      ,a.[WEBID]--网站ID
      ,a.[LMSHOWSTYLE]--栏目使用类型
      ,a.[NAME]--栏目名称
      ,a.[URL]--栏目链接
      ,a.[IMAGEURL]--图片链接
      ,a.[DEPTH]--层级
      ,a.[PID]--父目录
      ,a.[LISTSHOWSTYLE]--列表显示型式
      ,a.[ORDERTYPE]--排序方式
      ,a.[SHOWNUMBER]--显示个数
      ,a.[OPENFLAG]--内外网
      ,a.[LLQX]--浏览权限
      ,b.XXDM as b_ZXXX_XXDM--学校代码
      ,b.XXMC as b_ZXXX_XXMC--学校名称
      ,b.XXYWMC as b_ZXXX_XXYWMC--学校英文名称
      ,b.XXDZ as b_ZXXX_XXDZ--学校地址
      ,b.XXYZBM as b_ZXXX_XXYZBM--学校邮政编码
      ,b.XZQHM as b_ZXXX_XZQHM--行政区划码
      ,b.JXNY as b_ZXXX_JXNY--建校年月
      ,b.XQR as b_ZXXX_XQR--校庆日
      ,b.XXBXLXM as b_ZXXX_XXBXLXM--学校办学类型码
      ,b.XXZGBMM as b_ZXXX_XXZGBMM--学校主管部门码
      ,b.FDDBRH as b_ZXXX_FDDBRH--法定代表人号
      ,b.FRZSH as b_ZXXX_FRZSH--法人证书号
      ,b.XZGH as b_ZXXX_XZGH--校长工号
      ,b.XZXM as b_ZXXX_XZXM--校长姓名
      ,b.DWFZRH as b_ZXXX_DWFZRH--党委负责人号
      ,b.ZZJGM as b_ZXXX_ZZJGM--组织机构码
      ,b.LXDH as b_ZXXX_LXDH--联系电话
      ,b.CZDH as b_ZXXX_CZDH--传真电话
      ,b.DZXX as b_ZXXX_DZXX--电子信箱
      ,b.ZYDZ as b_ZXXX_ZYDZ--主页地址
      ,b.LSYG as b_ZXXX_LSYG--历史沿革
      ,b.XXBBM as b_ZXXX_XXBBM--学校办别码
      ,b.SSZGDWM as b_ZXXX_SSZGDWM--所属主管单位码
      ,b.SZDCXLXM as b_ZXXX_SZDCXLXM--所在地城乡类型码
      ,b.SZDJJSXM as b_ZXXX_SZDJJSXM--所在地经济属性码
      ,b.SZDMZSX as b_ZXXX_SZDMZSX--所在地民族属性
      ,b.XXXZ as b_ZXXX_XXXZ--小学学制
      ,b.XXRXNL as b_ZXXX_XXRXNL--小学入学年龄
      ,b.CZXZ as b_ZXXX_CZXZ--初中学制
      ,b.CZRXNL as b_ZXXX_CZRXNL--初中入学年龄
      ,b.GZXZ as b_ZXXX_GZXZ--高中学制
      ,b.ZJXYYM as b_ZXXX_ZJXYYM--主教学语言码
      ,b.FJXYYM as b_ZXXX_FJXYYM--辅教学语言码
      ,b.ZSBJ as b_ZXXX_ZSBJ--招生半径
      ,c.SCHOOLID as c_WZPZ_SCHOOLID--学校名
      ,c.WEBNAME as c_WZPZ_WEBNAME--网站名
      ,c.STATUID as c_WZPZ_STATUID--是否开启
      ,c.WEBURL as c_WZPZ_WEBURL--网址
      ,c.CSSID as c_WZPZ_CSSID--网站样式
      ,d.SCHOOLID as d_WZLM_SCHOOLID--学校名
      ,d.WEBID as d_WZLM_WEBID--网站ID
      ,d.LMSHOWSTYLE as d_WZLM_LMSHOWSTYLE--栏目使用类型
      ,d.NAME as d_WZLM_NAME--栏目名称
      ,d.URL as d_WZLM_URL--栏目链接
      ,d.IMAGEURL as d_WZLM_IMAGEURL--图片链接
      ,d.DEPTH as d_WZLM_DEPTH--层级
      ,d.PID as d_WZLM_PID--父目录
      ,d.LISTSHOWSTYLE as d_WZLM_LISTSHOWSTYLE--列表显示型式
      ,d.ORDERTYPE as d_WZLM_ORDERTYPE--排序方式
      ,d.SHOWNUMBER as d_WZLM_SHOWNUMBER--显示个数
      ,d.OPENFLAG as d_WZLM_OPENFLAG--内外网
      ,d.LLQX as d_WZLM_LLQX--浏览权限

FROM dbo.EDU_WZXT_MHXT_WZLM AS a LEFT OUTER JOIN
      dbo.EDU_ZXXX_01_01_ZXXX AS b ON a.SCHOOLID = b.ID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_WZXT_MHXT_WZPZ AS c ON a.WEBID = c.WEBID /*网站ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_WZXT_MHXT_WZLM AS d ON a.PID = d.ID /*父目录*/ AND a.SCHOOLID = d.SCHOOLID /*学校名*/ AND a.WEBID = d.WEBID /*网站ID*/
GO

--网站广告
CREATE VIEW [dbo].[VIEW_EDU_WZXT_MHXT_WZGG_DISP]
AS
SELECT a.[ID]--网站广告ID
      ,a.[SCHOOLID]--学校名
      ,a.[WEBID]--网站ID
      ,a.[SHOWTYPE]--显示型式
      ,a.[ADCONTENT]--广告内容
      ,a.[GGLJ]--广告链接
      ,a.[SHOWSTATU]--是否显示
      ,b.XXDM as b_ZXXX_XXDM--学校代码
      ,b.XXMC as b_ZXXX_XXMC--学校名称
      ,b.XXYWMC as b_ZXXX_XXYWMC--学校英文名称
      ,b.XXDZ as b_ZXXX_XXDZ--学校地址
      ,b.XXYZBM as b_ZXXX_XXYZBM--学校邮政编码
      ,b.XZQHM as b_ZXXX_XZQHM--行政区划码
      ,b.JXNY as b_ZXXX_JXNY--建校年月
      ,b.XQR as b_ZXXX_XQR--校庆日
      ,b.XXBXLXM as b_ZXXX_XXBXLXM--学校办学类型码
      ,b.XXZGBMM as b_ZXXX_XXZGBMM--学校主管部门码
      ,b.FDDBRH as b_ZXXX_FDDBRH--法定代表人号
      ,b.FRZSH as b_ZXXX_FRZSH--法人证书号
      ,b.XZGH as b_ZXXX_XZGH--校长工号
      ,b.XZXM as b_ZXXX_XZXM--校长姓名
      ,b.DWFZRH as b_ZXXX_DWFZRH--党委负责人号
      ,b.ZZJGM as b_ZXXX_ZZJGM--组织机构码
      ,b.LXDH as b_ZXXX_LXDH--联系电话
      ,b.CZDH as b_ZXXX_CZDH--传真电话
      ,b.DZXX as b_ZXXX_DZXX--电子信箱
      ,b.ZYDZ as b_ZXXX_ZYDZ--主页地址
      ,b.LSYG as b_ZXXX_LSYG--历史沿革
      ,b.XXBBM as b_ZXXX_XXBBM--学校办别码
      ,b.SSZGDWM as b_ZXXX_SSZGDWM--所属主管单位码
      ,b.SZDCXLXM as b_ZXXX_SZDCXLXM--所在地城乡类型码
      ,b.SZDJJSXM as b_ZXXX_SZDJJSXM--所在地经济属性码
      ,b.SZDMZSX as b_ZXXX_SZDMZSX--所在地民族属性
      ,b.XXXZ as b_ZXXX_XXXZ--小学学制
      ,b.XXRXNL as b_ZXXX_XXRXNL--小学入学年龄
      ,b.CZXZ as b_ZXXX_CZXZ--初中学制
      ,b.CZRXNL as b_ZXXX_CZRXNL--初中入学年龄
      ,b.GZXZ as b_ZXXX_GZXZ--高中学制
      ,b.ZJXYYM as b_ZXXX_ZJXYYM--主教学语言码
      ,b.FJXYYM as b_ZXXX_FJXYYM--辅教学语言码
      ,b.ZSBJ as b_ZXXX_ZSBJ--招生半径
      ,c.SCHOOLID as c_WZPZ_SCHOOLID--学校名
      ,c.WEBNAME as c_WZPZ_WEBNAME--网站名
      ,c.STATUID as c_WZPZ_STATUID--是否开启
      ,c.WEBURL as c_WZPZ_WEBURL--网址
      ,c.CSSID as c_WZPZ_CSSID--网站样式

FROM dbo.EDU_WZXT_MHXT_WZGG AS a LEFT OUTER JOIN
      dbo.EDU_ZXXX_01_01_ZXXX AS b ON a.SCHOOLID = b.ID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_WZXT_MHXT_WZPZ AS c ON a.WEBID = c.WEBID /*网站ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/
GO

--访问履历
CREATE VIEW [dbo].[VIEW_EDU_WZXT_MHXT_FWLL_DISP]
AS
SELECT a.[ID]--访问履历ID
      ,a.[SCHOOLID]--学校名
      ,a.[WEBID]--网站ID
      ,a.[ACCESSIP]--访问IP
      ,a.[ACCESSURL]--访问链接
      ,a.[ACCESSTIME]--访问时间
      ,b.XXDM as b_ZXXX_XXDM--学校代码
      ,b.XXMC as b_ZXXX_XXMC--学校名称
      ,b.XXYWMC as b_ZXXX_XXYWMC--学校英文名称
      ,b.XXDZ as b_ZXXX_XXDZ--学校地址
      ,b.XXYZBM as b_ZXXX_XXYZBM--学校邮政编码
      ,b.XZQHM as b_ZXXX_XZQHM--行政区划码
      ,b.JXNY as b_ZXXX_JXNY--建校年月
      ,b.XQR as b_ZXXX_XQR--校庆日
      ,b.XXBXLXM as b_ZXXX_XXBXLXM--学校办学类型码
      ,b.XXZGBMM as b_ZXXX_XXZGBMM--学校主管部门码
      ,b.FDDBRH as b_ZXXX_FDDBRH--法定代表人号
      ,b.FRZSH as b_ZXXX_FRZSH--法人证书号
      ,b.XZGH as b_ZXXX_XZGH--校长工号
      ,b.XZXM as b_ZXXX_XZXM--校长姓名
      ,b.DWFZRH as b_ZXXX_DWFZRH--党委负责人号
      ,b.ZZJGM as b_ZXXX_ZZJGM--组织机构码
      ,b.LXDH as b_ZXXX_LXDH--联系电话
      ,b.CZDH as b_ZXXX_CZDH--传真电话
      ,b.DZXX as b_ZXXX_DZXX--电子信箱
      ,b.ZYDZ as b_ZXXX_ZYDZ--主页地址
      ,b.LSYG as b_ZXXX_LSYG--历史沿革
      ,b.XXBBM as b_ZXXX_XXBBM--学校办别码
      ,b.SSZGDWM as b_ZXXX_SSZGDWM--所属主管单位码
      ,b.SZDCXLXM as b_ZXXX_SZDCXLXM--所在地城乡类型码
      ,b.SZDJJSXM as b_ZXXX_SZDJJSXM--所在地经济属性码
      ,b.SZDMZSX as b_ZXXX_SZDMZSX--所在地民族属性
      ,b.XXXZ as b_ZXXX_XXXZ--小学学制
      ,b.XXRXNL as b_ZXXX_XXRXNL--小学入学年龄
      ,b.CZXZ as b_ZXXX_CZXZ--初中学制
      ,b.CZRXNL as b_ZXXX_CZRXNL--初中入学年龄
      ,b.GZXZ as b_ZXXX_GZXZ--高中学制
      ,b.ZJXYYM as b_ZXXX_ZJXYYM--主教学语言码
      ,b.FJXYYM as b_ZXXX_FJXYYM--辅教学语言码
      ,b.ZSBJ as b_ZXXX_ZSBJ--招生半径
      ,c.SCHOOLID as c_WZPZ_SCHOOLID--学校名
      ,c.WEBNAME as c_WZPZ_WEBNAME--网站名
      ,c.STATUID as c_WZPZ_STATUID--是否开启
      ,c.WEBURL as c_WZPZ_WEBURL--网址
      ,c.CSSID as c_WZPZ_CSSID--网站样式

FROM dbo.EDU_WZXT_MHXT_FWLL AS a LEFT OUTER JOIN
      dbo.EDU_ZXXX_01_01_ZXXX AS b ON a.SCHOOLID = b.ID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_WZXT_MHXT_WZPZ AS c ON a.WEBID = c.WEBID /*网站ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/
GO

--发布权限
CREATE VIEW [dbo].[VIEW_EDU_WZXT_MHXT_FBQX_DISP]
AS
SELECT a.[ID]--发布权限ID
      ,a.[SCHOOLID]--学校名
      ,a.[WEBID]--网站ID
      ,a.[LOGINNAME]--用户名
      ,a.[LMLIST]--栏目
      ,a.[LMNAMELIST]--栏目文字
      ,b.XXDM as b_ZXXX_XXDM--学校代码
      ,b.XXMC as b_ZXXX_XXMC--学校名称
      ,b.XXYWMC as b_ZXXX_XXYWMC--学校英文名称
      ,b.XXDZ as b_ZXXX_XXDZ--学校地址
      ,b.XXYZBM as b_ZXXX_XXYZBM--学校邮政编码
      ,b.XZQHM as b_ZXXX_XZQHM--行政区划码
      ,b.JXNY as b_ZXXX_JXNY--建校年月
      ,b.XQR as b_ZXXX_XQR--校庆日
      ,b.XXBXLXM as b_ZXXX_XXBXLXM--学校办学类型码
      ,b.XXZGBMM as b_ZXXX_XXZGBMM--学校主管部门码
      ,b.FDDBRH as b_ZXXX_FDDBRH--法定代表人号
      ,b.FRZSH as b_ZXXX_FRZSH--法人证书号
      ,b.XZGH as b_ZXXX_XZGH--校长工号
      ,b.XZXM as b_ZXXX_XZXM--校长姓名
      ,b.DWFZRH as b_ZXXX_DWFZRH--党委负责人号
      ,b.ZZJGM as b_ZXXX_ZZJGM--组织机构码
      ,b.LXDH as b_ZXXX_LXDH--联系电话
      ,b.CZDH as b_ZXXX_CZDH--传真电话
      ,b.DZXX as b_ZXXX_DZXX--电子信箱
      ,b.ZYDZ as b_ZXXX_ZYDZ--主页地址
      ,b.LSYG as b_ZXXX_LSYG--历史沿革
      ,b.XXBBM as b_ZXXX_XXBBM--学校办别码
      ,b.SSZGDWM as b_ZXXX_SSZGDWM--所属主管单位码
      ,b.SZDCXLXM as b_ZXXX_SZDCXLXM--所在地城乡类型码
      ,b.SZDJJSXM as b_ZXXX_SZDJJSXM--所在地经济属性码
      ,b.SZDMZSX as b_ZXXX_SZDMZSX--所在地民族属性
      ,b.XXXZ as b_ZXXX_XXXZ--小学学制
      ,b.XXRXNL as b_ZXXX_XXRXNL--小学入学年龄
      ,b.CZXZ as b_ZXXX_CZXZ--初中学制
      ,b.CZRXNL as b_ZXXX_CZRXNL--初中入学年龄
      ,b.GZXZ as b_ZXXX_GZXZ--高中学制
      ,b.ZJXYYM as b_ZXXX_ZJXYYM--主教学语言码
      ,b.FJXYYM as b_ZXXX_FJXYYM--辅教学语言码
      ,b.ZSBJ as b_ZXXX_ZSBJ--招生半径
      ,c.SCHOOLID as c_WZPZ_SCHOOLID--学校名
      ,c.WEBNAME as c_WZPZ_WEBNAME--网站名
      ,c.STATUID as c_WZPZ_STATUID--是否开启
      ,c.WEBURL as c_WZPZ_WEBURL--网址
      ,c.CSSID as c_WZPZ_CSSID--网站样式

FROM dbo.EDU_WZXT_MHXT_FBQX AS a LEFT OUTER JOIN
      dbo.EDU_ZXXX_01_01_ZXXX AS b ON a.SCHOOLID = b.ID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_WZXT_MHXT_WZPZ AS c ON a.WEBID = c.WEBID /*网站ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/
GO

--自建专业代码
CREATE VIEW [dbo].[VIEW_EDU_ZJ_ZJZY_DISP]
AS
SELECT a.[DM]--代码
      ,a.[ZYMLLB]--专业目录类别
      ,a.[MC]--名称
      ,b.MC as b_ZYML_MC--名称

FROM dbo.EDU_ZJ_ZJZY AS a LEFT OUTER JOIN
      dbo.EDU_ZJ_ZYML AS b ON a.ZYMLLB = b.DM /*专业目录类别*/
GO

--通知数据表
CREATE VIEW [dbo].[VIEW_EDU_ZXBG_10_A01_TZ_DISP]
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
      ,b.XXDM as b_ZXXX_XXDM--学校代码
      ,b.XXMC as b_ZXXX_XXMC--学校名称
      ,b.XXYWMC as b_ZXXX_XXYWMC--学校英文名称
      ,b.XXDZ as b_ZXXX_XXDZ--学校地址
      ,b.XXYZBM as b_ZXXX_XXYZBM--学校邮政编码
      ,b.XZQHM as b_ZXXX_XZQHM--行政区划码
      ,b.JXNY as b_ZXXX_JXNY--建校年月
      ,b.XQR as b_ZXXX_XQR--校庆日
      ,b.XXBXLXM as b_ZXXX_XXBXLXM--学校办学类型码
      ,b.XXZGBMM as b_ZXXX_XXZGBMM--学校主管部门码
      ,b.FDDBRH as b_ZXXX_FDDBRH--法定代表人号
      ,b.FRZSH as b_ZXXX_FRZSH--法人证书号
      ,b.XZGH as b_ZXXX_XZGH--校长工号
      ,b.XZXM as b_ZXXX_XZXM--校长姓名
      ,b.DWFZRH as b_ZXXX_DWFZRH--党委负责人号
      ,b.ZZJGM as b_ZXXX_ZZJGM--组织机构码
      ,b.LXDH as b_ZXXX_LXDH--联系电话
      ,b.CZDH as b_ZXXX_CZDH--传真电话
      ,b.DZXX as b_ZXXX_DZXX--电子信箱
      ,b.ZYDZ as b_ZXXX_ZYDZ--主页地址
      ,b.LSYG as b_ZXXX_LSYG--历史沿革
      ,b.XXBBM as b_ZXXX_XXBBM--学校办别码
      ,b.SSZGDWM as b_ZXXX_SSZGDWM--所属主管单位码
      ,b.SZDCXLXM as b_ZXXX_SZDCXLXM--所在地城乡类型码
      ,b.SZDJJSXM as b_ZXXX_SZDJJSXM--所在地经济属性码
      ,b.SZDMZSX as b_ZXXX_SZDMZSX--所在地民族属性
      ,b.XXXZ as b_ZXXX_XXXZ--小学学制
      ,b.XXRXNL as b_ZXXX_XXRXNL--小学入学年龄
      ,b.CZXZ as b_ZXXX_CZXZ--初中学制
      ,b.CZRXNL as b_ZXXX_CZRXNL--初中入学年龄
      ,b.GZXZ as b_ZXXX_GZXZ--高中学制
      ,b.ZJXYYM as b_ZXXX_ZJXYYM--主教学语言码
      ,b.FJXYYM as b_ZXXX_FJXYYM--辅教学语言码
      ,b.ZSBJ as b_ZXXX_ZSBJ--招生半径
      ,c.SCHOOLID as c_USER_SCHOOLID--学校ID
      ,c.APPID as c_USER_APPID--应用ID
      ,c.PWD as c_USER_PWD--密码
      ,c.STATUS as c_USER_STATUS--用户状态
      ,c.USERTYPE as c_USER_USERTYPE--用户类别
      ,c.USERID as c_USER_USERID--用户ID
      ,c.ROLEIDLst as c_USER_ROLEIDLst--用户角色
      ,c.XM as c_USER_XM--姓名
      ,c.XB as c_USER_XB--性别
      ,c.QQ as c_USER_QQ--QQ
      ,c.DZYJ as c_USER_DZYJ--电子邮件
      ,c.LXDH as c_USER_LXDH--联系电话
      ,c.ZJDLSJ as c_USER_ZJDLSJ--最近一次登录时间
      ,c.DLCGCS as c_USER_DLCGCS--登录成功次数
      ,c.YHCJSJ as c_USER_YHCJSJ--用户创建时间

FROM dbo.EDU_ZXBG_10_A01_TZ AS a LEFT OUTER JOIN
      dbo.EDU_ZXXX_01_01_ZXXX AS b ON a.SCHOOLID = b.ID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS c ON a.FSRID = c.LOGINNAME /*发送人ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/
GO

--通知阅读记录
CREATE VIEW [dbo].[VIEW_EDU_ZXBG_10_A02_TZYDJL_DISP]
AS
SELECT a.[ID]--通知阅读记录ID
      ,a.[SCHOOLID]--学校ID
      ,a.[TZID]--通知ID
      ,a.[BTZRID]--被通知人ID
      ,a.[YDRQ]--阅读日期
      ,a.[SFYD]--是否已阅读
      ,b.XXDM as b_ZXXX_XXDM--学校代码
      ,b.XXMC as b_ZXXX_XXMC--学校名称
      ,b.XXYWMC as b_ZXXX_XXYWMC--学校英文名称
      ,b.XXDZ as b_ZXXX_XXDZ--学校地址
      ,b.XXYZBM as b_ZXXX_XXYZBM--学校邮政编码
      ,b.XZQHM as b_ZXXX_XZQHM--行政区划码
      ,b.JXNY as b_ZXXX_JXNY--建校年月
      ,b.XQR as b_ZXXX_XQR--校庆日
      ,b.XXBXLXM as b_ZXXX_XXBXLXM--学校办学类型码
      ,b.XXZGBMM as b_ZXXX_XXZGBMM--学校主管部门码
      ,b.FDDBRH as b_ZXXX_FDDBRH--法定代表人号
      ,b.FRZSH as b_ZXXX_FRZSH--法人证书号
      ,b.XZGH as b_ZXXX_XZGH--校长工号
      ,b.XZXM as b_ZXXX_XZXM--校长姓名
      ,b.DWFZRH as b_ZXXX_DWFZRH--党委负责人号
      ,b.ZZJGM as b_ZXXX_ZZJGM--组织机构码
      ,b.LXDH as b_ZXXX_LXDH--联系电话
      ,b.CZDH as b_ZXXX_CZDH--传真电话
      ,b.DZXX as b_ZXXX_DZXX--电子信箱
      ,b.ZYDZ as b_ZXXX_ZYDZ--主页地址
      ,b.LSYG as b_ZXXX_LSYG--历史沿革
      ,b.XXBBM as b_ZXXX_XXBBM--学校办别码
      ,b.SSZGDWM as b_ZXXX_SSZGDWM--所属主管单位码
      ,b.SZDCXLXM as b_ZXXX_SZDCXLXM--所在地城乡类型码
      ,b.SZDJJSXM as b_ZXXX_SZDJJSXM--所在地经济属性码
      ,b.SZDMZSX as b_ZXXX_SZDMZSX--所在地民族属性
      ,b.XXXZ as b_ZXXX_XXXZ--小学学制
      ,b.XXRXNL as b_ZXXX_XXRXNL--小学入学年龄
      ,b.CZXZ as b_ZXXX_CZXZ--初中学制
      ,b.CZRXNL as b_ZXXX_CZRXNL--初中入学年龄
      ,b.GZXZ as b_ZXXX_GZXZ--高中学制
      ,b.ZJXYYM as b_ZXXX_ZJXYYM--主教学语言码
      ,b.FJXYYM as b_ZXXX_FJXYYM--辅教学语言码
      ,b.ZSBJ as b_ZXXX_ZSBJ--招生半径
      ,c.SCHOOLID as c_TZ_SCHOOLID--学校ID
      ,c.FSRID as c_TZ_FSRID--发送人ID
      ,c.FSRLB as c_TZ_FSRLB--发送人类别
      ,c.BT as c_TZ_BT--标题
      ,c.NR as c_TZ_NR--内容
      ,c.FJ as c_TZ_FJ--附件
      ,c.TJRQ as c_TZ_TJRQ--添加日期
      ,c.JSRS as c_TZ_JSRS--接收人数
      ,c.JSRIDLB as c_TZ_JSRIDLB--接收人ID列表
      ,c.JSRMZLB as c_TZ_JSRMZLB--接收人名字列表
      ,c.YYDRIDLB as c_TZ_YYDRIDLB--已阅读人ID列表
      ,c.YYDRMZLB as c_TZ_YYDRMZLB--已阅读人名字列表
      ,c.FSZT as c_TZ_FSZT--发送状态
      ,d.SCHOOLID as d_USER_SCHOOLID--学校ID
      ,d.APPID as d_USER_APPID--应用ID
      ,d.PWD as d_USER_PWD--密码
      ,d.STATUS as d_USER_STATUS--用户状态
      ,d.USERTYPE as d_USER_USERTYPE--用户类别
      ,d.USERID as d_USER_USERID--用户ID
      ,d.ROLEIDLst as d_USER_ROLEIDLst--用户角色
      ,d.XM as d_USER_XM--姓名
      ,d.XB as d_USER_XB--性别
      ,d.QQ as d_USER_QQ--QQ
      ,d.DZYJ as d_USER_DZYJ--电子邮件
      ,d.LXDH as d_USER_LXDH--联系电话
      ,d.ZJDLSJ as d_USER_ZJDLSJ--最近一次登录时间
      ,d.DLCGCS as d_USER_DLCGCS--登录成功次数
      ,d.YHCJSJ as d_USER_YHCJSJ--用户创建时间
      ,e.MC as e_SFBZ_MC--名称

FROM dbo.EDU_ZXBG_10_A02_TZYDJL AS a LEFT OUTER JOIN
      dbo.EDU_ZXXX_01_01_ZXXX AS b ON a.SCHOOLID = b.ID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZXBG_10_A01_TZ AS c ON a.TZID = c.ID /*通知ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.BTZRID = d.LOGINNAME /*被通知人ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS e ON a.SFYD = e.DM /*是否已阅读*/
GO

--公告数据表
CREATE VIEW [dbo].[VIEW_EDU_ZXBG_10_A03_GG_DISP]
AS
SELECT a.[ID]--公告ID
      ,a.[SCHOOLID]--学校ID
      ,a.[FBRID]--发布人ID
      ,a.[FBBM]--发布部门
      ,a.[FBSJ]--发布时间
      ,a.[BT]--公告标题
      ,a.[NR]--公告内容
      ,a.[ZT]--公告状态
      ,b.XXDM as b_ZXXX_XXDM--学校代码
      ,b.XXMC as b_ZXXX_XXMC--学校名称
      ,b.XXYWMC as b_ZXXX_XXYWMC--学校英文名称
      ,b.XXDZ as b_ZXXX_XXDZ--学校地址
      ,b.XXYZBM as b_ZXXX_XXYZBM--学校邮政编码
      ,b.XZQHM as b_ZXXX_XZQHM--行政区划码
      ,b.JXNY as b_ZXXX_JXNY--建校年月
      ,b.XQR as b_ZXXX_XQR--校庆日
      ,b.XXBXLXM as b_ZXXX_XXBXLXM--学校办学类型码
      ,b.XXZGBMM as b_ZXXX_XXZGBMM--学校主管部门码
      ,b.FDDBRH as b_ZXXX_FDDBRH--法定代表人号
      ,b.FRZSH as b_ZXXX_FRZSH--法人证书号
      ,b.XZGH as b_ZXXX_XZGH--校长工号
      ,b.XZXM as b_ZXXX_XZXM--校长姓名
      ,b.DWFZRH as b_ZXXX_DWFZRH--党委负责人号
      ,b.ZZJGM as b_ZXXX_ZZJGM--组织机构码
      ,b.LXDH as b_ZXXX_LXDH--联系电话
      ,b.CZDH as b_ZXXX_CZDH--传真电话
      ,b.DZXX as b_ZXXX_DZXX--电子信箱
      ,b.ZYDZ as b_ZXXX_ZYDZ--主页地址
      ,b.LSYG as b_ZXXX_LSYG--历史沿革
      ,b.XXBBM as b_ZXXX_XXBBM--学校办别码
      ,b.SSZGDWM as b_ZXXX_SSZGDWM--所属主管单位码
      ,b.SZDCXLXM as b_ZXXX_SZDCXLXM--所在地城乡类型码
      ,b.SZDJJSXM as b_ZXXX_SZDJJSXM--所在地经济属性码
      ,b.SZDMZSX as b_ZXXX_SZDMZSX--所在地民族属性
      ,b.XXXZ as b_ZXXX_XXXZ--小学学制
      ,b.XXRXNL as b_ZXXX_XXRXNL--小学入学年龄
      ,b.CZXZ as b_ZXXX_CZXZ--初中学制
      ,b.CZRXNL as b_ZXXX_CZRXNL--初中入学年龄
      ,b.GZXZ as b_ZXXX_GZXZ--高中学制
      ,b.ZJXYYM as b_ZXXX_ZJXYYM--主教学语言码
      ,b.FJXYYM as b_ZXXX_FJXYYM--辅教学语言码
      ,b.ZSBJ as b_ZXXX_ZSBJ--招生半径
      ,c.SCHOOLID as c_USER_SCHOOLID--学校ID
      ,c.APPID as c_USER_APPID--应用ID
      ,c.PWD as c_USER_PWD--密码
      ,c.STATUS as c_USER_STATUS--用户状态
      ,c.USERTYPE as c_USER_USERTYPE--用户类别
      ,c.USERID as c_USER_USERID--用户ID
      ,c.ROLEIDLst as c_USER_ROLEIDLst--用户角色
      ,c.XM as c_USER_XM--姓名
      ,c.XB as c_USER_XB--性别
      ,c.QQ as c_USER_QQ--QQ
      ,c.DZYJ as c_USER_DZYJ--电子邮件
      ,c.LXDH as c_USER_LXDH--联系电话
      ,c.ZJDLSJ as c_USER_ZJDLSJ--最近一次登录时间
      ,c.DLCGCS as c_USER_DLCGCS--登录成功次数
      ,c.YHCJSJ as c_USER_YHCJSJ--用户创建时间

FROM dbo.EDU_ZXBG_10_A03_GG AS a LEFT OUTER JOIN
      dbo.EDU_ZXXX_01_01_ZXXX AS b ON a.SCHOOLID = b.ID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS c ON a.FBRID = c.LOGINNAME /*发布人ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/
GO

--邮件数据表
CREATE VIEW [dbo].[VIEW_EDU_ZXBG_11_A01_YJ_DISP]
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
      ,b.XXDM as b_ZXXX_XXDM--学校代码
      ,b.XXMC as b_ZXXX_XXMC--学校名称
      ,b.XXYWMC as b_ZXXX_XXYWMC--学校英文名称
      ,b.XXDZ as b_ZXXX_XXDZ--学校地址
      ,b.XXYZBM as b_ZXXX_XXYZBM--学校邮政编码
      ,b.XZQHM as b_ZXXX_XZQHM--行政区划码
      ,b.JXNY as b_ZXXX_JXNY--建校年月
      ,b.XQR as b_ZXXX_XQR--校庆日
      ,b.XXBXLXM as b_ZXXX_XXBXLXM--学校办学类型码
      ,b.XXZGBMM as b_ZXXX_XXZGBMM--学校主管部门码
      ,b.FDDBRH as b_ZXXX_FDDBRH--法定代表人号
      ,b.FRZSH as b_ZXXX_FRZSH--法人证书号
      ,b.XZGH as b_ZXXX_XZGH--校长工号
      ,b.XZXM as b_ZXXX_XZXM--校长姓名
      ,b.DWFZRH as b_ZXXX_DWFZRH--党委负责人号
      ,b.ZZJGM as b_ZXXX_ZZJGM--组织机构码
      ,b.LXDH as b_ZXXX_LXDH--联系电话
      ,b.CZDH as b_ZXXX_CZDH--传真电话
      ,b.DZXX as b_ZXXX_DZXX--电子信箱
      ,b.ZYDZ as b_ZXXX_ZYDZ--主页地址
      ,b.LSYG as b_ZXXX_LSYG--历史沿革
      ,b.XXBBM as b_ZXXX_XXBBM--学校办别码
      ,b.SSZGDWM as b_ZXXX_SSZGDWM--所属主管单位码
      ,b.SZDCXLXM as b_ZXXX_SZDCXLXM--所在地城乡类型码
      ,b.SZDJJSXM as b_ZXXX_SZDJJSXM--所在地经济属性码
      ,b.SZDMZSX as b_ZXXX_SZDMZSX--所在地民族属性
      ,b.XXXZ as b_ZXXX_XXXZ--小学学制
      ,b.XXRXNL as b_ZXXX_XXRXNL--小学入学年龄
      ,b.CZXZ as b_ZXXX_CZXZ--初中学制
      ,b.CZRXNL as b_ZXXX_CZRXNL--初中入学年龄
      ,b.GZXZ as b_ZXXX_GZXZ--高中学制
      ,b.ZJXYYM as b_ZXXX_ZJXYYM--主教学语言码
      ,b.FJXYYM as b_ZXXX_FJXYYM--辅教学语言码
      ,b.ZSBJ as b_ZXXX_ZSBJ--招生半径
      ,c.SCHOOLID as c_USER_SCHOOLID--学校ID
      ,c.APPID as c_USER_APPID--应用ID
      ,c.PWD as c_USER_PWD--密码
      ,c.STATUS as c_USER_STATUS--用户状态
      ,c.USERTYPE as c_USER_USERTYPE--用户类别
      ,c.USERID as c_USER_USERID--用户ID
      ,c.ROLEIDLst as c_USER_ROLEIDLst--用户角色
      ,c.XM as c_USER_XM--姓名
      ,c.XB as c_USER_XB--性别
      ,c.QQ as c_USER_QQ--QQ
      ,c.DZYJ as c_USER_DZYJ--电子邮件
      ,c.LXDH as c_USER_LXDH--联系电话
      ,c.ZJDLSJ as c_USER_ZJDLSJ--最近一次登录时间
      ,c.DLCGCS as c_USER_DLCGCS--登录成功次数
      ,c.YHCJSJ as c_USER_YHCJSJ--用户创建时间
      ,d.SCHOOLID as d_USER_SCHOOLID--学校ID
      ,d.APPID as d_USER_APPID--应用ID
      ,d.PWD as d_USER_PWD--密码
      ,d.STATUS as d_USER_STATUS--用户状态
      ,d.USERTYPE as d_USER_USERTYPE--用户类别
      ,d.USERID as d_USER_USERID--用户ID
      ,d.ROLEIDLst as d_USER_ROLEIDLst--用户角色
      ,d.XM as d_USER_XM--姓名
      ,d.XB as d_USER_XB--性别
      ,d.QQ as d_USER_QQ--QQ
      ,d.DZYJ as d_USER_DZYJ--电子邮件
      ,d.LXDH as d_USER_LXDH--联系电话
      ,d.ZJDLSJ as d_USER_ZJDLSJ--最近一次登录时间
      ,d.DLCGCS as d_USER_DLCGCS--登录成功次数
      ,d.YHCJSJ as d_USER_YHCJSJ--用户创建时间
      ,e.SCHOOLID as e_USER_SCHOOLID--学校ID
      ,e.APPID as e_USER_APPID--应用ID
      ,e.PWD as e_USER_PWD--密码
      ,e.STATUS as e_USER_STATUS--用户状态
      ,e.USERTYPE as e_USER_USERTYPE--用户类别
      ,e.USERID as e_USER_USERID--用户ID
      ,e.ROLEIDLst as e_USER_ROLEIDLst--用户角色
      ,e.XM as e_USER_XM--姓名
      ,e.XB as e_USER_XB--性别
      ,e.QQ as e_USER_QQ--QQ
      ,e.DZYJ as e_USER_DZYJ--电子邮件
      ,e.LXDH as e_USER_LXDH--联系电话
      ,e.ZJDLSJ as e_USER_ZJDLSJ--最近一次登录时间
      ,e.DLCGCS as e_USER_DLCGCS--登录成功次数
      ,e.YHCJSJ as e_USER_YHCJSJ--用户创建时间
      ,f.MC as f_SFBZ_MC--名称

FROM dbo.EDU_ZXBG_11_A01_YJ AS a LEFT OUTER JOIN
      dbo.EDU_ZXXX_01_01_ZXXX AS b ON a.SCHOOLID = b.ID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS c ON a.YYZID = c.LOGINNAME /*拥有者ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.FSRID = d.LOGINNAME /*发送人ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS e ON a.JSRID = e.LOGINNAME /*接收人ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS f ON a.SFYD = f.DM /*是否已阅读*/
GO

--文件基本数据类表
CREATE VIEW [dbo].[VIEW_EDU_ZXBG_01_01_WJJBSJ_DISP]
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
      ,b.XXDM as b_ZXXX_XXDM--学校代码
      ,b.XXMC as b_ZXXX_XXMC--学校名称
      ,b.XXYWMC as b_ZXXX_XXYWMC--学校英文名称
      ,b.XXDZ as b_ZXXX_XXDZ--学校地址
      ,b.XXYZBM as b_ZXXX_XXYZBM--学校邮政编码
      ,b.XZQHM as b_ZXXX_XZQHM--行政区划码
      ,b.JXNY as b_ZXXX_JXNY--建校年月
      ,b.XQR as b_ZXXX_XQR--校庆日
      ,b.XXBXLXM as b_ZXXX_XXBXLXM--学校办学类型码
      ,b.XXZGBMM as b_ZXXX_XXZGBMM--学校主管部门码
      ,b.FDDBRH as b_ZXXX_FDDBRH--法定代表人号
      ,b.FRZSH as b_ZXXX_FRZSH--法人证书号
      ,b.XZGH as b_ZXXX_XZGH--校长工号
      ,b.XZXM as b_ZXXX_XZXM--校长姓名
      ,b.DWFZRH as b_ZXXX_DWFZRH--党委负责人号
      ,b.ZZJGM as b_ZXXX_ZZJGM--组织机构码
      ,b.LXDH as b_ZXXX_LXDH--联系电话
      ,b.CZDH as b_ZXXX_CZDH--传真电话
      ,b.DZXX as b_ZXXX_DZXX--电子信箱
      ,b.ZYDZ as b_ZXXX_ZYDZ--主页地址
      ,b.LSYG as b_ZXXX_LSYG--历史沿革
      ,b.XXBBM as b_ZXXX_XXBBM--学校办别码
      ,b.SSZGDWM as b_ZXXX_SSZGDWM--所属主管单位码
      ,b.SZDCXLXM as b_ZXXX_SZDCXLXM--所在地城乡类型码
      ,b.SZDJJSXM as b_ZXXX_SZDJJSXM--所在地经济属性码
      ,b.SZDMZSX as b_ZXXX_SZDMZSX--所在地民族属性
      ,b.XXXZ as b_ZXXX_XXXZ--小学学制
      ,b.XXRXNL as b_ZXXX_XXRXNL--小学入学年龄
      ,b.CZXZ as b_ZXXX_CZXZ--初中学制
      ,b.CZRXNL as b_ZXXX_CZRXNL--初中入学年龄
      ,b.GZXZ as b_ZXXX_GZXZ--高中学制
      ,b.ZJXYYM as b_ZXXX_ZJXYYM--主教学语言码
      ,b.FJXYYM as b_ZXXX_FJXYYM--辅教学语言码
      ,b.ZSBJ as b_ZXXX_ZSBJ--招生半径
      ,c.HYPYDM as c_WXBMZJ_HYPYDM--汉语拼音代码
      ,c.HZDM as c_WXBMZJ_HZDM--汉字代码
      ,c.MC as c_WXBMZJ_MC--名称
      ,d.MC as d_JJCD_MC--名称
      ,e.MC as e_WJFL_MC--名称
      ,e.SM as e_WJFL_SM--说明

FROM dbo.EDU_ZXBG_01_01_WJJBSJ AS a LEFT OUTER JOIN
      dbo.EDU_ZXXX_01_01_ZXXX AS b ON a.SCHOOLID = b.ID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_GB_WXBMZJ AS c ON a.MJM = c.DM /*密级码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JJCD AS d ON a.JJCDM = d.DM /*紧急程度码*/ LEFT OUTER JOIN
      dbo.EDU_JY_WJFL AS e ON a.WJFLM = e.DM /*文件分类码*/
GO

--收文处理子类表
CREATE VIEW [dbo].[VIEW_EDU_ZXBG_02_01_SWCL_DISP]
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
      ,b.XXDM as b_ZXXX_XXDM--学校代码
      ,b.XXMC as b_ZXXX_XXMC--学校名称
      ,b.XXYWMC as b_ZXXX_XXYWMC--学校英文名称
      ,b.XXDZ as b_ZXXX_XXDZ--学校地址
      ,b.XXYZBM as b_ZXXX_XXYZBM--学校邮政编码
      ,b.XZQHM as b_ZXXX_XZQHM--行政区划码
      ,b.JXNY as b_ZXXX_JXNY--建校年月
      ,b.XQR as b_ZXXX_XQR--校庆日
      ,b.XXBXLXM as b_ZXXX_XXBXLXM--学校办学类型码
      ,b.XXZGBMM as b_ZXXX_XXZGBMM--学校主管部门码
      ,b.FDDBRH as b_ZXXX_FDDBRH--法定代表人号
      ,b.FRZSH as b_ZXXX_FRZSH--法人证书号
      ,b.XZGH as b_ZXXX_XZGH--校长工号
      ,b.XZXM as b_ZXXX_XZXM--校长姓名
      ,b.DWFZRH as b_ZXXX_DWFZRH--党委负责人号
      ,b.ZZJGM as b_ZXXX_ZZJGM--组织机构码
      ,b.LXDH as b_ZXXX_LXDH--联系电话
      ,b.CZDH as b_ZXXX_CZDH--传真电话
      ,b.DZXX as b_ZXXX_DZXX--电子信箱
      ,b.ZYDZ as b_ZXXX_ZYDZ--主页地址
      ,b.LSYG as b_ZXXX_LSYG--历史沿革
      ,b.XXBBM as b_ZXXX_XXBBM--学校办别码
      ,b.SSZGDWM as b_ZXXX_SSZGDWM--所属主管单位码
      ,b.SZDCXLXM as b_ZXXX_SZDCXLXM--所在地城乡类型码
      ,b.SZDJJSXM as b_ZXXX_SZDJJSXM--所在地经济属性码
      ,b.SZDMZSX as b_ZXXX_SZDMZSX--所在地民族属性
      ,b.XXXZ as b_ZXXX_XXXZ--小学学制
      ,b.XXRXNL as b_ZXXX_XXRXNL--小学入学年龄
      ,b.CZXZ as b_ZXXX_CZXZ--初中学制
      ,b.CZRXNL as b_ZXXX_CZRXNL--初中入学年龄
      ,b.GZXZ as b_ZXXX_GZXZ--高中学制
      ,b.ZJXYYM as b_ZXXX_ZJXYYM--主教学语言码
      ,b.FJXYYM as b_ZXXX_FJXYYM--辅教学语言码
      ,b.ZSBJ as b_ZXXX_ZSBJ--招生半径
      ,c.SCHOOLID as c_WJJBSJ_SCHOOLID--学校名
      ,c.WJBH as c_WJJBSJ_WJBH--文件编号
      ,c.WJWH as c_WJJBSJ_WJWH--文件文号
      ,c.BT as c_WJJBSJ_BT--标题
      ,c.ZTC as c_WJJBSJ_ZTC--主题词
      ,c.MJM as c_WJJBSJ_MJM--密级码
      ,cb.HYPYDM as c_WJJBSJ_MJM_HYPYDM--汉语拼音代码
      ,cb.HZDM as c_WJJBSJ_MJM_HZDM--汉字代码
      ,cb.MC as c_WJJBSJ_MJM_MC--名称
      ,c.JJCDM as c_WJJBSJ_JJCDM--紧急程度码
      ,cc.MC as c_WJJBSJ_JJCDM_MC--名称
      ,c.YS as c_WJJBSJ_YS--页数
      ,c.WJFLM as c_WJJBSJ_WJFLM--文件分类码
      ,cd.MC as c_WJJBSJ_WJFLM_MC--名称
      ,cd.SM as c_WJJBSJ_WJFLM_SM--说明
      ,c.ZW as c_WJJBSJ_ZW--正文
      ,c.FJ as c_WJJBSJ_FJ--附件
      ,c.FWRQ as c_WJJBSJ_FWRQ--发文日期
      ,c.CSDW as c_WJJBSJ_CSDW--抄送单位
      ,d.SCHOOLID as d_JZGJBSJ_SCHOOLID--学校名
      ,d.GH as d_JZGJBSJ_GH--工号
      ,d.XM as d_JZGJBSJ_XM--姓名
      ,d.YWXM as d_JZGJBSJ_YWXM--英文姓名
      ,d.XMPY as d_JZGJBSJ_XMPY--姓名拼音
      ,d.CYM as d_JZGJBSJ_CYM--曾用名
      ,d.XBM as d_JZGJBSJ_XBM--性别码
      ,db.MC as d_JZGJBSJ_XBM_MC--名称
      ,d.CSRQ as d_JZGJBSJ_CSRQ--出生日期
      ,d.CSDM as d_JZGJBSJ_CSDM--出生地码
      ,dc.MC as d_JZGJBSJ_CSDM_MC--名称
      ,d.JG as d_JZGJBSJ_JG--籍贯
      ,d.MZM as d_JZGJBSJ_MZM--民族码
      ,dd.MZMC as d_JZGJBSJ_MZM_MZMC--民族名称
      ,dd.ZMDM as d_JZGJBSJ_MZM_ZMDM--字母代码
      ,d.GJDQM as d_JZGJBSJ_GJDQM--国籍/地区码
      ,de.GJDQMCJC as d_JZGJBSJ_GJDQM_GJDQMCJC--国家/地区名称简称
      ,de.EZMDM as d_JZGJBSJ_GJDQM_EZMDM--二字母代码
      ,de.SZMDM as d_JZGJBSJ_GJDQM_SZMDM--三字母代码
      ,d.SFZJLXM as d_JZGJBSJ_SFZJLXM--身份证件类型码
      ,df.MC as d_JZGJBSJ_SFZJLXM_MC--名称
      ,d.SFZJH as d_JZGJBSJ_SFZJH--身份证件号
      ,d.HYZKM as d_JZGJBSJ_HYZKM--婚姻状况码
      ,d.GATQWM as d_JZGJBSJ_GATQWM--港澳台侨外码
      ,dg.MC as d_JZGJBSJ_GATQWM_MC--名称
      ,dg.SM as d_JZGJBSJ_GATQWM_SM--说明
      ,d.ZZMMM as d_JZGJBSJ_ZZMMM--政治面貌码
      ,dh.MC as d_JZGJBSJ_ZZMMM_MC--名称
      ,dh.JC as d_JZGJBSJ_ZZMMM_JC--简称
      ,d.JKZKM as d_JZGJBSJ_JKZKM--健康状况码
      ,di.MC as d_JZGJBSJ_JKZKM_MC--名称
      ,di.SM as d_JZGJBSJ_JKZKM_SM--说明
      ,d.XYZJM as d_JZGJBSJ_XYZJM--信仰宗教码
      ,dj.MC as d_JZGJBSJ_XYZJM_MC--名称
      ,d.XXM as d_JZGJBSJ_XXM--血型码
      ,dk.MC as d_JZGJBSJ_XXM_MC--名称
      ,dk.JC as d_JZGJBSJ_XXM_JC--简称
      ,d.ZP as d_JZGJBSJ_ZP--照片
      ,d.SFZJYXQ as d_JZGJBSJ_SFZJYXQ--身份证件有效期
      ,d.JGH as d_JZGJBSJ_JGH--机构号
      ,d.JTZZ as d_JZGJBSJ_JTZZ--家庭住址
      ,d.XZZ as d_JZGJBSJ_XZZ--现住址
      ,d.HKSZD as d_JZGJBSJ_HKSZD--户口所在地
      ,d.HKXZM as d_JZGJBSJ_HKXZM--户口性质码
      ,d.XLM as d_JZGJBSJ_XLM--学历码
      ,d.GZNY as d_JZGJBSJ_GZNY--参加工作年月
      ,d.LXNY as d_JZGJBSJ_LXNY--来校年月
      ,d.CJNY as d_JZGJBSJ_CJNY--从教年月
      ,d.BZLBM as d_JZGJBSJ_BZLBM--编制类别码
      ,d.DABH as d_JZGJBSJ_DABH--档案编号
      ,d.DAWB as d_JZGJBSJ_DAWB--档案文本
      ,d.TXDZ as d_JZGJBSJ_TXDZ--通信地址
      ,d.LXDH as d_JZGJBSJ_LXDH--联系电话
      ,d.YZBM as d_JZGJBSJ_YZBM--邮政编码
      ,d.DZXX as d_JZGJBSJ_DZXX--电子信箱
      ,d.ZYDZ as d_JZGJBSJ_ZYDZ--主页地址
      ,d.TC as d_JZGJBSJ_TC--特长
      ,d.GWZYM as d_JZGJBSJ_GWZYM--岗位职业码
      ,d.ZYRKXD as d_JZGJBSJ_ZYRKXD--主要任课学段
      ,e.SCHOOLID as e_JZGJBSJ_SCHOOLID--学校名
      ,e.GH as e_JZGJBSJ_GH--工号
      ,e.XM as e_JZGJBSJ_XM--姓名
      ,e.YWXM as e_JZGJBSJ_YWXM--英文姓名
      ,e.XMPY as e_JZGJBSJ_XMPY--姓名拼音
      ,e.CYM as e_JZGJBSJ_CYM--曾用名
      ,e.XBM as e_JZGJBSJ_XBM--性别码
      ,eb.MC as e_JZGJBSJ_XBM_MC--名称
      ,e.CSRQ as e_JZGJBSJ_CSRQ--出生日期
      ,e.CSDM as e_JZGJBSJ_CSDM--出生地码
      ,ec.MC as e_JZGJBSJ_CSDM_MC--名称
      ,e.JG as e_JZGJBSJ_JG--籍贯
      ,e.MZM as e_JZGJBSJ_MZM--民族码
      ,ed.MZMC as e_JZGJBSJ_MZM_MZMC--民族名称
      ,ed.ZMDM as e_JZGJBSJ_MZM_ZMDM--字母代码
      ,e.GJDQM as e_JZGJBSJ_GJDQM--国籍/地区码
      ,ee.GJDQMCJC as e_JZGJBSJ_GJDQM_GJDQMCJC--国家/地区名称简称
      ,ee.EZMDM as e_JZGJBSJ_GJDQM_EZMDM--二字母代码
      ,ee.SZMDM as e_JZGJBSJ_GJDQM_SZMDM--三字母代码
      ,e.SFZJLXM as e_JZGJBSJ_SFZJLXM--身份证件类型码
      ,ef.MC as e_JZGJBSJ_SFZJLXM_MC--名称
      ,e.SFZJH as e_JZGJBSJ_SFZJH--身份证件号
      ,e.HYZKM as e_JZGJBSJ_HYZKM--婚姻状况码
      ,e.GATQWM as e_JZGJBSJ_GATQWM--港澳台侨外码
      ,eg.MC as e_JZGJBSJ_GATQWM_MC--名称
      ,eg.SM as e_JZGJBSJ_GATQWM_SM--说明
      ,e.ZZMMM as e_JZGJBSJ_ZZMMM--政治面貌码
      ,eh.MC as e_JZGJBSJ_ZZMMM_MC--名称
      ,eh.JC as e_JZGJBSJ_ZZMMM_JC--简称
      ,e.JKZKM as e_JZGJBSJ_JKZKM--健康状况码
      ,ei.MC as e_JZGJBSJ_JKZKM_MC--名称
      ,ei.SM as e_JZGJBSJ_JKZKM_SM--说明
      ,e.XYZJM as e_JZGJBSJ_XYZJM--信仰宗教码
      ,ej.MC as e_JZGJBSJ_XYZJM_MC--名称
      ,e.XXM as e_JZGJBSJ_XXM--血型码
      ,ek.MC as e_JZGJBSJ_XXM_MC--名称
      ,ek.JC as e_JZGJBSJ_XXM_JC--简称
      ,e.ZP as e_JZGJBSJ_ZP--照片
      ,e.SFZJYXQ as e_JZGJBSJ_SFZJYXQ--身份证件有效期
      ,e.JGH as e_JZGJBSJ_JGH--机构号
      ,e.JTZZ as e_JZGJBSJ_JTZZ--家庭住址
      ,e.XZZ as e_JZGJBSJ_XZZ--现住址
      ,e.HKSZD as e_JZGJBSJ_HKSZD--户口所在地
      ,e.HKXZM as e_JZGJBSJ_HKXZM--户口性质码
      ,e.XLM as e_JZGJBSJ_XLM--学历码
      ,e.GZNY as e_JZGJBSJ_GZNY--参加工作年月
      ,e.LXNY as e_JZGJBSJ_LXNY--来校年月
      ,e.CJNY as e_JZGJBSJ_CJNY--从教年月
      ,e.BZLBM as e_JZGJBSJ_BZLBM--编制类别码
      ,e.DABH as e_JZGJBSJ_DABH--档案编号
      ,e.DAWB as e_JZGJBSJ_DAWB--档案文本
      ,e.TXDZ as e_JZGJBSJ_TXDZ--通信地址
      ,e.LXDH as e_JZGJBSJ_LXDH--联系电话
      ,e.YZBM as e_JZGJBSJ_YZBM--邮政编码
      ,e.DZXX as e_JZGJBSJ_DZXX--电子信箱
      ,e.ZYDZ as e_JZGJBSJ_ZYDZ--主页地址
      ,e.TC as e_JZGJBSJ_TC--特长
      ,e.GWZYM as e_JZGJBSJ_GWZYM--岗位职业码
      ,e.ZYRKXD as e_JZGJBSJ_ZYRKXD--主要任课学段
      ,f.SCHOOLID as f_JZGJBSJ_SCHOOLID--学校名
      ,f.GH as f_JZGJBSJ_GH--工号
      ,f.XM as f_JZGJBSJ_XM--姓名
      ,f.YWXM as f_JZGJBSJ_YWXM--英文姓名
      ,f.XMPY as f_JZGJBSJ_XMPY--姓名拼音
      ,f.CYM as f_JZGJBSJ_CYM--曾用名
      ,f.XBM as f_JZGJBSJ_XBM--性别码
      ,fb.MC as f_JZGJBSJ_XBM_MC--名称
      ,f.CSRQ as f_JZGJBSJ_CSRQ--出生日期
      ,f.CSDM as f_JZGJBSJ_CSDM--出生地码
      ,fc.MC as f_JZGJBSJ_CSDM_MC--名称
      ,f.JG as f_JZGJBSJ_JG--籍贯
      ,f.MZM as f_JZGJBSJ_MZM--民族码
      ,fd.MZMC as f_JZGJBSJ_MZM_MZMC--民族名称
      ,fd.ZMDM as f_JZGJBSJ_MZM_ZMDM--字母代码
      ,f.GJDQM as f_JZGJBSJ_GJDQM--国籍/地区码
      ,fe.GJDQMCJC as f_JZGJBSJ_GJDQM_GJDQMCJC--国家/地区名称简称
      ,fe.EZMDM as f_JZGJBSJ_GJDQM_EZMDM--二字母代码
      ,fe.SZMDM as f_JZGJBSJ_GJDQM_SZMDM--三字母代码
      ,f.SFZJLXM as f_JZGJBSJ_SFZJLXM--身份证件类型码
      ,ff.MC as f_JZGJBSJ_SFZJLXM_MC--名称
      ,f.SFZJH as f_JZGJBSJ_SFZJH--身份证件号
      ,f.HYZKM as f_JZGJBSJ_HYZKM--婚姻状况码
      ,f.GATQWM as f_JZGJBSJ_GATQWM--港澳台侨外码
      ,fg.MC as f_JZGJBSJ_GATQWM_MC--名称
      ,fg.SM as f_JZGJBSJ_GATQWM_SM--说明
      ,f.ZZMMM as f_JZGJBSJ_ZZMMM--政治面貌码
      ,fh.MC as f_JZGJBSJ_ZZMMM_MC--名称
      ,fh.JC as f_JZGJBSJ_ZZMMM_JC--简称
      ,f.JKZKM as f_JZGJBSJ_JKZKM--健康状况码
      ,fi.MC as f_JZGJBSJ_JKZKM_MC--名称
      ,fi.SM as f_JZGJBSJ_JKZKM_SM--说明
      ,f.XYZJM as f_JZGJBSJ_XYZJM--信仰宗教码
      ,fj.MC as f_JZGJBSJ_XYZJM_MC--名称
      ,f.XXM as f_JZGJBSJ_XXM--血型码
      ,fk.MC as f_JZGJBSJ_XXM_MC--名称
      ,fk.JC as f_JZGJBSJ_XXM_JC--简称
      ,f.ZP as f_JZGJBSJ_ZP--照片
      ,f.SFZJYXQ as f_JZGJBSJ_SFZJYXQ--身份证件有效期
      ,f.JGH as f_JZGJBSJ_JGH--机构号
      ,f.JTZZ as f_JZGJBSJ_JTZZ--家庭住址
      ,f.XZZ as f_JZGJBSJ_XZZ--现住址
      ,f.HKSZD as f_JZGJBSJ_HKSZD--户口所在地
      ,f.HKXZM as f_JZGJBSJ_HKXZM--户口性质码
      ,f.XLM as f_JZGJBSJ_XLM--学历码
      ,f.GZNY as f_JZGJBSJ_GZNY--参加工作年月
      ,f.LXNY as f_JZGJBSJ_LXNY--来校年月
      ,f.CJNY as f_JZGJBSJ_CJNY--从教年月
      ,f.BZLBM as f_JZGJBSJ_BZLBM--编制类别码
      ,f.DABH as f_JZGJBSJ_DABH--档案编号
      ,f.DAWB as f_JZGJBSJ_DAWB--档案文本
      ,f.TXDZ as f_JZGJBSJ_TXDZ--通信地址
      ,f.LXDH as f_JZGJBSJ_LXDH--联系电话
      ,f.YZBM as f_JZGJBSJ_YZBM--邮政编码
      ,f.DZXX as f_JZGJBSJ_DZXX--电子信箱
      ,f.ZYDZ as f_JZGJBSJ_ZYDZ--主页地址
      ,f.TC as f_JZGJBSJ_TC--特长
      ,f.GWZYM as f_JZGJBSJ_GWZYM--岗位职业码
      ,f.ZYRKXD as f_JZGJBSJ_ZYRKXD--主要任课学段

FROM dbo.EDU_ZXBG_02_01_SWCL AS a LEFT OUTER JOIN
      dbo.EDU_ZXXX_01_01_ZXXX AS b ON a.SCHOOLID = b.ID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZXBG_01_01_WJJBSJ AS c ON a.WJID = c.ID /*文件ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZXJZ_01_01_JZGJBSJ AS d ON a.QSRID = d.ID /*签收人ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZXJZ_01_01_JZGJBSJ AS e ON a.CFRID = e.ID /*拆封人ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZXJZ_01_01_JZGJBSJ AS f ON a.DJRID = f.ID /*登记人ID*/ AND a.SCHOOLID = f.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_GB_WXBMZJ AS cb ON c.MJM = cb.DM /*密级码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JJCD AS cc ON c.JJCDM = cc.DM /*紧急程度码*/ LEFT OUTER JOIN
      dbo.EDU_JY_WJFL AS cd ON c.WJFLM = cd.DM /*文件分类码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS db ON d.XBM = db.DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS dc ON d.CSDM = dc.DM /*出生地码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS dd ON d.MZM = dd.DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS de ON d.GJDQM = de.DM /*国籍/地区码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS df ON d.SFZJLXM = df.DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS dg ON d.GATQWM = dg.DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS dh ON d.ZZMMM = dh.DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS di ON d.JKZKM = di.DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS dj ON d.XYZJM = dj.DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS dk ON d.XXM = dk.DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS eb ON e.XBM = eb.DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS ec ON e.CSDM = ec.DM /*出生地码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS ed ON e.MZM = ed.DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS ee ON e.GJDQM = ee.DM /*国籍/地区码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS ef ON e.SFZJLXM = ef.DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS eg ON e.GATQWM = eg.DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS eh ON e.ZZMMM = eh.DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS ei ON e.JKZKM = ei.DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS ej ON e.XYZJM = ej.DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS ek ON e.XXM = ek.DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS fb ON f.XBM = fb.DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS fc ON f.CSDM = fc.DM /*出生地码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS fd ON f.MZM = fd.DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS fe ON f.GJDQM = fe.DM /*国籍/地区码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS ff ON f.SFZJLXM = ff.DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS fg ON f.GATQWM = fg.DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS fh ON f.ZZMMM = fh.DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS fi ON f.JKZKM = fi.DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS fj ON f.XYZJM = fj.DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS fk ON f.XXM = fk.DM /*血型码*/
GO

--文件阅办子类表
CREATE VIEW [dbo].[VIEW_EDU_ZXBG_02_02_WJYB_DISP]
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
      ,b.XXDM as b_ZXXX_XXDM--学校代码
      ,b.XXMC as b_ZXXX_XXMC--学校名称
      ,b.XXYWMC as b_ZXXX_XXYWMC--学校英文名称
      ,b.XXDZ as b_ZXXX_XXDZ--学校地址
      ,b.XXYZBM as b_ZXXX_XXYZBM--学校邮政编码
      ,b.XZQHM as b_ZXXX_XZQHM--行政区划码
      ,b.JXNY as b_ZXXX_JXNY--建校年月
      ,b.XQR as b_ZXXX_XQR--校庆日
      ,b.XXBXLXM as b_ZXXX_XXBXLXM--学校办学类型码
      ,b.XXZGBMM as b_ZXXX_XXZGBMM--学校主管部门码
      ,b.FDDBRH as b_ZXXX_FDDBRH--法定代表人号
      ,b.FRZSH as b_ZXXX_FRZSH--法人证书号
      ,b.XZGH as b_ZXXX_XZGH--校长工号
      ,b.XZXM as b_ZXXX_XZXM--校长姓名
      ,b.DWFZRH as b_ZXXX_DWFZRH--党委负责人号
      ,b.ZZJGM as b_ZXXX_ZZJGM--组织机构码
      ,b.LXDH as b_ZXXX_LXDH--联系电话
      ,b.CZDH as b_ZXXX_CZDH--传真电话
      ,b.DZXX as b_ZXXX_DZXX--电子信箱
      ,b.ZYDZ as b_ZXXX_ZYDZ--主页地址
      ,b.LSYG as b_ZXXX_LSYG--历史沿革
      ,b.XXBBM as b_ZXXX_XXBBM--学校办别码
      ,b.SSZGDWM as b_ZXXX_SSZGDWM--所属主管单位码
      ,b.SZDCXLXM as b_ZXXX_SZDCXLXM--所在地城乡类型码
      ,b.SZDJJSXM as b_ZXXX_SZDJJSXM--所在地经济属性码
      ,b.SZDMZSX as b_ZXXX_SZDMZSX--所在地民族属性
      ,b.XXXZ as b_ZXXX_XXXZ--小学学制
      ,b.XXRXNL as b_ZXXX_XXRXNL--小学入学年龄
      ,b.CZXZ as b_ZXXX_CZXZ--初中学制
      ,b.CZRXNL as b_ZXXX_CZRXNL--初中入学年龄
      ,b.GZXZ as b_ZXXX_GZXZ--高中学制
      ,b.ZJXYYM as b_ZXXX_ZJXYYM--主教学语言码
      ,b.FJXYYM as b_ZXXX_FJXYYM--辅教学语言码
      ,b.ZSBJ as b_ZXXX_ZSBJ--招生半径
      ,c.SCHOOLID as c_WJJBSJ_SCHOOLID--学校名
      ,c.WJBH as c_WJJBSJ_WJBH--文件编号
      ,c.WJWH as c_WJJBSJ_WJWH--文件文号
      ,c.BT as c_WJJBSJ_BT--标题
      ,c.ZTC as c_WJJBSJ_ZTC--主题词
      ,c.MJM as c_WJJBSJ_MJM--密级码
      ,cb.HYPYDM as c_WJJBSJ_MJM_HYPYDM--汉语拼音代码
      ,cb.HZDM as c_WJJBSJ_MJM_HZDM--汉字代码
      ,cb.MC as c_WJJBSJ_MJM_MC--名称
      ,c.JJCDM as c_WJJBSJ_JJCDM--紧急程度码
      ,cc.MC as c_WJJBSJ_JJCDM_MC--名称
      ,c.YS as c_WJJBSJ_YS--页数
      ,c.WJFLM as c_WJJBSJ_WJFLM--文件分类码
      ,cd.MC as c_WJJBSJ_WJFLM_MC--名称
      ,cd.SM as c_WJJBSJ_WJFLM_SM--说明
      ,c.ZW as c_WJJBSJ_ZW--正文
      ,c.FJ as c_WJJBSJ_FJ--附件
      ,c.FWRQ as c_WJJBSJ_FWRQ--发文日期
      ,c.CSDW as c_WJJBSJ_CSDW--抄送单位
      ,d.SCHOOLID as d_JZGJBSJ_SCHOOLID--学校名
      ,d.GH as d_JZGJBSJ_GH--工号
      ,d.XM as d_JZGJBSJ_XM--姓名
      ,d.YWXM as d_JZGJBSJ_YWXM--英文姓名
      ,d.XMPY as d_JZGJBSJ_XMPY--姓名拼音
      ,d.CYM as d_JZGJBSJ_CYM--曾用名
      ,d.XBM as d_JZGJBSJ_XBM--性别码
      ,db.MC as d_JZGJBSJ_XBM_MC--名称
      ,d.CSRQ as d_JZGJBSJ_CSRQ--出生日期
      ,d.CSDM as d_JZGJBSJ_CSDM--出生地码
      ,dc.MC as d_JZGJBSJ_CSDM_MC--名称
      ,d.JG as d_JZGJBSJ_JG--籍贯
      ,d.MZM as d_JZGJBSJ_MZM--民族码
      ,dd.MZMC as d_JZGJBSJ_MZM_MZMC--民族名称
      ,dd.ZMDM as d_JZGJBSJ_MZM_ZMDM--字母代码
      ,d.GJDQM as d_JZGJBSJ_GJDQM--国籍/地区码
      ,de.GJDQMCJC as d_JZGJBSJ_GJDQM_GJDQMCJC--国家/地区名称简称
      ,de.EZMDM as d_JZGJBSJ_GJDQM_EZMDM--二字母代码
      ,de.SZMDM as d_JZGJBSJ_GJDQM_SZMDM--三字母代码
      ,d.SFZJLXM as d_JZGJBSJ_SFZJLXM--身份证件类型码
      ,df.MC as d_JZGJBSJ_SFZJLXM_MC--名称
      ,d.SFZJH as d_JZGJBSJ_SFZJH--身份证件号
      ,d.HYZKM as d_JZGJBSJ_HYZKM--婚姻状况码
      ,d.GATQWM as d_JZGJBSJ_GATQWM--港澳台侨外码
      ,dg.MC as d_JZGJBSJ_GATQWM_MC--名称
      ,dg.SM as d_JZGJBSJ_GATQWM_SM--说明
      ,d.ZZMMM as d_JZGJBSJ_ZZMMM--政治面貌码
      ,dh.MC as d_JZGJBSJ_ZZMMM_MC--名称
      ,dh.JC as d_JZGJBSJ_ZZMMM_JC--简称
      ,d.JKZKM as d_JZGJBSJ_JKZKM--健康状况码
      ,di.MC as d_JZGJBSJ_JKZKM_MC--名称
      ,di.SM as d_JZGJBSJ_JKZKM_SM--说明
      ,d.XYZJM as d_JZGJBSJ_XYZJM--信仰宗教码
      ,dj.MC as d_JZGJBSJ_XYZJM_MC--名称
      ,d.XXM as d_JZGJBSJ_XXM--血型码
      ,dk.MC as d_JZGJBSJ_XXM_MC--名称
      ,dk.JC as d_JZGJBSJ_XXM_JC--简称
      ,d.ZP as d_JZGJBSJ_ZP--照片
      ,d.SFZJYXQ as d_JZGJBSJ_SFZJYXQ--身份证件有效期
      ,d.JGH as d_JZGJBSJ_JGH--机构号
      ,d.JTZZ as d_JZGJBSJ_JTZZ--家庭住址
      ,d.XZZ as d_JZGJBSJ_XZZ--现住址
      ,d.HKSZD as d_JZGJBSJ_HKSZD--户口所在地
      ,d.HKXZM as d_JZGJBSJ_HKXZM--户口性质码
      ,d.XLM as d_JZGJBSJ_XLM--学历码
      ,d.GZNY as d_JZGJBSJ_GZNY--参加工作年月
      ,d.LXNY as d_JZGJBSJ_LXNY--来校年月
      ,d.CJNY as d_JZGJBSJ_CJNY--从教年月
      ,d.BZLBM as d_JZGJBSJ_BZLBM--编制类别码
      ,d.DABH as d_JZGJBSJ_DABH--档案编号
      ,d.DAWB as d_JZGJBSJ_DAWB--档案文本
      ,d.TXDZ as d_JZGJBSJ_TXDZ--通信地址
      ,d.LXDH as d_JZGJBSJ_LXDH--联系电话
      ,d.YZBM as d_JZGJBSJ_YZBM--邮政编码
      ,d.DZXX as d_JZGJBSJ_DZXX--电子信箱
      ,d.ZYDZ as d_JZGJBSJ_ZYDZ--主页地址
      ,d.TC as d_JZGJBSJ_TC--特长
      ,d.GWZYM as d_JZGJBSJ_GWZYM--岗位职业码
      ,d.ZYRKXD as d_JZGJBSJ_ZYRKXD--主要任课学段
      ,e.MC as e_YBLB_MC--名称
      ,e.SM as e_YBLB_SM--说明

FROM dbo.EDU_ZXBG_02_02_WJYB AS a LEFT OUTER JOIN
      dbo.EDU_ZXXX_01_01_ZXXX AS b ON a.SCHOOLID = b.ID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZXBG_01_01_WJJBSJ AS c ON a.WJID = c.ID /*文件ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZXJZ_01_01_JZGJBSJ AS d ON a.YBRID = d.ID /*阅办人ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_JY_YBLB AS e ON a.YBLBM = e.DM /*阅办类别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_WXBMZJ AS cb ON c.MJM = cb.DM /*密级码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JJCD AS cc ON c.JJCDM = cc.DM /*紧急程度码*/ LEFT OUTER JOIN
      dbo.EDU_JY_WJFL AS cd ON c.WJFLM = cd.DM /*文件分类码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS db ON d.XBM = db.DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS dc ON d.CSDM = dc.DM /*出生地码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS dd ON d.MZM = dd.DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS de ON d.GJDQM = de.DM /*国籍/地区码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS df ON d.SFZJLXM = df.DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS dg ON d.GATQWM = dg.DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS dh ON d.ZZMMM = dh.DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS di ON d.JKZKM = di.DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS dj ON d.XYZJM = dj.DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS dk ON d.XXM = dk.DM /*血型码*/
GO

--发文处理子类表
CREATE VIEW [dbo].[VIEW_EDU_ZXBG_03_01_FWCL_DISP]
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
      ,b.XXDM as b_ZXXX_XXDM--学校代码
      ,b.XXMC as b_ZXXX_XXMC--学校名称
      ,b.XXYWMC as b_ZXXX_XXYWMC--学校英文名称
      ,b.XXDZ as b_ZXXX_XXDZ--学校地址
      ,b.XXYZBM as b_ZXXX_XXYZBM--学校邮政编码
      ,b.XZQHM as b_ZXXX_XZQHM--行政区划码
      ,b.JXNY as b_ZXXX_JXNY--建校年月
      ,b.XQR as b_ZXXX_XQR--校庆日
      ,b.XXBXLXM as b_ZXXX_XXBXLXM--学校办学类型码
      ,b.XXZGBMM as b_ZXXX_XXZGBMM--学校主管部门码
      ,b.FDDBRH as b_ZXXX_FDDBRH--法定代表人号
      ,b.FRZSH as b_ZXXX_FRZSH--法人证书号
      ,b.XZGH as b_ZXXX_XZGH--校长工号
      ,b.XZXM as b_ZXXX_XZXM--校长姓名
      ,b.DWFZRH as b_ZXXX_DWFZRH--党委负责人号
      ,b.ZZJGM as b_ZXXX_ZZJGM--组织机构码
      ,b.LXDH as b_ZXXX_LXDH--联系电话
      ,b.CZDH as b_ZXXX_CZDH--传真电话
      ,b.DZXX as b_ZXXX_DZXX--电子信箱
      ,b.ZYDZ as b_ZXXX_ZYDZ--主页地址
      ,b.LSYG as b_ZXXX_LSYG--历史沿革
      ,b.XXBBM as b_ZXXX_XXBBM--学校办别码
      ,b.SSZGDWM as b_ZXXX_SSZGDWM--所属主管单位码
      ,b.SZDCXLXM as b_ZXXX_SZDCXLXM--所在地城乡类型码
      ,b.SZDJJSXM as b_ZXXX_SZDJJSXM--所在地经济属性码
      ,b.SZDMZSX as b_ZXXX_SZDMZSX--所在地民族属性
      ,b.XXXZ as b_ZXXX_XXXZ--小学学制
      ,b.XXRXNL as b_ZXXX_XXRXNL--小学入学年龄
      ,b.CZXZ as b_ZXXX_CZXZ--初中学制
      ,b.CZRXNL as b_ZXXX_CZRXNL--初中入学年龄
      ,b.GZXZ as b_ZXXX_GZXZ--高中学制
      ,b.ZJXYYM as b_ZXXX_ZJXYYM--主教学语言码
      ,b.FJXYYM as b_ZXXX_FJXYYM--辅教学语言码
      ,b.ZSBJ as b_ZXXX_ZSBJ--招生半径
      ,c.SCHOOLID as c_WJJBSJ_SCHOOLID--学校名
      ,c.WJBH as c_WJJBSJ_WJBH--文件编号
      ,c.WJWH as c_WJJBSJ_WJWH--文件文号
      ,c.BT as c_WJJBSJ_BT--标题
      ,c.ZTC as c_WJJBSJ_ZTC--主题词
      ,c.MJM as c_WJJBSJ_MJM--密级码
      ,cb.HYPYDM as c_WJJBSJ_MJM_HYPYDM--汉语拼音代码
      ,cb.HZDM as c_WJJBSJ_MJM_HZDM--汉字代码
      ,cb.MC as c_WJJBSJ_MJM_MC--名称
      ,c.JJCDM as c_WJJBSJ_JJCDM--紧急程度码
      ,cc.MC as c_WJJBSJ_JJCDM_MC--名称
      ,c.YS as c_WJJBSJ_YS--页数
      ,c.WJFLM as c_WJJBSJ_WJFLM--文件分类码
      ,cd.MC as c_WJJBSJ_WJFLM_MC--名称
      ,cd.SM as c_WJJBSJ_WJFLM_SM--说明
      ,c.ZW as c_WJJBSJ_ZW--正文
      ,c.FJ as c_WJJBSJ_FJ--附件
      ,c.FWRQ as c_WJJBSJ_FWRQ--发文日期
      ,c.CSDW as c_WJJBSJ_CSDW--抄送单位
      ,d.SCHOOLID as d_JZGJBSJ_SCHOOLID--学校名
      ,d.GH as d_JZGJBSJ_GH--工号
      ,d.XM as d_JZGJBSJ_XM--姓名
      ,d.YWXM as d_JZGJBSJ_YWXM--英文姓名
      ,d.XMPY as d_JZGJBSJ_XMPY--姓名拼音
      ,d.CYM as d_JZGJBSJ_CYM--曾用名
      ,d.XBM as d_JZGJBSJ_XBM--性别码
      ,db.MC as d_JZGJBSJ_XBM_MC--名称
      ,d.CSRQ as d_JZGJBSJ_CSRQ--出生日期
      ,d.CSDM as d_JZGJBSJ_CSDM--出生地码
      ,dc.MC as d_JZGJBSJ_CSDM_MC--名称
      ,d.JG as d_JZGJBSJ_JG--籍贯
      ,d.MZM as d_JZGJBSJ_MZM--民族码
      ,dd.MZMC as d_JZGJBSJ_MZM_MZMC--民族名称
      ,dd.ZMDM as d_JZGJBSJ_MZM_ZMDM--字母代码
      ,d.GJDQM as d_JZGJBSJ_GJDQM--国籍/地区码
      ,de.GJDQMCJC as d_JZGJBSJ_GJDQM_GJDQMCJC--国家/地区名称简称
      ,de.EZMDM as d_JZGJBSJ_GJDQM_EZMDM--二字母代码
      ,de.SZMDM as d_JZGJBSJ_GJDQM_SZMDM--三字母代码
      ,d.SFZJLXM as d_JZGJBSJ_SFZJLXM--身份证件类型码
      ,df.MC as d_JZGJBSJ_SFZJLXM_MC--名称
      ,d.SFZJH as d_JZGJBSJ_SFZJH--身份证件号
      ,d.HYZKM as d_JZGJBSJ_HYZKM--婚姻状况码
      ,d.GATQWM as d_JZGJBSJ_GATQWM--港澳台侨外码
      ,dg.MC as d_JZGJBSJ_GATQWM_MC--名称
      ,dg.SM as d_JZGJBSJ_GATQWM_SM--说明
      ,d.ZZMMM as d_JZGJBSJ_ZZMMM--政治面貌码
      ,dh.MC as d_JZGJBSJ_ZZMMM_MC--名称
      ,dh.JC as d_JZGJBSJ_ZZMMM_JC--简称
      ,d.JKZKM as d_JZGJBSJ_JKZKM--健康状况码
      ,di.MC as d_JZGJBSJ_JKZKM_MC--名称
      ,di.SM as d_JZGJBSJ_JKZKM_SM--说明
      ,d.XYZJM as d_JZGJBSJ_XYZJM--信仰宗教码
      ,dj.MC as d_JZGJBSJ_XYZJM_MC--名称
      ,d.XXM as d_JZGJBSJ_XXM--血型码
      ,dk.MC as d_JZGJBSJ_XXM_MC--名称
      ,dk.JC as d_JZGJBSJ_XXM_JC--简称
      ,d.ZP as d_JZGJBSJ_ZP--照片
      ,d.SFZJYXQ as d_JZGJBSJ_SFZJYXQ--身份证件有效期
      ,d.JGH as d_JZGJBSJ_JGH--机构号
      ,d.JTZZ as d_JZGJBSJ_JTZZ--家庭住址
      ,d.XZZ as d_JZGJBSJ_XZZ--现住址
      ,d.HKSZD as d_JZGJBSJ_HKSZD--户口所在地
      ,d.HKXZM as d_JZGJBSJ_HKXZM--户口性质码
      ,d.XLM as d_JZGJBSJ_XLM--学历码
      ,d.GZNY as d_JZGJBSJ_GZNY--参加工作年月
      ,d.LXNY as d_JZGJBSJ_LXNY--来校年月
      ,d.CJNY as d_JZGJBSJ_CJNY--从教年月
      ,d.BZLBM as d_JZGJBSJ_BZLBM--编制类别码
      ,d.DABH as d_JZGJBSJ_DABH--档案编号
      ,d.DAWB as d_JZGJBSJ_DAWB--档案文本
      ,d.TXDZ as d_JZGJBSJ_TXDZ--通信地址
      ,d.LXDH as d_JZGJBSJ_LXDH--联系电话
      ,d.YZBM as d_JZGJBSJ_YZBM--邮政编码
      ,d.DZXX as d_JZGJBSJ_DZXX--电子信箱
      ,d.ZYDZ as d_JZGJBSJ_ZYDZ--主页地址
      ,d.TC as d_JZGJBSJ_TC--特长
      ,d.GWZYM as d_JZGJBSJ_GWZYM--岗位职业码
      ,d.ZYRKXD as d_JZGJBSJ_ZYRKXD--主要任课学段
      ,e.SCHOOLID as e_JZGJBSJ_SCHOOLID--学校名
      ,e.GH as e_JZGJBSJ_GH--工号
      ,e.XM as e_JZGJBSJ_XM--姓名
      ,e.YWXM as e_JZGJBSJ_YWXM--英文姓名
      ,e.XMPY as e_JZGJBSJ_XMPY--姓名拼音
      ,e.CYM as e_JZGJBSJ_CYM--曾用名
      ,e.XBM as e_JZGJBSJ_XBM--性别码
      ,eb.MC as e_JZGJBSJ_XBM_MC--名称
      ,e.CSRQ as e_JZGJBSJ_CSRQ--出生日期
      ,e.CSDM as e_JZGJBSJ_CSDM--出生地码
      ,ec.MC as e_JZGJBSJ_CSDM_MC--名称
      ,e.JG as e_JZGJBSJ_JG--籍贯
      ,e.MZM as e_JZGJBSJ_MZM--民族码
      ,ed.MZMC as e_JZGJBSJ_MZM_MZMC--民族名称
      ,ed.ZMDM as e_JZGJBSJ_MZM_ZMDM--字母代码
      ,e.GJDQM as e_JZGJBSJ_GJDQM--国籍/地区码
      ,ee.GJDQMCJC as e_JZGJBSJ_GJDQM_GJDQMCJC--国家/地区名称简称
      ,ee.EZMDM as e_JZGJBSJ_GJDQM_EZMDM--二字母代码
      ,ee.SZMDM as e_JZGJBSJ_GJDQM_SZMDM--三字母代码
      ,e.SFZJLXM as e_JZGJBSJ_SFZJLXM--身份证件类型码
      ,ef.MC as e_JZGJBSJ_SFZJLXM_MC--名称
      ,e.SFZJH as e_JZGJBSJ_SFZJH--身份证件号
      ,e.HYZKM as e_JZGJBSJ_HYZKM--婚姻状况码
      ,e.GATQWM as e_JZGJBSJ_GATQWM--港澳台侨外码
      ,eg.MC as e_JZGJBSJ_GATQWM_MC--名称
      ,eg.SM as e_JZGJBSJ_GATQWM_SM--说明
      ,e.ZZMMM as e_JZGJBSJ_ZZMMM--政治面貌码
      ,eh.MC as e_JZGJBSJ_ZZMMM_MC--名称
      ,eh.JC as e_JZGJBSJ_ZZMMM_JC--简称
      ,e.JKZKM as e_JZGJBSJ_JKZKM--健康状况码
      ,ei.MC as e_JZGJBSJ_JKZKM_MC--名称
      ,ei.SM as e_JZGJBSJ_JKZKM_SM--说明
      ,e.XYZJM as e_JZGJBSJ_XYZJM--信仰宗教码
      ,ej.MC as e_JZGJBSJ_XYZJM_MC--名称
      ,e.XXM as e_JZGJBSJ_XXM--血型码
      ,ek.MC as e_JZGJBSJ_XXM_MC--名称
      ,ek.JC as e_JZGJBSJ_XXM_JC--简称
      ,e.ZP as e_JZGJBSJ_ZP--照片
      ,e.SFZJYXQ as e_JZGJBSJ_SFZJYXQ--身份证件有效期
      ,e.JGH as e_JZGJBSJ_JGH--机构号
      ,e.JTZZ as e_JZGJBSJ_JTZZ--家庭住址
      ,e.XZZ as e_JZGJBSJ_XZZ--现住址
      ,e.HKSZD as e_JZGJBSJ_HKSZD--户口所在地
      ,e.HKXZM as e_JZGJBSJ_HKXZM--户口性质码
      ,e.XLM as e_JZGJBSJ_XLM--学历码
      ,e.GZNY as e_JZGJBSJ_GZNY--参加工作年月
      ,e.LXNY as e_JZGJBSJ_LXNY--来校年月
      ,e.CJNY as e_JZGJBSJ_CJNY--从教年月
      ,e.BZLBM as e_JZGJBSJ_BZLBM--编制类别码
      ,e.DABH as e_JZGJBSJ_DABH--档案编号
      ,e.DAWB as e_JZGJBSJ_DAWB--档案文本
      ,e.TXDZ as e_JZGJBSJ_TXDZ--通信地址
      ,e.LXDH as e_JZGJBSJ_LXDH--联系电话
      ,e.YZBM as e_JZGJBSJ_YZBM--邮政编码
      ,e.DZXX as e_JZGJBSJ_DZXX--电子信箱
      ,e.ZYDZ as e_JZGJBSJ_ZYDZ--主页地址
      ,e.TC as e_JZGJBSJ_TC--特长
      ,e.GWZYM as e_JZGJBSJ_GWZYM--岗位职业码
      ,e.ZYRKXD as e_JZGJBSJ_ZYRKXD--主要任课学段
      ,f.SCHOOLID as f_JZGJBSJ_SCHOOLID--学校名
      ,f.GH as f_JZGJBSJ_GH--工号
      ,f.XM as f_JZGJBSJ_XM--姓名
      ,f.YWXM as f_JZGJBSJ_YWXM--英文姓名
      ,f.XMPY as f_JZGJBSJ_XMPY--姓名拼音
      ,f.CYM as f_JZGJBSJ_CYM--曾用名
      ,f.XBM as f_JZGJBSJ_XBM--性别码
      ,fb.MC as f_JZGJBSJ_XBM_MC--名称
      ,f.CSRQ as f_JZGJBSJ_CSRQ--出生日期
      ,f.CSDM as f_JZGJBSJ_CSDM--出生地码
      ,fc.MC as f_JZGJBSJ_CSDM_MC--名称
      ,f.JG as f_JZGJBSJ_JG--籍贯
      ,f.MZM as f_JZGJBSJ_MZM--民族码
      ,fd.MZMC as f_JZGJBSJ_MZM_MZMC--民族名称
      ,fd.ZMDM as f_JZGJBSJ_MZM_ZMDM--字母代码
      ,f.GJDQM as f_JZGJBSJ_GJDQM--国籍/地区码
      ,fe.GJDQMCJC as f_JZGJBSJ_GJDQM_GJDQMCJC--国家/地区名称简称
      ,fe.EZMDM as f_JZGJBSJ_GJDQM_EZMDM--二字母代码
      ,fe.SZMDM as f_JZGJBSJ_GJDQM_SZMDM--三字母代码
      ,f.SFZJLXM as f_JZGJBSJ_SFZJLXM--身份证件类型码
      ,ff.MC as f_JZGJBSJ_SFZJLXM_MC--名称
      ,f.SFZJH as f_JZGJBSJ_SFZJH--身份证件号
      ,f.HYZKM as f_JZGJBSJ_HYZKM--婚姻状况码
      ,f.GATQWM as f_JZGJBSJ_GATQWM--港澳台侨外码
      ,fg.MC as f_JZGJBSJ_GATQWM_MC--名称
      ,fg.SM as f_JZGJBSJ_GATQWM_SM--说明
      ,f.ZZMMM as f_JZGJBSJ_ZZMMM--政治面貌码
      ,fh.MC as f_JZGJBSJ_ZZMMM_MC--名称
      ,fh.JC as f_JZGJBSJ_ZZMMM_JC--简称
      ,f.JKZKM as f_JZGJBSJ_JKZKM--健康状况码
      ,fi.MC as f_JZGJBSJ_JKZKM_MC--名称
      ,fi.SM as f_JZGJBSJ_JKZKM_SM--说明
      ,f.XYZJM as f_JZGJBSJ_XYZJM--信仰宗教码
      ,fj.MC as f_JZGJBSJ_XYZJM_MC--名称
      ,f.XXM as f_JZGJBSJ_XXM--血型码
      ,fk.MC as f_JZGJBSJ_XXM_MC--名称
      ,fk.JC as f_JZGJBSJ_XXM_JC--简称
      ,f.ZP as f_JZGJBSJ_ZP--照片
      ,f.SFZJYXQ as f_JZGJBSJ_SFZJYXQ--身份证件有效期
      ,f.JGH as f_JZGJBSJ_JGH--机构号
      ,f.JTZZ as f_JZGJBSJ_JTZZ--家庭住址
      ,f.XZZ as f_JZGJBSJ_XZZ--现住址
      ,f.HKSZD as f_JZGJBSJ_HKSZD--户口所在地
      ,f.HKXZM as f_JZGJBSJ_HKXZM--户口性质码
      ,f.XLM as f_JZGJBSJ_XLM--学历码
      ,f.GZNY as f_JZGJBSJ_GZNY--参加工作年月
      ,f.LXNY as f_JZGJBSJ_LXNY--来校年月
      ,f.CJNY as f_JZGJBSJ_CJNY--从教年月
      ,f.BZLBM as f_JZGJBSJ_BZLBM--编制类别码
      ,f.DABH as f_JZGJBSJ_DABH--档案编号
      ,f.DAWB as f_JZGJBSJ_DAWB--档案文本
      ,f.TXDZ as f_JZGJBSJ_TXDZ--通信地址
      ,f.LXDH as f_JZGJBSJ_LXDH--联系电话
      ,f.YZBM as f_JZGJBSJ_YZBM--邮政编码
      ,f.DZXX as f_JZGJBSJ_DZXX--电子信箱
      ,f.ZYDZ as f_JZGJBSJ_ZYDZ--主页地址
      ,f.TC as f_JZGJBSJ_TC--特长
      ,f.GWZYM as f_JZGJBSJ_GWZYM--岗位职业码
      ,f.ZYRKXD as f_JZGJBSJ_ZYRKXD--主要任课学段
      ,g.SCHOOLID as g_JZGJBSJ_SCHOOLID--学校名
      ,g.GH as g_JZGJBSJ_GH--工号
      ,g.XM as g_JZGJBSJ_XM--姓名
      ,g.YWXM as g_JZGJBSJ_YWXM--英文姓名
      ,g.XMPY as g_JZGJBSJ_XMPY--姓名拼音
      ,g.CYM as g_JZGJBSJ_CYM--曾用名
      ,g.XBM as g_JZGJBSJ_XBM--性别码
      ,gb.MC as g_JZGJBSJ_XBM_MC--名称
      ,g.CSRQ as g_JZGJBSJ_CSRQ--出生日期
      ,g.CSDM as g_JZGJBSJ_CSDM--出生地码
      ,gc.MC as g_JZGJBSJ_CSDM_MC--名称
      ,g.JG as g_JZGJBSJ_JG--籍贯
      ,g.MZM as g_JZGJBSJ_MZM--民族码
      ,gd.MZMC as g_JZGJBSJ_MZM_MZMC--民族名称
      ,gd.ZMDM as g_JZGJBSJ_MZM_ZMDM--字母代码
      ,g.GJDQM as g_JZGJBSJ_GJDQM--国籍/地区码
      ,ge.GJDQMCJC as g_JZGJBSJ_GJDQM_GJDQMCJC--国家/地区名称简称
      ,ge.EZMDM as g_JZGJBSJ_GJDQM_EZMDM--二字母代码
      ,ge.SZMDM as g_JZGJBSJ_GJDQM_SZMDM--三字母代码
      ,g.SFZJLXM as g_JZGJBSJ_SFZJLXM--身份证件类型码
      ,gf.MC as g_JZGJBSJ_SFZJLXM_MC--名称
      ,g.SFZJH as g_JZGJBSJ_SFZJH--身份证件号
      ,g.HYZKM as g_JZGJBSJ_HYZKM--婚姻状况码
      ,g.GATQWM as g_JZGJBSJ_GATQWM--港澳台侨外码
      ,gg.MC as g_JZGJBSJ_GATQWM_MC--名称
      ,gg.SM as g_JZGJBSJ_GATQWM_SM--说明
      ,g.ZZMMM as g_JZGJBSJ_ZZMMM--政治面貌码
      ,gh.MC as g_JZGJBSJ_ZZMMM_MC--名称
      ,gh.JC as g_JZGJBSJ_ZZMMM_JC--简称
      ,g.JKZKM as g_JZGJBSJ_JKZKM--健康状况码
      ,gi.MC as g_JZGJBSJ_JKZKM_MC--名称
      ,gi.SM as g_JZGJBSJ_JKZKM_SM--说明
      ,g.XYZJM as g_JZGJBSJ_XYZJM--信仰宗教码
      ,gj.MC as g_JZGJBSJ_XYZJM_MC--名称
      ,g.XXM as g_JZGJBSJ_XXM--血型码
      ,gk.MC as g_JZGJBSJ_XXM_MC--名称
      ,gk.JC as g_JZGJBSJ_XXM_JC--简称
      ,g.ZP as g_JZGJBSJ_ZP--照片
      ,g.SFZJYXQ as g_JZGJBSJ_SFZJYXQ--身份证件有效期
      ,g.JGH as g_JZGJBSJ_JGH--机构号
      ,g.JTZZ as g_JZGJBSJ_JTZZ--家庭住址
      ,g.XZZ as g_JZGJBSJ_XZZ--现住址
      ,g.HKSZD as g_JZGJBSJ_HKSZD--户口所在地
      ,g.HKXZM as g_JZGJBSJ_HKXZM--户口性质码
      ,g.XLM as g_JZGJBSJ_XLM--学历码
      ,g.GZNY as g_JZGJBSJ_GZNY--参加工作年月
      ,g.LXNY as g_JZGJBSJ_LXNY--来校年月
      ,g.CJNY as g_JZGJBSJ_CJNY--从教年月
      ,g.BZLBM as g_JZGJBSJ_BZLBM--编制类别码
      ,g.DABH as g_JZGJBSJ_DABH--档案编号
      ,g.DAWB as g_JZGJBSJ_DAWB--档案文本
      ,g.TXDZ as g_JZGJBSJ_TXDZ--通信地址
      ,g.LXDH as g_JZGJBSJ_LXDH--联系电话
      ,g.YZBM as g_JZGJBSJ_YZBM--邮政编码
      ,g.DZXX as g_JZGJBSJ_DZXX--电子信箱
      ,g.ZYDZ as g_JZGJBSJ_ZYDZ--主页地址
      ,g.TC as g_JZGJBSJ_TC--特长
      ,g.GWZYM as g_JZGJBSJ_GWZYM--岗位职业码
      ,g.ZYRKXD as g_JZGJBSJ_ZYRKXD--主要任课学段
      ,h.SCHOOLID as h_JZGJBSJ_SCHOOLID--学校名
      ,h.GH as h_JZGJBSJ_GH--工号
      ,h.XM as h_JZGJBSJ_XM--姓名
      ,h.YWXM as h_JZGJBSJ_YWXM--英文姓名
      ,h.XMPY as h_JZGJBSJ_XMPY--姓名拼音
      ,h.CYM as h_JZGJBSJ_CYM--曾用名
      ,h.XBM as h_JZGJBSJ_XBM--性别码
      ,hb.MC as h_JZGJBSJ_XBM_MC--名称
      ,h.CSRQ as h_JZGJBSJ_CSRQ--出生日期
      ,h.CSDM as h_JZGJBSJ_CSDM--出生地码
      ,hc.MC as h_JZGJBSJ_CSDM_MC--名称
      ,h.JG as h_JZGJBSJ_JG--籍贯
      ,h.MZM as h_JZGJBSJ_MZM--民族码
      ,hd.MZMC as h_JZGJBSJ_MZM_MZMC--民族名称
      ,hd.ZMDM as h_JZGJBSJ_MZM_ZMDM--字母代码
      ,h.GJDQM as h_JZGJBSJ_GJDQM--国籍/地区码
      ,he.GJDQMCJC as h_JZGJBSJ_GJDQM_GJDQMCJC--国家/地区名称简称
      ,he.EZMDM as h_JZGJBSJ_GJDQM_EZMDM--二字母代码
      ,he.SZMDM as h_JZGJBSJ_GJDQM_SZMDM--三字母代码
      ,h.SFZJLXM as h_JZGJBSJ_SFZJLXM--身份证件类型码
      ,hf.MC as h_JZGJBSJ_SFZJLXM_MC--名称
      ,h.SFZJH as h_JZGJBSJ_SFZJH--身份证件号
      ,h.HYZKM as h_JZGJBSJ_HYZKM--婚姻状况码
      ,h.GATQWM as h_JZGJBSJ_GATQWM--港澳台侨外码
      ,hg.MC as h_JZGJBSJ_GATQWM_MC--名称
      ,hg.SM as h_JZGJBSJ_GATQWM_SM--说明
      ,h.ZZMMM as h_JZGJBSJ_ZZMMM--政治面貌码
      ,hh.MC as h_JZGJBSJ_ZZMMM_MC--名称
      ,hh.JC as h_JZGJBSJ_ZZMMM_JC--简称
      ,h.JKZKM as h_JZGJBSJ_JKZKM--健康状况码
      ,hi.MC as h_JZGJBSJ_JKZKM_MC--名称
      ,hi.SM as h_JZGJBSJ_JKZKM_SM--说明
      ,h.XYZJM as h_JZGJBSJ_XYZJM--信仰宗教码
      ,hj.MC as h_JZGJBSJ_XYZJM_MC--名称
      ,h.XXM as h_JZGJBSJ_XXM--血型码
      ,hk.MC as h_JZGJBSJ_XXM_MC--名称
      ,hk.JC as h_JZGJBSJ_XXM_JC--简称
      ,h.ZP as h_JZGJBSJ_ZP--照片
      ,h.SFZJYXQ as h_JZGJBSJ_SFZJYXQ--身份证件有效期
      ,h.JGH as h_JZGJBSJ_JGH--机构号
      ,h.JTZZ as h_JZGJBSJ_JTZZ--家庭住址
      ,h.XZZ as h_JZGJBSJ_XZZ--现住址
      ,h.HKSZD as h_JZGJBSJ_HKSZD--户口所在地
      ,h.HKXZM as h_JZGJBSJ_HKXZM--户口性质码
      ,h.XLM as h_JZGJBSJ_XLM--学历码
      ,h.GZNY as h_JZGJBSJ_GZNY--参加工作年月
      ,h.LXNY as h_JZGJBSJ_LXNY--来校年月
      ,h.CJNY as h_JZGJBSJ_CJNY--从教年月
      ,h.BZLBM as h_JZGJBSJ_BZLBM--编制类别码
      ,h.DABH as h_JZGJBSJ_DABH--档案编号
      ,h.DAWB as h_JZGJBSJ_DAWB--档案文本
      ,h.TXDZ as h_JZGJBSJ_TXDZ--通信地址
      ,h.LXDH as h_JZGJBSJ_LXDH--联系电话
      ,h.YZBM as h_JZGJBSJ_YZBM--邮政编码
      ,h.DZXX as h_JZGJBSJ_DZXX--电子信箱
      ,h.ZYDZ as h_JZGJBSJ_ZYDZ--主页地址
      ,h.TC as h_JZGJBSJ_TC--特长
      ,h.GWZYM as h_JZGJBSJ_GWZYM--岗位职业码
      ,h.ZYRKXD as h_JZGJBSJ_ZYRKXD--主要任课学段
      ,i.MC as i_FSFS_MC--名称
      ,j.MC as j_GWFZFS_MC--名称

FROM dbo.EDU_ZXBG_03_01_FWCL AS a LEFT OUTER JOIN
      dbo.EDU_ZXXX_01_01_ZXXX AS b ON a.SCHOOLID = b.ID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZXBG_01_01_WJJBSJ AS c ON a.WJID = c.ID /*文件ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZXJZ_01_01_JZGJBSJ AS d ON a.NGRID = d.ID /*拟稿人ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZXJZ_01_01_JZGJBSJ AS e ON a.QFRID = e.ID /*签发人ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZXJZ_01_01_JZGJBSJ AS f ON a.DJRID = f.ID /*登记人ID*/ AND a.SCHOOLID = f.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZXJZ_01_01_JZGJBSJ AS g ON a.DZRID = g.ID /*打字人ID*/ AND a.SCHOOLID = g.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZXJZ_01_01_JZGJBSJ AS h ON a.JDRID = h.ID /*校对人ID*/ AND a.SCHOOLID = h.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_JY_FSFS AS i ON a.FSFSM = i.DM /*发送方式码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GWFZFS AS j ON a.FZFSM = j.DM /*封装方式码*/ LEFT OUTER JOIN
      dbo.EDU_GB_WXBMZJ AS cb ON c.MJM = cb.DM /*密级码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JJCD AS cc ON c.JJCDM = cc.DM /*紧急程度码*/ LEFT OUTER JOIN
      dbo.EDU_JY_WJFL AS cd ON c.WJFLM = cd.DM /*文件分类码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS db ON d.XBM = db.DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS dc ON d.CSDM = dc.DM /*出生地码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS dd ON d.MZM = dd.DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS de ON d.GJDQM = de.DM /*国籍/地区码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS df ON d.SFZJLXM = df.DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS dg ON d.GATQWM = dg.DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS dh ON d.ZZMMM = dh.DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS di ON d.JKZKM = di.DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS dj ON d.XYZJM = dj.DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS dk ON d.XXM = dk.DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS eb ON e.XBM = eb.DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS ec ON e.CSDM = ec.DM /*出生地码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS ed ON e.MZM = ed.DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS ee ON e.GJDQM = ee.DM /*国籍/地区码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS ef ON e.SFZJLXM = ef.DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS eg ON e.GATQWM = eg.DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS eh ON e.ZZMMM = eh.DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS ei ON e.JKZKM = ei.DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS ej ON e.XYZJM = ej.DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS ek ON e.XXM = ek.DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS fb ON f.XBM = fb.DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS fc ON f.CSDM = fc.DM /*出生地码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS fd ON f.MZM = fd.DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS fe ON f.GJDQM = fe.DM /*国籍/地区码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS ff ON f.SFZJLXM = ff.DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS fg ON f.GATQWM = fg.DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS fh ON f.ZZMMM = fh.DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS fi ON f.JKZKM = fi.DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS fj ON f.XYZJM = fj.DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS fk ON f.XXM = fk.DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS gb ON g.XBM = gb.DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS gc ON g.CSDM = gc.DM /*出生地码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS gd ON g.MZM = gd.DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS ge ON g.GJDQM = ge.DM /*国籍/地区码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS gf ON g.SFZJLXM = gf.DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS gg ON g.GATQWM = gg.DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS gh ON g.ZZMMM = gh.DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS gi ON g.JKZKM = gi.DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS gj ON g.XYZJM = gj.DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS gk ON g.XXM = gk.DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS hb ON h.XBM = hb.DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS hc ON h.CSDM = hc.DM /*出生地码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS hd ON h.MZM = hd.DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS he ON h.GJDQM = he.DM /*国籍/地区码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS hf ON h.SFZJLXM = hf.DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS hg ON h.GATQWM = hg.DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS hh ON h.ZZMMM = hh.DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS hi ON h.JKZKM = hi.DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS hj ON h.XYZJM = hj.DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS hk ON h.XXM = hk.DM /*血型码*/
GO

--核稿子类表
CREATE VIEW [dbo].[VIEW_EDU_ZXBG_03_02_HG_DISP]
AS
SELECT a.[SCHOOLID]--学校名
      ,a.[WJID]--文件ID
      ,a.[HGRID]--核稿人ID
      ,a.[HGRGH]--核稿人工号
      ,a.[HGDW]--核稿单位
      ,a.[HGYJ]--核稿意见
      ,a.[HGRQ]--核稿日期
      ,b.XXDM as b_ZXXX_XXDM--学校代码
      ,b.XXMC as b_ZXXX_XXMC--学校名称
      ,b.XXYWMC as b_ZXXX_XXYWMC--学校英文名称
      ,b.XXDZ as b_ZXXX_XXDZ--学校地址
      ,b.XXYZBM as b_ZXXX_XXYZBM--学校邮政编码
      ,b.XZQHM as b_ZXXX_XZQHM--行政区划码
      ,b.JXNY as b_ZXXX_JXNY--建校年月
      ,b.XQR as b_ZXXX_XQR--校庆日
      ,b.XXBXLXM as b_ZXXX_XXBXLXM--学校办学类型码
      ,b.XXZGBMM as b_ZXXX_XXZGBMM--学校主管部门码
      ,b.FDDBRH as b_ZXXX_FDDBRH--法定代表人号
      ,b.FRZSH as b_ZXXX_FRZSH--法人证书号
      ,b.XZGH as b_ZXXX_XZGH--校长工号
      ,b.XZXM as b_ZXXX_XZXM--校长姓名
      ,b.DWFZRH as b_ZXXX_DWFZRH--党委负责人号
      ,b.ZZJGM as b_ZXXX_ZZJGM--组织机构码
      ,b.LXDH as b_ZXXX_LXDH--联系电话
      ,b.CZDH as b_ZXXX_CZDH--传真电话
      ,b.DZXX as b_ZXXX_DZXX--电子信箱
      ,b.ZYDZ as b_ZXXX_ZYDZ--主页地址
      ,b.LSYG as b_ZXXX_LSYG--历史沿革
      ,b.XXBBM as b_ZXXX_XXBBM--学校办别码
      ,b.SSZGDWM as b_ZXXX_SSZGDWM--所属主管单位码
      ,b.SZDCXLXM as b_ZXXX_SZDCXLXM--所在地城乡类型码
      ,b.SZDJJSXM as b_ZXXX_SZDJJSXM--所在地经济属性码
      ,b.SZDMZSX as b_ZXXX_SZDMZSX--所在地民族属性
      ,b.XXXZ as b_ZXXX_XXXZ--小学学制
      ,b.XXRXNL as b_ZXXX_XXRXNL--小学入学年龄
      ,b.CZXZ as b_ZXXX_CZXZ--初中学制
      ,b.CZRXNL as b_ZXXX_CZRXNL--初中入学年龄
      ,b.GZXZ as b_ZXXX_GZXZ--高中学制
      ,b.ZJXYYM as b_ZXXX_ZJXYYM--主教学语言码
      ,b.FJXYYM as b_ZXXX_FJXYYM--辅教学语言码
      ,b.ZSBJ as b_ZXXX_ZSBJ--招生半径
      ,c.SCHOOLID as c_WJJBSJ_SCHOOLID--学校名
      ,c.WJBH as c_WJJBSJ_WJBH--文件编号
      ,c.WJWH as c_WJJBSJ_WJWH--文件文号
      ,c.BT as c_WJJBSJ_BT--标题
      ,c.ZTC as c_WJJBSJ_ZTC--主题词
      ,c.MJM as c_WJJBSJ_MJM--密级码
      ,cb.HYPYDM as c_WJJBSJ_MJM_HYPYDM--汉语拼音代码
      ,cb.HZDM as c_WJJBSJ_MJM_HZDM--汉字代码
      ,cb.MC as c_WJJBSJ_MJM_MC--名称
      ,c.JJCDM as c_WJJBSJ_JJCDM--紧急程度码
      ,cc.MC as c_WJJBSJ_JJCDM_MC--名称
      ,c.YS as c_WJJBSJ_YS--页数
      ,c.WJFLM as c_WJJBSJ_WJFLM--文件分类码
      ,cd.MC as c_WJJBSJ_WJFLM_MC--名称
      ,cd.SM as c_WJJBSJ_WJFLM_SM--说明
      ,c.ZW as c_WJJBSJ_ZW--正文
      ,c.FJ as c_WJJBSJ_FJ--附件
      ,c.FWRQ as c_WJJBSJ_FWRQ--发文日期
      ,c.CSDW as c_WJJBSJ_CSDW--抄送单位
      ,d.SCHOOLID as d_JZGJBSJ_SCHOOLID--学校名
      ,d.GH as d_JZGJBSJ_GH--工号
      ,d.XM as d_JZGJBSJ_XM--姓名
      ,d.YWXM as d_JZGJBSJ_YWXM--英文姓名
      ,d.XMPY as d_JZGJBSJ_XMPY--姓名拼音
      ,d.CYM as d_JZGJBSJ_CYM--曾用名
      ,d.XBM as d_JZGJBSJ_XBM--性别码
      ,db.MC as d_JZGJBSJ_XBM_MC--名称
      ,d.CSRQ as d_JZGJBSJ_CSRQ--出生日期
      ,d.CSDM as d_JZGJBSJ_CSDM--出生地码
      ,dc.MC as d_JZGJBSJ_CSDM_MC--名称
      ,d.JG as d_JZGJBSJ_JG--籍贯
      ,d.MZM as d_JZGJBSJ_MZM--民族码
      ,dd.MZMC as d_JZGJBSJ_MZM_MZMC--民族名称
      ,dd.ZMDM as d_JZGJBSJ_MZM_ZMDM--字母代码
      ,d.GJDQM as d_JZGJBSJ_GJDQM--国籍/地区码
      ,de.GJDQMCJC as d_JZGJBSJ_GJDQM_GJDQMCJC--国家/地区名称简称
      ,de.EZMDM as d_JZGJBSJ_GJDQM_EZMDM--二字母代码
      ,de.SZMDM as d_JZGJBSJ_GJDQM_SZMDM--三字母代码
      ,d.SFZJLXM as d_JZGJBSJ_SFZJLXM--身份证件类型码
      ,df.MC as d_JZGJBSJ_SFZJLXM_MC--名称
      ,d.SFZJH as d_JZGJBSJ_SFZJH--身份证件号
      ,d.HYZKM as d_JZGJBSJ_HYZKM--婚姻状况码
      ,d.GATQWM as d_JZGJBSJ_GATQWM--港澳台侨外码
      ,dg.MC as d_JZGJBSJ_GATQWM_MC--名称
      ,dg.SM as d_JZGJBSJ_GATQWM_SM--说明
      ,d.ZZMMM as d_JZGJBSJ_ZZMMM--政治面貌码
      ,dh.MC as d_JZGJBSJ_ZZMMM_MC--名称
      ,dh.JC as d_JZGJBSJ_ZZMMM_JC--简称
      ,d.JKZKM as d_JZGJBSJ_JKZKM--健康状况码
      ,di.MC as d_JZGJBSJ_JKZKM_MC--名称
      ,di.SM as d_JZGJBSJ_JKZKM_SM--说明
      ,d.XYZJM as d_JZGJBSJ_XYZJM--信仰宗教码
      ,dj.MC as d_JZGJBSJ_XYZJM_MC--名称
      ,d.XXM as d_JZGJBSJ_XXM--血型码
      ,dk.MC as d_JZGJBSJ_XXM_MC--名称
      ,dk.JC as d_JZGJBSJ_XXM_JC--简称
      ,d.ZP as d_JZGJBSJ_ZP--照片
      ,d.SFZJYXQ as d_JZGJBSJ_SFZJYXQ--身份证件有效期
      ,d.JGH as d_JZGJBSJ_JGH--机构号
      ,d.JTZZ as d_JZGJBSJ_JTZZ--家庭住址
      ,d.XZZ as d_JZGJBSJ_XZZ--现住址
      ,d.HKSZD as d_JZGJBSJ_HKSZD--户口所在地
      ,d.HKXZM as d_JZGJBSJ_HKXZM--户口性质码
      ,d.XLM as d_JZGJBSJ_XLM--学历码
      ,d.GZNY as d_JZGJBSJ_GZNY--参加工作年月
      ,d.LXNY as d_JZGJBSJ_LXNY--来校年月
      ,d.CJNY as d_JZGJBSJ_CJNY--从教年月
      ,d.BZLBM as d_JZGJBSJ_BZLBM--编制类别码
      ,d.DABH as d_JZGJBSJ_DABH--档案编号
      ,d.DAWB as d_JZGJBSJ_DAWB--档案文本
      ,d.TXDZ as d_JZGJBSJ_TXDZ--通信地址
      ,d.LXDH as d_JZGJBSJ_LXDH--联系电话
      ,d.YZBM as d_JZGJBSJ_YZBM--邮政编码
      ,d.DZXX as d_JZGJBSJ_DZXX--电子信箱
      ,d.ZYDZ as d_JZGJBSJ_ZYDZ--主页地址
      ,d.TC as d_JZGJBSJ_TC--特长
      ,d.GWZYM as d_JZGJBSJ_GWZYM--岗位职业码
      ,d.ZYRKXD as d_JZGJBSJ_ZYRKXD--主要任课学段

FROM dbo.EDU_ZXBG_03_02_HG AS a LEFT OUTER JOIN
      dbo.EDU_ZXXX_01_01_ZXXX AS b ON a.SCHOOLID = b.ID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZXBG_01_01_WJJBSJ AS c ON a.WJID = c.ID /*文件ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZXJZ_01_01_JZGJBSJ AS d ON a.HGRID = d.ID /*核稿人ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_GB_WXBMZJ AS cb ON c.MJM = cb.DM /*密级码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JJCD AS cc ON c.JJCDM = cc.DM /*紧急程度码*/ LEFT OUTER JOIN
      dbo.EDU_JY_WJFL AS cd ON c.WJFLM = cd.DM /*文件分类码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS db ON d.XBM = db.DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS dc ON d.CSDM = dc.DM /*出生地码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS dd ON d.MZM = dd.DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS de ON d.GJDQM = de.DM /*国籍/地区码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS df ON d.SFZJLXM = df.DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS dg ON d.GATQWM = dg.DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS dh ON d.ZZMMM = dh.DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS di ON d.JKZKM = di.DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS dj ON d.XYZJM = dj.DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS dk ON d.XXM = dk.DM /*血型码*/
GO

--会签子类表
CREATE VIEW [dbo].[VIEW_EDU_ZXBG_03_03_HQ_DISP]
AS
SELECT a.[SCHOOLID]--学校名
      ,a.[WJID]--文件ID
      ,a.[HQRID]--会签人ID
      ,a.[HQR]--会签人
      ,a.[HQDW]--会签单位
      ,a.[HQYJ]--会签意见
      ,a.[HQRQ]--会签日期
      ,b.XXDM as b_ZXXX_XXDM--学校代码
      ,b.XXMC as b_ZXXX_XXMC--学校名称
      ,b.XXYWMC as b_ZXXX_XXYWMC--学校英文名称
      ,b.XXDZ as b_ZXXX_XXDZ--学校地址
      ,b.XXYZBM as b_ZXXX_XXYZBM--学校邮政编码
      ,b.XZQHM as b_ZXXX_XZQHM--行政区划码
      ,b.JXNY as b_ZXXX_JXNY--建校年月
      ,b.XQR as b_ZXXX_XQR--校庆日
      ,b.XXBXLXM as b_ZXXX_XXBXLXM--学校办学类型码
      ,b.XXZGBMM as b_ZXXX_XXZGBMM--学校主管部门码
      ,b.FDDBRH as b_ZXXX_FDDBRH--法定代表人号
      ,b.FRZSH as b_ZXXX_FRZSH--法人证书号
      ,b.XZGH as b_ZXXX_XZGH--校长工号
      ,b.XZXM as b_ZXXX_XZXM--校长姓名
      ,b.DWFZRH as b_ZXXX_DWFZRH--党委负责人号
      ,b.ZZJGM as b_ZXXX_ZZJGM--组织机构码
      ,b.LXDH as b_ZXXX_LXDH--联系电话
      ,b.CZDH as b_ZXXX_CZDH--传真电话
      ,b.DZXX as b_ZXXX_DZXX--电子信箱
      ,b.ZYDZ as b_ZXXX_ZYDZ--主页地址
      ,b.LSYG as b_ZXXX_LSYG--历史沿革
      ,b.XXBBM as b_ZXXX_XXBBM--学校办别码
      ,b.SSZGDWM as b_ZXXX_SSZGDWM--所属主管单位码
      ,b.SZDCXLXM as b_ZXXX_SZDCXLXM--所在地城乡类型码
      ,b.SZDJJSXM as b_ZXXX_SZDJJSXM--所在地经济属性码
      ,b.SZDMZSX as b_ZXXX_SZDMZSX--所在地民族属性
      ,b.XXXZ as b_ZXXX_XXXZ--小学学制
      ,b.XXRXNL as b_ZXXX_XXRXNL--小学入学年龄
      ,b.CZXZ as b_ZXXX_CZXZ--初中学制
      ,b.CZRXNL as b_ZXXX_CZRXNL--初中入学年龄
      ,b.GZXZ as b_ZXXX_GZXZ--高中学制
      ,b.ZJXYYM as b_ZXXX_ZJXYYM--主教学语言码
      ,b.FJXYYM as b_ZXXX_FJXYYM--辅教学语言码
      ,b.ZSBJ as b_ZXXX_ZSBJ--招生半径
      ,c.SCHOOLID as c_WJJBSJ_SCHOOLID--学校名
      ,c.WJBH as c_WJJBSJ_WJBH--文件编号
      ,c.WJWH as c_WJJBSJ_WJWH--文件文号
      ,c.BT as c_WJJBSJ_BT--标题
      ,c.ZTC as c_WJJBSJ_ZTC--主题词
      ,c.MJM as c_WJJBSJ_MJM--密级码
      ,cb.HYPYDM as c_WJJBSJ_MJM_HYPYDM--汉语拼音代码
      ,cb.HZDM as c_WJJBSJ_MJM_HZDM--汉字代码
      ,cb.MC as c_WJJBSJ_MJM_MC--名称
      ,c.JJCDM as c_WJJBSJ_JJCDM--紧急程度码
      ,cc.MC as c_WJJBSJ_JJCDM_MC--名称
      ,c.YS as c_WJJBSJ_YS--页数
      ,c.WJFLM as c_WJJBSJ_WJFLM--文件分类码
      ,cd.MC as c_WJJBSJ_WJFLM_MC--名称
      ,cd.SM as c_WJJBSJ_WJFLM_SM--说明
      ,c.ZW as c_WJJBSJ_ZW--正文
      ,c.FJ as c_WJJBSJ_FJ--附件
      ,c.FWRQ as c_WJJBSJ_FWRQ--发文日期
      ,c.CSDW as c_WJJBSJ_CSDW--抄送单位
      ,d.SCHOOLID as d_JZGJBSJ_SCHOOLID--学校名
      ,d.GH as d_JZGJBSJ_GH--工号
      ,d.XM as d_JZGJBSJ_XM--姓名
      ,d.YWXM as d_JZGJBSJ_YWXM--英文姓名
      ,d.XMPY as d_JZGJBSJ_XMPY--姓名拼音
      ,d.CYM as d_JZGJBSJ_CYM--曾用名
      ,d.XBM as d_JZGJBSJ_XBM--性别码
      ,db.MC as d_JZGJBSJ_XBM_MC--名称
      ,d.CSRQ as d_JZGJBSJ_CSRQ--出生日期
      ,d.CSDM as d_JZGJBSJ_CSDM--出生地码
      ,dc.MC as d_JZGJBSJ_CSDM_MC--名称
      ,d.JG as d_JZGJBSJ_JG--籍贯
      ,d.MZM as d_JZGJBSJ_MZM--民族码
      ,dd.MZMC as d_JZGJBSJ_MZM_MZMC--民族名称
      ,dd.ZMDM as d_JZGJBSJ_MZM_ZMDM--字母代码
      ,d.GJDQM as d_JZGJBSJ_GJDQM--国籍/地区码
      ,de.GJDQMCJC as d_JZGJBSJ_GJDQM_GJDQMCJC--国家/地区名称简称
      ,de.EZMDM as d_JZGJBSJ_GJDQM_EZMDM--二字母代码
      ,de.SZMDM as d_JZGJBSJ_GJDQM_SZMDM--三字母代码
      ,d.SFZJLXM as d_JZGJBSJ_SFZJLXM--身份证件类型码
      ,df.MC as d_JZGJBSJ_SFZJLXM_MC--名称
      ,d.SFZJH as d_JZGJBSJ_SFZJH--身份证件号
      ,d.HYZKM as d_JZGJBSJ_HYZKM--婚姻状况码
      ,d.GATQWM as d_JZGJBSJ_GATQWM--港澳台侨外码
      ,dg.MC as d_JZGJBSJ_GATQWM_MC--名称
      ,dg.SM as d_JZGJBSJ_GATQWM_SM--说明
      ,d.ZZMMM as d_JZGJBSJ_ZZMMM--政治面貌码
      ,dh.MC as d_JZGJBSJ_ZZMMM_MC--名称
      ,dh.JC as d_JZGJBSJ_ZZMMM_JC--简称
      ,d.JKZKM as d_JZGJBSJ_JKZKM--健康状况码
      ,di.MC as d_JZGJBSJ_JKZKM_MC--名称
      ,di.SM as d_JZGJBSJ_JKZKM_SM--说明
      ,d.XYZJM as d_JZGJBSJ_XYZJM--信仰宗教码
      ,dj.MC as d_JZGJBSJ_XYZJM_MC--名称
      ,d.XXM as d_JZGJBSJ_XXM--血型码
      ,dk.MC as d_JZGJBSJ_XXM_MC--名称
      ,dk.JC as d_JZGJBSJ_XXM_JC--简称
      ,d.ZP as d_JZGJBSJ_ZP--照片
      ,d.SFZJYXQ as d_JZGJBSJ_SFZJYXQ--身份证件有效期
      ,d.JGH as d_JZGJBSJ_JGH--机构号
      ,d.JTZZ as d_JZGJBSJ_JTZZ--家庭住址
      ,d.XZZ as d_JZGJBSJ_XZZ--现住址
      ,d.HKSZD as d_JZGJBSJ_HKSZD--户口所在地
      ,d.HKXZM as d_JZGJBSJ_HKXZM--户口性质码
      ,d.XLM as d_JZGJBSJ_XLM--学历码
      ,d.GZNY as d_JZGJBSJ_GZNY--参加工作年月
      ,d.LXNY as d_JZGJBSJ_LXNY--来校年月
      ,d.CJNY as d_JZGJBSJ_CJNY--从教年月
      ,d.BZLBM as d_JZGJBSJ_BZLBM--编制类别码
      ,d.DABH as d_JZGJBSJ_DABH--档案编号
      ,d.DAWB as d_JZGJBSJ_DAWB--档案文本
      ,d.TXDZ as d_JZGJBSJ_TXDZ--通信地址
      ,d.LXDH as d_JZGJBSJ_LXDH--联系电话
      ,d.YZBM as d_JZGJBSJ_YZBM--邮政编码
      ,d.DZXX as d_JZGJBSJ_DZXX--电子信箱
      ,d.ZYDZ as d_JZGJBSJ_ZYDZ--主页地址
      ,d.TC as d_JZGJBSJ_TC--特长
      ,d.GWZYM as d_JZGJBSJ_GWZYM--岗位职业码
      ,d.ZYRKXD as d_JZGJBSJ_ZYRKXD--主要任课学段

FROM dbo.EDU_ZXBG_03_03_HQ AS a LEFT OUTER JOIN
      dbo.EDU_ZXXX_01_01_ZXXX AS b ON a.SCHOOLID = b.ID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZXBG_01_01_WJJBSJ AS c ON a.WJID = c.ID /*文件ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZXJZ_01_01_JZGJBSJ AS d ON a.HQRID = d.ID /*会签人ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_GB_WXBMZJ AS cb ON c.MJM = cb.DM /*密级码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JJCD AS cc ON c.JJCDM = cc.DM /*紧急程度码*/ LEFT OUTER JOIN
      dbo.EDU_JY_WJFL AS cd ON c.WJFLM = cd.DM /*文件分类码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS db ON d.XBM = db.DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS dc ON d.CSDM = dc.DM /*出生地码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS dd ON d.MZM = dd.DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS de ON d.GJDQM = de.DM /*国籍/地区码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS df ON d.SFZJLXM = df.DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS dg ON d.GATQWM = dg.DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS dh ON d.ZZMMM = dh.DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS di ON d.JKZKM = di.DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS dj ON d.XYZJM = dj.DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS dk ON d.XXM = dk.DM /*血型码*/
GO

--呈批子类表
CREATE VIEW [dbo].[VIEW_EDU_ZXBG_03_04_CP_DISP]
AS
SELECT a.[SCHOOLID]--学校名
      ,a.[WJID]--文件ID
      ,a.[PFRID]--批复人ID
      ,a.[PFR]--批复人
      ,a.[PFDW]--批复单位
      ,a.[PFYJ]--批复意见
      ,a.[PFRQ]--批复日期
      ,b.XXDM as b_ZXXX_XXDM--学校代码
      ,b.XXMC as b_ZXXX_XXMC--学校名称
      ,b.XXYWMC as b_ZXXX_XXYWMC--学校英文名称
      ,b.XXDZ as b_ZXXX_XXDZ--学校地址
      ,b.XXYZBM as b_ZXXX_XXYZBM--学校邮政编码
      ,b.XZQHM as b_ZXXX_XZQHM--行政区划码
      ,b.JXNY as b_ZXXX_JXNY--建校年月
      ,b.XQR as b_ZXXX_XQR--校庆日
      ,b.XXBXLXM as b_ZXXX_XXBXLXM--学校办学类型码
      ,b.XXZGBMM as b_ZXXX_XXZGBMM--学校主管部门码
      ,b.FDDBRH as b_ZXXX_FDDBRH--法定代表人号
      ,b.FRZSH as b_ZXXX_FRZSH--法人证书号
      ,b.XZGH as b_ZXXX_XZGH--校长工号
      ,b.XZXM as b_ZXXX_XZXM--校长姓名
      ,b.DWFZRH as b_ZXXX_DWFZRH--党委负责人号
      ,b.ZZJGM as b_ZXXX_ZZJGM--组织机构码
      ,b.LXDH as b_ZXXX_LXDH--联系电话
      ,b.CZDH as b_ZXXX_CZDH--传真电话
      ,b.DZXX as b_ZXXX_DZXX--电子信箱
      ,b.ZYDZ as b_ZXXX_ZYDZ--主页地址
      ,b.LSYG as b_ZXXX_LSYG--历史沿革
      ,b.XXBBM as b_ZXXX_XXBBM--学校办别码
      ,b.SSZGDWM as b_ZXXX_SSZGDWM--所属主管单位码
      ,b.SZDCXLXM as b_ZXXX_SZDCXLXM--所在地城乡类型码
      ,b.SZDJJSXM as b_ZXXX_SZDJJSXM--所在地经济属性码
      ,b.SZDMZSX as b_ZXXX_SZDMZSX--所在地民族属性
      ,b.XXXZ as b_ZXXX_XXXZ--小学学制
      ,b.XXRXNL as b_ZXXX_XXRXNL--小学入学年龄
      ,b.CZXZ as b_ZXXX_CZXZ--初中学制
      ,b.CZRXNL as b_ZXXX_CZRXNL--初中入学年龄
      ,b.GZXZ as b_ZXXX_GZXZ--高中学制
      ,b.ZJXYYM as b_ZXXX_ZJXYYM--主教学语言码
      ,b.FJXYYM as b_ZXXX_FJXYYM--辅教学语言码
      ,b.ZSBJ as b_ZXXX_ZSBJ--招生半径
      ,c.SCHOOLID as c_WJJBSJ_SCHOOLID--学校名
      ,c.WJBH as c_WJJBSJ_WJBH--文件编号
      ,c.WJWH as c_WJJBSJ_WJWH--文件文号
      ,c.BT as c_WJJBSJ_BT--标题
      ,c.ZTC as c_WJJBSJ_ZTC--主题词
      ,c.MJM as c_WJJBSJ_MJM--密级码
      ,cb.HYPYDM as c_WJJBSJ_MJM_HYPYDM--汉语拼音代码
      ,cb.HZDM as c_WJJBSJ_MJM_HZDM--汉字代码
      ,cb.MC as c_WJJBSJ_MJM_MC--名称
      ,c.JJCDM as c_WJJBSJ_JJCDM--紧急程度码
      ,cc.MC as c_WJJBSJ_JJCDM_MC--名称
      ,c.YS as c_WJJBSJ_YS--页数
      ,c.WJFLM as c_WJJBSJ_WJFLM--文件分类码
      ,cd.MC as c_WJJBSJ_WJFLM_MC--名称
      ,cd.SM as c_WJJBSJ_WJFLM_SM--说明
      ,c.ZW as c_WJJBSJ_ZW--正文
      ,c.FJ as c_WJJBSJ_FJ--附件
      ,c.FWRQ as c_WJJBSJ_FWRQ--发文日期
      ,c.CSDW as c_WJJBSJ_CSDW--抄送单位
      ,d.SCHOOLID as d_JZGJBSJ_SCHOOLID--学校名
      ,d.GH as d_JZGJBSJ_GH--工号
      ,d.XM as d_JZGJBSJ_XM--姓名
      ,d.YWXM as d_JZGJBSJ_YWXM--英文姓名
      ,d.XMPY as d_JZGJBSJ_XMPY--姓名拼音
      ,d.CYM as d_JZGJBSJ_CYM--曾用名
      ,d.XBM as d_JZGJBSJ_XBM--性别码
      ,db.MC as d_JZGJBSJ_XBM_MC--名称
      ,d.CSRQ as d_JZGJBSJ_CSRQ--出生日期
      ,d.CSDM as d_JZGJBSJ_CSDM--出生地码
      ,dc.MC as d_JZGJBSJ_CSDM_MC--名称
      ,d.JG as d_JZGJBSJ_JG--籍贯
      ,d.MZM as d_JZGJBSJ_MZM--民族码
      ,dd.MZMC as d_JZGJBSJ_MZM_MZMC--民族名称
      ,dd.ZMDM as d_JZGJBSJ_MZM_ZMDM--字母代码
      ,d.GJDQM as d_JZGJBSJ_GJDQM--国籍/地区码
      ,de.GJDQMCJC as d_JZGJBSJ_GJDQM_GJDQMCJC--国家/地区名称简称
      ,de.EZMDM as d_JZGJBSJ_GJDQM_EZMDM--二字母代码
      ,de.SZMDM as d_JZGJBSJ_GJDQM_SZMDM--三字母代码
      ,d.SFZJLXM as d_JZGJBSJ_SFZJLXM--身份证件类型码
      ,df.MC as d_JZGJBSJ_SFZJLXM_MC--名称
      ,d.SFZJH as d_JZGJBSJ_SFZJH--身份证件号
      ,d.HYZKM as d_JZGJBSJ_HYZKM--婚姻状况码
      ,d.GATQWM as d_JZGJBSJ_GATQWM--港澳台侨外码
      ,dg.MC as d_JZGJBSJ_GATQWM_MC--名称
      ,dg.SM as d_JZGJBSJ_GATQWM_SM--说明
      ,d.ZZMMM as d_JZGJBSJ_ZZMMM--政治面貌码
      ,dh.MC as d_JZGJBSJ_ZZMMM_MC--名称
      ,dh.JC as d_JZGJBSJ_ZZMMM_JC--简称
      ,d.JKZKM as d_JZGJBSJ_JKZKM--健康状况码
      ,di.MC as d_JZGJBSJ_JKZKM_MC--名称
      ,di.SM as d_JZGJBSJ_JKZKM_SM--说明
      ,d.XYZJM as d_JZGJBSJ_XYZJM--信仰宗教码
      ,dj.MC as d_JZGJBSJ_XYZJM_MC--名称
      ,d.XXM as d_JZGJBSJ_XXM--血型码
      ,dk.MC as d_JZGJBSJ_XXM_MC--名称
      ,dk.JC as d_JZGJBSJ_XXM_JC--简称
      ,d.ZP as d_JZGJBSJ_ZP--照片
      ,d.SFZJYXQ as d_JZGJBSJ_SFZJYXQ--身份证件有效期
      ,d.JGH as d_JZGJBSJ_JGH--机构号
      ,d.JTZZ as d_JZGJBSJ_JTZZ--家庭住址
      ,d.XZZ as d_JZGJBSJ_XZZ--现住址
      ,d.HKSZD as d_JZGJBSJ_HKSZD--户口所在地
      ,d.HKXZM as d_JZGJBSJ_HKXZM--户口性质码
      ,d.XLM as d_JZGJBSJ_XLM--学历码
      ,d.GZNY as d_JZGJBSJ_GZNY--参加工作年月
      ,d.LXNY as d_JZGJBSJ_LXNY--来校年月
      ,d.CJNY as d_JZGJBSJ_CJNY--从教年月
      ,d.BZLBM as d_JZGJBSJ_BZLBM--编制类别码
      ,d.DABH as d_JZGJBSJ_DABH--档案编号
      ,d.DAWB as d_JZGJBSJ_DAWB--档案文本
      ,d.TXDZ as d_JZGJBSJ_TXDZ--通信地址
      ,d.LXDH as d_JZGJBSJ_LXDH--联系电话
      ,d.YZBM as d_JZGJBSJ_YZBM--邮政编码
      ,d.DZXX as d_JZGJBSJ_DZXX--电子信箱
      ,d.ZYDZ as d_JZGJBSJ_ZYDZ--主页地址
      ,d.TC as d_JZGJBSJ_TC--特长
      ,d.GWZYM as d_JZGJBSJ_GWZYM--岗位职业码
      ,d.ZYRKXD as d_JZGJBSJ_ZYRKXD--主要任课学段

FROM dbo.EDU_ZXBG_03_04_CP AS a LEFT OUTER JOIN
      dbo.EDU_ZXXX_01_01_ZXXX AS b ON a.SCHOOLID = b.ID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZXBG_01_01_WJJBSJ AS c ON a.WJID = c.ID /*文件ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZXJZ_01_01_JZGJBSJ AS d ON a.PFRID = d.ID /*批复人ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_GB_WXBMZJ AS cb ON c.MJM = cb.DM /*密级码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JJCD AS cc ON c.JJCDM = cc.DM /*紧急程度码*/ LEFT OUTER JOIN
      dbo.EDU_JY_WJFL AS cd ON c.WJFLM = cd.DM /*文件分类码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS db ON d.XBM = db.DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS dc ON d.CSDM = dc.DM /*出生地码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS dd ON d.MZM = dd.DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS de ON d.GJDQM = de.DM /*国籍/地区码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS df ON d.SFZJLXM = df.DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS dg ON d.GATQWM = dg.DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS dh ON d.ZZMMM = dh.DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS di ON d.JKZKM = di.DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS dj ON d.XYZJM = dj.DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS dk ON d.XXM = dk.DM /*血型码*/
GO

--文件清退数据类表
CREATE VIEW [dbo].[VIEW_EDU_ZXBG_04_01_WJQT_DISP]
AS
SELECT a.[SCHOOLID]--学校名
      ,a.[WJID]--文件ID
      ,a.[JBRID]--经办人ID
      ,a.[QTRQ]--清退日期
      ,a.[QTFW]--清退范围
      ,a.[QTSM]--清退说明
      ,a.[JBRGH]--经办人工号
      ,b.XXDM as b_ZXXX_XXDM--学校代码
      ,b.XXMC as b_ZXXX_XXMC--学校名称
      ,b.XXYWMC as b_ZXXX_XXYWMC--学校英文名称
      ,b.XXDZ as b_ZXXX_XXDZ--学校地址
      ,b.XXYZBM as b_ZXXX_XXYZBM--学校邮政编码
      ,b.XZQHM as b_ZXXX_XZQHM--行政区划码
      ,b.JXNY as b_ZXXX_JXNY--建校年月
      ,b.XQR as b_ZXXX_XQR--校庆日
      ,b.XXBXLXM as b_ZXXX_XXBXLXM--学校办学类型码
      ,b.XXZGBMM as b_ZXXX_XXZGBMM--学校主管部门码
      ,b.FDDBRH as b_ZXXX_FDDBRH--法定代表人号
      ,b.FRZSH as b_ZXXX_FRZSH--法人证书号
      ,b.XZGH as b_ZXXX_XZGH--校长工号
      ,b.XZXM as b_ZXXX_XZXM--校长姓名
      ,b.DWFZRH as b_ZXXX_DWFZRH--党委负责人号
      ,b.ZZJGM as b_ZXXX_ZZJGM--组织机构码
      ,b.LXDH as b_ZXXX_LXDH--联系电话
      ,b.CZDH as b_ZXXX_CZDH--传真电话
      ,b.DZXX as b_ZXXX_DZXX--电子信箱
      ,b.ZYDZ as b_ZXXX_ZYDZ--主页地址
      ,b.LSYG as b_ZXXX_LSYG--历史沿革
      ,b.XXBBM as b_ZXXX_XXBBM--学校办别码
      ,b.SSZGDWM as b_ZXXX_SSZGDWM--所属主管单位码
      ,b.SZDCXLXM as b_ZXXX_SZDCXLXM--所在地城乡类型码
      ,b.SZDJJSXM as b_ZXXX_SZDJJSXM--所在地经济属性码
      ,b.SZDMZSX as b_ZXXX_SZDMZSX--所在地民族属性
      ,b.XXXZ as b_ZXXX_XXXZ--小学学制
      ,b.XXRXNL as b_ZXXX_XXRXNL--小学入学年龄
      ,b.CZXZ as b_ZXXX_CZXZ--初中学制
      ,b.CZRXNL as b_ZXXX_CZRXNL--初中入学年龄
      ,b.GZXZ as b_ZXXX_GZXZ--高中学制
      ,b.ZJXYYM as b_ZXXX_ZJXYYM--主教学语言码
      ,b.FJXYYM as b_ZXXX_FJXYYM--辅教学语言码
      ,b.ZSBJ as b_ZXXX_ZSBJ--招生半径
      ,c.SCHOOLID as c_WJJBSJ_SCHOOLID--学校名
      ,c.WJBH as c_WJJBSJ_WJBH--文件编号
      ,c.WJWH as c_WJJBSJ_WJWH--文件文号
      ,c.BT as c_WJJBSJ_BT--标题
      ,c.ZTC as c_WJJBSJ_ZTC--主题词
      ,c.MJM as c_WJJBSJ_MJM--密级码
      ,cb.HYPYDM as c_WJJBSJ_MJM_HYPYDM--汉语拼音代码
      ,cb.HZDM as c_WJJBSJ_MJM_HZDM--汉字代码
      ,cb.MC as c_WJJBSJ_MJM_MC--名称
      ,c.JJCDM as c_WJJBSJ_JJCDM--紧急程度码
      ,cc.MC as c_WJJBSJ_JJCDM_MC--名称
      ,c.YS as c_WJJBSJ_YS--页数
      ,c.WJFLM as c_WJJBSJ_WJFLM--文件分类码
      ,cd.MC as c_WJJBSJ_WJFLM_MC--名称
      ,cd.SM as c_WJJBSJ_WJFLM_SM--说明
      ,c.ZW as c_WJJBSJ_ZW--正文
      ,c.FJ as c_WJJBSJ_FJ--附件
      ,c.FWRQ as c_WJJBSJ_FWRQ--发文日期
      ,c.CSDW as c_WJJBSJ_CSDW--抄送单位
      ,d.SCHOOLID as d_JZGJBSJ_SCHOOLID--学校名
      ,d.GH as d_JZGJBSJ_GH--工号
      ,d.XM as d_JZGJBSJ_XM--姓名
      ,d.YWXM as d_JZGJBSJ_YWXM--英文姓名
      ,d.XMPY as d_JZGJBSJ_XMPY--姓名拼音
      ,d.CYM as d_JZGJBSJ_CYM--曾用名
      ,d.XBM as d_JZGJBSJ_XBM--性别码
      ,db.MC as d_JZGJBSJ_XBM_MC--名称
      ,d.CSRQ as d_JZGJBSJ_CSRQ--出生日期
      ,d.CSDM as d_JZGJBSJ_CSDM--出生地码
      ,dc.MC as d_JZGJBSJ_CSDM_MC--名称
      ,d.JG as d_JZGJBSJ_JG--籍贯
      ,d.MZM as d_JZGJBSJ_MZM--民族码
      ,dd.MZMC as d_JZGJBSJ_MZM_MZMC--民族名称
      ,dd.ZMDM as d_JZGJBSJ_MZM_ZMDM--字母代码
      ,d.GJDQM as d_JZGJBSJ_GJDQM--国籍/地区码
      ,de.GJDQMCJC as d_JZGJBSJ_GJDQM_GJDQMCJC--国家/地区名称简称
      ,de.EZMDM as d_JZGJBSJ_GJDQM_EZMDM--二字母代码
      ,de.SZMDM as d_JZGJBSJ_GJDQM_SZMDM--三字母代码
      ,d.SFZJLXM as d_JZGJBSJ_SFZJLXM--身份证件类型码
      ,df.MC as d_JZGJBSJ_SFZJLXM_MC--名称
      ,d.SFZJH as d_JZGJBSJ_SFZJH--身份证件号
      ,d.HYZKM as d_JZGJBSJ_HYZKM--婚姻状况码
      ,d.GATQWM as d_JZGJBSJ_GATQWM--港澳台侨外码
      ,dg.MC as d_JZGJBSJ_GATQWM_MC--名称
      ,dg.SM as d_JZGJBSJ_GATQWM_SM--说明
      ,d.ZZMMM as d_JZGJBSJ_ZZMMM--政治面貌码
      ,dh.MC as d_JZGJBSJ_ZZMMM_MC--名称
      ,dh.JC as d_JZGJBSJ_ZZMMM_JC--简称
      ,d.JKZKM as d_JZGJBSJ_JKZKM--健康状况码
      ,di.MC as d_JZGJBSJ_JKZKM_MC--名称
      ,di.SM as d_JZGJBSJ_JKZKM_SM--说明
      ,d.XYZJM as d_JZGJBSJ_XYZJM--信仰宗教码
      ,dj.MC as d_JZGJBSJ_XYZJM_MC--名称
      ,d.XXM as d_JZGJBSJ_XXM--血型码
      ,dk.MC as d_JZGJBSJ_XXM_MC--名称
      ,dk.JC as d_JZGJBSJ_XXM_JC--简称
      ,d.ZP as d_JZGJBSJ_ZP--照片
      ,d.SFZJYXQ as d_JZGJBSJ_SFZJYXQ--身份证件有效期
      ,d.JGH as d_JZGJBSJ_JGH--机构号
      ,d.JTZZ as d_JZGJBSJ_JTZZ--家庭住址
      ,d.XZZ as d_JZGJBSJ_XZZ--现住址
      ,d.HKSZD as d_JZGJBSJ_HKSZD--户口所在地
      ,d.HKXZM as d_JZGJBSJ_HKXZM--户口性质码
      ,d.XLM as d_JZGJBSJ_XLM--学历码
      ,d.GZNY as d_JZGJBSJ_GZNY--参加工作年月
      ,d.LXNY as d_JZGJBSJ_LXNY--来校年月
      ,d.CJNY as d_JZGJBSJ_CJNY--从教年月
      ,d.BZLBM as d_JZGJBSJ_BZLBM--编制类别码
      ,d.DABH as d_JZGJBSJ_DABH--档案编号
      ,d.DAWB as d_JZGJBSJ_DAWB--档案文本
      ,d.TXDZ as d_JZGJBSJ_TXDZ--通信地址
      ,d.LXDH as d_JZGJBSJ_LXDH--联系电话
      ,d.YZBM as d_JZGJBSJ_YZBM--邮政编码
      ,d.DZXX as d_JZGJBSJ_DZXX--电子信箱
      ,d.ZYDZ as d_JZGJBSJ_ZYDZ--主页地址
      ,d.TC as d_JZGJBSJ_TC--特长
      ,d.GWZYM as d_JZGJBSJ_GWZYM--岗位职业码
      ,d.ZYRKXD as d_JZGJBSJ_ZYRKXD--主要任课学段

FROM dbo.EDU_ZXBG_04_01_WJQT AS a LEFT OUTER JOIN
      dbo.EDU_ZXXX_01_01_ZXXX AS b ON a.SCHOOLID = b.ID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZXBG_01_01_WJJBSJ AS c ON a.WJID = c.ID /*文件ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZXJZ_01_01_JZGJBSJ AS d ON a.JBRID = d.ID /*经办人ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_GB_WXBMZJ AS cb ON c.MJM = cb.DM /*密级码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JJCD AS cc ON c.JJCDM = cc.DM /*紧急程度码*/ LEFT OUTER JOIN
      dbo.EDU_JY_WJFL AS cd ON c.WJFLM = cd.DM /*文件分类码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS db ON d.XBM = db.DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS dc ON d.CSDM = dc.DM /*出生地码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS dd ON d.MZM = dd.DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS de ON d.GJDQM = de.DM /*国籍/地区码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS df ON d.SFZJLXM = df.DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS dg ON d.GATQWM = dg.DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS dh ON d.ZZMMM = dh.DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS di ON d.JKZKM = di.DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS dj ON d.XYZJM = dj.DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS dk ON d.XXM = dk.DM /*血型码*/
GO

--文件销毁数据类表
CREATE VIEW [dbo].[VIEW_EDU_ZXBG_05_01_WJXH_DISP]
AS
SELECT a.[SCHOOLID]--学校名
      ,a.[WJID]--文件ID
      ,a.[XHSPRID]--销毁审批人ID
      ,a.[JBRID]--经办人ID
      ,a.[XHRQ]--销毁日期
      ,a.[XHSPRGH]--销毁审批人工号
      ,a.[XHSM]--销毁说明
      ,a.[JBRGH]--经办人工号
      ,b.XXDM as b_ZXXX_XXDM--学校代码
      ,b.XXMC as b_ZXXX_XXMC--学校名称
      ,b.XXYWMC as b_ZXXX_XXYWMC--学校英文名称
      ,b.XXDZ as b_ZXXX_XXDZ--学校地址
      ,b.XXYZBM as b_ZXXX_XXYZBM--学校邮政编码
      ,b.XZQHM as b_ZXXX_XZQHM--行政区划码
      ,b.JXNY as b_ZXXX_JXNY--建校年月
      ,b.XQR as b_ZXXX_XQR--校庆日
      ,b.XXBXLXM as b_ZXXX_XXBXLXM--学校办学类型码
      ,b.XXZGBMM as b_ZXXX_XXZGBMM--学校主管部门码
      ,b.FDDBRH as b_ZXXX_FDDBRH--法定代表人号
      ,b.FRZSH as b_ZXXX_FRZSH--法人证书号
      ,b.XZGH as b_ZXXX_XZGH--校长工号
      ,b.XZXM as b_ZXXX_XZXM--校长姓名
      ,b.DWFZRH as b_ZXXX_DWFZRH--党委负责人号
      ,b.ZZJGM as b_ZXXX_ZZJGM--组织机构码
      ,b.LXDH as b_ZXXX_LXDH--联系电话
      ,b.CZDH as b_ZXXX_CZDH--传真电话
      ,b.DZXX as b_ZXXX_DZXX--电子信箱
      ,b.ZYDZ as b_ZXXX_ZYDZ--主页地址
      ,b.LSYG as b_ZXXX_LSYG--历史沿革
      ,b.XXBBM as b_ZXXX_XXBBM--学校办别码
      ,b.SSZGDWM as b_ZXXX_SSZGDWM--所属主管单位码
      ,b.SZDCXLXM as b_ZXXX_SZDCXLXM--所在地城乡类型码
      ,b.SZDJJSXM as b_ZXXX_SZDJJSXM--所在地经济属性码
      ,b.SZDMZSX as b_ZXXX_SZDMZSX--所在地民族属性
      ,b.XXXZ as b_ZXXX_XXXZ--小学学制
      ,b.XXRXNL as b_ZXXX_XXRXNL--小学入学年龄
      ,b.CZXZ as b_ZXXX_CZXZ--初中学制
      ,b.CZRXNL as b_ZXXX_CZRXNL--初中入学年龄
      ,b.GZXZ as b_ZXXX_GZXZ--高中学制
      ,b.ZJXYYM as b_ZXXX_ZJXYYM--主教学语言码
      ,b.FJXYYM as b_ZXXX_FJXYYM--辅教学语言码
      ,b.ZSBJ as b_ZXXX_ZSBJ--招生半径
      ,c.SCHOOLID as c_WJJBSJ_SCHOOLID--学校名
      ,c.WJBH as c_WJJBSJ_WJBH--文件编号
      ,c.WJWH as c_WJJBSJ_WJWH--文件文号
      ,c.BT as c_WJJBSJ_BT--标题
      ,c.ZTC as c_WJJBSJ_ZTC--主题词
      ,c.MJM as c_WJJBSJ_MJM--密级码
      ,cb.HYPYDM as c_WJJBSJ_MJM_HYPYDM--汉语拼音代码
      ,cb.HZDM as c_WJJBSJ_MJM_HZDM--汉字代码
      ,cb.MC as c_WJJBSJ_MJM_MC--名称
      ,c.JJCDM as c_WJJBSJ_JJCDM--紧急程度码
      ,cc.MC as c_WJJBSJ_JJCDM_MC--名称
      ,c.YS as c_WJJBSJ_YS--页数
      ,c.WJFLM as c_WJJBSJ_WJFLM--文件分类码
      ,cd.MC as c_WJJBSJ_WJFLM_MC--名称
      ,cd.SM as c_WJJBSJ_WJFLM_SM--说明
      ,c.ZW as c_WJJBSJ_ZW--正文
      ,c.FJ as c_WJJBSJ_FJ--附件
      ,c.FWRQ as c_WJJBSJ_FWRQ--发文日期
      ,c.CSDW as c_WJJBSJ_CSDW--抄送单位
      ,d.SCHOOLID as d_JZGJBSJ_SCHOOLID--学校名
      ,d.GH as d_JZGJBSJ_GH--工号
      ,d.XM as d_JZGJBSJ_XM--姓名
      ,d.YWXM as d_JZGJBSJ_YWXM--英文姓名
      ,d.XMPY as d_JZGJBSJ_XMPY--姓名拼音
      ,d.CYM as d_JZGJBSJ_CYM--曾用名
      ,d.XBM as d_JZGJBSJ_XBM--性别码
      ,db.MC as d_JZGJBSJ_XBM_MC--名称
      ,d.CSRQ as d_JZGJBSJ_CSRQ--出生日期
      ,d.CSDM as d_JZGJBSJ_CSDM--出生地码
      ,dc.MC as d_JZGJBSJ_CSDM_MC--名称
      ,d.JG as d_JZGJBSJ_JG--籍贯
      ,d.MZM as d_JZGJBSJ_MZM--民族码
      ,dd.MZMC as d_JZGJBSJ_MZM_MZMC--民族名称
      ,dd.ZMDM as d_JZGJBSJ_MZM_ZMDM--字母代码
      ,d.GJDQM as d_JZGJBSJ_GJDQM--国籍/地区码
      ,de.GJDQMCJC as d_JZGJBSJ_GJDQM_GJDQMCJC--国家/地区名称简称
      ,de.EZMDM as d_JZGJBSJ_GJDQM_EZMDM--二字母代码
      ,de.SZMDM as d_JZGJBSJ_GJDQM_SZMDM--三字母代码
      ,d.SFZJLXM as d_JZGJBSJ_SFZJLXM--身份证件类型码
      ,df.MC as d_JZGJBSJ_SFZJLXM_MC--名称
      ,d.SFZJH as d_JZGJBSJ_SFZJH--身份证件号
      ,d.HYZKM as d_JZGJBSJ_HYZKM--婚姻状况码
      ,d.GATQWM as d_JZGJBSJ_GATQWM--港澳台侨外码
      ,dg.MC as d_JZGJBSJ_GATQWM_MC--名称
      ,dg.SM as d_JZGJBSJ_GATQWM_SM--说明
      ,d.ZZMMM as d_JZGJBSJ_ZZMMM--政治面貌码
      ,dh.MC as d_JZGJBSJ_ZZMMM_MC--名称
      ,dh.JC as d_JZGJBSJ_ZZMMM_JC--简称
      ,d.JKZKM as d_JZGJBSJ_JKZKM--健康状况码
      ,di.MC as d_JZGJBSJ_JKZKM_MC--名称
      ,di.SM as d_JZGJBSJ_JKZKM_SM--说明
      ,d.XYZJM as d_JZGJBSJ_XYZJM--信仰宗教码
      ,dj.MC as d_JZGJBSJ_XYZJM_MC--名称
      ,d.XXM as d_JZGJBSJ_XXM--血型码
      ,dk.MC as d_JZGJBSJ_XXM_MC--名称
      ,dk.JC as d_JZGJBSJ_XXM_JC--简称
      ,d.ZP as d_JZGJBSJ_ZP--照片
      ,d.SFZJYXQ as d_JZGJBSJ_SFZJYXQ--身份证件有效期
      ,d.JGH as d_JZGJBSJ_JGH--机构号
      ,d.JTZZ as d_JZGJBSJ_JTZZ--家庭住址
      ,d.XZZ as d_JZGJBSJ_XZZ--现住址
      ,d.HKSZD as d_JZGJBSJ_HKSZD--户口所在地
      ,d.HKXZM as d_JZGJBSJ_HKXZM--户口性质码
      ,d.XLM as d_JZGJBSJ_XLM--学历码
      ,d.GZNY as d_JZGJBSJ_GZNY--参加工作年月
      ,d.LXNY as d_JZGJBSJ_LXNY--来校年月
      ,d.CJNY as d_JZGJBSJ_CJNY--从教年月
      ,d.BZLBM as d_JZGJBSJ_BZLBM--编制类别码
      ,d.DABH as d_JZGJBSJ_DABH--档案编号
      ,d.DAWB as d_JZGJBSJ_DAWB--档案文本
      ,d.TXDZ as d_JZGJBSJ_TXDZ--通信地址
      ,d.LXDH as d_JZGJBSJ_LXDH--联系电话
      ,d.YZBM as d_JZGJBSJ_YZBM--邮政编码
      ,d.DZXX as d_JZGJBSJ_DZXX--电子信箱
      ,d.ZYDZ as d_JZGJBSJ_ZYDZ--主页地址
      ,d.TC as d_JZGJBSJ_TC--特长
      ,d.GWZYM as d_JZGJBSJ_GWZYM--岗位职业码
      ,d.ZYRKXD as d_JZGJBSJ_ZYRKXD--主要任课学段
      ,e.SCHOOLID as e_JZGJBSJ_SCHOOLID--学校名
      ,e.GH as e_JZGJBSJ_GH--工号
      ,e.XM as e_JZGJBSJ_XM--姓名
      ,e.YWXM as e_JZGJBSJ_YWXM--英文姓名
      ,e.XMPY as e_JZGJBSJ_XMPY--姓名拼音
      ,e.CYM as e_JZGJBSJ_CYM--曾用名
      ,e.XBM as e_JZGJBSJ_XBM--性别码
      ,eb.MC as e_JZGJBSJ_XBM_MC--名称
      ,e.CSRQ as e_JZGJBSJ_CSRQ--出生日期
      ,e.CSDM as e_JZGJBSJ_CSDM--出生地码
      ,ec.MC as e_JZGJBSJ_CSDM_MC--名称
      ,e.JG as e_JZGJBSJ_JG--籍贯
      ,e.MZM as e_JZGJBSJ_MZM--民族码
      ,ed.MZMC as e_JZGJBSJ_MZM_MZMC--民族名称
      ,ed.ZMDM as e_JZGJBSJ_MZM_ZMDM--字母代码
      ,e.GJDQM as e_JZGJBSJ_GJDQM--国籍/地区码
      ,ee.GJDQMCJC as e_JZGJBSJ_GJDQM_GJDQMCJC--国家/地区名称简称
      ,ee.EZMDM as e_JZGJBSJ_GJDQM_EZMDM--二字母代码
      ,ee.SZMDM as e_JZGJBSJ_GJDQM_SZMDM--三字母代码
      ,e.SFZJLXM as e_JZGJBSJ_SFZJLXM--身份证件类型码
      ,ef.MC as e_JZGJBSJ_SFZJLXM_MC--名称
      ,e.SFZJH as e_JZGJBSJ_SFZJH--身份证件号
      ,e.HYZKM as e_JZGJBSJ_HYZKM--婚姻状况码
      ,e.GATQWM as e_JZGJBSJ_GATQWM--港澳台侨外码
      ,eg.MC as e_JZGJBSJ_GATQWM_MC--名称
      ,eg.SM as e_JZGJBSJ_GATQWM_SM--说明
      ,e.ZZMMM as e_JZGJBSJ_ZZMMM--政治面貌码
      ,eh.MC as e_JZGJBSJ_ZZMMM_MC--名称
      ,eh.JC as e_JZGJBSJ_ZZMMM_JC--简称
      ,e.JKZKM as e_JZGJBSJ_JKZKM--健康状况码
      ,ei.MC as e_JZGJBSJ_JKZKM_MC--名称
      ,ei.SM as e_JZGJBSJ_JKZKM_SM--说明
      ,e.XYZJM as e_JZGJBSJ_XYZJM--信仰宗教码
      ,ej.MC as e_JZGJBSJ_XYZJM_MC--名称
      ,e.XXM as e_JZGJBSJ_XXM--血型码
      ,ek.MC as e_JZGJBSJ_XXM_MC--名称
      ,ek.JC as e_JZGJBSJ_XXM_JC--简称
      ,e.ZP as e_JZGJBSJ_ZP--照片
      ,e.SFZJYXQ as e_JZGJBSJ_SFZJYXQ--身份证件有效期
      ,e.JGH as e_JZGJBSJ_JGH--机构号
      ,e.JTZZ as e_JZGJBSJ_JTZZ--家庭住址
      ,e.XZZ as e_JZGJBSJ_XZZ--现住址
      ,e.HKSZD as e_JZGJBSJ_HKSZD--户口所在地
      ,e.HKXZM as e_JZGJBSJ_HKXZM--户口性质码
      ,e.XLM as e_JZGJBSJ_XLM--学历码
      ,e.GZNY as e_JZGJBSJ_GZNY--参加工作年月
      ,e.LXNY as e_JZGJBSJ_LXNY--来校年月
      ,e.CJNY as e_JZGJBSJ_CJNY--从教年月
      ,e.BZLBM as e_JZGJBSJ_BZLBM--编制类别码
      ,e.DABH as e_JZGJBSJ_DABH--档案编号
      ,e.DAWB as e_JZGJBSJ_DAWB--档案文本
      ,e.TXDZ as e_JZGJBSJ_TXDZ--通信地址
      ,e.LXDH as e_JZGJBSJ_LXDH--联系电话
      ,e.YZBM as e_JZGJBSJ_YZBM--邮政编码
      ,e.DZXX as e_JZGJBSJ_DZXX--电子信箱
      ,e.ZYDZ as e_JZGJBSJ_ZYDZ--主页地址
      ,e.TC as e_JZGJBSJ_TC--特长
      ,e.GWZYM as e_JZGJBSJ_GWZYM--岗位职业码
      ,e.ZYRKXD as e_JZGJBSJ_ZYRKXD--主要任课学段

FROM dbo.EDU_ZXBG_05_01_WJXH AS a LEFT OUTER JOIN
      dbo.EDU_ZXXX_01_01_ZXXX AS b ON a.SCHOOLID = b.ID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZXBG_01_01_WJJBSJ AS c ON a.WJID = c.ID /*文件ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZXJZ_01_01_JZGJBSJ AS d ON a.XHSPRID = d.ID /*销毁审批人ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZXJZ_01_01_JZGJBSJ AS e ON a.JBRID = e.ID /*经办人ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_GB_WXBMZJ AS cb ON c.MJM = cb.DM /*密级码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JJCD AS cc ON c.JJCDM = cc.DM /*紧急程度码*/ LEFT OUTER JOIN
      dbo.EDU_JY_WJFL AS cd ON c.WJFLM = cd.DM /*文件分类码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS db ON d.XBM = db.DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS dc ON d.CSDM = dc.DM /*出生地码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS dd ON d.MZM = dd.DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS de ON d.GJDQM = de.DM /*国籍/地区码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS df ON d.SFZJLXM = df.DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS dg ON d.GATQWM = dg.DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS dh ON d.ZZMMM = dh.DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS di ON d.JKZKM = di.DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS dj ON d.XYZJM = dj.DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS dk ON d.XXM = dk.DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS eb ON e.XBM = eb.DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS ec ON e.CSDM = ec.DM /*出生地码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS ed ON e.MZM = ed.DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS ee ON e.GJDQM = ee.DM /*国籍/地区码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS ef ON e.SFZJLXM = ef.DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS eg ON e.GATQWM = eg.DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS eh ON e.ZZMMM = eh.DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS ei ON e.JKZKM = ei.DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS ej ON e.XYZJM = ej.DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS ek ON e.XXM = ek.DM /*血型码*/
GO

--文件借阅数据类表
CREATE VIEW [dbo].[VIEW_EDU_ZXBG_06_01_WJJQ_DISP]
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
      ,b.XXDM as b_ZXXX_XXDM--学校代码
      ,b.XXMC as b_ZXXX_XXMC--学校名称
      ,b.XXYWMC as b_ZXXX_XXYWMC--学校英文名称
      ,b.XXDZ as b_ZXXX_XXDZ--学校地址
      ,b.XXYZBM as b_ZXXX_XXYZBM--学校邮政编码
      ,b.XZQHM as b_ZXXX_XZQHM--行政区划码
      ,b.JXNY as b_ZXXX_JXNY--建校年月
      ,b.XQR as b_ZXXX_XQR--校庆日
      ,b.XXBXLXM as b_ZXXX_XXBXLXM--学校办学类型码
      ,b.XXZGBMM as b_ZXXX_XXZGBMM--学校主管部门码
      ,b.FDDBRH as b_ZXXX_FDDBRH--法定代表人号
      ,b.FRZSH as b_ZXXX_FRZSH--法人证书号
      ,b.XZGH as b_ZXXX_XZGH--校长工号
      ,b.XZXM as b_ZXXX_XZXM--校长姓名
      ,b.DWFZRH as b_ZXXX_DWFZRH--党委负责人号
      ,b.ZZJGM as b_ZXXX_ZZJGM--组织机构码
      ,b.LXDH as b_ZXXX_LXDH--联系电话
      ,b.CZDH as b_ZXXX_CZDH--传真电话
      ,b.DZXX as b_ZXXX_DZXX--电子信箱
      ,b.ZYDZ as b_ZXXX_ZYDZ--主页地址
      ,b.LSYG as b_ZXXX_LSYG--历史沿革
      ,b.XXBBM as b_ZXXX_XXBBM--学校办别码
      ,b.SSZGDWM as b_ZXXX_SSZGDWM--所属主管单位码
      ,b.SZDCXLXM as b_ZXXX_SZDCXLXM--所在地城乡类型码
      ,b.SZDJJSXM as b_ZXXX_SZDJJSXM--所在地经济属性码
      ,b.SZDMZSX as b_ZXXX_SZDMZSX--所在地民族属性
      ,b.XXXZ as b_ZXXX_XXXZ--小学学制
      ,b.XXRXNL as b_ZXXX_XXRXNL--小学入学年龄
      ,b.CZXZ as b_ZXXX_CZXZ--初中学制
      ,b.CZRXNL as b_ZXXX_CZRXNL--初中入学年龄
      ,b.GZXZ as b_ZXXX_GZXZ--高中学制
      ,b.ZJXYYM as b_ZXXX_ZJXYYM--主教学语言码
      ,b.FJXYYM as b_ZXXX_FJXYYM--辅教学语言码
      ,b.ZSBJ as b_ZXXX_ZSBJ--招生半径
      ,c.SCHOOLID as c_WJJBSJ_SCHOOLID--学校名
      ,c.WJBH as c_WJJBSJ_WJBH--文件编号
      ,c.WJWH as c_WJJBSJ_WJWH--文件文号
      ,c.BT as c_WJJBSJ_BT--标题
      ,c.ZTC as c_WJJBSJ_ZTC--主题词
      ,c.MJM as c_WJJBSJ_MJM--密级码
      ,cb.HYPYDM as c_WJJBSJ_MJM_HYPYDM--汉语拼音代码
      ,cb.HZDM as c_WJJBSJ_MJM_HZDM--汉字代码
      ,cb.MC as c_WJJBSJ_MJM_MC--名称
      ,c.JJCDM as c_WJJBSJ_JJCDM--紧急程度码
      ,cc.MC as c_WJJBSJ_JJCDM_MC--名称
      ,c.YS as c_WJJBSJ_YS--页数
      ,c.WJFLM as c_WJJBSJ_WJFLM--文件分类码
      ,cd.MC as c_WJJBSJ_WJFLM_MC--名称
      ,cd.SM as c_WJJBSJ_WJFLM_SM--说明
      ,c.ZW as c_WJJBSJ_ZW--正文
      ,c.FJ as c_WJJBSJ_FJ--附件
      ,c.FWRQ as c_WJJBSJ_FWRQ--发文日期
      ,c.CSDW as c_WJJBSJ_CSDW--抄送单位
      ,d.SCHOOLID as d_JZGJBSJ_SCHOOLID--学校名
      ,d.GH as d_JZGJBSJ_GH--工号
      ,d.XM as d_JZGJBSJ_XM--姓名
      ,d.YWXM as d_JZGJBSJ_YWXM--英文姓名
      ,d.XMPY as d_JZGJBSJ_XMPY--姓名拼音
      ,d.CYM as d_JZGJBSJ_CYM--曾用名
      ,d.XBM as d_JZGJBSJ_XBM--性别码
      ,db.MC as d_JZGJBSJ_XBM_MC--名称
      ,d.CSRQ as d_JZGJBSJ_CSRQ--出生日期
      ,d.CSDM as d_JZGJBSJ_CSDM--出生地码
      ,dc.MC as d_JZGJBSJ_CSDM_MC--名称
      ,d.JG as d_JZGJBSJ_JG--籍贯
      ,d.MZM as d_JZGJBSJ_MZM--民族码
      ,dd.MZMC as d_JZGJBSJ_MZM_MZMC--民族名称
      ,dd.ZMDM as d_JZGJBSJ_MZM_ZMDM--字母代码
      ,d.GJDQM as d_JZGJBSJ_GJDQM--国籍/地区码
      ,de.GJDQMCJC as d_JZGJBSJ_GJDQM_GJDQMCJC--国家/地区名称简称
      ,de.EZMDM as d_JZGJBSJ_GJDQM_EZMDM--二字母代码
      ,de.SZMDM as d_JZGJBSJ_GJDQM_SZMDM--三字母代码
      ,d.SFZJLXM as d_JZGJBSJ_SFZJLXM--身份证件类型码
      ,df.MC as d_JZGJBSJ_SFZJLXM_MC--名称
      ,d.SFZJH as d_JZGJBSJ_SFZJH--身份证件号
      ,d.HYZKM as d_JZGJBSJ_HYZKM--婚姻状况码
      ,d.GATQWM as d_JZGJBSJ_GATQWM--港澳台侨外码
      ,dg.MC as d_JZGJBSJ_GATQWM_MC--名称
      ,dg.SM as d_JZGJBSJ_GATQWM_SM--说明
      ,d.ZZMMM as d_JZGJBSJ_ZZMMM--政治面貌码
      ,dh.MC as d_JZGJBSJ_ZZMMM_MC--名称
      ,dh.JC as d_JZGJBSJ_ZZMMM_JC--简称
      ,d.JKZKM as d_JZGJBSJ_JKZKM--健康状况码
      ,di.MC as d_JZGJBSJ_JKZKM_MC--名称
      ,di.SM as d_JZGJBSJ_JKZKM_SM--说明
      ,d.XYZJM as d_JZGJBSJ_XYZJM--信仰宗教码
      ,dj.MC as d_JZGJBSJ_XYZJM_MC--名称
      ,d.XXM as d_JZGJBSJ_XXM--血型码
      ,dk.MC as d_JZGJBSJ_XXM_MC--名称
      ,dk.JC as d_JZGJBSJ_XXM_JC--简称
      ,d.ZP as d_JZGJBSJ_ZP--照片
      ,d.SFZJYXQ as d_JZGJBSJ_SFZJYXQ--身份证件有效期
      ,d.JGH as d_JZGJBSJ_JGH--机构号
      ,d.JTZZ as d_JZGJBSJ_JTZZ--家庭住址
      ,d.XZZ as d_JZGJBSJ_XZZ--现住址
      ,d.HKSZD as d_JZGJBSJ_HKSZD--户口所在地
      ,d.HKXZM as d_JZGJBSJ_HKXZM--户口性质码
      ,d.XLM as d_JZGJBSJ_XLM--学历码
      ,d.GZNY as d_JZGJBSJ_GZNY--参加工作年月
      ,d.LXNY as d_JZGJBSJ_LXNY--来校年月
      ,d.CJNY as d_JZGJBSJ_CJNY--从教年月
      ,d.BZLBM as d_JZGJBSJ_BZLBM--编制类别码
      ,d.DABH as d_JZGJBSJ_DABH--档案编号
      ,d.DAWB as d_JZGJBSJ_DAWB--档案文本
      ,d.TXDZ as d_JZGJBSJ_TXDZ--通信地址
      ,d.LXDH as d_JZGJBSJ_LXDH--联系电话
      ,d.YZBM as d_JZGJBSJ_YZBM--邮政编码
      ,d.DZXX as d_JZGJBSJ_DZXX--电子信箱
      ,d.ZYDZ as d_JZGJBSJ_ZYDZ--主页地址
      ,d.TC as d_JZGJBSJ_TC--特长
      ,d.GWZYM as d_JZGJBSJ_GWZYM--岗位职业码
      ,d.ZYRKXD as d_JZGJBSJ_ZYRKXD--主要任课学段
      ,e.SCHOOLID as e_JZGJBSJ_SCHOOLID--学校名
      ,e.GH as e_JZGJBSJ_GH--工号
      ,e.XM as e_JZGJBSJ_XM--姓名
      ,e.YWXM as e_JZGJBSJ_YWXM--英文姓名
      ,e.XMPY as e_JZGJBSJ_XMPY--姓名拼音
      ,e.CYM as e_JZGJBSJ_CYM--曾用名
      ,e.XBM as e_JZGJBSJ_XBM--性别码
      ,eb.MC as e_JZGJBSJ_XBM_MC--名称
      ,e.CSRQ as e_JZGJBSJ_CSRQ--出生日期
      ,e.CSDM as e_JZGJBSJ_CSDM--出生地码
      ,ec.MC as e_JZGJBSJ_CSDM_MC--名称
      ,e.JG as e_JZGJBSJ_JG--籍贯
      ,e.MZM as e_JZGJBSJ_MZM--民族码
      ,ed.MZMC as e_JZGJBSJ_MZM_MZMC--民族名称
      ,ed.ZMDM as e_JZGJBSJ_MZM_ZMDM--字母代码
      ,e.GJDQM as e_JZGJBSJ_GJDQM--国籍/地区码
      ,ee.GJDQMCJC as e_JZGJBSJ_GJDQM_GJDQMCJC--国家/地区名称简称
      ,ee.EZMDM as e_JZGJBSJ_GJDQM_EZMDM--二字母代码
      ,ee.SZMDM as e_JZGJBSJ_GJDQM_SZMDM--三字母代码
      ,e.SFZJLXM as e_JZGJBSJ_SFZJLXM--身份证件类型码
      ,ef.MC as e_JZGJBSJ_SFZJLXM_MC--名称
      ,e.SFZJH as e_JZGJBSJ_SFZJH--身份证件号
      ,e.HYZKM as e_JZGJBSJ_HYZKM--婚姻状况码
      ,e.GATQWM as e_JZGJBSJ_GATQWM--港澳台侨外码
      ,eg.MC as e_JZGJBSJ_GATQWM_MC--名称
      ,eg.SM as e_JZGJBSJ_GATQWM_SM--说明
      ,e.ZZMMM as e_JZGJBSJ_ZZMMM--政治面貌码
      ,eh.MC as e_JZGJBSJ_ZZMMM_MC--名称
      ,eh.JC as e_JZGJBSJ_ZZMMM_JC--简称
      ,e.JKZKM as e_JZGJBSJ_JKZKM--健康状况码
      ,ei.MC as e_JZGJBSJ_JKZKM_MC--名称
      ,ei.SM as e_JZGJBSJ_JKZKM_SM--说明
      ,e.XYZJM as e_JZGJBSJ_XYZJM--信仰宗教码
      ,ej.MC as e_JZGJBSJ_XYZJM_MC--名称
      ,e.XXM as e_JZGJBSJ_XXM--血型码
      ,ek.MC as e_JZGJBSJ_XXM_MC--名称
      ,ek.JC as e_JZGJBSJ_XXM_JC--简称
      ,e.ZP as e_JZGJBSJ_ZP--照片
      ,e.SFZJYXQ as e_JZGJBSJ_SFZJYXQ--身份证件有效期
      ,e.JGH as e_JZGJBSJ_JGH--机构号
      ,e.JTZZ as e_JZGJBSJ_JTZZ--家庭住址
      ,e.XZZ as e_JZGJBSJ_XZZ--现住址
      ,e.HKSZD as e_JZGJBSJ_HKSZD--户口所在地
      ,e.HKXZM as e_JZGJBSJ_HKXZM--户口性质码
      ,e.XLM as e_JZGJBSJ_XLM--学历码
      ,e.GZNY as e_JZGJBSJ_GZNY--参加工作年月
      ,e.LXNY as e_JZGJBSJ_LXNY--来校年月
      ,e.CJNY as e_JZGJBSJ_CJNY--从教年月
      ,e.BZLBM as e_JZGJBSJ_BZLBM--编制类别码
      ,e.DABH as e_JZGJBSJ_DABH--档案编号
      ,e.DAWB as e_JZGJBSJ_DAWB--档案文本
      ,e.TXDZ as e_JZGJBSJ_TXDZ--通信地址
      ,e.LXDH as e_JZGJBSJ_LXDH--联系电话
      ,e.YZBM as e_JZGJBSJ_YZBM--邮政编码
      ,e.DZXX as e_JZGJBSJ_DZXX--电子信箱
      ,e.ZYDZ as e_JZGJBSJ_ZYDZ--主页地址
      ,e.TC as e_JZGJBSJ_TC--特长
      ,e.GWZYM as e_JZGJBSJ_GWZYM--岗位职业码
      ,e.ZYRKXD as e_JZGJBSJ_ZYRKXD--主要任课学段

FROM dbo.EDU_ZXBG_06_01_WJJQ AS a LEFT OUTER JOIN
      dbo.EDU_ZXXX_01_01_ZXXX AS b ON a.SCHOOLID = b.ID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZXBG_01_01_WJJBSJ AS c ON a.WJID = c.ID /*文件ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZXJZ_01_01_JZGJBSJ AS d ON a.JYSPRID = d.ID /*借阅审批人ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZXJZ_01_01_JZGJBSJ AS e ON a.JYJBRID = e.ID /*借阅经办人ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_GB_WXBMZJ AS cb ON c.MJM = cb.DM /*密级码*/ LEFT OUTER JOIN
      dbo.EDU_JY_JJCD AS cc ON c.JJCDM = cc.DM /*紧急程度码*/ LEFT OUTER JOIN
      dbo.EDU_JY_WJFL AS cd ON c.WJFLM = cd.DM /*文件分类码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS db ON d.XBM = db.DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS dc ON d.CSDM = dc.DM /*出生地码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS dd ON d.MZM = dd.DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS de ON d.GJDQM = de.DM /*国籍/地区码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS df ON d.SFZJLXM = df.DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS dg ON d.GATQWM = dg.DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS dh ON d.ZZMMM = dh.DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS di ON d.JKZKM = di.DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS dj ON d.XYZJM = dj.DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS dk ON d.XXM = dk.DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS eb ON e.XBM = eb.DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS ec ON e.CSDM = ec.DM /*出生地码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS ed ON e.MZM = ed.DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS ee ON e.GJDQM = ee.DM /*国籍/地区码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS ef ON e.SFZJLXM = ef.DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS eg ON e.GATQWM = eg.DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS eh ON e.ZZMMM = eh.DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS ei ON e.JKZKM = ei.DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS ej ON e.XYZJM = ej.DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS ek ON e.XXM = ek.DM /*血型码*/
GO

--数据发布类表
CREATE VIEW [dbo].[VIEW_EDU_ZXBG_12_A01_SJFB_DISP]
AS
SELECT a.[ID]--数据发布ID
      ,a.[SCHOOLID]--学校名
      ,a.[WEBID]--网站ID
      ,a.[FBRID]--发布人ID
      ,a.[FBBZRID]--发布批准人ID
      ,a.[FBH]--发布号
      ,a.[XXBT]--数据标题
      ,a.[FBLMH]--发布栏目号
      ,a.[SJNR]--数据内容
      ,a.[FJS]--附件数
      ,a.[FBRQ]--发布日期
      ,a.[FBDW]--发布单位号
      ,a.[FBRGH]--发布人工号
      ,a.[FBFW]--发布范围
      ,a.[FBBZRH]--发布批准人号
      ,a.[SJZT]--数据状态
      ,b.XXDM as b_ZXXX_XXDM--学校代码
      ,b.XXMC as b_ZXXX_XXMC--学校名称
      ,b.XXYWMC as b_ZXXX_XXYWMC--学校英文名称
      ,b.XXDZ as b_ZXXX_XXDZ--学校地址
      ,b.XXYZBM as b_ZXXX_XXYZBM--学校邮政编码
      ,b.XZQHM as b_ZXXX_XZQHM--行政区划码
      ,b.JXNY as b_ZXXX_JXNY--建校年月
      ,b.XQR as b_ZXXX_XQR--校庆日
      ,b.XXBXLXM as b_ZXXX_XXBXLXM--学校办学类型码
      ,b.XXZGBMM as b_ZXXX_XXZGBMM--学校主管部门码
      ,b.FDDBRH as b_ZXXX_FDDBRH--法定代表人号
      ,b.FRZSH as b_ZXXX_FRZSH--法人证书号
      ,b.XZGH as b_ZXXX_XZGH--校长工号
      ,b.XZXM as b_ZXXX_XZXM--校长姓名
      ,b.DWFZRH as b_ZXXX_DWFZRH--党委负责人号
      ,b.ZZJGM as b_ZXXX_ZZJGM--组织机构码
      ,b.LXDH as b_ZXXX_LXDH--联系电话
      ,b.CZDH as b_ZXXX_CZDH--传真电话
      ,b.DZXX as b_ZXXX_DZXX--电子信箱
      ,b.ZYDZ as b_ZXXX_ZYDZ--主页地址
      ,b.LSYG as b_ZXXX_LSYG--历史沿革
      ,b.XXBBM as b_ZXXX_XXBBM--学校办别码
      ,b.SSZGDWM as b_ZXXX_SSZGDWM--所属主管单位码
      ,b.SZDCXLXM as b_ZXXX_SZDCXLXM--所在地城乡类型码
      ,b.SZDJJSXM as b_ZXXX_SZDJJSXM--所在地经济属性码
      ,b.SZDMZSX as b_ZXXX_SZDMZSX--所在地民族属性
      ,b.XXXZ as b_ZXXX_XXXZ--小学学制
      ,b.XXRXNL as b_ZXXX_XXRXNL--小学入学年龄
      ,b.CZXZ as b_ZXXX_CZXZ--初中学制
      ,b.CZRXNL as b_ZXXX_CZRXNL--初中入学年龄
      ,b.GZXZ as b_ZXXX_GZXZ--高中学制
      ,b.ZJXYYM as b_ZXXX_ZJXYYM--主教学语言码
      ,b.FJXYYM as b_ZXXX_FJXYYM--辅教学语言码
      ,b.ZSBJ as b_ZXXX_ZSBJ--招生半径
      ,c.SCHOOLID as c_WZPZ_SCHOOLID--学校名
      ,c.WEBNAME as c_WZPZ_WEBNAME--网站名
      ,c.STATUID as c_WZPZ_STATUID--是否开启
      ,c.WEBURL as c_WZPZ_WEBURL--网址
      ,c.CSSID as c_WZPZ_CSSID--网站样式

FROM dbo.EDU_ZXBG_12_A01_SJFB AS a LEFT OUTER JOIN
      dbo.EDU_ZXXX_01_01_ZXXX AS b ON a.SCHOOLID = b.ID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_WZXT_MHXT_WZPZ AS c ON a.WEBID = c.WEBID /*网站ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/
GO

--单位数据表
CREATE VIEW [dbo].[VIEW_EDU_ZXBG_13_A01_DWSJ_DISP]
AS
SELECT a.[ID]--单位ID
      ,a.[SCHOOLID]--学校ID
      ,a.[SJDWID]--上级单位ID
      ,a.[DWFZRID]--单位负责人ID
      ,a.[DWMC]--单位名称
      ,a.[DWCYIDLB]--单位成员ID列表
      ,b.XXDM as b_ZXXX_XXDM--学校代码
      ,b.XXMC as b_ZXXX_XXMC--学校名称
      ,b.XXYWMC as b_ZXXX_XXYWMC--学校英文名称
      ,b.XXDZ as b_ZXXX_XXDZ--学校地址
      ,b.XXYZBM as b_ZXXX_XXYZBM--学校邮政编码
      ,b.XZQHM as b_ZXXX_XZQHM--行政区划码
      ,b.JXNY as b_ZXXX_JXNY--建校年月
      ,b.XQR as b_ZXXX_XQR--校庆日
      ,b.XXBXLXM as b_ZXXX_XXBXLXM--学校办学类型码
      ,b.XXZGBMM as b_ZXXX_XXZGBMM--学校主管部门码
      ,b.FDDBRH as b_ZXXX_FDDBRH--法定代表人号
      ,b.FRZSH as b_ZXXX_FRZSH--法人证书号
      ,b.XZGH as b_ZXXX_XZGH--校长工号
      ,b.XZXM as b_ZXXX_XZXM--校长姓名
      ,b.DWFZRH as b_ZXXX_DWFZRH--党委负责人号
      ,b.ZZJGM as b_ZXXX_ZZJGM--组织机构码
      ,b.LXDH as b_ZXXX_LXDH--联系电话
      ,b.CZDH as b_ZXXX_CZDH--传真电话
      ,b.DZXX as b_ZXXX_DZXX--电子信箱
      ,b.ZYDZ as b_ZXXX_ZYDZ--主页地址
      ,b.LSYG as b_ZXXX_LSYG--历史沿革
      ,b.XXBBM as b_ZXXX_XXBBM--学校办别码
      ,b.SSZGDWM as b_ZXXX_SSZGDWM--所属主管单位码
      ,b.SZDCXLXM as b_ZXXX_SZDCXLXM--所在地城乡类型码
      ,b.SZDJJSXM as b_ZXXX_SZDJJSXM--所在地经济属性码
      ,b.SZDMZSX as b_ZXXX_SZDMZSX--所在地民族属性
      ,b.XXXZ as b_ZXXX_XXXZ--小学学制
      ,b.XXRXNL as b_ZXXX_XXRXNL--小学入学年龄
      ,b.CZXZ as b_ZXXX_CZXZ--初中学制
      ,b.CZRXNL as b_ZXXX_CZRXNL--初中入学年龄
      ,b.GZXZ as b_ZXXX_GZXZ--高中学制
      ,b.ZJXYYM as b_ZXXX_ZJXYYM--主教学语言码
      ,b.FJXYYM as b_ZXXX_FJXYYM--辅教学语言码
      ,b.ZSBJ as b_ZXXX_ZSBJ--招生半径
      ,c.SCHOOLID as c_DWSJ_SCHOOLID--学校ID
      ,c.SJDWID as c_DWSJ_SJDWID--上级单位ID
      ,c.DWFZRID as c_DWSJ_DWFZRID--单位负责人ID
      ,c.DWMC as c_DWSJ_DWMC--单位名称
      ,c.DWCYIDLB as c_DWSJ_DWCYIDLB--单位成员ID列表
      ,d.SCHOOLID as d_JZGJBSJ_SCHOOLID--学校名
      ,d.GH as d_JZGJBSJ_GH--工号
      ,d.XM as d_JZGJBSJ_XM--姓名
      ,d.YWXM as d_JZGJBSJ_YWXM--英文姓名
      ,d.XMPY as d_JZGJBSJ_XMPY--姓名拼音
      ,d.CYM as d_JZGJBSJ_CYM--曾用名
      ,d.XBM as d_JZGJBSJ_XBM--性别码
      ,db.MC as d_JZGJBSJ_XBM_MC--名称
      ,d.CSRQ as d_JZGJBSJ_CSRQ--出生日期
      ,d.CSDM as d_JZGJBSJ_CSDM--出生地码
      ,dc.MC as d_JZGJBSJ_CSDM_MC--名称
      ,d.JG as d_JZGJBSJ_JG--籍贯
      ,d.MZM as d_JZGJBSJ_MZM--民族码
      ,dd.MZMC as d_JZGJBSJ_MZM_MZMC--民族名称
      ,dd.ZMDM as d_JZGJBSJ_MZM_ZMDM--字母代码
      ,d.GJDQM as d_JZGJBSJ_GJDQM--国籍/地区码
      ,de.GJDQMCJC as d_JZGJBSJ_GJDQM_GJDQMCJC--国家/地区名称简称
      ,de.EZMDM as d_JZGJBSJ_GJDQM_EZMDM--二字母代码
      ,de.SZMDM as d_JZGJBSJ_GJDQM_SZMDM--三字母代码
      ,d.SFZJLXM as d_JZGJBSJ_SFZJLXM--身份证件类型码
      ,df.MC as d_JZGJBSJ_SFZJLXM_MC--名称
      ,d.SFZJH as d_JZGJBSJ_SFZJH--身份证件号
      ,d.HYZKM as d_JZGJBSJ_HYZKM--婚姻状况码
      ,d.GATQWM as d_JZGJBSJ_GATQWM--港澳台侨外码
      ,dg.MC as d_JZGJBSJ_GATQWM_MC--名称
      ,dg.SM as d_JZGJBSJ_GATQWM_SM--说明
      ,d.ZZMMM as d_JZGJBSJ_ZZMMM--政治面貌码
      ,dh.MC as d_JZGJBSJ_ZZMMM_MC--名称
      ,dh.JC as d_JZGJBSJ_ZZMMM_JC--简称
      ,d.JKZKM as d_JZGJBSJ_JKZKM--健康状况码
      ,di.MC as d_JZGJBSJ_JKZKM_MC--名称
      ,di.SM as d_JZGJBSJ_JKZKM_SM--说明
      ,d.XYZJM as d_JZGJBSJ_XYZJM--信仰宗教码
      ,dj.MC as d_JZGJBSJ_XYZJM_MC--名称
      ,d.XXM as d_JZGJBSJ_XXM--血型码
      ,dk.MC as d_JZGJBSJ_XXM_MC--名称
      ,dk.JC as d_JZGJBSJ_XXM_JC--简称
      ,d.ZP as d_JZGJBSJ_ZP--照片
      ,d.SFZJYXQ as d_JZGJBSJ_SFZJYXQ--身份证件有效期
      ,d.JGH as d_JZGJBSJ_JGH--机构号
      ,d.JTZZ as d_JZGJBSJ_JTZZ--家庭住址
      ,d.XZZ as d_JZGJBSJ_XZZ--现住址
      ,d.HKSZD as d_JZGJBSJ_HKSZD--户口所在地
      ,d.HKXZM as d_JZGJBSJ_HKXZM--户口性质码
      ,d.XLM as d_JZGJBSJ_XLM--学历码
      ,d.GZNY as d_JZGJBSJ_GZNY--参加工作年月
      ,d.LXNY as d_JZGJBSJ_LXNY--来校年月
      ,d.CJNY as d_JZGJBSJ_CJNY--从教年月
      ,d.BZLBM as d_JZGJBSJ_BZLBM--编制类别码
      ,d.DABH as d_JZGJBSJ_DABH--档案编号
      ,d.DAWB as d_JZGJBSJ_DAWB--档案文本
      ,d.TXDZ as d_JZGJBSJ_TXDZ--通信地址
      ,d.LXDH as d_JZGJBSJ_LXDH--联系电话
      ,d.YZBM as d_JZGJBSJ_YZBM--邮政编码
      ,d.DZXX as d_JZGJBSJ_DZXX--电子信箱
      ,d.ZYDZ as d_JZGJBSJ_ZYDZ--主页地址
      ,d.TC as d_JZGJBSJ_TC--特长
      ,d.GWZYM as d_JZGJBSJ_GWZYM--岗位职业码
      ,d.ZYRKXD as d_JZGJBSJ_ZYRKXD--主要任课学段

FROM dbo.EDU_ZXBG_13_A01_DWSJ AS a LEFT OUTER JOIN
      dbo.EDU_ZXXX_01_01_ZXXX AS b ON a.SCHOOLID = b.ID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZXBG_13_A01_DWSJ AS c ON a.SJDWID = c.ID /*上级单位ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZXJZ_01_01_JZGJBSJ AS d ON a.DWFZRID = d.ID /*单位负责人ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS db ON d.XBM = db.DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS dc ON d.CSDM = dc.DM /*出生地码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS dd ON d.MZM = dd.DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS de ON d.GJDQM = de.DM /*国籍/地区码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS df ON d.SFZJLXM = df.DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS dg ON d.GATQWM = dg.DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS dh ON d.ZZMMM = dh.DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS di ON d.JKZKM = di.DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS dj ON d.XYZJM = dj.DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS dk ON d.XXM = dk.DM /*血型码*/
GO

--值周岗位数据表
CREATE VIEW [dbo].[VIEW_EDU_ZXDY_04_A01_ZZGW_DISP]
AS
SELECT a.[ID]--值周岗位表ID
      ,a.[SCHOOLID]--学校ID
      ,a.[XQID]--学期ID
      ,a.[GWGZNR]--岗位工作内容
      ,b.XXDM as b_ZXXX_XXDM--学校代码
      ,b.XXMC as b_ZXXX_XXMC--学校名称
      ,b.XXYWMC as b_ZXXX_XXYWMC--学校英文名称
      ,b.XXDZ as b_ZXXX_XXDZ--学校地址
      ,b.XXYZBM as b_ZXXX_XXYZBM--学校邮政编码
      ,b.XZQHM as b_ZXXX_XZQHM--行政区划码
      ,b.JXNY as b_ZXXX_JXNY--建校年月
      ,b.XQR as b_ZXXX_XQR--校庆日
      ,b.XXBXLXM as b_ZXXX_XXBXLXM--学校办学类型码
      ,b.XXZGBMM as b_ZXXX_XXZGBMM--学校主管部门码
      ,b.FDDBRH as b_ZXXX_FDDBRH--法定代表人号
      ,b.FRZSH as b_ZXXX_FRZSH--法人证书号
      ,b.XZGH as b_ZXXX_XZGH--校长工号
      ,b.XZXM as b_ZXXX_XZXM--校长姓名
      ,b.DWFZRH as b_ZXXX_DWFZRH--党委负责人号
      ,b.ZZJGM as b_ZXXX_ZZJGM--组织机构码
      ,b.LXDH as b_ZXXX_LXDH--联系电话
      ,b.CZDH as b_ZXXX_CZDH--传真电话
      ,b.DZXX as b_ZXXX_DZXX--电子信箱
      ,b.ZYDZ as b_ZXXX_ZYDZ--主页地址
      ,b.LSYG as b_ZXXX_LSYG--历史沿革
      ,b.XXBBM as b_ZXXX_XXBBM--学校办别码
      ,b.SSZGDWM as b_ZXXX_SSZGDWM--所属主管单位码
      ,b.SZDCXLXM as b_ZXXX_SZDCXLXM--所在地城乡类型码
      ,b.SZDJJSXM as b_ZXXX_SZDJJSXM--所在地经济属性码
      ,b.SZDMZSX as b_ZXXX_SZDMZSX--所在地民族属性
      ,b.XXXZ as b_ZXXX_XXXZ--小学学制
      ,b.XXRXNL as b_ZXXX_XXRXNL--小学入学年龄
      ,b.CZXZ as b_ZXXX_CZXZ--初中学制
      ,b.CZRXNL as b_ZXXX_CZRXNL--初中入学年龄
      ,b.GZXZ as b_ZXXX_GZXZ--高中学制
      ,b.ZJXYYM as b_ZXXX_ZJXYYM--主教学语言码
      ,b.FJXYYM as b_ZXXX_FJXYYM--辅教学语言码
      ,b.ZSBJ as b_ZXXX_ZSBJ--招生半径
      ,c.SCHOOLID as c_ZXXQ_SCHOOLID--学校名
      ,c.XNID as c_ZXXQ_XNID--学年
      ,c.XQM as c_ZXXQ_XQM--学期码
      ,c.XQMC as c_ZXXQ_XQMC--学期名称
      ,c.XQKSRQ as c_ZXXQ_XQKSRQ--学期开始日期
      ,c.XQJSRQ as c_ZXXQ_XQJSRQ--学期结束日期

FROM dbo.EDU_ZXDY_04_A01_ZZGW AS a LEFT OUTER JOIN
      dbo.EDU_ZXXX_01_01_ZXXX AS b ON a.SCHOOLID = b.ID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_05_A01_ZXXQ AS c ON a.XQID = c.ID /*学期ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/
GO

--值周人员安排表
CREATE VIEW [dbo].[VIEW_EDU_ZXDY_04_A02_ZZRYAP_DISP]
AS
SELECT a.[ID]--值周人员安排表ID
      ,a.[SCHOOLID]--学校ID
      ,a.[XQID]--学期ID
      ,a.[ZCID]--周次ID
      ,a.[KSRQ]--开始日期
      ,a.[JSRQ]--结束日期
      ,a.[ZZBJ]--值周班级班号
      ,a.[ZZID]--组长ID
      ,a.[ZYIDLB]--组员ID列表
      ,b.XXDM as b_ZXXX_XXDM--学校代码
      ,b.XXMC as b_ZXXX_XXMC--学校名称
      ,b.XXYWMC as b_ZXXX_XXYWMC--学校英文名称
      ,b.XXDZ as b_ZXXX_XXDZ--学校地址
      ,b.XXYZBM as b_ZXXX_XXYZBM--学校邮政编码
      ,b.XZQHM as b_ZXXX_XZQHM--行政区划码
      ,b.JXNY as b_ZXXX_JXNY--建校年月
      ,b.XQR as b_ZXXX_XQR--校庆日
      ,b.XXBXLXM as b_ZXXX_XXBXLXM--学校办学类型码
      ,b.XXZGBMM as b_ZXXX_XXZGBMM--学校主管部门码
      ,b.FDDBRH as b_ZXXX_FDDBRH--法定代表人号
      ,b.FRZSH as b_ZXXX_FRZSH--法人证书号
      ,b.XZGH as b_ZXXX_XZGH--校长工号
      ,b.XZXM as b_ZXXX_XZXM--校长姓名
      ,b.DWFZRH as b_ZXXX_DWFZRH--党委负责人号
      ,b.ZZJGM as b_ZXXX_ZZJGM--组织机构码
      ,b.LXDH as b_ZXXX_LXDH--联系电话
      ,b.CZDH as b_ZXXX_CZDH--传真电话
      ,b.DZXX as b_ZXXX_DZXX--电子信箱
      ,b.ZYDZ as b_ZXXX_ZYDZ--主页地址
      ,b.LSYG as b_ZXXX_LSYG--历史沿革
      ,b.XXBBM as b_ZXXX_XXBBM--学校办别码
      ,b.SSZGDWM as b_ZXXX_SSZGDWM--所属主管单位码
      ,b.SZDCXLXM as b_ZXXX_SZDCXLXM--所在地城乡类型码
      ,b.SZDJJSXM as b_ZXXX_SZDJJSXM--所在地经济属性码
      ,b.SZDMZSX as b_ZXXX_SZDMZSX--所在地民族属性
      ,b.XXXZ as b_ZXXX_XXXZ--小学学制
      ,b.XXRXNL as b_ZXXX_XXRXNL--小学入学年龄
      ,b.CZXZ as b_ZXXX_CZXZ--初中学制
      ,b.CZRXNL as b_ZXXX_CZRXNL--初中入学年龄
      ,b.GZXZ as b_ZXXX_GZXZ--高中学制
      ,b.ZJXYYM as b_ZXXX_ZJXYYM--主教学语言码
      ,b.FJXYYM as b_ZXXX_FJXYYM--辅教学语言码
      ,b.ZSBJ as b_ZXXX_ZSBJ--招生半径
      ,c.SCHOOLID as c_ZXXQ_SCHOOLID--学校名
      ,c.XNID as c_ZXXQ_XNID--学年
      ,c.XQM as c_ZXXQ_XQM--学期码
      ,c.XQMC as c_ZXXQ_XQMC--学期名称
      ,c.XQKSRQ as c_ZXXQ_XQKSRQ--学期开始日期
      ,c.XQJSRQ as c_ZXXQ_XQJSRQ--学期结束日期
      ,d.SCHOOLID as d_ZZZC_SCHOOLID--学校ID
      ,d.XQID as d_ZZZC_XQID--学期ID
      ,d.ZCM as d_ZZZC_ZCM--周次名
      ,d.XQKSRQ as d_ZZZC_XQKSRQ--开始日期
      ,d.XQJSRQ as d_ZZZC_XQJSRQ--结束日期
      ,e.SCHOOLID as e_BJ_SCHOOLID--学校名
      ,e.NJ as e_BJ_NJ--年级号
      ,e.BJ as e_BJ_BJ--班级名称
      ,e.JBNY as e_BJ_JBNY--建班年月
      ,e.BZRGH as e_BJ_BZRGH--班主任工号
      ,e.BZXH as e_BJ_BZXH--班长学号
      ,e.BJRYCH as e_BJ_BJRYCH--班级荣誉称号
      ,e.XZ as e_BJ_XZ--学制
      ,e.BJLXM as e_BJ_BJLXM--班级类型码
      ,e.WLLX as e_BJ_WLLX--文理类型
      ,e.BYRQ as e_BJ_BYRQ--毕业日期
      ,e.SFSSMZSYJXB as e_BJ_SFSSMZSYJXB--是否少数民族双语教学班
      ,e.SYJXMSM as e_BJ_SYJXMSM--双语教学模式码
      ,f.SCHOOLID as f_USER_SCHOOLID--学校ID
      ,f.APPID as f_USER_APPID--应用ID
      ,f.PWD as f_USER_PWD--密码
      ,f.STATUS as f_USER_STATUS--用户状态
      ,f.USERTYPE as f_USER_USERTYPE--用户类别
      ,f.USERID as f_USER_USERID--用户ID
      ,f.ROLEIDLst as f_USER_ROLEIDLst--用户角色
      ,f.XM as f_USER_XM--姓名
      ,f.XB as f_USER_XB--性别
      ,f.QQ as f_USER_QQ--QQ
      ,f.DZYJ as f_USER_DZYJ--电子邮件
      ,f.LXDH as f_USER_LXDH--联系电话
      ,f.ZJDLSJ as f_USER_ZJDLSJ--最近一次登录时间
      ,f.DLCGCS as f_USER_DLCGCS--登录成功次数
      ,f.YHCJSJ as f_USER_YHCJSJ--用户创建时间

FROM dbo.EDU_ZXDY_04_A02_ZZRYAP AS a LEFT OUTER JOIN
      dbo.EDU_ZXXX_01_01_ZXXX AS b ON a.SCHOOLID = b.ID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_05_A01_ZXXQ AS c ON a.XQID = c.ID /*学期ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZXDY_04_A06_ZZZC AS d ON a.ZCID = d.ID /*周次ID*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_03_01_BJ AS e ON a.ZZBJ = e.BH /*值周班级班号*/ AND a.SCHOOLID = e.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS f ON a.ZZID = f.LOGINNAME /*组长ID*/ AND a.SCHOOLID = f.SCHOOLID /*学校ID*/
GO

--值周岗位分配表
CREATE VIEW [dbo].[VIEW_EDU_ZXDY_04_A03_ZZGWFP_DISP]
AS
SELECT a.[ID]--值周岗位分配表ID
      ,a.[SCHOOLID]--学校ID
      ,a.[XQID]--学期ID
      ,a.[ZCID]--周次ID
      ,a.[GZR]--工作日
      ,a.[GWID]--岗位ID
      ,a.[JSID]--教师ID
      ,b.XXDM as b_ZXXX_XXDM--学校代码
      ,b.XXMC as b_ZXXX_XXMC--学校名称
      ,b.XXYWMC as b_ZXXX_XXYWMC--学校英文名称
      ,b.XXDZ as b_ZXXX_XXDZ--学校地址
      ,b.XXYZBM as b_ZXXX_XXYZBM--学校邮政编码
      ,b.XZQHM as b_ZXXX_XZQHM--行政区划码
      ,b.JXNY as b_ZXXX_JXNY--建校年月
      ,b.XQR as b_ZXXX_XQR--校庆日
      ,b.XXBXLXM as b_ZXXX_XXBXLXM--学校办学类型码
      ,b.XXZGBMM as b_ZXXX_XXZGBMM--学校主管部门码
      ,b.FDDBRH as b_ZXXX_FDDBRH--法定代表人号
      ,b.FRZSH as b_ZXXX_FRZSH--法人证书号
      ,b.XZGH as b_ZXXX_XZGH--校长工号
      ,b.XZXM as b_ZXXX_XZXM--校长姓名
      ,b.DWFZRH as b_ZXXX_DWFZRH--党委负责人号
      ,b.ZZJGM as b_ZXXX_ZZJGM--组织机构码
      ,b.LXDH as b_ZXXX_LXDH--联系电话
      ,b.CZDH as b_ZXXX_CZDH--传真电话
      ,b.DZXX as b_ZXXX_DZXX--电子信箱
      ,b.ZYDZ as b_ZXXX_ZYDZ--主页地址
      ,b.LSYG as b_ZXXX_LSYG--历史沿革
      ,b.XXBBM as b_ZXXX_XXBBM--学校办别码
      ,b.SSZGDWM as b_ZXXX_SSZGDWM--所属主管单位码
      ,b.SZDCXLXM as b_ZXXX_SZDCXLXM--所在地城乡类型码
      ,b.SZDJJSXM as b_ZXXX_SZDJJSXM--所在地经济属性码
      ,b.SZDMZSX as b_ZXXX_SZDMZSX--所在地民族属性
      ,b.XXXZ as b_ZXXX_XXXZ--小学学制
      ,b.XXRXNL as b_ZXXX_XXRXNL--小学入学年龄
      ,b.CZXZ as b_ZXXX_CZXZ--初中学制
      ,b.CZRXNL as b_ZXXX_CZRXNL--初中入学年龄
      ,b.GZXZ as b_ZXXX_GZXZ--高中学制
      ,b.ZJXYYM as b_ZXXX_ZJXYYM--主教学语言码
      ,b.FJXYYM as b_ZXXX_FJXYYM--辅教学语言码
      ,b.ZSBJ as b_ZXXX_ZSBJ--招生半径
      ,c.SCHOOLID as c_ZXXQ_SCHOOLID--学校名
      ,c.XNID as c_ZXXQ_XNID--学年
      ,c.XQM as c_ZXXQ_XQM--学期码
      ,c.XQMC as c_ZXXQ_XQMC--学期名称
      ,c.XQKSRQ as c_ZXXQ_XQKSRQ--学期开始日期
      ,c.XQJSRQ as c_ZXXQ_XQJSRQ--学期结束日期
      ,d.SCHOOLID as d_ZZZC_SCHOOLID--学校ID
      ,d.XQID as d_ZZZC_XQID--学期ID
      ,d.ZCM as d_ZZZC_ZCM--周次名
      ,d.XQKSRQ as d_ZZZC_XQKSRQ--开始日期
      ,d.XQJSRQ as d_ZZZC_XQJSRQ--结束日期
      ,e.SCHOOLID as e_ZZGW_SCHOOLID--学校ID
      ,e.XQID as e_ZZGW_XQID--学期ID
      ,e.GWGZNR as e_ZZGW_GWGZNR--岗位工作内容
      ,f.SCHOOLID as f_USER_SCHOOLID--学校ID
      ,f.APPID as f_USER_APPID--应用ID
      ,f.PWD as f_USER_PWD--密码
      ,f.STATUS as f_USER_STATUS--用户状态
      ,f.USERTYPE as f_USER_USERTYPE--用户类别
      ,f.USERID as f_USER_USERID--用户ID
      ,f.ROLEIDLst as f_USER_ROLEIDLst--用户角色
      ,f.XM as f_USER_XM--姓名
      ,f.XB as f_USER_XB--性别
      ,f.QQ as f_USER_QQ--QQ
      ,f.DZYJ as f_USER_DZYJ--电子邮件
      ,f.LXDH as f_USER_LXDH--联系电话
      ,f.ZJDLSJ as f_USER_ZJDLSJ--最近一次登录时间
      ,f.DLCGCS as f_USER_DLCGCS--登录成功次数
      ,f.YHCJSJ as f_USER_YHCJSJ--用户创建时间

FROM dbo.EDU_ZXDY_04_A03_ZZGWFP AS a LEFT OUTER JOIN
      dbo.EDU_ZXXX_01_01_ZXXX AS b ON a.SCHOOLID = b.ID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_05_A01_ZXXQ AS c ON a.XQID = c.ID /*学期ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZXDY_04_A06_ZZZC AS d ON a.ZCID = d.ID /*周次ID*/ LEFT OUTER JOIN
      dbo.EDU_ZXDY_04_A01_ZZGW AS e ON a.GWID = e.ID /*岗位ID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS f ON a.JSID = f.LOGINNAME /*教师ID*/ AND a.SCHOOLID = f.SCHOOLID /*学校ID*/
GO

--岗位分配模板表
CREATE VIEW [dbo].[VIEW_EDU_ZXDY_04_A04_GWFPMB_DISP]
AS
SELECT a.[ID]--岗位分配模板表ID
      ,a.[SCHOOLID]--学校ID
      ,a.[MBMC]--模板名称
      ,b.XXDM as b_ZXXX_XXDM--学校代码
      ,b.XXMC as b_ZXXX_XXMC--学校名称
      ,b.XXYWMC as b_ZXXX_XXYWMC--学校英文名称
      ,b.XXDZ as b_ZXXX_XXDZ--学校地址
      ,b.XXYZBM as b_ZXXX_XXYZBM--学校邮政编码
      ,b.XZQHM as b_ZXXX_XZQHM--行政区划码
      ,b.JXNY as b_ZXXX_JXNY--建校年月
      ,b.XQR as b_ZXXX_XQR--校庆日
      ,b.XXBXLXM as b_ZXXX_XXBXLXM--学校办学类型码
      ,b.XXZGBMM as b_ZXXX_XXZGBMM--学校主管部门码
      ,b.FDDBRH as b_ZXXX_FDDBRH--法定代表人号
      ,b.FRZSH as b_ZXXX_FRZSH--法人证书号
      ,b.XZGH as b_ZXXX_XZGH--校长工号
      ,b.XZXM as b_ZXXX_XZXM--校长姓名
      ,b.DWFZRH as b_ZXXX_DWFZRH--党委负责人号
      ,b.ZZJGM as b_ZXXX_ZZJGM--组织机构码
      ,b.LXDH as b_ZXXX_LXDH--联系电话
      ,b.CZDH as b_ZXXX_CZDH--传真电话
      ,b.DZXX as b_ZXXX_DZXX--电子信箱
      ,b.ZYDZ as b_ZXXX_ZYDZ--主页地址
      ,b.LSYG as b_ZXXX_LSYG--历史沿革
      ,b.XXBBM as b_ZXXX_XXBBM--学校办别码
      ,b.SSZGDWM as b_ZXXX_SSZGDWM--所属主管单位码
      ,b.SZDCXLXM as b_ZXXX_SZDCXLXM--所在地城乡类型码
      ,b.SZDJJSXM as b_ZXXX_SZDJJSXM--所在地经济属性码
      ,b.SZDMZSX as b_ZXXX_SZDMZSX--所在地民族属性
      ,b.XXXZ as b_ZXXX_XXXZ--小学学制
      ,b.XXRXNL as b_ZXXX_XXRXNL--小学入学年龄
      ,b.CZXZ as b_ZXXX_CZXZ--初中学制
      ,b.CZRXNL as b_ZXXX_CZRXNL--初中入学年龄
      ,b.GZXZ as b_ZXXX_GZXZ--高中学制
      ,b.ZJXYYM as b_ZXXX_ZJXYYM--主教学语言码
      ,b.FJXYYM as b_ZXXX_FJXYYM--辅教学语言码
      ,b.ZSBJ as b_ZXXX_ZSBJ--招生半径

FROM dbo.EDU_ZXDY_04_A04_GWFPMB AS a LEFT OUTER JOIN
      dbo.EDU_ZXXX_01_01_ZXXX AS b ON a.SCHOOLID = b.ID /*学校ID*/
GO

--特别值周教师表
CREATE VIEW [dbo].[VIEW_EDU_ZXDY_04_A05_TBZZJS_DISP]
AS
SELECT a.[ID]--特别值周教师表ID
      ,a.[SCHOOLID]--学校ID
      ,a.[XQID]--学期ID
      ,a.[JSLX]--教师类型
      ,a.[JSID]--教师ID
      ,a.[YXRQ]--有效日期
      ,b.XXDM as b_ZXXX_XXDM--学校代码
      ,b.XXMC as b_ZXXX_XXMC--学校名称
      ,b.XXYWMC as b_ZXXX_XXYWMC--学校英文名称
      ,b.XXDZ as b_ZXXX_XXDZ--学校地址
      ,b.XXYZBM as b_ZXXX_XXYZBM--学校邮政编码
      ,b.XZQHM as b_ZXXX_XZQHM--行政区划码
      ,b.JXNY as b_ZXXX_JXNY--建校年月
      ,b.XQR as b_ZXXX_XQR--校庆日
      ,b.XXBXLXM as b_ZXXX_XXBXLXM--学校办学类型码
      ,b.XXZGBMM as b_ZXXX_XXZGBMM--学校主管部门码
      ,b.FDDBRH as b_ZXXX_FDDBRH--法定代表人号
      ,b.FRZSH as b_ZXXX_FRZSH--法人证书号
      ,b.XZGH as b_ZXXX_XZGH--校长工号
      ,b.XZXM as b_ZXXX_XZXM--校长姓名
      ,b.DWFZRH as b_ZXXX_DWFZRH--党委负责人号
      ,b.ZZJGM as b_ZXXX_ZZJGM--组织机构码
      ,b.LXDH as b_ZXXX_LXDH--联系电话
      ,b.CZDH as b_ZXXX_CZDH--传真电话
      ,b.DZXX as b_ZXXX_DZXX--电子信箱
      ,b.ZYDZ as b_ZXXX_ZYDZ--主页地址
      ,b.LSYG as b_ZXXX_LSYG--历史沿革
      ,b.XXBBM as b_ZXXX_XXBBM--学校办别码
      ,b.SSZGDWM as b_ZXXX_SSZGDWM--所属主管单位码
      ,b.SZDCXLXM as b_ZXXX_SZDCXLXM--所在地城乡类型码
      ,b.SZDJJSXM as b_ZXXX_SZDJJSXM--所在地经济属性码
      ,b.SZDMZSX as b_ZXXX_SZDMZSX--所在地民族属性
      ,b.XXXZ as b_ZXXX_XXXZ--小学学制
      ,b.XXRXNL as b_ZXXX_XXRXNL--小学入学年龄
      ,b.CZXZ as b_ZXXX_CZXZ--初中学制
      ,b.CZRXNL as b_ZXXX_CZRXNL--初中入学年龄
      ,b.GZXZ as b_ZXXX_GZXZ--高中学制
      ,b.ZJXYYM as b_ZXXX_ZJXYYM--主教学语言码
      ,b.FJXYYM as b_ZXXX_FJXYYM--辅教学语言码
      ,b.ZSBJ as b_ZXXX_ZSBJ--招生半径
      ,c.SCHOOLID as c_ZXXQ_SCHOOLID--学校名
      ,c.XNID as c_ZXXQ_XNID--学年
      ,c.XQM as c_ZXXQ_XQM--学期码
      ,c.XQMC as c_ZXXQ_XQMC--学期名称
      ,c.XQKSRQ as c_ZXXQ_XQKSRQ--学期开始日期
      ,c.XQJSRQ as c_ZXXQ_XQJSRQ--学期结束日期
      ,d.SCHOOLID as d_USER_SCHOOLID--学校ID
      ,d.APPID as d_USER_APPID--应用ID
      ,d.PWD as d_USER_PWD--密码
      ,d.STATUS as d_USER_STATUS--用户状态
      ,d.USERTYPE as d_USER_USERTYPE--用户类别
      ,d.USERID as d_USER_USERID--用户ID
      ,d.ROLEIDLst as d_USER_ROLEIDLst--用户角色
      ,d.XM as d_USER_XM--姓名
      ,d.XB as d_USER_XB--性别
      ,d.QQ as d_USER_QQ--QQ
      ,d.DZYJ as d_USER_DZYJ--电子邮件
      ,d.LXDH as d_USER_LXDH--联系电话
      ,d.ZJDLSJ as d_USER_ZJDLSJ--最近一次登录时间
      ,d.DLCGCS as d_USER_DLCGCS--登录成功次数
      ,d.YHCJSJ as d_USER_YHCJSJ--用户创建时间

FROM dbo.EDU_ZXDY_04_A05_TBZZJS AS a LEFT OUTER JOIN
      dbo.EDU_ZXXX_01_01_ZXXX AS b ON a.SCHOOLID = b.ID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_05_A01_ZXXQ AS c ON a.XQID = c.ID /*学期ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.JSID = d.LOGINNAME /*教师ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校ID*/
GO

--值周周次表
CREATE VIEW [dbo].[VIEW_EDU_ZXDY_04_A06_ZZZC_DISP]
AS
SELECT a.[ID]--周次表ID
      ,a.[SCHOOLID]--学校ID
      ,a.[XQID]--学期ID
      ,a.[ZCM]--周次名
      ,a.[XQKSRQ]--开始日期
      ,a.[XQJSRQ]--结束日期
      ,b.XXDM as b_ZXXX_XXDM--学校代码
      ,b.XXMC as b_ZXXX_XXMC--学校名称
      ,b.XXYWMC as b_ZXXX_XXYWMC--学校英文名称
      ,b.XXDZ as b_ZXXX_XXDZ--学校地址
      ,b.XXYZBM as b_ZXXX_XXYZBM--学校邮政编码
      ,b.XZQHM as b_ZXXX_XZQHM--行政区划码
      ,b.JXNY as b_ZXXX_JXNY--建校年月
      ,b.XQR as b_ZXXX_XQR--校庆日
      ,b.XXBXLXM as b_ZXXX_XXBXLXM--学校办学类型码
      ,b.XXZGBMM as b_ZXXX_XXZGBMM--学校主管部门码
      ,b.FDDBRH as b_ZXXX_FDDBRH--法定代表人号
      ,b.FRZSH as b_ZXXX_FRZSH--法人证书号
      ,b.XZGH as b_ZXXX_XZGH--校长工号
      ,b.XZXM as b_ZXXX_XZXM--校长姓名
      ,b.DWFZRH as b_ZXXX_DWFZRH--党委负责人号
      ,b.ZZJGM as b_ZXXX_ZZJGM--组织机构码
      ,b.LXDH as b_ZXXX_LXDH--联系电话
      ,b.CZDH as b_ZXXX_CZDH--传真电话
      ,b.DZXX as b_ZXXX_DZXX--电子信箱
      ,b.ZYDZ as b_ZXXX_ZYDZ--主页地址
      ,b.LSYG as b_ZXXX_LSYG--历史沿革
      ,b.XXBBM as b_ZXXX_XXBBM--学校办别码
      ,b.SSZGDWM as b_ZXXX_SSZGDWM--所属主管单位码
      ,b.SZDCXLXM as b_ZXXX_SZDCXLXM--所在地城乡类型码
      ,b.SZDJJSXM as b_ZXXX_SZDJJSXM--所在地经济属性码
      ,b.SZDMZSX as b_ZXXX_SZDMZSX--所在地民族属性
      ,b.XXXZ as b_ZXXX_XXXZ--小学学制
      ,b.XXRXNL as b_ZXXX_XXRXNL--小学入学年龄
      ,b.CZXZ as b_ZXXX_CZXZ--初中学制
      ,b.CZRXNL as b_ZXXX_CZRXNL--初中入学年龄
      ,b.GZXZ as b_ZXXX_GZXZ--高中学制
      ,b.ZJXYYM as b_ZXXX_ZJXYYM--主教学语言码
      ,b.FJXYYM as b_ZXXX_FJXYYM--辅教学语言码
      ,b.ZSBJ as b_ZXXX_ZSBJ--招生半径
      ,c.SCHOOLID as c_ZXXQ_SCHOOLID--学校名
      ,c.XNID as c_ZXXQ_XNID--学年
      ,c.XQM as c_ZXXQ_XQM--学期码
      ,c.XQMC as c_ZXXQ_XQMC--学期名称
      ,c.XQKSRQ as c_ZXXQ_XQKSRQ--学期开始日期
      ,c.XQJSRQ as c_ZXXQ_XQJSRQ--学期结束日期

FROM dbo.EDU_ZXDY_04_A06_ZZZC AS a LEFT OUTER JOIN
      dbo.EDU_ZXXX_01_01_ZXXX AS b ON a.SCHOOLID = b.ID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_05_A01_ZXXQ AS c ON a.XQID = c.ID /*学期ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/
GO

--模板分配内容表
CREATE VIEW [dbo].[VIEW_EDU_ZXDY_04_A07_MBFPNR_DISP]
AS
SELECT a.[ID]--模板内容表ID
      ,a.[MBID]--模板表ID
      ,a.[GZR]--工作日
      ,a.[GWID]--岗位ID
      ,a.[DYRYH]--对应人员号
      ,b.SCHOOLID as b_GWFPMB_SCHOOLID--学校ID
      ,b.MBMC as b_GWFPMB_MBMC--模板名称
      ,c.SCHOOLID as c_ZZGW_SCHOOLID--学校ID
      ,c.XQID as c_ZZGW_XQID--学期ID
      ,c.GWGZNR as c_ZZGW_GWGZNR--岗位工作内容

FROM dbo.EDU_ZXDY_04_A07_MBFPNR AS a LEFT OUTER JOIN
      dbo.EDU_ZXDY_04_A04_GWFPMB AS b ON a.MBID = b.ID /*模板表ID*/ LEFT OUTER JOIN
      dbo.EDU_ZXDY_04_A01_ZZGW AS c ON a.GWID = c.ID /*岗位ID*/
GO

--值周打分大类表
CREATE VIEW [dbo].[VIEW_EDU_ZXDY_05_A01_ZZDFDL_DISP]
AS
SELECT a.[ID]--值周打分大类表ID
      ,a.[SCHOOLID]--学校ID
      ,a.[XQID]--学期ID
      ,a.[DLMC]--大类名称
      ,b.XXDM as b_ZXXX_XXDM--学校代码
      ,b.XXMC as b_ZXXX_XXMC--学校名称
      ,b.XXYWMC as b_ZXXX_XXYWMC--学校英文名称
      ,b.XXDZ as b_ZXXX_XXDZ--学校地址
      ,b.XXYZBM as b_ZXXX_XXYZBM--学校邮政编码
      ,b.XZQHM as b_ZXXX_XZQHM--行政区划码
      ,b.JXNY as b_ZXXX_JXNY--建校年月
      ,b.XQR as b_ZXXX_XQR--校庆日
      ,b.XXBXLXM as b_ZXXX_XXBXLXM--学校办学类型码
      ,b.XXZGBMM as b_ZXXX_XXZGBMM--学校主管部门码
      ,b.FDDBRH as b_ZXXX_FDDBRH--法定代表人号
      ,b.FRZSH as b_ZXXX_FRZSH--法人证书号
      ,b.XZGH as b_ZXXX_XZGH--校长工号
      ,b.XZXM as b_ZXXX_XZXM--校长姓名
      ,b.DWFZRH as b_ZXXX_DWFZRH--党委负责人号
      ,b.ZZJGM as b_ZXXX_ZZJGM--组织机构码
      ,b.LXDH as b_ZXXX_LXDH--联系电话
      ,b.CZDH as b_ZXXX_CZDH--传真电话
      ,b.DZXX as b_ZXXX_DZXX--电子信箱
      ,b.ZYDZ as b_ZXXX_ZYDZ--主页地址
      ,b.LSYG as b_ZXXX_LSYG--历史沿革
      ,b.XXBBM as b_ZXXX_XXBBM--学校办别码
      ,b.SSZGDWM as b_ZXXX_SSZGDWM--所属主管单位码
      ,b.SZDCXLXM as b_ZXXX_SZDCXLXM--所在地城乡类型码
      ,b.SZDJJSXM as b_ZXXX_SZDJJSXM--所在地经济属性码
      ,b.SZDMZSX as b_ZXXX_SZDMZSX--所在地民族属性
      ,b.XXXZ as b_ZXXX_XXXZ--小学学制
      ,b.XXRXNL as b_ZXXX_XXRXNL--小学入学年龄
      ,b.CZXZ as b_ZXXX_CZXZ--初中学制
      ,b.CZRXNL as b_ZXXX_CZRXNL--初中入学年龄
      ,b.GZXZ as b_ZXXX_GZXZ--高中学制
      ,b.ZJXYYM as b_ZXXX_ZJXYYM--主教学语言码
      ,b.FJXYYM as b_ZXXX_FJXYYM--辅教学语言码
      ,b.ZSBJ as b_ZXXX_ZSBJ--招生半径
      ,c.SCHOOLID as c_ZXXQ_SCHOOLID--学校名
      ,c.XNID as c_ZXXQ_XNID--学年
      ,c.XQM as c_ZXXQ_XQM--学期码
      ,c.XQMC as c_ZXXQ_XQMC--学期名称
      ,c.XQKSRQ as c_ZXXQ_XQKSRQ--学期开始日期
      ,c.XQJSRQ as c_ZXXQ_XQJSRQ--学期结束日期

FROM dbo.EDU_ZXDY_05_A01_ZZDFDL AS a LEFT OUTER JOIN
      dbo.EDU_ZXXX_01_01_ZXXX AS b ON a.SCHOOLID = b.ID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_05_A01_ZXXQ AS c ON a.XQID = c.ID /*学期ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/
GO

--值周打分细则表
CREATE VIEW [dbo].[VIEW_EDU_ZXDY_05_A02_ZZDFXZ_DISP]
AS
SELECT a.[ID]--值周打分细则表ID
      ,a.[SCHOOLID]--学校ID
      ,a.[SSDLID]--所属大类ID
      ,a.[XZNR]--细则内容
      ,a.[XZFZ]--细则分值
      ,b.XXDM as b_ZXXX_XXDM--学校代码
      ,b.XXMC as b_ZXXX_XXMC--学校名称
      ,b.XXYWMC as b_ZXXX_XXYWMC--学校英文名称
      ,b.XXDZ as b_ZXXX_XXDZ--学校地址
      ,b.XXYZBM as b_ZXXX_XXYZBM--学校邮政编码
      ,b.XZQHM as b_ZXXX_XZQHM--行政区划码
      ,b.JXNY as b_ZXXX_JXNY--建校年月
      ,b.XQR as b_ZXXX_XQR--校庆日
      ,b.XXBXLXM as b_ZXXX_XXBXLXM--学校办学类型码
      ,b.XXZGBMM as b_ZXXX_XXZGBMM--学校主管部门码
      ,b.FDDBRH as b_ZXXX_FDDBRH--法定代表人号
      ,b.FRZSH as b_ZXXX_FRZSH--法人证书号
      ,b.XZGH as b_ZXXX_XZGH--校长工号
      ,b.XZXM as b_ZXXX_XZXM--校长姓名
      ,b.DWFZRH as b_ZXXX_DWFZRH--党委负责人号
      ,b.ZZJGM as b_ZXXX_ZZJGM--组织机构码
      ,b.LXDH as b_ZXXX_LXDH--联系电话
      ,b.CZDH as b_ZXXX_CZDH--传真电话
      ,b.DZXX as b_ZXXX_DZXX--电子信箱
      ,b.ZYDZ as b_ZXXX_ZYDZ--主页地址
      ,b.LSYG as b_ZXXX_LSYG--历史沿革
      ,b.XXBBM as b_ZXXX_XXBBM--学校办别码
      ,b.SSZGDWM as b_ZXXX_SSZGDWM--所属主管单位码
      ,b.SZDCXLXM as b_ZXXX_SZDCXLXM--所在地城乡类型码
      ,b.SZDJJSXM as b_ZXXX_SZDJJSXM--所在地经济属性码
      ,b.SZDMZSX as b_ZXXX_SZDMZSX--所在地民族属性
      ,b.XXXZ as b_ZXXX_XXXZ--小学学制
      ,b.XXRXNL as b_ZXXX_XXRXNL--小学入学年龄
      ,b.CZXZ as b_ZXXX_CZXZ--初中学制
      ,b.CZRXNL as b_ZXXX_CZRXNL--初中入学年龄
      ,b.GZXZ as b_ZXXX_GZXZ--高中学制
      ,b.ZJXYYM as b_ZXXX_ZJXYYM--主教学语言码
      ,b.FJXYYM as b_ZXXX_FJXYYM--辅教学语言码
      ,b.ZSBJ as b_ZXXX_ZSBJ--招生半径
      ,c.SCHOOLID as c_ZZDFDL_SCHOOLID--学校ID
      ,c.XQID as c_ZZDFDL_XQID--学期ID
      ,c.DLMC as c_ZZDFDL_DLMC--大类名称

FROM dbo.EDU_ZXDY_05_A02_ZZDFXZ AS a LEFT OUTER JOIN
      dbo.EDU_ZXXX_01_01_ZXXX AS b ON a.SCHOOLID = b.ID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZXDY_05_A01_ZZDFDL AS c ON a.SSDLID = c.ID /*所属大类ID*/
GO

--值周打分单表
CREATE VIEW [dbo].[VIEW_EDU_ZXDY_05_A03_ZZDFD_DISP]
AS
SELECT a.[ID]--值周打分单表ID
      ,a.[SCHOOLID]--学校ID
      ,a.[XQID]--学期ID
      ,a.[ZCID]--周次ID
      ,a.[BJ]--班级
      ,a.[XSIDLB]--学生ID列表
      ,a.[SSXZID]--所属细则
      ,a.[DFFZ]--打分分值
      ,a.[FSSJ]--发生时间
      ,a.[DFSJ]--打分时间
      ,a.[DFJSID]--打分教师ID
      ,a.[BZ]--备注
      ,b.XXDM as b_ZXXX_XXDM--学校代码
      ,b.XXMC as b_ZXXX_XXMC--学校名称
      ,b.XXYWMC as b_ZXXX_XXYWMC--学校英文名称
      ,b.XXDZ as b_ZXXX_XXDZ--学校地址
      ,b.XXYZBM as b_ZXXX_XXYZBM--学校邮政编码
      ,b.XZQHM as b_ZXXX_XZQHM--行政区划码
      ,b.JXNY as b_ZXXX_JXNY--建校年月
      ,b.XQR as b_ZXXX_XQR--校庆日
      ,b.XXBXLXM as b_ZXXX_XXBXLXM--学校办学类型码
      ,b.XXZGBMM as b_ZXXX_XXZGBMM--学校主管部门码
      ,b.FDDBRH as b_ZXXX_FDDBRH--法定代表人号
      ,b.FRZSH as b_ZXXX_FRZSH--法人证书号
      ,b.XZGH as b_ZXXX_XZGH--校长工号
      ,b.XZXM as b_ZXXX_XZXM--校长姓名
      ,b.DWFZRH as b_ZXXX_DWFZRH--党委负责人号
      ,b.ZZJGM as b_ZXXX_ZZJGM--组织机构码
      ,b.LXDH as b_ZXXX_LXDH--联系电话
      ,b.CZDH as b_ZXXX_CZDH--传真电话
      ,b.DZXX as b_ZXXX_DZXX--电子信箱
      ,b.ZYDZ as b_ZXXX_ZYDZ--主页地址
      ,b.LSYG as b_ZXXX_LSYG--历史沿革
      ,b.XXBBM as b_ZXXX_XXBBM--学校办别码
      ,b.SSZGDWM as b_ZXXX_SSZGDWM--所属主管单位码
      ,b.SZDCXLXM as b_ZXXX_SZDCXLXM--所在地城乡类型码
      ,b.SZDJJSXM as b_ZXXX_SZDJJSXM--所在地经济属性码
      ,b.SZDMZSX as b_ZXXX_SZDMZSX--所在地民族属性
      ,b.XXXZ as b_ZXXX_XXXZ--小学学制
      ,b.XXRXNL as b_ZXXX_XXRXNL--小学入学年龄
      ,b.CZXZ as b_ZXXX_CZXZ--初中学制
      ,b.CZRXNL as b_ZXXX_CZRXNL--初中入学年龄
      ,b.GZXZ as b_ZXXX_GZXZ--高中学制
      ,b.ZJXYYM as b_ZXXX_ZJXYYM--主教学语言码
      ,b.FJXYYM as b_ZXXX_FJXYYM--辅教学语言码
      ,b.ZSBJ as b_ZXXX_ZSBJ--招生半径
      ,c.SCHOOLID as c_ZXXQ_SCHOOLID--学校名
      ,c.XNID as c_ZXXQ_XNID--学年
      ,c.XQM as c_ZXXQ_XQM--学期码
      ,c.XQMC as c_ZXXQ_XQMC--学期名称
      ,c.XQKSRQ as c_ZXXQ_XQKSRQ--学期开始日期
      ,c.XQJSRQ as c_ZXXQ_XQJSRQ--学期结束日期
      ,d.SCHOOLID as d_ZZZC_SCHOOLID--学校ID
      ,d.XQID as d_ZZZC_XQID--学期ID
      ,d.ZCM as d_ZZZC_ZCM--周次名
      ,d.XQKSRQ as d_ZZZC_XQKSRQ--开始日期
      ,d.XQJSRQ as d_ZZZC_XQJSRQ--结束日期
      ,e.SCHOOLID as e_BJ_SCHOOLID--学校名
      ,e.NJ as e_BJ_NJ--年级号
      ,e.BJ as e_BJ_BJ--班级名称
      ,e.JBNY as e_BJ_JBNY--建班年月
      ,e.BZRGH as e_BJ_BZRGH--班主任工号
      ,e.BZXH as e_BJ_BZXH--班长学号
      ,e.BJRYCH as e_BJ_BJRYCH--班级荣誉称号
      ,e.XZ as e_BJ_XZ--学制
      ,e.BJLXM as e_BJ_BJLXM--班级类型码
      ,e.WLLX as e_BJ_WLLX--文理类型
      ,e.BYRQ as e_BJ_BYRQ--毕业日期
      ,e.SFSSMZSYJXB as e_BJ_SFSSMZSYJXB--是否少数民族双语教学班
      ,e.SYJXMSM as e_BJ_SYJXMSM--双语教学模式码
      ,f.SCHOOLID as f_ZZDFXZ_SCHOOLID--学校ID
      ,f.SSDLID as f_ZZDFXZ_SSDLID--所属大类ID
      ,f.XZNR as f_ZZDFXZ_XZNR--细则内容
      ,f.XZFZ as f_ZZDFXZ_XZFZ--细则分值
      ,g.SCHOOLID as g_USER_SCHOOLID--学校ID
      ,g.APPID as g_USER_APPID--应用ID
      ,g.PWD as g_USER_PWD--密码
      ,g.STATUS as g_USER_STATUS--用户状态
      ,g.USERTYPE as g_USER_USERTYPE--用户类别
      ,g.USERID as g_USER_USERID--用户ID
      ,g.ROLEIDLst as g_USER_ROLEIDLst--用户角色
      ,g.XM as g_USER_XM--姓名
      ,g.XB as g_USER_XB--性别
      ,g.QQ as g_USER_QQ--QQ
      ,g.DZYJ as g_USER_DZYJ--电子邮件
      ,g.LXDH as g_USER_LXDH--联系电话
      ,g.ZJDLSJ as g_USER_ZJDLSJ--最近一次登录时间
      ,g.DLCGCS as g_USER_DLCGCS--登录成功次数
      ,g.YHCJSJ as g_USER_YHCJSJ--用户创建时间

FROM dbo.EDU_ZXDY_05_A03_ZZDFD AS a LEFT OUTER JOIN
      dbo.EDU_ZXXX_01_01_ZXXX AS b ON a.SCHOOLID = b.ID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_05_A01_ZXXQ AS c ON a.XQID = c.ID /*学期ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZXDY_04_A06_ZZZC AS d ON a.ZCID = d.ID /*周次ID*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_03_01_BJ AS e ON a.BJ = e.BH /*班级*/ AND a.SCHOOLID = e.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZXDY_05_A02_ZZDFXZ AS f ON a.SSXZID = f.ID /*所属细则*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS g ON a.DFJSID = g.LOGINNAME /*打分教师ID*/ AND a.SCHOOLID = g.SCHOOLID /*学校ID*/
GO

--值周小结表
CREATE VIEW [dbo].[VIEW_EDU_ZXDY_06_A01_ZZXJ_DISP]
AS
SELECT a.[ID]--值周小结表ID
      ,a.[SCHOOLID]--学校ID
      ,a.[XQID]--学期ID
      ,a.[ZCID]--周次ID
      ,a.[SZDS]--上周大事
      ,a.[ZZJCQKFK]--值周检查情况反馈
      ,b.XXDM as b_ZXXX_XXDM--学校代码
      ,b.XXMC as b_ZXXX_XXMC--学校名称
      ,b.XXYWMC as b_ZXXX_XXYWMC--学校英文名称
      ,b.XXDZ as b_ZXXX_XXDZ--学校地址
      ,b.XXYZBM as b_ZXXX_XXYZBM--学校邮政编码
      ,b.XZQHM as b_ZXXX_XZQHM--行政区划码
      ,b.JXNY as b_ZXXX_JXNY--建校年月
      ,b.XQR as b_ZXXX_XQR--校庆日
      ,b.XXBXLXM as b_ZXXX_XXBXLXM--学校办学类型码
      ,b.XXZGBMM as b_ZXXX_XXZGBMM--学校主管部门码
      ,b.FDDBRH as b_ZXXX_FDDBRH--法定代表人号
      ,b.FRZSH as b_ZXXX_FRZSH--法人证书号
      ,b.XZGH as b_ZXXX_XZGH--校长工号
      ,b.XZXM as b_ZXXX_XZXM--校长姓名
      ,b.DWFZRH as b_ZXXX_DWFZRH--党委负责人号
      ,b.ZZJGM as b_ZXXX_ZZJGM--组织机构码
      ,b.LXDH as b_ZXXX_LXDH--联系电话
      ,b.CZDH as b_ZXXX_CZDH--传真电话
      ,b.DZXX as b_ZXXX_DZXX--电子信箱
      ,b.ZYDZ as b_ZXXX_ZYDZ--主页地址
      ,b.LSYG as b_ZXXX_LSYG--历史沿革
      ,b.XXBBM as b_ZXXX_XXBBM--学校办别码
      ,b.SSZGDWM as b_ZXXX_SSZGDWM--所属主管单位码
      ,b.SZDCXLXM as b_ZXXX_SZDCXLXM--所在地城乡类型码
      ,b.SZDJJSXM as b_ZXXX_SZDJJSXM--所在地经济属性码
      ,b.SZDMZSX as b_ZXXX_SZDMZSX--所在地民族属性
      ,b.XXXZ as b_ZXXX_XXXZ--小学学制
      ,b.XXRXNL as b_ZXXX_XXRXNL--小学入学年龄
      ,b.CZXZ as b_ZXXX_CZXZ--初中学制
      ,b.CZRXNL as b_ZXXX_CZRXNL--初中入学年龄
      ,b.GZXZ as b_ZXXX_GZXZ--高中学制
      ,b.ZJXYYM as b_ZXXX_ZJXYYM--主教学语言码
      ,b.FJXYYM as b_ZXXX_FJXYYM--辅教学语言码
      ,b.ZSBJ as b_ZXXX_ZSBJ--招生半径
      ,c.SCHOOLID as c_ZXXQ_SCHOOLID--学校名
      ,c.XNID as c_ZXXQ_XNID--学年
      ,c.XQM as c_ZXXQ_XQM--学期码
      ,c.XQMC as c_ZXXQ_XQMC--学期名称
      ,c.XQKSRQ as c_ZXXQ_XQKSRQ--学期开始日期
      ,c.XQJSRQ as c_ZXXQ_XQJSRQ--学期结束日期
      ,d.SCHOOLID as d_ZZZC_SCHOOLID--学校ID
      ,d.XQID as d_ZZZC_XQID--学期ID
      ,d.ZCM as d_ZZZC_ZCM--周次名
      ,d.XQKSRQ as d_ZZZC_XQKSRQ--开始日期
      ,d.XQJSRQ as d_ZZZC_XQJSRQ--结束日期

FROM dbo.EDU_ZXDY_06_A01_ZZXJ AS a LEFT OUTER JOIN
      dbo.EDU_ZXXX_01_01_ZXXX AS b ON a.SCHOOLID = b.ID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_05_A01_ZXXQ AS c ON a.XQID = c.ID /*学期ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZXDY_04_A06_ZZZC AS d ON a.ZCID = d.ID /*周次ID*/
GO

--国旗下讲话表
CREATE VIEW [dbo].[VIEW_EDU_ZXDY_06_A02_GQXJH_DISP]
AS
SELECT a.[ID]--国旗下讲话表ID
      ,a.[SCHOOLID]--学校ID
      ,a.[XQID]--学期ID
      ,a.[ZCID]--周次ID
      ,a.[JHZT]--讲话主题
      ,a.[JHNR]--讲话内容
      ,b.XXDM as b_ZXXX_XXDM--学校代码
      ,b.XXMC as b_ZXXX_XXMC--学校名称
      ,b.XXYWMC as b_ZXXX_XXYWMC--学校英文名称
      ,b.XXDZ as b_ZXXX_XXDZ--学校地址
      ,b.XXYZBM as b_ZXXX_XXYZBM--学校邮政编码
      ,b.XZQHM as b_ZXXX_XZQHM--行政区划码
      ,b.JXNY as b_ZXXX_JXNY--建校年月
      ,b.XQR as b_ZXXX_XQR--校庆日
      ,b.XXBXLXM as b_ZXXX_XXBXLXM--学校办学类型码
      ,b.XXZGBMM as b_ZXXX_XXZGBMM--学校主管部门码
      ,b.FDDBRH as b_ZXXX_FDDBRH--法定代表人号
      ,b.FRZSH as b_ZXXX_FRZSH--法人证书号
      ,b.XZGH as b_ZXXX_XZGH--校长工号
      ,b.XZXM as b_ZXXX_XZXM--校长姓名
      ,b.DWFZRH as b_ZXXX_DWFZRH--党委负责人号
      ,b.ZZJGM as b_ZXXX_ZZJGM--组织机构码
      ,b.LXDH as b_ZXXX_LXDH--联系电话
      ,b.CZDH as b_ZXXX_CZDH--传真电话
      ,b.DZXX as b_ZXXX_DZXX--电子信箱
      ,b.ZYDZ as b_ZXXX_ZYDZ--主页地址
      ,b.LSYG as b_ZXXX_LSYG--历史沿革
      ,b.XXBBM as b_ZXXX_XXBBM--学校办别码
      ,b.SSZGDWM as b_ZXXX_SSZGDWM--所属主管单位码
      ,b.SZDCXLXM as b_ZXXX_SZDCXLXM--所在地城乡类型码
      ,b.SZDJJSXM as b_ZXXX_SZDJJSXM--所在地经济属性码
      ,b.SZDMZSX as b_ZXXX_SZDMZSX--所在地民族属性
      ,b.XXXZ as b_ZXXX_XXXZ--小学学制
      ,b.XXRXNL as b_ZXXX_XXRXNL--小学入学年龄
      ,b.CZXZ as b_ZXXX_CZXZ--初中学制
      ,b.CZRXNL as b_ZXXX_CZRXNL--初中入学年龄
      ,b.GZXZ as b_ZXXX_GZXZ--高中学制
      ,b.ZJXYYM as b_ZXXX_ZJXYYM--主教学语言码
      ,b.FJXYYM as b_ZXXX_FJXYYM--辅教学语言码
      ,b.ZSBJ as b_ZXXX_ZSBJ--招生半径
      ,c.SCHOOLID as c_ZXXQ_SCHOOLID--学校名
      ,c.XNID as c_ZXXQ_XNID--学年
      ,c.XQM as c_ZXXQ_XQM--学期码
      ,c.XQMC as c_ZXXQ_XQMC--学期名称
      ,c.XQKSRQ as c_ZXXQ_XQKSRQ--学期开始日期
      ,c.XQJSRQ as c_ZXXQ_XQJSRQ--学期结束日期
      ,d.SCHOOLID as d_ZZZC_SCHOOLID--学校ID
      ,d.XQID as d_ZZZC_XQID--学期ID
      ,d.ZCM as d_ZZZC_ZCM--周次名
      ,d.XQKSRQ as d_ZZZC_XQKSRQ--开始日期
      ,d.XQJSRQ as d_ZZZC_XQJSRQ--结束日期

FROM dbo.EDU_ZXDY_06_A02_GQXJH AS a LEFT OUTER JOIN
      dbo.EDU_ZXXX_01_01_ZXXX AS b ON a.SCHOOLID = b.ID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_05_A01_ZXXQ AS c ON a.XQID = c.ID /*学期ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZXDY_04_A06_ZZZC AS d ON a.ZCID = d.ID /*周次ID*/
GO

--教职工基本数据子类表
CREATE VIEW [dbo].[VIEW_EDU_ZXJZ_01_01_JZGJBSJ_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校名
      ,a.[GH]--工号
      ,a.[XM]--姓名
      ,a.[YWXM]--英文姓名
      ,a.[XMPY]--姓名拼音
      ,a.[CYM]--曾用名
      ,a.[XBM]--性别码
      ,a.[CSRQ]--出生日期
      ,a.[CSDM]--出生地码
      ,a.[JG]--籍贯
      ,a.[MZM]--民族码
      ,a.[GJDQM]--国籍/地区码
      ,a.[SFZJLXM]--身份证件类型码
      ,a.[SFZJH]--身份证件号
      ,a.[HYZKM]--婚姻状况码
      ,a.[GATQWM]--港澳台侨外码
      ,a.[ZZMMM]--政治面貌码
      ,a.[JKZKM]--健康状况码
      ,a.[XYZJM]--信仰宗教码
      ,a.[XXM]--血型码
      ,a.[ZP]--照片
      ,a.[SFZJYXQ]--身份证件有效期
      ,a.[JGH]--机构号
      ,a.[JTZZ]--家庭住址
      ,a.[XZZ]--现住址
      ,a.[HKSZD]--户口所在地
      ,a.[HKXZM]--户口性质码
      ,a.[XLM]--学历码
      ,a.[GZNY]--参加工作年月
      ,a.[LXNY]--来校年月
      ,a.[CJNY]--从教年月
      ,a.[BZLBM]--编制类别码
      ,a.[DABH]--档案编号
      ,a.[DAWB]--档案文本
      ,a.[TXDZ]--通信地址
      ,a.[LXDH]--联系电话
      ,a.[YZBM]--邮政编码
      ,a.[DZXX]--电子信箱
      ,a.[ZYDZ]--主页地址
      ,a.[TC]--特长
      ,a.[GWZYM]--岗位职业码
      ,a.[ZYRKXD]--主要任课学段
      ,b.XXDM as b_ZXXX_XXDM--学校代码
      ,b.XXMC as b_ZXXX_XXMC--学校名称
      ,b.XXYWMC as b_ZXXX_XXYWMC--学校英文名称
      ,b.XXDZ as b_ZXXX_XXDZ--学校地址
      ,b.XXYZBM as b_ZXXX_XXYZBM--学校邮政编码
      ,b.XZQHM as b_ZXXX_XZQHM--行政区划码
      ,b.JXNY as b_ZXXX_JXNY--建校年月
      ,b.XQR as b_ZXXX_XQR--校庆日
      ,b.XXBXLXM as b_ZXXX_XXBXLXM--学校办学类型码
      ,b.XXZGBMM as b_ZXXX_XXZGBMM--学校主管部门码
      ,b.FDDBRH as b_ZXXX_FDDBRH--法定代表人号
      ,b.FRZSH as b_ZXXX_FRZSH--法人证书号
      ,b.XZGH as b_ZXXX_XZGH--校长工号
      ,b.XZXM as b_ZXXX_XZXM--校长姓名
      ,b.DWFZRH as b_ZXXX_DWFZRH--党委负责人号
      ,b.ZZJGM as b_ZXXX_ZZJGM--组织机构码
      ,b.LXDH as b_ZXXX_LXDH--联系电话
      ,b.CZDH as b_ZXXX_CZDH--传真电话
      ,b.DZXX as b_ZXXX_DZXX--电子信箱
      ,b.ZYDZ as b_ZXXX_ZYDZ--主页地址
      ,b.LSYG as b_ZXXX_LSYG--历史沿革
      ,b.XXBBM as b_ZXXX_XXBBM--学校办别码
      ,b.SSZGDWM as b_ZXXX_SSZGDWM--所属主管单位码
      ,b.SZDCXLXM as b_ZXXX_SZDCXLXM--所在地城乡类型码
      ,b.SZDJJSXM as b_ZXXX_SZDJJSXM--所在地经济属性码
      ,b.SZDMZSX as b_ZXXX_SZDMZSX--所在地民族属性
      ,b.XXXZ as b_ZXXX_XXXZ--小学学制
      ,b.XXRXNL as b_ZXXX_XXRXNL--小学入学年龄
      ,b.CZXZ as b_ZXXX_CZXZ--初中学制
      ,b.CZRXNL as b_ZXXX_CZRXNL--初中入学年龄
      ,b.GZXZ as b_ZXXX_GZXZ--高中学制
      ,b.ZJXYYM as b_ZXXX_ZJXYYM--主教学语言码
      ,b.FJXYYM as b_ZXXX_FJXYYM--辅教学语言码
      ,b.ZSBJ as b_ZXXX_ZSBJ--招生半径
      ,c.MC as c_RDXB_MC--名称
      ,d.MC as d_ZHRMGHGXZQH_MC--名称
      ,e.MZMC as e_ZGGMZMCDLMZMPXF_MZMC--民族名称
      ,e.ZMDM as e_ZGGMZMCDLMZMPXF_ZMDM--字母代码
      ,f.GJDQMCJC as f_SJGGHDQMC_GJDQMCJC--国家/地区名称简称
      ,f.EZMDM as f_SJGGHDQMC_EZMDM--二字母代码
      ,f.SZMDM as f_SJGGHDQMC_SZMDM--三字母代码
      ,g.MC as g_SFZJLX_MC--名称
      ,h.MC as h_GATQW_MC--名称
      ,h.SM as h_GATQW_SM--说明
      ,i.MC as i_ZZMM_MC--名称
      ,i.JC as i_ZZMM_JC--简称
      ,j.MC as j_JKZKYWSZ_MC--名称
      ,j.SM as j_JKZKYWSZ_SM--说明
      ,k.MC as k_ZJXY_MC--名称
      ,l.MC as l_XX_MC--名称
      ,l.JC as l_XX_JC--简称

FROM dbo.EDU_ZXJZ_01_01_JZGJBSJ AS a LEFT OUTER JOIN
      dbo.EDU_ZXXX_01_01_ZXXX AS b ON a.SCHOOLID = b.ID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS c ON a.XBM = c.DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS d ON a.CSDM = d.DM /*出生地码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS e ON a.MZM = e.DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS f ON a.GJDQM = f.DM /*国籍/地区码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS g ON a.SFZJLXM = g.DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS h ON a.GATQWM = h.DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS i ON a.ZZMMM = i.DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS j ON a.JKZKM = j.DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS k ON a.XYZJM = k.DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS l ON a.XXM = l.DM /*血型码*/
GO

--学生基本数据子类表
CREATE VIEW [dbo].[VIEW_EDU_ZXXS_01_01_XSXX_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校名
      ,a.[XH]--学号
      ,a.[XM]--姓名
      ,a.[YWXM]--英文姓名
      ,a.[XMPY]--姓名拼音
      ,a.[CYM]--曾用名
      ,a.[XBM]--性别码
      ,a.[CSRQ]--出生日期
      ,a.[CSDM]--出生地码
      ,a.[JG]--籍贯
      ,a.[MZM]--民族码
      ,a.[GJDQM]--国籍/地区码
      ,a.[SFZJLXM]--身份证件类型码
      ,a.[SFZJH]--身份证件号
      ,a.[HYZKM]--婚姻状况码
      ,a.[GATQWM]--港澳台侨外码
      ,a.[ZZMMM]--政治面貌码
      ,a.[JKZKM]--健康状况码
      ,a.[XYZJM]--信仰宗教码
      ,a.[XXM]--血型码
      ,a.[ZP]--照片
      ,a.[SFZJYXQ]--身份证件有效期
      ,a.[DSZYBZ]--独生子女标志
      ,a.[RXNY]--入学年月
      ,a.[NJ]--年级
      ,a.[BH]--班号
      ,a.[XSLBM]--学生类别码
      ,a.[XZZ]--现住址
      ,a.[HKSZD]--户口所在地
      ,a.[HKXZM]--户口性质码
      ,a.[SFLDRK]--是否流动人口
      ,a.[TC]--特长
      ,a.[LXDH]--联系电话
      ,a.[TXDZ]--通信地址
      ,a.[YZBM]--邮政编码
      ,a.[DZXX]--电子信箱
      ,a.[ZYDZ]--主页地址
      ,a.[XJH]--学籍号
      ,b.XXDM as b_ZXXX_XXDM--学校代码
      ,b.XXMC as b_ZXXX_XXMC--学校名称
      ,b.XXYWMC as b_ZXXX_XXYWMC--学校英文名称
      ,b.XXDZ as b_ZXXX_XXDZ--学校地址
      ,b.XXYZBM as b_ZXXX_XXYZBM--学校邮政编码
      ,b.XZQHM as b_ZXXX_XZQHM--行政区划码
      ,b.JXNY as b_ZXXX_JXNY--建校年月
      ,b.XQR as b_ZXXX_XQR--校庆日
      ,b.XXBXLXM as b_ZXXX_XXBXLXM--学校办学类型码
      ,b.XXZGBMM as b_ZXXX_XXZGBMM--学校主管部门码
      ,b.FDDBRH as b_ZXXX_FDDBRH--法定代表人号
      ,b.FRZSH as b_ZXXX_FRZSH--法人证书号
      ,b.XZGH as b_ZXXX_XZGH--校长工号
      ,b.XZXM as b_ZXXX_XZXM--校长姓名
      ,b.DWFZRH as b_ZXXX_DWFZRH--党委负责人号
      ,b.ZZJGM as b_ZXXX_ZZJGM--组织机构码
      ,b.LXDH as b_ZXXX_LXDH--联系电话
      ,b.CZDH as b_ZXXX_CZDH--传真电话
      ,b.DZXX as b_ZXXX_DZXX--电子信箱
      ,b.ZYDZ as b_ZXXX_ZYDZ--主页地址
      ,b.LSYG as b_ZXXX_LSYG--历史沿革
      ,b.XXBBM as b_ZXXX_XXBBM--学校办别码
      ,b.SSZGDWM as b_ZXXX_SSZGDWM--所属主管单位码
      ,b.SZDCXLXM as b_ZXXX_SZDCXLXM--所在地城乡类型码
      ,b.SZDJJSXM as b_ZXXX_SZDJJSXM--所在地经济属性码
      ,b.SZDMZSX as b_ZXXX_SZDMZSX--所在地民族属性
      ,b.XXXZ as b_ZXXX_XXXZ--小学学制
      ,b.XXRXNL as b_ZXXX_XXRXNL--小学入学年龄
      ,b.CZXZ as b_ZXXX_CZXZ--初中学制
      ,b.CZRXNL as b_ZXXX_CZRXNL--初中入学年龄
      ,b.GZXZ as b_ZXXX_GZXZ--高中学制
      ,b.ZJXYYM as b_ZXXX_ZJXYYM--主教学语言码
      ,b.FJXYYM as b_ZXXX_FJXYYM--辅教学语言码
      ,b.ZSBJ as b_ZXXX_ZSBJ--招生半径
      ,c.MC as c_RDXB_MC--名称
      ,d.MC as d_ZHRMGHGXZQH_MC--名称
      ,e.MZMC as e_ZGGMZMCDLMZMPXF_MZMC--民族名称
      ,e.ZMDM as e_ZGGMZMCDLMZMPXF_ZMDM--字母代码
      ,f.GJDQMCJC as f_SJGGHDQMC_GJDQMCJC--国家/地区名称简称
      ,f.EZMDM as f_SJGGHDQMC_EZMDM--二字母代码
      ,f.SZMDM as f_SJGGHDQMC_SZMDM--三字母代码
      ,g.MC as g_SFZJLX_MC--名称
      ,h.MC as h_HYZZ_MC--名称
      ,i.MC as i_GATQW_MC--名称
      ,i.SM as i_GATQW_SM--说明
      ,j.MC as j_ZZMM_MC--名称
      ,j.JC as j_ZZMM_JC--简称
      ,k.MC as k_JKZKYWSZ_MC--名称
      ,k.SM as k_JKZKYWSZ_SM--说明
      ,l.MC as l_ZJXY_MC--名称
      ,m.MC as m_XX_MC--名称
      ,m.JC as m_XX_JC--简称

FROM dbo.EDU_ZXXS_01_01_XSXX AS a LEFT OUTER JOIN
      dbo.EDU_ZXXX_01_01_ZXXX AS b ON a.SCHOOLID = b.ID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS c ON a.XBM = c.DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS d ON a.CSDM = d.DM /*出生地码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS e ON a.MZM = e.DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS f ON a.GJDQM = f.DM /*国籍/地区码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS g ON a.SFZJLXM = g.DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS h ON a.HYZKM = h.DM /*婚姻状况码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS i ON a.GATQWM = i.DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS j ON a.ZZMMM = j.DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS k ON a.JKZKM = k.DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS l ON a.XYZJM = l.DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS m ON a.XXM = m.DM /*血型码*/
GO

--学籍异动数据子类表
CREATE VIEW [dbo].[VIEW_EDU_ZXXS_07_A02_XJYD_DISP]
AS
SELECT a.[ID]--学籍异动表编号
      ,a.[XSXXID]--学生ID
      ,a.[SCHOOLID]--学校ID
      ,a.[YDLBM]--异动类别码
      ,a.[YDRQ]--异动日期
      ,a.[YDYYM]--异动原因码
      ,a.[SPRQ]--审批日期
      ,a.[SPWH]--审批文号
      ,a.[JBRID]--经办人ID
      ,a.[JBRGH]--经办人工号
      ,a.[YDLYXXM]--异动来源学校码
      ,a.[YDQXXXM]--异动去向学校码
      ,a.[YDSM]--异动说明
      ,a.[YBH]--原班号
      ,a.[YNJ]--原年级
      ,a.[XBH]--现班号
      ,a.[XNJ]--现年级
      ,b.SCHOOLID as b_XSXX_SCHOOLID--学校名
      ,b.XH as b_XSXX_XH--学号
      ,b.XM as b_XSXX_XM--姓名
      ,b.YWXM as b_XSXX_YWXM--英文姓名
      ,b.XMPY as b_XSXX_XMPY--姓名拼音
      ,b.CYM as b_XSXX_CYM--曾用名
      ,b.XBM as b_XSXX_XBM--性别码
      ,bb.MC as b_XSXX_XBM_MC--名称
      ,b.CSRQ as b_XSXX_CSRQ--出生日期
      ,b.CSDM as b_XSXX_CSDM--出生地码
      ,bc.MC as b_XSXX_CSDM_MC--名称
      ,b.JG as b_XSXX_JG--籍贯
      ,b.MZM as b_XSXX_MZM--民族码
      ,bd.MZMC as b_XSXX_MZM_MZMC--民族名称
      ,bd.ZMDM as b_XSXX_MZM_ZMDM--字母代码
      ,b.GJDQM as b_XSXX_GJDQM--国籍/地区码
      ,be.GJDQMCJC as b_XSXX_GJDQM_GJDQMCJC--国家/地区名称简称
      ,be.EZMDM as b_XSXX_GJDQM_EZMDM--二字母代码
      ,be.SZMDM as b_XSXX_GJDQM_SZMDM--三字母代码
      ,b.SFZJLXM as b_XSXX_SFZJLXM--身份证件类型码
      ,bf.MC as b_XSXX_SFZJLXM_MC--名称
      ,b.SFZJH as b_XSXX_SFZJH--身份证件号
      ,b.HYZKM as b_XSXX_HYZKM--婚姻状况码
      ,bg.MC as b_XSXX_HYZKM_MC--名称
      ,b.GATQWM as b_XSXX_GATQWM--港澳台侨外码
      ,bh.MC as b_XSXX_GATQWM_MC--名称
      ,bh.SM as b_XSXX_GATQWM_SM--说明
      ,b.ZZMMM as b_XSXX_ZZMMM--政治面貌码
      ,bi.MC as b_XSXX_ZZMMM_MC--名称
      ,bi.JC as b_XSXX_ZZMMM_JC--简称
      ,b.JKZKM as b_XSXX_JKZKM--健康状况码
      ,bj.MC as b_XSXX_JKZKM_MC--名称
      ,bj.SM as b_XSXX_JKZKM_SM--说明
      ,b.XYZJM as b_XSXX_XYZJM--信仰宗教码
      ,bk.MC as b_XSXX_XYZJM_MC--名称
      ,b.XXM as b_XSXX_XXM--血型码
      ,bl.MC as b_XSXX_XXM_MC--名称
      ,bl.JC as b_XSXX_XXM_JC--简称
      ,b.ZP as b_XSXX_ZP--照片
      ,b.SFZJYXQ as b_XSXX_SFZJYXQ--身份证件有效期
      ,b.DSZYBZ as b_XSXX_DSZYBZ--独生子女标志
      ,b.RXNY as b_XSXX_RXNY--入学年月
      ,b.NJ as b_XSXX_NJ--年级
      ,b.BH as b_XSXX_BH--班号
      ,b.XSLBM as b_XSXX_XSLBM--学生类别码
      ,b.XZZ as b_XSXX_XZZ--现住址
      ,b.HKSZD as b_XSXX_HKSZD--户口所在地
      ,b.HKXZM as b_XSXX_HKXZM--户口性质码
      ,b.SFLDRK as b_XSXX_SFLDRK--是否流动人口
      ,b.TC as b_XSXX_TC--特长
      ,b.LXDH as b_XSXX_LXDH--联系电话
      ,b.TXDZ as b_XSXX_TXDZ--通信地址
      ,b.YZBM as b_XSXX_YZBM--邮政编码
      ,b.DZXX as b_XSXX_DZXX--电子信箱
      ,b.ZYDZ as b_XSXX_ZYDZ--主页地址
      ,b.XJH as b_XSXX_XJH--学籍号
      ,c.XXDM as c_ZXXX_XXDM--学校代码
      ,c.XXMC as c_ZXXX_XXMC--学校名称
      ,c.XXYWMC as c_ZXXX_XXYWMC--学校英文名称
      ,c.XXDZ as c_ZXXX_XXDZ--学校地址
      ,c.XXYZBM as c_ZXXX_XXYZBM--学校邮政编码
      ,c.XZQHM as c_ZXXX_XZQHM--行政区划码
      ,c.JXNY as c_ZXXX_JXNY--建校年月
      ,c.XQR as c_ZXXX_XQR--校庆日
      ,c.XXBXLXM as c_ZXXX_XXBXLXM--学校办学类型码
      ,c.XXZGBMM as c_ZXXX_XXZGBMM--学校主管部门码
      ,c.FDDBRH as c_ZXXX_FDDBRH--法定代表人号
      ,c.FRZSH as c_ZXXX_FRZSH--法人证书号
      ,c.XZGH as c_ZXXX_XZGH--校长工号
      ,c.XZXM as c_ZXXX_XZXM--校长姓名
      ,c.DWFZRH as c_ZXXX_DWFZRH--党委负责人号
      ,c.ZZJGM as c_ZXXX_ZZJGM--组织机构码
      ,c.LXDH as c_ZXXX_LXDH--联系电话
      ,c.CZDH as c_ZXXX_CZDH--传真电话
      ,c.DZXX as c_ZXXX_DZXX--电子信箱
      ,c.ZYDZ as c_ZXXX_ZYDZ--主页地址
      ,c.LSYG as c_ZXXX_LSYG--历史沿革
      ,c.XXBBM as c_ZXXX_XXBBM--学校办别码
      ,c.SSZGDWM as c_ZXXX_SSZGDWM--所属主管单位码
      ,c.SZDCXLXM as c_ZXXX_SZDCXLXM--所在地城乡类型码
      ,c.SZDJJSXM as c_ZXXX_SZDJJSXM--所在地经济属性码
      ,c.SZDMZSX as c_ZXXX_SZDMZSX--所在地民族属性
      ,c.XXXZ as c_ZXXX_XXXZ--小学学制
      ,c.XXRXNL as c_ZXXX_XXRXNL--小学入学年龄
      ,c.CZXZ as c_ZXXX_CZXZ--初中学制
      ,c.CZRXNL as c_ZXXX_CZRXNL--初中入学年龄
      ,c.GZXZ as c_ZXXX_GZXZ--高中学制
      ,c.ZJXYYM as c_ZXXX_ZJXYYM--主教学语言码
      ,c.FJXYYM as c_ZXXX_FJXYYM--辅教学语言码
      ,c.ZSBJ as c_ZXXX_ZSBJ--招生半径
      ,d.MC as d_XJYDLB_MC--名称
      ,e.MC as e_XJYDYY_MC--名称
      ,f.SCHOOLID as f_JZGJBSJ_SCHOOLID--学校名
      ,f.GH as f_JZGJBSJ_GH--工号
      ,f.XM as f_JZGJBSJ_XM--姓名
      ,f.YWXM as f_JZGJBSJ_YWXM--英文姓名
      ,f.XMPY as f_JZGJBSJ_XMPY--姓名拼音
      ,f.CYM as f_JZGJBSJ_CYM--曾用名
      ,f.XBM as f_JZGJBSJ_XBM--性别码
      ,fb.MC as f_JZGJBSJ_XBM_MC--名称
      ,f.CSRQ as f_JZGJBSJ_CSRQ--出生日期
      ,f.CSDM as f_JZGJBSJ_CSDM--出生地码
      ,fc.MC as f_JZGJBSJ_CSDM_MC--名称
      ,f.JG as f_JZGJBSJ_JG--籍贯
      ,f.MZM as f_JZGJBSJ_MZM--民族码
      ,fd.MZMC as f_JZGJBSJ_MZM_MZMC--民族名称
      ,fd.ZMDM as f_JZGJBSJ_MZM_ZMDM--字母代码
      ,f.GJDQM as f_JZGJBSJ_GJDQM--国籍/地区码
      ,fe.GJDQMCJC as f_JZGJBSJ_GJDQM_GJDQMCJC--国家/地区名称简称
      ,fe.EZMDM as f_JZGJBSJ_GJDQM_EZMDM--二字母代码
      ,fe.SZMDM as f_JZGJBSJ_GJDQM_SZMDM--三字母代码
      ,f.SFZJLXM as f_JZGJBSJ_SFZJLXM--身份证件类型码
      ,ff.MC as f_JZGJBSJ_SFZJLXM_MC--名称
      ,f.SFZJH as f_JZGJBSJ_SFZJH--身份证件号
      ,f.HYZKM as f_JZGJBSJ_HYZKM--婚姻状况码
      ,f.GATQWM as f_JZGJBSJ_GATQWM--港澳台侨外码
      ,fg.MC as f_JZGJBSJ_GATQWM_MC--名称
      ,fg.SM as f_JZGJBSJ_GATQWM_SM--说明
      ,f.ZZMMM as f_JZGJBSJ_ZZMMM--政治面貌码
      ,fh.MC as f_JZGJBSJ_ZZMMM_MC--名称
      ,fh.JC as f_JZGJBSJ_ZZMMM_JC--简称
      ,f.JKZKM as f_JZGJBSJ_JKZKM--健康状况码
      ,fi.MC as f_JZGJBSJ_JKZKM_MC--名称
      ,fi.SM as f_JZGJBSJ_JKZKM_SM--说明
      ,f.XYZJM as f_JZGJBSJ_XYZJM--信仰宗教码
      ,fj.MC as f_JZGJBSJ_XYZJM_MC--名称
      ,f.XXM as f_JZGJBSJ_XXM--血型码
      ,fk.MC as f_JZGJBSJ_XXM_MC--名称
      ,fk.JC as f_JZGJBSJ_XXM_JC--简称
      ,f.ZP as f_JZGJBSJ_ZP--照片
      ,f.SFZJYXQ as f_JZGJBSJ_SFZJYXQ--身份证件有效期
      ,f.JGH as f_JZGJBSJ_JGH--机构号
      ,f.JTZZ as f_JZGJBSJ_JTZZ--家庭住址
      ,f.XZZ as f_JZGJBSJ_XZZ--现住址
      ,f.HKSZD as f_JZGJBSJ_HKSZD--户口所在地
      ,f.HKXZM as f_JZGJBSJ_HKXZM--户口性质码
      ,f.XLM as f_JZGJBSJ_XLM--学历码
      ,f.GZNY as f_JZGJBSJ_GZNY--参加工作年月
      ,f.LXNY as f_JZGJBSJ_LXNY--来校年月
      ,f.CJNY as f_JZGJBSJ_CJNY--从教年月
      ,f.BZLBM as f_JZGJBSJ_BZLBM--编制类别码
      ,f.DABH as f_JZGJBSJ_DABH--档案编号
      ,f.DAWB as f_JZGJBSJ_DAWB--档案文本
      ,f.TXDZ as f_JZGJBSJ_TXDZ--通信地址
      ,f.LXDH as f_JZGJBSJ_LXDH--联系电话
      ,f.YZBM as f_JZGJBSJ_YZBM--邮政编码
      ,f.DZXX as f_JZGJBSJ_DZXX--电子信箱
      ,f.ZYDZ as f_JZGJBSJ_ZYDZ--主页地址
      ,f.TC as f_JZGJBSJ_TC--特长
      ,f.GWZYM as f_JZGJBSJ_GWZYM--岗位职业码
      ,f.ZYRKXD as f_JZGJBSJ_ZYRKXD--主要任课学段
      ,g.SCHOOLID as g_NJ_SCHOOLID--学校名
      ,g.NJMC as g_NJ_NJMC--年级名称
      ,h.SCHOOLID as h_NJ_SCHOOLID--学校名
      ,h.NJMC as h_NJ_NJMC--年级名称

FROM dbo.EDU_ZXXS_07_A02_XJYD AS a LEFT OUTER JOIN
      dbo.EDU_ZXXS_01_01_XSXX AS b ON a.XSXXID = b.ID /*学生ID*/ AND a.SCHOOLID = b.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_01_01_ZXXX AS c ON a.SCHOOLID = c.ID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_JY_XJYDLB AS d ON a.YDLBM = d.DM /*异动类别码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XJYDYY AS e ON a.YDYYM = e.DM /*异动原因码*/ LEFT OUTER JOIN
      dbo.EDU_ZXJZ_01_01_JZGJBSJ AS f ON a.JBRID = f.ID /*经办人ID*/ AND a.SCHOOLID = f.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_02_01_NJ AS g ON a.YNJ = g.NJ /*原年级*/ AND a.SCHOOLID = g.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_02_01_NJ AS h ON a.XNJ = h.NJ /*现年级*/ AND a.SCHOOLID = h.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS bb ON b.XBM = bb.DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS bc ON b.CSDM = bc.DM /*出生地码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS bd ON b.MZM = bd.DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS be ON b.GJDQM = be.DM /*国籍/地区码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS bf ON b.SFZJLXM = bf.DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_HYZZ AS bg ON b.HYZKM = bg.DM /*婚姻状况码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS bh ON b.GATQWM = bh.DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS bi ON b.ZZMMM = bi.DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS bj ON b.JKZKM = bj.DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS bk ON b.XYZJM = bk.DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS bl ON b.XXM = bl.DM /*血型码*/ LEFT OUTER JOIN
      dbo.EDU_GB_RDXB AS fb ON f.XBM = fb.DM /*性别码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS fc ON f.CSDM = fc.DM /*出生地码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZGGMZMCDLMZMPXF AS fd ON f.MZM = fd.DM /*民族码*/ LEFT OUTER JOIN
      dbo.EDU_GB_SJGGHDQMC AS fe ON f.GJDQM = fe.DM /*国籍/地区码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFZJLX AS ff ON f.SFZJLXM = ff.DM /*身份证件类型码*/ LEFT OUTER JOIN
      dbo.EDU_JY_GATQW AS fg ON f.GATQWM = fg.DM /*港澳台侨外码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZZMM AS fh ON f.ZZMMM = fh.DM /*政治面貌码*/ LEFT OUTER JOIN
      dbo.EDU_GB_JKZKYWSZ AS fi ON f.JKZKM = fi.DM /*健康状况码*/ LEFT OUTER JOIN
      dbo.EDU_GB_ZJXY AS fj ON f.XYZJM = fj.DM /*信仰宗教码*/ LEFT OUTER JOIN
      dbo.EDU_JY_XX AS fk ON f.XXM = fk.DM /*血型码*/
GO

--年级数据类表
CREATE VIEW [dbo].[VIEW_EDU_ZXXX_02_01_NJ_DISP]
AS
SELECT a.[SCHOOLID]--学校名
      ,a.[NJ]--年级号
      ,a.[NJMC]--年级名称
      ,b.XXDM as b_ZXXX_XXDM--学校代码
      ,b.XXMC as b_ZXXX_XXMC--学校名称
      ,b.XXYWMC as b_ZXXX_XXYWMC--学校英文名称
      ,b.XXDZ as b_ZXXX_XXDZ--学校地址
      ,b.XXYZBM as b_ZXXX_XXYZBM--学校邮政编码
      ,b.XZQHM as b_ZXXX_XZQHM--行政区划码
      ,b.JXNY as b_ZXXX_JXNY--建校年月
      ,b.XQR as b_ZXXX_XQR--校庆日
      ,b.XXBXLXM as b_ZXXX_XXBXLXM--学校办学类型码
      ,b.XXZGBMM as b_ZXXX_XXZGBMM--学校主管部门码
      ,b.FDDBRH as b_ZXXX_FDDBRH--法定代表人号
      ,b.FRZSH as b_ZXXX_FRZSH--法人证书号
      ,b.XZGH as b_ZXXX_XZGH--校长工号
      ,b.XZXM as b_ZXXX_XZXM--校长姓名
      ,b.DWFZRH as b_ZXXX_DWFZRH--党委负责人号
      ,b.ZZJGM as b_ZXXX_ZZJGM--组织机构码
      ,b.LXDH as b_ZXXX_LXDH--联系电话
      ,b.CZDH as b_ZXXX_CZDH--传真电话
      ,b.DZXX as b_ZXXX_DZXX--电子信箱
      ,b.ZYDZ as b_ZXXX_ZYDZ--主页地址
      ,b.LSYG as b_ZXXX_LSYG--历史沿革
      ,b.XXBBM as b_ZXXX_XXBBM--学校办别码
      ,b.SSZGDWM as b_ZXXX_SSZGDWM--所属主管单位码
      ,b.SZDCXLXM as b_ZXXX_SZDCXLXM--所在地城乡类型码
      ,b.SZDJJSXM as b_ZXXX_SZDJJSXM--所在地经济属性码
      ,b.SZDMZSX as b_ZXXX_SZDMZSX--所在地民族属性
      ,b.XXXZ as b_ZXXX_XXXZ--小学学制
      ,b.XXRXNL as b_ZXXX_XXRXNL--小学入学年龄
      ,b.CZXZ as b_ZXXX_CZXZ--初中学制
      ,b.CZRXNL as b_ZXXX_CZRXNL--初中入学年龄
      ,b.GZXZ as b_ZXXX_GZXZ--高中学制
      ,b.ZJXYYM as b_ZXXX_ZJXYYM--主教学语言码
      ,b.FJXYYM as b_ZXXX_FJXYYM--辅教学语言码
      ,b.ZSBJ as b_ZXXX_ZSBJ--招生半径

FROM dbo.EDU_ZXXX_02_01_NJ AS a LEFT OUTER JOIN
      dbo.EDU_ZXXX_01_01_ZXXX AS b ON a.SCHOOLID = b.ID /*学校名*/
GO

--班级数据类表
CREATE VIEW [dbo].[VIEW_EDU_ZXXX_03_01_BJ_DISP]
AS
SELECT a.[SCHOOLID]--学校名
      ,a.[BH]--班号
      ,a.[NJ]--年级号
      ,a.[BJ]--班级名称
      ,a.[JBNY]--建班年月
      ,a.[BZRGH]--班主任工号
      ,a.[BZXH]--班长学号
      ,a.[BJRYCH]--班级荣誉称号
      ,a.[XZ]--学制
      ,a.[BJLXM]--班级类型码
      ,a.[WLLX]--文理类型
      ,a.[BYRQ]--毕业日期
      ,a.[SFSSMZSYJXB]--是否少数民族双语教学班
      ,a.[SYJXMSM]--双语教学模式码
      ,b.XXDM as b_ZXXX_XXDM--学校代码
      ,b.XXMC as b_ZXXX_XXMC--学校名称
      ,b.XXYWMC as b_ZXXX_XXYWMC--学校英文名称
      ,b.XXDZ as b_ZXXX_XXDZ--学校地址
      ,b.XXYZBM as b_ZXXX_XXYZBM--学校邮政编码
      ,b.XZQHM as b_ZXXX_XZQHM--行政区划码
      ,b.JXNY as b_ZXXX_JXNY--建校年月
      ,b.XQR as b_ZXXX_XQR--校庆日
      ,b.XXBXLXM as b_ZXXX_XXBXLXM--学校办学类型码
      ,b.XXZGBMM as b_ZXXX_XXZGBMM--学校主管部门码
      ,b.FDDBRH as b_ZXXX_FDDBRH--法定代表人号
      ,b.FRZSH as b_ZXXX_FRZSH--法人证书号
      ,b.XZGH as b_ZXXX_XZGH--校长工号
      ,b.XZXM as b_ZXXX_XZXM--校长姓名
      ,b.DWFZRH as b_ZXXX_DWFZRH--党委负责人号
      ,b.ZZJGM as b_ZXXX_ZZJGM--组织机构码
      ,b.LXDH as b_ZXXX_LXDH--联系电话
      ,b.CZDH as b_ZXXX_CZDH--传真电话
      ,b.DZXX as b_ZXXX_DZXX--电子信箱
      ,b.ZYDZ as b_ZXXX_ZYDZ--主页地址
      ,b.LSYG as b_ZXXX_LSYG--历史沿革
      ,b.XXBBM as b_ZXXX_XXBBM--学校办别码
      ,b.SSZGDWM as b_ZXXX_SSZGDWM--所属主管单位码
      ,b.SZDCXLXM as b_ZXXX_SZDCXLXM--所在地城乡类型码
      ,b.SZDJJSXM as b_ZXXX_SZDJJSXM--所在地经济属性码
      ,b.SZDMZSX as b_ZXXX_SZDMZSX--所在地民族属性
      ,b.XXXZ as b_ZXXX_XXXZ--小学学制
      ,b.XXRXNL as b_ZXXX_XXRXNL--小学入学年龄
      ,b.CZXZ as b_ZXXX_CZXZ--初中学制
      ,b.CZRXNL as b_ZXXX_CZRXNL--初中入学年龄
      ,b.GZXZ as b_ZXXX_GZXZ--高中学制
      ,b.ZJXYYM as b_ZXXX_ZJXYYM--主教学语言码
      ,b.FJXYYM as b_ZXXX_FJXYYM--辅教学语言码
      ,b.ZSBJ as b_ZXXX_ZSBJ--招生半径
      ,c.SCHOOLID as c_NJ_SCHOOLID--学校名
      ,c.NJMC as c_NJ_NJMC--年级名称

FROM dbo.EDU_ZXXX_03_01_BJ AS a LEFT OUTER JOIN
      dbo.EDU_ZXXX_01_01_ZXXX AS b ON a.SCHOOLID = b.ID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_02_01_NJ AS c ON a.NJ = c.NJ /*年级号*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/
GO

--机构数据类表
CREATE VIEW [dbo].[VIEW_EDU_ZXXX_04_01_JG_DISP]
AS
SELECT a.[SCHOOLID]--学校名
      ,a.[JGH]--机构号
      ,a.[LSJGH]--隶属机构号
      ,a.[JGMC]--机构名称
      ,a.[JGJC]--机构简称
      ,a.[FZRGH]--负责人工号
      ,b.XXDM as b_ZXXX_XXDM--学校代码
      ,b.XXMC as b_ZXXX_XXMC--学校名称
      ,b.XXYWMC as b_ZXXX_XXYWMC--学校英文名称
      ,b.XXDZ as b_ZXXX_XXDZ--学校地址
      ,b.XXYZBM as b_ZXXX_XXYZBM--学校邮政编码
      ,b.XZQHM as b_ZXXX_XZQHM--行政区划码
      ,b.JXNY as b_ZXXX_JXNY--建校年月
      ,b.XQR as b_ZXXX_XQR--校庆日
      ,b.XXBXLXM as b_ZXXX_XXBXLXM--学校办学类型码
      ,b.XXZGBMM as b_ZXXX_XXZGBMM--学校主管部门码
      ,b.FDDBRH as b_ZXXX_FDDBRH--法定代表人号
      ,b.FRZSH as b_ZXXX_FRZSH--法人证书号
      ,b.XZGH as b_ZXXX_XZGH--校长工号
      ,b.XZXM as b_ZXXX_XZXM--校长姓名
      ,b.DWFZRH as b_ZXXX_DWFZRH--党委负责人号
      ,b.ZZJGM as b_ZXXX_ZZJGM--组织机构码
      ,b.LXDH as b_ZXXX_LXDH--联系电话
      ,b.CZDH as b_ZXXX_CZDH--传真电话
      ,b.DZXX as b_ZXXX_DZXX--电子信箱
      ,b.ZYDZ as b_ZXXX_ZYDZ--主页地址
      ,b.LSYG as b_ZXXX_LSYG--历史沿革
      ,b.XXBBM as b_ZXXX_XXBBM--学校办别码
      ,b.SSZGDWM as b_ZXXX_SSZGDWM--所属主管单位码
      ,b.SZDCXLXM as b_ZXXX_SZDCXLXM--所在地城乡类型码
      ,b.SZDJJSXM as b_ZXXX_SZDJJSXM--所在地经济属性码
      ,b.SZDMZSX as b_ZXXX_SZDMZSX--所在地民族属性
      ,b.XXXZ as b_ZXXX_XXXZ--小学学制
      ,b.XXRXNL as b_ZXXX_XXRXNL--小学入学年龄
      ,b.CZXZ as b_ZXXX_CZXZ--初中学制
      ,b.CZRXNL as b_ZXXX_CZRXNL--初中入学年龄
      ,b.GZXZ as b_ZXXX_GZXZ--高中学制
      ,b.ZJXYYM as b_ZXXX_ZJXYYM--主教学语言码
      ,b.FJXYYM as b_ZXXX_FJXYYM--辅教学语言码
      ,b.ZSBJ as b_ZXXX_ZSBJ--招生半径
      ,c.SCHOOLID as c_JG_SCHOOLID--学校名
      ,c.LSJGH as c_JG_LSJGH--隶属机构号
      ,c.JGMC as c_JG_JGMC--机构名称
      ,c.JGJC as c_JG_JGJC--机构简称
      ,c.FZRGH as c_JG_FZRGH--负责人工号

FROM dbo.EDU_ZXXX_04_01_JG AS a LEFT OUTER JOIN
      dbo.EDU_ZXXX_01_01_ZXXX AS b ON a.SCHOOLID = b.ID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_04_01_JG AS c ON a.LSJGH = c.JGH /*隶属机构号*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/
GO

--学期数据表
CREATE VIEW [dbo].[VIEW_EDU_ZXXX_05_A01_ZXXQ_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校名
      ,a.[XNID]--学年
      ,a.[XQM]--学期码
      ,a.[XQMC]--学期名称
      ,a.[XQKSRQ]--学期开始日期
      ,a.[XQJSRQ]--学期结束日期
      ,b.XXDM as b_ZXXX_XXDM--学校代码
      ,b.XXMC as b_ZXXX_XXMC--学校名称
      ,b.XXYWMC as b_ZXXX_XXYWMC--学校英文名称
      ,b.XXDZ as b_ZXXX_XXDZ--学校地址
      ,b.XXYZBM as b_ZXXX_XXYZBM--学校邮政编码
      ,b.XZQHM as b_ZXXX_XZQHM--行政区划码
      ,b.JXNY as b_ZXXX_JXNY--建校年月
      ,b.XQR as b_ZXXX_XQR--校庆日
      ,b.XXBXLXM as b_ZXXX_XXBXLXM--学校办学类型码
      ,b.XXZGBMM as b_ZXXX_XXZGBMM--学校主管部门码
      ,b.FDDBRH as b_ZXXX_FDDBRH--法定代表人号
      ,b.FRZSH as b_ZXXX_FRZSH--法人证书号
      ,b.XZGH as b_ZXXX_XZGH--校长工号
      ,b.XZXM as b_ZXXX_XZXM--校长姓名
      ,b.DWFZRH as b_ZXXX_DWFZRH--党委负责人号
      ,b.ZZJGM as b_ZXXX_ZZJGM--组织机构码
      ,b.LXDH as b_ZXXX_LXDH--联系电话
      ,b.CZDH as b_ZXXX_CZDH--传真电话
      ,b.DZXX as b_ZXXX_DZXX--电子信箱
      ,b.ZYDZ as b_ZXXX_ZYDZ--主页地址
      ,b.LSYG as b_ZXXX_LSYG--历史沿革
      ,b.XXBBM as b_ZXXX_XXBBM--学校办别码
      ,b.SSZGDWM as b_ZXXX_SSZGDWM--所属主管单位码
      ,b.SZDCXLXM as b_ZXXX_SZDCXLXM--所在地城乡类型码
      ,b.SZDJJSXM as b_ZXXX_SZDJJSXM--所在地经济属性码
      ,b.SZDMZSX as b_ZXXX_SZDMZSX--所在地民族属性
      ,b.XXXZ as b_ZXXX_XXXZ--小学学制
      ,b.XXRXNL as b_ZXXX_XXRXNL--小学入学年龄
      ,b.CZXZ as b_ZXXX_CZXZ--初中学制
      ,b.CZRXNL as b_ZXXX_CZRXNL--初中入学年龄
      ,b.GZXZ as b_ZXXX_GZXZ--高中学制
      ,b.ZJXYYM as b_ZXXX_ZJXYYM--主教学语言码
      ,b.FJXYYM as b_ZXXX_FJXYYM--辅教学语言码
      ,b.ZSBJ as b_ZXXX_ZSBJ--招生半径

FROM dbo.EDU_ZXXX_05_A01_ZXXQ AS a LEFT OUTER JOIN
      dbo.EDU_ZXXX_01_01_ZXXX AS b ON a.SCHOOLID = b.ID /*学校名*/
GO
