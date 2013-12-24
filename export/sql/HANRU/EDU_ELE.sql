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

if exists (select 1 from  sysobjects where  id = object_id('EDU_ELE_01_APPUSER')
            and   type = 'U')
   drop table EDU_ELE_01_APPUSER
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ELE_01_APPDLCS')
            and   type = 'U')
   drop table EDU_ELE_01_APPDLCS
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ELE_02_YHFZ')
            and   type = 'U')
   drop table EDU_ELE_02_YHFZ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ELE_02_YHKJDH')
            and   type = 'U')
   drop table EDU_ELE_02_YHKJDH
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ELE_03_APPRZ')
            and   type = 'U')
   drop table EDU_ELE_03_APPRZ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ELE_03_APPLL')
            and   type = 'U')
   drop table EDU_ELE_03_APPLL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ELE_03_GNFW')
            and   type = 'U')
   drop table EDU_ELE_03_GNFW
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ELE_03_XNJS')
            and   type = 'U')
   drop table EDU_ELE_03_XNJS
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

if exists (select 1 from  sysobjects where  id = object_id('EDU_ELE_06_CDSJ')
            and   type = 'U')
   drop table EDU_ELE_06_CDSJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ELE_07_JFBD')
            and   type = 'U')
   drop table EDU_ELE_07_JFBD
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ELE_07_RYBD')
            and   type = 'U')
   drop table EDU_ELE_07_RYBD
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ELE_08_JFCONFIG')
            and   type = 'U')
   drop table EDU_ELE_08_JFCONFIG
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ELE_08_RYCONFIG')
            and   type = 'U')
   drop table EDU_ELE_08_RYCONFIG
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
	[YHRY]  int  NOT NULL,--用户荣誉
	[YHJF]  int  NOT NULL,--用户积分
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
	[DLCSLB]  text  NOT NULL,--登录参数列表
	[MNDLJS]  text  NOT NULL,--模拟登录JS
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
	[EnableStatus]  int  NOT NULL,--启用状态
	[CreateTime]  datetime  NOT NULL,--开户时间
	[YXTID]  nvarchar(500)  NOT NULL,--翼校通ID
	[LOGO]  nvarchar(500)  NOT NULL,--图标
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

--第三方应用用户表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ELE_01_APPUSER]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ELE_01_APPUSER](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[YHID]  nvarchar(20)  NOT NULL,--用户ID
	[APPID]  int  NOT NULL,--应用ID
	[YHMC]  nvarchar(36)  NOT NULL,--用户名称
	[YHZT]  int  NOT NULL,--用户状态
CONSTRAINT [PK_EDU_ELE_01_APPUSER] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--第三方应用登录参数表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ELE_01_APPDLCS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ELE_01_APPDLCS](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[APPUSERID]  int  NOT NULL,--应用用户ID
	[CSMC]  nvarchar(50)  NOT NULL,--参数名称
	[CSZ]  text  NOT NULL,--参数值
CONSTRAINT [PK_EDU_ELE_01_APPDLCS] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
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

--用户快捷导航表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ELE_02_YHKJDH]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ELE_02_YHKJDH](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校ID
	[MODULEID]  int  NOT NULL,--MODULE表ID
	[LoginName]  nvarchar(20)  NOT NULL,--用户名
	[OrderID]  int  NOT NULL,--序号
	[NAME]  nvarchar(50)  NOT NULL,--显示名称
	[LINK]  text  NOT NULL,--链接
CONSTRAINT [PK_EDU_ELE_02_YHKJDH] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
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
	[ID] ASC
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
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--功能访问表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ELE_03_GNFW]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ELE_03_GNFW](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[APPID]  int  NOT NULL,--应用ID
	[MODULEID]  int  NOT NULL,--功能ID
	[NAME]  nvarchar(20)  NOT NULL,--功能名称
	[LINK]  nvarchar(100)  NOT NULL,--地址
	[FWL]  int  NOT NULL,--访问量
CONSTRAINT [PK_EDU_ELE_03_GNFW] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--性能监视表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ELE_03_XNJS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ELE_03_XNJS](
	[ID]  int  identity,--编号
	[JLSJ]  datetime  NOT NULL,--记录时间
	[CPUSYL]  decimal(5, 2)  NOT NULL,--CPU使用率
	[NCSYL]  decimal(5, 2)  NOT NULL,--内存使用率
	[ZXRS]  int  NOT NULL,--在线人数
	[QQS]  int  NOT NULL,--请求数
CONSTRAINT [PK_EDU_ELE_03_XNJS] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--排课结果记录表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ELE_04_PKJGJL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ELE_04_PKJGJL](
	[ID]  int  NOT NULL,--编号
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
	[SDID]  int  NOT NULL,--所属时段ID
	[MC]  nvarchar(5)  NOT NULL,--名称
CONSTRAINT [PK_EDU_ELE_05_JC] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--场地数据表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ELE_06_CDSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ELE_06_CDSJ](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[CDMC]  nvarchar(200)  NOT NULL,--场地名称
	[CDDZ]  nvarchar(200)  NOT NULL,--场地地址
	[CDLX]  int  NOT NULL,--场地类型
	[CDFZR]  nvarchar(36)  NOT NULL,--场地负责人
CONSTRAINT [PK_EDU_ELE_06_CDSJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--积分变动表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ELE_07_JFBD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ELE_07_JFBD](
	[ID]  int  identity,--编号
	[SCHOOLID]  int  NOT NULL,--学校名
	[APPID]  int  NOT NULL,--应用ID
	[YHID]  nvarchar(20)  NOT NULL,--用户ID
	[BDSJ]  datetime  NOT NULL,--变动时间
	[BDTM]  nvarchar(30)  NOT NULL,--变动条目
	[BDJF]  int  NOT NULL,--变动积分
	[CZXX]  text  NOT NULL,--操作信息
CONSTRAINT [PK_EDU_ELE_07_JFBD] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--荣誉变动表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ELE_07_RYBD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ELE_07_RYBD](
	[ID]  int  identity,--编号
	[SCHOOLID]  int  NOT NULL,--学校名
	[APPID]  int  NOT NULL,--应用ID
	[YHID]  nvarchar(20)  NOT NULL,--用户ID
	[BDSJ]  datetime  NOT NULL,--变动时间
	[BDTM]  nvarchar(30)  NOT NULL,--变动条目
	[BDRY]  int  NOT NULL,--变动荣誉
	[CZXX]  text  NOT NULL,--操作信息
CONSTRAINT [PK_EDU_ELE_07_RYBD] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--积分配置表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ELE_08_JFCONFIG]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ELE_08_JFCONFIG](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校名
	[GNMC]  nvarchar(30)  NOT NULL,--功能名称
	[APPID]  int  NOT NULL,--应用ID
	[JF]  int  NOT NULL,--积分
CONSTRAINT [PK_EDU_ELE_08_JFCONFIG] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--荣誉配置表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ELE_08_RYCONFIG]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ELE_08_RYCONFIG](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校名
	[GNMC]  nvarchar(30)  NOT NULL,--功能名称
	[APPID]  int  NOT NULL,--应用ID
	[RY]  int  NOT NULL,--荣誉
CONSTRAINT [PK_EDU_ELE_08_RYCONFIG] PRIMARY KEY CLUSTERED
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
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户荣誉' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_USER', @level2type=N'COLUMN',@level2name=N'YHRY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户积分' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_USER', @level2type=N'COLUMN',@level2name=N'YHJF'
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
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登录参数列表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_APP', @level2type=N'COLUMN',@level2name=N'DLCSLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'模拟登录JS' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_APP', @level2type=N'COLUMN',@level2name=N'MNDLJS'
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
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'启用状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_SCHOOL', @level2type=N'COLUMN',@level2name=N'EnableStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开户时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_SCHOOL', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'翼校通ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_SCHOOL', @level2type=N'COLUMN',@level2name=N'YXTID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图标' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_SCHOOL', @level2type=N'COLUMN',@level2name=N'LOGO'
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
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'第三方应用用户表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_APPUSER'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_APPUSER', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_APPUSER', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_APPUSER', @level2type=N'COLUMN',@level2name=N'YHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'应用ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_APPUSER', @level2type=N'COLUMN',@level2name=N'APPID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_APPUSER', @level2type=N'COLUMN',@level2name=N'YHMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_APPUSER', @level2type=N'COLUMN',@level2name=N'YHZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'第三方应用登录参数表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_APPDLCS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_APPDLCS', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_APPDLCS', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'应用用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_APPDLCS', @level2type=N'COLUMN',@level2name=N'APPUSERID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'参数名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_APPDLCS', @level2type=N'COLUMN',@level2name=N'CSMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'参数值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_APPDLCS', @level2type=N'COLUMN',@level2name=N'CSZ'
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
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户快捷导航表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_02_YHKJDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_02_YHKJDH', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_02_YHKJDH', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'MODULE表ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_02_YHKJDH', @level2type=N'COLUMN',@level2name=N'MODULEID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_02_YHKJDH', @level2type=N'COLUMN',@level2name=N'LoginName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_02_YHKJDH', @level2type=N'COLUMN',@level2name=N'OrderID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'显示名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_02_YHKJDH', @level2type=N'COLUMN',@level2name=N'NAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'链接' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_02_YHKJDH', @level2type=N'COLUMN',@level2name=N'LINK'
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
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'功能访问表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_03_GNFW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_03_GNFW', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_03_GNFW', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'应用ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_03_GNFW', @level2type=N'COLUMN',@level2name=N'APPID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'功能ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_03_GNFW', @level2type=N'COLUMN',@level2name=N'MODULEID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'功能名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_03_GNFW', @level2type=N'COLUMN',@level2name=N'NAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_03_GNFW', @level2type=N'COLUMN',@level2name=N'LINK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'访问量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_03_GNFW', @level2type=N'COLUMN',@level2name=N'FWL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'性能监视表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_03_XNJS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_03_XNJS', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_03_XNJS', @level2type=N'COLUMN',@level2name=N'JLSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CPU使用率' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_03_XNJS', @level2type=N'COLUMN',@level2name=N'CPUSYL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'内存使用率' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_03_XNJS', @level2type=N'COLUMN',@level2name=N'NCSYL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'在线人数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_03_XNJS', @level2type=N'COLUMN',@level2name=N'ZXRS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'请求数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_03_XNJS', @level2type=N'COLUMN',@level2name=N'QQS'
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
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属时段ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_05_JC', @level2type=N'COLUMN',@level2name=N'SDID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_05_JC', @level2type=N'COLUMN',@level2name=N'MC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'场地数据表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_06_CDSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_06_CDSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_06_CDSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'场地名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_06_CDSJ', @level2type=N'COLUMN',@level2name=N'CDMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'场地地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_06_CDSJ', @level2type=N'COLUMN',@level2name=N'CDDZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'场地类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_06_CDSJ', @level2type=N'COLUMN',@level2name=N'CDLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'场地负责人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_06_CDSJ', @level2type=N'COLUMN',@level2name=N'CDFZR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'积分变动表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_07_JFBD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_07_JFBD', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_07_JFBD', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'应用ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_07_JFBD', @level2type=N'COLUMN',@level2name=N'APPID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_07_JFBD', @level2type=N'COLUMN',@level2name=N'YHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'变动时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_07_JFBD', @level2type=N'COLUMN',@level2name=N'BDSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'变动条目' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_07_JFBD', @level2type=N'COLUMN',@level2name=N'BDTM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'变动积分' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_07_JFBD', @level2type=N'COLUMN',@level2name=N'BDJF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_07_JFBD', @level2type=N'COLUMN',@level2name=N'CZXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'荣誉变动表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_07_RYBD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_07_RYBD', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_07_RYBD', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'应用ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_07_RYBD', @level2type=N'COLUMN',@level2name=N'APPID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_07_RYBD', @level2type=N'COLUMN',@level2name=N'YHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'变动时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_07_RYBD', @level2type=N'COLUMN',@level2name=N'BDSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'变动条目' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_07_RYBD', @level2type=N'COLUMN',@level2name=N'BDTM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'变动荣誉' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_07_RYBD', @level2type=N'COLUMN',@level2name=N'BDRY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_07_RYBD', @level2type=N'COLUMN',@level2name=N'CZXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'积分配置表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_08_JFCONFIG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_08_JFCONFIG', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_08_JFCONFIG', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'功能名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_08_JFCONFIG', @level2type=N'COLUMN',@level2name=N'GNMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'应用ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_08_JFCONFIG', @level2type=N'COLUMN',@level2name=N'APPID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'积分' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_08_JFCONFIG', @level2type=N'COLUMN',@level2name=N'JF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'荣誉配置表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_08_RYCONFIG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_08_RYCONFIG', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_08_RYCONFIG', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'功能名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_08_RYCONFIG', @level2type=N'COLUMN',@level2name=N'GNMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'应用ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_08_RYCONFIG', @level2type=N'COLUMN',@level2name=N'APPID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'荣誉' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_08_RYCONFIG', @level2type=N'COLUMN',@level2name=N'RY'
GO
