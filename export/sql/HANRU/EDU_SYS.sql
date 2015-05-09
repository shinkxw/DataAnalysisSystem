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

if exists (select 1 from  sysobjects where  id = object_id('EDU_SYS_01_MICROMODULE')
            and   type = 'U')
   drop table EDU_SYS_01_MICROMODULE
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

INSERT INTO [EDU_SYS_01_CONFIG]([ID] ,[VALUE]) VALUES('1001', 'http://www.114school.com/yxt/index.html')
INSERT INTO [EDU_SYS_01_CONFIG]([ID] ,[VALUE]) VALUES('1002', 'http://sso.114school.com/cas/')
INSERT INTO [EDU_SYS_01_CONFIG]([ID] ,[VALUE]) VALUES('1003', 'http://www2.114school.com/203S/api4LoginUser.do')
INSERT INTO [EDU_SYS_01_CONFIG]([ID] ,[VALUE]) VALUES('1004', 'http://122.229.30.151:8888/MsgService/SiServer')
INSERT INTO [EDU_SYS_01_CONFIG]([ID] ,[VALUE]) VALUES('1005', '0573')
INSERT INTO [EDU_SYS_01_CONFIG]([ID] ,[VALUE]) VALUES('1006', '83572000')
INSERT INTO [EDU_SYS_01_CONFIG]([ID] ,[VALUE]) VALUES('1007', '83572499')
INSERT INTO [EDU_SYS_01_CONFIG]([ID] ,[VALUE]) VALUES('2001', '600')
INSERT INTO [EDU_SYS_01_CONFIG]([ID] ,[VALUE]) VALUES('9001', '关闭性能检测')
INSERT INTO [EDU_SYS_01_CONFIG]([ID] ,[VALUE]) VALUES('9002', '开启性能检测')

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


--微导航表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_SYS_01_MICROMODULE]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_SYS_01_MICROMODULE](
	[ID]  int  NOT NULL,--编号
	[MODULEID]  int  NOT NULL,--模块ID
	[NAME]  nvarchar(20)  NOT NULL,--名称
	[URL]  nvarchar(300)  NOT NULL,--网址
	[PICTYPE]  int  NOT NULL,--图片类型
	[PIC1]  nvarchar(300)  NOT NULL,--图片一
	[PIC2]  nvarchar(300)  NOT NULL,--图片二
CONSTRAINT [PK_EDU_SYS_01_MICROMODULE] PRIMARY KEY CLUSTERED
(
	[ID] ASC
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
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微导航表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_SYS_01_MICROMODULE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_SYS_01_MICROMODULE', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'模块ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_SYS_01_MICROMODULE', @level2type=N'COLUMN',@level2name=N'MODULEID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_SYS_01_MICROMODULE', @level2type=N'COLUMN',@level2name=N'NAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'网址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_SYS_01_MICROMODULE', @level2type=N'COLUMN',@level2name=N'URL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图片类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_SYS_01_MICROMODULE', @level2type=N'COLUMN',@level2name=N'PICTYPE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图片一' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_SYS_01_MICROMODULE', @level2type=N'COLUMN',@level2name=N'PIC1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图片二' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_SYS_01_MICROMODULE', @level2type=N'COLUMN',@level2name=N'PIC2'
GO
