--空间名：EDU_SYS  生成器：SqlBuilder0.1

if exists (select 1 from  sysobjects where  id = object_id('EDU_SYS_01_CONFIG')
            and   type = 'U')
   drop table EDU_SYS_01_CONFIG
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_SYS_01_XN')
            and   type = 'U')
   drop table EDU_SYS_01_XN
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_SYS_01_MODULE')
            and   type = 'U')
   drop table EDU_SYS_01_MODULE
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_SYS_02_JFCONFIG')
            and   type = 'U')
   drop table EDU_SYS_02_JFCONFIG
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_SYS_02_RYCONFIG')
            and   type = 'U')
   drop table EDU_SYS_02_RYCONFIG
go
--全局配置表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_SYS_01_CONFIG]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_SYS_01_CONFIG](
	[ID]  int  NOT NULL,--配置ID
	[VALUE]  nvarchar(200)  NOT NULL,--配置值
CONSTRAINT [PK_EDU_SYS_01_CONFIG] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

INSERT INTO [EDU_SYS_01_CONFIG]([ID] ,[VALUE]) VALUES('1001', 'http://115.236.101.41/yxtlogin/index.jsp')
INSERT INTO [EDU_SYS_01_CONFIG]([ID] ,[VALUE]) VALUES('1002', 'http://sso.114school.com/cas/')
INSERT INTO [EDU_SYS_01_CONFIG]([ID] ,[VALUE]) VALUES('1003', 'http://www2.114school.com/203S/api4LoginUser.do')
INSERT INTO [EDU_SYS_01_CONFIG]([ID] ,[VALUE]) VALUES('1004', 'http://115.236.101.57/MsgService/SiServer')
INSERT INTO [EDU_SYS_01_CONFIG]([ID] ,[VALUE]) VALUES('1005', '0573')
INSERT INTO [EDU_SYS_01_CONFIG]([ID] ,[VALUE]) VALUES('1006', '83572000')
INSERT INTO [EDU_SYS_01_CONFIG]([ID] ,[VALUE]) VALUES('1007', '83572499')
INSERT INTO [EDU_SYS_01_CONFIG]([ID] ,[VALUE]) VALUES('2001', '600')

--学年表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_SYS_01_XN]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_SYS_01_XN](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校名
	[XN]  nvarchar(9)  NOT NULL,--学年
CONSTRAINT [PK_EDU_SYS_01_XN] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO


--导航表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_SYS_01_MODULE]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_SYS_01_MODULE](
	[ID]  int  NOT NULL,--
	[APPID]  int  NOT NULL,--
	[NAME]  nvarchar(20)  NOT NULL,--
	[Depth]  int  NOT NULL,--
	[PID]  int  NOT NULL,--
	[MenuDisp]  int  NOT NULL,--
	[MenuUserType]  int  NOT NULL,--
	[Link]  nvarchar(100)  NOT NULL,--
	[OrderIndex]  int  NOT NULL,--
CONSTRAINT [PK_EDU_SYS_01_MODULE] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO


--积分配置表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_SYS_02_JFCONFIG]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_SYS_02_JFCONFIG](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校名
	[GNMC]  nvarchar(30)  NOT NULL,--功能名称
	[APPID]  int  NOT NULL,--应用ID
	[JF]  int  NOT NULL,--积分
CONSTRAINT [PK_EDU_SYS_02_JFCONFIG] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO


--荣誉配置表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_SYS_02_RYCONFIG]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_SYS_02_RYCONFIG](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校名
	[GNMC]  nvarchar(30)  NOT NULL,--功能名称
	[APPID]  int  NOT NULL,--应用ID
	[RY]  int  NOT NULL,--荣誉
CONSTRAINT [PK_EDU_SYS_02_RYCONFIG] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO


--以下为添加注释语句
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'全局配置表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_SYS_01_CONFIG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'配置ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_SYS_01_CONFIG', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'配置值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_SYS_01_CONFIG', @level2type=N'COLUMN',@level2name=N'VALUE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学年表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_SYS_01_XN'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_SYS_01_XN', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_SYS_01_XN', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学年' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_SYS_01_XN', @level2type=N'COLUMN',@level2name=N'XN'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'导航表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_SYS_01_MODULE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'积分配置表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_SYS_02_JFCONFIG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_SYS_02_JFCONFIG', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_SYS_02_JFCONFIG', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'功能名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_SYS_02_JFCONFIG', @level2type=N'COLUMN',@level2name=N'GNMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'应用ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_SYS_02_JFCONFIG', @level2type=N'COLUMN',@level2name=N'APPID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'积分' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_SYS_02_JFCONFIG', @level2type=N'COLUMN',@level2name=N'JF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'荣誉配置表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_SYS_02_RYCONFIG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_SYS_02_RYCONFIG', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_SYS_02_RYCONFIG', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'功能名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_SYS_02_RYCONFIG', @level2type=N'COLUMN',@level2name=N'GNMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'应用ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_SYS_02_RYCONFIG', @level2type=N'COLUMN',@level2name=N'APPID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'荣誉' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_SYS_02_RYCONFIG', @level2type=N'COLUMN',@level2name=N'RY'
GO
