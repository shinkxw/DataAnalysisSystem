
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
      ,a.[ZYMCLB]--组员名称列表
      ,b.SCHOOLNAME as b_SCHOOL_SCHOOLNAME--学校名称
      ,b.SCHOOLTYPE as b_SCHOOL_SCHOOLTYPE--学校类型
      ,b.XNID as b_SCHOOL_XNID--学年ID
      ,b.XQID as b_SCHOOL_XQID--学期ID
      ,b.MatchURL as b_SCHOOL_MatchURL--匹配url
      ,b.LogLevel as b_SCHOOL_LogLevel--日志级别
      ,c.SCHOOLID as c_XQ_SCHOOLID--学校名
      ,c.XNID as c_XQ_XNID--学年
      ,c.XQM as c_XQ_XQM--学期码
      ,cb.MC as c_XQ_XQM_MC--名称
      ,c.XQMC as c_XQ_XQMC--学期名称
      ,c.XQKSRQ as c_XQ_XQKSRQ--学期开始日期
      ,c.XQJSRQ as c_XQ_XQJSRQ--学期结束日期
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
      ,eb.MC as e_BJ_BJLXM_MC--名称
      ,e.WLLX as e_BJ_WLLX--文理类型
      ,e.BYRQ as e_BJ_BYRQ--毕业日期
      ,e.SFSSMZSYJXB as e_BJ_SFSSMZSYJXB--是否少数民族双语教学班
      ,ec.MC as e_BJ_SFSSMZSYJXB_MC--名称
      ,e.SYJXMSM as e_BJ_SYJXMSM--双语教学模式码
      ,ed.MC as e_BJ_SYJXMSM_MC--名称
      ,ed.SM as e_BJ_SYJXMSM_SM--说明
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
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS c ON a.XQID = c.ID /*学期ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZXDY_04_A06_ZZZC AS d ON a.ZCID = d.ID /*周次ID*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_03_01_BJ AS e ON a.ZZBJ = e.BH /*值周班级班号*/ AND a.SCHOOLID = e.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS f ON a.ZZID = f.LOGINNAME /*组长ID*/ AND a.SCHOOLID = f.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS cb ON c.XQM = cb.DM /*学期码*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXBJLX AS eb ON e.BJLXM = eb.DM /*班级类型码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS ec ON e.SFSSMZSYJXB = ec.DM /*是否少数民族双语教学班*/ LEFT OUTER JOIN
      dbo.EDU_JY_SSMZSYJXMS AS ed ON e.SYJXMSM = ed.DM /*双语教学模式码*/
GO
