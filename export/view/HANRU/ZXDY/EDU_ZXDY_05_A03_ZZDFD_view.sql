
--值周打分单表
CREATE VIEW [dbo].[VIEW_EDU_ZXDY_05_A03_ZZDFD_DISP]
AS
SELECT a.[ID]--值周打分单表ID
      ,a.[SCHOOLID]--学校ID
      ,a.[XQID]--学期ID
      ,a.[ZCID]--周次ID
      ,a.[BJ]--班级
      ,a.[XSIDLB]--学生ID列表
      ,a.[XSMCLB]--学生名称列表
      ,a.[SSXZID]--所属细则
      ,a.[DFFZ]--打分分值
      ,a.[FSSJ]--发生时间
      ,a.[DFSJ]--打分时间
      ,a.[DFJSID]--打分教师ID
      ,a.[BZ]--备注
      ,c.SCHOOLID as c_XQ_SCHOOLID--学期数据表 学校名
      ,c.XNID as c_XQ_XNID--学期数据表 学年
      ,c.XQM as c_XQ_XQM--学期数据表 学期码
      ,[cb].MC as c_XQ_XQM_MC--学期代码表 名称
      ,c.XQMC as c_XQ_XQMC--学期数据表 学期名称
      ,c.XQKSRQ as c_XQ_XQKSRQ--学期数据表 学期开始日期
      ,c.XQJSRQ as c_XQ_XQJSRQ--学期数据表 学期结束日期
      ,d.SCHOOLID as d_ZZZC_SCHOOLID--值周周次表 学校ID
      ,d.XQID as d_ZZZC_XQID--值周周次表 学期ID
      ,d.ZCM as d_ZZZC_ZCM--值周周次表 周次名
      ,d.XQKSRQ as d_ZZZC_XQKSRQ--值周周次表 开始日期
      ,d.XQJSRQ as d_ZZZC_XQJSRQ--值周周次表 结束日期
      ,e.SCHOOLID as e_BJ_SCHOOLID--班级数据类表 学校名
      ,e.NJ as e_BJ_NJ--班级数据类表 年级号
      ,e.BJ as e_BJ_BJ--班级数据类表 班级名称
      ,e.JBNY as e_BJ_JBNY--班级数据类表 建班年月
      ,e.BZRGH as e_BJ_BZRGH--班级数据类表 班主任工号
      ,e.BZXH as e_BJ_BZXH--班级数据类表 班长学号
      ,e.BJRYCH as e_BJ_BJRYCH--班级数据类表 班级荣誉称号
      ,e.XZ as e_BJ_XZ--班级数据类表 学制
      ,e.BJLXM as e_BJ_BJLXM--班级数据类表 班级类型码
      ,[eb].MC as e_BJ_BJLXM_MC--中小学班级类型代码表 名称
      ,e.WLLX as e_BJ_WLLX--班级数据类表 文理类型
      ,e.BYRQ as e_BJ_BYRQ--班级数据类表 毕业日期
      ,e.SFSSMZSYJXB as e_BJ_SFSSMZSYJXB--班级数据类表 是否少数民族双语教学班
      ,[ec].MC as e_BJ_SFSSMZSYJXB_MC--是否标志代码表 名称
      ,e.SYJXMSM as e_BJ_SYJXMSM--班级数据类表 双语教学模式码
      ,[ed].MC as e_BJ_SYJXMSM_MC--少数民族双语教学模式代码表 名称
      ,[ed].SM as e_BJ_SYJXMSM_SM--少数民族双语教学模式代码表 说明
      ,e.BZRID as e_BJ_BZRID--班级数据类表 班主任ID
      ,e.ZT as e_BJ_ZT--班级数据类表 状态
      ,f.SCHOOLID as f_ZZDFXZ_SCHOOLID--值周打分细则表 学校ID
      ,f.SSDLID as f_ZZDFXZ_SSDLID--值周打分细则表 所属大类ID
      ,f.XZNR as f_ZZDFXZ_XZNR--值周打分细则表 细则内容
      ,f.XZFZ as f_ZZDFXZ_XZFZ--值周打分细则表 细则分值
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

FROM dbo.EDU_ZXDY_05_A03_ZZDFD AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS c ON a.XQID = c.ID /*学期ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZXDY_04_A06_ZZZC AS d ON a.ZCID = d.ID /*周次ID*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_03_01_BJ AS e ON a.BJ = e.BH /*班级*/ AND a.SCHOOLID = e.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZXDY_05_A02_ZZDFXZ AS f ON a.SSXZID = f.ID /*所属细则*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS g ON a.DFJSID = g.LOGINNAME /*打分教师ID*/ AND a.SCHOOLID = g.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS [cb] ON c.XQM = [cb].DM /*学期码*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXBJLX AS [eb] ON e.BJLXM = [eb].DM /*班级类型码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [ec] ON e.SFSSMZSYJXB = [ec].DM /*是否少数民族双语教学班*/ LEFT OUTER JOIN
      dbo.EDU_JY_SSMZSYJXMS AS [ed] ON e.SYJXMSM = [ed].DM /*双语教学模式码*/
GO
