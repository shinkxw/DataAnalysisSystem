--空间名：EDU_ELE  生成器：SqlBuilder0.1

if exists (select 1 from  sysobjects where  id = object_id('EDU_ELE_01_USER')
            and   type = 'U')
   drop table EDU_ELE_01_USER
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ELE_01_APP')
            and   type = 'U')
   drop table EDU_ELE_01_APP
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ELE_01_SCHOOL')
            and   type = 'U')
   drop table EDU_ELE_01_SCHOOL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ELE_01_XQ')
            and   type = 'U')
   drop table EDU_ELE_01_XQ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ELE_01_ROLE')
            and   type = 'U')
   drop table EDU_ELE_01_ROLE
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ELE_01_CONFIG')
            and   type = 'U')
   drop table EDU_ELE_01_CONFIG
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ELE_02_YHFZ')
            and   type = 'U')
   drop table EDU_ELE_02_YHFZ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ELE_03_APPRZ')
            and   type = 'U')
   drop table EDU_ELE_03_APPRZ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ELE_03_APPLL')
            and   type = 'U')
   drop table EDU_ELE_03_APPLL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ELE_04_PKJGJL')
            and   type = 'U')
   drop table EDU_ELE_04_PKJGJL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ELE_05_XL')
            and   type = 'U')
   drop table EDU_ELE_05_XL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ELE_05_XLZ')
            and   type = 'U')
   drop table EDU_ELE_05_XLZ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ELE_05_WEEKDAY')
            and   type = 'U')
   drop table EDU_ELE_05_WEEKDAY
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ELE_05_SD')
            and   type = 'U')
   drop table EDU_ELE_05_SD
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ELE_05_JC')
            and   type = 'U')
   drop table EDU_ELE_05_JC
go
--应用系统用户表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ELE_01_USER]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ELE_01_USER](
	[LOGINNAME]  nvarchar(20)  NOT NULL,--用户名
	[SCHOOLID]  int  NOT NULL,--学校ID
	[APPID]  int  NOT NULL,--应用ID
	[PWD]  nvarchar(100)  NOT NULL,--密码
	[STATUS]  int  NOT NULL,--用户状态
	[USERTYPE]  int  NOT NULL,--用户类别
	[USERID]  int  NOT NULL,--用户ID
	[ROLEIDLst]  nvarchar(200)  NOT NULL,--用户角色
	[XM]  nvarchar(36)  NOT NULL,--姓名
	[XB]  nvarchar(10)  NOT NULL,--性别
	[QQ]  nvarchar(10)  NOT NULL,--QQ
	[DZYJ]  nvarchar(100)  NOT NULL,--电子邮件
	[LXDH]  nvarchar(30)  NOT NULL,--联系电话
	[ZJDLSJ]  datetime  NOT NULL,--最近一次登录时间
	[DLCGCS]  int  NOT NULL,--登录成功次数
	[YHCJSJ]  datetime  NOT NULL,--用户创建时间
CONSTRAINT [PK_EDU_ELE_01_USER] PRIMARY KEY CLUSTERED
(
	[LOGINNAME] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--应用表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ELE_01_APP]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ELE_01_APP](
	[ID]  int  NOT NULL,--应用ID
	[SCHOOLID]  int  NOT NULL,--学校ID
	[NAME]  nvarchar(50)  NOT NULL,--应用名称
	[URL]  nvarchar(200)  NOT NULL,--网址
	[AUTHIP]  nvarchar(200)  NOT NULL,--限用IP
	[SM]  text  NOT NULL,--说明
	[DLFS]  int  NOT NULL,--登录方式
	[STATUS]  int  NOT NULL,--应用状态
	[TYPE]  int  NOT NULL,--应用类别
CONSTRAINT [PK_EDU_ELE_01_APP] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--学校配置表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ELE_01_SCHOOL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ELE_01_SCHOOL](
	[SCHOOLID]  int  NOT NULL,--学校ID
	[SCHOOLNAME]  nvarchar(60)  NOT NULL,--学校名称
	[SCHOOLTYPE]  int  NOT NULL,--学校类型
	[XNID]  int  NOT NULL,--学年ID
	[XQID]  int  NOT NULL,--学期ID
	[MatchURL]  nvarchar(500)  NOT NULL,--匹配url
	[MenhuURL]  nvarchar(500)  NOT NULL,--门户url
	[MenhuWebid]  int  NOT NULL,--门户webid
	[LogLevel]  int  NOT NULL,--日志级别
	[ModuleIdList]  text  NOT NULL,--权限列表
CONSTRAINT [PK_EDU_ELE_01_SCHOOL] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--学期数据表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ELE_01_XQ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ELE_01_XQ](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校名
	[XNID]  int  NOT NULL,--学年
	[XQM]  nvarchar(1)  NOT NULL,--学期码
	[XQMC]  nvarchar(10)  NOT NULL,--学期名称
	[XQKSRQ]  nvarchar(8)  NULL,--学期开始日期
	[XQJSRQ]  nvarchar(8)  NULL,--学期结束日期
CONSTRAINT [PK_EDU_ELE_01_XQ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--应用系统角色表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ELE_01_ROLE]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ELE_01_ROLE](
	[ID]  int  NOT NULL,--角色ID
	[SCHOOLID]  int  NOT NULL,--学校ID
	[APPID]  int  NOT NULL,--应用ID
	[NAME]  nvarchar(20)  NOT NULL,--角色名
	[PID]  int  NOT NULL,--角色所属父ID
	[ModIDLst]  text  NOT NULL,--角色能访问的模块列表
CONSTRAINT [PK_EDU_ELE_01_ROLE] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--应用系统配置表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ELE_01_CONFIG]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ELE_01_CONFIG](
	[ID]  int  NOT NULL,--配置ID
	[SCHOOLID]  int  NOT NULL,--学校ID
	[APPID]  int  NOT NULL,--应用ID
	[VALUE]  nvarchar(200)  NOT NULL,--配置值
CONSTRAINT [PK_EDU_ELE_01_CONFIG] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC,
	[APPID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--用户分组表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ELE_02_YHFZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ELE_02_YHFZ](
	[ID]  int  NOT NULL,--分组ID
	[SCHOOLID]  int  NOT NULL,--学校ID
	[APPID]  int  NOT NULL,--应用ID
	[YHID]  nvarchar(20)  NOT NULL,--用户ID
	[SJFZID]  int  NOT NULL,--上级分组ID
	[FZMC]  nvarchar(100)  NOT NULL,--分组名称
	[FZYHID]  text  NOT NULL,--分组用户ID列表
CONSTRAINT [PK_EDU_ELE_02_YHFZ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC,
	[APPID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--应用日志表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ELE_03_APPRZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ELE_03_APPRZ](
	[ID]  int  identity,--编号
	[SCHOOLID]  int  NOT NULL,--学校名
	[APPID]  int  NOT NULL,--应用ID
	[RZLX]  int  NOT NULL,--日志类型
	[YHID]  nvarchar(20)  NOT NULL,--操作用户
	[CZSJ]  datetime  NOT NULL,--操作时间
	[CZYY]  nvarchar(30)  NOT NULL,--操作应用
	[CZLX]  nvarchar(10)  NOT NULL,--操作类型
	[CZJTXX]  nvarchar(200)  NULL,--操作具体信息
CONSTRAINT [PK_EDU_ELE_03_APPRZ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[APPID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--应用履历表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ELE_03_APPLL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ELE_03_APPLL](
	[ID]  int  identity,--编号
	[SCHOOLID]  int  NOT NULL,--学校名
	[APPID]  int  NOT NULL,--应用ID
	[YHID]  nvarchar(20)  NOT NULL,--操作用户
	[CZSJ]  datetime  NOT NULL,--操作时间
	[CZYY]  nvarchar(30)  NOT NULL,--操作应用
	[CZBM]  nvarchar(100)  NOT NULL,--操作表名
	[CZXX]  text  NOT NULL,--操作信息
CONSTRAINT [PK_EDU_ELE_03_APPLL] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[APPID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--排课结果记录表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ELE_04_PKJGJL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ELE_04_PKJGJL](
	[ID]  int  identity,--编号
	[SCHOOLID]  int  NOT NULL,--学校名
	[XQID]  int  NOT NULL,--学期ID
	[TEACHERID]  int  NOT NULL,--老师
	[TEACHERNAME]  nvarchar(100)  NOT NULL,--老师
	[COURSEID]  nvarchar(20)  NOT NULL,--课程
	[COURSENAME]  nvarchar(100)  NOT NULL,--课程
	[CLASSID]  nvarchar(20)  NOT NULL,--班级
	[CLASSNAME]  nvarchar(100)  NOT NULL,--班级
	[WEEKDAY]  int  NOT NULL,--工作日
	[WEEKDAYNAME]  nvarchar(20)  NOT NULL,--工作日名称
	[PERIOD]  int  NOT NULL,--时段
	[PERIODNAME]  nvarchar(20)  NOT NULL,--时段名称
	[SESSION]  int  NOT NULL,--节次
	[SESSIONNAME]  nvarchar(20)  NOT NULL,--节次名称
CONSTRAINT [PK_EDU_ELE_04_PKJGJL] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--校历表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ELE_05_XL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ELE_05_XL](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校ID
	[NAME]  nvarchar(50)  NOT NULL,--校历名称
	[STARTDAY]  datetime  NOT NULL,--开始日期
	[ENDDAY]  datetime  NOT NULL,--结束日期
	[XNID]  int  NOT NULL,--学年ID
	[XQID]  int  NOT NULL,--学期ID
CONSTRAINT [PK_EDU_ELE_05_XL] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--校历周表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ELE_05_XLZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ELE_05_XLZ](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校ID
	[XLID]  int  NOT NULL,--校历ID
	[NAME]  nvarchar(50)  NOT NULL,--校历周名称
	[STARTDAY]  datetime  NOT NULL,--开始日期
	[ENDDAY]  datetime  NOT NULL,--结束日期
	[ZJH]  text  NULL,--周计划
CONSTRAINT [PK_EDU_ELE_05_XLZ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--星期
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ELE_05_WEEKDAY]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ELE_05_WEEKDAY](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校名
	[MC]  nvarchar(8)  NOT NULL,--名称
CONSTRAINT [PK_EDU_ELE_05_WEEKDAY] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--时段
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ELE_05_SD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ELE_05_SD](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校名
	[MC]  nvarchar(5)  NOT NULL,--名称
CONSTRAINT [PK_EDU_ELE_05_SD] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--节次
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ELE_05_JC]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ELE_05_JC](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校名
	[MC]  nvarchar(5)  NOT NULL,--名称
CONSTRAINT [PK_EDU_ELE_05_JC] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--以下为添加注释语句
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'应用系统用户表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_USER'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_USER', @level2type=N'COLUMN',@level2name=N'LOGINNAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_USER', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'应用ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_USER', @level2type=N'COLUMN',@level2name=N'APPID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'密码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_USER', @level2type=N'COLUMN',@level2name=N'PWD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_USER', @level2type=N'COLUMN',@level2name=N'STATUS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户类别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_USER', @level2type=N'COLUMN',@level2name=N'USERTYPE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_USER', @level2type=N'COLUMN',@level2name=N'USERID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户角色' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_USER', @level2type=N'COLUMN',@level2name=N'ROLEIDLst'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_USER', @level2type=N'COLUMN',@level2name=N'XM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'性别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_USER', @level2type=N'COLUMN',@level2name=N'XB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'QQ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_USER', @level2type=N'COLUMN',@level2name=N'QQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电子邮件' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_USER', @level2type=N'COLUMN',@level2name=N'DZYJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_USER', @level2type=N'COLUMN',@level2name=N'LXDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最近一次登录时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_USER', @level2type=N'COLUMN',@level2name=N'ZJDLSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登录成功次数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_USER', @level2type=N'COLUMN',@level2name=N'DLCGCS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_USER', @level2type=N'COLUMN',@level2name=N'YHCJSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'应用表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_APP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'应用ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_APP', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_APP', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'应用名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_APP', @level2type=N'COLUMN',@level2name=N'NAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'网址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_APP', @level2type=N'COLUMN',@level2name=N'URL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'限用IP' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_APP', @level2type=N'COLUMN',@level2name=N'AUTHIP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_APP', @level2type=N'COLUMN',@level2name=N'SM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登录方式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_APP', @level2type=N'COLUMN',@level2name=N'DLFS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'应用状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_APP', @level2type=N'COLUMN',@level2name=N'STATUS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'应用类别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_APP', @level2type=N'COLUMN',@level2name=N'TYPE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校配置表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_SCHOOL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_SCHOOL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_SCHOOL', @level2type=N'COLUMN',@level2name=N'SCHOOLNAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_SCHOOL', @level2type=N'COLUMN',@level2name=N'SCHOOLTYPE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学年ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_SCHOOL', @level2type=N'COLUMN',@level2name=N'XNID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学期ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_SCHOOL', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'匹配url' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_SCHOOL', @level2type=N'COLUMN',@level2name=N'MatchURL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'门户url' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_SCHOOL', @level2type=N'COLUMN',@level2name=N'MenhuURL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'门户webid' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_SCHOOL', @level2type=N'COLUMN',@level2name=N'MenhuWebid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'日志级别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_SCHOOL', @level2type=N'COLUMN',@level2name=N'LogLevel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'权限列表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_SCHOOL', @level2type=N'COLUMN',@level2name=N'ModuleIdList'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学期数据表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_XQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_XQ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_XQ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学年' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_XQ', @level2type=N'COLUMN',@level2name=N'XNID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学期码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_XQ', @level2type=N'COLUMN',@level2name=N'XQM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学期名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_XQ', @level2type=N'COLUMN',@level2name=N'XQMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学期开始日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_XQ', @level2type=N'COLUMN',@level2name=N'XQKSRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学期结束日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_XQ', @level2type=N'COLUMN',@level2name=N'XQJSRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'应用系统角色表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_ROLE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_ROLE', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_ROLE', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'应用ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_ROLE', @level2type=N'COLUMN',@level2name=N'APPID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_ROLE', @level2type=N'COLUMN',@level2name=N'NAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色所属父ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_ROLE', @level2type=N'COLUMN',@level2name=N'PID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色能访问的模块列表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_ROLE', @level2type=N'COLUMN',@level2name=N'ModIDLst'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'应用系统配置表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_CONFIG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'配置ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_CONFIG', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_CONFIG', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'应用ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_CONFIG', @level2type=N'COLUMN',@level2name=N'APPID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'配置值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_CONFIG', @level2type=N'COLUMN',@level2name=N'VALUE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户分组表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_02_YHFZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分组ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_02_YHFZ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_02_YHFZ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'应用ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_02_YHFZ', @level2type=N'COLUMN',@level2name=N'APPID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_02_YHFZ', @level2type=N'COLUMN',@level2name=N'YHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上级分组ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_02_YHFZ', @level2type=N'COLUMN',@level2name=N'SJFZID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分组名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_02_YHFZ', @level2type=N'COLUMN',@level2name=N'FZMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分组用户ID列表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_02_YHFZ', @level2type=N'COLUMN',@level2name=N'FZYHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'应用日志表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_03_APPRZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_03_APPRZ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_03_APPRZ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'应用ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_03_APPRZ', @level2type=N'COLUMN',@level2name=N'APPID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'日志类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_03_APPRZ', @level2type=N'COLUMN',@level2name=N'RZLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_03_APPRZ', @level2type=N'COLUMN',@level2name=N'YHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_03_APPRZ', @level2type=N'COLUMN',@level2name=N'CZSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作应用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_03_APPRZ', @level2type=N'COLUMN',@level2name=N'CZYY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_03_APPRZ', @level2type=N'COLUMN',@level2name=N'CZLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作具体信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_03_APPRZ', @level2type=N'COLUMN',@level2name=N'CZJTXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'应用履历表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_03_APPLL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_03_APPLL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_03_APPLL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'应用ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_03_APPLL', @level2type=N'COLUMN',@level2name=N'APPID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_03_APPLL', @level2type=N'COLUMN',@level2name=N'YHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_03_APPLL', @level2type=N'COLUMN',@level2name=N'CZSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作应用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_03_APPLL', @level2type=N'COLUMN',@level2name=N'CZYY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作表名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_03_APPLL', @level2type=N'COLUMN',@level2name=N'CZBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_03_APPLL', @level2type=N'COLUMN',@level2name=N'CZXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排课结果记录表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_04_PKJGJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_04_PKJGJL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_04_PKJGJL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学期ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_04_PKJGJL', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'老师' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_04_PKJGJL', @level2type=N'COLUMN',@level2name=N'TEACHERID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'老师' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_04_PKJGJL', @level2type=N'COLUMN',@level2name=N'TEACHERNAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_04_PKJGJL', @level2type=N'COLUMN',@level2name=N'COURSEID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_04_PKJGJL', @level2type=N'COLUMN',@level2name=N'COURSENAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'班级' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_04_PKJGJL', @level2type=N'COLUMN',@level2name=N'CLASSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'班级' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_04_PKJGJL', @level2type=N'COLUMN',@level2name=N'CLASSNAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工作日' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_04_PKJGJL', @level2type=N'COLUMN',@level2name=N'WEEKDAY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工作日名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_04_PKJGJL', @level2type=N'COLUMN',@level2name=N'WEEKDAYNAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'时段' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_04_PKJGJL', @level2type=N'COLUMN',@level2name=N'PERIOD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'时段名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_04_PKJGJL', @level2type=N'COLUMN',@level2name=N'PERIODNAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'节次' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_04_PKJGJL', @level2type=N'COLUMN',@level2name=N'SESSION'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'节次名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_04_PKJGJL', @level2type=N'COLUMN',@level2name=N'SESSIONNAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'校历表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_05_XL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_05_XL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_05_XL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'校历名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_05_XL', @level2type=N'COLUMN',@level2name=N'NAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开始日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_05_XL', @level2type=N'COLUMN',@level2name=N'STARTDAY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'结束日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_05_XL', @level2type=N'COLUMN',@level2name=N'ENDDAY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学年ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_05_XL', @level2type=N'COLUMN',@level2name=N'XNID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学期ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_05_XL', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'校历周表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_05_XLZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_05_XLZ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_05_XLZ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'校历ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_05_XLZ', @level2type=N'COLUMN',@level2name=N'XLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'校历周名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_05_XLZ', @level2type=N'COLUMN',@level2name=N'NAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开始日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_05_XLZ', @level2type=N'COLUMN',@level2name=N'STARTDAY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'结束日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_05_XLZ', @level2type=N'COLUMN',@level2name=N'ENDDAY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'周计划' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_05_XLZ', @level2type=N'COLUMN',@level2name=N'ZJH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'星期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_05_WEEKDAY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_05_WEEKDAY', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_05_WEEKDAY', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_05_WEEKDAY', @level2type=N'COLUMN',@level2name=N'MC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'时段' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_05_SD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_05_SD', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_05_SD', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_05_SD', @level2type=N'COLUMN',@level2name=N'MC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'节次' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_05_JC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_05_JC', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_05_JC', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_05_JC', @level2type=N'COLUMN',@level2name=N'MC'
GO
--空间名：EDU_JPXT  生成器：SqlBuilder0.1

if exists (select 1 from  sysobjects where  id = object_id('EDU_JPXT_01_01_JLCSJ')
            and   type = 'U')
   drop table EDU_JPXT_01_01_JLCSJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_JPXT_01_02_JLCBGLL')
            and   type = 'U')
   drop table EDU_JPXT_01_02_JLCBGLL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_JPXT_01_03_JLCWXQK')
            and   type = 'U')
   drop table EDU_JPXT_01_03_JLCWXQK
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_JPXT_01_04_JLCJYQK')
            and   type = 'U')
   drop table EDU_JPXT_01_04_JLCJYQK
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_JPXT_01_05_JLCYHQK')
            and   type = 'U')
   drop table EDU_JPXT_01_05_JLCYHQK
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_JPXT_01_06_JLCCLXH')
            and   type = 'U')
   drop table EDU_JPXT_01_06_JLCCLXH
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_JPXT_02_01_JLYSJ')
            and   type = 'U')
   drop table EDU_JPXT_02_01_JLYSJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_JPXT_02_02_JLYWJQK')
            and   type = 'U')
   drop table EDU_JPXT_02_02_JLYWJQK
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_JPXT_02_03_JLYAQQK')
            and   type = 'U')
   drop table EDU_JPXT_02_03_JLYAQQK
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_JPXT_02_04_JLYJCQK')
            and   type = 'U')
   drop table EDU_JPXT_02_04_JLYJCQK
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_JPXT_03_01_XYSJ')
            and   type = 'U')
   drop table EDU_JPXT_03_01_XYSJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_JPXT_03_02_XYKSJG')
            and   type = 'U')
   drop table EDU_JPXT_03_02_XYKSJG
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_JPXT_03_03_XYHFXX')
            and   type = 'U')
   drop table EDU_JPXT_03_03_XYHFXX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_JPXT_04_01_KMKS')
            and   type = 'U')
   drop table EDU_JPXT_04_01_KMKS
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_JPXT_05_01_CLXH')
            and   type = 'U')
   drop table EDU_JPXT_05_01_CLXH
go
--教练车数据表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_JPXT_01_01_JLCSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_JPXT_01_01_JLCSJ](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校ID
	[GMSJ]  datetime  NOT NULL,--购买时间
	[CLXHID]  int  NOT NULL,--车辆型号ID
	[PP]  nvarchar(100)  NOT NULL,--品牌
	[CPH]  nvarchar(50)  NOT NULL,--车牌号
	[FDJH]  nvarchar(100)  NULL,--发动机号
	[CJH]  nvarchar(100)  NOT NULL,--车架号
	[BFSJ]  datetime  NOT NULL,--报废时间
	[EBRQ]  datetime  NOT NULL,--二保日期
	[DQZT]  int  NOT NULL,--当前状态
	[DQJLYID]  int  NOT NULL,--当前教练员ID
	[BZ]  text  NULL,--备注
CONSTRAINT [PK_EDU_JPXT_01_01_JLCSJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--教练车保管履历表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_JPXT_01_02_JLCBGLL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_JPXT_01_02_JLCBGLL](
	[ID]  int  identity,--编号
	[SCHOOLID]  int  NOT NULL,--学校ID
	[JLCID]  int  NOT NULL,--教练车ID
	[JLYID]  int  NOT NULL,--教练员ID
	[BGKSSJ]  datetime  NOT NULL,--保管开始时间
	[BGJSSJ]  datetime  NULL,--保管结束时间
	[BGZT]  text  NOT NULL,--保管状态
CONSTRAINT [PK_EDU_JPXT_01_02_JLCBGLL] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--教练车维修情况表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_JPXT_01_03_JLCWXQK]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_JPXT_01_03_JLCWXQK](
	[ID]  int  identity,--编号
	[SCHOOLID]  int  NOT NULL,--学校ID
	[JLCID]  int  NOT NULL,--教练车ID
	[GZXX]  text  NOT NULL,--故障现象
	[SXSJ]  datetime  NOT NULL,--送修时间
	[WCSJ]  datetime  NOT NULL,--完成时间
	[WXJG]  text  NOT NULL,--维修结果
	[BZ]  text  NOT NULL,--备注
CONSTRAINT [PK_EDU_JPXT_01_03_JLCWXQK] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--教练车检验情况表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_JPXT_01_04_JLCJYQK]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_JPXT_01_04_JLCJYQK](
	[ID]  int  identity,--编号
	[SCHOOLID]  int  NOT NULL,--学校ID
	[JLCID]  int  NOT NULL,--教练车ID
	[JYNR]  text  NOT NULL,--检验内容
	[JYSJ]  datetime  NOT NULL,--检验时间
	[WCSJ]  datetime  NOT NULL,--完成时间
	[JYJG]  text  NOT NULL,--检验结果
	[BZ]  text  NOT NULL,--备注
CONSTRAINT [PK_EDU_JPXT_01_04_JLCJYQK] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--教练车油耗情况表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_JPXT_01_05_JLCYHQK]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_JPXT_01_05_JLCYHQK](
	[ID]  int  identity,--编号
	[SCHOOLID]  int  NOT NULL,--学校ID
	[JLCID]  int  NOT NULL,--教练车ID
	[JLYID]  int  NOT NULL,--教练员ID
	[LRSJ]  datetime  NOT NULL,--录入时间
	[YLCZ]  decimal(8, 3)  NOT NULL,--充值油量
	[BZ]  text  NOT NULL,--备注
CONSTRAINT [PK_EDU_JPXT_01_05_JLCYHQK] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--教练车材料消耗表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_JPXT_01_06_JLCCLXH]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_JPXT_01_06_JLCCLXH](
	[ID]  int  identity,--编号
	[SCHOOLID]  int  NOT NULL,--学校ID
	[JLCID]  int  NOT NULL,--教练车ID
	[JLYID]  int  NOT NULL,--教练员ID
	[LRSJ]  datetime  NOT NULL,--录入时间
	[XHQK]  decimal(8, 2)  NOT NULL,--消耗金额
	[BZ]  text  NOT NULL,--备注
CONSTRAINT [PK_EDU_JPXT_01_06_JLCCLXH] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--教练员数据表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_JPXT_02_01_JLYSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_JPXT_02_01_JLYSJ](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校ID
	[XM]  nvarchar(36)  NOT NULL,--姓名
	[XBM]  nvarchar(1)  NOT NULL,--性别码
	[SFZH]  nvarchar(50)  NOT NULL,--身份证号
	[JSZH]  nvarchar(50)  NOT NULL,--驾驶证号
	[JSZYXQ]  datetime  NOT NULL,--驾驶证有效期
	[JLZH]  nvarchar(50)  NOT NULL,--教练证号
	[JLZYXQ]  datetime  NOT NULL,--教练证有效期
	[XL]  nvarchar(50)  NOT NULL,--学历
	[ZC]  nvarchar(50)  NOT NULL,--职称
	[JXSJ]  datetime  NOT NULL,--进校时间
	[LXDH]  nvarchar(30)  NOT NULL,--联系电话
	[ZZ]  nvarchar(200)  NOT NULL,--住址
	[JSDJ]  nvarchar(100)  NOT NULL,--技术等级
	[JTCHYXM]  nvarchar(36)  NOT NULL,--家庭成员一姓名
	[JTCYYGX]  nvarchar(36)  NOT NULL,--家庭成员一关系
	[JTCYYXBM]  nvarchar(1)  NOT NULL,--家庭成员一性别码
	[JTCYYCSRQ]  datetime  NOT NULL,--家庭成员一出生日期
	[JTCYYZZ]  nvarchar(200)  NOT NULL,--家庭成员一住址
	[JTCYYLXDH]  nvarchar(30)  NOT NULL,--家庭成员一联系电话
	[JTCYYCSGZ]  nvarchar(200)  NOT NULL,--家庭成员一从事工作
	[JTCYEXM]  nvarchar(36)  NOT NULL,--家庭成员二姓名
	[JTCYEGX]  nvarchar(36)  NOT NULL,--家庭成员二关系
	[JTCYEXBM]  nvarchar(1)  NOT NULL,--家庭成员二性别码
	[JTCYECSRQ]  datetime  NOT NULL,--家庭成员二出生日期
	[JTCYEZZ]  nvarchar(200)  NOT NULL,--家庭成员二住址
	[JTCYELXDH]  nvarchar(30)  NOT NULL,--家庭成员二联系电话
	[JTCYECSGZ]  nvarchar(200)  NOT NULL,--家庭成员二从事工作
CONSTRAINT [PK_EDU_JPXT_02_01_JLYSJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--教练员违纪情况表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_JPXT_02_02_JLYWJQK]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_JPXT_02_02_JLYWJQK](
	[ID]  int  identity,--编号
	[SCHOOLID]  int  NOT NULL,--学校ID
	[JLYID]  int  NOT NULL,--教练员ID
	[TSR]  nvarchar(50)  NOT NULL,--投诉人
	[TSSJ]  datetime  NOT NULL,--投诉时间
	[LXDH]  nvarchar(30)  NOT NULL,--联系电话
	[TSNR]  text  NOT NULL,--投诉内容
	[CLJG]  text  NOT NULL,--处理结果
	[BZ]  text  NOT NULL,--备注
CONSTRAINT [PK_EDU_JPXT_02_02_JLYWJQK] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--教练员安全情况表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_JPXT_02_03_JLYAQQK]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_JPXT_02_03_JLYAQQK](
	[ID]  int  identity,--编号
	[SCHOOLID]  int  NOT NULL,--学校ID
	[JLYID]  int  NOT NULL,--教练员ID
	[LRSJ]  datetime  NOT NULL,--录入时间
	[AQQK]  text  NOT NULL,--安全情况
	[BZ]  text  NOT NULL,--备注
CONSTRAINT [PK_EDU_JPXT_02_03_JLYAQQK] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--教练员奖惩情况表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_JPXT_02_04_JLYJCQK]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_JPXT_02_04_JLYJCQK](
	[ID]  int  identity,--编号
	[SCHOOLID]  int  NOT NULL,--学校ID
	[JLYID]  int  NOT NULL,--教练员ID
	[LRSJ]  datetime  NOT NULL,--录入时间
	[JCQK]  text  NOT NULL,--奖惩情况
	[BZ]  text  NOT NULL,--备注
CONSTRAINT [PK_EDU_JPXT_02_04_JLYJCQK] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--学员数据表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_JPXT_03_01_XYSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_JPXT_03_01_XYSJ](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校ID
	[XM]  nvarchar(36)  NOT NULL,--姓名
	[SFZH]  nvarchar(30)  NOT NULL,--身份证号
	[XBM]  nvarchar(1)  NOT NULL,--性别码
	[LXDH]  nvarchar(30)  NOT NULL,--联系电话
	[ZZ]  nvarchar(200)  NOT NULL,--住址
	[BMSJ]  datetime  NOT NULL,--报名时间
	[SFQK]  nvarchar(200)  NOT NULL,--缴费情况
	[SXCXID]  int  NOT NULL,--所选车型ID
	[ZJQK]  nvarchar(200)  NOT NULL,--增加情况
	[SSJLYID]  int  NOT NULL,--所属教练员ID
	[YJJLYID]  int  NOT NULL,--引荐教练员ID
	[DQZT]  int  NOT NULL,--当前状态
	[BYSJ]  datetime  NOT NULL,--毕业时间
CONSTRAINT [PK_EDU_JPXT_03_01_XYSJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--学员考试结果表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_JPXT_03_02_XYKSJG]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_JPXT_03_02_XYKSJG](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校ID
	[XYID]  int  NOT NULL,--学员ID
	[KMKSID]  int  NOT NULL,--科目考试ID
	[KSJG]  int  NOT NULL,--考试结果
CONSTRAINT [PK_EDU_JPXT_03_02_XYKSJG] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--学员回访信息表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_JPXT_03_03_XYHFXX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_JPXT_03_03_XYHFXX](
	[ID]  int  identity,--编号
	[SCHOOLID]  int  NOT NULL,--学校ID
	[XYID]  int  NOT NULL,--学员ID
	[HFSJ]  datetime  NOT NULL,--回访时间
	[HFJG]  text  NOT NULL,--回访结果
	[BZ]  text  NOT NULL,--备注
CONSTRAINT [PK_EDU_JPXT_03_03_XYHFXX] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--科目考试表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_JPXT_04_01_KMKS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_JPXT_04_01_KMKS](
	[ID]  int  identity,--编号
	[SCHOOLID]  int  NOT NULL,--学校ID
	[KMDM]  nvarchar(1)  NOT NULL,--科目代码
	[KSSJ]  datetime  NOT NULL,--考试时间
	[BZ]  text  NOT NULL,--备注
CONSTRAINT [PK_EDU_JPXT_04_01_KMKS] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--车辆型号数据表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_JPXT_05_01_CLXH]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_JPXT_05_01_CLXH](
	[ID]  int  identity,--编号
	[SCHOOLID]  int  NOT NULL,--学校ID
	[CLXHMC]  nvarchar(30)  NOT NULL,--车辆型号名称
	[BZ]  text  NOT NULL,--备注
CONSTRAINT [PK_EDU_JPXT_05_01_CLXH] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--以下为添加注释语句
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教练车数据表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_01_JLCSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_01_JLCSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_01_JLCSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'购买时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_01_JLCSJ', @level2type=N'COLUMN',@level2name=N'GMSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'车辆型号ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_01_JLCSJ', @level2type=N'COLUMN',@level2name=N'CLXHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'品牌' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_01_JLCSJ', @level2type=N'COLUMN',@level2name=N'PP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'车牌号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_01_JLCSJ', @level2type=N'COLUMN',@level2name=N'CPH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发动机号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_01_JLCSJ', @level2type=N'COLUMN',@level2name=N'FDJH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'车架号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_01_JLCSJ', @level2type=N'COLUMN',@level2name=N'CJH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'报废时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_01_JLCSJ', @level2type=N'COLUMN',@level2name=N'BFSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'二保日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_01_JLCSJ', @level2type=N'COLUMN',@level2name=N'EBRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'当前状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_01_JLCSJ', @level2type=N'COLUMN',@level2name=N'DQZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'当前教练员ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_01_JLCSJ', @level2type=N'COLUMN',@level2name=N'DQJLYID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_01_JLCSJ', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教练车保管履历表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_02_JLCBGLL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_02_JLCBGLL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_02_JLCBGLL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教练车ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_02_JLCBGLL', @level2type=N'COLUMN',@level2name=N'JLCID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教练员ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_02_JLCBGLL', @level2type=N'COLUMN',@level2name=N'JLYID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'保管开始时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_02_JLCBGLL', @level2type=N'COLUMN',@level2name=N'BGKSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'保管结束时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_02_JLCBGLL', @level2type=N'COLUMN',@level2name=N'BGJSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'保管状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_02_JLCBGLL', @level2type=N'COLUMN',@level2name=N'BGZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教练车维修情况表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_03_JLCWXQK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_03_JLCWXQK', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_03_JLCWXQK', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教练车ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_03_JLCWXQK', @level2type=N'COLUMN',@level2name=N'JLCID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'故障现象' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_03_JLCWXQK', @level2type=N'COLUMN',@level2name=N'GZXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'送修时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_03_JLCWXQK', @level2type=N'COLUMN',@level2name=N'SXSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'完成时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_03_JLCWXQK', @level2type=N'COLUMN',@level2name=N'WCSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'维修结果' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_03_JLCWXQK', @level2type=N'COLUMN',@level2name=N'WXJG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_03_JLCWXQK', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教练车检验情况表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_04_JLCJYQK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_04_JLCJYQK', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_04_JLCJYQK', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教练车ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_04_JLCJYQK', @level2type=N'COLUMN',@level2name=N'JLCID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'检验内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_04_JLCJYQK', @level2type=N'COLUMN',@level2name=N'JYNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'检验时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_04_JLCJYQK', @level2type=N'COLUMN',@level2name=N'JYSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'完成时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_04_JLCJYQK', @level2type=N'COLUMN',@level2name=N'WCSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'检验结果' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_04_JLCJYQK', @level2type=N'COLUMN',@level2name=N'JYJG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_04_JLCJYQK', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教练车油耗情况表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_05_JLCYHQK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_05_JLCYHQK', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_05_JLCYHQK', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教练车ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_05_JLCYHQK', @level2type=N'COLUMN',@level2name=N'JLCID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教练员ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_05_JLCYHQK', @level2type=N'COLUMN',@level2name=N'JLYID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'录入时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_05_JLCYHQK', @level2type=N'COLUMN',@level2name=N'LRSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'充值油量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_05_JLCYHQK', @level2type=N'COLUMN',@level2name=N'YLCZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_05_JLCYHQK', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教练车材料消耗表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_06_JLCCLXH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_06_JLCCLXH', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_06_JLCCLXH', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教练车ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_06_JLCCLXH', @level2type=N'COLUMN',@level2name=N'JLCID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教练员ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_06_JLCCLXH', @level2type=N'COLUMN',@level2name=N'JLYID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'录入时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_06_JLCCLXH', @level2type=N'COLUMN',@level2name=N'LRSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'消耗金额' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_06_JLCCLXH', @level2type=N'COLUMN',@level2name=N'XHQK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_06_JLCCLXH', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教练员数据表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_01_JLYSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_01_JLYSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_01_JLYSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_01_JLYSJ', @level2type=N'COLUMN',@level2name=N'XM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'性别码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_01_JLYSJ', @level2type=N'COLUMN',@level2name=N'XBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'身份证号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_01_JLYSJ', @level2type=N'COLUMN',@level2name=N'SFZH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'驾驶证号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_01_JLYSJ', @level2type=N'COLUMN',@level2name=N'JSZH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'驾驶证有效期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_01_JLYSJ', @level2type=N'COLUMN',@level2name=N'JSZYXQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教练证号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_01_JLYSJ', @level2type=N'COLUMN',@level2name=N'JLZH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教练证有效期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_01_JLYSJ', @level2type=N'COLUMN',@level2name=N'JLZYXQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学历' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_01_JLYSJ', @level2type=N'COLUMN',@level2name=N'XL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'职称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_01_JLYSJ', @level2type=N'COLUMN',@level2name=N'ZC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'进校时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_01_JLYSJ', @level2type=N'COLUMN',@level2name=N'JXSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_01_JLYSJ', @level2type=N'COLUMN',@level2name=N'LXDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'住址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_01_JLYSJ', @level2type=N'COLUMN',@level2name=N'ZZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'技术等级' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_01_JLYSJ', @level2type=N'COLUMN',@level2name=N'JSDJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'家庭成员一姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_01_JLYSJ', @level2type=N'COLUMN',@level2name=N'JTCHYXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'家庭成员一关系' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_01_JLYSJ', @level2type=N'COLUMN',@level2name=N'JTCYYGX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'家庭成员一性别码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_01_JLYSJ', @level2type=N'COLUMN',@level2name=N'JTCYYXBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'家庭成员一出生日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_01_JLYSJ', @level2type=N'COLUMN',@level2name=N'JTCYYCSRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'家庭成员一住址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_01_JLYSJ', @level2type=N'COLUMN',@level2name=N'JTCYYZZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'家庭成员一联系电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_01_JLYSJ', @level2type=N'COLUMN',@level2name=N'JTCYYLXDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'家庭成员一从事工作' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_01_JLYSJ', @level2type=N'COLUMN',@level2name=N'JTCYYCSGZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'家庭成员二姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_01_JLYSJ', @level2type=N'COLUMN',@level2name=N'JTCYEXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'家庭成员二关系' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_01_JLYSJ', @level2type=N'COLUMN',@level2name=N'JTCYEGX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'家庭成员二性别码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_01_JLYSJ', @level2type=N'COLUMN',@level2name=N'JTCYEXBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'家庭成员二出生日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_01_JLYSJ', @level2type=N'COLUMN',@level2name=N'JTCYECSRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'家庭成员二住址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_01_JLYSJ', @level2type=N'COLUMN',@level2name=N'JTCYEZZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'家庭成员二联系电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_01_JLYSJ', @level2type=N'COLUMN',@level2name=N'JTCYELXDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'家庭成员二从事工作' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_01_JLYSJ', @level2type=N'COLUMN',@level2name=N'JTCYECSGZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教练员违纪情况表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_02_JLYWJQK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_02_JLYWJQK', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_02_JLYWJQK', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教练员ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_02_JLYWJQK', @level2type=N'COLUMN',@level2name=N'JLYID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'投诉人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_02_JLYWJQK', @level2type=N'COLUMN',@level2name=N'TSR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'投诉时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_02_JLYWJQK', @level2type=N'COLUMN',@level2name=N'TSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_02_JLYWJQK', @level2type=N'COLUMN',@level2name=N'LXDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'投诉内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_02_JLYWJQK', @level2type=N'COLUMN',@level2name=N'TSNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'处理结果' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_02_JLYWJQK', @level2type=N'COLUMN',@level2name=N'CLJG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_02_JLYWJQK', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教练员安全情况表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_03_JLYAQQK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_03_JLYAQQK', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_03_JLYAQQK', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教练员ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_03_JLYAQQK', @level2type=N'COLUMN',@level2name=N'JLYID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'录入时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_03_JLYAQQK', @level2type=N'COLUMN',@level2name=N'LRSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'安全情况' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_03_JLYAQQK', @level2type=N'COLUMN',@level2name=N'AQQK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_03_JLYAQQK', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教练员奖惩情况表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_04_JLYJCQK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_04_JLYJCQK', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_04_JLYJCQK', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教练员ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_04_JLYJCQK', @level2type=N'COLUMN',@level2name=N'JLYID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'录入时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_04_JLYJCQK', @level2type=N'COLUMN',@level2name=N'LRSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'奖惩情况' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_04_JLYJCQK', @level2type=N'COLUMN',@level2name=N'JCQK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_04_JLYJCQK', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学员数据表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_03_01_XYSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_03_01_XYSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_03_01_XYSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_03_01_XYSJ', @level2type=N'COLUMN',@level2name=N'XM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'身份证号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_03_01_XYSJ', @level2type=N'COLUMN',@level2name=N'SFZH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'性别码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_03_01_XYSJ', @level2type=N'COLUMN',@level2name=N'XBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_03_01_XYSJ', @level2type=N'COLUMN',@level2name=N'LXDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'住址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_03_01_XYSJ', @level2type=N'COLUMN',@level2name=N'ZZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'报名时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_03_01_XYSJ', @level2type=N'COLUMN',@level2name=N'BMSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'缴费情况' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_03_01_XYSJ', @level2type=N'COLUMN',@level2name=N'SFQK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所选车型ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_03_01_XYSJ', @level2type=N'COLUMN',@level2name=N'SXCXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'增加情况' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_03_01_XYSJ', @level2type=N'COLUMN',@level2name=N'ZJQK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属教练员ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_03_01_XYSJ', @level2type=N'COLUMN',@level2name=N'SSJLYID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'引荐教练员ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_03_01_XYSJ', @level2type=N'COLUMN',@level2name=N'YJJLYID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'当前状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_03_01_XYSJ', @level2type=N'COLUMN',@level2name=N'DQZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'毕业时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_03_01_XYSJ', @level2type=N'COLUMN',@level2name=N'BYSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学员考试结果表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_03_02_XYKSJG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_03_02_XYKSJG', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_03_02_XYKSJG', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学员ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_03_02_XYKSJG', @level2type=N'COLUMN',@level2name=N'XYID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'科目考试ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_03_02_XYKSJG', @level2type=N'COLUMN',@level2name=N'KMKSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'考试结果' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_03_02_XYKSJG', @level2type=N'COLUMN',@level2name=N'KSJG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学员回访信息表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_03_03_XYHFXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_03_03_XYHFXX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_03_03_XYHFXX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学员ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_03_03_XYHFXX', @level2type=N'COLUMN',@level2name=N'XYID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'回访时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_03_03_XYHFXX', @level2type=N'COLUMN',@level2name=N'HFSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'回访结果' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_03_03_XYHFXX', @level2type=N'COLUMN',@level2name=N'HFJG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_03_03_XYHFXX', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'科目考试表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_04_01_KMKS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_04_01_KMKS', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_04_01_KMKS', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'科目代码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_04_01_KMKS', @level2type=N'COLUMN',@level2name=N'KMDM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'考试时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_04_01_KMKS', @level2type=N'COLUMN',@level2name=N'KSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_04_01_KMKS', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'车辆型号数据表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_05_01_CLXH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_05_01_CLXH', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_05_01_CLXH', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'车辆型号名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_05_01_CLXH', @level2type=N'COLUMN',@level2name=N'CLXHMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_05_01_CLXH', @level2type=N'COLUMN',@level2name=N'BZ'
GO
--空间名：EDU_OAXT  生成器：SqlBuilder0.1

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_10_A01_TZ')
            and   type = 'U')
   drop table EDU_OAXT_10_A01_TZ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_10_A02_TZYDJL')
            and   type = 'U')
   drop table EDU_OAXT_10_A02_TZYDJL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_10_A03_GG')
            and   type = 'U')
   drop table EDU_OAXT_10_A03_GG
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_11_A01_YJ')
            and   type = 'U')
   drop table EDU_OAXT_11_A01_YJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_01_01_WJJBSJ')
            and   type = 'U')
   drop table EDU_OAXT_01_01_WJJBSJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_02_01_SWCL')
            and   type = 'U')
   drop table EDU_OAXT_02_01_SWCL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_02_02_WJYB')
            and   type = 'U')
   drop table EDU_OAXT_02_02_WJYB
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_03_01_FWCL')
            and   type = 'U')
   drop table EDU_OAXT_03_01_FWCL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_03_02_HG')
            and   type = 'U')
   drop table EDU_OAXT_03_02_HG
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_03_03_HQ')
            and   type = 'U')
   drop table EDU_OAXT_03_03_HQ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_03_04_CP')
            and   type = 'U')
   drop table EDU_OAXT_03_04_CP
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_04_01_WJQT')
            and   type = 'U')
   drop table EDU_OAXT_04_01_WJQT
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_05_01_WJXH')
            and   type = 'U')
   drop table EDU_OAXT_05_01_WJXH
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_06_01_WJJQ')
            and   type = 'U')
   drop table EDU_OAXT_06_01_WJJQ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_12_A01_SJFB')
            and   type = 'U')
   drop table EDU_OAXT_12_A01_SJFB
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_13_A01_DWSJ')
            and   type = 'U')
   drop table EDU_OAXT_13_A01_DWSJ
go
--通知数据表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_10_A01_TZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_10_A01_TZ](
	[ID]  int  NOT NULL,--通知ID
	[SCHOOLID]  int  NOT NULL,--学校ID
	[FSRID]  nvarchar(20)  NOT NULL,--发送人ID
	[FSRLB]  int  NOT NULL,--发送人类别
	[BT]  nvarchar(100)  NOT NULL,--标题
	[NR]  text  NOT NULL,--内容
	[FJ]  nvarchar(500)  NULL,--附件
	[TJRQ]  datetime  NOT NULL,--添加日期
	[JSRS]  int  NOT NULL,--接收人数
	[JSRIDLB]  text  NOT NULL,--接收人ID列表
	[JSRMZLB]  text  NOT NULL,--接收人名字列表
	[YYDRIDLB]  text  NULL,--已阅读人ID列表
	[YYDRMZLB]  text  NOT NULL,--已阅读人名字列表
	[FSZT]  int  NOT NULL,--发送状态
CONSTRAINT [PK_EDU_OAXT_10_A01_TZ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--通知阅读记录
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_10_A02_TZYDJL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_10_A02_TZYDJL](
	[ID]  int  NOT NULL,--通知阅读记录ID
	[SCHOOLID]  int  NOT NULL,--学校ID
	[TZID]  int  NOT NULL,--通知ID
	[BTZRID]  nvarchar(20)  NOT NULL,--被通知人ID
	[YDRQ]  datetime  NOT NULL,--阅读日期
	[SFYD]  nvarchar(1)  NOT NULL,--是否已阅读
CONSTRAINT [PK_EDU_OAXT_10_A02_TZYDJL] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--公告数据表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_10_A03_GG]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_10_A03_GG](
	[ID]  int  NOT NULL,--公告ID
	[SCHOOLID]  int  NOT NULL,--学校ID
	[FBRID]  nvarchar(20)  NOT NULL,--发布人ID
	[FBBM]  nvarchar(100)  NOT NULL,--发布部门
	[FBSJ]  datetime  NOT NULL,--发布时间
	[BT]  nvarchar(200)  NOT NULL,--公告标题
	[NR]  text  NOT NULL,--公告内容
	[ZT]  int  NOT NULL,--公告状态
CONSTRAINT [PK_EDU_OAXT_10_A03_GG] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--邮件数据表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_11_A01_YJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_11_A01_YJ](
	[ID]  int  NOT NULL,--邮件ID
	[SCHOOLID]  int  NOT NULL,--学校ID
	[YYZID]  nvarchar(20)  NOT NULL,--拥有者ID
	[FSRID]  nvarchar(20)  NOT NULL,--发送人ID
	[JSRID]  nvarchar(20)  NOT NULL,--接收人ID
	[FSRMC]  nvarchar(100)  NOT NULL,--发送人名称
	[JSRMC]  nvarchar(100)  NOT NULL,--接收人名称
	[JSRIDLB]  text  NOT NULL,--接收人ID列表
	[JSRMCLB]  text  NOT NULL,--接收人名称列表
	[BT]  nvarchar(200)  NOT NULL,--标题
	[NR]  text  NOT NULL,--内容
	[FJ]  nvarchar(200)  NOT NULL,--附件
	[FSSJ]  datetime  NOT NULL,--发送时间
	[SFYD]  nvarchar(1)  NOT NULL,--是否已阅读
	[YJLX]  int  NOT NULL,--邮件类型
CONSTRAINT [PK_EDU_OAXT_11_A01_YJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--文件基本数据类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_01_01_WJJBSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_01_01_WJJBSJ](
	[SCHOOLID]  int  NOT NULL,--学校名
	[ID]  int  NOT NULL,--文件ID
	[WJBH]  nvarchar(10)  NOT NULL,--文件编号
	[WJWH]  nvarchar(24)  NOT NULL,--文件文号
	[BT]  nvarchar(60)  NOT NULL,--标题
	[ZTC]  text  NOT NULL,--主题词
	[MJM]  nvarchar(1)  NOT NULL,--密级码
	[JJCDM]  nvarchar(1)  NOT NULL,--紧急程度码
	[YS]  decimal(6, 0)  NULL,--页数
	[WJFLM]  nvarchar(2)  NOT NULL,--文件分类码
	[ZW]  text  NOT NULL,--正文
	[FJ]  text  NOT NULL,--附件
	[FWRQ]  nvarchar(8)  NOT NULL,--发文日期
	[CSDW]  text  NOT NULL,--抄送单位
CONSTRAINT [PK_EDU_OAXT_01_01_WJJBSJ] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--收文处理子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_02_01_SWCL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_02_01_SWCL](
	[SCHOOLID]  int  NOT NULL,--学校名
	[WJID]  int  NOT NULL,--文件ID
	[QSRID]  nvarchar(20)  NOT NULL,--签收人ID
	[CFRID]  nvarchar(20)  NOT NULL,--拆封人ID
	[DJRID]  nvarchar(20)  NOT NULL,--登记人ID
	[QSRGH]  nvarchar(20)  NOT NULL,--签收人工号
	[CFRGH]  nvarchar(20)  NOT NULL,--拆封人工号
	[DJRGH]  nvarchar(20)  NOT NULL,--登记人工号
	[SWRQ]  nvarchar(8)  NOT NULL,--收文日期
	[LWDW]  nvarchar(60)  NOT NULL,--来文单位
	[FS]  decimal(3, 0)  NOT NULL,--份数
	[CLQK]  text  NOT NULL,--处理情况
	[FYFS]  decimal(4, 0)  NULL,--翻印份数
CONSTRAINT [PK_EDU_OAXT_02_01_SWCL] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[WJID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--文件阅办子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_02_02_WJYB]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_02_02_WJYB](
	[SCHOOLID]  int  NOT NULL,--学校名
	[WJID]  int  NOT NULL,--文件ID
	[YBRID]  nvarchar(20)  NOT NULL,--阅办人ID
	[YBLBM]  nvarchar(1)  NULL,--阅办类别码
	[YBJB]  nvarchar(30)  NULL,--阅办级别
	[YBDW]  nvarchar(60)  NULL,--阅办单位
	[YBDWBH]  nvarchar(10)  NULL,--阅办单位编号
	[YBRGH]  nvarchar(20)  NULL,--阅办人工号
	[YBYJ]  text  NOT NULL,--阅办意见
	[YBRQ]  nvarchar(8)  NULL,--阅办日期
CONSTRAINT [PK_EDU_OAXT_02_02_WJYB] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[WJID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--发文处理子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_03_01_FWCL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_03_01_FWCL](
	[SCHOOLID]  int  NOT NULL,--学校名
	[WJID]  int  NOT NULL,--文件ID
	[NGRID]  nvarchar(20)  NOT NULL,--拟稿人ID
	[QFRID]  nvarchar(20)  NOT NULL,--签发人ID
	[DJRID]  nvarchar(20)  NOT NULL,--登记人ID
	[DZRID]  nvarchar(20)  NOT NULL,--打字人ID
	[JDRID]  nvarchar(20)  NOT NULL,--校对人ID
	[NGRGH]  nvarchar(20)  NOT NULL,--拟稿人工号
	[NGRQ]  nvarchar(8)  NULL,--拟稿日期
	[QFRGH]  nvarchar(20)  NOT NULL,--签发人工号
	[QFRQ]  nvarchar(8)  NOT NULL,--签发日期
	[FSFW]  nvarchar(60)  NOT NULL,--发送范围
	[FSFSM]  nvarchar(1)  NOT NULL,--发送方式码
	[DJRGH]  nvarchar(20)  NOT NULL,--登记人工号
	[DJRQ]  nvarchar(8)  NOT NULL,--登记日期
	[FWJS]  decimal(4, 0)  NOT NULL,--发文件数
	[GWFWRQ]  nvarchar(8)  NOT NULL,--公文发文日期
	[CLQK]  text  NOT NULL,--处理情况
	[DZRGH]  nvarchar(20)  NULL,--打字人工号
	[JDRGH]  nvarchar(20)  NULL,--校对人工号
	[FZFSM]  nvarchar(1)  NOT NULL,--封装方式码
CONSTRAINT [PK_EDU_OAXT_03_01_FWCL] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[WJID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--核稿子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_03_02_HG]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_03_02_HG](
	[SCHOOLID]  int  NOT NULL,--学校名
	[WJID]  int  NOT NULL,--文件ID
	[HGRID]  nvarchar(20)  NOT NULL,--核稿人ID
	[HGRGH]  nvarchar(20)  NOT NULL,--核稿人工号
	[HGDW]  nvarchar(60)  NOT NULL,--核稿单位
	[HGYJ]  text  NOT NULL,--核稿意见
	[HGRQ]  nvarchar(8)  NOT NULL,--核稿日期
CONSTRAINT [PK_EDU_OAXT_03_02_HG] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[WJID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--会签子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_03_03_HQ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_03_03_HQ](
	[SCHOOLID]  int  NOT NULL,--学校名
	[WJID]  int  NOT NULL,--文件ID
	[HQRID]  nvarchar(20)  NOT NULL,--会签人ID
	[HQR]  nvarchar(36)  NOT NULL,--会签人
	[HQDW]  nvarchar(60)  NOT NULL,--会签单位
	[HQYJ]  text  NOT NULL,--会签意见
	[HQRQ]  nvarchar(8)  NOT NULL,--会签日期
CONSTRAINT [PK_EDU_OAXT_03_03_HQ] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[WJID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--呈批子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_03_04_CP]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_03_04_CP](
	[SCHOOLID]  int  NOT NULL,--学校名
	[WJID]  int  NOT NULL,--文件ID
	[PFRID]  nvarchar(20)  NOT NULL,--批复人ID
	[PFR]  nvarchar(36)  NOT NULL,--批复人
	[PFDW]  nvarchar(60)  NOT NULL,--批复单位
	[PFYJ]  text  NOT NULL,--批复意见
	[PFRQ]  nvarchar(8)  NOT NULL,--批复日期
CONSTRAINT [PK_EDU_OAXT_03_04_CP] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[WJID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--文件清退数据类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_04_01_WJQT]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_04_01_WJQT](
	[SCHOOLID]  int  NOT NULL,--学校名
	[WJID]  int  NOT NULL,--文件ID
	[JBRID]  nvarchar(20)  NOT NULL,--经办人ID
	[QTRQ]  nvarchar(8)  NOT NULL,--清退日期
	[QTFW]  nvarchar(180)  NOT NULL,--清退范围
	[QTSM]  text  NULL,--清退说明
	[JBRGH]  nvarchar(20)  NOT NULL,--经办人工号
CONSTRAINT [PK_EDU_OAXT_04_01_WJQT] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[WJID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--文件销毁数据类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_05_01_WJXH]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_05_01_WJXH](
	[SCHOOLID]  int  NOT NULL,--学校名
	[WJID]  int  NOT NULL,--文件ID
	[XHSPRID]  nvarchar(20)  NOT NULL,--销毁审批人ID
	[JBRID]  nvarchar(20)  NOT NULL,--经办人ID
	[XHRQ]  nvarchar(8)  NOT NULL,--销毁日期
	[XHSPRGH]  nvarchar(20)  NOT NULL,--销毁审批人工号
	[XHSM]  text  NULL,--销毁说明
	[JBRGH]  nvarchar(20)  NOT NULL,--经办人工号
CONSTRAINT [PK_EDU_OAXT_05_01_WJXH] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[WJID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--文件借阅数据类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_06_01_WJJQ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_06_01_WJJQ](
	[SCHOOLID]  int  NOT NULL,--学校名
	[WJID]  int  NOT NULL,--文件ID
	[JYSPRID]  nvarchar(20)  NOT NULL,--借阅审批人ID
	[JYJBRID]  nvarchar(20)  NOT NULL,--借阅经办人ID
	[JYR]  nvarchar(36)  NOT NULL,--借阅人
	[JYRQ]  nvarchar(8)  NOT NULL,--借阅日期
	[JYSPRGH]  nvarchar(20)  NOT NULL,--借阅审批人工号
	[JYJBRGH]  nvarchar(20)  NOT NULL,--借阅经办人工号
	[JYYY]  nvarchar(80)  NULL,--借阅原因
CONSTRAINT [PK_EDU_OAXT_06_01_WJJQ] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[WJID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--数据发布类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_12_A01_SJFB]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_12_A01_SJFB](
	[ID]  int  identity,--数据发布ID
	[SCHOOLID]  int  NOT NULL,--学校名
	[WEBID]  int  NOT NULL,--网站ID
	[FBRID]  nvarchar(20)  NOT NULL,--发布人ID
	[FBBZRID]  nvarchar(20)  NOT NULL,--发布批准人ID
	[FBH]  nvarchar(10)  NOT NULL,--发布号
	[XXBT]  nvarchar(100)  NOT NULL,--数据标题
	[FBLMH]  nvarchar(2)  NOT NULL,--发布栏目号
	[SJNR]  text  NOT NULL,--数据内容
	[FJS]  decimal(2, 0)  NOT NULL,--附件数
	[FBRQ]  nvarchar(8)  NOT NULL,--发布日期
	[FBDW]  nvarchar(10)  NOT NULL,--发布单位号
	[FBRGH]  nvarchar(20)  NULL,--发布人工号
	[FBFW]  nvarchar(200)  NULL,--发布范围
	[FBBZRH]  nvarchar(10)  NOT NULL,--发布批准人号
	[SJZT]  nvarchar(10)  NOT NULL,--数据状态
CONSTRAINT [PK_EDU_OAXT_12_A01_SJFB] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--单位数据表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_13_A01_DWSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_13_A01_DWSJ](
	[ID]  int  NOT NULL,--单位ID
	[SCHOOLID]  int  NOT NULL,--学校ID
	[SJDWID]  int  NULL,--上级单位ID
	[DWFZRID]  nvarchar(20)  NULL,--单位负责人ID
	[DWMC]  nvarchar(60)  NULL,--单位名称
	[DWCYIDLB]  text  NULL,--单位成员ID列表
CONSTRAINT [PK_EDU_OAXT_13_A01_DWSJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--以下为添加注释语句
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'通知数据表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_10_A01_TZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'通知ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_10_A01_TZ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_10_A01_TZ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发送人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_10_A01_TZ', @level2type=N'COLUMN',@level2name=N'FSRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发送人类别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_10_A01_TZ', @level2type=N'COLUMN',@level2name=N'FSRLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_10_A01_TZ', @level2type=N'COLUMN',@level2name=N'BT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_10_A01_TZ', @level2type=N'COLUMN',@level2name=N'NR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'附件' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_10_A01_TZ', @level2type=N'COLUMN',@level2name=N'FJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_10_A01_TZ', @level2type=N'COLUMN',@level2name=N'TJRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'接收人数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_10_A01_TZ', @level2type=N'COLUMN',@level2name=N'JSRS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'接收人ID列表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_10_A01_TZ', @level2type=N'COLUMN',@level2name=N'JSRIDLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'接收人名字列表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_10_A01_TZ', @level2type=N'COLUMN',@level2name=N'JSRMZLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'已阅读人ID列表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_10_A01_TZ', @level2type=N'COLUMN',@level2name=N'YYDRIDLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'已阅读人名字列表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_10_A01_TZ', @level2type=N'COLUMN',@level2name=N'YYDRMZLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发送状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_10_A01_TZ', @level2type=N'COLUMN',@level2name=N'FSZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'通知阅读记录' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_10_A02_TZYDJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'通知阅读记录ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_10_A02_TZYDJL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_10_A02_TZYDJL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'通知ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_10_A02_TZYDJL', @level2type=N'COLUMN',@level2name=N'TZID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'被通知人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_10_A02_TZYDJL', @level2type=N'COLUMN',@level2name=N'BTZRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'阅读日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_10_A02_TZYDJL', @level2type=N'COLUMN',@level2name=N'YDRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否已阅读' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_10_A02_TZYDJL', @level2type=N'COLUMN',@level2name=N'SFYD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公告数据表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_10_A03_GG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公告ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_10_A03_GG', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_10_A03_GG', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发布人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_10_A03_GG', @level2type=N'COLUMN',@level2name=N'FBRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发布部门' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_10_A03_GG', @level2type=N'COLUMN',@level2name=N'FBBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发布时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_10_A03_GG', @level2type=N'COLUMN',@level2name=N'FBSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公告标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_10_A03_GG', @level2type=N'COLUMN',@level2name=N'BT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公告内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_10_A03_GG', @level2type=N'COLUMN',@level2name=N'NR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公告状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_10_A03_GG', @level2type=N'COLUMN',@level2name=N'ZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'邮件数据表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_11_A01_YJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'邮件ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_11_A01_YJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_11_A01_YJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'拥有者ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_11_A01_YJ', @level2type=N'COLUMN',@level2name=N'YYZID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发送人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_11_A01_YJ', @level2type=N'COLUMN',@level2name=N'FSRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'接收人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_11_A01_YJ', @level2type=N'COLUMN',@level2name=N'JSRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发送人名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_11_A01_YJ', @level2type=N'COLUMN',@level2name=N'FSRMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'接收人名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_11_A01_YJ', @level2type=N'COLUMN',@level2name=N'JSRMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'接收人ID列表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_11_A01_YJ', @level2type=N'COLUMN',@level2name=N'JSRIDLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'接收人名称列表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_11_A01_YJ', @level2type=N'COLUMN',@level2name=N'JSRMCLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_11_A01_YJ', @level2type=N'COLUMN',@level2name=N'BT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_11_A01_YJ', @level2type=N'COLUMN',@level2name=N'NR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'附件' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_11_A01_YJ', @level2type=N'COLUMN',@level2name=N'FJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发送时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_11_A01_YJ', @level2type=N'COLUMN',@level2name=N'FSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否已阅读' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_11_A01_YJ', @level2type=N'COLUMN',@level2name=N'SFYD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'邮件类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_11_A01_YJ', @level2type=N'COLUMN',@level2name=N'YJLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件基本数据类表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_01_01_WJJBSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_01_01_WJJBSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_01_01_WJJBSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_01_01_WJJBSJ', @level2type=N'COLUMN',@level2name=N'WJBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件文号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_01_01_WJJBSJ', @level2type=N'COLUMN',@level2name=N'WJWH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_01_01_WJJBSJ', @level2type=N'COLUMN',@level2name=N'BT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主题词' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_01_01_WJJBSJ', @level2type=N'COLUMN',@level2name=N'ZTC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'密级码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_01_01_WJJBSJ', @level2type=N'COLUMN',@level2name=N'MJM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'紧急程度码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_01_01_WJJBSJ', @level2type=N'COLUMN',@level2name=N'JJCDM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'页数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_01_01_WJJBSJ', @level2type=N'COLUMN',@level2name=N'YS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件分类码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_01_01_WJJBSJ', @level2type=N'COLUMN',@level2name=N'WJFLM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'正文' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_01_01_WJJBSJ', @level2type=N'COLUMN',@level2name=N'ZW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'附件' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_01_01_WJJBSJ', @level2type=N'COLUMN',@level2name=N'FJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发文日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_01_01_WJJBSJ', @level2type=N'COLUMN',@level2name=N'FWRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'抄送单位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_01_01_WJJBSJ', @level2type=N'COLUMN',@level2name=N'CSDW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收文处理子类表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_02_01_SWCL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_02_01_SWCL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_02_01_SWCL', @level2type=N'COLUMN',@level2name=N'WJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'签收人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_02_01_SWCL', @level2type=N'COLUMN',@level2name=N'QSRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'拆封人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_02_01_SWCL', @level2type=N'COLUMN',@level2name=N'CFRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登记人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_02_01_SWCL', @level2type=N'COLUMN',@level2name=N'DJRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'签收人工号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_02_01_SWCL', @level2type=N'COLUMN',@level2name=N'QSRGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'拆封人工号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_02_01_SWCL', @level2type=N'COLUMN',@level2name=N'CFRGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登记人工号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_02_01_SWCL', @level2type=N'COLUMN',@level2name=N'DJRGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收文日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_02_01_SWCL', @level2type=N'COLUMN',@level2name=N'SWRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'来文单位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_02_01_SWCL', @level2type=N'COLUMN',@level2name=N'LWDW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'份数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_02_01_SWCL', @level2type=N'COLUMN',@level2name=N'FS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'处理情况' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_02_01_SWCL', @level2type=N'COLUMN',@level2name=N'CLQK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'翻印份数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_02_01_SWCL', @level2type=N'COLUMN',@level2name=N'FYFS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件阅办子类表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_02_02_WJYB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_02_02_WJYB', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_02_02_WJYB', @level2type=N'COLUMN',@level2name=N'WJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'阅办人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_02_02_WJYB', @level2type=N'COLUMN',@level2name=N'YBRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'阅办类别码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_02_02_WJYB', @level2type=N'COLUMN',@level2name=N'YBLBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'阅办级别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_02_02_WJYB', @level2type=N'COLUMN',@level2name=N'YBJB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'阅办单位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_02_02_WJYB', @level2type=N'COLUMN',@level2name=N'YBDW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'阅办单位编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_02_02_WJYB', @level2type=N'COLUMN',@level2name=N'YBDWBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'阅办人工号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_02_02_WJYB', @level2type=N'COLUMN',@level2name=N'YBRGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'阅办意见' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_02_02_WJYB', @level2type=N'COLUMN',@level2name=N'YBYJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'阅办日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_02_02_WJYB', @level2type=N'COLUMN',@level2name=N'YBRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发文处理子类表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_01_FWCL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_01_FWCL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_01_FWCL', @level2type=N'COLUMN',@level2name=N'WJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'拟稿人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_01_FWCL', @level2type=N'COLUMN',@level2name=N'NGRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'签发人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_01_FWCL', @level2type=N'COLUMN',@level2name=N'QFRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登记人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_01_FWCL', @level2type=N'COLUMN',@level2name=N'DJRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'打字人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_01_FWCL', @level2type=N'COLUMN',@level2name=N'DZRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'校对人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_01_FWCL', @level2type=N'COLUMN',@level2name=N'JDRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'拟稿人工号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_01_FWCL', @level2type=N'COLUMN',@level2name=N'NGRGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'拟稿日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_01_FWCL', @level2type=N'COLUMN',@level2name=N'NGRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'签发人工号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_01_FWCL', @level2type=N'COLUMN',@level2name=N'QFRGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'签发日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_01_FWCL', @level2type=N'COLUMN',@level2name=N'QFRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发送范围' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_01_FWCL', @level2type=N'COLUMN',@level2name=N'FSFW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发送方式码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_01_FWCL', @level2type=N'COLUMN',@level2name=N'FSFSM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登记人工号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_01_FWCL', @level2type=N'COLUMN',@level2name=N'DJRGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登记日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_01_FWCL', @level2type=N'COLUMN',@level2name=N'DJRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发文件数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_01_FWCL', @level2type=N'COLUMN',@level2name=N'FWJS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公文发文日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_01_FWCL', @level2type=N'COLUMN',@level2name=N'GWFWRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'处理情况' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_01_FWCL', @level2type=N'COLUMN',@level2name=N'CLQK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'打字人工号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_01_FWCL', @level2type=N'COLUMN',@level2name=N'DZRGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'校对人工号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_01_FWCL', @level2type=N'COLUMN',@level2name=N'JDRGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'封装方式码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_01_FWCL', @level2type=N'COLUMN',@level2name=N'FZFSM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'核稿子类表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_02_HG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_02_HG', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_02_HG', @level2type=N'COLUMN',@level2name=N'WJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'核稿人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_02_HG', @level2type=N'COLUMN',@level2name=N'HGRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'核稿人工号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_02_HG', @level2type=N'COLUMN',@level2name=N'HGRGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'核稿单位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_02_HG', @level2type=N'COLUMN',@level2name=N'HGDW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'核稿意见' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_02_HG', @level2type=N'COLUMN',@level2name=N'HGYJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'核稿日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_02_HG', @level2type=N'COLUMN',@level2name=N'HGRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会签子类表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_03_HQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_03_HQ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_03_HQ', @level2type=N'COLUMN',@level2name=N'WJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会签人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_03_HQ', @level2type=N'COLUMN',@level2name=N'HQRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会签人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_03_HQ', @level2type=N'COLUMN',@level2name=N'HQR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会签单位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_03_HQ', @level2type=N'COLUMN',@level2name=N'HQDW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会签意见' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_03_HQ', @level2type=N'COLUMN',@level2name=N'HQYJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会签日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_03_HQ', @level2type=N'COLUMN',@level2name=N'HQRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'呈批子类表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_04_CP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_04_CP', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_04_CP', @level2type=N'COLUMN',@level2name=N'WJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'批复人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_04_CP', @level2type=N'COLUMN',@level2name=N'PFRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'批复人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_04_CP', @level2type=N'COLUMN',@level2name=N'PFR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'批复单位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_04_CP', @level2type=N'COLUMN',@level2name=N'PFDW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'批复意见' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_04_CP', @level2type=N'COLUMN',@level2name=N'PFYJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'批复日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_04_CP', @level2type=N'COLUMN',@level2name=N'PFRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件清退数据类表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_04_01_WJQT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_04_01_WJQT', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_04_01_WJQT', @level2type=N'COLUMN',@level2name=N'WJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'经办人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_04_01_WJQT', @level2type=N'COLUMN',@level2name=N'JBRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'清退日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_04_01_WJQT', @level2type=N'COLUMN',@level2name=N'QTRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'清退范围' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_04_01_WJQT', @level2type=N'COLUMN',@level2name=N'QTFW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'清退说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_04_01_WJQT', @level2type=N'COLUMN',@level2name=N'QTSM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'经办人工号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_04_01_WJQT', @level2type=N'COLUMN',@level2name=N'JBRGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件销毁数据类表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_05_01_WJXH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_05_01_WJXH', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_05_01_WJXH', @level2type=N'COLUMN',@level2name=N'WJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'销毁审批人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_05_01_WJXH', @level2type=N'COLUMN',@level2name=N'XHSPRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'经办人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_05_01_WJXH', @level2type=N'COLUMN',@level2name=N'JBRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'销毁日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_05_01_WJXH', @level2type=N'COLUMN',@level2name=N'XHRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'销毁审批人工号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_05_01_WJXH', @level2type=N'COLUMN',@level2name=N'XHSPRGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'销毁说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_05_01_WJXH', @level2type=N'COLUMN',@level2name=N'XHSM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'经办人工号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_05_01_WJXH', @level2type=N'COLUMN',@level2name=N'JBRGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件借阅数据类表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_06_01_WJJQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_06_01_WJJQ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_06_01_WJJQ', @level2type=N'COLUMN',@level2name=N'WJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'借阅审批人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_06_01_WJJQ', @level2type=N'COLUMN',@level2name=N'JYSPRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'借阅经办人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_06_01_WJJQ', @level2type=N'COLUMN',@level2name=N'JYJBRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'借阅人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_06_01_WJJQ', @level2type=N'COLUMN',@level2name=N'JYR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'借阅日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_06_01_WJJQ', @level2type=N'COLUMN',@level2name=N'JYRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'借阅审批人工号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_06_01_WJJQ', @level2type=N'COLUMN',@level2name=N'JYSPRGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'借阅经办人工号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_06_01_WJJQ', @level2type=N'COLUMN',@level2name=N'JYJBRGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'借阅原因' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_06_01_WJJQ', @level2type=N'COLUMN',@level2name=N'JYYY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据发布类表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_12_A01_SJFB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据发布ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_12_A01_SJFB', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_12_A01_SJFB', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'网站ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_12_A01_SJFB', @level2type=N'COLUMN',@level2name=N'WEBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发布人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_12_A01_SJFB', @level2type=N'COLUMN',@level2name=N'FBRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发布批准人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_12_A01_SJFB', @level2type=N'COLUMN',@level2name=N'FBBZRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发布号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_12_A01_SJFB', @level2type=N'COLUMN',@level2name=N'FBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_12_A01_SJFB', @level2type=N'COLUMN',@level2name=N'XXBT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发布栏目号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_12_A01_SJFB', @level2type=N'COLUMN',@level2name=N'FBLMH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_12_A01_SJFB', @level2type=N'COLUMN',@level2name=N'SJNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'附件数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_12_A01_SJFB', @level2type=N'COLUMN',@level2name=N'FJS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发布日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_12_A01_SJFB', @level2type=N'COLUMN',@level2name=N'FBRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发布单位号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_12_A01_SJFB', @level2type=N'COLUMN',@level2name=N'FBDW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发布人工号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_12_A01_SJFB', @level2type=N'COLUMN',@level2name=N'FBRGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发布范围' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_12_A01_SJFB', @level2type=N'COLUMN',@level2name=N'FBFW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发布批准人号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_12_A01_SJFB', @level2type=N'COLUMN',@level2name=N'FBBZRH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_12_A01_SJFB', @level2type=N'COLUMN',@level2name=N'SJZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单位数据表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_13_A01_DWSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单位ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_13_A01_DWSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_13_A01_DWSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上级单位ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_13_A01_DWSJ', @level2type=N'COLUMN',@level2name=N'SJDWID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单位负责人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_13_A01_DWSJ', @level2type=N'COLUMN',@level2name=N'DWFZRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单位名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_13_A01_DWSJ', @level2type=N'COLUMN',@level2name=N'DWMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单位成员ID列表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_13_A01_DWSJ', @level2type=N'COLUMN',@level2name=N'DWCYIDLB'
GO
--空间名：EDU_WZXT  生成器：SqlBuilder0.1

if exists (select 1 from  sysobjects where  id = object_id('EDU_WZXT_VIP')
            and   type = 'U')
   drop table EDU_WZXT_VIP
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_WZXT_TPXT_TPYS')
            and   type = 'U')
   drop table EDU_WZXT_TPXT_TPYS
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_WZXT_TPXT_TPXX')
            and   type = 'U')
   drop table EDU_WZXT_TPXT_TPXX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_WZXT_TPXT_TPTM')
            and   type = 'U')
   drop table EDU_WZXT_TPXT_TPTM
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_WZXT_TPXT_TPSZ')
            and   type = 'U')
   drop table EDU_WZXT_TPXT_TPSZ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_WZXT_TPXT_TPJL')
            and   type = 'U')
   drop table EDU_WZXT_TPXT_TPJL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_WZXT_MHXT_YQLJLX')
            and   type = 'U')
   drop table EDU_WZXT_MHXT_YQLJLX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_WZXT_MHXT_YQLJ')
            and   type = 'U')
   drop table EDU_WZXT_MHXT_YQLJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_WZXT_MHXT_WZYS')
            and   type = 'U')
   drop table EDU_WZXT_MHXT_WZYS
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_WZXT_MHXT_WZWZ')
            and   type = 'U')
   drop table EDU_WZXT_MHXT_WZWZ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_WZXT_MHXT_WZPJ')
            and   type = 'U')
   drop table EDU_WZXT_MHXT_WZPJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_WZXT_MHXT_WZPZ')
            and   type = 'U')
   drop table EDU_WZXT_MHXT_WZPZ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_WZXT_MHXT_NWIP')
            and   type = 'U')
   drop table EDU_WZXT_MHXT_NWIP
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_WZXT_MHXT_WZLM')
            and   type = 'U')
   drop table EDU_WZXT_MHXT_WZLM
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_WZXT_MHXT_WZGG')
            and   type = 'U')
   drop table EDU_WZXT_MHXT_WZGG
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_WZXT_MHXT_FWLL')
            and   type = 'U')
   drop table EDU_WZXT_MHXT_FWLL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_WZXT_MHXT_FBQX')
            and   type = 'U')
   drop table EDU_WZXT_MHXT_FBQX
go
--网站会员
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_WZXT_VIP]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_WZXT_VIP](
	[SCHOOLID]  int  NOT NULL,--学校名
	[WEBID]  int  NOT NULL,--网站ID
	[LOGINNAME]  nvarchar(50)  NOT NULL,--用户名
	[LOGINPWD]  nvarchar(64)  NOT NULL,--密码
	[REALNAME]  nvarchar(50)  NOT NULL,--姓名
	[EMAIL]  nvarchar(50)  NOT NULL,--电子邮箱
	[MOBILE]  nvarchar(20)  NOT NULL,--联系电话
	[QQ]  nvarchar(20)  NULL,--QQ号码
	[AUDITSTATU]  int  NOT NULL,--审核状态
	[AUDITOR]  nvarchar(50)  NULL,--审核人ID
	[AUDITORNAME]  nvarchar(50)  NULL,--审核人
CONSTRAINT [PK_EDU_WZXT_VIP] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[WEBID] ASC,
	[LOGINNAME] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--投票样式库
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_WZXT_TPXT_TPYS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_WZXT_TPXT_TPYS](
	[ID]  int  NOT NULL,--样式ID
	[SCHOOLID]  int  NOT NULL,--学校名
	[WEBID]  int  NOT NULL,--网站ID
	[NAME]  nvarchar(50)  NOT NULL,--样式名
	[SHOWIMG]  nvarchar(500)  NULL,--效果图
CONSTRAINT [PK_EDU_WZXT_TPXT_TPYS] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC,
	[WEBID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--投票题目选项
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_WZXT_TPXT_TPXX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_WZXT_TPXT_TPXX](
	[ID]  int  NOT NULL,--投票题目选项ID
	[SCHOOLID]  int  NOT NULL,--学校名
	[WEBID]  int  NOT NULL,--网站ID
	[TPID]  int  NOT NULL,--投票
	[TMID]  int  NOT NULL,--投票题目
	[TITLE]  nvarchar(500)  NULL,--标题
	[SUMTP]  int  NOT NULL,--已选人数
CONSTRAINT [PK_EDU_WZXT_TPXT_TPXX] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC,
	[WEBID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--投票题目
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_WZXT_TPXT_TPTM]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_WZXT_TPXT_TPTM](
	[ID]  int  NOT NULL,--投票题目ID
	[SCHOOLID]  int  NOT NULL,--学校名
	[WEBID]  int  NOT NULL,--网站ID
	[TPID]  int  NOT NULL,--投票
	[TYPEID]  int  NOT NULL,--投票形式
	[TITLE]  nvarchar(500)  NULL,--标题
	[CONTENT]  text  NULL,--内容
CONSTRAINT [PK_EDU_WZXT_TPXT_TPTM] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC,
	[WEBID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--投票设置
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_WZXT_TPXT_TPSZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_WZXT_TPXT_TPSZ](
	[ID]  int  NOT NULL,--投票设置ID
	[SCHOOLID]  int  NOT NULL,--学校名
	[WEBID]  int  NOT NULL,--网站ID
	[TITLE]  nvarchar(500)  NULL,--标题
	[CONTENT]  text  NULL,--内容
	[SHOWSTYLEID]  int  NULL,--显示方式
	[CSSID]  int  NOT NULL,--显示样式
	[LOGINNAMELIST]  text  NULL,--投票人
	[STARTSTATU]  int  NOT NULL,--是否开启
CONSTRAINT [PK_EDU_WZXT_TPXT_TPSZ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC,
	[WEBID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--投票记录
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_WZXT_TPXT_TPJL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_WZXT_TPXT_TPJL](
	[ID]  int  NOT NULL,--投票记录ID
	[SCHOOLID]  int  NOT NULL,--学校名
	[WEBID]  int  NOT NULL,--网站ID
	[TPID]  int  NOT NULL,--投票
	[TPIP]  nvarchar(128)  NOT NULL,--投票人
	[TPTIME]  datetime  NOT NULL,--投票时间
CONSTRAINT [PK_EDU_WZXT_TPXT_TPJL] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC,
	[WEBID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--友情链接类型
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_WZXT_MHXT_YQLJLX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_WZXT_MHXT_YQLJLX](
	[ID]  int  NOT NULL,--友情链接类型ID
	[SCHOOLID]  int  NOT NULL,--学校名
	[WEBID]  int  NOT NULL,--网站ID
	[NAME]  nvarchar(50)  NOT NULL,--类型名
	[SHOWSTYLE]  int  NOT NULL,--显示方式
CONSTRAINT [PK_EDU_WZXT_MHXT_YQLJLX] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC,
	[WEBID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--友情链接
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_WZXT_MHXT_YQLJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_WZXT_MHXT_YQLJ](
	[ID]  int  NOT NULL,--友情链接ID
	[SCHOOLID]  int  NOT NULL,--学校名
	[WEBID]  int  NOT NULL,--网站ID
	[TITLE]  nvarchar(50)  NOT NULL,--标题
	[TYPEID]  int  NOT NULL,--类型
	[IMAGEURL]  nvarchar(500)  NULL,--图片
	[URL]  nvarchar(300)  NOT NULL,--链接
CONSTRAINT [PK_EDU_WZXT_MHXT_YQLJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC,
	[WEBID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--样式库
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_WZXT_MHXT_WZYS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_WZXT_MHXT_WZYS](
	[ID]  int  NOT NULL,--样式库ID
	[SCHOOLID]  int  NOT NULL,--学校名
	[WEBID]  int  NOT NULL,--网站ID
	[NAME]  nvarchar(50)  NOT NULL,--样式名
	[SHOWIMG]  nvarchar(500)  NULL,--效果图
CONSTRAINT [PK_EDU_WZXT_MHXT_WZYS] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC,
	[WEBID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--网站文章
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_WZXT_MHXT_WZWZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_WZXT_MHXT_WZWZ](
	[ID]  int  NOT NULL,--网站文章ID
	[SCHOOLID]  int  NOT NULL,--学校名
	[WEBID]  int  NOT NULL,--网站ID
	[TYPENAME]  nvarchar(20)  NULL,--类型名称
	[LMID]  int  NOT NULL,--栏目
	[TITLE]  nvarchar(100)  NOT NULL,--标题
	[PUBLISHERNAME]  nvarchar(50)  NOT NULL,--发布人
	[AUTHOR]  nvarchar(50)  NOT NULL,--作者
	[AUTHORDEPART]  nvarchar(50)  NULL,--作者部门
	[PUBLISHDATE]  datetime  NOT NULL,--发布时间
	[CONTENT]  text  NULL,--内容
	[URL]  nvarchar(300)  NULL,--链接
	[IMAGEURL]  nvarchar(300)  NULL,--图片
	[ATTACHMENTNAME]  nvarchar(100)  NULL,--附件名
	[ATTACHMENT]  nvarchar(300)  NULL,--附件
	[CHICKNUB]  int  NULL,--点击量
	[AUDITSTATU]  int  NOT NULL,--审核状态
	[AUDITOR]  nvarchar(50)  NULL,--审核人ID
	[AUDITORNAME]  nvarchar(50)  NULL,--审核人
	[AUDITTIME]  datetime  NOT NULL,--审核时间
	[REMARK]  nvarchar(300)  NULL,--备注
	[SUMMARY]  text  NULL,--摘要
	[DISPLAYTYPE]  int  NOT NULL,--内外网
	[OPENFLAG]  int  NOT NULL,--开启状态
	[LLQX]  nvarchar(50)  NULL,--浏览权限
CONSTRAINT [PK_EDU_WZXT_MHXT_WZWZ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC,
	[WEBID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--文章评价表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_WZXT_MHXT_WZPJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_WZXT_MHXT_WZPJ](
	[ID]  int  NOT NULL,--评价ID
	[SCHOOLID]  int  NOT NULL,--学校ID
	[WEBID]  int  NOT NULL,--网站ID
	[WZID]  int  NOT NULL,--网站文章ID
	[PJR]  nvarchar(50)  NOT NULL,--评价人
	[YJDZ]  nvarchar(40)  NOT NULL,--邮件地址
	[PJSJ]  datetime  NOT NULL,--评价时间
	[PJNR]  text  NOT NULL,--评价内容
	[PJZT]  int  NOT NULL,--评价状态
	[SHR]  nvarchar(50)  NULL,--审核人
	[HF]  text  NOT NULL,--回复
CONSTRAINT [PK_EDU_WZXT_MHXT_WZPJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--网站配置
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_WZXT_MHXT_WZPZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_WZXT_MHXT_WZPZ](
	[WEBID]  int  NOT NULL,--网站ID
	[SCHOOLID]  int  NOT NULL,--学校名
	[WEBNAME]  nvarchar(500)  NOT NULL,--网站名
	[STATUID]  int  NOT NULL,--是否开启
	[WEBURL]  nvarchar(500)  NOT NULL,--网址
	[CSSID]  int  NOT NULL,--网站样式
CONSTRAINT [PK_EDU_WZXT_MHXT_WZPZ] PRIMARY KEY CLUSTERED
(
	[WEBID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--内网IP配置
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_WZXT_MHXT_NWIP]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_WZXT_MHXT_NWIP](
	[ID]  int  NOT NULL,--内网IP配置ID
	[WEBID]  int  NOT NULL,--网站ID
	[SCHOOLID]  int  NOT NULL,--学校名
	[IP]  nvarchar(40)  NOT NULL,--IP地址
CONSTRAINT [PK_EDU_WZXT_MHXT_NWIP] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[WEBID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--网站栏目（导航）
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_WZXT_MHXT_WZLM]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_WZXT_MHXT_WZLM](
	[ID]  int  NOT NULL,--网站栏目（导航）ID
	[SCHOOLID]  int  NOT NULL,--学校名
	[WEBID]  int  NOT NULL,--网站ID
	[LMSHOWSTYLE]  int  NOT NULL,--栏目使用类型
	[NAME]  nvarchar(50)  NOT NULL,--栏目名称
	[URL]  nvarchar(300)  NULL,--栏目链接
	[IMAGEURL]  nvarchar(300)  NULL,--图片链接
	[DEPTH]  int  NOT NULL,--层级
	[PID]  int  NOT NULL,--父目录
	[LISTSHOWSTYLE]  int  NULL,--列表显示型式
	[ORDERTYPE]  int  NOT NULL,--排序方式
	[SHOWNUMBER]  int  NOT NULL,--显示个数
	[OPENFLAG]  int  NOT NULL,--开启状态
	[LLQX]  nvarchar(50)  NULL,--浏览权限
	[PLSX]  int  NOT NULL,--排列顺序
CONSTRAINT [PK_EDU_WZXT_MHXT_WZLM] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC,
	[WEBID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--网站广告
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_WZXT_MHXT_WZGG]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_WZXT_MHXT_WZGG](
	[ID]  int  NOT NULL,--网站广告ID
	[SCHOOLID]  int  NOT NULL,--学校名
	[WEBID]  int  NOT NULL,--网站ID
	[SHOWTYPE]  int  NOT NULL,--显示型式
	[ADCONTENT]  text  NULL,--广告内容
	[GGLJ]  nvarchar(150)  NULL,--广告链接
	[SHOWSTATU]  int  NOT NULL,--是否显示
CONSTRAINT [PK_EDU_WZXT_MHXT_WZGG] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC,
	[WEBID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--访问履历
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_WZXT_MHXT_FWLL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_WZXT_MHXT_FWLL](
	[ID]  int  NOT NULL,--访问履历ID
	[SCHOOLID]  int  NOT NULL,--学校名
	[WEBID]  int  NOT NULL,--网站ID
	[ACCESSIP]  nvarchar(150)  NOT NULL,--访问IP
	[ACCESSURL]  nvarchar(500)  NOT NULL,--访问链接
	[ACCESSTIME]  datetime  NOT NULL,--访问时间
CONSTRAINT [PK_EDU_WZXT_MHXT_FWLL] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC,
	[WEBID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--发布权限
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_WZXT_MHXT_FBQX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_WZXT_MHXT_FBQX](
	[ID]  int  NOT NULL,--发布权限ID
	[SCHOOLID]  int  NOT NULL,--学校名
	[WEBID]  int  NOT NULL,--网站ID
	[LOGINNAME]  nvarchar(50)  NOT NULL,--用户名
	[LMLIST]  text  NOT NULL,--栏目
	[LMNAMELIST]  text  NULL,--栏目文字
CONSTRAINT [PK_EDU_WZXT_MHXT_FBQX] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC,
	[WEBID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--以下为添加注释语句
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'网站会员' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_VIP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_VIP', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'网站ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_VIP', @level2type=N'COLUMN',@level2name=N'WEBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_VIP', @level2type=N'COLUMN',@level2name=N'LOGINNAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'密码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_VIP', @level2type=N'COLUMN',@level2name=N'LOGINPWD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_VIP', @level2type=N'COLUMN',@level2name=N'REALNAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电子邮箱' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_VIP', @level2type=N'COLUMN',@level2name=N'EMAIL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_VIP', @level2type=N'COLUMN',@level2name=N'MOBILE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'QQ号码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_VIP', @level2type=N'COLUMN',@level2name=N'QQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_VIP', @level2type=N'COLUMN',@level2name=N'AUDITSTATU'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_VIP', @level2type=N'COLUMN',@level2name=N'AUDITOR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_VIP', @level2type=N'COLUMN',@level2name=N'AUDITORNAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'投票样式库' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_TPXT_TPYS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'样式ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_TPXT_TPYS', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_TPXT_TPYS', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'网站ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_TPXT_TPYS', @level2type=N'COLUMN',@level2name=N'WEBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'样式名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_TPXT_TPYS', @level2type=N'COLUMN',@level2name=N'NAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'效果图' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_TPXT_TPYS', @level2type=N'COLUMN',@level2name=N'SHOWIMG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'投票题目选项' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_TPXT_TPXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'投票题目选项ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_TPXT_TPXX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_TPXT_TPXX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'网站ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_TPXT_TPXX', @level2type=N'COLUMN',@level2name=N'WEBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'投票' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_TPXT_TPXX', @level2type=N'COLUMN',@level2name=N'TPID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'投票题目' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_TPXT_TPXX', @level2type=N'COLUMN',@level2name=N'TMID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_TPXT_TPXX', @level2type=N'COLUMN',@level2name=N'TITLE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'已选人数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_TPXT_TPXX', @level2type=N'COLUMN',@level2name=N'SUMTP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'投票题目' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_TPXT_TPTM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'投票题目ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_TPXT_TPTM', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_TPXT_TPTM', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'网站ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_TPXT_TPTM', @level2type=N'COLUMN',@level2name=N'WEBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'投票' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_TPXT_TPTM', @level2type=N'COLUMN',@level2name=N'TPID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'投票形式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_TPXT_TPTM', @level2type=N'COLUMN',@level2name=N'TYPEID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_TPXT_TPTM', @level2type=N'COLUMN',@level2name=N'TITLE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_TPXT_TPTM', @level2type=N'COLUMN',@level2name=N'CONTENT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'投票设置' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_TPXT_TPSZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'投票设置ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_TPXT_TPSZ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_TPXT_TPSZ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'网站ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_TPXT_TPSZ', @level2type=N'COLUMN',@level2name=N'WEBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_TPXT_TPSZ', @level2type=N'COLUMN',@level2name=N'TITLE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_TPXT_TPSZ', @level2type=N'COLUMN',@level2name=N'CONTENT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'显示方式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_TPXT_TPSZ', @level2type=N'COLUMN',@level2name=N'SHOWSTYLEID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'显示样式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_TPXT_TPSZ', @level2type=N'COLUMN',@level2name=N'CSSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'投票人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_TPXT_TPSZ', @level2type=N'COLUMN',@level2name=N'LOGINNAMELIST'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否开启' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_TPXT_TPSZ', @level2type=N'COLUMN',@level2name=N'STARTSTATU'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'投票记录' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_TPXT_TPJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'投票记录ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_TPXT_TPJL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_TPXT_TPJL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'网站ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_TPXT_TPJL', @level2type=N'COLUMN',@level2name=N'WEBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'投票' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_TPXT_TPJL', @level2type=N'COLUMN',@level2name=N'TPID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'投票人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_TPXT_TPJL', @level2type=N'COLUMN',@level2name=N'TPIP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'投票时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_TPXT_TPJL', @level2type=N'COLUMN',@level2name=N'TPTIME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'友情链接类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_YQLJLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'友情链接类型ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_YQLJLX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_YQLJLX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'网站ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_YQLJLX', @level2type=N'COLUMN',@level2name=N'WEBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_YQLJLX', @level2type=N'COLUMN',@level2name=N'NAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'显示方式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_YQLJLX', @level2type=N'COLUMN',@level2name=N'SHOWSTYLE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'友情链接' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_YQLJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'友情链接ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_YQLJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_YQLJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'网站ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_YQLJ', @level2type=N'COLUMN',@level2name=N'WEBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_YQLJ', @level2type=N'COLUMN',@level2name=N'TITLE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_YQLJ', @level2type=N'COLUMN',@level2name=N'TYPEID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图片' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_YQLJ', @level2type=N'COLUMN',@level2name=N'IMAGEURL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'链接' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_YQLJ', @level2type=N'COLUMN',@level2name=N'URL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'样式库' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZYS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'样式库ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZYS', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZYS', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'网站ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZYS', @level2type=N'COLUMN',@level2name=N'WEBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'样式名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZYS', @level2type=N'COLUMN',@level2name=N'NAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'效果图' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZYS', @level2type=N'COLUMN',@level2name=N'SHOWIMG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'网站文章' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZWZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'网站文章ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZWZ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZWZ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'网站ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZWZ', @level2type=N'COLUMN',@level2name=N'WEBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZWZ', @level2type=N'COLUMN',@level2name=N'TYPENAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'栏目' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZWZ', @level2type=N'COLUMN',@level2name=N'LMID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZWZ', @level2type=N'COLUMN',@level2name=N'TITLE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发布人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZWZ', @level2type=N'COLUMN',@level2name=N'PUBLISHERNAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'作者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZWZ', @level2type=N'COLUMN',@level2name=N'AUTHOR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'作者部门' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZWZ', @level2type=N'COLUMN',@level2name=N'AUTHORDEPART'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发布时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZWZ', @level2type=N'COLUMN',@level2name=N'PUBLISHDATE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZWZ', @level2type=N'COLUMN',@level2name=N'CONTENT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'链接' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZWZ', @level2type=N'COLUMN',@level2name=N'URL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图片' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZWZ', @level2type=N'COLUMN',@level2name=N'IMAGEURL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'附件名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZWZ', @level2type=N'COLUMN',@level2name=N'ATTACHMENTNAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'附件' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZWZ', @level2type=N'COLUMN',@level2name=N'ATTACHMENT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'点击量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZWZ', @level2type=N'COLUMN',@level2name=N'CHICKNUB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZWZ', @level2type=N'COLUMN',@level2name=N'AUDITSTATU'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZWZ', @level2type=N'COLUMN',@level2name=N'AUDITOR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZWZ', @level2type=N'COLUMN',@level2name=N'AUDITORNAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZWZ', @level2type=N'COLUMN',@level2name=N'AUDITTIME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZWZ', @level2type=N'COLUMN',@level2name=N'REMARK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'摘要' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZWZ', @level2type=N'COLUMN',@level2name=N'SUMMARY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'内外网' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZWZ', @level2type=N'COLUMN',@level2name=N'DISPLAYTYPE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开启状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZWZ', @level2type=N'COLUMN',@level2name=N'OPENFLAG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'浏览权限' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZWZ', @level2type=N'COLUMN',@level2name=N'LLQX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文章评价表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZPJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'评价ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZPJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZPJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'网站ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZPJ', @level2type=N'COLUMN',@level2name=N'WEBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'网站文章ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZPJ', @level2type=N'COLUMN',@level2name=N'WZID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'评价人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZPJ', @level2type=N'COLUMN',@level2name=N'PJR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'邮件地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZPJ', @level2type=N'COLUMN',@level2name=N'YJDZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'评价时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZPJ', @level2type=N'COLUMN',@level2name=N'PJSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'评价内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZPJ', @level2type=N'COLUMN',@level2name=N'PJNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'评价状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZPJ', @level2type=N'COLUMN',@level2name=N'PJZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZPJ', @level2type=N'COLUMN',@level2name=N'SHR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'回复' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZPJ', @level2type=N'COLUMN',@level2name=N'HF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'网站配置' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZPZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'网站ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZPZ', @level2type=N'COLUMN',@level2name=N'WEBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZPZ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'网站名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZPZ', @level2type=N'COLUMN',@level2name=N'WEBNAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否开启' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZPZ', @level2type=N'COLUMN',@level2name=N'STATUID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'网址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZPZ', @level2type=N'COLUMN',@level2name=N'WEBURL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'网站样式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZPZ', @level2type=N'COLUMN',@level2name=N'CSSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'内网IP配置' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_NWIP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'内网IP配置ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_NWIP', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'网站ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_NWIP', @level2type=N'COLUMN',@level2name=N'WEBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_NWIP', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'IP地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_NWIP', @level2type=N'COLUMN',@level2name=N'IP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'网站栏目（导航）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZLM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'网站栏目（导航）ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZLM', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZLM', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'网站ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZLM', @level2type=N'COLUMN',@level2name=N'WEBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'栏目使用类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZLM', @level2type=N'COLUMN',@level2name=N'LMSHOWSTYLE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'栏目名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZLM', @level2type=N'COLUMN',@level2name=N'NAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'栏目链接' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZLM', @level2type=N'COLUMN',@level2name=N'URL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图片链接' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZLM', @level2type=N'COLUMN',@level2name=N'IMAGEURL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'层级' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZLM', @level2type=N'COLUMN',@level2name=N'DEPTH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父目录' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZLM', @level2type=N'COLUMN',@level2name=N'PID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'列表显示型式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZLM', @level2type=N'COLUMN',@level2name=N'LISTSHOWSTYLE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序方式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZLM', @level2type=N'COLUMN',@level2name=N'ORDERTYPE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'显示个数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZLM', @level2type=N'COLUMN',@level2name=N'SHOWNUMBER'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开启状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZLM', @level2type=N'COLUMN',@level2name=N'OPENFLAG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'浏览权限' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZLM', @level2type=N'COLUMN',@level2name=N'LLQX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排列顺序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZLM', @level2type=N'COLUMN',@level2name=N'PLSX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'网站广告' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZGG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'网站广告ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZGG', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZGG', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'网站ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZGG', @level2type=N'COLUMN',@level2name=N'WEBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'显示型式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZGG', @level2type=N'COLUMN',@level2name=N'SHOWTYPE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'广告内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZGG', @level2type=N'COLUMN',@level2name=N'ADCONTENT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'广告链接' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZGG', @level2type=N'COLUMN',@level2name=N'GGLJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否显示' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZGG', @level2type=N'COLUMN',@level2name=N'SHOWSTATU'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'访问履历' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_FWLL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'访问履历ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_FWLL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_FWLL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'网站ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_FWLL', @level2type=N'COLUMN',@level2name=N'WEBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'访问IP' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_FWLL', @level2type=N'COLUMN',@level2name=N'ACCESSIP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'访问链接' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_FWLL', @level2type=N'COLUMN',@level2name=N'ACCESSURL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'访问时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_FWLL', @level2type=N'COLUMN',@level2name=N'ACCESSTIME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发布权限' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_FBQX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发布权限ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_FBQX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_FBQX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'网站ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_FBQX', @level2type=N'COLUMN',@level2name=N'WEBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_FBQX', @level2type=N'COLUMN',@level2name=N'LOGINNAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'栏目' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_FBQX', @level2type=N'COLUMN',@level2name=N'LMLIST'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'栏目文字' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_FBQX', @level2type=N'COLUMN',@level2name=N'LMNAMELIST'
GO
--空间名：EDU_ZXDY  生成器：SqlBuilder0.1

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXDY_04_A01_ZZGW')
            and   type = 'U')
   drop table EDU_ZXDY_04_A01_ZZGW
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXDY_04_A02_ZZRYAP')
            and   type = 'U')
   drop table EDU_ZXDY_04_A02_ZZRYAP
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXDY_04_A03_ZZGWFP')
            and   type = 'U')
   drop table EDU_ZXDY_04_A03_ZZGWFP
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXDY_04_A04_GWFPMB')
            and   type = 'U')
   drop table EDU_ZXDY_04_A04_GWFPMB
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXDY_04_A05_TBZZJS')
            and   type = 'U')
   drop table EDU_ZXDY_04_A05_TBZZJS
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXDY_04_A06_ZZZC')
            and   type = 'U')
   drop table EDU_ZXDY_04_A06_ZZZC
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXDY_04_A07_MBFPNR')
            and   type = 'U')
   drop table EDU_ZXDY_04_A07_MBFPNR
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXDY_05_A01_ZZDFDL')
            and   type = 'U')
   drop table EDU_ZXDY_05_A01_ZZDFDL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXDY_05_A02_ZZDFXZ')
            and   type = 'U')
   drop table EDU_ZXDY_05_A02_ZZDFXZ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXDY_05_A03_ZZDFD')
            and   type = 'U')
   drop table EDU_ZXDY_05_A03_ZZDFD
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXDY_06_A01_ZZXJ')
            and   type = 'U')
   drop table EDU_ZXDY_06_A01_ZZXJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXDY_06_A02_GQXJH')
            and   type = 'U')
   drop table EDU_ZXDY_06_A02_GQXJH
go
--值周岗位数据表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXDY_04_A01_ZZGW]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXDY_04_A01_ZZGW](
	[ID]  int  NOT NULL,--值周岗位表ID
	[SCHOOLID]  int  NOT NULL,--学校ID
	[XQID]  int  NOT NULL,--学期ID
	[GWGZNR]  nvarchar(200)  NOT NULL,--岗位工作内容
CONSTRAINT [PK_EDU_ZXDY_04_A01_ZZGW] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--值周人员安排表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXDY_04_A02_ZZRYAP]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXDY_04_A02_ZZRYAP](
	[ID]  int  NOT NULL,--值周人员安排表ID
	[SCHOOLID]  int  NOT NULL,--学校ID
	[XQID]  int  NOT NULL,--学期ID
	[ZCID]  int  NOT NULL,--周次ID
	[KSRQ]  datetime  NULL,--开始日期
	[JSRQ]  datetime  NULL,--结束日期
	[ZZBJ]  nvarchar(10)  NOT NULL,--值周班级班号
	[ZZID]  nvarchar(20)  NOT NULL,--组长ID
	[ZYIDLB]  text  NOT NULL,--组员ID列表
	[ZYMCLB]  text  NOT NULL,--组员名称列表
CONSTRAINT [PK_EDU_ZXDY_04_A02_ZZRYAP] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--值周岗位分配表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXDY_04_A03_ZZGWFP]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXDY_04_A03_ZZGWFP](
	[ID]  int  NOT NULL,--值周岗位分配表ID
	[SCHOOLID]  int  NOT NULL,--学校ID
	[XQID]  int  NOT NULL,--学期ID
	[ZCID]  int  NOT NULL,--周次ID
	[GZR]  int  NULL,--工作日
	[GWID]  int  NULL,--岗位ID
	[JSID]  nvarchar(20)  NOT NULL,--教师ID
CONSTRAINT [PK_EDU_ZXDY_04_A03_ZZGWFP] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--岗位分配模板表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXDY_04_A04_GWFPMB]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXDY_04_A04_GWFPMB](
	[ID]  int  NOT NULL,--岗位分配模板表ID
	[SCHOOLID]  int  NOT NULL,--学校ID
	[MBMC]  nvarchar(20)  NOT NULL,--模板名称
CONSTRAINT [PK_EDU_ZXDY_04_A04_GWFPMB] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--特别值周教师表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXDY_04_A05_TBZZJS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXDY_04_A05_TBZZJS](
	[ID]  int  NOT NULL,--特别值周教师表ID
	[SCHOOLID]  int  NOT NULL,--学校ID
	[XQID]  int  NOT NULL,--学期ID
	[JSLX]  nvarchar(20)  NOT NULL,--教师类型
	[JSID]  nvarchar(20)  NOT NULL,--教师ID
	[YXRQ]  datetime  NULL,--有效日期
CONSTRAINT [PK_EDU_ZXDY_04_A05_TBZZJS] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--值周周次表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXDY_04_A06_ZZZC]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXDY_04_A06_ZZZC](
	[ID]  int  NOT NULL,--周次表ID
	[SCHOOLID]  int  NOT NULL,--学校ID
	[XQID]  int  NOT NULL,--学期ID
	[ZCM]  nvarchar(20)  NOT NULL,--周次名
	[XQKSRQ]  datetime  NULL,--开始日期
	[XQJSRQ]  datetime  NULL,--结束日期
CONSTRAINT [PK_EDU_ZXDY_04_A06_ZZZC] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--模板分配内容表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXDY_04_A07_MBFPNR]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXDY_04_A07_MBFPNR](
	[ID]  int  NOT NULL,--模板内容表ID
	[MBID]  int  NOT NULL,--模板表ID
	[GZR]  int  NULL,--工作日
	[GWID]  int  NULL,--岗位ID
	[DYRYH]  int  NOT NULL,--对应人员号
CONSTRAINT [PK_EDU_ZXDY_04_A07_MBFPNR] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--值周打分大类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXDY_05_A01_ZZDFDL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXDY_05_A01_ZZDFDL](
	[ID]  int  NOT NULL,--值周打分大类表ID
	[SCHOOLID]  int  NOT NULL,--学校ID
	[XQID]  int  NOT NULL,--学期ID
	[DLMC]  nvarchar(20)  NOT NULL,--大类名称
CONSTRAINT [PK_EDU_ZXDY_05_A01_ZZDFDL] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--值周打分细则表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXDY_05_A02_ZZDFXZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXDY_05_A02_ZZDFXZ](
	[ID]  int  NOT NULL,--值周打分细则表ID
	[SCHOOLID]  int  NOT NULL,--学校ID
	[SSDLID]  int  NOT NULL,--所属大类ID
	[XZNR]  nvarchar(200)  NOT NULL,--细则内容
	[XZFZ]  decimal(2, 1)  NOT NULL,--细则分值
CONSTRAINT [PK_EDU_ZXDY_05_A02_ZZDFXZ] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--值周打分单表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXDY_05_A03_ZZDFD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXDY_05_A03_ZZDFD](
	[ID]  int  NOT NULL,--值周打分单表ID
	[SCHOOLID]  int  NOT NULL,--学校ID
	[XQID]  int  NOT NULL,--学期ID
	[ZCID]  int  NOT NULL,--周次ID
	[BJ]  nvarchar(10)  NULL,--班级
	[XSIDLB]  text  NULL,--学生ID列表
	[XSMCLB]  text  NULL,--学生名称列表
	[SSXZID]  int  NOT NULL,--所属细则
	[DFFZ]  decimal(2, 1)  NOT NULL,--打分分值
	[FSSJ]  datetime  NOT NULL,--发生时间
	[DFSJ]  datetime  NOT NULL,--打分时间
	[DFJSID]  nvarchar(20)  NOT NULL,--打分教师ID
	[BZ]  text  NOT NULL,--备注
CONSTRAINT [PK_EDU_ZXDY_05_A03_ZZDFD] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--值周小结表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXDY_06_A01_ZZXJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXDY_06_A01_ZZXJ](
	[ID]  int  NOT NULL,--值周小结表ID
	[SCHOOLID]  int  NOT NULL,--学校ID
	[XQID]  int  NOT NULL,--学期ID
	[ZCID]  int  NOT NULL,--周次ID
	[SZDS]  text  NULL,--上周大事
	[ZZJCQKFK]  text  NULL,--值周检查情况反馈
CONSTRAINT [PK_EDU_ZXDY_06_A01_ZZXJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--国旗下讲话表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXDY_06_A02_GQXJH]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXDY_06_A02_GQXJH](
	[ID]  int  NOT NULL,--国旗下讲话表ID
	[SCHOOLID]  int  NOT NULL,--学校ID
	[XQID]  int  NOT NULL,--学期ID
	[ZCID]  int  NOT NULL,--周次ID
	[JHZT]  text  NULL,--讲话主题
	[JHNR]  text  NULL,--讲话内容
CONSTRAINT [PK_EDU_ZXDY_06_A02_GQXJH] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--以下为添加注释语句
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'值周岗位数据表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A01_ZZGW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'值周岗位表ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A01_ZZGW', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A01_ZZGW', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学期ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A01_ZZGW', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'岗位工作内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A01_ZZGW', @level2type=N'COLUMN',@level2name=N'GWGZNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'值周人员安排表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A02_ZZRYAP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'值周人员安排表ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A02_ZZRYAP', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A02_ZZRYAP', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学期ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A02_ZZRYAP', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'周次ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A02_ZZRYAP', @level2type=N'COLUMN',@level2name=N'ZCID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开始日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A02_ZZRYAP', @level2type=N'COLUMN',@level2name=N'KSRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'结束日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A02_ZZRYAP', @level2type=N'COLUMN',@level2name=N'JSRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'值周班级班号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A02_ZZRYAP', @level2type=N'COLUMN',@level2name=N'ZZBJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'组长ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A02_ZZRYAP', @level2type=N'COLUMN',@level2name=N'ZZID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'组员ID列表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A02_ZZRYAP', @level2type=N'COLUMN',@level2name=N'ZYIDLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'组员名称列表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A02_ZZRYAP', @level2type=N'COLUMN',@level2name=N'ZYMCLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'值周岗位分配表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A03_ZZGWFP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'值周岗位分配表ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A03_ZZGWFP', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A03_ZZGWFP', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学期ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A03_ZZGWFP', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'周次ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A03_ZZGWFP', @level2type=N'COLUMN',@level2name=N'ZCID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工作日' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A03_ZZGWFP', @level2type=N'COLUMN',@level2name=N'GZR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'岗位ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A03_ZZGWFP', @level2type=N'COLUMN',@level2name=N'GWID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教师ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A03_ZZGWFP', @level2type=N'COLUMN',@level2name=N'JSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'岗位分配模板表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A04_GWFPMB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'岗位分配模板表ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A04_GWFPMB', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A04_GWFPMB', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'模板名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A04_GWFPMB', @level2type=N'COLUMN',@level2name=N'MBMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'特别值周教师表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A05_TBZZJS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'特别值周教师表ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A05_TBZZJS', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A05_TBZZJS', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学期ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A05_TBZZJS', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教师类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A05_TBZZJS', @level2type=N'COLUMN',@level2name=N'JSLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教师ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A05_TBZZJS', @level2type=N'COLUMN',@level2name=N'JSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'有效日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A05_TBZZJS', @level2type=N'COLUMN',@level2name=N'YXRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'值周周次表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A06_ZZZC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'周次表ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A06_ZZZC', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A06_ZZZC', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学期ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A06_ZZZC', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'周次名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A06_ZZZC', @level2type=N'COLUMN',@level2name=N'ZCM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开始日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A06_ZZZC', @level2type=N'COLUMN',@level2name=N'XQKSRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'结束日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A06_ZZZC', @level2type=N'COLUMN',@level2name=N'XQJSRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'模板分配内容表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A07_MBFPNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'模板内容表ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A07_MBFPNR', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'模板表ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A07_MBFPNR', @level2type=N'COLUMN',@level2name=N'MBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工作日' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A07_MBFPNR', @level2type=N'COLUMN',@level2name=N'GZR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'岗位ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A07_MBFPNR', @level2type=N'COLUMN',@level2name=N'GWID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'对应人员号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A07_MBFPNR', @level2type=N'COLUMN',@level2name=N'DYRYH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'值周打分大类表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_05_A01_ZZDFDL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'值周打分大类表ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_05_A01_ZZDFDL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_05_A01_ZZDFDL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学期ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_05_A01_ZZDFDL', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'大类名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_05_A01_ZZDFDL', @level2type=N'COLUMN',@level2name=N'DLMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'值周打分细则表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_05_A02_ZZDFXZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'值周打分细则表ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_05_A02_ZZDFXZ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_05_A02_ZZDFXZ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属大类ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_05_A02_ZZDFXZ', @level2type=N'COLUMN',@level2name=N'SSDLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'细则内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_05_A02_ZZDFXZ', @level2type=N'COLUMN',@level2name=N'XZNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'细则分值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_05_A02_ZZDFXZ', @level2type=N'COLUMN',@level2name=N'XZFZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'值周打分单表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_05_A03_ZZDFD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'值周打分单表ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_05_A03_ZZDFD', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_05_A03_ZZDFD', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学期ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_05_A03_ZZDFD', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'周次ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_05_A03_ZZDFD', @level2type=N'COLUMN',@level2name=N'ZCID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'班级' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_05_A03_ZZDFD', @level2type=N'COLUMN',@level2name=N'BJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生ID列表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_05_A03_ZZDFD', @level2type=N'COLUMN',@level2name=N'XSIDLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生名称列表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_05_A03_ZZDFD', @level2type=N'COLUMN',@level2name=N'XSMCLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属细则' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_05_A03_ZZDFD', @level2type=N'COLUMN',@level2name=N'SSXZID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'打分分值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_05_A03_ZZDFD', @level2type=N'COLUMN',@level2name=N'DFFZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发生时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_05_A03_ZZDFD', @level2type=N'COLUMN',@level2name=N'FSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'打分时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_05_A03_ZZDFD', @level2type=N'COLUMN',@level2name=N'DFSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'打分教师ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_05_A03_ZZDFD', @level2type=N'COLUMN',@level2name=N'DFJSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_05_A03_ZZDFD', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'值周小结表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_06_A01_ZZXJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'值周小结表ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_06_A01_ZZXJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_06_A01_ZZXJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学期ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_06_A01_ZZXJ', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'周次ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_06_A01_ZZXJ', @level2type=N'COLUMN',@level2name=N'ZCID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上周大事' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_06_A01_ZZXJ', @level2type=N'COLUMN',@level2name=N'SZDS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'值周检查情况反馈' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_06_A01_ZZXJ', @level2type=N'COLUMN',@level2name=N'ZZJCQKFK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'国旗下讲话表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_06_A02_GQXJH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'国旗下讲话表ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_06_A02_GQXJH', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_06_A02_GQXJH', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学期ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_06_A02_GQXJH', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'周次ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_06_A02_GQXJH', @level2type=N'COLUMN',@level2name=N'ZCID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'讲话主题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_06_A02_GQXJH', @level2type=N'COLUMN',@level2name=N'JHZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'讲话内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_06_A02_GQXJH', @level2type=N'COLUMN',@level2name=N'JHNR'
GO
--空间名：EDU_ZXJX  生成器：SqlBuilder0.1

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_01_01_KC')
            and   type = 'U')
   drop table EDU_ZXJX_01_01_KC
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_05_A01_KS')
            and   type = 'U')
   drop table EDU_ZXJX_05_A01_KS
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_05_A02_KSKM')
            and   type = 'U')
   drop table EDU_ZXJX_05_A02_KSKM
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_06_A01_MPJL')
            and   type = 'U')
   drop table EDU_ZXJX_06_A01_MPJL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_07_A01_CJFXPZ')
            and   type = 'U')
   drop table EDU_ZXJX_07_A01_CJFXPZ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_07_A02_CJFXPZXM')
            and   type = 'U')
   drop table EDU_ZXJX_07_A02_CJFXPZXM
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_08_A01_XXGCXPJPZ')
            and   type = 'U')
   drop table EDU_ZXJX_08_A01_XXGCXPJPZ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_08_A02_XXGCXPJJG')
            and   type = 'U')
   drop table EDU_ZXJX_08_A02_XXGCXPJJG
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_08_A03_XXGCXPJXMLX')
            and   type = 'U')
   drop table EDU_ZXJX_08_A03_XXGCXPJXMLX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_09_A01_TKSQSJ')
            and   type = 'U')
   drop table EDU_ZXJX_09_A01_TKSQSJ
go
--课程数据类
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_01_01_KC]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_01_01_KC](
	[SCHOOLID]  int  NOT NULL,--学校名
	[KCH]  nvarchar(10)  NOT NULL,--课程号
	[KCMC]  nvarchar(60)  NULL,--课程名称
	[KCM]  nvarchar(2)  NOT NULL,--课程码
	[KCDJM]  nvarchar(1)  NOT NULL,--课程等级码
	[KCBM]  nvarchar(60)  NOT NULL,--课程别名
	[KCJJ]  text  NULL,--课程简介
	[KCYQ]  text  NULL,--课程要求
	[ZXS]  decimal(3, 0)  NULL,--总学时
	[ZHXS]  decimal(2, 0)  NULL,--周学时
	[ZXXS]  decimal(3, 0)  NULL,--自学学时
	[SKFSM]  nvarchar(1)  NOT NULL,--授课方式码
	[JCBM]  text  NULL,--教材编码
	[CKSM]  text  NULL,--参考书目
	[CDXZ]  int  NULL,--场地限制
	[SFZK]  nvarchar(1)  NULL,--是否主课
CONSTRAINT [PK_EDU_ZXJX_01_01_KC] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[KCH] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--考试数据表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_05_A01_KS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_05_A01_KS](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校名
	[XNID]  int  NOT NULL,--学年
	[XQID]  int  NOT NULL,--学期
	[KSMC]  nvarchar(60)  NOT NULL,--考试名称
	[KSKSSJ]  datetime  NOT NULL,--考试开始时间
	[KSJSSJ]  datetime  NOT NULL,--考试结束时间
	[DFKSSJ]  datetime  NOT NULL,--登分开始时间
	[DFJSSJ]  datetime  NOT NULL,--登分结束时间
	[DFKS]  int  NOT NULL,--登分方式
CONSTRAINT [PK_EDU_ZXJX_05_A01_KS] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--考试科目数据表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_05_A02_KSKM]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_05_A02_KSKM](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校名
	[SSKSID]  int  NOT NULL,--所属考试ID
	[JSRKID]  int  NOT NULL,--教师任课编号
	[KCMC]  nvarchar(60)  NOT NULL,--课程名称
	[NJMC]  nvarchar(30)  NOT NULL,--年级名称
	[BJMC]  nvarchar(20)  NOT NULL,--班级名称
	[CJZF]  decimal(5, 1)  NOT NULL,--成绩总分
CONSTRAINT [PK_EDU_ZXJX_05_A02_KSKM] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--面批记录表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_06_A01_MPJL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_06_A01_MPJL](
	[ID]  int  identity,--编号
	[SCHOOLID]  int  NOT NULL,--学校名
	[MPJS]  int  NOT NULL,--面批教师
	[MPKC]  nvarchar(10)  NOT NULL,--面批课程
	[MPXS]  int  NOT NULL,--面批学生
	[XNID]  int  NOT NULL,--学年
	[XQID]  int  NOT NULL,--学期
	[NJID]  nvarchar(10)  NOT NULL,--年级
	[BJID]  nvarchar(10)  NOT NULL,--班级
	[MPJG]  int  NOT NULL,--面批结果
	[MPSJ]  datetime  NOT NULL,--面批时间
	[RRSJ]  datetime  NOT NULL,--录入时间
	[BZ]  text  NULL,--备注
	[JSRKID]  int  NOT NULL,--教师任课编号
	[XLZID]  int  NOT NULL,--校历周ID
CONSTRAINT [PK_EDU_ZXJX_06_A01_MPJL] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--成绩分析配置表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_07_A01_CJFXPZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_07_A01_CJFXPZ](
	[ID]  int  identity,--编号
	[SCHOOLID]  int  NOT NULL,--学校ID
	[SSKSID]  nvarchar(20)  NOT NULL,--配置名称
	[FXLX]  int  NOT NULL,--分析类型
	[BZ]  nvarchar(60)  NOT NULL,--备注
CONSTRAINT [PK_EDU_ZXJX_07_A01_CJFXPZ] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--成绩分析配置项目表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_07_A02_CJFXPZXM]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_07_A02_CJFXPZXM](
	[ID]  int  identity,--编号
	[SSPZID]  int  NOT NULL,--所属配置ID
	[DCMC]  nvarchar(20)  NOT NULL,--名称
	[SX]  int  NOT NULL,--上限
	[XX]  int  NOT NULL,--下限
	[PZQZ]  int  NOT NULL,--P值权重
CONSTRAINT [PK_EDU_ZXJX_07_A02_CJFXPZXM] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--学生学习过程性评价配置表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_08_A01_XXGCXPJPZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_08_A01_XXGCXPJPZ](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校ID
	[SSKCH]  text  NOT NULL,--所属课程号
	[PZMC]  nvarchar(80)  NOT NULL,--配置名称
	[PZLX]  nvarchar(30)  NOT NULL,--配置类型
	[FLM]  nvarchar(30)  NOT NULL,--父类名
CONSTRAINT [PK_EDU_ZXJX_08_A01_XXGCXPJPZ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--学生学习过程性评价结果表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_08_A02_XXGCXPJJG]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_08_A02_XXGCXPJJG](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校ID
	[PZID]  int  NOT NULL,--评价配置ID
	[FS]  decimal(18, 1)  NOT NULL,--分数
	[XLZID]  int  NOT NULL,--校历周ID
	[XSXXID]  int  NOT NULL,--学生ID
	[SSKCH]  nvarchar(10)  NOT NULL,--所属课程号
CONSTRAINT [PK_EDU_ZXJX_08_A02_XXGCXPJJG] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--学生学习过程性评价项目类型表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_08_A03_XXGCXPJXMLX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_08_A03_XXGCXPJXMLX](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校ID
	[LXMC]  nvarchar(80)  NOT NULL,--类型名称
	[PJKM]  text  NOT NULL,--评价科目
CONSTRAINT [PK_EDU_ZXJX_08_A03_XXGCXPJXMLX] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--调课申请数据表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_09_A01_TKSQSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_09_A01_TKSQSJ](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校ID
	[JSID]  int  NOT NULL,--教师
	[KCID]  nvarchar(10)  NOT NULL,--课程
	[TKLXID]  int  NOT NULL,--调课类型ID
	[TKQQSZ]  int  NOT NULL,--调课前起始周
	[TKQJSZ]  int  NOT NULL,--调课前结束周
	[TKQXQ]  int  NOT NULL,--调课前星期
	[TKQSD]  int  NOT NULL,--调课前时段
	[TKQJC]  int  NOT NULL,--调课前节次
	[TKHQSZ]  int  NOT NULL,--调课后起始周
	[TKHJSZ]  int  NOT NULL,--调课后结束周
	[TKHXQ]  int  NOT NULL,--调课后星期
	[TKHSD]  int  NOT NULL,--调课后时段
	[TKHJC]  int  NOT NULL,--调课后节次
	[ZT]  int  NOT NULL,--当前状态
	[BZ]  text  NOT NULL,--备注
CONSTRAINT [PK_EDU_ZXJX_09_A01_TKSQSJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--以下为添加注释语句
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程数据类' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_01_01_KC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_01_01_KC', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_01_01_KC', @level2type=N'COLUMN',@level2name=N'KCH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_01_01_KC', @level2type=N'COLUMN',@level2name=N'KCMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_01_01_KC', @level2type=N'COLUMN',@level2name=N'KCM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程等级码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_01_01_KC', @level2type=N'COLUMN',@level2name=N'KCDJM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程别名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_01_01_KC', @level2type=N'COLUMN',@level2name=N'KCBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程简介' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_01_01_KC', @level2type=N'COLUMN',@level2name=N'KCJJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程要求' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_01_01_KC', @level2type=N'COLUMN',@level2name=N'KCYQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'总学时' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_01_01_KC', @level2type=N'COLUMN',@level2name=N'ZXS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'周学时' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_01_01_KC', @level2type=N'COLUMN',@level2name=N'ZHXS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自学学时' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_01_01_KC', @level2type=N'COLUMN',@level2name=N'ZXXS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'授课方式码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_01_01_KC', @level2type=N'COLUMN',@level2name=N'SKFSM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教材编码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_01_01_KC', @level2type=N'COLUMN',@level2name=N'JCBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'参考书目' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_01_01_KC', @level2type=N'COLUMN',@level2name=N'CKSM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'场地限制' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_01_01_KC', @level2type=N'COLUMN',@level2name=N'CDXZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否主课' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_01_01_KC', @level2type=N'COLUMN',@level2name=N'SFZK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'考试数据表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_05_A01_KS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_05_A01_KS', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_05_A01_KS', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学年' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_05_A01_KS', @level2type=N'COLUMN',@level2name=N'XNID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_05_A01_KS', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'考试名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_05_A01_KS', @level2type=N'COLUMN',@level2name=N'KSMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'考试开始时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_05_A01_KS', @level2type=N'COLUMN',@level2name=N'KSKSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'考试结束时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_05_A01_KS', @level2type=N'COLUMN',@level2name=N'KSJSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登分开始时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_05_A01_KS', @level2type=N'COLUMN',@level2name=N'DFKSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登分结束时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_05_A01_KS', @level2type=N'COLUMN',@level2name=N'DFJSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登分方式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_05_A01_KS', @level2type=N'COLUMN',@level2name=N'DFKS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'考试科目数据表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_05_A02_KSKM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_05_A02_KSKM', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_05_A02_KSKM', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属考试ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_05_A02_KSKM', @level2type=N'COLUMN',@level2name=N'SSKSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教师任课编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_05_A02_KSKM', @level2type=N'COLUMN',@level2name=N'JSRKID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_05_A02_KSKM', @level2type=N'COLUMN',@level2name=N'KCMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'年级名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_05_A02_KSKM', @level2type=N'COLUMN',@level2name=N'NJMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'班级名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_05_A02_KSKM', @level2type=N'COLUMN',@level2name=N'BJMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'成绩总分' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_05_A02_KSKM', @level2type=N'COLUMN',@level2name=N'CJZF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'面批记录表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_06_A01_MPJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_06_A01_MPJL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_06_A01_MPJL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'面批教师' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_06_A01_MPJL', @level2type=N'COLUMN',@level2name=N'MPJS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'面批课程' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_06_A01_MPJL', @level2type=N'COLUMN',@level2name=N'MPKC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'面批学生' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_06_A01_MPJL', @level2type=N'COLUMN',@level2name=N'MPXS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学年' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_06_A01_MPJL', @level2type=N'COLUMN',@level2name=N'XNID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_06_A01_MPJL', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'年级' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_06_A01_MPJL', @level2type=N'COLUMN',@level2name=N'NJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'班级' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_06_A01_MPJL', @level2type=N'COLUMN',@level2name=N'BJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'面批结果' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_06_A01_MPJL', @level2type=N'COLUMN',@level2name=N'MPJG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'面批时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_06_A01_MPJL', @level2type=N'COLUMN',@level2name=N'MPSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'录入时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_06_A01_MPJL', @level2type=N'COLUMN',@level2name=N'RRSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_06_A01_MPJL', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教师任课编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_06_A01_MPJL', @level2type=N'COLUMN',@level2name=N'JSRKID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'校历周ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_06_A01_MPJL', @level2type=N'COLUMN',@level2name=N'XLZID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'成绩分析配置表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_07_A01_CJFXPZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_07_A01_CJFXPZ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_07_A01_CJFXPZ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'配置名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_07_A01_CJFXPZ', @level2type=N'COLUMN',@level2name=N'SSKSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分析类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_07_A01_CJFXPZ', @level2type=N'COLUMN',@level2name=N'FXLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_07_A01_CJFXPZ', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'成绩分析配置项目表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_07_A02_CJFXPZXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_07_A02_CJFXPZXM', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属配置ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_07_A02_CJFXPZXM', @level2type=N'COLUMN',@level2name=N'SSPZID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_07_A02_CJFXPZXM', @level2type=N'COLUMN',@level2name=N'DCMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上限' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_07_A02_CJFXPZXM', @level2type=N'COLUMN',@level2name=N'SX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'下限' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_07_A02_CJFXPZXM', @level2type=N'COLUMN',@level2name=N'XX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'P值权重' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_07_A02_CJFXPZXM', @level2type=N'COLUMN',@level2name=N'PZQZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生学习过程性评价配置表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_08_A01_XXGCXPJPZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_08_A01_XXGCXPJPZ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_08_A01_XXGCXPJPZ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属课程号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_08_A01_XXGCXPJPZ', @level2type=N'COLUMN',@level2name=N'SSKCH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'配置名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_08_A01_XXGCXPJPZ', @level2type=N'COLUMN',@level2name=N'PZMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'配置类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_08_A01_XXGCXPJPZ', @level2type=N'COLUMN',@level2name=N'PZLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父类名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_08_A01_XXGCXPJPZ', @level2type=N'COLUMN',@level2name=N'FLM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生学习过程性评价结果表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_08_A02_XXGCXPJJG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_08_A02_XXGCXPJJG', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_08_A02_XXGCXPJJG', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'评价配置ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_08_A02_XXGCXPJJG', @level2type=N'COLUMN',@level2name=N'PZID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_08_A02_XXGCXPJJG', @level2type=N'COLUMN',@level2name=N'FS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'校历周ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_08_A02_XXGCXPJJG', @level2type=N'COLUMN',@level2name=N'XLZID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_08_A02_XXGCXPJJG', @level2type=N'COLUMN',@level2name=N'XSXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属课程号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_08_A02_XXGCXPJJG', @level2type=N'COLUMN',@level2name=N'SSKCH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生学习过程性评价项目类型表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_08_A03_XXGCXPJXMLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_08_A03_XXGCXPJXMLX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_08_A03_XXGCXPJXMLX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_08_A03_XXGCXPJXMLX', @level2type=N'COLUMN',@level2name=N'LXMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'评价科目' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_08_A03_XXGCXPJXMLX', @level2type=N'COLUMN',@level2name=N'PJKM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'调课申请数据表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_09_A01_TKSQSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_09_A01_TKSQSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_09_A01_TKSQSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教师' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_09_A01_TKSQSJ', @level2type=N'COLUMN',@level2name=N'JSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_09_A01_TKSQSJ', @level2type=N'COLUMN',@level2name=N'KCID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'调课类型ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_09_A01_TKSQSJ', @level2type=N'COLUMN',@level2name=N'TKLXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'调课前起始周' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_09_A01_TKSQSJ', @level2type=N'COLUMN',@level2name=N'TKQQSZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'调课前结束周' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_09_A01_TKSQSJ', @level2type=N'COLUMN',@level2name=N'TKQJSZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'调课前星期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_09_A01_TKSQSJ', @level2type=N'COLUMN',@level2name=N'TKQXQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'调课前时段' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_09_A01_TKSQSJ', @level2type=N'COLUMN',@level2name=N'TKQSD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'调课前节次' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_09_A01_TKSQSJ', @level2type=N'COLUMN',@level2name=N'TKQJC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'调课后起始周' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_09_A01_TKSQSJ', @level2type=N'COLUMN',@level2name=N'TKHQSZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'调课后结束周' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_09_A01_TKSQSJ', @level2type=N'COLUMN',@level2name=N'TKHJSZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'调课后星期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_09_A01_TKSQSJ', @level2type=N'COLUMN',@level2name=N'TKHXQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'调课后时段' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_09_A01_TKSQSJ', @level2type=N'COLUMN',@level2name=N'TKHSD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'调课后节次' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_09_A01_TKSQSJ', @level2type=N'COLUMN',@level2name=N'TKHJC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'当前状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_09_A01_TKSQSJ', @level2type=N'COLUMN',@level2name=N'ZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_09_A01_TKSQSJ', @level2type=N'COLUMN',@level2name=N'BZ'
GO
--空间名：EDU_ZXJZ  生成器：SqlBuilder0.1

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJZ_01_01_JZGJBSJ')
            and   type = 'U')
   drop table EDU_ZXJZ_01_01_JZGJBSJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJZ_02_A01_XNGWSJ')
            and   type = 'U')
   drop table EDU_ZXJZ_02_A01_XNGWSJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJZ_07_02_RKSJ')
            and   type = 'U')
   drop table EDU_ZXJZ_07_02_RKSJ
go
--教职工基本数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJZ_01_01_JZGJBSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJZ_01_01_JZGJBSJ](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校名
	[GH]  nvarchar(20)  NOT NULL,--工号
	[XM]  nvarchar(36)  NOT NULL,--姓名
	[YWXM]  nvarchar(60)  NULL,--英文姓名
	[XMPY]  nvarchar(60)  NULL,--姓名拼音
	[CYM]  nvarchar(36)  NULL,--曾用名
	[XBM]  nvarchar(1)  NOT NULL,--性别码
	[CSRQ]  nvarchar(8)  NOT NULL,--出生日期
	[CSDM]  nvarchar(6)  NOT NULL,--出生地码
	[JG]  nvarchar(20)  NULL,--籍贯
	[MZM]  nvarchar(2)  NULL,--民族码
	[GJDQM]  nvarchar(3)  NOT NULL,--国籍/地区码
	[SFZJLXM]  nvarchar(1)  NOT NULL,--身份证件类型码
	[SFZJH]  nvarchar(20)  NOT NULL,--身份证件号
	[HYZKM]  nvarchar(2)  NULL,--婚姻状况码
	[GATQWM]  nvarchar(2)  NULL,--港澳台侨外码
	[ZZMMM]  nvarchar(2)  NOT NULL,--政治面貌码
	[JKZKM]  nvarchar(1)  NULL,--健康状况码
	[XYZJM]  nvarchar(2)  NULL,--信仰宗教码
	[XXM]  nvarchar(1)  NULL,--血型码
	[ZP]  nvarchar(200)  NULL,--照片
	[SFZJYXQ]  nvarchar(8)  NULL,--身份证件有效期
	[JGH]  nvarchar(40)  NOT NULL,--机构号
	[JTZZ]  nvarchar(180)  NULL,--家庭住址
	[XZZ]  nvarchar(180)  NULL,--现住址
	[HKSZD]  nvarchar(180)  NULL,--户口所在地
	[HKXZM]  nvarchar(1)  NULL,--户口性质码
	[XLM]  nvarchar(2)  NOT NULL,--学历码
	[GZNY]  nvarchar(6)  NULL,--参加工作年月
	[LXNY]  nvarchar(6)  NULL,--来校年月
	[CJNY]  nvarchar(6)  NULL,--从教年月
	[BZLBM]  nvarchar(1)  NOT NULL,--编制类别码
	[DABH]  nvarchar(10)  NOT NULL,--档案编号
	[DAWB]  text  NULL,--档案文本
	[TXDZ]  nvarchar(180)  NULL,--通信地址
	[LXDH]  nvarchar(30)  NULL,--联系电话
	[YZBM]  nvarchar(6)  NULL,--邮政编码
	[DZXX]  nvarchar(40)  NULL,--电子信箱
	[ZYDZ]  nvarchar(60)  NULL,--主页地址
	[TC]  text  NULL,--特长
	[GWZYM]  nvarchar(2)  NOT NULL,--岗位职业码
	[ZYRKXD]  nvarchar(1)  NOT NULL,--主要任课学段
CONSTRAINT [PK_EDU_ZXJZ_01_01_JZGJBSJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--校内岗位数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJZ_02_A01_XNGWSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJZ_02_A01_XNGWSJ](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校名
	[GWID]  int  NOT NULL,--岗位表ID
	[JZGJBSJID]  int  NOT NULL,--教职工基本数据子类表
	[GWQSNY]  nvarchar(6)  NOT NULL,--岗位起始年月
	[GWJSNY]  nvarchar(6)  NOT NULL,--岗位结束年月
	[SFZG]  nvarchar(1)  NOT NULL,--是否在岗
	[ZWMC]  nvarchar(10)  NOT NULL,--职务名称
	[JGH]  nvarchar(10)  NOT NULL,--机构号
CONSTRAINT [PK_EDU_ZXJZ_02_A01_XNGWSJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--任课数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJZ_07_02_RKSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJZ_07_02_RKSJ](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校名
	[JZGJBSJID]  int  NOT NULL,--教职工基本数据子类表
	[RKKCH]  nvarchar(10)  NOT NULL,--任课课程号
	[RKQSNY]  nvarchar(6)  NOT NULL,--任课起始年月
	[RKZZNY]  nvarchar(6)  NOT NULL,--任课终止年月
	[RKZXS]  decimal(3, 0)  NOT NULL,--任课总学时
	[RKXDM]  nvarchar(1)  NOT NULL,--任课学段码
	[RKJSM]  nvarchar(1)  NOT NULL,--任课角色码
	[SKBJ]  nvarchar(10)  NOT NULL,--授课班级
	[SKRS]  decimal(4, 0)  NOT NULL,--授课人数
	[ZKS]  int  NOT NULL,--周课时
	[SFLT]  nvarchar(1)  NOT NULL,--是否连堂
	[NJID]  nvarchar(10)  NOT NULL,--年级号
	[XQID]  int  NOT NULL,--学期
	[XNID]  int  NOT NULL,--学年
CONSTRAINT [PK_EDU_ZXJZ_07_02_RKSJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--以下为添加注释语句
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教职工基本数据子类表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'GH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'XM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'英文姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'YWXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'姓名拼音' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'XMPY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'曾用名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'CYM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'性别码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'XBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'出生日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'CSRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'出生地码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'CSDM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'籍贯' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'JG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'民族码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'MZM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'国籍/地区码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'GJDQM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'身份证件类型码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'SFZJLXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'身份证件号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'SFZJH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'婚姻状况码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'HYZKM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'港澳台侨外码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'GATQWM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'政治面貌码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'ZZMMM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'健康状况码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'JKZKM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'信仰宗教码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'XYZJM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'血型码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'XXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'照片' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'ZP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'身份证件有效期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'SFZJYXQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'机构号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'JGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'家庭住址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'JTZZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'现住址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'XZZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'户口所在地' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'HKSZD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'户口性质码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'HKXZM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学历码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'XLM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'参加工作年月' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'GZNY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'来校年月' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'LXNY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'从教年月' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'CJNY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编制类别码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'BZLBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'档案编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'DABH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'档案文本' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'DAWB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'通信地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'TXDZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'LXDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'邮政编码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'YZBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电子信箱' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'DZXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主页地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'ZYDZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'特长' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'TC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'岗位职业码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'GWZYM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主要任课学段' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'ZYRKXD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'校内岗位数据子类表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_02_A01_XNGWSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_02_A01_XNGWSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_02_A01_XNGWSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'岗位表ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_02_A01_XNGWSJ', @level2type=N'COLUMN',@level2name=N'GWID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教职工基本数据子类表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_02_A01_XNGWSJ', @level2type=N'COLUMN',@level2name=N'JZGJBSJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'岗位起始年月' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_02_A01_XNGWSJ', @level2type=N'COLUMN',@level2name=N'GWQSNY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'岗位结束年月' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_02_A01_XNGWSJ', @level2type=N'COLUMN',@level2name=N'GWJSNY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否在岗' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_02_A01_XNGWSJ', @level2type=N'COLUMN',@level2name=N'SFZG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'职务名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_02_A01_XNGWSJ', @level2type=N'COLUMN',@level2name=N'ZWMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'机构号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_02_A01_XNGWSJ', @level2type=N'COLUMN',@level2name=N'JGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'任课数据子类表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_07_02_RKSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_07_02_RKSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_07_02_RKSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教职工基本数据子类表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_07_02_RKSJ', @level2type=N'COLUMN',@level2name=N'JZGJBSJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'任课课程号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_07_02_RKSJ', @level2type=N'COLUMN',@level2name=N'RKKCH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'任课起始年月' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_07_02_RKSJ', @level2type=N'COLUMN',@level2name=N'RKQSNY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'任课终止年月' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_07_02_RKSJ', @level2type=N'COLUMN',@level2name=N'RKZZNY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'任课总学时' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_07_02_RKSJ', @level2type=N'COLUMN',@level2name=N'RKZXS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'任课学段码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_07_02_RKSJ', @level2type=N'COLUMN',@level2name=N'RKXDM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'任课角色码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_07_02_RKSJ', @level2type=N'COLUMN',@level2name=N'RKJSM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'授课班级' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_07_02_RKSJ', @level2type=N'COLUMN',@level2name=N'SKBJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'授课人数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_07_02_RKSJ', @level2type=N'COLUMN',@level2name=N'SKRS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'周课时' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_07_02_RKSJ', @level2type=N'COLUMN',@level2name=N'ZKS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否连堂' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_07_02_RKSJ', @level2type=N'COLUMN',@level2name=N'SFLT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'年级号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_07_02_RKSJ', @level2type=N'COLUMN',@level2name=N'NJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_07_02_RKSJ', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学年' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_07_02_RKSJ', @level2type=N'COLUMN',@level2name=N'XNID'
GO
--空间名：EDU_ZXXS  生成器：SqlBuilder0.1

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXXS_01_01_XSXX')
            and   type = 'U')
   drop table EDU_ZXXS_01_01_XSXX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXXS_01_06_XSJTCY')
            and   type = 'U')
   drop table EDU_ZXXS_01_06_XSJTCY
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXXS_02_A01_XSJTXX')
            and   type = 'U')
   drop table EDU_ZXXS_02_A01_XSJTXX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXXS_02_06_ZXKSCJ')
            and   type = 'U')
   drop table EDU_ZXXS_02_06_ZXKSCJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXXS_07_A02_XJYD')
            and   type = 'U')
   drop table EDU_ZXXS_07_A02_XJYD
go
--学生基本数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXXS_01_01_XSXX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXXS_01_01_XSXX](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校名
	[XH]  nvarchar(20)  NOT NULL,--学号
	[XM]  nvarchar(36)  NOT NULL,--姓名
	[YWXM]  nvarchar(60)  NULL,--英文姓名
	[XMPY]  nvarchar(60)  NULL,--姓名拼音
	[CYM]  nvarchar(36)  NULL,--曾用名
	[XBM]  nvarchar(1)  NOT NULL,--性别码
	[CSRQ]  nvarchar(8)  NOT NULL,--出生日期
	[CSDM]  nvarchar(6)  NOT NULL,--出生地码
	[JG]  nvarchar(20)  NULL,--籍贯
	[MZM]  nvarchar(2)  NULL,--民族码
	[GJDQM]  nvarchar(3)  NOT NULL,--国籍/地区码
	[SFZJLXM]  nvarchar(1)  NULL,--身份证件类型码
	[SFZJH]  nvarchar(20)  NULL,--身份证件号
	[HYZKM]  nvarchar(2)  NULL,--婚姻状况码
	[GATQWM]  nvarchar(2)  NULL,--港澳台侨外码
	[ZZMMM]  nvarchar(2)  NOT NULL,--政治面貌码
	[JKZKM]  nvarchar(1)  NOT NULL,--健康状况码
	[XYZJM]  nvarchar(2)  NULL,--信仰宗教码
	[XXM]  nvarchar(1)  NULL,--血型码
	[ZP]  nvarchar(200)  NULL,--照片
	[SFZJYXQ]  nvarchar(17)  NULL,--身份证件有效期
	[DSZYBZ]  nvarchar(1)  NULL,--独生子女标志
	[RXNY]  nvarchar(6)  NOT NULL,--入学年月
	[NJ]  nvarchar(10)  NOT NULL,--年级
	[BH]  nvarchar(10)  NOT NULL,--班号
	[XSLBM]  nvarchar(5)  NOT NULL,--学生类别码
	[XZZ]  nvarchar(180)  NULL,--现住址
	[HKSZD]  nvarchar(180)  NULL,--户口所在地
	[HKXZM]  nvarchar(1)  NULL,--户口性质码
	[SFLDRK]  nvarchar(1)  NOT NULL,--是否流动人口
	[TC]  text  NULL,--特长
	[LXDH]  nvarchar(30)  NULL,--联系电话
	[TXDZ]  nvarchar(180)  NULL,--通信地址
	[YZBM]  nvarchar(6)  NULL,--邮政编码
	[DZXX]  nvarchar(40)  NULL,--电子信箱
	[ZYDZ]  nvarchar(60)  NULL,--主页地址
	[XJH]  nvarchar(30)  NULL,--学籍号
CONSTRAINT [PK_EDU_ZXXS_01_01_XSXX] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--学生家庭成员数据表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXXS_01_06_XSJTCY]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXXS_01_06_XSJTCY](
	[ID]  int  identity,--编号
	[SCHOOLID]  int  NOT NULL,--学校名
	[XSXXID]  int  NOT NULL,--学生信息数据表
	[GXM]  nvarchar(2)  NOT NULL,--关系码
	[CYXM]  nvarchar(36)  NOT NULL,--成员姓名
	[CSNY]  nvarchar(6)  NULL,--出生年月
	[MZM]  nvarchar(2)  NULL,--民族码
	[GJDQM]  nvarchar(3)  NULL,--国籍/地区码
	[JKZKM]  nvarchar(1)  NULL,--健康状况码
	[CYGZDW]  nvarchar(60)  NULL,--成员工作单位
	[CYM]  nvarchar(2)  NULL,--从业码
	[ZYJSZWM]  nvarchar(3)  NULL,--专业技术职务码
	[ZWJBM]  nvarchar(3)  NULL,--职务级别码
	[DH]  nvarchar(30)  NULL,--电话
	[DZXX]  nvarchar(40)  NULL,--电子信箱
	[SFJHR]  nvarchar(1)  NOT NULL,--是否监护人
	[XBM]  nvarchar(1)  NULL,--性别码
	[XLM]  nvarchar(2)  NOT NULL,--学历码
	[LXDZ]  nvarchar(180)  NULL,--联系地址
	[SJHM]  nvarchar(30)  NULL,--手机号码
CONSTRAINT [PK_EDU_ZXXS_01_06_XSJTCY] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--学生家庭信息数据表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXXS_02_A01_XSJTXX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXXS_02_A01_XSJTXX](
	[XSXXID]  int  NOT NULL,--学生信息数据表
	[SCHOOLID]  int  NOT NULL,--学校名
	[JTZZ]  nvarchar(180)  NOT NULL,--家庭住址
	[JTYZBM]  nvarchar(6)  NOT NULL,--家庭邮政编码
	[JTDH]  nvarchar(30)  NULL,--家庭电话
	[JTLXR]  nvarchar(36)  NOT NULL,--家庭联系人
	[JTDZXX]  nvarchar(40)  NULL,--家庭电子信箱
	[JTRK]  int  NULL,--家庭人口
	[JTZYSRLY]  nvarchar(180)  NULL,--家庭主要收入来源
	[JTYSRJE]  money  NULL,--家庭月收入金额
	[JTNSRJE]  money  NULL,--家庭年收入金额
	[LJZJHCZ]  nvarchar(30)  NULL,--离家最近火车站
CONSTRAINT [PK_EDU_ZXXS_02_A01_XSJTXX] PRIMARY KEY CLUSTERED
(
	[XSXXID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--在校考试成绩数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXXS_02_06_ZXKSCJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXXS_02_06_ZXKSCJ](
	[ID]  int  NOT NULL,--考试成绩表
	[SCHOOLID]  int  NOT NULL,--学校名
	[XSXXID]  int  NOT NULL,--学生ID
	[XN]  nvarchar(9)  NOT NULL,--学年（度）
	[XQM]  nvarchar(1)  NOT NULL,--学期码
	[KSRQ]  nvarchar(8)  NOT NULL,--考试日期
	[KCH]  nvarchar(10)  NOT NULL,--课程号
	[RKJSID]  int  NOT NULL,--任课教师ID
	[CJLRRID]  int  NOT NULL,--成绩录入人ID
	[KSFSM]  nvarchar(1)  NULL,--考试方式码
	[KSXZM]  nvarchar(2)  NULL,--考试性质码
	[KSXSM]  nvarchar(1)  NULL,--考试形式码
	[FSLKSCJ]  decimal(5, 1)  NULL,--分数类考试成绩
	[DJLKSCJ]  nvarchar(1)  NULL,--等级类考试成绩
	[KCCJ]  decimal(5, 1)  NULL,--课程成绩
	[KCDJCJM]  nvarchar(1)  NULL,--课程等级成绩码
	[RKJSGH]  nvarchar(20)  NULL,--任课教师工号
	[CJLRRH]  nvarchar(20)  NULL,--成绩录入人号
	[CJLRRQ]  nvarchar(8)  NULL,--成绩录入日期
	[CJLRSJ]  nvarchar(6)  NULL,--成绩录入时间
	[XQID]  int  NOT NULL,--学期
	[XNID]  int  NOT NULL,--学年
	[NJID]  nvarchar(10)  NOT NULL,--年级
	[BJID]  nvarchar(10)  NOT NULL,--班级
	[SSKSID]  int  NOT NULL,--所属考试ID
	[SSKSKMID]  int  NOT NULL,--所属考试科目ID
	[SJID]  int  NOT NULL,--试卷ID
CONSTRAINT [PK_EDU_ZXXS_02_06_ZXKSCJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--学籍异动数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXXS_07_A02_XJYD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXXS_07_A02_XJYD](
	[ID]  int  NOT NULL,--学籍异动表编号
	[XSXXID]  int  NOT NULL,--学生ID
	[SCHOOLID]  int  NOT NULL,--学校ID
	[YDLBM]  nvarchar(2)  NOT NULL,--异动类别码
	[YDRQ]  nvarchar(8)  NOT NULL,--异动日期
	[YDYYM]  nvarchar(2)  NOT NULL,--异动原因码
	[SPRQ]  nvarchar(8)  NULL,--审批日期
	[SPWH]  nvarchar(24)  NULL,--审批文号
	[JBRID]  int  NULL,--经办人ID
	[JBRGH]  nvarchar(20)  NULL,--经办人工号
	[YDLYXXM]  nvarchar(10)  NULL,--异动来源学校码
	[YDQXXXM]  nvarchar(10)  NULL,--异动去向学校码
	[YDSM]  text  NULL,--异动说明
	[YBH]  nvarchar(10)  NOT NULL,--原班号
	[YNJ]  nvarchar(10)  NOT NULL,--原年级
	[XBH]  nvarchar(10)  NOT NULL,--现班号
	[XNJ]  nvarchar(10)  NOT NULL,--现年级
CONSTRAINT [PK_EDU_ZXXS_07_A02_XJYD] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--以下为添加注释语句
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生基本数据子类表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_01_XSXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'XH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'XM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'英文姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'YWXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'姓名拼音' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'XMPY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'曾用名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'CYM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'性别码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'XBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'出生日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'CSRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'出生地码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'CSDM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'籍贯' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'JG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'民族码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'MZM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'国籍/地区码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'GJDQM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'身份证件类型码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'SFZJLXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'身份证件号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'SFZJH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'婚姻状况码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'HYZKM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'港澳台侨外码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'GATQWM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'政治面貌码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'ZZMMM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'健康状况码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'JKZKM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'信仰宗教码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'XYZJM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'血型码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'XXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'照片' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'ZP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'身份证件有效期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'SFZJYXQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'独生子女标志' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'DSZYBZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'入学年月' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'RXNY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'年级' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'NJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'班号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'BH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生类别码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'XSLBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'现住址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'XZZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'户口所在地' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'HKSZD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'户口性质码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'HKXZM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否流动人口' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'SFLDRK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'特长' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'TC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'LXDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'通信地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'TXDZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'邮政编码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'YZBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电子信箱' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'DZXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主页地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'ZYDZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学籍号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'XJH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生家庭成员数据表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_06_XSJTCY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_06_XSJTCY', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_06_XSJTCY', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生信息数据表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_06_XSJTCY', @level2type=N'COLUMN',@level2name=N'XSXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'关系码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_06_XSJTCY', @level2type=N'COLUMN',@level2name=N'GXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'成员姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_06_XSJTCY', @level2type=N'COLUMN',@level2name=N'CYXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'出生年月' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_06_XSJTCY', @level2type=N'COLUMN',@level2name=N'CSNY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'民族码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_06_XSJTCY', @level2type=N'COLUMN',@level2name=N'MZM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'国籍/地区码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_06_XSJTCY', @level2type=N'COLUMN',@level2name=N'GJDQM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'健康状况码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_06_XSJTCY', @level2type=N'COLUMN',@level2name=N'JKZKM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'成员工作单位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_06_XSJTCY', @level2type=N'COLUMN',@level2name=N'CYGZDW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'从业码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_06_XSJTCY', @level2type=N'COLUMN',@level2name=N'CYM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'专业技术职务码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_06_XSJTCY', @level2type=N'COLUMN',@level2name=N'ZYJSZWM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'职务级别码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_06_XSJTCY', @level2type=N'COLUMN',@level2name=N'ZWJBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_06_XSJTCY', @level2type=N'COLUMN',@level2name=N'DH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电子信箱' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_06_XSJTCY', @level2type=N'COLUMN',@level2name=N'DZXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否监护人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_06_XSJTCY', @level2type=N'COLUMN',@level2name=N'SFJHR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'性别码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_06_XSJTCY', @level2type=N'COLUMN',@level2name=N'XBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学历码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_06_XSJTCY', @level2type=N'COLUMN',@level2name=N'XLM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_06_XSJTCY', @level2type=N'COLUMN',@level2name=N'LXDZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'手机号码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_06_XSJTCY', @level2type=N'COLUMN',@level2name=N'SJHM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生家庭信息数据表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_02_A01_XSJTXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生信息数据表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_02_A01_XSJTXX', @level2type=N'COLUMN',@level2name=N'XSXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_02_A01_XSJTXX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'家庭住址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_02_A01_XSJTXX', @level2type=N'COLUMN',@level2name=N'JTZZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'家庭邮政编码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_02_A01_XSJTXX', @level2type=N'COLUMN',@level2name=N'JTYZBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'家庭电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_02_A01_XSJTXX', @level2type=N'COLUMN',@level2name=N'JTDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'家庭联系人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_02_A01_XSJTXX', @level2type=N'COLUMN',@level2name=N'JTLXR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'家庭电子信箱' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_02_A01_XSJTXX', @level2type=N'COLUMN',@level2name=N'JTDZXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'家庭人口' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_02_A01_XSJTXX', @level2type=N'COLUMN',@level2name=N'JTRK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'家庭主要收入来源' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_02_A01_XSJTXX', @level2type=N'COLUMN',@level2name=N'JTZYSRLY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'家庭月收入金额' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_02_A01_XSJTXX', @level2type=N'COLUMN',@level2name=N'JTYSRJE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'家庭年收入金额' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_02_A01_XSJTXX', @level2type=N'COLUMN',@level2name=N'JTNSRJE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'离家最近火车站' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_02_A01_XSJTXX', @level2type=N'COLUMN',@level2name=N'LJZJHCZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'在校考试成绩数据子类表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_02_06_ZXKSCJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'考试成绩表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_02_06_ZXKSCJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_02_06_ZXKSCJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_02_06_ZXKSCJ', @level2type=N'COLUMN',@level2name=N'XSXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学年（度）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_02_06_ZXKSCJ', @level2type=N'COLUMN',@level2name=N'XN'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学期码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_02_06_ZXKSCJ', @level2type=N'COLUMN',@level2name=N'XQM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'考试日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_02_06_ZXKSCJ', @level2type=N'COLUMN',@level2name=N'KSRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_02_06_ZXKSCJ', @level2type=N'COLUMN',@level2name=N'KCH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'任课教师ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_02_06_ZXKSCJ', @level2type=N'COLUMN',@level2name=N'RKJSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'成绩录入人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_02_06_ZXKSCJ', @level2type=N'COLUMN',@level2name=N'CJLRRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'考试方式码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_02_06_ZXKSCJ', @level2type=N'COLUMN',@level2name=N'KSFSM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'考试性质码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_02_06_ZXKSCJ', @level2type=N'COLUMN',@level2name=N'KSXZM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'考试形式码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_02_06_ZXKSCJ', @level2type=N'COLUMN',@level2name=N'KSXSM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分数类考试成绩' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_02_06_ZXKSCJ', @level2type=N'COLUMN',@level2name=N'FSLKSCJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'等级类考试成绩' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_02_06_ZXKSCJ', @level2type=N'COLUMN',@level2name=N'DJLKSCJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程成绩' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_02_06_ZXKSCJ', @level2type=N'COLUMN',@level2name=N'KCCJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程等级成绩码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_02_06_ZXKSCJ', @level2type=N'COLUMN',@level2name=N'KCDJCJM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'任课教师工号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_02_06_ZXKSCJ', @level2type=N'COLUMN',@level2name=N'RKJSGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'成绩录入人号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_02_06_ZXKSCJ', @level2type=N'COLUMN',@level2name=N'CJLRRH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'成绩录入日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_02_06_ZXKSCJ', @level2type=N'COLUMN',@level2name=N'CJLRRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'成绩录入时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_02_06_ZXKSCJ', @level2type=N'COLUMN',@level2name=N'CJLRSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_02_06_ZXKSCJ', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学年' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_02_06_ZXKSCJ', @level2type=N'COLUMN',@level2name=N'XNID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'年级' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_02_06_ZXKSCJ', @level2type=N'COLUMN',@level2name=N'NJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'班级' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_02_06_ZXKSCJ', @level2type=N'COLUMN',@level2name=N'BJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属考试ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_02_06_ZXKSCJ', @level2type=N'COLUMN',@level2name=N'SSKSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属考试科目ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_02_06_ZXKSCJ', @level2type=N'COLUMN',@level2name=N'SSKSKMID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试卷ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_02_06_ZXKSCJ', @level2type=N'COLUMN',@level2name=N'SJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学籍异动数据子类表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_07_A02_XJYD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学籍异动表编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_07_A02_XJYD', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_07_A02_XJYD', @level2type=N'COLUMN',@level2name=N'XSXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_07_A02_XJYD', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'异动类别码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_07_A02_XJYD', @level2type=N'COLUMN',@level2name=N'YDLBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'异动日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_07_A02_XJYD', @level2type=N'COLUMN',@level2name=N'YDRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'异动原因码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_07_A02_XJYD', @level2type=N'COLUMN',@level2name=N'YDYYM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审批日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_07_A02_XJYD', @level2type=N'COLUMN',@level2name=N'SPRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审批文号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_07_A02_XJYD', @level2type=N'COLUMN',@level2name=N'SPWH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'经办人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_07_A02_XJYD', @level2type=N'COLUMN',@level2name=N'JBRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'经办人工号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_07_A02_XJYD', @level2type=N'COLUMN',@level2name=N'JBRGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'异动来源学校码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_07_A02_XJYD', @level2type=N'COLUMN',@level2name=N'YDLYXXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'异动去向学校码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_07_A02_XJYD', @level2type=N'COLUMN',@level2name=N'YDQXXXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'异动说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_07_A02_XJYD', @level2type=N'COLUMN',@level2name=N'YDSM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'原班号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_07_A02_XJYD', @level2type=N'COLUMN',@level2name=N'YBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'原年级' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_07_A02_XJYD', @level2type=N'COLUMN',@level2name=N'YNJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'现班号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_07_A02_XJYD', @level2type=N'COLUMN',@level2name=N'XBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'现年级' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_07_A02_XJYD', @level2type=N'COLUMN',@level2name=N'XNJ'
GO
--空间名：EDU_ZXXX  生成器：SqlBuilder0.1

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXXX_01_01_ZXXX')
            and   type = 'U')
   drop table EDU_ZXXX_01_01_ZXXX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXXX_02_01_NJ')
            and   type = 'U')
   drop table EDU_ZXXX_02_01_NJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXXX_03_01_BJ')
            and   type = 'U')
   drop table EDU_ZXXX_03_01_BJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXXX_04_01_JG')
            and   type = 'U')
   drop table EDU_ZXXX_04_01_JG
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXXX_04_A01_JGGW')
            and   type = 'U')
   drop table EDU_ZXXX_04_A01_JGGW
go
--学校基本数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXXX_01_01_ZXXX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXXX_01_01_ZXXX](
	[ID]  int  NOT NULL,--学校ID
	[XXDM]  nvarchar(10)  NOT NULL,--学校代码
	[XXMC]  nvarchar(60)  NOT NULL,--学校名称
	[XXYWMC]  nvarchar(60)  NULL,--学校英文名称
	[XXDZ]  nvarchar(180)  NOT NULL,--学校地址
	[XXYZBM]  nvarchar(6)  NOT NULL,--学校邮政编码
	[XZQHM]  nvarchar(6)  NOT NULL,--行政区划码
	[JXNY]  nvarchar(6)  NOT NULL,--建校年月
	[XQR]  nvarchar(60)  NOT NULL,--校庆日
	[XXBXLXM]  nvarchar(3)  NOT NULL,--学校办学类型码
	[XXZGBMM]  nvarchar(3)  NOT NULL,--学校主管部门码
	[FDDBRH]  nvarchar(20)  NULL,--法定代表人号
	[FRZSH]  nvarchar(20)  NOT NULL,--法人证书号
	[XZGH]  nvarchar(20)  NULL,--校长工号
	[XZXM]  nvarchar(36)  NOT NULL,--校长姓名
	[DWFZRH]  nvarchar(20)  NULL,--党委负责人号
	[ZZJGM]  nvarchar(10)  NULL,--组织机构码
	[LXDH]  nvarchar(30)  NOT NULL,--联系电话
	[CZDH]  nvarchar(30)  NOT NULL,--传真电话
	[DZXX]  nvarchar(40)  NOT NULL,--电子信箱
	[ZYDZ]  nvarchar(60)  NOT NULL,--主页地址
	[LSYG]  text  NOT NULL,--历史沿革
	[XXBBM]  nvarchar(2)  NOT NULL,--学校办别码
	[SSZGDWM]  nvarchar(3)  NOT NULL,--所属主管单位码
	[SZDCXLXM]  nvarchar(3)  NOT NULL,--所在地城乡类型码
	[SZDJJSXM]  nvarchar(1)  NOT NULL,--所在地经济属性码
	[SZDMZSX]  nvarchar(1)  NOT NULL,--所在地民族属性
	[XXXZ]  decimal(3, 1)  NOT NULL,--小学学制
	[XXRXNL]  decimal(1, 0)  NOT NULL,--小学入学年龄
	[CZXZ]  decimal(3, 1)  NOT NULL,--初中学制
	[CZRXNL]  decimal(2, 0)  NOT NULL,--初中入学年龄
	[GZXZ]  decimal(3, 1)  NOT NULL,--高中学制
	[ZJXYYM]  nvarchar(3)  NOT NULL,--主教学语言码
	[FJXYYM]  nvarchar(3)  NOT NULL,--辅教学语言码
	[ZSBJ]  nvarchar(30)  NULL,--招生半径
CONSTRAINT [PK_EDU_ZXXX_01_01_ZXXX] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--年级数据类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXXX_02_01_NJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXXX_02_01_NJ](
	[SCHOOLID]  int  NOT NULL,--学校名
	[NJ]  nvarchar(10)  NOT NULL,--年级号
	[NJMC]  nvarchar(30)  NOT NULL,--年级名称
CONSTRAINT [PK_EDU_ZXXX_02_01_NJ] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[NJ] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--班级数据类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXXX_03_01_BJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXXX_03_01_BJ](
	[SCHOOLID]  int  NOT NULL,--学校名
	[BH]  nvarchar(10)  NOT NULL,--班号
	[NJ]  nvarchar(10)  NOT NULL,--年级号
	[BJ]  nvarchar(20)  NULL,--班级名称
	[JBNY]  nvarchar(6)  NULL,--建班年月
	[BZRGH]  nvarchar(20)  NULL,--班主任工号
	[BZXH]  nvarchar(20)  NULL,--班长学号
	[BJRYCH]  nvarchar(40)  NULL,--班级荣誉称号
	[XZ]  decimal(3, 1)  NULL,--学制
	[BJLXM]  nvarchar(2)  NULL,--班级类型码
	[WLLX]  nvarchar(2)  NULL,--文理类型
	[BYRQ]  nvarchar(8)  NULL,--毕业日期
	[SFSSMZSYJXB]  nvarchar(1)  NOT NULL,--是否少数民族双语教学班
	[SYJXMSM]  nvarchar(1)  NOT NULL,--双语教学模式码
	[BZRID]  int  NOT NULL,--班主任ID
CONSTRAINT [PK_EDU_ZXXX_03_01_BJ] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[BH] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--机构数据类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXXX_04_01_JG]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXXX_04_01_JG](
	[SCHOOLID]  int  NOT NULL,--学校名
	[JGH]  nvarchar(10)  NOT NULL,--机构号
	[LSJGH]  nvarchar(10)  NOT NULL,--隶属机构号
	[JGMC]  nvarchar(60)  NOT NULL,--机构名称
	[JGJC]  nvarchar(10)  NOT NULL,--机构简称
	[FZRGH]  nvarchar(20)  NULL,--负责人工号
CONSTRAINT [PK_EDU_ZXXX_04_01_JG] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[JGH] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--机构岗位表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXXX_04_A01_JGGW]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXXX_04_A01_JGGW](
	[ID]  int  NOT NULL,--岗位表ID
	[SCHOOLID]  int  NOT NULL,--学校ID
	[JGH]  nvarchar(10)  NOT NULL,--机构号
	[GWBH]  nvarchar(50)  NOT NULL,--岗位编号
	[GWMC]  nvarchar(50)  NULL,--岗位名称
	[GWSM]  text  NOT NULL,--岗位说明
CONSTRAINT [PK_EDU_ZXXX_04_A01_JGGW] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--以下为添加注释语句
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校基本数据子类表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校代码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'XXDM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'XXMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校英文名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'XXYWMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'XXDZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校邮政编码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'XXYZBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'行政区划码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'XZQHM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建校年月' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'JXNY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'校庆日' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'XQR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校办学类型码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'XXBXLXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校主管部门码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'XXZGBMM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'法定代表人号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'FDDBRH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'法人证书号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'FRZSH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'校长工号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'XZGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'校长姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'XZXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'党委负责人号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'DWFZRH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'组织机构码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'ZZJGM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'LXDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'传真电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'CZDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电子信箱' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'DZXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主页地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'ZYDZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'历史沿革' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'LSYG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校办别码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'XXBBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属主管单位码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'SSZGDWM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所在地城乡类型码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'SZDCXLXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所在地经济属性码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'SZDJJSXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所在地民族属性' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'SZDMZSX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'小学学制' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'XXXZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'小学入学年龄' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'XXRXNL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'初中学制' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'CZXZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'初中入学年龄' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'CZRXNL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'高中学制' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'GZXZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主教学语言码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'ZJXYYM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'辅教学语言码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'FJXYYM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'招生半径' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'ZSBJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'年级数据类表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_02_01_NJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_02_01_NJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'年级号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_02_01_NJ', @level2type=N'COLUMN',@level2name=N'NJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'年级名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_02_01_NJ', @level2type=N'COLUMN',@level2name=N'NJMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'班级数据类表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_03_01_BJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_03_01_BJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'班号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_03_01_BJ', @level2type=N'COLUMN',@level2name=N'BH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'年级号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_03_01_BJ', @level2type=N'COLUMN',@level2name=N'NJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'班级名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_03_01_BJ', @level2type=N'COLUMN',@level2name=N'BJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建班年月' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_03_01_BJ', @level2type=N'COLUMN',@level2name=N'JBNY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'班主任工号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_03_01_BJ', @level2type=N'COLUMN',@level2name=N'BZRGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'班长学号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_03_01_BJ', @level2type=N'COLUMN',@level2name=N'BZXH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'班级荣誉称号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_03_01_BJ', @level2type=N'COLUMN',@level2name=N'BJRYCH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学制' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_03_01_BJ', @level2type=N'COLUMN',@level2name=N'XZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'班级类型码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_03_01_BJ', @level2type=N'COLUMN',@level2name=N'BJLXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文理类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_03_01_BJ', @level2type=N'COLUMN',@level2name=N'WLLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'毕业日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_03_01_BJ', @level2type=N'COLUMN',@level2name=N'BYRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否少数民族双语教学班' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_03_01_BJ', @level2type=N'COLUMN',@level2name=N'SFSSMZSYJXB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'双语教学模式码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_03_01_BJ', @level2type=N'COLUMN',@level2name=N'SYJXMSM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'班主任ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_03_01_BJ', @level2type=N'COLUMN',@level2name=N'BZRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'机构数据类表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_04_01_JG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_04_01_JG', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'机构号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_04_01_JG', @level2type=N'COLUMN',@level2name=N'JGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'隶属机构号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_04_01_JG', @level2type=N'COLUMN',@level2name=N'LSJGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'机构名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_04_01_JG', @level2type=N'COLUMN',@level2name=N'JGMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'机构简称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_04_01_JG', @level2type=N'COLUMN',@level2name=N'JGJC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'负责人工号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_04_01_JG', @level2type=N'COLUMN',@level2name=N'FZRGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'机构岗位表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_04_A01_JGGW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'岗位表ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_04_A01_JGGW', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_04_A01_JGGW', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'机构号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_04_A01_JGGW', @level2type=N'COLUMN',@level2name=N'JGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'岗位编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_04_A01_JGGW', @level2type=N'COLUMN',@level2name=N'GWBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'岗位名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_04_A01_JGGW', @level2type=N'COLUMN',@level2name=N'GWMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'岗位说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_04_A01_JGGW', @level2type=N'COLUMN',@level2name=N'GWSM'
GO
--空间名：EDU_ZYZX  生成器：SqlBuilder0.1

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZYZX_VIP')
            and   type = 'U')
   drop table EDU_ZYZX_VIP
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZYZX_TPXT_TPYS')
            and   type = 'U')
   drop table EDU_ZYZX_TPXT_TPYS
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZYZX_TPXT_TPXX')
            and   type = 'U')
   drop table EDU_ZYZX_TPXT_TPXX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZYZX_TPXT_TPTM')
            and   type = 'U')
   drop table EDU_ZYZX_TPXT_TPTM
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZYZX_TPXT_TPSZ')
            and   type = 'U')
   drop table EDU_ZYZX_TPXT_TPSZ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZYZX_TPXT_TPJL')
            and   type = 'U')
   drop table EDU_ZYZX_TPXT_TPJL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZYZX_MHXT_YQLJLX')
            and   type = 'U')
   drop table EDU_ZYZX_MHXT_YQLJLX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZYZX_MHXT_YQLJ')
            and   type = 'U')
   drop table EDU_ZYZX_MHXT_YQLJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZYZX_MHXT_WZYS')
            and   type = 'U')
   drop table EDU_ZYZX_MHXT_WZYS
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZYZX_MHXT_WZWZ')
            and   type = 'U')
   drop table EDU_ZYZX_MHXT_WZWZ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZYZX_MHXT_WZPJ')
            and   type = 'U')
   drop table EDU_ZYZX_MHXT_WZPJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZYZX_MHXT_WZPZ')
            and   type = 'U')
   drop table EDU_ZYZX_MHXT_WZPZ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZYZX_MHXT_NWIP')
            and   type = 'U')
   drop table EDU_ZYZX_MHXT_NWIP
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZYZX_MHXT_WZLM')
            and   type = 'U')
   drop table EDU_ZYZX_MHXT_WZLM
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZYZX_MHXT_WZGG')
            and   type = 'U')
   drop table EDU_ZYZX_MHXT_WZGG
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZYZX_MHXT_FWLL')
            and   type = 'U')
   drop table EDU_ZYZX_MHXT_FWLL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZYZX_MHXT_FBQX')
            and   type = 'U')
   drop table EDU_ZYZX_MHXT_FBQX
go
--网站会员
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZYZX_VIP]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZYZX_VIP](
	[SCHOOLID]  int  NOT NULL,--学校名
	[WEBID]  int  NOT NULL,--网站ID
	[LOGINNAME]  nvarchar(50)  NOT NULL,--用户名
	[LOGINPWD]  nvarchar(64)  NOT NULL,--密码
	[REALNAME]  nvarchar(50)  NOT NULL,--姓名
	[EMAIL]  nvarchar(50)  NOT NULL,--电子邮箱
	[MOBILE]  nvarchar(20)  NOT NULL,--联系电话
	[QQ]  nvarchar(20)  NULL,--QQ号码
	[AUDITSTATU]  int  NOT NULL,--审核状态
	[AUDITOR]  nvarchar(50)  NULL,--审核人ID
	[AUDITORNAME]  nvarchar(50)  NULL,--审核人
CONSTRAINT [PK_EDU_ZYZX_VIP] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[WEBID] ASC,
	[LOGINNAME] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--投票样式库
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZYZX_TPXT_TPYS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZYZX_TPXT_TPYS](
	[ID]  int  NOT NULL,--样式ID
	[SCHOOLID]  int  NOT NULL,--学校名
	[WEBID]  int  NOT NULL,--网站ID
	[NAME]  nvarchar(50)  NOT NULL,--样式名
	[SHOWIMG]  nvarchar(500)  NULL,--效果图
CONSTRAINT [PK_EDU_ZYZX_TPXT_TPYS] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC,
	[WEBID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--投票题目选项
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZYZX_TPXT_TPXX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZYZX_TPXT_TPXX](
	[ID]  int  NOT NULL,--投票题目选项ID
	[SCHOOLID]  int  NOT NULL,--学校名
	[WEBID]  int  NOT NULL,--网站ID
	[TPID]  int  NOT NULL,--投票
	[TMID]  int  NOT NULL,--投票题目
	[TITLE]  nvarchar(500)  NULL,--标题
	[SUMTP]  int  NOT NULL,--已选人数
CONSTRAINT [PK_EDU_ZYZX_TPXT_TPXX] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC,
	[WEBID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--投票题目
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZYZX_TPXT_TPTM]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZYZX_TPXT_TPTM](
	[ID]  int  NOT NULL,--投票题目ID
	[SCHOOLID]  int  NOT NULL,--学校名
	[WEBID]  int  NOT NULL,--网站ID
	[TPID]  int  NOT NULL,--投票
	[TYPEID]  int  NOT NULL,--投票形式
	[TITLE]  nvarchar(500)  NULL,--标题
	[CONTENT]  text  NULL,--内容
CONSTRAINT [PK_EDU_ZYZX_TPXT_TPTM] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC,
	[WEBID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--投票设置
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZYZX_TPXT_TPSZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZYZX_TPXT_TPSZ](
	[ID]  int  NOT NULL,--投票设置ID
	[SCHOOLID]  int  NOT NULL,--学校名
	[WEBID]  int  NOT NULL,--网站ID
	[TITLE]  nvarchar(500)  NULL,--标题
	[CONTENT]  text  NULL,--内容
	[SHOWSTYLEID]  int  NULL,--显示方式
	[CSSID]  int  NOT NULL,--显示样式
	[LOGINNAMELIST]  text  NULL,--投票人
	[STARTSTATU]  int  NOT NULL,--是否开启
CONSTRAINT [PK_EDU_ZYZX_TPXT_TPSZ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC,
	[WEBID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--投票记录
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZYZX_TPXT_TPJL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZYZX_TPXT_TPJL](
	[ID]  int  NOT NULL,--投票记录ID
	[SCHOOLID]  int  NOT NULL,--学校名
	[WEBID]  int  NOT NULL,--网站ID
	[TPID]  int  NOT NULL,--投票
	[TPIP]  nvarchar(128)  NOT NULL,--投票人
	[TPTIME]  datetime  NOT NULL,--投票时间
CONSTRAINT [PK_EDU_ZYZX_TPXT_TPJL] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC,
	[WEBID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--友情链接类型
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZYZX_MHXT_YQLJLX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZYZX_MHXT_YQLJLX](
	[ID]  int  NOT NULL,--友情链接类型ID
	[SCHOOLID]  int  NOT NULL,--学校名
	[WEBID]  int  NOT NULL,--网站ID
	[NAME]  nvarchar(50)  NOT NULL,--类型名
	[SHOWSTYLE]  int  NOT NULL,--显示方式
CONSTRAINT [PK_EDU_ZYZX_MHXT_YQLJLX] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC,
	[WEBID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--友情链接
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZYZX_MHXT_YQLJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZYZX_MHXT_YQLJ](
	[ID]  int  NOT NULL,--友情链接ID
	[SCHOOLID]  int  NOT NULL,--学校名
	[WEBID]  int  NOT NULL,--网站ID
	[TITLE]  nvarchar(50)  NOT NULL,--标题
	[TYPEID]  int  NOT NULL,--类型
	[IMAGEURL]  nvarchar(500)  NULL,--图片
	[URL]  nvarchar(300)  NOT NULL,--链接
CONSTRAINT [PK_EDU_ZYZX_MHXT_YQLJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC,
	[WEBID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--样式库
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZYZX_MHXT_WZYS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZYZX_MHXT_WZYS](
	[ID]  int  NOT NULL,--样式库ID
	[SCHOOLID]  int  NOT NULL,--学校名
	[WEBID]  int  NOT NULL,--网站ID
	[NAME]  nvarchar(50)  NOT NULL,--样式名
	[SHOWIMG]  nvarchar(500)  NULL,--效果图
CONSTRAINT [PK_EDU_ZYZX_MHXT_WZYS] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC,
	[WEBID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--网站文章
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZYZX_MHXT_WZWZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZYZX_MHXT_WZWZ](
	[ID]  int  NOT NULL,--网站文章ID
	[SCHOOLID]  int  NOT NULL,--学校名
	[WEBID]  int  NOT NULL,--网站ID
	[TYPENAME]  nvarchar(20)  NULL,--类型名称
	[LMID]  int  NOT NULL,--栏目
	[TITLE]  nvarchar(100)  NOT NULL,--标题
	[PUBLISHERNAME]  nvarchar(50)  NOT NULL,--发布人
	[AUTHOR]  nvarchar(50)  NOT NULL,--作者
	[AUTHORDEPART]  nvarchar(50)  NULL,--作者部门
	[PUBLISHDATE]  datetime  NOT NULL,--发布时间
	[CONTENT]  text  NULL,--内容
	[URL]  nvarchar(300)  NULL,--链接
	[IMAGEURL]  nvarchar(300)  NULL,--图片
	[ATTACHMENTNAME]  nvarchar(100)  NULL,--附件名
	[ATTACHMENT]  nvarchar(300)  NULL,--附件
	[CHICKNUB]  int  NULL,--点击量
	[AUDITSTATU]  int  NOT NULL,--审核状态
	[AUDITOR]  nvarchar(50)  NULL,--审核人ID
	[AUDITORNAME]  nvarchar(50)  NULL,--审核人
	[AUDITTIME]  datetime  NOT NULL,--审核时间
	[REMARK]  nvarchar(300)  NULL,--备注
	[SUMMARY]  text  NULL,--摘要
	[DISPLAYTYPE]  int  NOT NULL,--内外网
	[OPENFLAG]  int  NOT NULL,--开启状态
	[LLQX]  nvarchar(50)  NULL,--浏览权限
CONSTRAINT [PK_EDU_ZYZX_MHXT_WZWZ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC,
	[WEBID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--文章评价表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZYZX_MHXT_WZPJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZYZX_MHXT_WZPJ](
	[ID]  int  NOT NULL,--评价ID
	[SCHOOLID]  int  NOT NULL,--学校ID
	[WEBID]  int  NOT NULL,--网站ID
	[WZID]  int  NOT NULL,--网站文章ID
	[PJR]  nvarchar(50)  NOT NULL,--评价人
	[YJDZ]  nvarchar(40)  NOT NULL,--邮件地址
	[PJSJ]  datetime  NOT NULL,--评价时间
	[PJNR]  text  NOT NULL,--评价内容
	[PJZT]  int  NOT NULL,--评价状态
	[SHR]  nvarchar(50)  NULL,--审核人
	[HF]  text  NOT NULL,--回复
CONSTRAINT [PK_EDU_ZYZX_MHXT_WZPJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--网站配置
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZYZX_MHXT_WZPZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZYZX_MHXT_WZPZ](
	[WEBID]  int  NOT NULL,--网站ID
	[SCHOOLID]  int  NOT NULL,--学校名
	[WEBNAME]  nvarchar(500)  NOT NULL,--网站名
	[STATUID]  int  NOT NULL,--是否开启
	[WEBURL]  nvarchar(500)  NOT NULL,--网址
	[CSSID]  int  NOT NULL,--网站样式
CONSTRAINT [PK_EDU_ZYZX_MHXT_WZPZ] PRIMARY KEY CLUSTERED
(
	[WEBID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--内网IP配置
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZYZX_MHXT_NWIP]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZYZX_MHXT_NWIP](
	[ID]  int  NOT NULL,--内网IP配置ID
	[WEBID]  int  NOT NULL,--网站ID
	[SCHOOLID]  int  NOT NULL,--学校名
	[IP]  nvarchar(40)  NOT NULL,--IP地址
CONSTRAINT [PK_EDU_ZYZX_MHXT_NWIP] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[WEBID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--网站栏目（导航）
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZYZX_MHXT_WZLM]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZYZX_MHXT_WZLM](
	[ID]  int  NOT NULL,--网站栏目（导航）ID
	[SCHOOLID]  int  NOT NULL,--学校名
	[WEBID]  int  NOT NULL,--网站ID
	[LMSHOWSTYLE]  int  NOT NULL,--栏目使用类型
	[NAME]  nvarchar(50)  NOT NULL,--栏目名称
	[URL]  nvarchar(300)  NULL,--栏目链接
	[IMAGEURL]  nvarchar(300)  NULL,--图片链接
	[DEPTH]  int  NOT NULL,--层级
	[PID]  int  NOT NULL,--父目录
	[LISTSHOWSTYLE]  int  NULL,--列表显示型式
	[ORDERTYPE]  int  NOT NULL,--排序方式
	[SHOWNUMBER]  int  NOT NULL,--显示个数
	[OPENFLAG]  int  NOT NULL,--开启状态
	[LLQX]  nvarchar(50)  NULL,--浏览权限
CONSTRAINT [PK_EDU_ZYZX_MHXT_WZLM] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC,
	[WEBID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--网站广告
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZYZX_MHXT_WZGG]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZYZX_MHXT_WZGG](
	[ID]  int  NOT NULL,--网站广告ID
	[SCHOOLID]  int  NOT NULL,--学校名
	[WEBID]  int  NOT NULL,--网站ID
	[SHOWTYPE]  int  NOT NULL,--显示型式
	[ADCONTENT]  text  NULL,--广告内容
	[GGLJ]  nvarchar(150)  NULL,--广告链接
	[SHOWSTATU]  int  NOT NULL,--是否显示
CONSTRAINT [PK_EDU_ZYZX_MHXT_WZGG] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC,
	[WEBID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--访问履历
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZYZX_MHXT_FWLL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZYZX_MHXT_FWLL](
	[ID]  int  NOT NULL,--访问履历ID
	[SCHOOLID]  int  NOT NULL,--学校名
	[WEBID]  int  NOT NULL,--网站ID
	[ACCESSIP]  nvarchar(150)  NOT NULL,--访问IP
	[ACCESSURL]  nvarchar(500)  NOT NULL,--访问链接
	[ACCESSTIME]  datetime  NOT NULL,--访问时间
CONSTRAINT [PK_EDU_ZYZX_MHXT_FWLL] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC,
	[WEBID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--发布权限
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZYZX_MHXT_FBQX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZYZX_MHXT_FBQX](
	[ID]  int  NOT NULL,--发布权限ID
	[SCHOOLID]  int  NOT NULL,--学校名
	[WEBID]  int  NOT NULL,--网站ID
	[LOGINNAME]  nvarchar(50)  NOT NULL,--用户名
	[LMLIST]  text  NOT NULL,--栏目
	[LMNAMELIST]  text  NULL,--栏目文字
CONSTRAINT [PK_EDU_ZYZX_MHXT_FBQX] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC,
	[WEBID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--以下为添加注释语句
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'网站会员' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_VIP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_VIP', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'网站ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_VIP', @level2type=N'COLUMN',@level2name=N'WEBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_VIP', @level2type=N'COLUMN',@level2name=N'LOGINNAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'密码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_VIP', @level2type=N'COLUMN',@level2name=N'LOGINPWD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_VIP', @level2type=N'COLUMN',@level2name=N'REALNAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电子邮箱' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_VIP', @level2type=N'COLUMN',@level2name=N'EMAIL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_VIP', @level2type=N'COLUMN',@level2name=N'MOBILE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'QQ号码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_VIP', @level2type=N'COLUMN',@level2name=N'QQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_VIP', @level2type=N'COLUMN',@level2name=N'AUDITSTATU'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_VIP', @level2type=N'COLUMN',@level2name=N'AUDITOR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_VIP', @level2type=N'COLUMN',@level2name=N'AUDITORNAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'投票样式库' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_TPXT_TPYS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'样式ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_TPXT_TPYS', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_TPXT_TPYS', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'网站ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_TPXT_TPYS', @level2type=N'COLUMN',@level2name=N'WEBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'样式名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_TPXT_TPYS', @level2type=N'COLUMN',@level2name=N'NAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'效果图' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_TPXT_TPYS', @level2type=N'COLUMN',@level2name=N'SHOWIMG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'投票题目选项' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_TPXT_TPXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'投票题目选项ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_TPXT_TPXX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_TPXT_TPXX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'网站ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_TPXT_TPXX', @level2type=N'COLUMN',@level2name=N'WEBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'投票' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_TPXT_TPXX', @level2type=N'COLUMN',@level2name=N'TPID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'投票题目' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_TPXT_TPXX', @level2type=N'COLUMN',@level2name=N'TMID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_TPXT_TPXX', @level2type=N'COLUMN',@level2name=N'TITLE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'已选人数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_TPXT_TPXX', @level2type=N'COLUMN',@level2name=N'SUMTP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'投票题目' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_TPXT_TPTM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'投票题目ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_TPXT_TPTM', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_TPXT_TPTM', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'网站ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_TPXT_TPTM', @level2type=N'COLUMN',@level2name=N'WEBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'投票' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_TPXT_TPTM', @level2type=N'COLUMN',@level2name=N'TPID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'投票形式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_TPXT_TPTM', @level2type=N'COLUMN',@level2name=N'TYPEID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_TPXT_TPTM', @level2type=N'COLUMN',@level2name=N'TITLE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_TPXT_TPTM', @level2type=N'COLUMN',@level2name=N'CONTENT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'投票设置' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_TPXT_TPSZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'投票设置ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_TPXT_TPSZ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_TPXT_TPSZ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'网站ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_TPXT_TPSZ', @level2type=N'COLUMN',@level2name=N'WEBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_TPXT_TPSZ', @level2type=N'COLUMN',@level2name=N'TITLE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_TPXT_TPSZ', @level2type=N'COLUMN',@level2name=N'CONTENT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'显示方式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_TPXT_TPSZ', @level2type=N'COLUMN',@level2name=N'SHOWSTYLEID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'显示样式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_TPXT_TPSZ', @level2type=N'COLUMN',@level2name=N'CSSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'投票人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_TPXT_TPSZ', @level2type=N'COLUMN',@level2name=N'LOGINNAMELIST'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否开启' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_TPXT_TPSZ', @level2type=N'COLUMN',@level2name=N'STARTSTATU'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'投票记录' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_TPXT_TPJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'投票记录ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_TPXT_TPJL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_TPXT_TPJL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'网站ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_TPXT_TPJL', @level2type=N'COLUMN',@level2name=N'WEBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'投票' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_TPXT_TPJL', @level2type=N'COLUMN',@level2name=N'TPID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'投票人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_TPXT_TPJL', @level2type=N'COLUMN',@level2name=N'TPIP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'投票时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_TPXT_TPJL', @level2type=N'COLUMN',@level2name=N'TPTIME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'友情链接类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_YQLJLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'友情链接类型ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_YQLJLX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_YQLJLX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'网站ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_YQLJLX', @level2type=N'COLUMN',@level2name=N'WEBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_YQLJLX', @level2type=N'COLUMN',@level2name=N'NAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'显示方式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_YQLJLX', @level2type=N'COLUMN',@level2name=N'SHOWSTYLE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'友情链接' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_YQLJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'友情链接ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_YQLJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_YQLJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'网站ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_YQLJ', @level2type=N'COLUMN',@level2name=N'WEBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_YQLJ', @level2type=N'COLUMN',@level2name=N'TITLE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_YQLJ', @level2type=N'COLUMN',@level2name=N'TYPEID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图片' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_YQLJ', @level2type=N'COLUMN',@level2name=N'IMAGEURL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'链接' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_YQLJ', @level2type=N'COLUMN',@level2name=N'URL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'样式库' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZYS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'样式库ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZYS', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZYS', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'网站ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZYS', @level2type=N'COLUMN',@level2name=N'WEBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'样式名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZYS', @level2type=N'COLUMN',@level2name=N'NAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'效果图' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZYS', @level2type=N'COLUMN',@level2name=N'SHOWIMG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'网站文章' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZWZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'网站文章ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZWZ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZWZ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'网站ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZWZ', @level2type=N'COLUMN',@level2name=N'WEBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZWZ', @level2type=N'COLUMN',@level2name=N'TYPENAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'栏目' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZWZ', @level2type=N'COLUMN',@level2name=N'LMID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZWZ', @level2type=N'COLUMN',@level2name=N'TITLE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发布人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZWZ', @level2type=N'COLUMN',@level2name=N'PUBLISHERNAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'作者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZWZ', @level2type=N'COLUMN',@level2name=N'AUTHOR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'作者部门' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZWZ', @level2type=N'COLUMN',@level2name=N'AUTHORDEPART'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发布时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZWZ', @level2type=N'COLUMN',@level2name=N'PUBLISHDATE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZWZ', @level2type=N'COLUMN',@level2name=N'CONTENT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'链接' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZWZ', @level2type=N'COLUMN',@level2name=N'URL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图片' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZWZ', @level2type=N'COLUMN',@level2name=N'IMAGEURL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'附件名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZWZ', @level2type=N'COLUMN',@level2name=N'ATTACHMENTNAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'附件' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZWZ', @level2type=N'COLUMN',@level2name=N'ATTACHMENT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'点击量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZWZ', @level2type=N'COLUMN',@level2name=N'CHICKNUB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZWZ', @level2type=N'COLUMN',@level2name=N'AUDITSTATU'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZWZ', @level2type=N'COLUMN',@level2name=N'AUDITOR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZWZ', @level2type=N'COLUMN',@level2name=N'AUDITORNAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZWZ', @level2type=N'COLUMN',@level2name=N'AUDITTIME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZWZ', @level2type=N'COLUMN',@level2name=N'REMARK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'摘要' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZWZ', @level2type=N'COLUMN',@level2name=N'SUMMARY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'内外网' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZWZ', @level2type=N'COLUMN',@level2name=N'DISPLAYTYPE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开启状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZWZ', @level2type=N'COLUMN',@level2name=N'OPENFLAG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'浏览权限' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZWZ', @level2type=N'COLUMN',@level2name=N'LLQX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文章评价表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZPJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'评价ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZPJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZPJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'网站ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZPJ', @level2type=N'COLUMN',@level2name=N'WEBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'网站文章ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZPJ', @level2type=N'COLUMN',@level2name=N'WZID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'评价人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZPJ', @level2type=N'COLUMN',@level2name=N'PJR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'邮件地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZPJ', @level2type=N'COLUMN',@level2name=N'YJDZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'评价时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZPJ', @level2type=N'COLUMN',@level2name=N'PJSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'评价内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZPJ', @level2type=N'COLUMN',@level2name=N'PJNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'评价状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZPJ', @level2type=N'COLUMN',@level2name=N'PJZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZPJ', @level2type=N'COLUMN',@level2name=N'SHR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'回复' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZPJ', @level2type=N'COLUMN',@level2name=N'HF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'网站配置' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZPZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'网站ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZPZ', @level2type=N'COLUMN',@level2name=N'WEBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZPZ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'网站名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZPZ', @level2type=N'COLUMN',@level2name=N'WEBNAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否开启' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZPZ', @level2type=N'COLUMN',@level2name=N'STATUID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'网址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZPZ', @level2type=N'COLUMN',@level2name=N'WEBURL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'网站样式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZPZ', @level2type=N'COLUMN',@level2name=N'CSSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'内网IP配置' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_NWIP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'内网IP配置ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_NWIP', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'网站ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_NWIP', @level2type=N'COLUMN',@level2name=N'WEBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_NWIP', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'IP地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_NWIP', @level2type=N'COLUMN',@level2name=N'IP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'网站栏目（导航）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZLM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'网站栏目（导航）ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZLM', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZLM', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'网站ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZLM', @level2type=N'COLUMN',@level2name=N'WEBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'栏目使用类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZLM', @level2type=N'COLUMN',@level2name=N'LMSHOWSTYLE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'栏目名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZLM', @level2type=N'COLUMN',@level2name=N'NAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'栏目链接' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZLM', @level2type=N'COLUMN',@level2name=N'URL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图片链接' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZLM', @level2type=N'COLUMN',@level2name=N'IMAGEURL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'层级' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZLM', @level2type=N'COLUMN',@level2name=N'DEPTH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父目录' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZLM', @level2type=N'COLUMN',@level2name=N'PID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'列表显示型式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZLM', @level2type=N'COLUMN',@level2name=N'LISTSHOWSTYLE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序方式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZLM', @level2type=N'COLUMN',@level2name=N'ORDERTYPE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'显示个数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZLM', @level2type=N'COLUMN',@level2name=N'SHOWNUMBER'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开启状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZLM', @level2type=N'COLUMN',@level2name=N'OPENFLAG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'浏览权限' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZLM', @level2type=N'COLUMN',@level2name=N'LLQX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'网站广告' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZGG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'网站广告ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZGG', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZGG', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'网站ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZGG', @level2type=N'COLUMN',@level2name=N'WEBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'显示型式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZGG', @level2type=N'COLUMN',@level2name=N'SHOWTYPE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'广告内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZGG', @level2type=N'COLUMN',@level2name=N'ADCONTENT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'广告链接' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZGG', @level2type=N'COLUMN',@level2name=N'GGLJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否显示' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZGG', @level2type=N'COLUMN',@level2name=N'SHOWSTATU'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'访问履历' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_FWLL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'访问履历ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_FWLL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_FWLL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'网站ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_FWLL', @level2type=N'COLUMN',@level2name=N'WEBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'访问IP' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_FWLL', @level2type=N'COLUMN',@level2name=N'ACCESSIP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'访问链接' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_FWLL', @level2type=N'COLUMN',@level2name=N'ACCESSURL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'访问时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_FWLL', @level2type=N'COLUMN',@level2name=N'ACCESSTIME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发布权限' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_FBQX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发布权限ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_FBQX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_FBQX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'网站ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_FBQX', @level2type=N'COLUMN',@level2name=N'WEBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_FBQX', @level2type=N'COLUMN',@level2name=N'LOGINNAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'栏目' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_FBQX', @level2type=N'COLUMN',@level2name=N'LMLIST'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'栏目文字' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_FBQX', @level2type=N'COLUMN',@level2name=N'LMNAMELIST'
GO
--空间名：EDU_ZZFC  生成器：SqlBuilder0.1

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZFC_02_01_JZWJBSJ')
            and   type = 'U')
   drop table EDU_ZZFC_02_01_JZWJBSJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZFC_08_01_XSSS')
            and   type = 'U')
   drop table EDU_ZZFC_08_01_XSSS
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZFC_08_A01_SSCW')
            and   type = 'U')
   drop table EDU_ZZFC_08_A01_SSCW
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZFC_08_A03_ZWHCY')
            and   type = 'U')
   drop table EDU_ZZFC_08_A03_ZWHCY
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZFC_08_A02_YHZSJL')
            and   type = 'U')
   drop table EDU_ZZFC_08_A02_YHZSJL
go
--建筑物基本数据类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZFC_02_01_JZWJBSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZFC_02_01_JZWJBSJ](
	[SCHOOLID]  int  NOT NULL,--学校名
	[ID]  int  NOT NULL,--建筑物ID
	[JZWH]  nvarchar(6)  NOT NULL,--建筑物号
	[JZWMC]  nvarchar(30)  NOT NULL,--建筑物名称
	[SYZKM]  nvarchar(1)  NOT NULL,--使用状况码
	[FWCQ]  nvarchar(1)  NOT NULL,--房屋产权
	[XQH]  nvarchar(2)  NULL,--校区号
	[JZWFLM]  nvarchar(1)  NOT NULL,--建筑物分类码
	[JZWJGM]  nvarchar(1)  NOT NULL,--建筑物结构码
	[JZWCS]  decimal(2, 0)  NOT NULL,--建筑物层数
	[JCNY]  nvarchar(6)  NULL,--建成年月
	[JZWTZZE]  money  NULL,--建筑物投资总额
	[JFLYM]  nvarchar(1)  NULL,--经费来源码
	[ZJZMJ]  decimal(10, 2)  NOT NULL,--总建筑面积
	[ZSYMJ]  decimal(10, 2)  NOT NULL,--总使用面积
	[KZSFLDM]  nvarchar(1)  NULL,--抗震设防烈度码
	[KZSFBZM]  nvarchar(1)  NOT NULL,--抗震设防标准码
	[JZWDZ]  nvarchar(180)  NOT NULL,--建筑物地址
	[JZWZKM]  nvarchar(2)  NOT NULL,--建筑物状况码
	[JZWTP]  nvarchar(200)  NULL,--建筑物图片
	[JZWPMT]  nvarchar(200)  NULL,--建筑物平面图
	[XXDWCCM]  nvarchar(1)  NULL,--学校单位层次码
	[JZWWZZK]  nvarchar(1)  NOT NULL,--建筑物位置状况
	[GHSPWH]  nvarchar(24)  NOT NULL,--规划审批文号
	[ZHFZNL]  nvarchar(60)  NULL,--综合防灾能力
	[GHSYNX]  decimal(3, 0)  NULL,--规划使用年限
	[SFYYJBXCS]  nvarchar(1)  NULL,--是否有预警避险措施
	[SFKYYYJBNCS]  nvarchar(1)  NULL,--是否可用于应急避难场所
	[CQZH]  nvarchar(20)  NOT NULL,--产权证号
	[JZWYTM]  nvarchar(2)  NULL,--建筑物用途码
	[JZWZGD]  decimal(3, 0)  NULL,--建筑物总高度
	[WFJDBM]  nvarchar(60)  NULL,--危房鉴定部门
	[WFJDWH]  nvarchar(20)  NULL,--危房鉴定文号
	[WFJDRQ]  nvarchar(8)  NULL,--危房鉴定日期
	[GNFSM]  nvarchar(1)  NULL,--供暖方式码
	[JZWJCXSM]  nvarchar(2)  NULL,--建筑物基础形式码
	[JZWPMXSM]  nvarchar(1)  NULL,--建筑物平面形式码
	[JZWLBXSM]  nvarchar(1)  NULL,--建筑物楼板形式码
	[SFYGZZ]  nvarchar(1)  NOT NULL,--是否有构造柱
	[QL]  nvarchar(1)  NOT NULL,--圈梁
	[ZJAQGZWCRQ]  nvarchar(8)  NULL,--最近安全改造完成日期
	[ZJAQGZHYJSYNX]  decimal(2, 0)  NULL,--最近安全改造后预计使用年限
	[ZXLXM]  nvarchar(1)  NULL,--专项类型
	[ZYZXTZBZMCM]  nvarchar(1)  NULL,--中央专项投资补助名称码
	[WWJZDJM]  nvarchar(1)  NULL,--文物建筑等级码
	[JXJFZYF]  decimal(8, 0)  NOT NULL,--教学及辅助用房
	[QZJS]  decimal(8, 0)  NOT NULL,--其中教室
	[QZSYS]  decimal(8, 0)  NOT NULL,--其中实验室
	[QZTSS]  decimal(8, 0)  NOT NULL,--其中图书室
	[QZWJS]  decimal(8, 0)  NOT NULL,--其中微机室
	[QZYYS]  decimal(8, 0)  NOT NULL,--其中语音室
	[QZTYHDS]  decimal(8, 0)  NOT NULL,--其中体育活动室
	[QZQTJFYF]  decimal(8, 0)  NOT NULL,--其中其他教辅用房
	[SHYF]  decimal(8, 0)  NOT NULL,--生活用房
	[QZXSSS]  decimal(8, 0)  NOT NULL,--其中学生宿舍
	[QZST]  decimal(8, 0)  NOT NULL,--其中食堂
	[QZCS]  decimal(8, 0)  NOT NULL,--其中厕所
	[QZGLF]  decimal(8, 0)  NOT NULL,--其中锅炉房(开水房)
	[QZYS]  decimal(8, 0)  NOT NULL,--其中浴室
	[QZJGSS]  decimal(8, 0)  NOT NULL,--其中教工宿舍
	[QZQTSHYF]  decimal(8, 0)  NOT NULL,--其中其他生活用房
	[XZBGYF]  decimal(8, 0)  NOT NULL,--行政办公用房
	[QZJSBGS]  decimal(8, 0)  NOT NULL,--其中教职工办公室
	[QZWSBJS]  decimal(8, 0)  NOT NULL,--其中卫生保健室
	[QZQTXZBGYF]  decimal(8, 0)  NOT NULL,--其中其他行政办公用房
	[QTYF]  decimal(8, 0)  NOT NULL,--其他用房
	[GLY]  nvarchar(20)  NOT NULL,--管理员
CONSTRAINT [PK_EDU_ZZFC_02_01_JZWJBSJ] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--学生宿舍数据类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZFC_08_01_XSSS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZFC_08_01_XSSS](
	[SCHOOLID]  int  NOT NULL,--学校名
	[ID]  int  NOT NULL,--宿舍ID
	[SSLID]  int  NOT NULL,--宿舍楼ID
	[SSLBM]  nvarchar(6)  NOT NULL,--宿舍楼编号
	[FJBM]  nvarchar(10)  NOT NULL,--房间编号
	[RZXB]  nvarchar(1)  NOT NULL,--入住性别
	[SFKY]  nvarchar(1)  NOT NULL,--是否可用
	[KZRS]  decimal(2, 0)  NOT NULL,--可住人数
	[WLDK]  nvarchar(20)  NULL,--网络端口
	[AZDSJ]  nvarchar(1)  NULL,--安装电视机
	[DHDK]  nvarchar(20)  NULL,--电话端口
	[DHHM]  nvarchar(20)  NULL,--电话号码
	[SBDS]  decimal(10, 0)  NULL,--水表底数
	[DBDS]  decimal(10, 0)  NULL,--电表底数
	[SSBZ]  text  NULL,--宿舍备注
	[SZLZ]  int  NOT NULL,--所在楼层
	[SSM]  nvarchar(128)  NOT NULL,--宿舍名
CONSTRAINT [PK_EDU_ZZFC_08_01_XSSS] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--宿舍床位表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZFC_08_A01_SSCW]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZFC_08_A01_SSCW](
	[SCHOOLID]  int  NOT NULL,--学校ID
	[ID]  int  NOT NULL,--床位ID
	[SSLID]  int  NOT NULL,--宿舍楼ID
	[SSID]  int  NOT NULL,--宿舍ID
	[CWM]  nvarchar(128)  NOT NULL,--床位名
	[BZ]  text  NOT NULL,--备注
	[SFRZ]  nvarchar(1)  NOT NULL,--是否入住
CONSTRAINT [PK_EDU_ZZFC_08_A01_SSCW] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--住委会成员表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZFC_08_A03_ZWHCY]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZFC_08_A03_ZWHCY](
	[SCHOOLID]  int  NOT NULL,--学校ID
	[ID]  int  NOT NULL,--成员ID
	[YHID]  int  NOT NULL,--用户ID
	[YHLX]  int  NOT NULL,--用户类型
	[CYXM]  nvarchar(128)  NULL,--成员姓名
	[TJSJ]  datetime  NOT NULL,--添加时间
	[ZWMC]  nvarchar(128)  NOT NULL,--职位名称
	[GZNR]  nvarchar(500)  NOT NULL,--工作内容
CONSTRAINT [PK_EDU_ZZFC_08_A03_ZWHCY] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--用户住宿记录表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZFC_08_A02_YHZSJL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZFC_08_A02_YHZSJL](
	[SCHOOLID]  int  NOT NULL,--学校ID
	[ID]  int  NOT NULL,--住宿记录ID
	[YHID]  int  NOT NULL,--用户ID
	[SSLID]  int  NOT NULL,--宿舍楼ID
	[SSID]  int  NOT NULL,--宿舍ID
	[CWID]  int  NOT NULL,--床位ID
	[YHXM]  nvarchar(128)  NULL,--用户姓名
	[RZRLX]  int  NOT NULL,--入住人类型
	[RZSJ]  datetime  NOT NULL,--入住时间
	[SHZT]  int  NOT NULL,--审核状态
	[SHSJ]  datetime  NOT NULL,--审核时间
	[SHR]  nvarchar(128)  NOT NULL,--审核人
CONSTRAINT [PK_EDU_ZZFC_08_A02_YHZSJL] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--以下为添加注释语句
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建筑物基本数据类表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建筑物ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建筑物号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'JZWH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建筑物名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'JZWMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'使用状况码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'SYZKM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'房屋产权' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'FWCQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'校区号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'XQH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建筑物分类码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'JZWFLM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建筑物结构码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'JZWJGM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建筑物层数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'JZWCS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建成年月' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'JCNY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建筑物投资总额' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'JZWTZZE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'经费来源码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'JFLYM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'总建筑面积' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'ZJZMJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'总使用面积' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'ZSYMJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'抗震设防烈度码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'KZSFLDM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'抗震设防标准码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'KZSFBZM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建筑物地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'JZWDZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建筑物状况码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'JZWZKM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建筑物图片' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'JZWTP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建筑物平面图' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'JZWPMT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校单位层次码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'XXDWCCM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建筑物位置状况' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'JZWWZZK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'规划审批文号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'GHSPWH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'综合防灾能力' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'ZHFZNL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'规划使用年限' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'GHSYNX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否有预警避险措施' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'SFYYJBXCS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否可用于应急避难场所' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'SFKYYYJBNCS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'产权证号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'CQZH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建筑物用途码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'JZWYTM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建筑物总高度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'JZWZGD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'危房鉴定部门' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'WFJDBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'危房鉴定文号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'WFJDWH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'危房鉴定日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'WFJDRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'供暖方式码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'GNFSM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建筑物基础形式码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'JZWJCXSM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建筑物平面形式码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'JZWPMXSM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建筑物楼板形式码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'JZWLBXSM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否有构造柱' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'SFYGZZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'圈梁' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'QL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最近安全改造完成日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'ZJAQGZWCRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最近安全改造后预计使用年限' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'ZJAQGZHYJSYNX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'专项类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'ZXLXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中央专项投资补助名称码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'ZYZXTZBZMCM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文物建筑等级码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'WWJZDJM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教学及辅助用房' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'JXJFZYF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'其中教室' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'QZJS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'其中实验室' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'QZSYS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'其中图书室' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'QZTSS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'其中微机室' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'QZWJS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'其中语音室' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'QZYYS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'其中体育活动室' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'QZTYHDS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'其中其他教辅用房' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'QZQTJFYF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'生活用房' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'SHYF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'其中学生宿舍' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'QZXSSS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'其中食堂' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'QZST'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'其中厕所' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'QZCS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'其中锅炉房(开水房)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'QZGLF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'其中浴室' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'QZYS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'其中教工宿舍' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'QZJGSS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'其中其他生活用房' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'QZQTSHYF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'行政办公用房' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'XZBGYF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'其中教职工办公室' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'QZJSBGS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'其中卫生保健室' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'QZWSBJS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'其中其他行政办公用房' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'QZQTXZBGYF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'其他用房' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'QTYF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'管理员' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'GLY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生宿舍数据类表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_01_XSSS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_01_XSSS', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'宿舍ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_01_XSSS', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'宿舍楼ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_01_XSSS', @level2type=N'COLUMN',@level2name=N'SSLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'宿舍楼编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_01_XSSS', @level2type=N'COLUMN',@level2name=N'SSLBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'房间编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_01_XSSS', @level2type=N'COLUMN',@level2name=N'FJBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'入住性别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_01_XSSS', @level2type=N'COLUMN',@level2name=N'RZXB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否可用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_01_XSSS', @level2type=N'COLUMN',@level2name=N'SFKY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'可住人数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_01_XSSS', @level2type=N'COLUMN',@level2name=N'KZRS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'网络端口' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_01_XSSS', @level2type=N'COLUMN',@level2name=N'WLDK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'安装电视机' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_01_XSSS', @level2type=N'COLUMN',@level2name=N'AZDSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电话端口' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_01_XSSS', @level2type=N'COLUMN',@level2name=N'DHDK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电话号码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_01_XSSS', @level2type=N'COLUMN',@level2name=N'DHHM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'水表底数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_01_XSSS', @level2type=N'COLUMN',@level2name=N'SBDS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电表底数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_01_XSSS', @level2type=N'COLUMN',@level2name=N'DBDS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'宿舍备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_01_XSSS', @level2type=N'COLUMN',@level2name=N'SSBZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所在楼层' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_01_XSSS', @level2type=N'COLUMN',@level2name=N'SZLZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'宿舍名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_01_XSSS', @level2type=N'COLUMN',@level2name=N'SSM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'宿舍床位表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_A01_SSCW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_A01_SSCW', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'床位ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_A01_SSCW', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'宿舍楼ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_A01_SSCW', @level2type=N'COLUMN',@level2name=N'SSLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'宿舍ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_A01_SSCW', @level2type=N'COLUMN',@level2name=N'SSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'床位名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_A01_SSCW', @level2type=N'COLUMN',@level2name=N'CWM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_A01_SSCW', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否入住' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_A01_SSCW', @level2type=N'COLUMN',@level2name=N'SFRZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'住委会成员表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_A03_ZWHCY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_A03_ZWHCY', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'成员ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_A03_ZWHCY', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_A03_ZWHCY', @level2type=N'COLUMN',@level2name=N'YHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_A03_ZWHCY', @level2type=N'COLUMN',@level2name=N'YHLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'成员姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_A03_ZWHCY', @level2type=N'COLUMN',@level2name=N'CYXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_A03_ZWHCY', @level2type=N'COLUMN',@level2name=N'TJSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'职位名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_A03_ZWHCY', @level2type=N'COLUMN',@level2name=N'ZWMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工作内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_A03_ZWHCY', @level2type=N'COLUMN',@level2name=N'GZNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户住宿记录表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_A02_YHZSJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_A02_YHZSJL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'住宿记录ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_A02_YHZSJL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_A02_YHZSJL', @level2type=N'COLUMN',@level2name=N'YHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'宿舍楼ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_A02_YHZSJL', @level2type=N'COLUMN',@level2name=N'SSLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'宿舍ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_A02_YHZSJL', @level2type=N'COLUMN',@level2name=N'SSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'床位ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_A02_YHZSJL', @level2type=N'COLUMN',@level2name=N'CWID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_A02_YHZSJL', @level2type=N'COLUMN',@level2name=N'YHXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'入住人类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_A02_YHZSJL', @level2type=N'COLUMN',@level2name=N'RZRLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'入住时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_A02_YHZSJL', @level2type=N'COLUMN',@level2name=N'RZSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_A02_YHZSJL', @level2type=N'COLUMN',@level2name=N'SHZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_A02_YHZSJL', @level2type=N'COLUMN',@level2name=N'SHSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_A02_YHZSJL', @level2type=N'COLUMN',@level2name=N'SHR'
GO
--空间名：EDU_ZZJG  生成器：SqlBuilder0.1

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJG_01_01_JZGJBSJ')
            and   type = 'U')
   drop table EDU_ZZJG_01_01_JZGJBSJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJG_02_02_XNGWSJ')
            and   type = 'U')
   drop table EDU_ZZJG_02_02_XNGWSJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJG_07_01_JZGZYNL')
            and   type = 'U')
   drop table EDU_ZZJG_07_01_JZGZYNL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJG_04_A01_JBDJ')
            and   type = 'U')
   drop table EDU_ZZJG_04_A01_JBDJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJG_01_A01_JZGKZ')
            and   type = 'U')
   drop table EDU_ZZJG_01_A01_JZGKZ
go
--教职工基本数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJG_01_01_JZGJBSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJG_01_01_JZGJBSJ](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校名
	[GH]  nvarchar(20)  NULL,--工号
	[XM]  nvarchar(36)  NOT NULL,--姓名
	[YWXM]  nvarchar(60)  NULL,--英文姓名
	[XMPY]  nvarchar(60)  NOT NULL,--姓名拼音
	[CYM]  nvarchar(36)  NULL,--曾用名
	[SFZJLXM]  nvarchar(1)  NOT NULL,--身份证件类型码
	[SFZJH]  nvarchar(20)  NOT NULL,--身份证件号
	[CSRQ]  nvarchar(8)  NOT NULL,--出生日期
	[XBM]  nvarchar(1)  NOT NULL,--性别码
	[MZM]  nvarchar(2)  NOT NULL,--民族码
	[XXM]  nvarchar(1)  NULL,--血型码
	[JKZKM]  nvarchar(1)  NULL,--健康状况码
	[HYZTM]  nvarchar(2)  NOT NULL,--婚姻状态码
	[ZZMMM]  nvarchar(2)  NOT NULL,--政治面貌码
	[GATQWM]  nvarchar(2)  NULL,--港澳台侨外码
	[JG]  nvarchar(20)  NOT NULL,--籍贯
	[GJDQM]  nvarchar(3)  NULL,--国籍/地区码
	[CSDXZQHM]  nvarchar(6)  NOT NULL,--出生地行政区划码
	[XYZJM]  nvarchar(2)  NULL,--信仰宗教码
	[JZGHKSZDXZQHM]  nvarchar(6)  NOT NULL,--教职工户口所在地行政区划码
	[HKLBM]  nvarchar(1)  NOT NULL,--户口类别码
	[DQZZ]  nvarchar(180)  NOT NULL,--当前住址
	[DQZZYZBM]  nvarchar(6)  NOT NULL,--当前住址邮政编码
	[CJGZNY]  nvarchar(6)  NOT NULL,--参加工作年月
	[CJNY]  nvarchar(6)  NOT NULL,--从教年月
	[LXNY]  nvarchar(6)  NOT NULL,--来校年月
	[BZLBM]  nvarchar(2)  NOT NULL,--编制类别码
	[JZGLBM]  nvarchar(2)  NOT NULL,--教职工类别码
	[GWLBM]  nvarchar(1)  NOT NULL,--岗位类别码
	[SFJZJS]  nvarchar(1)  NOT NULL,--是否兼职教师
	[SFSSXJS]  nvarchar(1)  NOT NULL,--是否双师型教师
	[ZP]  nvarchar(100)  NULL,--照片(路径)
	[DQZTM]  nvarchar(2)  NOT NULL,--当前状态码
	[YDDH]  nvarchar(30)  NOT NULL,--移动电话
	[GDDH]  nvarchar(30)  NULL,--固定电话
	[TXDZYZBM]  nvarchar(6)  NULL,--通信地址邮政编码
	[TXDZ]  nvarchar(180)  NULL,--通信地址
	[DZXX]  nvarchar(40)  NOT NULL,--电子信箱
	[WLDZ]  nvarchar(60)  NULL,--网络地址
	[JSTXH]  nvarchar(40)  NULL,--即时通讯号
CONSTRAINT [PK_EDU_ZZJG_01_01_JZGJBSJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--校内岗位数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJG_02_02_XNGWSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJG_02_02_XNGWSJ](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校名
	[GWID]  int  NOT NULL,--岗位表ID
	[JZGJBSJID]  int  NOT NULL,--教职工基本数据子类表
	[GWQSNY]  nvarchar(6)  NOT NULL,--岗位起始年月
	[GWJSNY]  nvarchar(6)  NOT NULL,--岗位结束年月
	[SFZG]  nvarchar(1)  NOT NULL,--是否在岗
	[ZWMC]  nvarchar(10)  NOT NULL,--职务名称
	[JGH]  nvarchar(6)  NOT NULL,--机构号
CONSTRAINT [PK_EDU_ZZJG_02_02_XNGWSJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--教职工专业能力与资格证书数据类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJG_07_01_JZGZYNL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJG_07_01_JZGZYNL](
	[SCHOOLID]  int  NOT NULL,--学校名
	[JZGJBSJID]  int  NOT NULL,--教职工ID
	[ZSMC]  nvarchar(40)  NOT NULL,--证书名称
	[ZSBH]  nvarchar(20)  NULL,--证书编号
	[ZSBFDW]  nvarchar(60)  NULL,--证书颁发单位
	[ZSBFRQ]  nvarchar(8)  NOT NULL,--证书颁发日期
	[ZSBZ]  text  NULL,--证书备注
	[SFSZYZGZS]  nvarchar(1)  NOT NULL,--是否是职业资格证书
CONSTRAINT [PK_EDU_ZZJG_07_01_JZGZYNL] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[JZGJBSJID] ASC,
	[ZSMC] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--加班登记表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJG_04_A01_JBDJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJG_04_A01_JBDJ](
	[ID]  int  NOT NULL,--加班登记表ID
	[SCHOOLID]  int  NOT NULL,--学校ID
	[JZGJBSJID]  int  NOT NULL,--教职工ID
	[KSSJ]  datetime  NOT NULL,--开始时间
	[JSSJ]  datetime  NOT NULL,--结束时间
	[JBLX]  int  NOT NULL,--加班类型
CONSTRAINT [PK_EDU_ZZJG_04_A01_JBDJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--教职工扩展表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJG_01_A01_JZGKZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJG_01_A01_JZGKZ](
	[JZGJBSJID]  int  NOT NULL,--教工基本信息ID
	[SCHOOLID]  int  NOT NULL,--学校ID
	[JL]  int  NOT NULL,--教龄
	[GL]  int  NOT NULL,--工龄
	[GZJY]  text  NOT NULL,--工作经验
	[LDJN]  text  NOT NULL,--劳动技能
	[XXJL]  text  NOT NULL,--学习经历
CONSTRAINT [PK_EDU_ZZJG_01_A01_JZGKZ] PRIMARY KEY CLUSTERED
(
	[JZGJBSJID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--以下为添加注释语句
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教职工基本数据子类表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'GH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'XM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'英文姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'YWXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'姓名拼音' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'XMPY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'曾用名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'CYM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'身份证件类型码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'SFZJLXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'身份证件号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'SFZJH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'出生日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'CSRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'性别码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'XBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'民族码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'MZM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'血型码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'XXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'健康状况码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'JKZKM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'婚姻状态码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'HYZTM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'政治面貌码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'ZZMMM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'港澳台侨外码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'GATQWM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'籍贯' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'JG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'国籍/地区码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'GJDQM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'出生地行政区划码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'CSDXZQHM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'信仰宗教码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'XYZJM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教职工户口所在地行政区划码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'JZGHKSZDXZQHM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'户口类别码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'HKLBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'当前住址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'DQZZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'当前住址邮政编码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'DQZZYZBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'参加工作年月' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'CJGZNY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'从教年月' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'CJNY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'来校年月' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'LXNY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编制类别码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'BZLBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教职工类别码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'JZGLBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'岗位类别码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'GWLBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否兼职教师' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'SFJZJS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否双师型教师' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'SFSSXJS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'照片(路径)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'ZP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'当前状态码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'DQZTM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'移动电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'YDDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'固定电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'GDDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'通信地址邮政编码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'TXDZYZBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'通信地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'TXDZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电子信箱' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'DZXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'网络地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'WLDZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'即时通讯号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'JSTXH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'校内岗位数据子类表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_02_02_XNGWSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_02_02_XNGWSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_02_02_XNGWSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'岗位表ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_02_02_XNGWSJ', @level2type=N'COLUMN',@level2name=N'GWID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教职工基本数据子类表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_02_02_XNGWSJ', @level2type=N'COLUMN',@level2name=N'JZGJBSJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'岗位起始年月' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_02_02_XNGWSJ', @level2type=N'COLUMN',@level2name=N'GWQSNY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'岗位结束年月' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_02_02_XNGWSJ', @level2type=N'COLUMN',@level2name=N'GWJSNY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否在岗' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_02_02_XNGWSJ', @level2type=N'COLUMN',@level2name=N'SFZG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'职务名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_02_02_XNGWSJ', @level2type=N'COLUMN',@level2name=N'ZWMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'机构号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_02_02_XNGWSJ', @level2type=N'COLUMN',@level2name=N'JGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教职工专业能力与资格证书数据类表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_07_01_JZGZYNL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_07_01_JZGZYNL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教职工ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_07_01_JZGZYNL', @level2type=N'COLUMN',@level2name=N'JZGJBSJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'证书名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_07_01_JZGZYNL', @level2type=N'COLUMN',@level2name=N'ZSMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'证书编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_07_01_JZGZYNL', @level2type=N'COLUMN',@level2name=N'ZSBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'证书颁发单位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_07_01_JZGZYNL', @level2type=N'COLUMN',@level2name=N'ZSBFDW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'证书颁发日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_07_01_JZGZYNL', @level2type=N'COLUMN',@level2name=N'ZSBFRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'证书备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_07_01_JZGZYNL', @level2type=N'COLUMN',@level2name=N'ZSBZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否是职业资格证书' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_07_01_JZGZYNL', @level2type=N'COLUMN',@level2name=N'SFSZYZGZS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'加班登记表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_04_A01_JBDJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'加班登记表ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_04_A01_JBDJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_04_A01_JBDJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教职工ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_04_A01_JBDJ', @level2type=N'COLUMN',@level2name=N'JZGJBSJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开始时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_04_A01_JBDJ', @level2type=N'COLUMN',@level2name=N'KSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'结束时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_04_A01_JBDJ', @level2type=N'COLUMN',@level2name=N'JSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'加班类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_04_A01_JBDJ', @level2type=N'COLUMN',@level2name=N'JBLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教职工扩展表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_A01_JZGKZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教工基本信息ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_A01_JZGKZ', @level2type=N'COLUMN',@level2name=N'JZGJBSJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_A01_JZGKZ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教龄' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_A01_JZGKZ', @level2type=N'COLUMN',@level2name=N'JL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工龄' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_A01_JZGKZ', @level2type=N'COLUMN',@level2name=N'GL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工作经验' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_A01_JZGKZ', @level2type=N'COLUMN',@level2name=N'GZJY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'劳动技能' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_A01_JZGKZ', @level2type=N'COLUMN',@level2name=N'LDJN'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学习经历' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_A01_JZGKZ', @level2type=N'COLUMN',@level2name=N'XXJL'
GO
--空间名：EDU_ZZJX  生成器：SqlBuilder0.1

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_02_02_ZZBJ')
            and   type = 'U')
   drop table EDU_ZZJX_02_02_ZZBJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_02_01_ZZNJ')
            and   type = 'U')
   drop table EDU_ZZJX_02_01_ZZNJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_01_01_ZYXX')
            and   type = 'U')
   drop table EDU_ZZJX_01_01_ZYXX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_05_02_JSJXGZLTJ')
            and   type = 'U')
   drop table EDU_ZZJX_05_02_JSJXGZLTJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_03_A01_XQXFGL')
            and   type = 'U')
   drop table EDU_ZZJX_03_A01_XQXFGL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_03_03_JXJHKCQD')
            and   type = 'U')
   drop table EDU_ZZJX_03_03_JXJHKCQD
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_03_02_JXJHFLXFYQ')
            and   type = 'U')
   drop table EDU_ZZJX_03_02_JXJHFLXFYQ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_03_01_ZTJXJH')
            and   type = 'U')
   drop table EDU_ZZJX_03_01_ZTJXJH
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_01_A02_JSRK')
            and   type = 'U')
   drop table EDU_ZZJX_01_A02_JSRK
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_01_A01_KCPJ')
            and   type = 'U')
   drop table EDU_ZZJX_01_A01_KCPJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_01_02_KC')
            and   type = 'U')
   drop table EDU_ZZJX_01_02_KC
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_07_01_XWSXJDXX')
            and   type = 'U')
   drop table EDU_ZZJX_07_01_XWSXJDXX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_07_03_XSXWSXQK')
            and   type = 'U')
   drop table EDU_ZZJX_07_03_XSXWSXQK
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_07_A11_SXJC')
            and   type = 'U')
   drop table EDU_ZZJX_07_A11_SXJC
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_07_A10_SXJD')
            and   type = 'U')
   drop table EDU_ZZJX_07_A10_SXJD
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_07_A09_SXRZ')
            and   type = 'U')
   drop table EDU_ZZJX_07_A09_SXRZ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_07_A08_SXTS')
            and   type = 'U')
   drop table EDU_ZZJX_07_A08_SXTS
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_07_A07_SXZG')
            and   type = 'U')
   drop table EDU_ZZJX_07_A07_SXZG
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_07_A06_XQHD')
            and   type = 'U')
   drop table EDU_ZZJX_07_A06_XQHD
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_07_A05_XSYP')
            and   type = 'U')
   drop table EDU_ZZJX_07_A05_XSYP
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_07_A04_SXGW')
            and   type = 'U')
   drop table EDU_ZZJX_07_A04_SXGW
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_07_A03_XXSXZY')
            and   type = 'U')
   drop table EDU_ZZJX_07_A03_XXSXZY
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_07_A02_XXSXJD')
            and   type = 'U')
   drop table EDU_ZZJX_07_A02_XXSXJD
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_07_A01_XXSXJH')
            and   type = 'U')
   drop table EDU_ZZJX_07_A01_XXSXJH
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_08_A01_DGFSQ')
            and   type = 'U')
   drop table EDU_ZZJX_08_A01_DGFSQ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_09_A01_TKSQSJ')
            and   type = 'U')
   drop table EDU_ZZJX_09_A01_TKSQSJ
go
--学校班级数据表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_02_02_ZZBJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_02_02_ZZBJ](
	[XZBDM]  nvarchar(10)  NOT NULL,--行政班代码
	[SCHOOLID]  int  NOT NULL,--学校名
	[ZYXXID]  int  NOT NULL,--专业基本信息
	[ZZNJID]  nvarchar(4)  NOT NULL,--学校年级数据表
	[XZBMC]  nvarchar(50)  NOT NULL,--行政班名称
	[JBNY]  nvarchar(6)  NOT NULL,--建班年月
	[BZRGH]  nvarchar(20)  NULL,--班主任工号
	[JSBH]  nvarchar(10)  NULL,--教室编号
	[NANSRS]  decimal(4, 0)  NULL,--男生人数
	[NVSRS]  decimal(4, 0)  NULL,--女生人数
	[ZRS]  decimal(4, 0)  NULL,--总人数
	[BZXH]  nvarchar(20)  NULL,--班长学号
	[JXJH]  text  NOT NULL,--教学计划
	[JGH]  nvarchar(6)  NOT NULL,--机构号
	[XQDM]  nvarchar(2)  NOT NULL,--校区代码
CONSTRAINT [PK_EDU_ZZJX_02_02_ZZBJ] PRIMARY KEY CLUSTERED
(
	[XZBDM] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--学校年级数据表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_02_01_ZZNJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_02_01_ZZNJ](
	[NJDM]  nvarchar(4)  NOT NULL,--年级代码
	[SCHOOLID]  int  NOT NULL,--学校名
	[NJMC]  nvarchar(10)  NOT NULL,--年级名称
	[SSNF]  nvarchar(4)  NOT NULL,--所属年份
	[NJZT]  nvarchar(1)  NOT NULL,--年级状态
CONSTRAINT [PK_EDU_ZZJX_02_01_ZZNJ] PRIMARY KEY CLUSTERED
(
	[NJDM] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--专业基本信息数据表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_01_01_ZYXX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_01_01_ZYXX](
	[ZYBH]  int  NOT NULL,--专业编号
	[SCHOOLID]  int  NOT NULL,--学校名
	[ZYDM]  nvarchar(6)  NULL,--专业代码
	[ZYMC]  nvarchar(50)  NOT NULL,--专业名称
	[ZYYWMC]  nvarchar(100)  NULL,--专业英文名称
	[XZ]  nvarchar(20)  NOT NULL,--学制
	[ZYFXMC]  nvarchar(100)  NOT NULL,--专业方向名称
	[ZYJC]  nvarchar(100)  NOT NULL,--专业简称
	[JLNY]  nvarchar(6)  NOT NULL,--建立年月
	[ZYJSS]  decimal(2, 0)  NULL,--专业教师数
	[KSJGH]  nvarchar(6)  NOT NULL,--开设机构号
	[ZXF]  nvarchar(10)  NOT NULL,--总学分
	[SSZYML]  nvarchar(1)  NULL,--所属专业目录
	[ZYLB]  nvarchar(50)  NOT NULL,--专业类别名称
CONSTRAINT [PK_EDU_ZZJX_01_01_ZYXX] PRIMARY KEY CLUSTERED
(
	[ZYBH] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--教师教学工作量统计数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_05_02_JSJXGZLTJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_05_02_JSJXGZLTJ](
	[SCHOOLID]  int  NOT NULL,--学校ID
	[JSID]  int  NOT NULL,--教师ID
	[XQID]  int  NOT NULL,--学期ID
	[XQMC]  nvarchar(10)  NOT NULL,--学期名称
	[JSXM]  nvarchar(36)  NOT NULL,--教师姓名
	[RJKCMS]  decimal(4, 0)  NOT NULL,--任教课程门数
	[LLZXS]  decimal(4, 0)  NOT NULL,--理论总学时
	[SJZXS]  decimal(4, 0)  NOT NULL,--实践总学时
	[QTZXS]  decimal(4, 0)  NOT NULL,--其他总学时
	[XSZS]  decimal(4, 0)  NOT NULL,--学生总数
	[ZXFS]  decimal(5, 1)  NOT NULL,--总学分数
CONSTRAINT [PK_EDU_ZZJX_05_02_JSJXGZLTJ] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[JSID] ASC,
	[XQID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--学期学分管理表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_03_A01_XQXFGL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_03_A01_XQXFGL](
	[SCHOOLID]  int  NOT NULL,--学校ID
	[XQID]  int  NOT NULL,--学期ID
	[JHBH]  nvarchar(5)  NOT NULL,--计划编号
	[ZDXF]  decimal(3, 1)  NULL,--最高学分
	[ZGXF]  decimal(3, 1)  NOT NULL,--最低学分
CONSTRAINT [PK_EDU_ZZJX_03_A01_XQXFGL] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[XQID] ASC,
	[JHBH] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--教学计划课程清单数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_03_03_JXJHKCQD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_03_03_JXJHKCQD](
	[SCHOOLID]  int  NOT NULL,--学校ID
	[KCH]  nvarchar(6)  NOT NULL,--课程号
	[JHBH]  nvarchar(5)  NOT NULL,--计划编号
	[XQID]  int  NOT NULL,--学期ID
	[KCMC]  nvarchar(100)  NOT NULL,--课程名称
	[YXKC]  nvarchar(200)  NULL,--预修课程
	[SFHXKC]  nvarchar(1)  NULL,--是否核心（骨干）
	[KCFLM]  nvarchar(1)  NOT NULL,--课程分类码
	[KCSXM]  nvarchar(1)  NOT NULL,--课程属性码
	[ZXXQ]  decimal(2, 0)  NOT NULL,--执行学期
CONSTRAINT [PK_EDU_ZZJX_03_03_JXJHKCQD] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[KCH] ASC,
	[JHBH] ASC,
	[XQID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--教学计划分类学分要求数据子类
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_03_02_JXJHFLXFYQ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_03_02_JXJHFLXFYQ](
	[SCHOOLID]  int  NOT NULL,--学校ID
	[KCFLM]  nvarchar(1)  NOT NULL,--课程分类码
	[XFYQ]  decimal(2, 1)  NOT NULL,--学分要求
	[JHBH]  nvarchar(5)  NOT NULL,--计划编号
CONSTRAINT [PK_EDU_ZZJX_03_02_JXJHFLXFYQ] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[KCFLM] ASC,
	[JHBH] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--总体教学计划数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_03_01_ZTJXJH]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_03_01_ZTJXJH](
	[SCHOOLID]  int  NOT NULL,--学校ID
	[JHBH]  nvarchar(5)  NOT NULL,--计划编号
	[JHNJ]  nvarchar(4)  NOT NULL,--计划年级
	[ZYXXID]  int  NOT NULL,--专业编号
	[JHZYMC]  nvarchar(50)  NULL,--计划专业名称
	[ZXFYQ]  decimal(3, 0)  NOT NULL,--总学分要求
	[JLNY]  nvarchar(6)  NULL,--建立年月
	[SYXZ]  decimal(3, 1)  NULL,--适用学制
	[PYMB]  text  NULL,--培养目标
	[SFKY]  nvarchar(1)  NOT NULL,--是否可用
	[FJ]  text  NULL,--附件
CONSTRAINT [PK_EDU_ZZJX_03_01_ZTJXJH] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[JHBH] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--教师任课表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_01_A02_JSRK]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_01_A02_JSRK](
	[SCHOOLID]  int  NOT NULL,--学校ID
	[KXH]  int  NOT NULL,--课序号
	[JSID]  int  NOT NULL,--教师表ID
	[KCH]  nvarchar(6)  NOT NULL,--课程号
	[JHBH]  nvarchar(5)  NOT NULL,--计划编号
	[XQID]  int  NOT NULL,--学期ID
	[JXDG]  text  NOT NULL,--教学大纲
CONSTRAINT [PK_EDU_ZZJX_01_A02_JSRK] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[KXH] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--课程评价表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_01_A01_KCPJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_01_A01_KCPJ](
	[SCHOOLID]  int  NOT NULL,--学校ID
	[PJID]  int  NOT NULL,--评价ID
	[KXH]  int  NOT NULL,--课序号
	[PJR]  nvarchar(20)  NOT NULL,--评价人
	[PJSJ]  datetime  NOT NULL,--评价时间
	[PJNR]  text  NOT NULL,--评价内容
	[HF]  text  NOT NULL,--回复
CONSTRAINT [PK_EDU_ZZJX_01_A01_KCPJ] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[PJID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--课程数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_01_02_KC]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_01_02_KC](
	[KCH]  nvarchar(6)  NOT NULL,--课程号
	[SCHOOLID]  int  NOT NULL,--学校ID
	[KCMC]  nvarchar(100)  NOT NULL,--课程名称
	[KCYWM]  nvarchar(100)  NULL,--课程英文名
	[KCBM]  nvarchar(100)  NULL,--课程别名
	[KCJS]  nvarchar(200)  NULL,--课程介绍
	[XF]  decimal(2, 1)  NOT NULL,--学分
	[ZXS]  decimal(2, 0)  NOT NULL,--总学时
	[LLXS]  decimal(2, 0)  NOT NULL,--理论学时
	[SJXS]  decimal(2, 0)  NOT NULL,--实践学时
	[QTXS]  decimal(2, 0)  NOT NULL,--其他学时
	[CKSM]  text  NULL,--参考书目
	[KKDW]  nvarchar(6)  NULL,--开课单位
	[KSXS]  nvarchar(1)  NOT NULL,--考试形式
	[SKFSM]  nvarchar(1)  NOT NULL,--授课方式码
	[KCFY]  money  NULL,--课程费用
CONSTRAINT [PK_EDU_ZZJX_01_02_KC] PRIMARY KEY CLUSTERED
(
	[KCH] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--校外实习基地信息数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_07_01_XWSXJDXX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_07_01_XWSXJDXX](
	[SCHOOLID]  int  NOT NULL,--学校名
	[ID]  int  NOT NULL,--企业表ID
	[QYBH]  nvarchar(20)  NOT NULL,--企业编号
	[JDHZHTBH]  nvarchar(20)  NOT NULL,--基地合作合同编号
	[JDHZHTMC]  nvarchar(50)  NOT NULL,--基地合作合同名称
	[JDLBM]  nvarchar(1)  NOT NULL,--基地类别码
	[DWMC]  nvarchar(50)  NOT NULL,--单位名称
	[QYXZQ]  nvarchar(6)  NOT NULL,--企业行政区
	[QYDZ]  nvarchar(180)  NULL,--企业地址
	[QYXZ]  nvarchar(3)  NULL,--企业性质
	[FRDB]  nvarchar(36)  NULL,--法人代表
	[QYLXR]  nvarchar(36)  NULL,--企业联系人
	[QYYZBM]  nvarchar(6)  NULL,--企业邮政编码
	[QYLXDH]  nvarchar(30)  NULL,--企业联系电话
	[QYYYZZ]  nvarchar(50)  NOT NULL,--企业营业执照
	[QYLX]  nvarchar(1)  NOT NULL,--企业类型
	[QYRS]  int  NOT NULL,--企业人数
	[QYZCZJ]  nvarchar(50)  NOT NULL,--企业注册资金
	[QYCZ]  nvarchar(50)  NOT NULL,--企业传真
	[QYFZR]  nvarchar(36)  NOT NULL,--企业负责人
	[FZRZW]  nvarchar(50)  NOT NULL,--负责人职位
	[FZRLXDH]  nvarchar(30)  NOT NULL,--负责人联系电话
	[QYYXDZ]  nvarchar(50)  NOT NULL,--企业邮箱地址
	[QYQQ]  nvarchar(50)  NOT NULL,--企业QQ
	[QYMSN]  nvarchar(50)  NOT NULL,--企业MSN
	[QYWZ]  nvarchar(50)  NOT NULL,--企业网址
	[QYJJ]  text  NOT NULL,--企业简介
	[SHZT]  int  NOT NULL,--审核状态
CONSTRAINT [PK_EDU_ZZJX_07_01_XWSXJDXX] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--学生校外实习情况数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_07_03_XSXWSXQK]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_07_03_XSXWSXQK](
	[SCHOOLID]  int  NOT NULL,--学校名
	[ID]  int  NOT NULL,--实习情况表ID
	[XSXXID]  int  NOT NULL,--学生信息ID
	[QYID]  int  NOT NULL,--企业表ID
	[GWID]  int  NOT NULL,--岗位表ID
	[SXQSRQ]  nvarchar(8)  NOT NULL,--受训起始日期
	[SXJSRQ]  nvarchar(8)  NULL,--受训结束日期
	[QYBH]  nvarchar(20)  NOT NULL,--企业编号
	[SXGWMC]  nvarchar(50)  NULL,--受训岗位名称
	[SXDS]  nvarchar(36)  NULL,--实训导师
	[SFGMSXZRBX]  nvarchar(1)  NOT NULL,--是否购买实习责任保险
	[BXFZFZ]  nvarchar(50)  NULL,--保险费支付者
	[SXXC]  money  NULL,--实习薪酬
	[SFSDGSX]  nvarchar(1)  NOT NULL,--是否是顶岗实习
	[XSHJXZM]  nvarchar(1)  NOT NULL,--学生户籍性质码
CONSTRAINT [PK_EDU_ZZJX_07_03_XSXWSXQK] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[ID] ASC,
	[SXQSRQ] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--实习奖惩表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_07_A11_SXJC]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_07_A11_SXJC](
	[ID]  int  NOT NULL,--奖惩信息ID
	[SCHOOLID]  int  NOT NULL,--学校ID
	[SXJHID]  int  NOT NULL,--实习计划ID
	[XSXXID]  int  NOT NULL,--学生信息ID
	[JCLX]  int  NOT NULL,--奖惩类型
	[JCRQ]  datetime  NOT NULL,--奖惩日期
	[CLJG]  nvarchar(300)  NOT NULL,--处理结果
	[BZ]  nvarchar(300)  NOT NULL,--备注
	[TJR]  int  NOT NULL,--添加人
CONSTRAINT [PK_EDU_ZZJX_07_A11_SXJC] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--实习鉴定表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_07_A10_SXJD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_07_A10_SXJD](
	[ID]  int  NOT NULL,--实习鉴定信息ID
	[SCHOOLID]  int  NOT NULL,--学校ID
	[SXJHID]  int  NOT NULL,--实习计划ID
	[XSXXID]  int  NOT NULL,--学生信息ID
	[JDNR]  text  NOT NULL,--鉴定内容
	[SXDWYJ]  text  NOT NULL,--实习单位意见
	[BJYJ]  text  NOT NULL,--班级意见
	[XXYJ]  text  NOT NULL,--学校意见
CONSTRAINT [PK_EDU_ZZJX_07_A10_SXJD] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--实习日志表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_07_A09_SXRZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_07_A09_SXRZ](
	[ID]  int  NOT NULL,--实习日志ID
	[SCHOOLID]  int  NOT NULL,--学校ID
	[XSXXID]  int  NOT NULL,--学生信息ID
	[SXJHID]  int  NOT NULL,--实习计划ID
	[SXJDID]  int  NOT NULL,--实习阶段ID
	[SXZYID]  int  NOT NULL,--实习周/月表ID
	[RZBT]  nvarchar(50)  NOT NULL,--日志标题
	[NR]  text  NOT NULL,--内容
CONSTRAINT [PK_EDU_ZZJX_07_A09_SXRZ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--实习投诉表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_07_A08_SXTS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_07_A08_SXTS](
	[ID]  int  NOT NULL,--实习投诉ID
	[SCHOOLID]  int  NOT NULL,--学校ID
	[QYID]  int  NOT NULL,--企业ID
	[SXJHID]  int  NOT NULL,--实习计划ID
	[XSXXID]  int  NOT NULL,--投诉学生ID
	[TSSJ]  datetime  NOT NULL,--投诉时间
	[TSYY]  nvarchar(300)  NOT NULL,--投诉原因
	[TSJG]  nvarchar(300)  NOT NULL,--投诉结果
	[QYJY]  nvarchar(300)  NOT NULL,--企业建议
CONSTRAINT [PK_EDU_ZZJX_07_A08_SXTS] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--实习转岗表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_07_A07_SXZG]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_07_A07_SXZG](
	[ID]  int  NOT NULL,--实习转岗ID
	[SCHOOLID]  int  NOT NULL,--学校ID
	[XSXXID]  int  NOT NULL,--申请学生ID
	[ZCGW]  int  NOT NULL,--转出岗位ID
	[ZCGWQY]  int  NOT NULL,--转出岗位企业ID
	[ZRGW]  int  NOT NULL,--转入岗位ID
	[ZRGWQY]  int  NOT NULL,--转入岗位企业ID
	[BZRSH]  int  NOT NULL,--班主任审核
	[ZCQYSH]  int  NOT NULL,--转出企业审核
	[ZRQYSH]  int  NOT NULL,--转入企业审核
	[JYCSH]  int  NOT NULL,--就业处审核
CONSTRAINT [PK_EDU_ZZJX_07_A07_SXZG] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--校企互动表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_07_A06_XQHD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_07_A06_XQHD](
	[ID]  int  NOT NULL,--校企互动信息ID
	[SCHOOLID]  int  NOT NULL,--学校ID
	[QYID]  int  NOT NULL,--企业ID
	[XXJY]  nvarchar(300)  NOT NULL,--企业对学校工作建议
	[XSJY]  nvarchar(300)  NOT NULL,--企业对学生职业技能建议
	[GLJY]  nvarchar(300)  NOT NULL,--实习生管理工作的建议
	[QTJY]  nvarchar(300)  NOT NULL,--其他建议
	[FKNR]  nvarchar(300)  NOT NULL,--反馈内容
	[FKSJ]  datetime  NOT NULL,--反馈时间
CONSTRAINT [PK_EDU_ZZJX_07_A06_XQHD] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--学生应聘表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_07_A05_XSYP]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_07_A05_XSYP](
	[ID]  int  NOT NULL,--学生应聘信息ID
	[SCHOOLID]  int  NOT NULL,--学校ID
	[XSXXID]  int  NOT NULL,--学生信息ID
	[QYID]  int  NOT NULL,--企业ID
	[GWID]  int  NOT NULL,--实习岗位ID
	[XXSH]  int  NOT NULL,--学校审核
	[QYSH]  int  NOT NULL,--企业审核
CONSTRAINT [PK_EDU_ZZJX_07_A05_XSYP] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--实习岗位表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_07_A04_SXGW]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_07_A04_SXGW](
	[ID]  int  NOT NULL,--实习岗位ID
	[SCHOOLID]  int  NOT NULL,--学校ID
	[QYID]  int  NOT NULL,--企业ID
	[GWMC]  nvarchar(50)  NOT NULL,--岗位名称
	[QYMC]  int  NOT NULL,--企业名称
	[ZPKSSJ]  datetime  NOT NULL,--招聘开始时间
	[ZPJSSJ]  datetime  NOT NULL,--招聘结束时间
	[GZXS]  int  NOT NULL,--工作形式
	[XBYQ]  nvarchar(50)  NOT NULL,--性别要求
	[GWXC]  nvarchar(50)  NOT NULL,--岗位薪酬
	[WYYQ]  nvarchar(50)  NOT NULL,--外语要求
	[GZDD]  nvarchar(50)  NOT NULL,--工作地点
	[JSJSP]  nvarchar(50)  NOT NULL,--计算机水平
	[ZPRS]  int  NOT NULL,--招聘人数
	[XLYQ]  nvarchar(50)  NOT NULL,--学历要求
	[ZYYQ]  nvarchar(50)  NOT NULL,--专业要求
	[NLYQ]  int  NOT NULL,--年龄要求
	[GWJJ]  nvarchar(50)  NOT NULL,--岗位简介
	[JBQK]  nvarchar(50)  NOT NULL,--基本情况
	[GZJY]  nvarchar(50)  NOT NULL,--工作经验
	[SHZT]  int  NOT NULL,--审核状态
	[GWZT]  int  NOT NULL,--岗位状态
CONSTRAINT [PK_EDU_ZZJX_07_A04_SXGW] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--学校实习周/月表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_07_A03_XXSXZY]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_07_A03_XXSXZY](
	[ID]  int  NOT NULL,--实习周/月ID
	[SCHOOLID]  int  NOT NULL,--学校ID
	[SXJHID]  int  NOT NULL,--实习计划ID
	[SXJDID]  int  NOT NULL,--实习阶段ID
	[MC]  nvarchar(30)  NOT NULL,--名称
	[KSSJ]  datetime  NOT NULL,--开始时间
	[JSSJ]  datetime  NOT NULL,--结束时间
	[LX]  int  NOT NULL,--类型
CONSTRAINT [PK_EDU_ZZJX_07_A03_XXSXZY] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--学校实习阶段表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_07_A02_XXSXJD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_07_A02_XXSXJD](
	[ID]  int  NOT NULL,--实习阶段ID
	[SCHOOLID]  int  NOT NULL,--学校ID
	[SXJHID]  int  NOT NULL,--实习计划ID
	[JDM]  nvarchar(30)  NOT NULL,--阶段名
	[JDKSSJ]  datetime  NOT NULL,--阶段开始时间
	[JDJSSJ]  datetime  NOT NULL,--阶段结束时间
CONSTRAINT [PK_EDU_ZZJX_07_A02_XXSXJD] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--学校实习计划表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_07_A01_XXSXJH]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_07_A01_XXSXJH](
	[ID]  int  NOT NULL,--实习计划ID
	[SCHOOLID]  int  NOT NULL,--学校ID
	[JHBT]  nvarchar(30)  NOT NULL,--计划标题
	[NJ]  nvarchar(10)  NOT NULL,--年级
	[BGXS]  int  NOT NULL,--报告形式
	[SFSX]  nvarchar(1)  NOT NULL,--计划是否生效
CONSTRAINT [PK_EDU_ZZJX_07_A01_XXSXJH] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--代管费收取表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_08_A01_DGFSQ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_08_A01_DGFSQ](
	[SCHOOLID]  int  NOT NULL,--学校ID
	[XSXXID]  int  NOT NULL,--学生ID
	[XNID]  int  NOT NULL,--学年ID
	[YJJE]  money  NOT NULL,--已缴金额
	[JFRQ]  nvarchar(8)  NULL,--缴费日期
	[SFYSH]  nvarchar(1)  NOT NULL,--是否已审核
	[SHRID]  int  NULL,--审核人员ID
CONSTRAINT [PK_EDU_ZZJX_08_A01_DGFSQ] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[XSXXID] ASC,
	[XNID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--调课申请数据表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_09_A01_TKSQSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_09_A01_TKSQSJ](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校ID
	[JSID]  int  NOT NULL,--教师
	[KCID]  nvarchar(6)  NOT NULL,--课程
	[TKLXID]  int  NOT NULL,--调课类型ID
	[TKQQSZ]  int  NOT NULL,--调课前起始周
	[TKQJSZ]  int  NOT NULL,--调课前结束周
	[TKQXQ]  int  NOT NULL,--调课前星期
	[TKQSD]  int  NOT NULL,--调课前时段
	[TKQJC]  int  NOT NULL,--调课前节次
	[TKHQSZ]  int  NOT NULL,--调课后起始周
	[TKHJSZ]  int  NOT NULL,--调课后结束周
	[TKHXQ]  int  NOT NULL,--调课后星期
	[TKHSD]  int  NOT NULL,--调课后时段
	[TKHJC]  int  NOT NULL,--调课后节次
	[ZT]  int  NOT NULL,--当前状态
	[BZ]  text  NOT NULL,--备注
CONSTRAINT [PK_EDU_ZZJX_09_A01_TKSQSJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--以下为添加注释语句
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校班级数据表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_02_02_ZZBJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'行政班代码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_02_02_ZZBJ', @level2type=N'COLUMN',@level2name=N'XZBDM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_02_02_ZZBJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'专业基本信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_02_02_ZZBJ', @level2type=N'COLUMN',@level2name=N'ZYXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校年级数据表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_02_02_ZZBJ', @level2type=N'COLUMN',@level2name=N'ZZNJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'行政班名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_02_02_ZZBJ', @level2type=N'COLUMN',@level2name=N'XZBMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建班年月' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_02_02_ZZBJ', @level2type=N'COLUMN',@level2name=N'JBNY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'班主任工号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_02_02_ZZBJ', @level2type=N'COLUMN',@level2name=N'BZRGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教室编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_02_02_ZZBJ', @level2type=N'COLUMN',@level2name=N'JSBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'男生人数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_02_02_ZZBJ', @level2type=N'COLUMN',@level2name=N'NANSRS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'女生人数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_02_02_ZZBJ', @level2type=N'COLUMN',@level2name=N'NVSRS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'总人数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_02_02_ZZBJ', @level2type=N'COLUMN',@level2name=N'ZRS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'班长学号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_02_02_ZZBJ', @level2type=N'COLUMN',@level2name=N'BZXH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教学计划' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_02_02_ZZBJ', @level2type=N'COLUMN',@level2name=N'JXJH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'机构号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_02_02_ZZBJ', @level2type=N'COLUMN',@level2name=N'JGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'校区代码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_02_02_ZZBJ', @level2type=N'COLUMN',@level2name=N'XQDM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校年级数据表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_02_01_ZZNJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'年级代码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_02_01_ZZNJ', @level2type=N'COLUMN',@level2name=N'NJDM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_02_01_ZZNJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'年级名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_02_01_ZZNJ', @level2type=N'COLUMN',@level2name=N'NJMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属年份' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_02_01_ZZNJ', @level2type=N'COLUMN',@level2name=N'SSNF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'年级状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_02_01_ZZNJ', @level2type=N'COLUMN',@level2name=N'NJZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'专业基本信息数据表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_01_ZYXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'专业编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_01_ZYXX', @level2type=N'COLUMN',@level2name=N'ZYBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_01_ZYXX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'专业代码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_01_ZYXX', @level2type=N'COLUMN',@level2name=N'ZYDM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'专业名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_01_ZYXX', @level2type=N'COLUMN',@level2name=N'ZYMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'专业英文名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_01_ZYXX', @level2type=N'COLUMN',@level2name=N'ZYYWMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学制' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_01_ZYXX', @level2type=N'COLUMN',@level2name=N'XZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'专业方向名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_01_ZYXX', @level2type=N'COLUMN',@level2name=N'ZYFXMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'专业简称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_01_ZYXX', @level2type=N'COLUMN',@level2name=N'ZYJC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建立年月' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_01_ZYXX', @level2type=N'COLUMN',@level2name=N'JLNY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'专业教师数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_01_ZYXX', @level2type=N'COLUMN',@level2name=N'ZYJSS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开设机构号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_01_ZYXX', @level2type=N'COLUMN',@level2name=N'KSJGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'总学分' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_01_ZYXX', @level2type=N'COLUMN',@level2name=N'ZXF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属专业目录' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_01_ZYXX', @level2type=N'COLUMN',@level2name=N'SSZYML'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'专业类别名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_01_ZYXX', @level2type=N'COLUMN',@level2name=N'ZYLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教师教学工作量统计数据子类表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_05_02_JSJXGZLTJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_05_02_JSJXGZLTJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教师ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_05_02_JSJXGZLTJ', @level2type=N'COLUMN',@level2name=N'JSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学期ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_05_02_JSJXGZLTJ', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学期名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_05_02_JSJXGZLTJ', @level2type=N'COLUMN',@level2name=N'XQMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教师姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_05_02_JSJXGZLTJ', @level2type=N'COLUMN',@level2name=N'JSXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'任教课程门数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_05_02_JSJXGZLTJ', @level2type=N'COLUMN',@level2name=N'RJKCMS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'理论总学时' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_05_02_JSJXGZLTJ', @level2type=N'COLUMN',@level2name=N'LLZXS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实践总学时' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_05_02_JSJXGZLTJ', @level2type=N'COLUMN',@level2name=N'SJZXS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'其他总学时' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_05_02_JSJXGZLTJ', @level2type=N'COLUMN',@level2name=N'QTZXS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生总数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_05_02_JSJXGZLTJ', @level2type=N'COLUMN',@level2name=N'XSZS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'总学分数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_05_02_JSJXGZLTJ', @level2type=N'COLUMN',@level2name=N'ZXFS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学期学分管理表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_A01_XQXFGL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_A01_XQXFGL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学期ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_A01_XQXFGL', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'计划编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_A01_XQXFGL', @level2type=N'COLUMN',@level2name=N'JHBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最高学分' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_A01_XQXFGL', @level2type=N'COLUMN',@level2name=N'ZDXF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最低学分' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_A01_XQXFGL', @level2type=N'COLUMN',@level2name=N'ZGXF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教学计划课程清单数据子类表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_03_JXJHKCQD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_03_JXJHKCQD', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_03_JXJHKCQD', @level2type=N'COLUMN',@level2name=N'KCH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'计划编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_03_JXJHKCQD', @level2type=N'COLUMN',@level2name=N'JHBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学期ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_03_JXJHKCQD', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_03_JXJHKCQD', @level2type=N'COLUMN',@level2name=N'KCMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'预修课程' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_03_JXJHKCQD', @level2type=N'COLUMN',@level2name=N'YXKC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否核心（骨干）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_03_JXJHKCQD', @level2type=N'COLUMN',@level2name=N'SFHXKC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程分类码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_03_JXJHKCQD', @level2type=N'COLUMN',@level2name=N'KCFLM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程属性码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_03_JXJHKCQD', @level2type=N'COLUMN',@level2name=N'KCSXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'执行学期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_03_JXJHKCQD', @level2type=N'COLUMN',@level2name=N'ZXXQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教学计划分类学分要求数据子类' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_02_JXJHFLXFYQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_02_JXJHFLXFYQ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程分类码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_02_JXJHFLXFYQ', @level2type=N'COLUMN',@level2name=N'KCFLM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学分要求' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_02_JXJHFLXFYQ', @level2type=N'COLUMN',@level2name=N'XFYQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'计划编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_02_JXJHFLXFYQ', @level2type=N'COLUMN',@level2name=N'JHBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'总体教学计划数据子类表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_01_ZTJXJH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_01_ZTJXJH', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'计划编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_01_ZTJXJH', @level2type=N'COLUMN',@level2name=N'JHBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'计划年级' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_01_ZTJXJH', @level2type=N'COLUMN',@level2name=N'JHNJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'专业编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_01_ZTJXJH', @level2type=N'COLUMN',@level2name=N'ZYXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'计划专业名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_01_ZTJXJH', @level2type=N'COLUMN',@level2name=N'JHZYMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'总学分要求' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_01_ZTJXJH', @level2type=N'COLUMN',@level2name=N'ZXFYQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建立年月' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_01_ZTJXJH', @level2type=N'COLUMN',@level2name=N'JLNY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'适用学制' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_01_ZTJXJH', @level2type=N'COLUMN',@level2name=N'SYXZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'培养目标' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_01_ZTJXJH', @level2type=N'COLUMN',@level2name=N'PYMB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否可用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_01_ZTJXJH', @level2type=N'COLUMN',@level2name=N'SFKY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'附件' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_01_ZTJXJH', @level2type=N'COLUMN',@level2name=N'FJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教师任课表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_A02_JSRK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_A02_JSRK', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_A02_JSRK', @level2type=N'COLUMN',@level2name=N'KXH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教师表ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_A02_JSRK', @level2type=N'COLUMN',@level2name=N'JSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_A02_JSRK', @level2type=N'COLUMN',@level2name=N'KCH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'计划编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_A02_JSRK', @level2type=N'COLUMN',@level2name=N'JHBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学期ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_A02_JSRK', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教学大纲' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_A02_JSRK', @level2type=N'COLUMN',@level2name=N'JXDG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程评价表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_A01_KCPJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_A01_KCPJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'评价ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_A01_KCPJ', @level2type=N'COLUMN',@level2name=N'PJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_A01_KCPJ', @level2type=N'COLUMN',@level2name=N'KXH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'评价人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_A01_KCPJ', @level2type=N'COLUMN',@level2name=N'PJR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'评价时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_A01_KCPJ', @level2type=N'COLUMN',@level2name=N'PJSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'评价内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_A01_KCPJ', @level2type=N'COLUMN',@level2name=N'PJNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'回复' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_A01_KCPJ', @level2type=N'COLUMN',@level2name=N'HF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程数据子类表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_02_KC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_02_KC', @level2type=N'COLUMN',@level2name=N'KCH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_02_KC', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_02_KC', @level2type=N'COLUMN',@level2name=N'KCMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程英文名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_02_KC', @level2type=N'COLUMN',@level2name=N'KCYWM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程别名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_02_KC', @level2type=N'COLUMN',@level2name=N'KCBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程介绍' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_02_KC', @level2type=N'COLUMN',@level2name=N'KCJS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学分' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_02_KC', @level2type=N'COLUMN',@level2name=N'XF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'总学时' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_02_KC', @level2type=N'COLUMN',@level2name=N'ZXS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'理论学时' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_02_KC', @level2type=N'COLUMN',@level2name=N'LLXS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实践学时' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_02_KC', @level2type=N'COLUMN',@level2name=N'SJXS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'其他学时' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_02_KC', @level2type=N'COLUMN',@level2name=N'QTXS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'参考书目' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_02_KC', @level2type=N'COLUMN',@level2name=N'CKSM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开课单位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_02_KC', @level2type=N'COLUMN',@level2name=N'KKDW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'考试形式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_02_KC', @level2type=N'COLUMN',@level2name=N'KSXS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'授课方式码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_02_KC', @level2type=N'COLUMN',@level2name=N'SKFSM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程费用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_02_KC', @level2type=N'COLUMN',@level2name=N'KCFY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'校外实习基地信息数据子类表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_01_XWSXJDXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_01_XWSXJDXX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'企业表ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_01_XWSXJDXX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'企业编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_01_XWSXJDXX', @level2type=N'COLUMN',@level2name=N'QYBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'基地合作合同编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_01_XWSXJDXX', @level2type=N'COLUMN',@level2name=N'JDHZHTBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'基地合作合同名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_01_XWSXJDXX', @level2type=N'COLUMN',@level2name=N'JDHZHTMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'基地类别码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_01_XWSXJDXX', @level2type=N'COLUMN',@level2name=N'JDLBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单位名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_01_XWSXJDXX', @level2type=N'COLUMN',@level2name=N'DWMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'企业行政区' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_01_XWSXJDXX', @level2type=N'COLUMN',@level2name=N'QYXZQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'企业地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_01_XWSXJDXX', @level2type=N'COLUMN',@level2name=N'QYDZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'企业性质' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_01_XWSXJDXX', @level2type=N'COLUMN',@level2name=N'QYXZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'法人代表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_01_XWSXJDXX', @level2type=N'COLUMN',@level2name=N'FRDB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'企业联系人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_01_XWSXJDXX', @level2type=N'COLUMN',@level2name=N'QYLXR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'企业邮政编码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_01_XWSXJDXX', @level2type=N'COLUMN',@level2name=N'QYYZBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'企业联系电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_01_XWSXJDXX', @level2type=N'COLUMN',@level2name=N'QYLXDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'企业营业执照' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_01_XWSXJDXX', @level2type=N'COLUMN',@level2name=N'QYYYZZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'企业类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_01_XWSXJDXX', @level2type=N'COLUMN',@level2name=N'QYLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'企业人数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_01_XWSXJDXX', @level2type=N'COLUMN',@level2name=N'QYRS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'企业注册资金' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_01_XWSXJDXX', @level2type=N'COLUMN',@level2name=N'QYZCZJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'企业传真' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_01_XWSXJDXX', @level2type=N'COLUMN',@level2name=N'QYCZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'企业负责人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_01_XWSXJDXX', @level2type=N'COLUMN',@level2name=N'QYFZR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'负责人职位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_01_XWSXJDXX', @level2type=N'COLUMN',@level2name=N'FZRZW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'负责人联系电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_01_XWSXJDXX', @level2type=N'COLUMN',@level2name=N'FZRLXDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'企业邮箱地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_01_XWSXJDXX', @level2type=N'COLUMN',@level2name=N'QYYXDZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'企业QQ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_01_XWSXJDXX', @level2type=N'COLUMN',@level2name=N'QYQQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'企业MSN' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_01_XWSXJDXX', @level2type=N'COLUMN',@level2name=N'QYMSN'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'企业网址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_01_XWSXJDXX', @level2type=N'COLUMN',@level2name=N'QYWZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'企业简介' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_01_XWSXJDXX', @level2type=N'COLUMN',@level2name=N'QYJJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_01_XWSXJDXX', @level2type=N'COLUMN',@level2name=N'SHZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生校外实习情况数据子类表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_03_XSXWSXQK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_03_XSXWSXQK', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实习情况表ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_03_XSXWSXQK', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生信息ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_03_XSXWSXQK', @level2type=N'COLUMN',@level2name=N'XSXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'企业表ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_03_XSXWSXQK', @level2type=N'COLUMN',@level2name=N'QYID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'岗位表ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_03_XSXWSXQK', @level2type=N'COLUMN',@level2name=N'GWID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'受训起始日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_03_XSXWSXQK', @level2type=N'COLUMN',@level2name=N'SXQSRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'受训结束日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_03_XSXWSXQK', @level2type=N'COLUMN',@level2name=N'SXJSRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'企业编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_03_XSXWSXQK', @level2type=N'COLUMN',@level2name=N'QYBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'受训岗位名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_03_XSXWSXQK', @level2type=N'COLUMN',@level2name=N'SXGWMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实训导师' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_03_XSXWSXQK', @level2type=N'COLUMN',@level2name=N'SXDS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否购买实习责任保险' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_03_XSXWSXQK', @level2type=N'COLUMN',@level2name=N'SFGMSXZRBX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'保险费支付者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_03_XSXWSXQK', @level2type=N'COLUMN',@level2name=N'BXFZFZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实习薪酬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_03_XSXWSXQK', @level2type=N'COLUMN',@level2name=N'SXXC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否是顶岗实习' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_03_XSXWSXQK', @level2type=N'COLUMN',@level2name=N'SFSDGSX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生户籍性质码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_03_XSXWSXQK', @level2type=N'COLUMN',@level2name=N'XSHJXZM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实习奖惩表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A11_SXJC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'奖惩信息ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A11_SXJC', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A11_SXJC', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实习计划ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A11_SXJC', @level2type=N'COLUMN',@level2name=N'SXJHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生信息ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A11_SXJC', @level2type=N'COLUMN',@level2name=N'XSXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'奖惩类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A11_SXJC', @level2type=N'COLUMN',@level2name=N'JCLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'奖惩日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A11_SXJC', @level2type=N'COLUMN',@level2name=N'JCRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'处理结果' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A11_SXJC', @level2type=N'COLUMN',@level2name=N'CLJG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A11_SXJC', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A11_SXJC', @level2type=N'COLUMN',@level2name=N'TJR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实习鉴定表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A10_SXJD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实习鉴定信息ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A10_SXJD', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A10_SXJD', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实习计划ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A10_SXJD', @level2type=N'COLUMN',@level2name=N'SXJHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生信息ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A10_SXJD', @level2type=N'COLUMN',@level2name=N'XSXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'鉴定内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A10_SXJD', @level2type=N'COLUMN',@level2name=N'JDNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实习单位意见' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A10_SXJD', @level2type=N'COLUMN',@level2name=N'SXDWYJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'班级意见' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A10_SXJD', @level2type=N'COLUMN',@level2name=N'BJYJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校意见' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A10_SXJD', @level2type=N'COLUMN',@level2name=N'XXYJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实习日志表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A09_SXRZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实习日志ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A09_SXRZ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A09_SXRZ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生信息ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A09_SXRZ', @level2type=N'COLUMN',@level2name=N'XSXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实习计划ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A09_SXRZ', @level2type=N'COLUMN',@level2name=N'SXJHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实习阶段ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A09_SXRZ', @level2type=N'COLUMN',@level2name=N'SXJDID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实习周/月表ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A09_SXRZ', @level2type=N'COLUMN',@level2name=N'SXZYID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'日志标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A09_SXRZ', @level2type=N'COLUMN',@level2name=N'RZBT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A09_SXRZ', @level2type=N'COLUMN',@level2name=N'NR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实习投诉表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A08_SXTS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实习投诉ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A08_SXTS', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A08_SXTS', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'企业ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A08_SXTS', @level2type=N'COLUMN',@level2name=N'QYID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实习计划ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A08_SXTS', @level2type=N'COLUMN',@level2name=N'SXJHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'投诉学生ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A08_SXTS', @level2type=N'COLUMN',@level2name=N'XSXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'投诉时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A08_SXTS', @level2type=N'COLUMN',@level2name=N'TSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'投诉原因' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A08_SXTS', @level2type=N'COLUMN',@level2name=N'TSYY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'投诉结果' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A08_SXTS', @level2type=N'COLUMN',@level2name=N'TSJG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'企业建议' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A08_SXTS', @level2type=N'COLUMN',@level2name=N'QYJY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实习转岗表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A07_SXZG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实习转岗ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A07_SXZG', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A07_SXZG', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请学生ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A07_SXZG', @level2type=N'COLUMN',@level2name=N'XSXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'转出岗位ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A07_SXZG', @level2type=N'COLUMN',@level2name=N'ZCGW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'转出岗位企业ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A07_SXZG', @level2type=N'COLUMN',@level2name=N'ZCGWQY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'转入岗位ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A07_SXZG', @level2type=N'COLUMN',@level2name=N'ZRGW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'转入岗位企业ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A07_SXZG', @level2type=N'COLUMN',@level2name=N'ZRGWQY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'班主任审核' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A07_SXZG', @level2type=N'COLUMN',@level2name=N'BZRSH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'转出企业审核' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A07_SXZG', @level2type=N'COLUMN',@level2name=N'ZCQYSH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'转入企业审核' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A07_SXZG', @level2type=N'COLUMN',@level2name=N'ZRQYSH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'就业处审核' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A07_SXZG', @level2type=N'COLUMN',@level2name=N'JYCSH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'校企互动表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A06_XQHD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'校企互动信息ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A06_XQHD', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A06_XQHD', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'企业ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A06_XQHD', @level2type=N'COLUMN',@level2name=N'QYID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'企业对学校工作建议' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A06_XQHD', @level2type=N'COLUMN',@level2name=N'XXJY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'企业对学生职业技能建议' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A06_XQHD', @level2type=N'COLUMN',@level2name=N'XSJY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实习生管理工作的建议' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A06_XQHD', @level2type=N'COLUMN',@level2name=N'GLJY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'其他建议' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A06_XQHD', @level2type=N'COLUMN',@level2name=N'QTJY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'反馈内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A06_XQHD', @level2type=N'COLUMN',@level2name=N'FKNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'反馈时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A06_XQHD', @level2type=N'COLUMN',@level2name=N'FKSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生应聘表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A05_XSYP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生应聘信息ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A05_XSYP', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A05_XSYP', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生信息ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A05_XSYP', @level2type=N'COLUMN',@level2name=N'XSXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'企业ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A05_XSYP', @level2type=N'COLUMN',@level2name=N'QYID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实习岗位ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A05_XSYP', @level2type=N'COLUMN',@level2name=N'GWID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校审核' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A05_XSYP', @level2type=N'COLUMN',@level2name=N'XXSH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'企业审核' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A05_XSYP', @level2type=N'COLUMN',@level2name=N'QYSH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实习岗位表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A04_SXGW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实习岗位ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A04_SXGW', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A04_SXGW', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'企业ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A04_SXGW', @level2type=N'COLUMN',@level2name=N'QYID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'岗位名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A04_SXGW', @level2type=N'COLUMN',@level2name=N'GWMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'企业名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A04_SXGW', @level2type=N'COLUMN',@level2name=N'QYMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'招聘开始时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A04_SXGW', @level2type=N'COLUMN',@level2name=N'ZPKSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'招聘结束时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A04_SXGW', @level2type=N'COLUMN',@level2name=N'ZPJSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工作形式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A04_SXGW', @level2type=N'COLUMN',@level2name=N'GZXS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'性别要求' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A04_SXGW', @level2type=N'COLUMN',@level2name=N'XBYQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'岗位薪酬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A04_SXGW', @level2type=N'COLUMN',@level2name=N'GWXC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'外语要求' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A04_SXGW', @level2type=N'COLUMN',@level2name=N'WYYQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工作地点' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A04_SXGW', @level2type=N'COLUMN',@level2name=N'GZDD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'计算机水平' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A04_SXGW', @level2type=N'COLUMN',@level2name=N'JSJSP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'招聘人数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A04_SXGW', @level2type=N'COLUMN',@level2name=N'ZPRS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学历要求' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A04_SXGW', @level2type=N'COLUMN',@level2name=N'XLYQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'专业要求' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A04_SXGW', @level2type=N'COLUMN',@level2name=N'ZYYQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'年龄要求' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A04_SXGW', @level2type=N'COLUMN',@level2name=N'NLYQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'岗位简介' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A04_SXGW', @level2type=N'COLUMN',@level2name=N'GWJJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'基本情况' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A04_SXGW', @level2type=N'COLUMN',@level2name=N'JBQK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工作经验' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A04_SXGW', @level2type=N'COLUMN',@level2name=N'GZJY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A04_SXGW', @level2type=N'COLUMN',@level2name=N'SHZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'岗位状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A04_SXGW', @level2type=N'COLUMN',@level2name=N'GWZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校实习周/月表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A03_XXSXZY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实习周/月ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A03_XXSXZY', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A03_XXSXZY', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实习计划ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A03_XXSXZY', @level2type=N'COLUMN',@level2name=N'SXJHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实习阶段ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A03_XXSXZY', @level2type=N'COLUMN',@level2name=N'SXJDID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A03_XXSXZY', @level2type=N'COLUMN',@level2name=N'MC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开始时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A03_XXSXZY', @level2type=N'COLUMN',@level2name=N'KSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'结束时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A03_XXSXZY', @level2type=N'COLUMN',@level2name=N'JSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A03_XXSXZY', @level2type=N'COLUMN',@level2name=N'LX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校实习阶段表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A02_XXSXJD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实习阶段ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A02_XXSXJD', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A02_XXSXJD', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实习计划ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A02_XXSXJD', @level2type=N'COLUMN',@level2name=N'SXJHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'阶段名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A02_XXSXJD', @level2type=N'COLUMN',@level2name=N'JDM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'阶段开始时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A02_XXSXJD', @level2type=N'COLUMN',@level2name=N'JDKSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'阶段结束时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A02_XXSXJD', @level2type=N'COLUMN',@level2name=N'JDJSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校实习计划表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A01_XXSXJH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实习计划ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A01_XXSXJH', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A01_XXSXJH', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'计划标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A01_XXSXJH', @level2type=N'COLUMN',@level2name=N'JHBT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'年级' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A01_XXSXJH', @level2type=N'COLUMN',@level2name=N'NJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'报告形式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A01_XXSXJH', @level2type=N'COLUMN',@level2name=N'BGXS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'计划是否生效' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A01_XXSXJH', @level2type=N'COLUMN',@level2name=N'SFSX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'代管费收取表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_08_A01_DGFSQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_08_A01_DGFSQ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_08_A01_DGFSQ', @level2type=N'COLUMN',@level2name=N'XSXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学年ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_08_A01_DGFSQ', @level2type=N'COLUMN',@level2name=N'XNID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'已缴金额' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_08_A01_DGFSQ', @level2type=N'COLUMN',@level2name=N'YJJE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'缴费日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_08_A01_DGFSQ', @level2type=N'COLUMN',@level2name=N'JFRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否已审核' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_08_A01_DGFSQ', @level2type=N'COLUMN',@level2name=N'SFYSH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核人员ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_08_A01_DGFSQ', @level2type=N'COLUMN',@level2name=N'SHRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'调课申请数据表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_09_A01_TKSQSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_09_A01_TKSQSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_09_A01_TKSQSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教师' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_09_A01_TKSQSJ', @level2type=N'COLUMN',@level2name=N'JSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_09_A01_TKSQSJ', @level2type=N'COLUMN',@level2name=N'KCID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'调课类型ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_09_A01_TKSQSJ', @level2type=N'COLUMN',@level2name=N'TKLXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'调课前起始周' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_09_A01_TKSQSJ', @level2type=N'COLUMN',@level2name=N'TKQQSZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'调课前结束周' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_09_A01_TKSQSJ', @level2type=N'COLUMN',@level2name=N'TKQJSZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'调课前星期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_09_A01_TKSQSJ', @level2type=N'COLUMN',@level2name=N'TKQXQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'调课前时段' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_09_A01_TKSQSJ', @level2type=N'COLUMN',@level2name=N'TKQSD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'调课前节次' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_09_A01_TKSQSJ', @level2type=N'COLUMN',@level2name=N'TKQJC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'调课后起始周' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_09_A01_TKSQSJ', @level2type=N'COLUMN',@level2name=N'TKHQSZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'调课后结束周' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_09_A01_TKSQSJ', @level2type=N'COLUMN',@level2name=N'TKHJSZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'调课后星期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_09_A01_TKSQSJ', @level2type=N'COLUMN',@level2name=N'TKHXQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'调课后时段' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_09_A01_TKSQSJ', @level2type=N'COLUMN',@level2name=N'TKHSD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'调课后节次' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_09_A01_TKSQSJ', @level2type=N'COLUMN',@level2name=N'TKHJC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'当前状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_09_A01_TKSQSJ', @level2type=N'COLUMN',@level2name=N'ZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_09_A01_TKSQSJ', @level2type=N'COLUMN',@level2name=N'BZ'
GO
--空间名：EDU_ZZXS  生成器：SqlBuilder0.1

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZXS_07_01_XJSJ')
            and   type = 'U')
   drop table EDU_ZZXS_07_01_XJSJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZXS_02_A02_XSJTJJ')
            and   type = 'U')
   drop table EDU_ZZXS_02_A02_XSJTJJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZXS_02_A01_XSLXR')
            and   type = 'U')
   drop table EDU_ZZXS_02_A01_XSLXR
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZXS_02_02_XSJTCY')
            and   type = 'U')
   drop table EDU_ZZXS_02_02_XSJTCY
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZXS_02_01_XSJTXX')
            and   type = 'U')
   drop table EDU_ZZXS_02_01_XSJTXX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZXS_01_A01_XSXX')
            and   type = 'U')
   drop table EDU_ZZXS_01_A01_XSXX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZXS_01_01_XSXX')
            and   type = 'U')
   drop table EDU_ZZXS_01_01_XSXX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZXS_07_03_XSZCXX')
            and   type = 'U')
   drop table EDU_ZZXS_07_03_XSZCXX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZXS_07_02_XJYD')
            and   type = 'U')
   drop table EDU_ZZXS_07_02_XJYD
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZXS_06_01_XSCJ')
            and   type = 'U')
   drop table EDU_ZZXS_06_01_XSCJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZXS_13_A01_XSJL')
            and   type = 'U')
   drop table EDU_ZZXS_13_A01_XSJL
go
--学籍基本数据表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZXS_07_01_XJSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZXS_07_01_XJSJ](
	[XSXXID]  int  NOT NULL,--学生信息数据表
	[SCHOOLID]  int  NOT NULL,--学校名
	[ZYXXID]  int  NOT NULL,--专业基本信息
	[ZZBJID]  nvarchar(10)  NOT NULL,--学校班级数据表
	[ZZNJID]  nvarchar(4)  NOT NULL,--学校年级数据表
	[RXNY]  nvarchar(6)  NOT NULL,--入学年月
	[XSLBM]  nvarchar(5)  NOT NULL,--学生类别码
	[XZ]  nvarchar(20)  NOT NULL,--学制
	[ZYM]  nvarchar(6)  NULL,--专业码
	[XSDQZTM]  nvarchar(2)  NOT NULL,--学生当前状态码
CONSTRAINT [PK_EDU_ZZXS_07_01_XJSJ] PRIMARY KEY CLUSTERED
(
	[XSXXID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--学生家庭经济情况数据表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZXS_02_A02_XSJTJJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZXS_02_A02_XSJTJJ](
	[XSXXID]  int  NOT NULL,--学生信息数据表
	[SCHOOLID]  int  NOT NULL,--学校名
	[SYRK]  decimal(2, 0)  NULL,--赡养人口
	[LDLRK]  decimal(2, 0)  NULL,--劳动力人口
	[JTRJYSR]  money  NOT NULL,--家庭人均月收入
	[JTLBM]  nvarchar(1)  NULL,--家庭类别码
	[KNYYM]  nvarchar(1)  NULL,--困难原因码
	[KNCDM]  nvarchar(2)  NULL,--困难程度码
	[SFDB]  nvarchar(1)  NULL,--是否低保
	[RXQHKLBM]  nvarchar(1)  NULL,--入学前户口类别码
	[JXDDBX]  money  NULL,--就学地低保线
CONSTRAINT [PK_EDU_ZZXS_02_A02_XSJTJJ] PRIMARY KEY CLUSTERED
(
	[XSXXID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--学生联系人数据表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZXS_02_A01_XSLXR]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZXS_02_A01_XSLXR](
	[ID]  int  identity,--编号
	[SCHOOLID]  int  NOT NULL,--学校名
	[XSXXID]  int  NOT NULL,--学生信息数据表
	[GXM]  nvarchar(2)  NOT NULL,--关系码
	[LXRXM]  nvarchar(36)  NOT NULL,--联系人姓名
	[YZBM]  nvarchar(6)  NULL,--邮政编码
	[TXDZ]  nvarchar(180)  NULL,--通信地址
	[DH]  nvarchar(30)  NOT NULL,--电话
	[YDDH]  nvarchar(30)  NULL,--移动电话
	[CZDH]  nvarchar(60)  NULL,--传真电话
	[DZXX]  nvarchar(40)  NULL,--电子信箱
	[WLDZ]  nvarchar(60)  NULL,--网络地址
	[JSTXH]  nvarchar(40)  NULL,--即时通讯号
CONSTRAINT [PK_EDU_ZZXS_02_A01_XSLXR] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--学生家庭成员数据表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZXS_02_02_XSJTCY]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZXS_02_02_XSJTCY](
	[ID]  int  identity,--编号
	[SCHOOLID]  int  NOT NULL,--学校名
	[XSXXID]  int  NOT NULL,--学生信息数据表
	[XM]  nvarchar(36)  NOT NULL,--姓名
	[GXM]  nvarchar(2)  NOT NULL,--关系码
	[JTCYZYM]  nvarchar(3)  NOT NULL,--家庭成员职业码
	[SZDW]  nvarchar(60)  NULL,--所在单位
	[ZZMMM]  nvarchar(2)  NULL,--政治面貌码
	[DH]  nvarchar(30)  NULL,--电话
	[YDDH]  nvarchar(30)  NULL,--移动电话
CONSTRAINT [PK_EDU_ZZXS_02_02_XSJTCY] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--学生家庭信息数据表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZXS_02_01_XSJTXX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZXS_02_01_XSJTXX](
	[XSXXID]  int  NOT NULL,--学生信息数据表
	[SCHOOLID]  int  NOT NULL,--学校名
	[JTZZ]  nvarchar(180)  NOT NULL,--家庭住址
	[JTYZBM]  nvarchar(6)  NOT NULL,--家庭邮政编码
	[JTDH]  nvarchar(30)  NULL,--家庭电话
	[JTLXR]  nvarchar(36)  NOT NULL,--家庭联系人
	[JTDZXX]  nvarchar(40)  NULL,--家庭电子信箱
	[JTRK]  int  NULL,--家庭人口
	[JTZYSRLY]  nvarchar(180)  NULL,--家庭主要收入来源
	[JTYSRJE]  money  NULL,--家庭月收入金额
	[JTNSRJE]  money  NULL,--家庭年收入金额
	[LJZJHCZ]  nvarchar(30)  NULL,--离家最近火车站
CONSTRAINT [PK_EDU_ZZXS_02_01_XSJTXX] PRIMARY KEY CLUSTERED
(
	[XSXXID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--学生扩展数据表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZXS_01_A01_XSXX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZXS_01_A01_XSXX](
	[XSXXID]  int  NOT NULL,--学生信息数据表
	[SCHOOLID]  int  NOT NULL,--学校名
	[ZYXXID]  int  NOT NULL,--专业基本信息
	[XNID]  int  NOT NULL,--学年
	[ZZXQID]  int  NOT NULL,--学期表
	[JTDZQH]  nvarchar(6)  NULL,--家庭地址区划码
	[JTXXDZ]  nvarchar(50)  NULL,--家庭详细地址
	[HJXXDZ]  nvarchar(50)  NULL,--户籍详细地址
	[HJXZ]  nvarchar(1)  NULL,--户籍性质代码
	[BYJX]  nvarchar(1)  NULL,--不宜军训
	[CSBZR]  nvarchar(10)  NULL,--初三班主任
	[DRZW]  text  NULL,--曾担任何种职务
	[YYDR]  text  NULL,--愿意担任班干部，何职
	[BZ]  text  NULL,--备注
	[BYLX]  nvarchar(1)  NOT NULL,--毕业生类型
	[XSLX]  nvarchar(5)  NOT NULL,--学生类型
	[SFZS]  nvarchar(1)  NOT NULL,--是否住宿
	[XSBMSJ]  nvarchar(8)  NULL,--学生报名时间
CONSTRAINT [PK_EDU_ZZXS_01_A01_XSXX] PRIMARY KEY CLUSTERED
(
	[XSXXID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--学生信息数据表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZXS_01_01_XSXX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZXS_01_01_XSXX](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校名
	[XH]  nvarchar(30)  NOT NULL,--学号
	[XM]  nvarchar(36)  NOT NULL,--姓名
	[YWXM]  nvarchar(60)  NULL,--英文姓名
	[XMPY]  nvarchar(60)  NOT NULL,--姓名拼音
	[CYM]  nvarchar(36)  NULL,--曾用名
	[SFZJLXM]  nvarchar(1)  NOT NULL,--身份证件类型码
	[SFZJH]  nvarchar(20)  NOT NULL,--身份证件号
	[XBM]  nvarchar(1)  NOT NULL,--性别码
	[XXM]  nvarchar(1)  NULL,--血型码
	[CSRQ]  nvarchar(8)  NOT NULL,--出生日期
	[CSDM]  nvarchar(6)  NOT NULL,--出生地码
	[JG]  nvarchar(20)  NOT NULL,--籍贯
	[MZM]  nvarchar(2)  NOT NULL,--民族码
	[HYZKM]  nvarchar(2)  NOT NULL,--婚姻状况码
	[XYZJM]  nvarchar(2)  NULL,--信仰宗教码
	[GATQWM]  nvarchar(2)  NULL,--港澳台侨外码
	[JKZKM]  nvarchar(1)  NULL,--健康状况码
	[ZZMMM]  nvarchar(2)  NOT NULL,--政治面貌码
	[HKSZDXZQHM]  nvarchar(6)  NOT NULL,--户口所在地行政区划码
	[HKLBM]  nvarchar(1)  NOT NULL,--户口类别码
	[SFSLDRK]  nvarchar(1)  NOT NULL,--是否是流动人口
	[GJDQM]  nvarchar(3)  NULL,--国籍/地区
	[TC]  text  NULL,--特长
	[XSLXDH]  nvarchar(30)  NULL,--学生联系电话
	[WLDZ]  nvarchar(60)  NULL,--网络地址
	[JSTXH]  nvarchar(40)  NULL,--即时通讯号
	[DZXX]  nvarchar(40)  NULL,--电子信箱
	[ZP]  nvarchar(100)  NULL,--照片(路径)
CONSTRAINT [PK_EDU_ZZXS_01_01_XSXX] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--学生注册信息数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZXS_07_03_XSZCXX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZXS_07_03_XSZCXX](
	[XSXXID]  int  NOT NULL,--学生ID
	[SCHOOLID]  int  NOT NULL,--学校ID
	[XQID]  int  NOT NULL,--学期ID
	[ZCZKM]  nvarchar(1)  NOT NULL,--注册状况码
	[ZCRQ]  nvarchar(8)  NOT NULL,--注册日期
	[BDRQ]  nvarchar(8)  NOT NULL,--报到日期
	[WZCYY]  nvarchar(100)  NOT NULL,--未注册原因
	[WZCWBDQX]  nvarchar(40)  NOT NULL,--未注册/未报到去向
	[SFQJ]  nvarchar(1)  NOT NULL,--是否请假
	[WASZCXQM]  nvarchar(1)  NOT NULL,--未按时注册学期码
CONSTRAINT [PK_EDU_ZZXS_07_03_XSZCXX] PRIMARY KEY CLUSTERED
(
	[XSXXID] ASC,
	[SCHOOLID] ASC,
	[XQID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--学籍异动数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZXS_07_02_XJYD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZXS_07_02_XJYD](
	[ID]  int  NOT NULL,--学籍异动表编号
	[XSXXID]  int  NOT NULL,--学生ID
	[SCHOOLID]  int  NOT NULL,--学校ID
	[YDLBM]  nvarchar(2)  NOT NULL,--异动类别码
	[YDRQ]  nvarchar(8)  NOT NULL,--异动日期
	[YDYYM]  nvarchar(2)  NOT NULL,--异动原因码
	[SPRQ]  nvarchar(8)  NULL,--审批日期
	[SPWH]  nvarchar(24)  NULL,--审批文号
	[JBRID]  int  NULL,--经办人ID
	[JBRGH]  nvarchar(20)  NULL,--经办人工号
	[YDLYXXM]  nvarchar(10)  NULL,--异动来源学校码
	[YDQXXXM]  nvarchar(10)  NULL,--异动去向学校码
	[YDSM]  text  NULL,--异动说明
	[YZYM]  nvarchar(6)  NULL,--原专业码
	[YZYID]  int  NOT NULL,--原专业ID
	[YBH]  nvarchar(10)  NOT NULL,--原班号
	[YNJ]  nvarchar(4)  NOT NULL,--原年级
	[XZYM]  nvarchar(6)  NULL,--现专业码
	[XZYID]  int  NOT NULL,--现专业ID
	[XBH]  nvarchar(10)  NOT NULL,--现班号
	[XNJ]  nvarchar(4)  NOT NULL,--现年级
CONSTRAINT [PK_EDU_ZZXS_07_02_XJYD] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--学生成绩数据类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZXS_06_01_XSCJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZXS_06_01_XSCJ](
	[XSXXID]  int  NOT NULL,--学生ID
	[SCHOOLID]  int  NOT NULL,--学校ID
	[KCH]  nvarchar(6)  NOT NULL,--课程号
	[XQID]  int  NOT NULL,--学期ID
	[KCMC]  nvarchar(100)  NOT NULL,--课程名称
	[XF]  decimal(2, 1)  NOT NULL,--学分
	[XQMC]  nvarchar(10)  NOT NULL,--学期名称
	[PSCJ]  decimal(5, 1)  NULL,--平时成绩
	[CJ]  decimal(5, 1)  NOT NULL,--成绩
	[KSXZ]  nvarchar(2)  NULL,--考试性质
	[RKJGID]  int  NULL,--任课教工ID
	[RKJGH]  nvarchar(20)  NULL,--任课教工号
	[CJLRJGID]  int  NULL,--成绩录入教工ID
	[CJLRJGH]  nvarchar(20)  NULL,--成绩录入教工号
	[CJLRRQ]  nvarchar(8)  NOT NULL,--成绩录入日期
	[QZCJ]  decimal(5, 1)  NULL,--期中成绩
	[QMCJ]  decimal(5, 1)  NULL,--期末成绩
CONSTRAINT [PK_EDU_ZZXS_06_01_XSCJ] PRIMARY KEY CLUSTERED
(
	[XSXXID] ASC,
	[SCHOOLID] ASC,
	[KCH] ASC,
	[XQID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--学生简历表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZXS_13_A01_XSJL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZXS_13_A01_XSJL](
	[SCHOOLID]  int  NOT NULL,--学校ID
	[XSXXID]  int  NOT NULL,--学生信息ID
	[YYNL]  nvarchar(50)  NOT NULL,--英语能力
	[GZNX]  int  NOT NULL,--工作年限
	[ZWPJ]  nvarchar(300)  NOT NULL,--自我评价
	[JYJL]  nvarchar(200)  NOT NULL,--教育经历
	[SHZS]  nvarchar(200)  NOT NULL,--所获证书
	[GZJY]  nvarchar(500)  NOT NULL,--工作经验
	[QZYX]  nvarchar(200)  NOT NULL,--求职意向
	[JNZC]  nvarchar(300)  NOT NULL,--技能专长
	[XMJY]  nvarchar(600)  NOT NULL,--项目经验
CONSTRAINT [PK_EDU_ZZXS_13_A01_XSJL] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[XSXXID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--以下为添加注释语句
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学籍基本数据表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_01_XJSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生信息数据表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_01_XJSJ', @level2type=N'COLUMN',@level2name=N'XSXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_01_XJSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'专业基本信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_01_XJSJ', @level2type=N'COLUMN',@level2name=N'ZYXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校班级数据表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_01_XJSJ', @level2type=N'COLUMN',@level2name=N'ZZBJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校年级数据表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_01_XJSJ', @level2type=N'COLUMN',@level2name=N'ZZNJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'入学年月' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_01_XJSJ', @level2type=N'COLUMN',@level2name=N'RXNY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生类别码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_01_XJSJ', @level2type=N'COLUMN',@level2name=N'XSLBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学制' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_01_XJSJ', @level2type=N'COLUMN',@level2name=N'XZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'专业码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_01_XJSJ', @level2type=N'COLUMN',@level2name=N'ZYM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生当前状态码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_01_XJSJ', @level2type=N'COLUMN',@level2name=N'XSDQZTM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生家庭经济情况数据表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_A02_XSJTJJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生信息数据表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_A02_XSJTJJ', @level2type=N'COLUMN',@level2name=N'XSXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_A02_XSJTJJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'赡养人口' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_A02_XSJTJJ', @level2type=N'COLUMN',@level2name=N'SYRK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'劳动力人口' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_A02_XSJTJJ', @level2type=N'COLUMN',@level2name=N'LDLRK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'家庭人均月收入' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_A02_XSJTJJ', @level2type=N'COLUMN',@level2name=N'JTRJYSR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'家庭类别码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_A02_XSJTJJ', @level2type=N'COLUMN',@level2name=N'JTLBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'困难原因码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_A02_XSJTJJ', @level2type=N'COLUMN',@level2name=N'KNYYM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'困难程度码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_A02_XSJTJJ', @level2type=N'COLUMN',@level2name=N'KNCDM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否低保' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_A02_XSJTJJ', @level2type=N'COLUMN',@level2name=N'SFDB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'入学前户口类别码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_A02_XSJTJJ', @level2type=N'COLUMN',@level2name=N'RXQHKLBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'就学地低保线' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_A02_XSJTJJ', @level2type=N'COLUMN',@level2name=N'JXDDBX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生联系人数据表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_A01_XSLXR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_A01_XSLXR', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_A01_XSLXR', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生信息数据表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_A01_XSLXR', @level2type=N'COLUMN',@level2name=N'XSXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'关系码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_A01_XSLXR', @level2type=N'COLUMN',@level2name=N'GXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系人姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_A01_XSLXR', @level2type=N'COLUMN',@level2name=N'LXRXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'邮政编码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_A01_XSLXR', @level2type=N'COLUMN',@level2name=N'YZBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'通信地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_A01_XSLXR', @level2type=N'COLUMN',@level2name=N'TXDZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_A01_XSLXR', @level2type=N'COLUMN',@level2name=N'DH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'移动电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_A01_XSLXR', @level2type=N'COLUMN',@level2name=N'YDDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'传真电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_A01_XSLXR', @level2type=N'COLUMN',@level2name=N'CZDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电子信箱' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_A01_XSLXR', @level2type=N'COLUMN',@level2name=N'DZXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'网络地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_A01_XSLXR', @level2type=N'COLUMN',@level2name=N'WLDZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'即时通讯号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_A01_XSLXR', @level2type=N'COLUMN',@level2name=N'JSTXH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生家庭成员数据表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_02_XSJTCY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_02_XSJTCY', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_02_XSJTCY', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生信息数据表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_02_XSJTCY', @level2type=N'COLUMN',@level2name=N'XSXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_02_XSJTCY', @level2type=N'COLUMN',@level2name=N'XM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'关系码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_02_XSJTCY', @level2type=N'COLUMN',@level2name=N'GXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'家庭成员职业码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_02_XSJTCY', @level2type=N'COLUMN',@level2name=N'JTCYZYM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所在单位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_02_XSJTCY', @level2type=N'COLUMN',@level2name=N'SZDW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'政治面貌码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_02_XSJTCY', @level2type=N'COLUMN',@level2name=N'ZZMMM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_02_XSJTCY', @level2type=N'COLUMN',@level2name=N'DH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'移动电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_02_XSJTCY', @level2type=N'COLUMN',@level2name=N'YDDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生家庭信息数据表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_01_XSJTXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生信息数据表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_01_XSJTXX', @level2type=N'COLUMN',@level2name=N'XSXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_01_XSJTXX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'家庭住址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_01_XSJTXX', @level2type=N'COLUMN',@level2name=N'JTZZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'家庭邮政编码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_01_XSJTXX', @level2type=N'COLUMN',@level2name=N'JTYZBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'家庭电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_01_XSJTXX', @level2type=N'COLUMN',@level2name=N'JTDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'家庭联系人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_01_XSJTXX', @level2type=N'COLUMN',@level2name=N'JTLXR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'家庭电子信箱' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_01_XSJTXX', @level2type=N'COLUMN',@level2name=N'JTDZXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'家庭人口' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_01_XSJTXX', @level2type=N'COLUMN',@level2name=N'JTRK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'家庭主要收入来源' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_01_XSJTXX', @level2type=N'COLUMN',@level2name=N'JTZYSRLY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'家庭月收入金额' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_01_XSJTXX', @level2type=N'COLUMN',@level2name=N'JTYSRJE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'家庭年收入金额' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_01_XSJTXX', @level2type=N'COLUMN',@level2name=N'JTNSRJE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'离家最近火车站' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_01_XSJTXX', @level2type=N'COLUMN',@level2name=N'LJZJHCZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生扩展数据表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_A01_XSXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生信息数据表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_A01_XSXX', @level2type=N'COLUMN',@level2name=N'XSXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_A01_XSXX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'专业基本信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_A01_XSXX', @level2type=N'COLUMN',@level2name=N'ZYXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学年' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_A01_XSXX', @level2type=N'COLUMN',@level2name=N'XNID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学期表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_A01_XSXX', @level2type=N'COLUMN',@level2name=N'ZZXQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'家庭地址区划码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_A01_XSXX', @level2type=N'COLUMN',@level2name=N'JTDZQH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'家庭详细地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_A01_XSXX', @level2type=N'COLUMN',@level2name=N'JTXXDZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'户籍详细地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_A01_XSXX', @level2type=N'COLUMN',@level2name=N'HJXXDZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'户籍性质代码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_A01_XSXX', @level2type=N'COLUMN',@level2name=N'HJXZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'不宜军训' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_A01_XSXX', @level2type=N'COLUMN',@level2name=N'BYJX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'初三班主任' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_A01_XSXX', @level2type=N'COLUMN',@level2name=N'CSBZR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'曾担任何种职务' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_A01_XSXX', @level2type=N'COLUMN',@level2name=N'DRZW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'愿意担任班干部，何职' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_A01_XSXX', @level2type=N'COLUMN',@level2name=N'YYDR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_A01_XSXX', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'毕业生类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_A01_XSXX', @level2type=N'COLUMN',@level2name=N'BYLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_A01_XSXX', @level2type=N'COLUMN',@level2name=N'XSLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否住宿' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_A01_XSXX', @level2type=N'COLUMN',@level2name=N'SFZS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生报名时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_A01_XSXX', @level2type=N'COLUMN',@level2name=N'XSBMSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生信息数据表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_01_XSXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'XH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'XM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'英文姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'YWXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'姓名拼音' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'XMPY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'曾用名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'CYM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'身份证件类型码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'SFZJLXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'身份证件号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'SFZJH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'性别码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'XBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'血型码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'XXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'出生日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'CSRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'出生地码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'CSDM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'籍贯' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'JG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'民族码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'MZM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'婚姻状况码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'HYZKM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'信仰宗教码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'XYZJM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'港澳台侨外码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'GATQWM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'健康状况码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'JKZKM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'政治面貌码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'ZZMMM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'户口所在地行政区划码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'HKSZDXZQHM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'户口类别码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'HKLBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否是流动人口' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'SFSLDRK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'国籍/地区' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'GJDQM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'特长' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'TC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生联系电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'XSLXDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'网络地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'WLDZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'即时通讯号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'JSTXH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电子信箱' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'DZXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'照片(路径)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'ZP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生注册信息数据子类表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_03_XSZCXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_03_XSZCXX', @level2type=N'COLUMN',@level2name=N'XSXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_03_XSZCXX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学期ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_03_XSZCXX', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'注册状况码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_03_XSZCXX', @level2type=N'COLUMN',@level2name=N'ZCZKM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'注册日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_03_XSZCXX', @level2type=N'COLUMN',@level2name=N'ZCRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'报到日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_03_XSZCXX', @level2type=N'COLUMN',@level2name=N'BDRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'未注册原因' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_03_XSZCXX', @level2type=N'COLUMN',@level2name=N'WZCYY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'未注册/未报到去向' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_03_XSZCXX', @level2type=N'COLUMN',@level2name=N'WZCWBDQX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否请假' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_03_XSZCXX', @level2type=N'COLUMN',@level2name=N'SFQJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'未按时注册学期码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_03_XSZCXX', @level2type=N'COLUMN',@level2name=N'WASZCXQM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学籍异动数据子类表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_02_XJYD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学籍异动表编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_02_XJYD', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_02_XJYD', @level2type=N'COLUMN',@level2name=N'XSXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_02_XJYD', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'异动类别码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_02_XJYD', @level2type=N'COLUMN',@level2name=N'YDLBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'异动日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_02_XJYD', @level2type=N'COLUMN',@level2name=N'YDRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'异动原因码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_02_XJYD', @level2type=N'COLUMN',@level2name=N'YDYYM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审批日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_02_XJYD', @level2type=N'COLUMN',@level2name=N'SPRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审批文号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_02_XJYD', @level2type=N'COLUMN',@level2name=N'SPWH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'经办人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_02_XJYD', @level2type=N'COLUMN',@level2name=N'JBRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'经办人工号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_02_XJYD', @level2type=N'COLUMN',@level2name=N'JBRGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'异动来源学校码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_02_XJYD', @level2type=N'COLUMN',@level2name=N'YDLYXXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'异动去向学校码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_02_XJYD', @level2type=N'COLUMN',@level2name=N'YDQXXXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'异动说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_02_XJYD', @level2type=N'COLUMN',@level2name=N'YDSM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'原专业码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_02_XJYD', @level2type=N'COLUMN',@level2name=N'YZYM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'原专业ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_02_XJYD', @level2type=N'COLUMN',@level2name=N'YZYID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'原班号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_02_XJYD', @level2type=N'COLUMN',@level2name=N'YBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'原年级' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_02_XJYD', @level2type=N'COLUMN',@level2name=N'YNJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'现专业码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_02_XJYD', @level2type=N'COLUMN',@level2name=N'XZYM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'现专业ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_02_XJYD', @level2type=N'COLUMN',@level2name=N'XZYID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'现班号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_02_XJYD', @level2type=N'COLUMN',@level2name=N'XBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'现年级' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_02_XJYD', @level2type=N'COLUMN',@level2name=N'XNJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生成绩数据类表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_06_01_XSCJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_06_01_XSCJ', @level2type=N'COLUMN',@level2name=N'XSXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_06_01_XSCJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_06_01_XSCJ', @level2type=N'COLUMN',@level2name=N'KCH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学期ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_06_01_XSCJ', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_06_01_XSCJ', @level2type=N'COLUMN',@level2name=N'KCMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学分' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_06_01_XSCJ', @level2type=N'COLUMN',@level2name=N'XF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学期名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_06_01_XSCJ', @level2type=N'COLUMN',@level2name=N'XQMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'平时成绩' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_06_01_XSCJ', @level2type=N'COLUMN',@level2name=N'PSCJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'成绩' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_06_01_XSCJ', @level2type=N'COLUMN',@level2name=N'CJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'考试性质' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_06_01_XSCJ', @level2type=N'COLUMN',@level2name=N'KSXZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'任课教工ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_06_01_XSCJ', @level2type=N'COLUMN',@level2name=N'RKJGID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'任课教工号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_06_01_XSCJ', @level2type=N'COLUMN',@level2name=N'RKJGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'成绩录入教工ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_06_01_XSCJ', @level2type=N'COLUMN',@level2name=N'CJLRJGID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'成绩录入教工号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_06_01_XSCJ', @level2type=N'COLUMN',@level2name=N'CJLRJGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'成绩录入日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_06_01_XSCJ', @level2type=N'COLUMN',@level2name=N'CJLRRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'期中成绩' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_06_01_XSCJ', @level2type=N'COLUMN',@level2name=N'QZCJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'期末成绩' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_06_01_XSCJ', @level2type=N'COLUMN',@level2name=N'QMCJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生简历表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_13_A01_XSJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_13_A01_XSJL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生信息ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_13_A01_XSJL', @level2type=N'COLUMN',@level2name=N'XSXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'英语能力' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_13_A01_XSJL', @level2type=N'COLUMN',@level2name=N'YYNL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工作年限' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_13_A01_XSJL', @level2type=N'COLUMN',@level2name=N'GZNX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自我评价' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_13_A01_XSJL', @level2type=N'COLUMN',@level2name=N'ZWPJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教育经历' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_13_A01_XSJL', @level2type=N'COLUMN',@level2name=N'JYJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所获证书' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_13_A01_XSJL', @level2type=N'COLUMN',@level2name=N'SHZS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工作经验' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_13_A01_XSJL', @level2type=N'COLUMN',@level2name=N'GZJY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'求职意向' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_13_A01_XSJL', @level2type=N'COLUMN',@level2name=N'QZYX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'技能专长' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_13_A01_XSJL', @level2type=N'COLUMN',@level2name=N'JNZC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'项目经验' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_13_A01_XSJL', @level2type=N'COLUMN',@level2name=N'XMJY'
GO
--空间名：EDU_ZZXX  生成器：SqlBuilder0.1

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZXX_03_01_XNJG')
            and   type = 'U')
   drop table EDU_ZZXX_03_01_XNJG
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZXX_01_01_ZZXX')
            and   type = 'U')
   drop table EDU_ZZXX_01_01_ZZXX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZXX_03_A01_JGGW')
            and   type = 'U')
   drop table EDU_ZZXX_03_A01_JGGW
go
--校内机构数据类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZXX_03_01_XNJG]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZXX_03_01_XNJG](
	[JGH]  nvarchar(6)  NOT NULL,--机构号
	[SCHOOLID]  int  NOT NULL,--学校名
	[JGMC]  nvarchar(100)  NOT NULL,--机构名称
	[JGYWMC]  nvarchar(100)  NULL,--机构英文名称
	[JGJC]  nvarchar(50)  NOT NULL,--机构简称
	[JGJP]  nvarchar(20)  NOT NULL,--机构简拼
	[JGDZ]  nvarchar(180)  NOT NULL,--机构地址
	[LSSJJGH]  nvarchar(6)  NOT NULL,--隶属上级机构号
	[LSXQH]  nvarchar(2)  NOT NULL,--隶属校区号
	[JGYXBS]  nvarchar(1)  NOT NULL,--机构有效标识
	[SFST]  nvarchar(1)  NOT NULL,--是否实体
	[JLNY]  nvarchar(6)  NULL,--建立年月
	[JGYZBM]  nvarchar(6)  NULL,--机构邮政编码
	[FZRH]  nvarchar(20)  NOT NULL,--负责人号
CONSTRAINT [PK_EDU_ZZXX_03_01_XNJG] PRIMARY KEY CLUSTERED
(
	[JGH] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--学校基本数据表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZXX_01_01_ZZXX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZXX_01_01_ZZXX](
	[ID]  int  NOT NULL,--编号
	[XXDM]  nvarchar(10)  NOT NULL,--学校代码
	[XXMC]  nvarchar(60)  NOT NULL,--学校名称
	[XXYWMC]  nvarchar(60)  NULL,--学校英文名称
	[XXJBZM]  nvarchar(3)  NOT NULL,--学校举办者码
	[XXZGBMM]  nvarchar(3)  NOT NULL,--学校主管部门码
	[XXDZ]  nvarchar(180)  NOT NULL,--学校地址
	[XXYZBM]  nvarchar(6)  NOT NULL,--学校邮政编码
	[XZQHM]  nvarchar(6)  NOT NULL,--行政区划码
	[JXNY]  nvarchar(6)  NOT NULL,--建校年月
	[XQR]  nvarchar(60)  NOT NULL,--校庆日
	[CLBJ]  text  NULL,--成立背景
	[LSYG]  text  NULL,--历史沿革
	[XXXQS]  decimal(2, 0)  NOT NULL,--学校校区数
	[XXPGLX]  nvarchar(1)  NULL,--学校评估类型
	[XXPGQKSM]  text  NOT NULL,--学校评估情况说明
	[ZYDZ]  nvarchar(60)  NOT NULL,--主页地址
	[FDDBRH]  nvarchar(30)  NOT NULL,--法定代表人号
	[FRZSH]  nvarchar(20)  NOT NULL,--法人证书号
	[LXDH]  nvarchar(30)  NOT NULL,--联系电话
	[CZDH]  nvarchar(30)  NOT NULL,--传真电话
	[DZXX]  nvarchar(40)  NOT NULL,--电子信箱
CONSTRAINT [PK_EDU_ZZXX_01_01_ZZXX] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--机构岗位表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZXX_03_A01_JGGW]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZXX_03_A01_JGGW](
	[ID]  int  NOT NULL,--岗位表ID
	[SCHOOLID]  int  NOT NULL,--学校ID
	[JGH]  nvarchar(6)  NOT NULL,--机构号
	[GWBH]  nvarchar(50)  NOT NULL,--岗位编号
	[GWMC]  nvarchar(50)  NULL,--岗位名称
	[GWSM]  text  NOT NULL,--岗位说明
CONSTRAINT [PK_EDU_ZZXX_03_A01_JGGW] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--以下为添加注释语句
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'校内机构数据类表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_03_01_XNJG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'机构号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_03_01_XNJG', @level2type=N'COLUMN',@level2name=N'JGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_03_01_XNJG', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'机构名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_03_01_XNJG', @level2type=N'COLUMN',@level2name=N'JGMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'机构英文名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_03_01_XNJG', @level2type=N'COLUMN',@level2name=N'JGYWMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'机构简称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_03_01_XNJG', @level2type=N'COLUMN',@level2name=N'JGJC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'机构简拼' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_03_01_XNJG', @level2type=N'COLUMN',@level2name=N'JGJP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'机构地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_03_01_XNJG', @level2type=N'COLUMN',@level2name=N'JGDZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'隶属上级机构号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_03_01_XNJG', @level2type=N'COLUMN',@level2name=N'LSSJJGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'隶属校区号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_03_01_XNJG', @level2type=N'COLUMN',@level2name=N'LSXQH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'机构有效标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_03_01_XNJG', @level2type=N'COLUMN',@level2name=N'JGYXBS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否实体' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_03_01_XNJG', @level2type=N'COLUMN',@level2name=N'SFST'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建立年月' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_03_01_XNJG', @level2type=N'COLUMN',@level2name=N'JLNY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'机构邮政编码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_03_01_XNJG', @level2type=N'COLUMN',@level2name=N'JGYZBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'负责人号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_03_01_XNJG', @level2type=N'COLUMN',@level2name=N'FZRH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校基本数据表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_01_01_ZZXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_01_01_ZZXX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校代码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_01_01_ZZXX', @level2type=N'COLUMN',@level2name=N'XXDM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_01_01_ZZXX', @level2type=N'COLUMN',@level2name=N'XXMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校英文名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_01_01_ZZXX', @level2type=N'COLUMN',@level2name=N'XXYWMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校举办者码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_01_01_ZZXX', @level2type=N'COLUMN',@level2name=N'XXJBZM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校主管部门码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_01_01_ZZXX', @level2type=N'COLUMN',@level2name=N'XXZGBMM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_01_01_ZZXX', @level2type=N'COLUMN',@level2name=N'XXDZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校邮政编码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_01_01_ZZXX', @level2type=N'COLUMN',@level2name=N'XXYZBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'行政区划码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_01_01_ZZXX', @level2type=N'COLUMN',@level2name=N'XZQHM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建校年月' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_01_01_ZZXX', @level2type=N'COLUMN',@level2name=N'JXNY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'校庆日' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_01_01_ZZXX', @level2type=N'COLUMN',@level2name=N'XQR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'成立背景' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_01_01_ZZXX', @level2type=N'COLUMN',@level2name=N'CLBJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'历史沿革' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_01_01_ZZXX', @level2type=N'COLUMN',@level2name=N'LSYG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校校区数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_01_01_ZZXX', @level2type=N'COLUMN',@level2name=N'XXXQS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校评估类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_01_01_ZZXX', @level2type=N'COLUMN',@level2name=N'XXPGLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校评估情况说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_01_01_ZZXX', @level2type=N'COLUMN',@level2name=N'XXPGQKSM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主页地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_01_01_ZZXX', @level2type=N'COLUMN',@level2name=N'ZYDZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'法定代表人号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_01_01_ZZXX', @level2type=N'COLUMN',@level2name=N'FDDBRH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'法人证书号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_01_01_ZZXX', @level2type=N'COLUMN',@level2name=N'FRZSH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_01_01_ZZXX', @level2type=N'COLUMN',@level2name=N'LXDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'传真电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_01_01_ZZXX', @level2type=N'COLUMN',@level2name=N'CZDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电子信箱' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_01_01_ZZXX', @level2type=N'COLUMN',@level2name=N'DZXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'机构岗位表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_03_A01_JGGW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'岗位表ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_03_A01_JGGW', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_03_A01_JGGW', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'机构号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_03_A01_JGGW', @level2type=N'COLUMN',@level2name=N'JGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'岗位编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_03_A01_JGGW', @level2type=N'COLUMN',@level2name=N'GWBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'岗位名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_03_A01_JGGW', @level2type=N'COLUMN',@level2name=N'GWMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'岗位说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_03_A01_JGGW', @level2type=N'COLUMN',@level2name=N'GWSM'
GO
--空间名：EDU_ZZZS  生成器：SqlBuilder0.1

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZZS_02_01_RXCJ')
            and   type = 'U')
   drop table EDU_ZZZS_02_01_RXCJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZZS_01_A01_ZSJH')
            and   type = 'U')
   drop table EDU_ZZZS_01_A01_ZSJH
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZZS_01_01_ZSXX')
            and   type = 'U')
   drop table EDU_ZZZS_01_01_ZSXX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZZS_03_01_KSKMCJ')
            and   type = 'U')
   drop table EDU_ZZZS_03_01_KSKMCJ
go
--入学成绩数据表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZZS_02_01_RXCJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZZS_02_01_RXCJ](
	[XSXXID]  int  NOT NULL,--学生信息数据表
	[SCHOOLID]  int  NOT NULL,--学校名
	[RXZF]  decimal(5, 1)  NULL,--入学总分
	[GKZF]  decimal(5, 1)  NULL,--中考总分
	[FJF]  decimal(5, 1)  NULL,--附加分
	[FJFLBM]  nvarchar(1)  NULL,--附加分类别码
CONSTRAINT [PK_EDU_ZZZS_02_01_RXCJ] PRIMARY KEY CLUSTERED
(
	[XSXXID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--招生计划数据表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZZS_01_A01_ZSJH]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZZS_01_A01_ZSJH](
	[ID]  int  identity,--编号
	[SCHOOLID]  int  NOT NULL,--学校名
	[ZYXXID]  int  NOT NULL,--专业基本信息
	[XNID]  int  NOT NULL,--学年
	[ZSJHRS]  int  NOT NULL,--招生计划
	[BZ]  text  NULL,--备注
CONSTRAINT [PK_EDU_ZZZS_01_A01_ZSJH] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--考生数据表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZZS_01_01_ZSXX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZZS_01_01_ZSXX](
	[XSXXID]  int  NOT NULL,--学生信息数据表
	[SCHOOLID]  int  NOT NULL,--学校名
	[ZKZH]  nvarchar(15)  NOT NULL,--准考证号
	[KSH]  nvarchar(20)  NOT NULL,--考生号
	[KQXZQHM]  nvarchar(6)  NULL,--考区行政区划码
	[RXNY]  nvarchar(6)  NOT NULL,--入学年月
	[YSWGYZM]  nvarchar(2)  NOT NULL,--应试外国语种码
	[BKZYM1]  nvarchar(6)  NULL,--报考专业码1
	[BKZYM2]  nvarchar(6)  NULL,--报考专业码2
	[BKZYM3]  nvarchar(6)  NULL,--报考专业码3
	[BKZYM4]  nvarchar(6)  NULL,--报考专业码4
	[BKZYM5]  nvarchar(6)  NULL,--报考专业码5
	[BKZYM6]  nvarchar(6)  NULL,--报考专业码6
	[KSFSM]  nvarchar(1)  NOT NULL,--考试方式码
	[BYZX]  nvarchar(50)  NOT NULL,--毕业中学
	[BYZXYZBM]  nvarchar(6)  NOT NULL,--毕业中学邮政编码
	[KSTC]  nvarchar(100)  NULL,--考生特长
	[JLYCC]  nvarchar(200)  NULL,--奖励与惩处
	[JSHJ]  nvarchar(200)  NULL,--竞赛获奖
	[SHGZ]  nvarchar(200)  NULL,--社会工作
	[TJJL]  nvarchar(20)  NULL,--体检结论
	[JZBS]  nvarchar(20)  NULL,--家族病史
	[KSJWBS]  nvarchar(200)  NULL,--考生既往病史
	[SG]  decimal(5, 1)  NULL,--身高
	[KSSL]  decimal(3, 1)  NULL,--考生视力
CONSTRAINT [PK_EDU_ZZZS_01_01_ZSXX] PRIMARY KEY CLUSTERED
(
	[XSXXID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--考生科目成绩数据类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZZS_03_01_KSKMCJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZZS_03_01_KSKMCJ](
	[XSXXID]  int  NOT NULL,--考生ID
	[SCHOOLID]  int  NOT NULL,--学校ID
	[KMM]  nvarchar(2)  NOT NULL,--科目码
	[ZKFS]  decimal(5, 1)  NOT NULL,--中考分数
CONSTRAINT [PK_EDU_ZZZS_03_01_KSKMCJ] PRIMARY KEY CLUSTERED
(
	[XSXXID] ASC,
	[SCHOOLID] ASC,
	[KMM] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--以下为添加注释语句
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'入学成绩数据表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_02_01_RXCJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生信息数据表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_02_01_RXCJ', @level2type=N'COLUMN',@level2name=N'XSXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_02_01_RXCJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'入学总分' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_02_01_RXCJ', @level2type=N'COLUMN',@level2name=N'RXZF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中考总分' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_02_01_RXCJ', @level2type=N'COLUMN',@level2name=N'GKZF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'附加分' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_02_01_RXCJ', @level2type=N'COLUMN',@level2name=N'FJF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'附加分类别码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_02_01_RXCJ', @level2type=N'COLUMN',@level2name=N'FJFLBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'招生计划数据表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_A01_ZSJH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_A01_ZSJH', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_A01_ZSJH', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'专业基本信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_A01_ZSJH', @level2type=N'COLUMN',@level2name=N'ZYXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学年' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_A01_ZSJH', @level2type=N'COLUMN',@level2name=N'XNID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'招生计划' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_A01_ZSJH', @level2type=N'COLUMN',@level2name=N'ZSJHRS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_A01_ZSJH', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'考生数据表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_01_ZSXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生信息数据表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_01_ZSXX', @level2type=N'COLUMN',@level2name=N'XSXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_01_ZSXX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'准考证号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_01_ZSXX', @level2type=N'COLUMN',@level2name=N'ZKZH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'考生号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_01_ZSXX', @level2type=N'COLUMN',@level2name=N'KSH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'考区行政区划码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_01_ZSXX', @level2type=N'COLUMN',@level2name=N'KQXZQHM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'入学年月' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_01_ZSXX', @level2type=N'COLUMN',@level2name=N'RXNY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'应试外国语种码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_01_ZSXX', @level2type=N'COLUMN',@level2name=N'YSWGYZM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'报考专业码1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_01_ZSXX', @level2type=N'COLUMN',@level2name=N'BKZYM1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'报考专业码2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_01_ZSXX', @level2type=N'COLUMN',@level2name=N'BKZYM2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'报考专业码3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_01_ZSXX', @level2type=N'COLUMN',@level2name=N'BKZYM3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'报考专业码4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_01_ZSXX', @level2type=N'COLUMN',@level2name=N'BKZYM4'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'报考专业码5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_01_ZSXX', @level2type=N'COLUMN',@level2name=N'BKZYM5'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'报考专业码6' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_01_ZSXX', @level2type=N'COLUMN',@level2name=N'BKZYM6'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'考试方式码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_01_ZSXX', @level2type=N'COLUMN',@level2name=N'KSFSM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'毕业中学' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_01_ZSXX', @level2type=N'COLUMN',@level2name=N'BYZX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'毕业中学邮政编码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_01_ZSXX', @level2type=N'COLUMN',@level2name=N'BYZXYZBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'考生特长' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_01_ZSXX', @level2type=N'COLUMN',@level2name=N'KSTC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'奖励与惩处' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_01_ZSXX', @level2type=N'COLUMN',@level2name=N'JLYCC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'竞赛获奖' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_01_ZSXX', @level2type=N'COLUMN',@level2name=N'JSHJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'社会工作' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_01_ZSXX', @level2type=N'COLUMN',@level2name=N'SHGZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'体检结论' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_01_ZSXX', @level2type=N'COLUMN',@level2name=N'TJJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'家族病史' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_01_ZSXX', @level2type=N'COLUMN',@level2name=N'JZBS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'考生既往病史' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_01_ZSXX', @level2type=N'COLUMN',@level2name=N'KSJWBS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'身高' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_01_ZSXX', @level2type=N'COLUMN',@level2name=N'SG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'考生视力' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_01_ZSXX', @level2type=N'COLUMN',@level2name=N'KSSL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'考生科目成绩数据类表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_03_01_KSKMCJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'考生ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_03_01_KSKMCJ', @level2type=N'COLUMN',@level2name=N'XSXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_03_01_KSKMCJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'科目码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_03_01_KSKMCJ', @level2type=N'COLUMN',@level2name=N'KMM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中考分数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_03_01_KSKMCJ', @level2type=N'COLUMN',@level2name=N'ZKFS'
GO
