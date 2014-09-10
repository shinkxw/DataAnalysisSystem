
--班级考核成绩表
CREATE VIEW [dbo].[VIEW_EDU_ZXXS_51_A03_BJKHCJ_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[SSDLID]--所属大类ID
      ,a.[SSDLXMID]--所属大类项目ID
      ,a.[NJID]--年级ID
      ,a.[BJID]--班级ID
      ,a.[KHSJ]--考核时间
      ,a.[FZ]--分值
      ,a.[DJRID]--登记人ID
      ,a.[DJSJ]--登记时间
      ,c.SCHOOLID as c_KHDL_SCHOOLID--考核大类表 学校
      ,c.MC as c_KHDL_MC--考核大类表 名称
      ,c.KHDX as c_KHDL_KHDX--考核大类表 考核对象
      ,c.DJFS as c_KHDL_DJFS--考核大类表 登记方式
      ,c.KDJYHIDLB as c_KHDL_KDJYHIDLB--考核大类表 可登记用户ID列表
      ,c.KDJYHXMLB as c_KHDL_KDJYHXMLB--考核大类表 可登记用户姓名列表
      ,d.SCHOOLID as d_KHDLXM_SCHOOLID--考核大类项目表 学校
      ,d.SSDLID as d_KHDLXM_SSDLID--考核大类项目表 所属大类ID
      ,d.DLXMMC as d_KHDLXM_DLXMMC--考核大类项目表 大类项目名称
      ,d.FZLX as d_KHDLXM_FZLX--考核大类项目表 分值类型
      ,d.XMZGF as d_KHDLXM_XMZGF--考核大类项目表 项目最高分
      ,e.SCHOOLID as e_NJ_SCHOOLID--年级数据类表 学校名
      ,e.NJMC as e_NJ_NJMC--年级数据类表 年级名称
      ,e.ZT as e_NJ_ZT--年级数据类表 状态
      ,f.SCHOOLID as f_BJ_SCHOOLID--班级数据类表 学校名
      ,f.NJ as f_BJ_NJ--班级数据类表 年级号
      ,f.BJ as f_BJ_BJ--班级数据类表 班级名称
      ,f.JBNY as f_BJ_JBNY--班级数据类表 建班年月
      ,f.BZRGH as f_BJ_BZRGH--班级数据类表 班主任工号
      ,f.BZXH as f_BJ_BZXH--班级数据类表 班长学号
      ,f.BJRYCH as f_BJ_BJRYCH--班级数据类表 班级荣誉称号
      ,f.XZ as f_BJ_XZ--班级数据类表 学制
      ,f.BJLXM as f_BJ_BJLXM--班级数据类表 班级类型码
      ,[fb].MC as f_BJ_BJLXM_MC--中小学班级类型代码表 名称
      ,f.WLLX as f_BJ_WLLX--班级数据类表 文理类型
      ,f.BYRQ as f_BJ_BYRQ--班级数据类表 毕业日期
      ,f.SFSSMZSYJXB as f_BJ_SFSSMZSYJXB--班级数据类表 是否少数民族双语教学班
      ,[fc].MC as f_BJ_SFSSMZSYJXB_MC--是否标志代码表 名称
      ,f.SYJXMSM as f_BJ_SYJXMSM--班级数据类表 双语教学模式码
      ,[fd].MC as f_BJ_SYJXMSM_MC--少数民族双语教学模式代码表 名称
      ,[fd].SM as f_BJ_SYJXMSM_SM--少数民族双语教学模式代码表 说明
      ,f.BZRID as f_BJ_BZRID--班级数据类表 班主任ID
      ,f.ZT as f_BJ_ZT--班级数据类表 状态
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

FROM dbo.EDU_ZXXS_51_A03_BJKHCJ AS a LEFT OUTER JOIN
      dbo.EDU_ZXXS_51_A01_KHDL AS c ON a.SSDLID = c.ID /*所属大类ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZXXS_51_A02_KHDLXM AS d ON a.SSDLXMID = d.ID /*所属大类项目ID*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_02_01_NJ AS e ON a.NJID = e.NJ /*年级ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_03_01_BJ AS f ON a.BJID = f.BH /*班级ID*/ AND a.SCHOOLID = f.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS g ON a.DJRID = g.LOGINNAME /*登记人ID*/ AND a.SCHOOLID = g.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXBJLX AS [fb] ON f.BJLXM = [fb].DM /*班级类型码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [fc] ON f.SFSSMZSYJXB = [fc].DM /*是否少数民族双语教学班*/ LEFT OUTER JOIN
      dbo.EDU_JY_SSMZSYJXMS AS [fd] ON f.SYJXMSM = [fd].DM /*双语教学模式码*/
GO
