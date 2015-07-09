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

if exists (select 1 from  sysobjects where  id = object_id('EDU_ELE_01_HASH')
            and   type = 'U')
   drop table EDU_ELE_01_HASH
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ELE_01_APPUSER')
            and   type = 'U')
   drop table EDU_ELE_01_APPUSER
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ELE_01_APPDLCS')
            and   type = 'U')
   drop table EDU_ELE_01_APPDLCS
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ELE_03_APPRZ')
            and   type = 'U')
   drop table EDU_ELE_03_APPRZ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ELE_03_APPLL')
            and   type = 'U')
   drop table EDU_ELE_03_APPLL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ELE_03_YHSYJL')
            and   type = 'U')
   drop table EDU_ELE_03_YHSYJL
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

if exists (select 1 from  sysobjects where  id = object_id('EDU_ELE_09_JKXX')
            and   type = 'U')
   drop table EDU_ELE_09_JKXX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ELE_10_XZQH')
            and   type = 'U')
   drop table EDU_ELE_10_XZQH
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
	[BMID]  int  NOT NULL,--部门ID
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
	[SYDX]  nvarchar(500)  NULL,--使用对象
	[KJDX]  nvarchar(500)  NULL,--可见对象
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

--系统哈希表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ELE_01_HASH]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ELE_01_HASH](
	[KEY]  nvarchar(200)  NOT NULL,--键
	[SCHOOLID]  int  NOT NULL,--学校ID
	[VALUE]  text  NOT NULL,--值
CONSTRAINT [PK_EDU_ELE_01_HASH] PRIMARY KEY CLUSTERED
(
	[KEY] ASC,
	[SCHOOLID] ASC
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

--用户使用记录表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ELE_03_YHSYJL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ELE_03_YHSYJL](
	[ID]  int  identity,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[APPID]  int  NOT NULL,--应用ID
	[MODULEID]  int  NOT NULL,--功能ID
	[YHID]  nvarchar(20)  NOT NULL,--用户ID
	[GNMC]  nvarchar(50)  NOT NULL,--功能名称
	[LJ]  nvarchar(100)  NOT NULL,--链接
	[SYSJ]  datetime  NOT NULL,--使用时间
	[XHHMS]  int  NOT NULL,--消耗毫秒数
CONSTRAINT [PK_EDU_ELE_03_YHSYJL] PRIMARY KEY CLUSTERED
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
	[CPUSYL]  float  NOT NULL,--CPU使用率
	[NCSYL]  float  NOT NULL,--内存使用率
	[CPDQSD]  float  NOT NULL,--磁盘读取速度
	[CPXRSD]  float  NOT NULL,--磁盘写入速度
	[ZXRS]  int  NOT NULL,--在线人数
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

--接口信息表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ELE_09_JKXX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ELE_09_JKXX](
	[ID]  int  identity,--编号
	[SCHOOLID]  int  NOT NULL,--学校ID
	[JKLB]  nvarchar(30)  NOT NULL,--接口类别
	[JKSM]  nvarchar(50)  NOT NULL,--接口说明
	[CRCS]  nvarchar(50)  NOT NULL,--传入参数
	[TZWZ]  text  NOT NULL,--跳转网址
	[KQZT]  int  NOT NULL,--开启状态
	[FWCS]  int  NOT NULL,--访问次数
	[TJSJ]  datetime  NOT NULL,--添加时间
	[TJYH]  nvarchar(20)  NOT NULL,--添加用户
CONSTRAINT [PK_EDU_ELE_09_JKXX] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--行政区划表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ELE_10_XZQH]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ELE_10_XZQH](
	[DM]  nvarchar(6)  NOT NULL,--代码
	[MC]  nvarchar(15)  NOT NULL,--名称
	[QH]  nvarchar(4)  NOT NULL,--区号
CONSTRAINT [PK_EDU_ELE_10_XZQH] PRIMARY KEY CLUSTERED
(
	[DM] ASC
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
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'部门ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_USER', @level2type=N'COLUMN',@level2name=N'BMID'
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
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'使用对象' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_APP', @level2type=N'COLUMN',@level2name=N'SYDX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'可见对象' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_APP', @level2type=N'COLUMN',@level2name=N'KJDX'
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
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统哈希表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_HASH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_HASH', @level2type=N'COLUMN',@level2name=N'KEY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_HASH', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_HASH', @level2type=N'COLUMN',@level2name=N'VALUE'
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
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户使用记录表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_03_YHSYJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_03_YHSYJL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_03_YHSYJL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'应用ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_03_YHSYJL', @level2type=N'COLUMN',@level2name=N'APPID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'功能ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_03_YHSYJL', @level2type=N'COLUMN',@level2name=N'MODULEID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_03_YHSYJL', @level2type=N'COLUMN',@level2name=N'YHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'功能名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_03_YHSYJL', @level2type=N'COLUMN',@level2name=N'GNMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'链接' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_03_YHSYJL', @level2type=N'COLUMN',@level2name=N'LJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'使用时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_03_YHSYJL', @level2type=N'COLUMN',@level2name=N'SYSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'消耗毫秒数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_03_YHSYJL', @level2type=N'COLUMN',@level2name=N'XHHMS'
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
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'磁盘读取速度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_03_XNJS', @level2type=N'COLUMN',@level2name=N'CPDQSD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'磁盘写入速度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_03_XNJS', @level2type=N'COLUMN',@level2name=N'CPXRSD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'在线人数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_03_XNJS', @level2type=N'COLUMN',@level2name=N'ZXRS'
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
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'接口信息表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_09_JKXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_09_JKXX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_09_JKXX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'接口类别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_09_JKXX', @level2type=N'COLUMN',@level2name=N'JKLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'接口说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_09_JKXX', @level2type=N'COLUMN',@level2name=N'JKSM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'传入参数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_09_JKXX', @level2type=N'COLUMN',@level2name=N'CRCS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'跳转网址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_09_JKXX', @level2type=N'COLUMN',@level2name=N'TZWZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开启状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_09_JKXX', @level2type=N'COLUMN',@level2name=N'KQZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'访问次数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_09_JKXX', @level2type=N'COLUMN',@level2name=N'FWCS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_09_JKXX', @level2type=N'COLUMN',@level2name=N'TJSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_09_JKXX', @level2type=N'COLUMN',@level2name=N'TJYH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'行政区划表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_10_XZQH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'代码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_10_XZQH', @level2type=N'COLUMN',@level2name=N'DM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_10_XZQH', @level2type=N'COLUMN',@level2name=N'MC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'区号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_10_XZQH', @level2type=N'COLUMN',@level2name=N'QH'
GO
--空间名：EDU_OAXT  生成器：SqlBuilder0.1

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

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_08_01_DADJ')
            and   type = 'U')
   drop table EDU_OAXT_08_01_DADJ
go

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

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_10_A04_TZMB')
            and   type = 'U')
   drop table EDU_OAXT_10_A04_TZMB
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_11_A01_YJ')
            and   type = 'U')
   drop table EDU_OAXT_11_A01_YJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_12_A01_SJFB')
            and   type = 'U')
   drop table EDU_OAXT_12_A01_SJFB
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_13_A01_DWSJ')
            and   type = 'U')
   drop table EDU_OAXT_13_A01_DWSJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_14_A01_GRRCXX')
            and   type = 'U')
   drop table EDU_OAXT_14_A01_GRRCXX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_15_A01_ZCML')
            and   type = 'U')
   drop table EDU_OAXT_15_A01_ZCML
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_15_A02_ZCDL')
            and   type = 'U')
   drop table EDU_OAXT_15_A02_ZCDL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_15_A03_ZCKC')
            and   type = 'U')
   drop table EDU_OAXT_15_A03_ZCKC
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_15_A04_ZCRK')
            and   type = 'U')
   drop table EDU_OAXT_15_A04_ZCRK
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_15_A05_ZCJH')
            and   type = 'U')
   drop table EDU_OAXT_15_A05_ZCJH
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_15_A06_ZCBG')
            and   type = 'U')
   drop table EDU_OAXT_15_A06_ZCBG
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_15_A07_BXLX')
            and   type = 'U')
   drop table EDU_OAXT_15_A07_BXLX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_15_A08_BXGL')
            and   type = 'U')
   drop table EDU_OAXT_15_A08_BXGL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_15_A09_WXJH')
            and   type = 'U')
   drop table EDU_OAXT_15_A09_WXJH
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_15_A10_ZCBF')
            and   type = 'U')
   drop table EDU_OAXT_15_A10_ZCBF
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_15_A11_ZCPD')
            and   type = 'U')
   drop table EDU_OAXT_15_A11_ZCPD
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_15_A12_ZCPDMX')
            and   type = 'U')
   drop table EDU_OAXT_15_A12_ZCPDMX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_15_A13_WXJL')
            and   type = 'U')
   drop table EDU_OAXT_15_A13_WXJL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_15_A14_BXGZXX')
            and   type = 'U')
   drop table EDU_OAXT_15_A14_BXGZXX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_20_A01_LCMBLX')
            and   type = 'U')
   drop table EDU_OAXT_20_A01_LCMBLX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_20_A02_LCBDSJ')
            and   type = 'U')
   drop table EDU_OAXT_20_A02_LCBDSJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_20_A03_LCMB')
            and   type = 'U')
   drop table EDU_OAXT_20_A03_LCMB
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_20_A04_LCBZ')
            and   type = 'U')
   drop table EDU_OAXT_20_A04_LCBZ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_20_A05_LCSL')
            and   type = 'U')
   drop table EDU_OAXT_20_A05_LCSL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_20_A06_LCSHJL')
            and   type = 'U')
   drop table EDU_OAXT_20_A06_LCSHJL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_20_A07_LCMBLXPZ')
            and   type = 'U')
   drop table EDU_OAXT_20_A07_LCMBLXPZ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_21_A01_QJLX')
            and   type = 'U')
   drop table EDU_OAXT_21_A01_QJLX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_21_A02_QJSQ')
            and   type = 'U')
   drop table EDU_OAXT_21_A02_QJSQ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_21_A03_QJSQXGJL')
            and   type = 'U')
   drop table EDU_OAXT_21_A03_QJSQXGJL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_22_A01_HYSSJ')
            and   type = 'U')
   drop table EDU_OAXT_22_A01_HYSSJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_22_A02_HYSQ')
            and   type = 'U')
   drop table EDU_OAXT_22_A02_HYSQ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_22_A03_HYSQXGJL')
            and   type = 'U')
   drop table EDU_OAXT_22_A03_HYSQXGJL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_22_A04_HYJY')
            and   type = 'U')
   drop table EDU_OAXT_22_A04_HYJY
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_22_A05_HYBZLX')
            and   type = 'U')
   drop table EDU_OAXT_22_A05_HYBZLX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_22_A06_HYJYMB')
            and   type = 'U')
   drop table EDU_OAXT_22_A06_HYJYMB
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_23_A01_GWSQ')
            and   type = 'U')
   drop table EDU_OAXT_23_A01_GWSQ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_23_A02_GWSQXGJL')
            and   type = 'U')
   drop table EDU_OAXT_23_A02_GWSQXGJL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_24_A01_YCSQ')
            and   type = 'U')
   drop table EDU_OAXT_24_A01_YCSQ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_24_A02_YCSQXGJL')
            and   type = 'U')
   drop table EDU_OAXT_24_A02_YCSQXGJL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_24_A03_CLSJ')
            and   type = 'U')
   drop table EDU_OAXT_24_A03_CLSJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_25_A01_CGSQ')
            and   type = 'U')
   drop table EDU_OAXT_25_A01_CGSQ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_25_A02_CGSQXGJL')
            and   type = 'U')
   drop table EDU_OAXT_25_A02_CGSQXGJL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_26_A01_SYSSJ')
            and   type = 'U')
   drop table EDU_OAXT_26_A01_SYSSJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_26_A02_SYSQC')
            and   type = 'U')
   drop table EDU_OAXT_26_A02_SYSQC
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_26_A03_SYSSQ')
            and   type = 'U')
   drop table EDU_OAXT_26_A03_SYSSQ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_26_A04_SYSSQXGJL')
            and   type = 'U')
   drop table EDU_OAXT_26_A04_SYSSQXGJL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_30_A01_DSJ')
            and   type = 'U')
   drop table EDU_OAXT_30_A01_DSJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_31_A01_GRTXL')
            and   type = 'U')
   drop table EDU_OAXT_31_A01_GRTXL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_32_A01_DCWJ')
            and   type = 'U')
   drop table EDU_OAXT_32_A01_DCWJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_32_A02_DCWJTM')
            and   type = 'U')
   drop table EDU_OAXT_32_A02_DCWJTM
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_32_A03_DCWJTMXX')
            and   type = 'U')
   drop table EDU_OAXT_32_A03_DCWJTMXX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_32_A04_DCWJJL')
            and   type = 'U')
   drop table EDU_OAXT_32_A04_DCWJJL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_33_A01_GWJCXX')
            and   type = 'U')
   drop table EDU_OAXT_33_A01_GWJCXX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_33_A02_GZ')
            and   type = 'U')
   drop table EDU_OAXT_33_A02_GZ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_33_A03_FW')
            and   type = 'U')
   drop table EDU_OAXT_33_A03_FW
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_33_A04_SW')
            and   type = 'U')
   drop table EDU_OAXT_33_A04_SW
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_33_A05_HTWZ')
            and   type = 'U')
   drop table EDU_OAXT_33_A05_HTWZ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_34_A01_WYLCJL')
            and   type = 'U')
   drop table EDU_OAXT_34_A01_WYLCJL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_35_A01_RW')
            and   type = 'U')
   drop table EDU_OAXT_35_A01_RW
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_35_A02_RWJSR')
            and   type = 'U')
   drop table EDU_OAXT_35_A02_RWJSR
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_35_A03_HFJL')
            and   type = 'U')
   drop table EDU_OAXT_35_A03_HFJL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_36_A01_BJGZLB')
            and   type = 'U')
   drop table EDU_OAXT_36_A01_BJGZLB
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_36_A02_BJGZJC')
            and   type = 'U')
   drop table EDU_OAXT_36_A02_BJGZJC
go
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

--档案登记数据表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_08_01_DADJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_08_01_DADJ](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校名
	[QZH]  nvarchar(10)  NOT NULL,--全宗号
	[ND]  nvarchar(4)  NOT NULL,--年度
	[MLH]  nvarchar(5)  NOT NULL,--目录号
	[AJH]  nvarchar(5)  NOT NULL,--案卷号
	[TM]  nvarchar(120)  NOT NULL,--题名
	[ZTC]  text  NOT NULL,--主题词
	[QSRQ]  datetime  NULL,--起始日期
	[JZRQ]  datetime  NULL,--截止日期
	[BGQXM]  nvarchar(1)  NOT NULL,--保管期限码
	[MJM]  nvarchar(1)  NULL,--密级码
	[YS]  decimal(6, 0)  NOT NULL,--页数
	[FS]  decimal(8, 0)  NOT NULL,--份数
	[BZDW]  nvarchar(60)  NULL,--编制单位
	[CFWZ]  nvarchar(60)  NOT NULL,--存放位置
	[DAFLM]  nvarchar(2)  NOT NULL,--档案分类码
CONSTRAINT [PK_EDU_OAXT_08_01_DADJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

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
	[SCZT]  int  NOT NULL,--删除状态
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

--通知模板表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_10_A04_TZMB]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_10_A04_TZMB](
	[ID]  int  identity,--编号
	[SCHOOLID]  int  NOT NULL,--学校ID
	[MBMC]  nvarchar(50)  NOT NULL,--模板名称
	[MBNR]  text  NOT NULL,--模板内容
CONSTRAINT [PK_EDU_OAXT_10_A04_TZMB] PRIMARY KEY CLUSTERED
(
	[ID] ASC
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

--个人日程信息表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_14_A01_GRRCXX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_14_A01_GRRCXX](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[YHID]  nvarchar(20)  NOT NULL,--用户ID
	[BT]  nvarchar(200)  NOT NULL,--标题
	[NR]  text  NOT NULL,--内容
	[KSSJ]  datetime  NOT NULL,--开始时间
	[JSSJ]  datetime  NOT NULL,--结束时间
	[SFTS]  nvarchar(1)  NOT NULL,--是否提示
	[ZT]  int  NOT NULL,--状态
CONSTRAINT [PK_EDU_OAXT_14_A01_GRRCXX] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--资产目录表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_15_A01_ZCML]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_15_A01_ZCML](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[Name]  nvarchar(100)  NOT NULL,--校产目录
	[Superid]  int  NOT NULL,--父目录ID
	[Remark]  nvarchar(100)  NOT NULL,--备注
CONSTRAINT [PK_EDU_OAXT_15_A01_ZCML] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--资产大类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_15_A02_ZCDL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_15_A02_ZCDL](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[Name]  nvarchar(100)  NOT NULL,--校产类型
	[Remark]  nvarchar(100)  NOT NULL,--备注
CONSTRAINT [PK_EDU_OAXT_15_A02_ZCDL] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--资产库存表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_15_A03_ZCKC]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_15_A03_ZCKC](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[TypeID]  int  NOT NULL,--资产目录表ID
	[ClassID]  int  NOT NULL,--资产大类表ID
	[Name]  nvarchar(200)  NOT NULL,--资产名称
	[Info]  nvarchar(200)  NOT NULL,--资产规格
	[Productdate]  datetime  NOT NULL,--出厂时间
	[Price]  decimal(10, 2)  NOT NULL,--单价
	[SumCount]  decimal(8, 2)  NOT NULL,--数量
	[Merchant]  nvarchar(200)  NOT NULL,--供应商
	[Vender]  nvarchar(200)  NOT NULL,--厂家
	[Remark]  nvarchar(100)  NOT NULL,--备注
	[AllCount]  decimal(8, 2)  NOT NULL,--资产总量
	[RKL]  decimal(8, 2)  NOT NULL,--入库量
	[RQ]  datetime  NOT NULL,--日期
	[DW]  nvarchar(100)  NOT NULL,--单位
	[ZJ]  decimal(10, 2)  NOT NULL,--总价
	[SYBM]  nvarchar(100)  NOT NULL,--使用部门
	[CFDW]  nvarchar(200)  NOT NULL,--存放单位
	[FZR]  nvarchar(50)  NOT NULL,--负责人
	[CZFS]  nvarchar(200)  NOT NULL,--处置方式
CONSTRAINT [PK_EDU_OAXT_15_A03_ZCKC] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--资产入库表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_15_A04_ZCRK]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_15_A04_ZCRK](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[TypeID]  int  NOT NULL,--资产目录表ID
	[ClassID]  int  NOT NULL,--资产大类表ID
	[Name]  nvarchar(200)  NOT NULL,--校产名称
	[Info]  nvarchar(200)  NOT NULL,--资产规格
	[Productdate]  datetime  NOT NULL,--出厂时间
	[Price]  decimal(10, 2)  NOT NULL,--单价
	[SumCount]  decimal(8, 2)  NOT NULL,--数量
	[Merchant]  nvarchar(200)  NOT NULL,--供应商
	[Vender]  nvarchar(200)  NOT NULL,--厂家
	[Registdate]  datetime  NOT NULL,--登记时间
	[Remark]  nvarchar(100)  NOT NULL,--备注
	[Status]  int  NOT NULL,--审核状态
	[RQ]  datetime  NOT NULL,--日期
	[DW]  nvarchar(100)  NOT NULL,--单位
	[ZJ]  decimal(10, 2)  NOT NULL,--总价
	[SYBM]  nvarchar(100)  NOT NULL,--使用部门
	[CFDW]  nvarchar(200)  NOT NULL,--存放单位
	[FZR]  nvarchar(50)  NOT NULL,--负责人
	[CZFS]  nvarchar(200)  NOT NULL,--处置方式
CONSTRAINT [PK_EDU_OAXT_15_A04_ZCRK] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--资产借还表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_15_A05_ZCJH]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_15_A05_ZCJH](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[TypeID]  int  NOT NULL,--资产目录表ID
	[ClassID]  int  NOT NULL,--资产大类表ID
	[AID]  int  NOT NULL,--库存表ID
	[SumCount]  decimal(8, 2)  NOT NULL,--数量
	[Unit]  nvarchar(10)  NOT NULL,--单位
	[Borrower]  nvarchar(200)  NOT NULL,--借用方
	[Remark]  nvarchar(100)  NOT NULL,--备注
	[Registdate]  datetime  NOT NULL,--登记时间
CONSTRAINT [PK_EDU_OAXT_15_A05_ZCJH] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--资产变更表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_15_A06_ZCBG]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_15_A06_ZCBG](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[TypeID]  int  NOT NULL,--类别(领用、借用、报损)
	[TypeName]  nvarchar(100)  NOT NULL,--类别名称
	[AID]  int  NOT NULL,--库存表ID
	[Name]  nvarchar(200)  NOT NULL,--资产名称
	[Option]  nvarchar(200)  NOT NULL,--操作
	[RegistTime]  datetime  NOT NULL,--登记时间
	[Remark]  nvarchar(100)  NOT NULL,--备注
	[SumCount]  decimal(8, 2)  NOT NULL,--数量
CONSTRAINT [PK_EDU_OAXT_15_A06_ZCBG] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--报修类型表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_15_A07_BXLX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_15_A07_BXLX](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[TypeName]  nvarchar(50)  NOT NULL,--类型名称
	[Remark]  nvarchar(300)  NOT NULL,--备注
CONSTRAINT [PK_EDU_OAXT_15_A07_BXLX] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--报修管理表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_15_A08_BXGL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_15_A08_BXGL](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[AID]  int  NOT NULL,--库存表ID
	[TypeID]  int  NOT NULL,--报修类型ID
	[Title]  nvarchar(300)  NOT NULL,--报修主题
	[Telephone]  nvarchar(20)  NOT NULL,--联系电话
	[Repairplace]  nvarchar(20)  NOT NULL,--报修地点
	[Repaircontent]  nvarchar(20)  NOT NULL,--报修内容
	[Repairpeople]  nvarchar(20)  NOT NULL,--维修人
	[RepairDate]  datetime  NOT NULL,--维修时间
	[ReadrID]  nvarchar(200)  NOT NULL,--阅读情况
	[Readr]  nvarchar(200)  NOT NULL,--阅读情况
	[Applicant]  nvarchar(20)  NOT NULL,--申请人
	[Approver]  nvarchar(20)  NULL,--审批人
	[Evaluate]  nvarchar(200)  NOT NULL,--评价
	[StartDate]  datetime  NOT NULL,--开始时间
	[Status]  int  NOT NULL,--状态
	[Remark]  nvarchar(300)  NOT NULL,--备注
	[SumCount]  decimal(8, 2)  NOT NULL,--数量
	[GZTP]  text  NOT NULL,--故障图片
	[WCZT]  int  NOT NULL,--完成状态
	[SCZT]  int  NOT NULL,--删除状态
CONSTRAINT [PK_EDU_OAXT_15_A08_BXGL] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--维修计划表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_15_A09_WXJH]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_15_A09_WXJH](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[AID]  int  NOT NULL,--库存表ID
	[Title]  nvarchar(100)  NOT NULL,--计划标题
	[Content]  text  NOT NULL,--维修内容
CONSTRAINT [PK_EDU_OAXT_15_A09_WXJH] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--资产报废表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_15_A10_ZCBF]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_15_A10_ZCBF](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[AID]  int  NOT NULL,--库存表ID
	[Sum]  decimal(8, 2)  NOT NULL,--数量
	[Reporter]  nvarchar(100)  NOT NULL,--申报人
	[Remark]  nvarchar(100)  NOT NULL,--备注
	[RegsterID]  nvarchar(20)  NOT NULL,--登记人ID
	[Statu]  int  NOT NULL,--状态
	[Registdate]  datetime  NOT NULL,--登记时间
CONSTRAINT [PK_EDU_OAXT_15_A10_ZCBF] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--资产盘点表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_15_A11_ZCPD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_15_A11_ZCPD](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[Title]  nvarchar(100)  NOT NULL,--盘点名称
	[PanDate]  datetime  NOT NULL,--盘点日期
	[PanTypeIDs]  text  NOT NULL,--盘点目录ID列表
	[Remark]  text  NOT NULL,--备注
	[Statu]  int  NOT NULL,--状态
CONSTRAINT [PK_EDU_OAXT_15_A11_ZCPD] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--资产盘点明细表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_15_A12_ZCPDMX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_15_A12_ZCPDMX](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[AID]  int  NOT NULL,--库存表ID
	[PID]  int  NOT NULL,--盘点表ID
	[PUserID]  nvarchar(20)  NOT NULL,--盘点人ID
	[Storesum]  decimal(8, 2)  NOT NULL,--库存数
	[RealSum]  decimal(8, 2)  NOT NULL,--实存数
	[Name]  nvarchar(200)  NOT NULL,--资产名称
	[AllCount]  decimal(8, 2)  NOT NULL,--资产总量
	[Remark]  text  NOT NULL,--备注
	[BorrowCount]  decimal(8, 2)  NOT NULL,--借用数量
CONSTRAINT [PK_EDU_OAXT_15_A12_ZCPDMX] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--维修记录表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_15_A13_WXJL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_15_A13_WXJL](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[WPID]  int  NOT NULL,--物品ID
	[WXZT]  int  NOT NULL,--维修状态
	[BZ]  text  NOT NULL,--备注
CONSTRAINT [PK_EDU_OAXT_15_A13_WXJL] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--报修故障信息表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_15_A14_BXGZXX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_15_A14_BXGZXX](
	[ID]  int  identity,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[BXLXID]  int  NOT NULL,--报修类型ID
	[GZXX]  nvarchar(500)  NOT NULL,--故障信息
CONSTRAINT [PK_EDU_OAXT_15_A14_BXGZXX] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--流程模板类型表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_20_A01_LCMBLX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_20_A01_LCMBLX](
	[ID]  int  NOT NULL,--编号
	[LXMC]  nvarchar(100)  NOT NULL,--类型名称
	[BZ]  text  NOT NULL,--备注
CONSTRAINT [PK_EDU_OAXT_20_A01_LCMBLX] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--流程表单数据表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_20_A02_LCBDSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_20_A02_LCBDSJ](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[BDMC]  nvarchar(100)  NOT NULL,--表单名称
	[BDNR]  text  NOT NULL,--表单内容
	[TJSJ]  datetime  NOT NULL,--添加时间
	[BZ]  text  NOT NULL,--备注
CONSTRAINT [PK_EDU_OAXT_20_A02_LCBDSJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--流程模板表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_20_A03_LCMB]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_20_A03_LCMB](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[MBLXID]  int  NOT NULL,--模板类型ID
	[MBMC]  nvarchar(100)  NOT NULL,--模板名称
	[BDID]  int  NOT NULL,--表单ID
	[QSBZID]  int  NOT NULL,--起始步骤ID
	[JSBZID]  int  NOT NULL,--结束步骤ID
	[TJSJ]  datetime  NOT NULL,--添加时间
	[BZ]  text  NOT NULL,--备注
CONSTRAINT [PK_EDU_OAXT_20_A03_LCMB] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--流程步骤表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_20_A04_LCBZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_20_A04_LCBZ](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[BZMC]  nvarchar(100)  NOT NULL,--步骤名称
	[LCMBID]  int  NOT NULL,--流程模板ID
	[SPRIDLB]  text  NOT NULL,--审批人ID列表
	[SPRMCLB]  text  NOT NULL,--审批人名称列表
	[SYBZID]  int  NOT NULL,--上一步骤ID
	[XYBZID]  int  NOT NULL,--下一步骤ID
	[BZ]  text  NOT NULL,--备注
CONSTRAINT [PK_EDU_OAXT_20_A04_LCBZ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--流程实例表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_20_A05_LCSL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_20_A05_LCSL](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[LCMBID]  int  NOT NULL,--流程模板ID
	[SQRID]  nvarchar(20)  NOT NULL,--申请人ID
	[SPRID]  nvarchar(20)  NOT NULL,--审批人ID
	[SQSJ]  datetime  NOT NULL,--申请时间
	[DQBZID]  int  NOT NULL,--当前步骤ID
	[DQBZZXZT]  int  NOT NULL,--当前步骤执行状态
	[YXQ]  datetime  NOT NULL,--有效期
	[SLZT]  int  NOT NULL,--实例状态
	[FJ]  nvarchar(500)  NOT NULL,--附件
	[BZ]  text  NOT NULL,--备注
	[LXID]  int  NOT NULL,--类型ID
	[LXMC]  nvarchar(100)  NULL,--类型名称
CONSTRAINT [PK_EDU_OAXT_20_A05_LCSL] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--流程审核记录表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_20_A06_LCSHJL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_20_A06_LCSHJL](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[LCMBMC]  nvarchar(100)  NOT NULL,--流程模板名称
	[LCSLID]  int  NOT NULL,--流程实例ID
	[BZMC]  nvarchar(100)  NOT NULL,--步骤名称
	[BZID]  int  NOT NULL,--步骤ID
	[LCMBLXID]  int  NOT NULL,--流程模板类型ID
	[SQRID]  nvarchar(20)  NOT NULL,--申请人ID
	[SPRID]  nvarchar(20)  NOT NULL,--审批人ID
	[SHZT]  int  NOT NULL,--审核状态
	[TJSJ]  datetime  NOT NULL,--添加时间
	[BZ]  text  NOT NULL,--备注
CONSTRAINT [PK_EDU_OAXT_20_A06_LCSHJL] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--流程模板类型配置表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_20_A07_LCMBLXPZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_20_A07_LCMBLXPZ](
	[LCMBLXID]  int  NOT NULL,--流程模板类型ID
	[SCHOOLID]  int  NOT NULL,--学校
	[BSYLC]  int  NOT NULL,--不使用流程
CONSTRAINT [PK_EDU_OAXT_20_A07_LCMBLXPZ] PRIMARY KEY CLUSTERED
(
	[LCMBLXID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--请假类型表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_21_A01_QJLX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_21_A01_QJLX](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[LXMC]  nvarchar(50)  NOT NULL,--类型名称
	[BZ]  text  NOT NULL,--备注
	[JSDW]  nvarchar(50)  NOT NULL,--计时单位
	[ZCSJ]  decimal(8, 2)  NOT NULL,--最长时间
CONSTRAINT [PK_EDU_OAXT_21_A01_QJLX] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--请假申请表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_21_A02_QJSQ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_21_A02_QJSQ](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[LCSLID]  int  NOT NULL,--流程实例ID
	[QJLXID]  int  NOT NULL,--请假类型ID
	[QJYY]  nvarchar(300)  NOT NULL,--请假原因
	[KSSJ]  datetime  NOT NULL,--开始时间
	[JSSJ]  datetime  NOT NULL,--结束时间
	[QJTS]  decimal(18, 2)  NOT NULL,--请假天数
	[SQSJ]  datetime  NOT NULL,--申请时间
	[SQZT]  int  NOT NULL,--申请状态
	[SQRID]  nvarchar(20)  NOT NULL,--申请人ID
	[BZ]  text  NOT NULL,--备注
	[BJ]  int  NOT NULL,--补假
	[XJ]  int  NOT NULL,--销假
	[XJRID]  nvarchar(20)  NOT NULL,--销假人ID
	[XJSJ]  datetime  NOT NULL,--销假时间
CONSTRAINT [PK_EDU_OAXT_21_A02_QJSQ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--请假申请修改记录表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_21_A03_QJSQXGJL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_21_A03_QJSQXGJL](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[SQID]  int  NOT NULL,--请假申请表ID
	[XGYHID]  nvarchar(20)  NOT NULL,--修改用户ID
	[XGYHXM]  nvarchar(36)  NOT NULL,--修改用户姓名
	[QJLXID]  int  NOT NULL,--请假类型ID
	[QJLXMC]  nvarchar(200)  NOT NULL,--请假类型名称
	[QJYY]  nvarchar(300)  NOT NULL,--请假原因
	[KSSJ]  datetime  NOT NULL,--开始时间
	[JSSJ]  datetime  NOT NULL,--结束时间
	[QJTS]  decimal(5, 2)  NOT NULL,--请假天数
	[SQSJ]  datetime  NOT NULL,--申请时间
	[SQZT]  int  NOT NULL,--申请状态
	[SQRID]  nvarchar(20)  NOT NULL,--申请人ID
	[BZ]  text  NOT NULL,--备注
	[LCSLID]  int  NOT NULL,--流程实例ID
	[LCSLZT]  int  NULL,--流程实例状态
	[LCMBID]  int  NOT NULL,--流程模板ID
	[LCMBMC]  nvarchar(200)  NOT NULL,--流程模板名称
	[DQBZID]  int  NULL,--当前步骤ID
	[DQBZMC]  nvarchar(200)  NOT NULL,--当前步骤名称
	[DQBZSHZT]  int  NULL,--当前步骤审核状态
	[SQRBMID]  int  NULL,--申请人部门ID
CONSTRAINT [PK_EDU_OAXT_21_A03_QJSQXGJL] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--会议室数据表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_22_A01_HYSSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_22_A01_HYSSJ](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[FJMC]  nvarchar(50)  NOT NULL,--房间名称
	[FJDZ]  nvarchar(200)  NOT NULL,--房间地址
	[ZDRNRS]  int  NOT NULL,--最大容纳人数
	[BZ]  text  NOT NULL,--备注
CONSTRAINT [PK_EDU_OAXT_22_A01_HYSSJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--会议申请表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_22_A02_HYSQ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_22_A02_HYSQ](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[LCSLID]  int  NOT NULL,--流程实例ID
	[HYMC]  nvarchar(200)  NOT NULL,--会议名称
	[HYNR]  text  NOT NULL,--会议内容
	[ZCRID]  nvarchar(20)  NOT NULL,--主持人
	[JLRID]  nvarchar(20)  NOT NULL,--记录人
	[HYJB]  nvarchar(10)  NOT NULL,--会议级别
	[HYDDID]  int  NOT NULL,--会议地点ID
	[HYDZ]  nvarchar(50)  NOT NULL,--会议地址
	[YHRYIDLB]  text  NOT NULL,--与会人员ID列表
	[YHRYXMLB]  text  NOT NULL,--与会人员姓名列表
	[KSSJ]  datetime  NOT NULL,--开始时间
	[JSSJ]  datetime  NOT NULL,--结束时间
	[SQSJ]  datetime  NOT NULL,--申请时间
	[SQZT]  int  NOT NULL,--申请状态
	[SQRID]  nvarchar(20)  NOT NULL,--申请人ID
	[BZ]  text  NOT NULL,--备注
	[FJ]  nvarchar(300)  NULL,--附件
CONSTRAINT [PK_EDU_OAXT_22_A02_HYSQ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--会议申请修改记录表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_22_A03_HYSQXGJL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_22_A03_HYSQXGJL](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[SQID]  int  NOT NULL,--会议申请表ID
	[XGYHID]  nvarchar(20)  NOT NULL,--修改用户ID
	[XGYHXM]  nvarchar(36)  NOT NULL,--修改用户姓名
	[HYMC]  nvarchar(200)  NOT NULL,--会议名称
	[HYNR]  text  NOT NULL,--会议内容
	[ZCRID]  nvarchar(20)  NOT NULL,--主持人
	[JLRID]  nvarchar(20)  NOT NULL,--记录人
	[HYJB]  nvarchar(10)  NOT NULL,--会议级别
	[HYDZID]  int  NOT NULL,--会议地点ID
	[HYDZ]  nvarchar(50)  NOT NULL,--会议地址
	[YHRYIDLB]  text  NOT NULL,--与会人员ID列表
	[YHRYXMLB]  text  NOT NULL,--与会人员姓名列表
	[KSSJ]  datetime  NOT NULL,--开始时间
	[JSSJ]  datetime  NOT NULL,--结束时间
	[SQSJ]  datetime  NOT NULL,--申请时间
	[SQZT]  int  NOT NULL,--申请状态
	[SQRID]  nvarchar(20)  NOT NULL,--申请人ID
	[BZ]  text  NOT NULL,--备注
	[FJ]  nvarchar(300)  NULL,--附件
	[LCSLID]  int  NOT NULL,--流程实例ID
	[LCSLZT]  int  NULL,--流程实例状态
	[LCMBID]  int  NOT NULL,--流程模板ID
	[LCMBMC]  nvarchar(200)  NOT NULL,--流程模板名称
	[DQBZID]  int  NULL,--当前步骤ID
	[DQBZMC]  nvarchar(200)  NOT NULL,--当前步骤名称
	[DQBZSHZT]  int  NULL,--当前步骤审核状态
	[SQRBMID]  int  NULL,--申请人部门ID
CONSTRAINT [PK_EDU_OAXT_22_A03_HYSQXGJL] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--会议纪要表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_22_A04_HYJY]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_22_A04_HYJY](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[HYID]  int  NOT NULL,--会议ID
	[HYJYNR]  text  NOT NULL,--会议纪要内容
	[JLRID]  nvarchar(20)  NOT NULL,--记录人
	[JLSJ]  datetime  NOT NULL,--记录时间
CONSTRAINT [PK_EDU_OAXT_22_A04_HYJY] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--会议备注类型表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_22_A05_HYBZLX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_22_A05_HYBZLX](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[MC]  nvarchar(100)  NOT NULL,--名称
	[LX]  int  NOT NULL,--类型
CONSTRAINT [PK_EDU_OAXT_22_A05_HYBZLX] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--会议纪要模板表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_22_A06_HYJYMB]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_22_A06_HYJYMB](
	[ID]  int  identity,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[MBMC]  nvarchar(50)  NOT NULL,--模板名称
	[MBNR]  text  NOT NULL,--模板内容
CONSTRAINT [PK_EDU_OAXT_22_A06_HYJYMB] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--公文申请表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_23_A01_GWSQ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_23_A01_GWSQ](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[LCSLID]  int  NOT NULL,--流程实例ID
	[GWBT]  nvarchar(200)  NOT NULL,--公文标题
	[GWNR]  text  NOT NULL,--公文内容
	[FJ]  nvarchar(200)  NOT NULL,--附件
	[SJRIDLB]  text  NOT NULL,--收件人ID列表
	[SJRXMLB]  text  NOT NULL,--收件人姓名列表
	[YDQK]  nvarchar(200)  NOT NULL,--阅读情况
	[SQSJ]  datetime  NOT NULL,--申请时间
	[SQRID]  nvarchar(20)  NOT NULL,--申请人ID
	[SQZT]  int  NOT NULL,--申请状态
	[BZ]  text  NOT NULL,--备注
	[SWDW]  nvarchar(50)  NOT NULL,--收文单位
	[YGDCS]  int  NOT NULL,--已归档次数
	[WJBH]  nvarchar(50)  NOT NULL,--文件编号
CONSTRAINT [PK_EDU_OAXT_23_A01_GWSQ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--公文申请修改记录表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_23_A02_GWSQXGJL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_23_A02_GWSQXGJL](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[SQID]  int  NOT NULL,--公文申请表ID
	[XGYHID]  nvarchar(20)  NOT NULL,--修改用户ID
	[XGYHXM]  nvarchar(36)  NOT NULL,--修改用户姓名
	[GWBT]  nvarchar(200)  NOT NULL,--公文标题
	[GWNR]  text  NOT NULL,--公文内容
	[FJ]  nvarchar(200)  NOT NULL,--附件
	[SJRIDLB]  text  NOT NULL,--收件人ID列表
	[SJRXMLB]  text  NOT NULL,--收件人姓名列表
	[YDQK]  nvarchar(200)  NOT NULL,--阅读情况
	[SQSJ]  datetime  NOT NULL,--申请时间
	[SQRID]  nvarchar(20)  NOT NULL,--申请人ID
	[SQZT]  int  NOT NULL,--申请状态
	[BZ]  text  NOT NULL,--备注
	[SWDW]  nvarchar(50)  NOT NULL,--收文单位
	[LCSLID]  int  NOT NULL,--流程实例ID
	[LCSLZT]  int  NULL,--流程实例状态
	[LCMBID]  int  NOT NULL,--流程模板ID
	[LCMBMC]  nvarchar(200)  NOT NULL,--流程模板名称
	[DQBZID]  int  NULL,--当前步骤ID
	[DQBZMC]  nvarchar(200)  NOT NULL,--当前步骤名称
	[DQBZSHZT]  int  NULL,--当前步骤审核状态
	[SQRBMID]  int  NULL,--申请人部门ID
CONSTRAINT [PK_EDU_OAXT_23_A02_GWSQXGJL] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--用车申请表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_24_A01_YCSQ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_24_A01_YCSQ](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[LCSLID]  int  NOT NULL,--流程实例ID
	[YCYY]  nvarchar(300)  NOT NULL,--用车原因
	[WCRS]  int  NOT NULL,--外出人数
	[KSSJ]  datetime  NOT NULL,--开始时间
	[SYTS]  int  NOT NULL,--使用天数
	[SQSJ]  datetime  NOT NULL,--申请时间
	[SQRID]  nvarchar(20)  NOT NULL,--申请人ID
	[SQZT]  int  NOT NULL,--申请状态
	[BZ]  text  NOT NULL,--备注
	[SQCLID]  int  NOT NULL,--申请车辆ID
	[JSSJ]  datetime  NOT NULL,--结束时间
CONSTRAINT [PK_EDU_OAXT_24_A01_YCSQ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--用车申请修改记录表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_24_A02_YCSQXGJL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_24_A02_YCSQXGJL](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[SQID]  int  NOT NULL,--用车申请表ID
	[XGYHID]  nvarchar(20)  NOT NULL,--修改用户ID
	[XGYHXM]  nvarchar(36)  NOT NULL,--修改用户姓名
	[YCYY]  nvarchar(300)  NOT NULL,--用车原因
	[WCRS]  int  NOT NULL,--外出人数
	[KSSJ]  datetime  NOT NULL,--开始时间
	[SYTS]  int  NOT NULL,--使用天数
	[SQSJ]  datetime  NOT NULL,--申请时间
	[SQRID]  nvarchar(20)  NOT NULL,--申请人ID
	[SQZT]  int  NOT NULL,--申请状态
	[BZ]  text  NOT NULL,--备注
	[LCSLID]  int  NOT NULL,--流程实例ID
	[LCSLZT]  int  NULL,--流程实例状态
	[LCMBID]  int  NOT NULL,--流程模板ID
	[LCMBMC]  nvarchar(200)  NOT NULL,--流程模板名称
	[DQBZID]  int  NULL,--当前步骤ID
	[DQBZMC]  nvarchar(200)  NOT NULL,--当前步骤名称
	[DQBZSHZT]  int  NULL,--当前步骤审核状态
	[SQRBMID]  int  NULL,--申请人部门ID
	[SQCLID]  int  NOT NULL,--申请车辆ID
	[JSSJ]  datetime  NOT NULL,--结束时间
CONSTRAINT [PK_EDU_OAXT_24_A02_YCSQXGJL] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--车辆数据表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_24_A03_CLSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_24_A03_CLSJ](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[CLMC]  nvarchar(50)  NOT NULL,--车辆名称
	[CLPP]  nvarchar(200)  NOT NULL,--车辆品牌
	[CLCPH]  nvarchar(200)  NOT NULL,--车辆车牌号
	[ZDRNRS]  int  NOT NULL,--最大可载人数
	[CLZT]  int  NOT NULL,--车辆状态
	[BZ]  text  NOT NULL,--备注
CONSTRAINT [PK_EDU_OAXT_24_A03_CLSJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--采购申请表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_25_A01_CGSQ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_25_A01_CGSQ](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[LCSLID]  int  NOT NULL,--流程实例ID
	[CGDMC]  nvarchar(200)  NOT NULL,--采购单名称
	[CGNR]  text  NOT NULL,--采购内容
	[FJ]  nvarchar(300)  NOT NULL,--附件
	[SQSJ]  datetime  NOT NULL,--申请时间
	[SQRID]  nvarchar(20)  NOT NULL,--申请人ID
	[CGZT]  int  NOT NULL,--采购状态
	[BZ]  text  NOT NULL,--备注
CONSTRAINT [PK_EDU_OAXT_25_A01_CGSQ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--采购申请修改记录表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_25_A02_CGSQXGJL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_25_A02_CGSQXGJL](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[SQID]  int  NOT NULL,--采购申请表ID
	[XGYHID]  nvarchar(20)  NOT NULL,--修改用户ID
	[XGYHXM]  nvarchar(36)  NOT NULL,--修改用户姓名
	[CGDMC]  nvarchar(200)  NOT NULL,--采购单名称
	[CGNR]  text  NOT NULL,--采购内容
	[FJ]  nvarchar(300)  NOT NULL,--附件
	[SQSJ]  datetime  NOT NULL,--申请时间
	[SQRID]  nvarchar(20)  NOT NULL,--申请人ID
	[CGZT]  int  NOT NULL,--采购状态
	[BZ]  text  NOT NULL,--备注
	[LCSLID]  int  NOT NULL,--流程实例ID
	[LCSLZT]  int  NULL,--流程实例状态
	[LCMBID]  int  NOT NULL,--流程模板ID
	[LCMBMC]  nvarchar(200)  NOT NULL,--流程模板名称
	[DQBZID]  int  NULL,--当前步骤ID
	[DQBZMC]  nvarchar(200)  NOT NULL,--当前步骤名称
	[DQBZSHZT]  int  NULL,--当前步骤审核状态
	[SQRBMID]  int  NULL,--申请人部门ID
CONSTRAINT [PK_EDU_OAXT_25_A02_CGSQXGJL] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--实验室数据表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_26_A01_SYSSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_26_A01_SYSSJ](
	[ID]  int  identity,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[MC]  nvarchar(50)  NOT NULL,--名称
	[DD]  nvarchar(200)  NOT NULL,--地点
	[FZR]  nvarchar(36)  NOT NULL,--负责人
CONSTRAINT [PK_EDU_OAXT_26_A01_SYSSJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--实验室器材表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_26_A02_SYSQC]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_26_A02_SYSQC](
	[ID]  int  identity,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[QCMC]  nvarchar(50)  NOT NULL,--器材名称
CONSTRAINT [PK_EDU_OAXT_26_A02_SYSQC] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--实验室申请表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_26_A03_SYSSQ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_26_A03_SYSSQ](
	[ID]  int  identity,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[SYSID]  int  NOT NULL,--实验室ID
	[LCSLID]  int  NOT NULL,--流程实例ID
	[SYQC]  text  NOT NULL,--实验器材
	[SYMC]  nvarchar(200)  NOT NULL,--实验名称
	[KM]  nvarchar(50)  NOT NULL,--科目
	[BJ]  nvarchar(50)  NOT NULL,--班级
	[KSSJ]  datetime  NOT NULL,--开始时间
	[JSSJ]  datetime  NOT NULL,--结束时间
	[SQSJ]  datetime  NOT NULL,--申请时间
	[SQZT]  int  NOT NULL,--申请状态
	[SQRID]  nvarchar(20)  NOT NULL,--申请人ID
	[BZ]  text  NOT NULL,--备注
CONSTRAINT [PK_EDU_OAXT_26_A03_SYSSQ] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--实验室申请修改记录表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_26_A04_SYSSQXGJL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_26_A04_SYSSQXGJL](
	[ID]  int  identity,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[SQID]  int  NOT NULL,--实验室申请表ID
	[XGYHID]  nvarchar(20)  NOT NULL,--修改用户ID
	[XGYHXM]  nvarchar(36)  NOT NULL,--修改用户姓名
	[XGSJ]  datetime  NOT NULL,--修改时间
CONSTRAINT [PK_EDU_OAXT_26_A04_SYSSQXGJL] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--大事记表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_30_A01_DSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_30_A01_DSJ](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[BT]  nvarchar(100)  NOT NULL,--标题
	[NR]  text  NOT NULL,--内容
CONSTRAINT [PK_EDU_OAXT_30_A01_DSJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--个人通讯录表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_31_A01_GRTXL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_31_A01_GRTXL](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[GRID]  nvarchar(20)  NOT NULL,--个人ID
	[LXRXM]  nvarchar(50)  NOT NULL,--联系人姓名
	[LXRDH]  nvarchar(50)  NOT NULL,--联系人电话
CONSTRAINT [PK_EDU_OAXT_31_A01_GRTXL] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--调查问卷数据表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_32_A01_DCWJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_32_A01_DCWJ](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[Title]  nvarchar(300)  NOT NULL,--问卷名称
	[Users]  text  NOT NULL,--参选人员
	[StartTime]  datetime  NOT NULL,--开始时间
	[EndTime]  datetime  NOT NULL,--结束时间
	[IsStart]  int  NOT NULL,--是否开启
	[JJ]  text  NOT NULL,--简介
CONSTRAINT [PK_EDU_OAXT_32_A01_DCWJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--调查问卷题目表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_32_A02_DCWJTM]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_32_A02_DCWJTM](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[WJID]  int  NOT NULL,--所属问卷
	[TypeID]  int  NOT NULL,--题目类型
	[Title]  nvarchar(300)  NOT NULL,--题目
	[SSDL]  nvarchar(100)  NOT NULL,--所属大类
CONSTRAINT [PK_EDU_OAXT_32_A02_DCWJTM] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--问卷题目选项表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_32_A03_DCWJTMXX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_32_A03_DCWJTMXX](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[TMID]  int  NOT NULL,--所属题目
	[WJID]  int  NOT NULL,--所属问卷
	[SelectItem]  nvarchar(100)  NOT NULL,--选项
	[XXFZ]  int  NOT NULL,--选项分值
CONSTRAINT [PK_EDU_OAXT_32_A03_DCWJTMXX] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--问卷结果记录表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_32_A04_DCWJJL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_32_A04_DCWJJL](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[YHID]  nvarchar(20)  NOT NULL,--用户ID
	[WJID]  int  NOT NULL,--所属问卷ID
	[TMID]  int  NOT NULL,--所属题目ID
	[XXID]  int  NOT NULL,--选项ID
	[XXFZ]  int  NOT NULL,--选项分值
	[TJZT]  int  NOT NULL,--提交状态
CONSTRAINT [PK_EDU_OAXT_32_A04_DCWJJL] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--公文基础信息表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_33_A01_GWJCXX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_33_A01_GWJCXX](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[HTWZ]  nvarchar(100)  NOT NULL,--红头文字
	[GWBT]  nvarchar(100)  NOT NULL,--公文标题
	[SJ]  datetime  NOT NULL,--时间
	[ZW]  text  NOT NULL,--正文
	[BH]  nvarchar(30)  NOT NULL,--编号
CONSTRAINT [PK_EDU_OAXT_33_A01_GWJCXX] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--公章信息表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_33_A02_GZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_33_A02_GZ](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[QZTPLJ]  text  NOT NULL,--签章图片路径
CONSTRAINT [PK_EDU_OAXT_33_A02_GZ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--发文表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_33_A03_FW]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_33_A03_FW](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[GWID]  int  NOT NULL,--公文ID
	[FZ]  nvarchar(300)  NOT NULL,--附注
	[SHRID]  nvarchar(20)  NOT NULL,--审核人ID
	[DXTZZT]  int  NOT NULL,--短信通知状态
	[SHPZ]  nvarchar(500)  NOT NULL,--审核批注
	[GZID]  int  NOT NULL,--公章ID
	[ZYCD]  int  NOT NULL,--重要程度
	[SFHF]  int  NOT NULL,--是否需要回复
	[FSDW]  nvarchar(50)  NOT NULL,--发送单位或科室
	[FSZLY]  nvarchar(500)  NOT NULL,--发送者留言
	[FSRID]  nvarchar(20)  NOT NULL,--发送人ID
	[BSZT]  int  NOT NULL,--报审状态
	[SHZT]  int  NOT NULL,--审核状态
	[FSZT]  int  NOT NULL,--发送状态
	[BJZT]  int  NOT NULL,--办结状态
CONSTRAINT [PK_EDU_OAXT_33_A03_FW] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--收文表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_33_A04_SW]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_33_A04_SW](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[GWID]  int  NOT NULL,--公文ID
	[XFRID]  nvarchar(20)  NOT NULL,--下发人ID
	[JSRID]  nvarchar(20)  NOT NULL,--接受人ID
	[XFSJ]  datetime  NOT NULL,--下发时间
	[QSZT]  int  NOT NULL,--签收状态
	[DXTZZT]  int  NOT NULL,--短信通知状态
	[HFZT]  int  NOT NULL,--回复状态
	[HFXX]  nvarchar(500)  NOT NULL,--回复信息
	[HFFJ]  text  NOT NULL,--回复附件
	[CLZT]  int  NOT NULL,--处理状态
	[SCZT]  int  NOT NULL,--删除状态
CONSTRAINT [PK_EDU_OAXT_33_A04_SW] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--红头文字表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_33_A05_HTWZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_33_A05_HTWZ](
	[ID]  int  identity,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[HTWZ]  nvarchar(100)  NOT NULL,--红头文字
CONSTRAINT [PK_EDU_OAXT_33_A05_HTWZ] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--文印流程记录
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_34_A01_WYLCJL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_34_A01_WYLCJL](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[WYBT]  nvarchar(50)  NOT NULL,--文印标题
	[NR]  text  NOT NULL,--内容
	[BZ]  nvarchar(300)  NOT NULL,--备注
	[SQRID]  nvarchar(20)  NOT NULL,--申请人ID
	[SQSJ]  datetime  NOT NULL,--申请时间
	[SHZT]  int  NOT NULL,--审核状态
	[SHRID]  nvarchar(20)  NOT NULL,--审核人ID
	[SHSJ]  datetime  NOT NULL,--审核时间
	[SHBZ]  nvarchar(300)  NOT NULL,--审核备注
	[SHLBSFXS]  int  NOT NULL,--审核列表是否显示
	[DYZT]  int  NOT NULL,--打印状态
	[DYSJ]  datetime  NOT NULL,--打印时间
	[DYBZ]  nvarchar(300)  NOT NULL,--打印备注
	[DYLBSFXS]  int  NOT NULL,--打印列表是否显示
CONSTRAINT [PK_EDU_OAXT_34_A01_WYLCJL] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--任务表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_35_A01_RW]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_35_A01_RW](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校ID
	[RWBT]  nvarchar(100)  NOT NULL,--任务标题
	[JSYHIDLB]  text  NOT NULL,--接收用户ID列表
	[JSYHXMLB]  text  NOT NULL,--接收用户姓名列表
	[JZRQ]  datetime  NOT NULL,--截止日期
	[NR]  text  NOT NULL,--内容
	[FBRID]  nvarchar(20)  NOT NULL,--发布人ID
	[FBRXM]  nvarchar(36)  NOT NULL,--发布人姓名
	[FBBMMC]  nvarchar(60)  NOT NULL,--发布部门名称
	[FBSJ]  datetime  NOT NULL,--发布时间
	[RWZT]  int  NOT NULL,--任务状态
CONSTRAINT [PK_EDU_OAXT_35_A01_RW] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--任务接收人表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_35_A02_RWJSR]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_35_A02_RWJSR](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校ID
	[RWID]  int  NOT NULL,--任务ID
	[JSRID]  nvarchar(20)  NOT NULL,--接收人ID
	[YDZT]  int  NOT NULL,--阅读状态
	[WCZT]  int  NOT NULL,--完成状态
	[SCZT]  int  NOT NULL,--删除状态
	[TJZT]  int  NOT NULL,--提交状态
	[FJ]  text  NOT NULL,--附件
	[BZ]  text  NOT NULL,--备注
CONSTRAINT [PK_EDU_OAXT_35_A02_RWJSR] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--回复记录表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_35_A03_HFJL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_35_A03_HFJL](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校ID
	[RWID]  int  NOT NULL,--任务ID
	[HFRID]  nvarchar(20)  NOT NULL,--回复人ID
	[HFNR]  text  NOT NULL,--回复内容
	[HSSJ]  datetime  NOT NULL,--回复时间
CONSTRAINT [PK_EDU_OAXT_35_A03_HFJL] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--班级工作类别表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_36_A01_BJGZLB]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_36_A01_BJGZLB](
	[ID]  int  identity,--编号
	[SCHOOLID]  int  NOT NULL,--学校ID
	[GZLBMC]  nvarchar(100)  NOT NULL,--工作类别名称
	[DJRYIDLB]  text  NOT NULL,--登记人员ID列表
	[DJRYXMLB]  text  NOT NULL,--登记人员姓名列表
CONSTRAINT [PK_EDU_OAXT_36_A01_BJGZLB] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--班级工作检查表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_36_A02_BJGZJC]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_36_A02_BJGZJC](
	[ID]  int  identity,--编号
	[SCHOOLID]  int  NOT NULL,--学校ID
	[GZLBID]  int  NOT NULL,--工作类别ID
	[BJ]  nvarchar(50)  NOT NULL,--班级
	[RQ]  datetime  NOT NULL,--日期
	[JG]  int  NOT NULL,--结果
	[BJMC]  nvarchar(50)  NOT NULL,--班级名称
CONSTRAINT [PK_EDU_OAXT_36_A02_BJGZJC] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--以下为添加注释语句
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
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'档案登记数据表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_08_01_DADJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_08_01_DADJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_08_01_DADJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'全宗号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_08_01_DADJ', @level2type=N'COLUMN',@level2name=N'QZH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'年度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_08_01_DADJ', @level2type=N'COLUMN',@level2name=N'ND'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'目录号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_08_01_DADJ', @level2type=N'COLUMN',@level2name=N'MLH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'案卷号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_08_01_DADJ', @level2type=N'COLUMN',@level2name=N'AJH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'题名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_08_01_DADJ', @level2type=N'COLUMN',@level2name=N'TM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主题词' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_08_01_DADJ', @level2type=N'COLUMN',@level2name=N'ZTC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'起始日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_08_01_DADJ', @level2type=N'COLUMN',@level2name=N'QSRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'截止日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_08_01_DADJ', @level2type=N'COLUMN',@level2name=N'JZRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'保管期限码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_08_01_DADJ', @level2type=N'COLUMN',@level2name=N'BGQXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'密级码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_08_01_DADJ', @level2type=N'COLUMN',@level2name=N'MJM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'页数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_08_01_DADJ', @level2type=N'COLUMN',@level2name=N'YS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'份数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_08_01_DADJ', @level2type=N'COLUMN',@level2name=N'FS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编制单位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_08_01_DADJ', @level2type=N'COLUMN',@level2name=N'BZDW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'存放位置' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_08_01_DADJ', @level2type=N'COLUMN',@level2name=N'CFWZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'档案分类码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_08_01_DADJ', @level2type=N'COLUMN',@level2name=N'DAFLM'
GO
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
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_10_A02_TZYDJL', @level2type=N'COLUMN',@level2name=N'SCZT'
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
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'通知模板表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_10_A04_TZMB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_10_A04_TZMB', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_10_A04_TZMB', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'模板名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_10_A04_TZMB', @level2type=N'COLUMN',@level2name=N'MBMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'模板内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_10_A04_TZMB', @level2type=N'COLUMN',@level2name=N'MBNR'
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
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'个人日程信息表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_14_A01_GRRCXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_14_A01_GRRCXX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_14_A01_GRRCXX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_14_A01_GRRCXX', @level2type=N'COLUMN',@level2name=N'YHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_14_A01_GRRCXX', @level2type=N'COLUMN',@level2name=N'BT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_14_A01_GRRCXX', @level2type=N'COLUMN',@level2name=N'NR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开始时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_14_A01_GRRCXX', @level2type=N'COLUMN',@level2name=N'KSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'结束时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_14_A01_GRRCXX', @level2type=N'COLUMN',@level2name=N'JSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否提示' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_14_A01_GRRCXX', @level2type=N'COLUMN',@level2name=N'SFTS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_14_A01_GRRCXX', @level2type=N'COLUMN',@level2name=N'ZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资产目录表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A01_ZCML'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A01_ZCML', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A01_ZCML', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'校产目录' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A01_ZCML', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父目录ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A01_ZCML', @level2type=N'COLUMN',@level2name=N'Superid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A01_ZCML', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资产大类表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A02_ZCDL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A02_ZCDL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A02_ZCDL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'校产类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A02_ZCDL', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A02_ZCDL', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资产库存表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A03_ZCKC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A03_ZCKC', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A03_ZCKC', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资产目录表ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A03_ZCKC', @level2type=N'COLUMN',@level2name=N'TypeID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资产大类表ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A03_ZCKC', @level2type=N'COLUMN',@level2name=N'ClassID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资产名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A03_ZCKC', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资产规格' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A03_ZCKC', @level2type=N'COLUMN',@level2name=N'Info'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'出厂时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A03_ZCKC', @level2type=N'COLUMN',@level2name=N'Productdate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单价' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A03_ZCKC', @level2type=N'COLUMN',@level2name=N'Price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A03_ZCKC', @level2type=N'COLUMN',@level2name=N'SumCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'供应商' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A03_ZCKC', @level2type=N'COLUMN',@level2name=N'Merchant'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'厂家' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A03_ZCKC', @level2type=N'COLUMN',@level2name=N'Vender'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A03_ZCKC', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资产总量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A03_ZCKC', @level2type=N'COLUMN',@level2name=N'AllCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'入库量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A03_ZCKC', @level2type=N'COLUMN',@level2name=N'RKL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A03_ZCKC', @level2type=N'COLUMN',@level2name=N'RQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A03_ZCKC', @level2type=N'COLUMN',@level2name=N'DW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'总价' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A03_ZCKC', @level2type=N'COLUMN',@level2name=N'ZJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'使用部门' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A03_ZCKC', @level2type=N'COLUMN',@level2name=N'SYBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'存放单位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A03_ZCKC', @level2type=N'COLUMN',@level2name=N'CFDW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'负责人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A03_ZCKC', @level2type=N'COLUMN',@level2name=N'FZR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'处置方式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A03_ZCKC', @level2type=N'COLUMN',@level2name=N'CZFS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资产入库表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A04_ZCRK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A04_ZCRK', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A04_ZCRK', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资产目录表ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A04_ZCRK', @level2type=N'COLUMN',@level2name=N'TypeID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资产大类表ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A04_ZCRK', @level2type=N'COLUMN',@level2name=N'ClassID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'校产名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A04_ZCRK', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资产规格' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A04_ZCRK', @level2type=N'COLUMN',@level2name=N'Info'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'出厂时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A04_ZCRK', @level2type=N'COLUMN',@level2name=N'Productdate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单价' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A04_ZCRK', @level2type=N'COLUMN',@level2name=N'Price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A04_ZCRK', @level2type=N'COLUMN',@level2name=N'SumCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'供应商' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A04_ZCRK', @level2type=N'COLUMN',@level2name=N'Merchant'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'厂家' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A04_ZCRK', @level2type=N'COLUMN',@level2name=N'Vender'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登记时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A04_ZCRK', @level2type=N'COLUMN',@level2name=N'Registdate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A04_ZCRK', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A04_ZCRK', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A04_ZCRK', @level2type=N'COLUMN',@level2name=N'RQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A04_ZCRK', @level2type=N'COLUMN',@level2name=N'DW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'总价' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A04_ZCRK', @level2type=N'COLUMN',@level2name=N'ZJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'使用部门' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A04_ZCRK', @level2type=N'COLUMN',@level2name=N'SYBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'存放单位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A04_ZCRK', @level2type=N'COLUMN',@level2name=N'CFDW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'负责人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A04_ZCRK', @level2type=N'COLUMN',@level2name=N'FZR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'处置方式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A04_ZCRK', @level2type=N'COLUMN',@level2name=N'CZFS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资产借还表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A05_ZCJH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A05_ZCJH', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A05_ZCJH', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资产目录表ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A05_ZCJH', @level2type=N'COLUMN',@level2name=N'TypeID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资产大类表ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A05_ZCJH', @level2type=N'COLUMN',@level2name=N'ClassID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'库存表ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A05_ZCJH', @level2type=N'COLUMN',@level2name=N'AID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A05_ZCJH', @level2type=N'COLUMN',@level2name=N'SumCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A05_ZCJH', @level2type=N'COLUMN',@level2name=N'Unit'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'借用方' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A05_ZCJH', @level2type=N'COLUMN',@level2name=N'Borrower'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A05_ZCJH', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登记时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A05_ZCJH', @level2type=N'COLUMN',@level2name=N'Registdate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资产变更表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A06_ZCBG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A06_ZCBG', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A06_ZCBG', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类别(领用、借用、报损)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A06_ZCBG', @level2type=N'COLUMN',@level2name=N'TypeID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类别名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A06_ZCBG', @level2type=N'COLUMN',@level2name=N'TypeName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'库存表ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A06_ZCBG', @level2type=N'COLUMN',@level2name=N'AID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资产名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A06_ZCBG', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A06_ZCBG', @level2type=N'COLUMN',@level2name=N'Option'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登记时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A06_ZCBG', @level2type=N'COLUMN',@level2name=N'RegistTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A06_ZCBG', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A06_ZCBG', @level2type=N'COLUMN',@level2name=N'SumCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'报修类型表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A07_BXLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A07_BXLX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A07_BXLX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A07_BXLX', @level2type=N'COLUMN',@level2name=N'TypeName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A07_BXLX', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'报修管理表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A08_BXGL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A08_BXGL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A08_BXGL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'库存表ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A08_BXGL', @level2type=N'COLUMN',@level2name=N'AID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'报修类型ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A08_BXGL', @level2type=N'COLUMN',@level2name=N'TypeID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'报修主题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A08_BXGL', @level2type=N'COLUMN',@level2name=N'Title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A08_BXGL', @level2type=N'COLUMN',@level2name=N'Telephone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'报修地点' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A08_BXGL', @level2type=N'COLUMN',@level2name=N'Repairplace'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'报修内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A08_BXGL', @level2type=N'COLUMN',@level2name=N'Repaircontent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'维修人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A08_BXGL', @level2type=N'COLUMN',@level2name=N'Repairpeople'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'维修时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A08_BXGL', @level2type=N'COLUMN',@level2name=N'RepairDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'阅读情况' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A08_BXGL', @level2type=N'COLUMN',@level2name=N'ReadrID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'阅读情况' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A08_BXGL', @level2type=N'COLUMN',@level2name=N'Readr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A08_BXGL', @level2type=N'COLUMN',@level2name=N'Applicant'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审批人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A08_BXGL', @level2type=N'COLUMN',@level2name=N'Approver'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'评价' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A08_BXGL', @level2type=N'COLUMN',@level2name=N'Evaluate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开始时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A08_BXGL', @level2type=N'COLUMN',@level2name=N'StartDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A08_BXGL', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A08_BXGL', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A08_BXGL', @level2type=N'COLUMN',@level2name=N'SumCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'故障图片' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A08_BXGL', @level2type=N'COLUMN',@level2name=N'GZTP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'完成状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A08_BXGL', @level2type=N'COLUMN',@level2name=N'WCZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A08_BXGL', @level2type=N'COLUMN',@level2name=N'SCZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'维修计划表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A09_WXJH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A09_WXJH', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A09_WXJH', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'库存表ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A09_WXJH', @level2type=N'COLUMN',@level2name=N'AID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'计划标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A09_WXJH', @level2type=N'COLUMN',@level2name=N'Title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'维修内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A09_WXJH', @level2type=N'COLUMN',@level2name=N'Content'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资产报废表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A10_ZCBF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A10_ZCBF', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A10_ZCBF', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'库存表ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A10_ZCBF', @level2type=N'COLUMN',@level2name=N'AID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A10_ZCBF', @level2type=N'COLUMN',@level2name=N'Sum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申报人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A10_ZCBF', @level2type=N'COLUMN',@level2name=N'Reporter'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A10_ZCBF', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登记人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A10_ZCBF', @level2type=N'COLUMN',@level2name=N'RegsterID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A10_ZCBF', @level2type=N'COLUMN',@level2name=N'Statu'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登记时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A10_ZCBF', @level2type=N'COLUMN',@level2name=N'Registdate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资产盘点表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A11_ZCPD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A11_ZCPD', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A11_ZCPD', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'盘点名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A11_ZCPD', @level2type=N'COLUMN',@level2name=N'Title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'盘点日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A11_ZCPD', @level2type=N'COLUMN',@level2name=N'PanDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'盘点目录ID列表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A11_ZCPD', @level2type=N'COLUMN',@level2name=N'PanTypeIDs'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A11_ZCPD', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A11_ZCPD', @level2type=N'COLUMN',@level2name=N'Statu'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资产盘点明细表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A12_ZCPDMX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A12_ZCPDMX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A12_ZCPDMX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'库存表ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A12_ZCPDMX', @level2type=N'COLUMN',@level2name=N'AID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'盘点表ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A12_ZCPDMX', @level2type=N'COLUMN',@level2name=N'PID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'盘点人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A12_ZCPDMX', @level2type=N'COLUMN',@level2name=N'PUserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'库存数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A12_ZCPDMX', @level2type=N'COLUMN',@level2name=N'Storesum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实存数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A12_ZCPDMX', @level2type=N'COLUMN',@level2name=N'RealSum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资产名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A12_ZCPDMX', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资产总量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A12_ZCPDMX', @level2type=N'COLUMN',@level2name=N'AllCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A12_ZCPDMX', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'借用数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A12_ZCPDMX', @level2type=N'COLUMN',@level2name=N'BorrowCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'维修记录表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A13_WXJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A13_WXJL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A13_WXJL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'物品ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A13_WXJL', @level2type=N'COLUMN',@level2name=N'WPID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'维修状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A13_WXJL', @level2type=N'COLUMN',@level2name=N'WXZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A13_WXJL', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'报修故障信息表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A14_BXGZXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A14_BXGZXX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A14_BXGZXX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'报修类型ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A14_BXGZXX', @level2type=N'COLUMN',@level2name=N'BXLXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'故障信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A14_BXGZXX', @level2type=N'COLUMN',@level2name=N'GZXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程模板类型表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A01_LCMBLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A01_LCMBLX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A01_LCMBLX', @level2type=N'COLUMN',@level2name=N'LXMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A01_LCMBLX', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程表单数据表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A02_LCBDSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A02_LCBDSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A02_LCBDSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'表单名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A02_LCBDSJ', @level2type=N'COLUMN',@level2name=N'BDMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'表单内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A02_LCBDSJ', @level2type=N'COLUMN',@level2name=N'BDNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A02_LCBDSJ', @level2type=N'COLUMN',@level2name=N'TJSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A02_LCBDSJ', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程模板表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A03_LCMB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A03_LCMB', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A03_LCMB', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'模板类型ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A03_LCMB', @level2type=N'COLUMN',@level2name=N'MBLXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'模板名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A03_LCMB', @level2type=N'COLUMN',@level2name=N'MBMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'表单ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A03_LCMB', @level2type=N'COLUMN',@level2name=N'BDID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'起始步骤ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A03_LCMB', @level2type=N'COLUMN',@level2name=N'QSBZID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'结束步骤ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A03_LCMB', @level2type=N'COLUMN',@level2name=N'JSBZID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A03_LCMB', @level2type=N'COLUMN',@level2name=N'TJSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A03_LCMB', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程步骤表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A04_LCBZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A04_LCBZ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A04_LCBZ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'步骤名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A04_LCBZ', @level2type=N'COLUMN',@level2name=N'BZMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程模板ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A04_LCBZ', @level2type=N'COLUMN',@level2name=N'LCMBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审批人ID列表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A04_LCBZ', @level2type=N'COLUMN',@level2name=N'SPRIDLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审批人名称列表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A04_LCBZ', @level2type=N'COLUMN',@level2name=N'SPRMCLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上一步骤ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A04_LCBZ', @level2type=N'COLUMN',@level2name=N'SYBZID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'下一步骤ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A04_LCBZ', @level2type=N'COLUMN',@level2name=N'XYBZID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A04_LCBZ', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程实例表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A05_LCSL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A05_LCSL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A05_LCSL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程模板ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A05_LCSL', @level2type=N'COLUMN',@level2name=N'LCMBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A05_LCSL', @level2type=N'COLUMN',@level2name=N'SQRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审批人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A05_LCSL', @level2type=N'COLUMN',@level2name=N'SPRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A05_LCSL', @level2type=N'COLUMN',@level2name=N'SQSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'当前步骤ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A05_LCSL', @level2type=N'COLUMN',@level2name=N'DQBZID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'当前步骤执行状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A05_LCSL', @level2type=N'COLUMN',@level2name=N'DQBZZXZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'有效期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A05_LCSL', @level2type=N'COLUMN',@level2name=N'YXQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实例状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A05_LCSL', @level2type=N'COLUMN',@level2name=N'SLZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'附件' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A05_LCSL', @level2type=N'COLUMN',@level2name=N'FJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A05_LCSL', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A05_LCSL', @level2type=N'COLUMN',@level2name=N'LXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A05_LCSL', @level2type=N'COLUMN',@level2name=N'LXMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程审核记录表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A06_LCSHJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A06_LCSHJL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A06_LCSHJL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程模板名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A06_LCSHJL', @level2type=N'COLUMN',@level2name=N'LCMBMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程实例ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A06_LCSHJL', @level2type=N'COLUMN',@level2name=N'LCSLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'步骤名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A06_LCSHJL', @level2type=N'COLUMN',@level2name=N'BZMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'步骤ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A06_LCSHJL', @level2type=N'COLUMN',@level2name=N'BZID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程模板类型ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A06_LCSHJL', @level2type=N'COLUMN',@level2name=N'LCMBLXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A06_LCSHJL', @level2type=N'COLUMN',@level2name=N'SQRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审批人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A06_LCSHJL', @level2type=N'COLUMN',@level2name=N'SPRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A06_LCSHJL', @level2type=N'COLUMN',@level2name=N'SHZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A06_LCSHJL', @level2type=N'COLUMN',@level2name=N'TJSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A06_LCSHJL', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程模板类型配置表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A07_LCMBLXPZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程模板类型ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A07_LCMBLXPZ', @level2type=N'COLUMN',@level2name=N'LCMBLXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A07_LCMBLXPZ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'不使用流程' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A07_LCMBLXPZ', @level2type=N'COLUMN',@level2name=N'BSYLC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'请假类型表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A01_QJLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A01_QJLX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A01_QJLX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A01_QJLX', @level2type=N'COLUMN',@level2name=N'LXMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A01_QJLX', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'计时单位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A01_QJLX', @level2type=N'COLUMN',@level2name=N'JSDW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最长时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A01_QJLX', @level2type=N'COLUMN',@level2name=N'ZCSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'请假申请表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A02_QJSQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A02_QJSQ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A02_QJSQ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程实例ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A02_QJSQ', @level2type=N'COLUMN',@level2name=N'LCSLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'请假类型ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A02_QJSQ', @level2type=N'COLUMN',@level2name=N'QJLXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'请假原因' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A02_QJSQ', @level2type=N'COLUMN',@level2name=N'QJYY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开始时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A02_QJSQ', @level2type=N'COLUMN',@level2name=N'KSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'结束时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A02_QJSQ', @level2type=N'COLUMN',@level2name=N'JSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'请假天数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A02_QJSQ', @level2type=N'COLUMN',@level2name=N'QJTS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A02_QJSQ', @level2type=N'COLUMN',@level2name=N'SQSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A02_QJSQ', @level2type=N'COLUMN',@level2name=N'SQZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A02_QJSQ', @level2type=N'COLUMN',@level2name=N'SQRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A02_QJSQ', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'补假' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A02_QJSQ', @level2type=N'COLUMN',@level2name=N'BJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'销假' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A02_QJSQ', @level2type=N'COLUMN',@level2name=N'XJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'销假人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A02_QJSQ', @level2type=N'COLUMN',@level2name=N'XJRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'销假时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A02_QJSQ', @level2type=N'COLUMN',@level2name=N'XJSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'请假申请修改记录表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A03_QJSQXGJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A03_QJSQXGJL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A03_QJSQXGJL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'请假申请表ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A03_QJSQXGJL', @level2type=N'COLUMN',@level2name=N'SQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A03_QJSQXGJL', @level2type=N'COLUMN',@level2name=N'XGYHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改用户姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A03_QJSQXGJL', @level2type=N'COLUMN',@level2name=N'XGYHXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'请假类型ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A03_QJSQXGJL', @level2type=N'COLUMN',@level2name=N'QJLXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'请假类型名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A03_QJSQXGJL', @level2type=N'COLUMN',@level2name=N'QJLXMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'请假原因' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A03_QJSQXGJL', @level2type=N'COLUMN',@level2name=N'QJYY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开始时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A03_QJSQXGJL', @level2type=N'COLUMN',@level2name=N'KSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'结束时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A03_QJSQXGJL', @level2type=N'COLUMN',@level2name=N'JSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'请假天数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A03_QJSQXGJL', @level2type=N'COLUMN',@level2name=N'QJTS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A03_QJSQXGJL', @level2type=N'COLUMN',@level2name=N'SQSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A03_QJSQXGJL', @level2type=N'COLUMN',@level2name=N'SQZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A03_QJSQXGJL', @level2type=N'COLUMN',@level2name=N'SQRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A03_QJSQXGJL', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程实例ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A03_QJSQXGJL', @level2type=N'COLUMN',@level2name=N'LCSLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程实例状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A03_QJSQXGJL', @level2type=N'COLUMN',@level2name=N'LCSLZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程模板ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A03_QJSQXGJL', @level2type=N'COLUMN',@level2name=N'LCMBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程模板名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A03_QJSQXGJL', @level2type=N'COLUMN',@level2name=N'LCMBMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'当前步骤ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A03_QJSQXGJL', @level2type=N'COLUMN',@level2name=N'DQBZID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'当前步骤名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A03_QJSQXGJL', @level2type=N'COLUMN',@level2name=N'DQBZMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'当前步骤审核状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A03_QJSQXGJL', @level2type=N'COLUMN',@level2name=N'DQBZSHZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请人部门ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A03_QJSQXGJL', @level2type=N'COLUMN',@level2name=N'SQRBMID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会议室数据表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A01_HYSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A01_HYSSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A01_HYSSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'房间名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A01_HYSSJ', @level2type=N'COLUMN',@level2name=N'FJMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'房间地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A01_HYSSJ', @level2type=N'COLUMN',@level2name=N'FJDZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最大容纳人数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A01_HYSSJ', @level2type=N'COLUMN',@level2name=N'ZDRNRS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A01_HYSSJ', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会议申请表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A02_HYSQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A02_HYSQ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A02_HYSQ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程实例ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A02_HYSQ', @level2type=N'COLUMN',@level2name=N'LCSLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会议名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A02_HYSQ', @level2type=N'COLUMN',@level2name=N'HYMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会议内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A02_HYSQ', @level2type=N'COLUMN',@level2name=N'HYNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主持人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A02_HYSQ', @level2type=N'COLUMN',@level2name=N'ZCRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A02_HYSQ', @level2type=N'COLUMN',@level2name=N'JLRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会议级别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A02_HYSQ', @level2type=N'COLUMN',@level2name=N'HYJB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会议地点ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A02_HYSQ', @level2type=N'COLUMN',@level2name=N'HYDDID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会议地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A02_HYSQ', @level2type=N'COLUMN',@level2name=N'HYDZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'与会人员ID列表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A02_HYSQ', @level2type=N'COLUMN',@level2name=N'YHRYIDLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'与会人员姓名列表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A02_HYSQ', @level2type=N'COLUMN',@level2name=N'YHRYXMLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开始时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A02_HYSQ', @level2type=N'COLUMN',@level2name=N'KSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'结束时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A02_HYSQ', @level2type=N'COLUMN',@level2name=N'JSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A02_HYSQ', @level2type=N'COLUMN',@level2name=N'SQSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A02_HYSQ', @level2type=N'COLUMN',@level2name=N'SQZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A02_HYSQ', @level2type=N'COLUMN',@level2name=N'SQRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A02_HYSQ', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'附件' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A02_HYSQ', @level2type=N'COLUMN',@level2name=N'FJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会议申请修改记录表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A03_HYSQXGJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A03_HYSQXGJL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A03_HYSQXGJL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会议申请表ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A03_HYSQXGJL', @level2type=N'COLUMN',@level2name=N'SQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A03_HYSQXGJL', @level2type=N'COLUMN',@level2name=N'XGYHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改用户姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A03_HYSQXGJL', @level2type=N'COLUMN',@level2name=N'XGYHXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会议名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A03_HYSQXGJL', @level2type=N'COLUMN',@level2name=N'HYMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会议内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A03_HYSQXGJL', @level2type=N'COLUMN',@level2name=N'HYNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主持人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A03_HYSQXGJL', @level2type=N'COLUMN',@level2name=N'ZCRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A03_HYSQXGJL', @level2type=N'COLUMN',@level2name=N'JLRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会议级别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A03_HYSQXGJL', @level2type=N'COLUMN',@level2name=N'HYJB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会议地点ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A03_HYSQXGJL', @level2type=N'COLUMN',@level2name=N'HYDZID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会议地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A03_HYSQXGJL', @level2type=N'COLUMN',@level2name=N'HYDZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'与会人员ID列表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A03_HYSQXGJL', @level2type=N'COLUMN',@level2name=N'YHRYIDLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'与会人员姓名列表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A03_HYSQXGJL', @level2type=N'COLUMN',@level2name=N'YHRYXMLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开始时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A03_HYSQXGJL', @level2type=N'COLUMN',@level2name=N'KSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'结束时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A03_HYSQXGJL', @level2type=N'COLUMN',@level2name=N'JSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A03_HYSQXGJL', @level2type=N'COLUMN',@level2name=N'SQSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A03_HYSQXGJL', @level2type=N'COLUMN',@level2name=N'SQZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A03_HYSQXGJL', @level2type=N'COLUMN',@level2name=N'SQRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A03_HYSQXGJL', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'附件' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A03_HYSQXGJL', @level2type=N'COLUMN',@level2name=N'FJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程实例ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A03_HYSQXGJL', @level2type=N'COLUMN',@level2name=N'LCSLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程实例状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A03_HYSQXGJL', @level2type=N'COLUMN',@level2name=N'LCSLZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程模板ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A03_HYSQXGJL', @level2type=N'COLUMN',@level2name=N'LCMBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程模板名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A03_HYSQXGJL', @level2type=N'COLUMN',@level2name=N'LCMBMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'当前步骤ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A03_HYSQXGJL', @level2type=N'COLUMN',@level2name=N'DQBZID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'当前步骤名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A03_HYSQXGJL', @level2type=N'COLUMN',@level2name=N'DQBZMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'当前步骤审核状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A03_HYSQXGJL', @level2type=N'COLUMN',@level2name=N'DQBZSHZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请人部门ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A03_HYSQXGJL', @level2type=N'COLUMN',@level2name=N'SQRBMID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会议纪要表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A04_HYJY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A04_HYJY', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A04_HYJY', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会议ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A04_HYJY', @level2type=N'COLUMN',@level2name=N'HYID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会议纪要内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A04_HYJY', @level2type=N'COLUMN',@level2name=N'HYJYNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A04_HYJY', @level2type=N'COLUMN',@level2name=N'JLRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A04_HYJY', @level2type=N'COLUMN',@level2name=N'JLSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会议备注类型表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A05_HYBZLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A05_HYBZLX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A05_HYBZLX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A05_HYBZLX', @level2type=N'COLUMN',@level2name=N'MC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A05_HYBZLX', @level2type=N'COLUMN',@level2name=N'LX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会议纪要模板表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A06_HYJYMB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A06_HYJYMB', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A06_HYJYMB', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'模板名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A06_HYJYMB', @level2type=N'COLUMN',@level2name=N'MBMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'模板内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A06_HYJYMB', @level2type=N'COLUMN',@level2name=N'MBNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公文申请表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_23_A01_GWSQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_23_A01_GWSQ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_23_A01_GWSQ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程实例ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_23_A01_GWSQ', @level2type=N'COLUMN',@level2name=N'LCSLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公文标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_23_A01_GWSQ', @level2type=N'COLUMN',@level2name=N'GWBT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公文内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_23_A01_GWSQ', @level2type=N'COLUMN',@level2name=N'GWNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'附件' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_23_A01_GWSQ', @level2type=N'COLUMN',@level2name=N'FJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收件人ID列表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_23_A01_GWSQ', @level2type=N'COLUMN',@level2name=N'SJRIDLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收件人姓名列表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_23_A01_GWSQ', @level2type=N'COLUMN',@level2name=N'SJRXMLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'阅读情况' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_23_A01_GWSQ', @level2type=N'COLUMN',@level2name=N'YDQK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_23_A01_GWSQ', @level2type=N'COLUMN',@level2name=N'SQSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_23_A01_GWSQ', @level2type=N'COLUMN',@level2name=N'SQRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_23_A01_GWSQ', @level2type=N'COLUMN',@level2name=N'SQZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_23_A01_GWSQ', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收文单位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_23_A01_GWSQ', @level2type=N'COLUMN',@level2name=N'SWDW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'已归档次数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_23_A01_GWSQ', @level2type=N'COLUMN',@level2name=N'YGDCS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_23_A01_GWSQ', @level2type=N'COLUMN',@level2name=N'WJBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公文申请修改记录表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_23_A02_GWSQXGJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_23_A02_GWSQXGJL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_23_A02_GWSQXGJL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公文申请表ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_23_A02_GWSQXGJL', @level2type=N'COLUMN',@level2name=N'SQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_23_A02_GWSQXGJL', @level2type=N'COLUMN',@level2name=N'XGYHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改用户姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_23_A02_GWSQXGJL', @level2type=N'COLUMN',@level2name=N'XGYHXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公文标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_23_A02_GWSQXGJL', @level2type=N'COLUMN',@level2name=N'GWBT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公文内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_23_A02_GWSQXGJL', @level2type=N'COLUMN',@level2name=N'GWNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'附件' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_23_A02_GWSQXGJL', @level2type=N'COLUMN',@level2name=N'FJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收件人ID列表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_23_A02_GWSQXGJL', @level2type=N'COLUMN',@level2name=N'SJRIDLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收件人姓名列表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_23_A02_GWSQXGJL', @level2type=N'COLUMN',@level2name=N'SJRXMLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'阅读情况' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_23_A02_GWSQXGJL', @level2type=N'COLUMN',@level2name=N'YDQK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_23_A02_GWSQXGJL', @level2type=N'COLUMN',@level2name=N'SQSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_23_A02_GWSQXGJL', @level2type=N'COLUMN',@level2name=N'SQRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_23_A02_GWSQXGJL', @level2type=N'COLUMN',@level2name=N'SQZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_23_A02_GWSQXGJL', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收文单位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_23_A02_GWSQXGJL', @level2type=N'COLUMN',@level2name=N'SWDW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程实例ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_23_A02_GWSQXGJL', @level2type=N'COLUMN',@level2name=N'LCSLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程实例状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_23_A02_GWSQXGJL', @level2type=N'COLUMN',@level2name=N'LCSLZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程模板ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_23_A02_GWSQXGJL', @level2type=N'COLUMN',@level2name=N'LCMBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程模板名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_23_A02_GWSQXGJL', @level2type=N'COLUMN',@level2name=N'LCMBMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'当前步骤ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_23_A02_GWSQXGJL', @level2type=N'COLUMN',@level2name=N'DQBZID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'当前步骤名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_23_A02_GWSQXGJL', @level2type=N'COLUMN',@level2name=N'DQBZMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'当前步骤审核状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_23_A02_GWSQXGJL', @level2type=N'COLUMN',@level2name=N'DQBZSHZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请人部门ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_23_A02_GWSQXGJL', @level2type=N'COLUMN',@level2name=N'SQRBMID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用车申请表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A01_YCSQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A01_YCSQ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A01_YCSQ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程实例ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A01_YCSQ', @level2type=N'COLUMN',@level2name=N'LCSLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用车原因' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A01_YCSQ', @level2type=N'COLUMN',@level2name=N'YCYY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'外出人数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A01_YCSQ', @level2type=N'COLUMN',@level2name=N'WCRS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开始时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A01_YCSQ', @level2type=N'COLUMN',@level2name=N'KSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'使用天数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A01_YCSQ', @level2type=N'COLUMN',@level2name=N'SYTS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A01_YCSQ', @level2type=N'COLUMN',@level2name=N'SQSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A01_YCSQ', @level2type=N'COLUMN',@level2name=N'SQRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A01_YCSQ', @level2type=N'COLUMN',@level2name=N'SQZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A01_YCSQ', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请车辆ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A01_YCSQ', @level2type=N'COLUMN',@level2name=N'SQCLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'结束时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A01_YCSQ', @level2type=N'COLUMN',@level2name=N'JSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用车申请修改记录表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A02_YCSQXGJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A02_YCSQXGJL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A02_YCSQXGJL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用车申请表ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A02_YCSQXGJL', @level2type=N'COLUMN',@level2name=N'SQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A02_YCSQXGJL', @level2type=N'COLUMN',@level2name=N'XGYHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改用户姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A02_YCSQXGJL', @level2type=N'COLUMN',@level2name=N'XGYHXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用车原因' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A02_YCSQXGJL', @level2type=N'COLUMN',@level2name=N'YCYY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'外出人数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A02_YCSQXGJL', @level2type=N'COLUMN',@level2name=N'WCRS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开始时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A02_YCSQXGJL', @level2type=N'COLUMN',@level2name=N'KSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'使用天数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A02_YCSQXGJL', @level2type=N'COLUMN',@level2name=N'SYTS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A02_YCSQXGJL', @level2type=N'COLUMN',@level2name=N'SQSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A02_YCSQXGJL', @level2type=N'COLUMN',@level2name=N'SQRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A02_YCSQXGJL', @level2type=N'COLUMN',@level2name=N'SQZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A02_YCSQXGJL', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程实例ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A02_YCSQXGJL', @level2type=N'COLUMN',@level2name=N'LCSLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程实例状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A02_YCSQXGJL', @level2type=N'COLUMN',@level2name=N'LCSLZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程模板ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A02_YCSQXGJL', @level2type=N'COLUMN',@level2name=N'LCMBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程模板名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A02_YCSQXGJL', @level2type=N'COLUMN',@level2name=N'LCMBMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'当前步骤ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A02_YCSQXGJL', @level2type=N'COLUMN',@level2name=N'DQBZID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'当前步骤名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A02_YCSQXGJL', @level2type=N'COLUMN',@level2name=N'DQBZMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'当前步骤审核状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A02_YCSQXGJL', @level2type=N'COLUMN',@level2name=N'DQBZSHZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请人部门ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A02_YCSQXGJL', @level2type=N'COLUMN',@level2name=N'SQRBMID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请车辆ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A02_YCSQXGJL', @level2type=N'COLUMN',@level2name=N'SQCLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'结束时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A02_YCSQXGJL', @level2type=N'COLUMN',@level2name=N'JSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'车辆数据表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A03_CLSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A03_CLSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A03_CLSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'车辆名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A03_CLSJ', @level2type=N'COLUMN',@level2name=N'CLMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'车辆品牌' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A03_CLSJ', @level2type=N'COLUMN',@level2name=N'CLPP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'车辆车牌号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A03_CLSJ', @level2type=N'COLUMN',@level2name=N'CLCPH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最大可载人数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A03_CLSJ', @level2type=N'COLUMN',@level2name=N'ZDRNRS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'车辆状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A03_CLSJ', @level2type=N'COLUMN',@level2name=N'CLZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A03_CLSJ', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'采购申请表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_25_A01_CGSQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_25_A01_CGSQ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_25_A01_CGSQ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程实例ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_25_A01_CGSQ', @level2type=N'COLUMN',@level2name=N'LCSLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'采购单名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_25_A01_CGSQ', @level2type=N'COLUMN',@level2name=N'CGDMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'采购内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_25_A01_CGSQ', @level2type=N'COLUMN',@level2name=N'CGNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'附件' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_25_A01_CGSQ', @level2type=N'COLUMN',@level2name=N'FJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_25_A01_CGSQ', @level2type=N'COLUMN',@level2name=N'SQSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_25_A01_CGSQ', @level2type=N'COLUMN',@level2name=N'SQRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'采购状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_25_A01_CGSQ', @level2type=N'COLUMN',@level2name=N'CGZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_25_A01_CGSQ', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'采购申请修改记录表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_25_A02_CGSQXGJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_25_A02_CGSQXGJL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_25_A02_CGSQXGJL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'采购申请表ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_25_A02_CGSQXGJL', @level2type=N'COLUMN',@level2name=N'SQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_25_A02_CGSQXGJL', @level2type=N'COLUMN',@level2name=N'XGYHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改用户姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_25_A02_CGSQXGJL', @level2type=N'COLUMN',@level2name=N'XGYHXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'采购单名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_25_A02_CGSQXGJL', @level2type=N'COLUMN',@level2name=N'CGDMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'采购内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_25_A02_CGSQXGJL', @level2type=N'COLUMN',@level2name=N'CGNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'附件' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_25_A02_CGSQXGJL', @level2type=N'COLUMN',@level2name=N'FJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_25_A02_CGSQXGJL', @level2type=N'COLUMN',@level2name=N'SQSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_25_A02_CGSQXGJL', @level2type=N'COLUMN',@level2name=N'SQRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'采购状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_25_A02_CGSQXGJL', @level2type=N'COLUMN',@level2name=N'CGZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_25_A02_CGSQXGJL', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程实例ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_25_A02_CGSQXGJL', @level2type=N'COLUMN',@level2name=N'LCSLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程实例状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_25_A02_CGSQXGJL', @level2type=N'COLUMN',@level2name=N'LCSLZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程模板ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_25_A02_CGSQXGJL', @level2type=N'COLUMN',@level2name=N'LCMBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程模板名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_25_A02_CGSQXGJL', @level2type=N'COLUMN',@level2name=N'LCMBMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'当前步骤ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_25_A02_CGSQXGJL', @level2type=N'COLUMN',@level2name=N'DQBZID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'当前步骤名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_25_A02_CGSQXGJL', @level2type=N'COLUMN',@level2name=N'DQBZMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'当前步骤审核状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_25_A02_CGSQXGJL', @level2type=N'COLUMN',@level2name=N'DQBZSHZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请人部门ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_25_A02_CGSQXGJL', @level2type=N'COLUMN',@level2name=N'SQRBMID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实验室数据表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_26_A01_SYSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_26_A01_SYSSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_26_A01_SYSSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_26_A01_SYSSJ', @level2type=N'COLUMN',@level2name=N'MC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'地点' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_26_A01_SYSSJ', @level2type=N'COLUMN',@level2name=N'DD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'负责人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_26_A01_SYSSJ', @level2type=N'COLUMN',@level2name=N'FZR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实验室器材表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_26_A02_SYSQC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_26_A02_SYSQC', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_26_A02_SYSQC', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'器材名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_26_A02_SYSQC', @level2type=N'COLUMN',@level2name=N'QCMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实验室申请表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_26_A03_SYSSQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_26_A03_SYSSQ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_26_A03_SYSSQ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实验室ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_26_A03_SYSSQ', @level2type=N'COLUMN',@level2name=N'SYSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流程实例ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_26_A03_SYSSQ', @level2type=N'COLUMN',@level2name=N'LCSLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实验器材' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_26_A03_SYSSQ', @level2type=N'COLUMN',@level2name=N'SYQC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实验名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_26_A03_SYSSQ', @level2type=N'COLUMN',@level2name=N'SYMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'科目' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_26_A03_SYSSQ', @level2type=N'COLUMN',@level2name=N'KM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'班级' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_26_A03_SYSSQ', @level2type=N'COLUMN',@level2name=N'BJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开始时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_26_A03_SYSSQ', @level2type=N'COLUMN',@level2name=N'KSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'结束时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_26_A03_SYSSQ', @level2type=N'COLUMN',@level2name=N'JSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_26_A03_SYSSQ', @level2type=N'COLUMN',@level2name=N'SQSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_26_A03_SYSSQ', @level2type=N'COLUMN',@level2name=N'SQZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_26_A03_SYSSQ', @level2type=N'COLUMN',@level2name=N'SQRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_26_A03_SYSSQ', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实验室申请修改记录表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_26_A04_SYSSQXGJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_26_A04_SYSSQXGJL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_26_A04_SYSSQXGJL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实验室申请表ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_26_A04_SYSSQXGJL', @level2type=N'COLUMN',@level2name=N'SQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_26_A04_SYSSQXGJL', @level2type=N'COLUMN',@level2name=N'XGYHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改用户姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_26_A04_SYSSQXGJL', @level2type=N'COLUMN',@level2name=N'XGYHXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_26_A04_SYSSQXGJL', @level2type=N'COLUMN',@level2name=N'XGSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'大事记表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_30_A01_DSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_30_A01_DSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_30_A01_DSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_30_A01_DSJ', @level2type=N'COLUMN',@level2name=N'BT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_30_A01_DSJ', @level2type=N'COLUMN',@level2name=N'NR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'个人通讯录表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_31_A01_GRTXL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_31_A01_GRTXL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_31_A01_GRTXL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'个人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_31_A01_GRTXL', @level2type=N'COLUMN',@level2name=N'GRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系人姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_31_A01_GRTXL', @level2type=N'COLUMN',@level2name=N'LXRXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系人电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_31_A01_GRTXL', @level2type=N'COLUMN',@level2name=N'LXRDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'调查问卷数据表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_32_A01_DCWJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_32_A01_DCWJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_32_A01_DCWJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'问卷名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_32_A01_DCWJ', @level2type=N'COLUMN',@level2name=N'Title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'参选人员' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_32_A01_DCWJ', @level2type=N'COLUMN',@level2name=N'Users'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开始时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_32_A01_DCWJ', @level2type=N'COLUMN',@level2name=N'StartTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'结束时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_32_A01_DCWJ', @level2type=N'COLUMN',@level2name=N'EndTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否开启' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_32_A01_DCWJ', @level2type=N'COLUMN',@level2name=N'IsStart'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'简介' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_32_A01_DCWJ', @level2type=N'COLUMN',@level2name=N'JJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'调查问卷题目表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_32_A02_DCWJTM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_32_A02_DCWJTM', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_32_A02_DCWJTM', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属问卷' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_32_A02_DCWJTM', @level2type=N'COLUMN',@level2name=N'WJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'题目类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_32_A02_DCWJTM', @level2type=N'COLUMN',@level2name=N'TypeID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'题目' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_32_A02_DCWJTM', @level2type=N'COLUMN',@level2name=N'Title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属大类' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_32_A02_DCWJTM', @level2type=N'COLUMN',@level2name=N'SSDL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'问卷题目选项表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_32_A03_DCWJTMXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_32_A03_DCWJTMXX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_32_A03_DCWJTMXX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属题目' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_32_A03_DCWJTMXX', @level2type=N'COLUMN',@level2name=N'TMID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属问卷' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_32_A03_DCWJTMXX', @level2type=N'COLUMN',@level2name=N'WJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'选项' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_32_A03_DCWJTMXX', @level2type=N'COLUMN',@level2name=N'SelectItem'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'选项分值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_32_A03_DCWJTMXX', @level2type=N'COLUMN',@level2name=N'XXFZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'问卷结果记录表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_32_A04_DCWJJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_32_A04_DCWJJL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_32_A04_DCWJJL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_32_A04_DCWJJL', @level2type=N'COLUMN',@level2name=N'YHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属问卷ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_32_A04_DCWJJL', @level2type=N'COLUMN',@level2name=N'WJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属题目ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_32_A04_DCWJJL', @level2type=N'COLUMN',@level2name=N'TMID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'选项ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_32_A04_DCWJJL', @level2type=N'COLUMN',@level2name=N'XXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'选项分值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_32_A04_DCWJJL', @level2type=N'COLUMN',@level2name=N'XXFZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'提交状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_32_A04_DCWJJL', @level2type=N'COLUMN',@level2name=N'TJZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公文基础信息表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A01_GWJCXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A01_GWJCXX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A01_GWJCXX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'红头文字' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A01_GWJCXX', @level2type=N'COLUMN',@level2name=N'HTWZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公文标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A01_GWJCXX', @level2type=N'COLUMN',@level2name=N'GWBT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A01_GWJCXX', @level2type=N'COLUMN',@level2name=N'SJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'正文' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A01_GWJCXX', @level2type=N'COLUMN',@level2name=N'ZW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A01_GWJCXX', @level2type=N'COLUMN',@level2name=N'BH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公章信息表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A02_GZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A02_GZ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A02_GZ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'签章图片路径' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A02_GZ', @level2type=N'COLUMN',@level2name=N'QZTPLJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发文表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A03_FW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A03_FW', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A03_FW', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公文ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A03_FW', @level2type=N'COLUMN',@level2name=N'GWID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'附注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A03_FW', @level2type=N'COLUMN',@level2name=N'FZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A03_FW', @level2type=N'COLUMN',@level2name=N'SHRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'短信通知状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A03_FW', @level2type=N'COLUMN',@level2name=N'DXTZZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核批注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A03_FW', @level2type=N'COLUMN',@level2name=N'SHPZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公章ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A03_FW', @level2type=N'COLUMN',@level2name=N'GZID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'重要程度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A03_FW', @level2type=N'COLUMN',@level2name=N'ZYCD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否需要回复' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A03_FW', @level2type=N'COLUMN',@level2name=N'SFHF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发送单位或科室' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A03_FW', @level2type=N'COLUMN',@level2name=N'FSDW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发送者留言' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A03_FW', @level2type=N'COLUMN',@level2name=N'FSZLY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发送人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A03_FW', @level2type=N'COLUMN',@level2name=N'FSRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'报审状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A03_FW', @level2type=N'COLUMN',@level2name=N'BSZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A03_FW', @level2type=N'COLUMN',@level2name=N'SHZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发送状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A03_FW', @level2type=N'COLUMN',@level2name=N'FSZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'办结状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A03_FW', @level2type=N'COLUMN',@level2name=N'BJZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收文表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A04_SW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A04_SW', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A04_SW', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公文ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A04_SW', @level2type=N'COLUMN',@level2name=N'GWID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'下发人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A04_SW', @level2type=N'COLUMN',@level2name=N'XFRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'接受人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A04_SW', @level2type=N'COLUMN',@level2name=N'JSRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'下发时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A04_SW', @level2type=N'COLUMN',@level2name=N'XFSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'签收状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A04_SW', @level2type=N'COLUMN',@level2name=N'QSZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'短信通知状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A04_SW', @level2type=N'COLUMN',@level2name=N'DXTZZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'回复状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A04_SW', @level2type=N'COLUMN',@level2name=N'HFZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'回复信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A04_SW', @level2type=N'COLUMN',@level2name=N'HFXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'回复附件' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A04_SW', @level2type=N'COLUMN',@level2name=N'HFFJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'处理状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A04_SW', @level2type=N'COLUMN',@level2name=N'CLZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A04_SW', @level2type=N'COLUMN',@level2name=N'SCZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'红头文字表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A05_HTWZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A05_HTWZ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A05_HTWZ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'红头文字' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A05_HTWZ', @level2type=N'COLUMN',@level2name=N'HTWZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文印流程记录' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_34_A01_WYLCJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_34_A01_WYLCJL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_34_A01_WYLCJL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文印标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_34_A01_WYLCJL', @level2type=N'COLUMN',@level2name=N'WYBT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_34_A01_WYLCJL', @level2type=N'COLUMN',@level2name=N'NR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_34_A01_WYLCJL', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_34_A01_WYLCJL', @level2type=N'COLUMN',@level2name=N'SQRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_34_A01_WYLCJL', @level2type=N'COLUMN',@level2name=N'SQSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_34_A01_WYLCJL', @level2type=N'COLUMN',@level2name=N'SHZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_34_A01_WYLCJL', @level2type=N'COLUMN',@level2name=N'SHRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_34_A01_WYLCJL', @level2type=N'COLUMN',@level2name=N'SHSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_34_A01_WYLCJL', @level2type=N'COLUMN',@level2name=N'SHBZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核列表是否显示' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_34_A01_WYLCJL', @level2type=N'COLUMN',@level2name=N'SHLBSFXS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'打印状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_34_A01_WYLCJL', @level2type=N'COLUMN',@level2name=N'DYZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'打印时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_34_A01_WYLCJL', @level2type=N'COLUMN',@level2name=N'DYSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'打印备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_34_A01_WYLCJL', @level2type=N'COLUMN',@level2name=N'DYBZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'打印列表是否显示' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_34_A01_WYLCJL', @level2type=N'COLUMN',@level2name=N'DYLBSFXS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'任务表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_35_A01_RW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_35_A01_RW', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_35_A01_RW', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'任务标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_35_A01_RW', @level2type=N'COLUMN',@level2name=N'RWBT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'接收用户ID列表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_35_A01_RW', @level2type=N'COLUMN',@level2name=N'JSYHIDLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'接收用户姓名列表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_35_A01_RW', @level2type=N'COLUMN',@level2name=N'JSYHXMLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'截止日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_35_A01_RW', @level2type=N'COLUMN',@level2name=N'JZRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_35_A01_RW', @level2type=N'COLUMN',@level2name=N'NR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发布人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_35_A01_RW', @level2type=N'COLUMN',@level2name=N'FBRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发布人姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_35_A01_RW', @level2type=N'COLUMN',@level2name=N'FBRXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发布部门名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_35_A01_RW', @level2type=N'COLUMN',@level2name=N'FBBMMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发布时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_35_A01_RW', @level2type=N'COLUMN',@level2name=N'FBSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'任务状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_35_A01_RW', @level2type=N'COLUMN',@level2name=N'RWZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'任务接收人表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_35_A02_RWJSR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_35_A02_RWJSR', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_35_A02_RWJSR', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'任务ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_35_A02_RWJSR', @level2type=N'COLUMN',@level2name=N'RWID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'接收人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_35_A02_RWJSR', @level2type=N'COLUMN',@level2name=N'JSRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'阅读状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_35_A02_RWJSR', @level2type=N'COLUMN',@level2name=N'YDZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'完成状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_35_A02_RWJSR', @level2type=N'COLUMN',@level2name=N'WCZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_35_A02_RWJSR', @level2type=N'COLUMN',@level2name=N'SCZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'提交状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_35_A02_RWJSR', @level2type=N'COLUMN',@level2name=N'TJZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'附件' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_35_A02_RWJSR', @level2type=N'COLUMN',@level2name=N'FJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_35_A02_RWJSR', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'回复记录表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_35_A03_HFJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_35_A03_HFJL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_35_A03_HFJL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'任务ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_35_A03_HFJL', @level2type=N'COLUMN',@level2name=N'RWID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'回复人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_35_A03_HFJL', @level2type=N'COLUMN',@level2name=N'HFRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'回复内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_35_A03_HFJL', @level2type=N'COLUMN',@level2name=N'HFNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'回复时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_35_A03_HFJL', @level2type=N'COLUMN',@level2name=N'HSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'班级工作类别表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_36_A01_BJGZLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_36_A01_BJGZLB', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_36_A01_BJGZLB', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工作类别名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_36_A01_BJGZLB', @level2type=N'COLUMN',@level2name=N'GZLBMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登记人员ID列表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_36_A01_BJGZLB', @level2type=N'COLUMN',@level2name=N'DJRYIDLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登记人员姓名列表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_36_A01_BJGZLB', @level2type=N'COLUMN',@level2name=N'DJRYXMLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'班级工作检查表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_36_A02_BJGZJC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_36_A02_BJGZJC', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_36_A02_BJGZJC', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工作类别ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_36_A02_BJGZJC', @level2type=N'COLUMN',@level2name=N'GZLBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'班级' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_36_A02_BJGZJC', @level2type=N'COLUMN',@level2name=N'BJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_36_A02_BJGZJC', @level2type=N'COLUMN',@level2name=N'RQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'结果' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_36_A02_BJGZJC', @level2type=N'COLUMN',@level2name=N'JG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'班级名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_36_A02_BJGZJC', @level2type=N'COLUMN',@level2name=N'BJMC'
GO
--空间名：EDU_ZDGL  生成器：SqlBuilder0.1

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZDGL_01_GZDM')
            and   type = 'U')
   drop table EDU_ZDGL_01_GZDM
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZDGL_02_WXDM')
            and   type = 'U')
   drop table EDU_ZDGL_02_WXDM
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZDGL_03_SBXHLX')
            and   type = 'U')
   drop table EDU_ZDGL_03_SBXHLX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZDGL_04_SCCJ')
            and   type = 'U')
   drop table EDU_ZDGL_04_SCCJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZDGL_05_SBXH')
            and   type = 'U')
   drop table EDU_ZDGL_05_SBXH
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZDGL_06_XZQH')
            and   type = 'U')
   drop table EDU_ZDGL_06_XZQH
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZDGL_07_SSGS')
            and   type = 'U')
   drop table EDU_ZDGL_07_SSGS
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZDGL_08_KH')
            and   type = 'U')
   drop table EDU_ZDGL_08_KH
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZDGL_09_WXS')
            and   type = 'U')
   drop table EDU_ZDGL_09_WXS
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZDGL_10_WXR')
            and   type = 'U')
   drop table EDU_ZDGL_10_WXR
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZDGL_11_FJPC')
            and   type = 'U')
   drop table EDU_ZDGL_11_FJPC
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZDGL_12_FJXX')
            and   type = 'U')
   drop table EDU_ZDGL_12_FJXX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZDGL_13_FHPC')
            and   type = 'U')
   drop table EDU_ZDGL_13_FHPC
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZDGL_14_FHXX')
            and   type = 'U')
   drop table EDU_ZDGL_14_FHXX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZDGL_15_WLGS')
            and   type = 'U')
   drop table EDU_ZDGL_15_WLGS
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZDGL_16_JSD')
            and   type = 'U')
   drop table EDU_ZDGL_16_JSD
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZDGL_17_JSDXX')
            and   type = 'U')
   drop table EDU_ZDGL_17_JSDXX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZDGL_18_JFD')
            and   type = 'U')
   drop table EDU_ZDGL_18_JFD
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZDGL_19_JFDXX')
            and   type = 'U')
   drop table EDU_ZDGL_19_JFDXX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZDGL_20_FHD')
            and   type = 'U')
   drop table EDU_ZDGL_20_FHD
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZDGL_21_FHDXX')
            and   type = 'U')
   drop table EDU_ZDGL_21_FHDXX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZDGL_22_FHR')
            and   type = 'U')
   drop table EDU_ZDGL_22_FHR
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZDGL_23_QRR')
            and   type = 'U')
   drop table EDU_ZDGL_23_QRR
go
--故障代码表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZDGL_01_GZDM]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZDGL_01_GZDM](
	[ID]  int  NOT NULL,--编号
	[GZDM]  nvarchar(200)  NOT NULL,--故障代码
	[GZXX]  nvarchar(200)  NOT NULL,--故障现象
CONSTRAINT [PK_EDU_ZDGL_01_GZDM] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--维修代码表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZDGL_02_WXDM]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZDGL_02_WXDM](
	[ID]  int  NOT NULL,--编号
	[WXDM]  nvarchar(200)  NOT NULL,--维修代码
	[WXNR]  nvarchar(500)  NOT NULL,--维修内容
	[WXJG]  nvarchar(500)  NOT NULL,--维修结果
CONSTRAINT [PK_EDU_ZDGL_02_WXDM] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--设备型号类型表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZDGL_03_SBXHLX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZDGL_03_SBXHLX](
	[ID]  int  NOT NULL,--编号
	[LXMC]  nvarchar(200)  NOT NULL,--类型名称
	[LXJC]  nvarchar(200)  NOT NULL,--类型简称
CONSTRAINT [PK_EDU_ZDGL_03_SBXHLX] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--生产厂家表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZDGL_04_SCCJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZDGL_04_SCCJ](
	[ID]  int  NOT NULL,--编号
	[CJM]  nvarchar(200)  NOT NULL,--厂家名
	[CJDZ]  nvarchar(500)  NOT NULL,--厂家地址
	[LXR]  nvarchar(200)  NOT NULL,--联系人
	[LXDH]  nvarchar(200)  NOT NULL,--联系电话
CONSTRAINT [PK_EDU_ZDGL_04_SCCJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--设备型号表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZDGL_05_SBXH]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZDGL_05_SBXH](
	[ID]  int  NOT NULL,--编号
	[XX]  nvarchar(200)  NOT NULL,--型号
	[LXID]  int  NOT NULL,--类型ID
	[SCCJID]  int  NOT NULL,--生产厂家ID
	[PY]  nvarchar(200)  NOT NULL,--拼音
	[MS]  nvarchar(200)  NOT NULL,--描述
	[JG]  float  NOT NULL,--价格
	[XTLX]  int  NOT NULL,--系统类型
CONSTRAINT [PK_EDU_ZDGL_05_SBXH] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--行政区划表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZDGL_06_XZQH]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZDGL_06_XZQH](
	[QHM]  nvarchar(6)  NOT NULL,--区划码
	[QHMC]  nvarchar(200)  NOT NULL,--区划名称
	[QH]  nvarchar(200)  NOT NULL,--区号
CONSTRAINT [PK_EDU_ZDGL_06_XZQH] PRIMARY KEY CLUSTERED
(
	[QHM] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--所属公司表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZDGL_07_SSGS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZDGL_07_SSGS](
	[ID]  int  NOT NULL,--编号
	[GSDM]  nvarchar(200)  NOT NULL,--公司代码
	[GSM]  nvarchar(200)  NOT NULL,--公司名
CONSTRAINT [PK_EDU_ZDGL_07_SSGS] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--客户表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZDGL_08_KH]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZDGL_08_KH](
	[ID]  int  NOT NULL,--编号
	[KHDM]  nvarchar(200)  NOT NULL,--客户代码
	[SZQYID]  nvarchar(6)  NOT NULL,--所在区域ID
	[SSGSID]  int  NOT NULL,--所属公司ID
	[DWMC]  nvarchar(200)  NOT NULL,--单位名称
	[PY]  nvarchar(200)  NOT NULL,--拼音
	[KHDZ]  nvarchar(200)  NOT NULL,--客户地址
	[LXR]  nvarchar(200)  NOT NULL,--联系人
	[DH]  nvarchar(200)  NOT NULL,--电话
	[XTLX]  int  NOT NULL,--系统类型
CONSTRAINT [PK_EDU_ZDGL_08_KH] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--维修商表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZDGL_09_WXS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZDGL_09_WXS](
	[ID]  int  NOT NULL,--编号
	[WXSDM]  nvarchar(200)  NOT NULL,--维修商代码
	[WXSMC]  nvarchar(200)  NOT NULL,--维修商名称
	[LXR]  nvarchar(200)  NOT NULL,--联系人
	[LXDM]  nvarchar(200)  NOT NULL,--联系代码
	[DZ]  nvarchar(200)  NOT NULL,--地址
CONSTRAINT [PK_EDU_ZDGL_09_WXS] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--维修人表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZDGL_10_WXR]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZDGL_10_WXR](
	[ID]  int  NOT NULL,--编号
	[GH]  nvarchar(200)  NOT NULL,--工号
	[XM]  nvarchar(200)  NOT NULL,--姓名
	[LXDH]  nvarchar(200)  NOT NULL,--联系电话
CONSTRAINT [PK_EDU_ZDGL_10_WXR] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--分拣批次表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZDGL_11_FJPC]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZDGL_11_FJPC](
	[ID]  int  NOT NULL,--编号
	[PCH]  nvarchar(200)  NOT NULL,--批次号
	[KHID]  int  NOT NULL,--客户ID
	[JSRQ]  datetime  NOT NULL,--接受日期
	[LRSJ]  datetime  NOT NULL,--录入时间
	[FJWGSJ]  datetime  NOT NULL,--分拣完工时间
	[FJFZR]  nvarchar(200)  NOT NULL,--分拣负责人
	[QRR]  nvarchar(200)  NOT NULL,--确认人
	[QRRLXDH]  nvarchar(200)  NOT NULL,--确认人联系电话
	[QRSJ]  datetime  NOT NULL,--确认时间
	[CSJG]  int  NOT NULL,--测试结果
CONSTRAINT [PK_EDU_ZDGL_11_FJPC] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--分拣详细表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZDGL_12_FJXX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZDGL_12_FJXX](
	[ID]  int  NOT NULL,--编号
	[PCID]  int  NOT NULL,--批次ID
	[XHID]  int  NOT NULL,--型号ID
	[SRSL]  int  NOT NULL,--收入数量
	[LPSL]  int  NOT NULL,--良品数量
	[GZSL]  int  NOT NULL,--故障数量
	[BFSL]  int  NOT NULL,--报废数量
	[RWSHSL]  int  NOT NULL,--人为损坏数量
	[QT]  int  NOT NULL,--其他
	[HJ]  int  NOT NULL,--合计
	[BZ]  nvarchar(500)  NOT NULL,--备注
	[JCFW]  int  NOT NULL,--基础服务
	[HK]  int  NOT NULL,--换壳
	[WX]  int  NOT NULL,--维修
	[XDY]  int  NOT NULL,--新电源
	[JDY]  int  NOT NULL,--旧电源
	[PJ]  int  NOT NULL,--配件
	[TH]  int  NOT NULL,--退回
	[QTE]  int  NOT NULL,--其他二
	[WF]  int  NOT NULL,--未返
	[FHRQ]  datetime  NOT NULL,--返回日期
CONSTRAINT [PK_EDU_ZDGL_12_FJXX] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--发货批次表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZDGL_13_FHPC]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZDGL_13_FHPC](
	[ID]  int  NOT NULL,--编号
	[FHPCH]  nvarchar(200)  NOT NULL,--发货批次号
	[FHR]  nvarchar(200)  NOT NULL,--发货人
	[WLGSID]  int  NOT NULL,--物流公司ID
	[ZXS]  int  NOT NULL,--总箱数
	[FHSJ]  datetime  NOT NULL,--发货时间
	[FJPCID]  int  NOT NULL,--分拣批次ID
	[FHRID]  int  NOT NULL,--发货人ID
CONSTRAINT [PK_EDU_ZDGL_13_FHPC] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--发货详细表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZDGL_14_FHXX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZDGL_14_FHXX](
	[ID]  int  NOT NULL,--编号
	[FHPCID]  int  NOT NULL,--发货批次ID
	[FJXXID]  int  NOT NULL,--分拣详细ID
	[JCFW]  int  NOT NULL,--基础服务
	[HK]  int  NOT NULL,--换壳
	[WX]  int  NOT NULL,--维修
	[XDY]  int  NOT NULL,--新电源
	[JDY]  int  NOT NULL,--旧电源
	[PJ]  int  NOT NULL,--配件
	[TH]  int  NOT NULL,--退回
	[QT]  int  NOT NULL,--其他
	[WF]  int  NOT NULL,--未返
	[FHRQ]  datetime  NOT NULL,--返回日期
CONSTRAINT [PK_EDU_ZDGL_14_FHXX] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--物流公司表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZDGL_15_WLGS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZDGL_15_WLGS](
	[ID]  int  NOT NULL,--编号
	[GSDM]  nvarchar(200)  NOT NULL,--公司代码
	[GSM]  nvarchar(200)  NOT NULL,--公司名
	[GSLXR]  nvarchar(200)  NOT NULL,--公司联系人
	[LXDH]  nvarchar(200)  NOT NULL,--联系电话
CONSTRAINT [PK_EDU_ZDGL_15_WLGS] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--接收单表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZDGL_16_JSD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZDGL_16_JSD](
	[ID]  int  NOT NULL,--编号
	[JSDH]  nvarchar(200)  NOT NULL,--接收单号
	[SXDWID]  int  NOT NULL,--送修单位ID
	[SXRQ]  datetime  NOT NULL,--送修日期
	[BCZT]  int  NOT NULL,--保存状态
	[SFQR]  nvarchar(1)  NOT NULL,--是否确认
CONSTRAINT [PK_EDU_ZDGL_16_JSD] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--接收单详细表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZDGL_17_JSDXX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZDGL_17_JSDXX](
	[ID]  int  NOT NULL,--编号
	[XHID]  int  NOT NULL,--型号ID
	[XH]  nvarchar(200)  NOT NULL,--序号
	[SN]  nvarchar(200)  NOT NULL,--SN号
	[SFECFX]  nvarchar(1)  NOT NULL,--是否二次返修
	[SXDWID]  int  NOT NULL,--送修单位ID
	[GZXXID]  int  NOT NULL,--故障信息ID
	[WXXXID]  int  NOT NULL,--维修信息ID
	[WXRID]  int  NOT NULL,--维修人ID
	[WXRQ]  datetime  NOT NULL,--维修日期
	[JSDID]  int  NOT NULL,--接收单ID
CONSTRAINT [PK_EDU_ZDGL_17_JSDXX] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--交付单表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZDGL_18_JFD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZDGL_18_JFD](
	[ID]  int  NOT NULL,--编号
	[JFDH]  nvarchar(200)  NOT NULL,--交付单号
	[WXSID]  int  NOT NULL,--维修商ID
	[JFRQ]  datetime  NOT NULL,--交付日期
	[SXDWID]  int  NOT NULL,--送修单位ID
CONSTRAINT [PK_EDU_ZDGL_18_JFD] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--交付单详细表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZDGL_19_JFDXX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZDGL_19_JFDXX](
	[ID]  int  NOT NULL,--编号
	[JFDID]  int  NOT NULL,--交付单ID
	[JSDXXID]  int  NOT NULL,--接收单详细ID
CONSTRAINT [PK_EDU_ZDGL_19_JFDXX] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--返回单表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZDGL_20_FHD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZDGL_20_FHD](
	[ID]  int  NOT NULL,--编号
	[FHDH]  nvarchar(200)  NOT NULL,--返回单号
	[FHRQ]  datetime  NOT NULL,--返回日期
	[FHDWID]  int  NOT NULL,--返回单位ID
CONSTRAINT [PK_EDU_ZDGL_20_FHD] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--返回单详细表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZDGL_21_FHDXX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZDGL_21_FHDXX](
	[ID]  int  NOT NULL,--编号
	[FHDID]  int  NOT NULL,--返回单ID
	[JSDXXID]  int  NOT NULL,--接收单详细ID
CONSTRAINT [PK_EDU_ZDGL_21_FHDXX] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--发货人表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZDGL_22_FHR]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZDGL_22_FHR](
	[ID]  int  NOT NULL,--编号
	[GH]  nvarchar(200)  NOT NULL,--工号
	[XM]  nvarchar(200)  NOT NULL,--姓名
	[LXDH]  nvarchar(200)  NOT NULL,--联系电话
CONSTRAINT [PK_EDU_ZDGL_22_FHR] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--确认人表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZDGL_23_QRR]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZDGL_23_QRR](
	[ID]  int  NOT NULL,--编号
	[GSMC]  nvarchar(200)  NOT NULL,--公司名称
	[XM]  nvarchar(200)  NOT NULL,--姓名
	[LXDH]  nvarchar(200)  NOT NULL,--联系电话
CONSTRAINT [PK_EDU_ZDGL_23_QRR] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--以下为添加注释语句
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'故障代码表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_01_GZDM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_01_GZDM', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'故障代码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_01_GZDM', @level2type=N'COLUMN',@level2name=N'GZDM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'故障现象' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_01_GZDM', @level2type=N'COLUMN',@level2name=N'GZXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'维修代码表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_02_WXDM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_02_WXDM', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'维修代码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_02_WXDM', @level2type=N'COLUMN',@level2name=N'WXDM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'维修内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_02_WXDM', @level2type=N'COLUMN',@level2name=N'WXNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'维修结果' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_02_WXDM', @level2type=N'COLUMN',@level2name=N'WXJG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'设备型号类型表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_03_SBXHLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_03_SBXHLX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_03_SBXHLX', @level2type=N'COLUMN',@level2name=N'LXMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型简称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_03_SBXHLX', @level2type=N'COLUMN',@level2name=N'LXJC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'生产厂家表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_04_SCCJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_04_SCCJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'厂家名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_04_SCCJ', @level2type=N'COLUMN',@level2name=N'CJM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'厂家地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_04_SCCJ', @level2type=N'COLUMN',@level2name=N'CJDZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_04_SCCJ', @level2type=N'COLUMN',@level2name=N'LXR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_04_SCCJ', @level2type=N'COLUMN',@level2name=N'LXDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'设备型号表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_05_SBXH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_05_SBXH', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'型号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_05_SBXH', @level2type=N'COLUMN',@level2name=N'XX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_05_SBXH', @level2type=N'COLUMN',@level2name=N'LXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'生产厂家ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_05_SBXH', @level2type=N'COLUMN',@level2name=N'SCCJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'拼音' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_05_SBXH', @level2type=N'COLUMN',@level2name=N'PY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_05_SBXH', @level2type=N'COLUMN',@level2name=N'MS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'价格' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_05_SBXH', @level2type=N'COLUMN',@level2name=N'JG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_05_SBXH', @level2type=N'COLUMN',@level2name=N'XTLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'行政区划表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_06_XZQH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'区划码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_06_XZQH', @level2type=N'COLUMN',@level2name=N'QHM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'区划名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_06_XZQH', @level2type=N'COLUMN',@level2name=N'QHMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'区号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_06_XZQH', @level2type=N'COLUMN',@level2name=N'QH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属公司表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_07_SSGS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_07_SSGS', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公司代码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_07_SSGS', @level2type=N'COLUMN',@level2name=N'GSDM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公司名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_07_SSGS', @level2type=N'COLUMN',@level2name=N'GSM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'客户表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_08_KH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_08_KH', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'客户代码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_08_KH', @level2type=N'COLUMN',@level2name=N'KHDM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所在区域ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_08_KH', @level2type=N'COLUMN',@level2name=N'SZQYID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属公司ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_08_KH', @level2type=N'COLUMN',@level2name=N'SSGSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单位名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_08_KH', @level2type=N'COLUMN',@level2name=N'DWMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'拼音' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_08_KH', @level2type=N'COLUMN',@level2name=N'PY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'客户地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_08_KH', @level2type=N'COLUMN',@level2name=N'KHDZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_08_KH', @level2type=N'COLUMN',@level2name=N'LXR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_08_KH', @level2type=N'COLUMN',@level2name=N'DH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_08_KH', @level2type=N'COLUMN',@level2name=N'XTLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'维修商表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_09_WXS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_09_WXS', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'维修商代码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_09_WXS', @level2type=N'COLUMN',@level2name=N'WXSDM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'维修商名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_09_WXS', @level2type=N'COLUMN',@level2name=N'WXSMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_09_WXS', @level2type=N'COLUMN',@level2name=N'LXR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系代码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_09_WXS', @level2type=N'COLUMN',@level2name=N'LXDM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_09_WXS', @level2type=N'COLUMN',@level2name=N'DZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'维修人表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_10_WXR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_10_WXR', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_10_WXR', @level2type=N'COLUMN',@level2name=N'GH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_10_WXR', @level2type=N'COLUMN',@level2name=N'XM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_10_WXR', @level2type=N'COLUMN',@level2name=N'LXDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分拣批次表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_11_FJPC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_11_FJPC', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'批次号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_11_FJPC', @level2type=N'COLUMN',@level2name=N'PCH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'客户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_11_FJPC', @level2type=N'COLUMN',@level2name=N'KHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'接受日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_11_FJPC', @level2type=N'COLUMN',@level2name=N'JSRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'录入时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_11_FJPC', @level2type=N'COLUMN',@level2name=N'LRSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分拣完工时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_11_FJPC', @level2type=N'COLUMN',@level2name=N'FJWGSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分拣负责人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_11_FJPC', @level2type=N'COLUMN',@level2name=N'FJFZR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'确认人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_11_FJPC', @level2type=N'COLUMN',@level2name=N'QRR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'确认人联系电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_11_FJPC', @level2type=N'COLUMN',@level2name=N'QRRLXDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'确认时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_11_FJPC', @level2type=N'COLUMN',@level2name=N'QRSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'测试结果' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_11_FJPC', @level2type=N'COLUMN',@level2name=N'CSJG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分拣详细表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_12_FJXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_12_FJXX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'批次ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_12_FJXX', @level2type=N'COLUMN',@level2name=N'PCID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'型号ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_12_FJXX', @level2type=N'COLUMN',@level2name=N'XHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收入数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_12_FJXX', @level2type=N'COLUMN',@level2name=N'SRSL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'良品数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_12_FJXX', @level2type=N'COLUMN',@level2name=N'LPSL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'故障数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_12_FJXX', @level2type=N'COLUMN',@level2name=N'GZSL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'报废数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_12_FJXX', @level2type=N'COLUMN',@level2name=N'BFSL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'人为损坏数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_12_FJXX', @level2type=N'COLUMN',@level2name=N'RWSHSL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'其他' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_12_FJXX', @level2type=N'COLUMN',@level2name=N'QT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'合计' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_12_FJXX', @level2type=N'COLUMN',@level2name=N'HJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_12_FJXX', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'基础服务' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_12_FJXX', @level2type=N'COLUMN',@level2name=N'JCFW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'换壳' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_12_FJXX', @level2type=N'COLUMN',@level2name=N'HK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'维修' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_12_FJXX', @level2type=N'COLUMN',@level2name=N'WX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'新电源' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_12_FJXX', @level2type=N'COLUMN',@level2name=N'XDY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'旧电源' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_12_FJXX', @level2type=N'COLUMN',@level2name=N'JDY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'配件' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_12_FJXX', @level2type=N'COLUMN',@level2name=N'PJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'退回' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_12_FJXX', @level2type=N'COLUMN',@level2name=N'TH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'其他二' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_12_FJXX', @level2type=N'COLUMN',@level2name=N'QTE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'未返' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_12_FJXX', @level2type=N'COLUMN',@level2name=N'WF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'返回日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_12_FJXX', @level2type=N'COLUMN',@level2name=N'FHRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发货批次表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_13_FHPC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_13_FHPC', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发货批次号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_13_FHPC', @level2type=N'COLUMN',@level2name=N'FHPCH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发货人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_13_FHPC', @level2type=N'COLUMN',@level2name=N'FHR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'物流公司ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_13_FHPC', @level2type=N'COLUMN',@level2name=N'WLGSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'总箱数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_13_FHPC', @level2type=N'COLUMN',@level2name=N'ZXS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发货时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_13_FHPC', @level2type=N'COLUMN',@level2name=N'FHSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分拣批次ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_13_FHPC', @level2type=N'COLUMN',@level2name=N'FJPCID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发货人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_13_FHPC', @level2type=N'COLUMN',@level2name=N'FHRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发货详细表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_14_FHXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_14_FHXX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发货批次ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_14_FHXX', @level2type=N'COLUMN',@level2name=N'FHPCID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分拣详细ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_14_FHXX', @level2type=N'COLUMN',@level2name=N'FJXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'基础服务' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_14_FHXX', @level2type=N'COLUMN',@level2name=N'JCFW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'换壳' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_14_FHXX', @level2type=N'COLUMN',@level2name=N'HK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'维修' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_14_FHXX', @level2type=N'COLUMN',@level2name=N'WX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'新电源' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_14_FHXX', @level2type=N'COLUMN',@level2name=N'XDY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'旧电源' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_14_FHXX', @level2type=N'COLUMN',@level2name=N'JDY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'配件' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_14_FHXX', @level2type=N'COLUMN',@level2name=N'PJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'退回' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_14_FHXX', @level2type=N'COLUMN',@level2name=N'TH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'其他' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_14_FHXX', @level2type=N'COLUMN',@level2name=N'QT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'未返' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_14_FHXX', @level2type=N'COLUMN',@level2name=N'WF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'返回日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_14_FHXX', @level2type=N'COLUMN',@level2name=N'FHRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'物流公司表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_15_WLGS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_15_WLGS', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公司代码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_15_WLGS', @level2type=N'COLUMN',@level2name=N'GSDM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公司名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_15_WLGS', @level2type=N'COLUMN',@level2name=N'GSM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公司联系人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_15_WLGS', @level2type=N'COLUMN',@level2name=N'GSLXR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_15_WLGS', @level2type=N'COLUMN',@level2name=N'LXDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'接收单表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_16_JSD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_16_JSD', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'接收单号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_16_JSD', @level2type=N'COLUMN',@level2name=N'JSDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'送修单位ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_16_JSD', @level2type=N'COLUMN',@level2name=N'SXDWID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'送修日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_16_JSD', @level2type=N'COLUMN',@level2name=N'SXRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'保存状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_16_JSD', @level2type=N'COLUMN',@level2name=N'BCZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否确认' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_16_JSD', @level2type=N'COLUMN',@level2name=N'SFQR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'接收单详细表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_17_JSDXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_17_JSDXX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'型号ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_17_JSDXX', @level2type=N'COLUMN',@level2name=N'XHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_17_JSDXX', @level2type=N'COLUMN',@level2name=N'XH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SN号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_17_JSDXX', @level2type=N'COLUMN',@level2name=N'SN'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否二次返修' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_17_JSDXX', @level2type=N'COLUMN',@level2name=N'SFECFX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'送修单位ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_17_JSDXX', @level2type=N'COLUMN',@level2name=N'SXDWID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'故障信息ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_17_JSDXX', @level2type=N'COLUMN',@level2name=N'GZXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'维修信息ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_17_JSDXX', @level2type=N'COLUMN',@level2name=N'WXXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'维修人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_17_JSDXX', @level2type=N'COLUMN',@level2name=N'WXRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'维修日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_17_JSDXX', @level2type=N'COLUMN',@level2name=N'WXRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'接收单ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_17_JSDXX', @level2type=N'COLUMN',@level2name=N'JSDID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'交付单表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_18_JFD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_18_JFD', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'交付单号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_18_JFD', @level2type=N'COLUMN',@level2name=N'JFDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'维修商ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_18_JFD', @level2type=N'COLUMN',@level2name=N'WXSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'交付日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_18_JFD', @level2type=N'COLUMN',@level2name=N'JFRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'送修单位ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_18_JFD', @level2type=N'COLUMN',@level2name=N'SXDWID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'交付单详细表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_19_JFDXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_19_JFDXX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'交付单ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_19_JFDXX', @level2type=N'COLUMN',@level2name=N'JFDID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'接收单详细ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_19_JFDXX', @level2type=N'COLUMN',@level2name=N'JSDXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'返回单表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_20_FHD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_20_FHD', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'返回单号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_20_FHD', @level2type=N'COLUMN',@level2name=N'FHDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'返回日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_20_FHD', @level2type=N'COLUMN',@level2name=N'FHRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'返回单位ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_20_FHD', @level2type=N'COLUMN',@level2name=N'FHDWID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'返回单详细表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_21_FHDXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_21_FHDXX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'返回单ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_21_FHDXX', @level2type=N'COLUMN',@level2name=N'FHDID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'接收单详细ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_21_FHDXX', @level2type=N'COLUMN',@level2name=N'JSDXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发货人表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_22_FHR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_22_FHR', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_22_FHR', @level2type=N'COLUMN',@level2name=N'GH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_22_FHR', @level2type=N'COLUMN',@level2name=N'XM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_22_FHR', @level2type=N'COLUMN',@level2name=N'LXDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'确认人表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_23_QRR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_23_QRR', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公司名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_23_QRR', @level2type=N'COLUMN',@level2name=N'GSMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_23_QRR', @level2type=N'COLUMN',@level2name=N'XM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_23_QRR', @level2type=N'COLUMN',@level2name=N'LXDH'
GO
