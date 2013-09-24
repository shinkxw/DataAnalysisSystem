--空间名：EDU_ZZ  生成器：SqlBuilder0.1

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZ_ZYZWLB')
            and   type = 'U')
   drop table EDU_ZZ_ZYZWLB
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZ_ZXJFL')
            and   type = 'U')
   drop table EDU_ZZ_ZXJFL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZ_ZKKM')
            and   type = 'U')
   drop table EDU_ZZ_ZKKM
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZ_XKSH')
            and   type = 'U')
   drop table EDU_ZZ_XKSH
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZ_SXJDLB')
            and   type = 'U')
   drop table EDU_ZZ_SXJDLB
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZ_SXJDJNSXSSL')
            and   type = 'U')
   drop table EDU_ZZ_SXJDJNSXSSL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZ_PGQK')
            and   type = 'U')
   drop table EDU_ZZ_PGQK
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZ_KCFL')
            and   type = 'U')
   drop table EDU_ZZ_KCFL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZ_JZJSGW')
            and   type = 'U')
   drop table EDU_ZZ_JZJSGW
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZ_HJXZ')
            and   type = 'U')
   drop table EDU_ZZ_HJXZ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZ_JKKM')
            and   type = 'U')
   drop table EDU_ZZ_JKKM
go
--主要职务类别代码
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZ_ZYZWLB]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZ_ZYZWLB](
	[DM]  nvarchar(1)  NOT NULL,--代码
	[MC]  nvarchar(6)  NOT NULL,--名称
CONSTRAINT [PK_EDU_ZZ_ZYZWLB] PRIMARY KEY CLUSTERED
(
	[DM] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

INSERT INTO [EDU_ZZ_ZYZWLB]([DM] ,[MC]) VALUES('1', '学校校长')
INSERT INTO [EDU_ZZ_ZYZWLB]([DM] ,[MC]) VALUES('2', '党组织负责人')
INSERT INTO [EDU_ZZ_ZYZWLB]([DM] ,[MC]) VALUES('3', '学校联系人')

--助学金分类代码
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZ_ZXJFL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZ_ZXJFL](
	[DM]  nvarchar(1)  NOT NULL,--代码
	[MC]  nvarchar(5)  NOT NULL,--名称
CONSTRAINT [PK_EDU_ZZ_ZXJFL] PRIMARY KEY CLUSTERED
(
	[DM] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

INSERT INTO [EDU_ZZ_ZXJFL]([DM] ,[MC]) VALUES('1', '国家助学金')
INSERT INTO [EDU_ZZ_ZXJFL]([DM] ,[MC]) VALUES('2', '学校助学金')
INSERT INTO [EDU_ZZ_ZXJFL]([DM] ,[MC]) VALUES('3', '企业助学金')
INSERT INTO [EDU_ZZ_ZXJFL]([DM] ,[MC]) VALUES('4', '社会助学金')
INSERT INTO [EDU_ZZ_ZXJFL]([DM] ,[MC]) VALUES('5', '其他助学金')

--中考科目代码
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZ_ZKKM]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZ_ZKKM](
	[DM]  nvarchar(2)  NOT NULL,--代码
	[MC]  nvarchar(2)  NOT NULL,--名称
CONSTRAINT [PK_EDU_ZZ_ZKKM] PRIMARY KEY CLUSTERED
(
	[DM] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

INSERT INTO [EDU_ZZ_ZKKM]([DM] ,[MC]) VALUES('1', '语文')
INSERT INTO [EDU_ZZ_ZKKM]([DM] ,[MC]) VALUES('2', '数学')
INSERT INTO [EDU_ZZ_ZKKM]([DM] ,[MC]) VALUES('3', '外语')
INSERT INTO [EDU_ZZ_ZKKM]([DM] ,[MC]) VALUES('4', '物理')
INSERT INTO [EDU_ZZ_ZKKM]([DM] ,[MC]) VALUES('5', '地理')
INSERT INTO [EDU_ZZ_ZKKM]([DM] ,[MC]) VALUES('6', '化学')
INSERT INTO [EDU_ZZ_ZKKM]([DM] ,[MC]) VALUES('7', '生物')
INSERT INTO [EDU_ZZ_ZKKM]([DM] ,[MC]) VALUES('8', '政治')
INSERT INTO [EDU_ZZ_ZKKM]([DM] ,[MC]) VALUES('9', '历史')
INSERT INTO [EDU_ZZ_ZKKM]([DM] ,[MC]) VALUES('99', '其他')

--学生选课审核状态代码
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZ_XKSH]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZ_XKSH](
	[DM]  nvarchar(1)  NOT NULL,--代码
	[MC]  nvarchar(5)  NOT NULL,--名称
CONSTRAINT [PK_EDU_ZZ_XKSH] PRIMARY KEY CLUSTERED
(
	[DM] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

INSERT INTO [EDU_ZZ_XKSH]([DM] ,[MC]) VALUES('1', '审核中')
INSERT INTO [EDU_ZZ_XKSH]([DM] ,[MC]) VALUES('2', '审核通过')
INSERT INTO [EDU_ZZ_XKSH]([DM] ,[MC]) VALUES('3', '审核未通过')

--实习基地类别代码
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZ_SXJDLB]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZ_SXJDLB](
	[DM]  nvarchar(1)  NOT NULL,--代码
	[MC]  nvarchar(8)  NOT NULL,--名称
CONSTRAINT [PK_EDU_ZZ_SXJDLB] PRIMARY KEY CLUSTERED
(
	[DM] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

INSERT INTO [EDU_ZZ_SXJDLB]([DM] ,[MC]) VALUES('1', '本地区校内')
INSERT INTO [EDU_ZZ_SXJDLB]([DM] ,[MC]) VALUES('2', '本地区校外')
INSERT INTO [EDU_ZZ_SXJDLB]([DM] ,[MC]) VALUES('3', '本省其他地区校内')
INSERT INTO [EDU_ZZ_SXJDLB]([DM] ,[MC]) VALUES('4', '本省其他地区校外')
INSERT INTO [EDU_ZZ_SXJDLB]([DM] ,[MC]) VALUES('5', '外省市校内')
INSERT INTO [EDU_ZZ_SXJDLB]([DM] ,[MC]) VALUES('6', '外省市校外')

--实习基地接纳实习生数量代码
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZ_SXJDJNSXSSL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZ_SXJDJNSXSSL](
	[DM]  nvarchar(1)  NOT NULL,--代码
	[MC]  nvarchar(7)  NOT NULL,--名称
CONSTRAINT [PK_EDU_ZZ_SXJDJNSXSSL] PRIMARY KEY CLUSTERED
(
	[DM] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

INSERT INTO [EDU_ZZ_SXJDJNSXSSL]([DM] ,[MC]) VALUES('1', '10人以下')
INSERT INTO [EDU_ZZ_SXJDJNSXSSL]([DM] ,[MC]) VALUES('2', '10-30人')
INSERT INTO [EDU_ZZ_SXJDJNSXSSL]([DM] ,[MC]) VALUES('3', '30-50人')
INSERT INTO [EDU_ZZ_SXJDJNSXSSL]([DM] ,[MC]) VALUES('4', '50-80人')
INSERT INTO [EDU_ZZ_SXJDJNSXSSL]([DM] ,[MC]) VALUES('5', '80-100人')
INSERT INTO [EDU_ZZ_SXJDJNSXSSL]([DM] ,[MC]) VALUES('6', '100人以上')

--评估情况代码
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZ_PGQK]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZ_PGQK](
	[DM]  nvarchar(1)  NOT NULL,--代码
	[MC]  nvarchar(8)  NOT NULL,--名称
CONSTRAINT [PK_EDU_ZZ_PGQK] PRIMARY KEY CLUSTERED
(
	[DM] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

INSERT INTO [EDU_ZZ_PGQK]([DM] ,[MC]) VALUES('1', '国家示范校')
INSERT INTO [EDU_ZZ_PGQK]([DM] ,[MC]) VALUES('2', '国家级重点')
INSERT INTO [EDU_ZZ_PGQK]([DM] ,[MC]) VALUES('3', '省部级重点')
INSERT INTO [EDU_ZZ_PGQK]([DM] ,[MC]) VALUES('4', '国家优质特色学校')
INSERT INTO [EDU_ZZ_PGQK]([DM] ,[MC]) VALUES('5', '国家实训基地')
INSERT INTO [EDU_ZZ_PGQK]([DM] ,[MC]) VALUES('6', '其他')

--课程分类代码
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZ_KCFL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZ_KCFL](
	[DM]  nvarchar(1)  NOT NULL,--代码
	[MC]  nvarchar(7)  NOT NULL,--名称
CONSTRAINT [PK_EDU_ZZ_KCFL] PRIMARY KEY CLUSTERED
(
	[DM] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

INSERT INTO [EDU_ZZ_KCFL]([DM] ,[MC]) VALUES('1', '文化基础课')
INSERT INTO [EDU_ZZ_KCFL]([DM] ,[MC]) VALUES('2', '专业基础课')
INSERT INTO [EDU_ZZ_KCFL]([DM] ,[MC]) VALUES('3', '专业课')
INSERT INTO [EDU_ZZ_KCFL]([DM] ,[MC]) VALUES('4', '推荐选修课')
INSERT INTO [EDU_ZZ_KCFL]([DM] ,[MC]) VALUES('5', '任意选修课')
INSERT INTO [EDU_ZZ_KCFL]([DM] ,[MC]) VALUES('6', '课程设计与实习')
INSERT INTO [EDU_ZZ_KCFL]([DM] ,[MC]) VALUES('7', '顶岗实习或实训')
INSERT INTO [EDU_ZZ_KCFL]([DM] ,[MC]) VALUES('8', '社会实践')
INSERT INTO [EDU_ZZ_KCFL]([DM] ,[MC]) VALUES('9', '军训')

--兼职教师岗位代码
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZ_JZJSGW]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZ_JZJSGW](
	[DM]  nvarchar(1)  NOT NULL,--代码
	[MC]  nvarchar(4)  NOT NULL,--名称
CONSTRAINT [PK_EDU_ZZ_JZJSGW] PRIMARY KEY CLUSTERED
(
	[DM] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

INSERT INTO [EDU_ZZ_JZJSGW]([DM] ,[MC]) VALUES('1', '日常教学')
INSERT INTO [EDU_ZZ_JZJSGW]([DM] ,[MC]) VALUES('2', '科研工作')
INSERT INTO [EDU_ZZ_JZJSGW]([DM] ,[MC]) VALUES('3', '实习指导')
INSERT INTO [EDU_ZZ_JZJSGW]([DM] ,[MC]) VALUES('4', '管理工作')

--户籍性质代码
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZ_HJXZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZ_HJXZ](
	[DM]  nvarchar(1)  NOT NULL,--代码
	[MC]  nvarchar(2)  NOT NULL,--名称
CONSTRAINT [PK_EDU_ZZ_HJXZ] PRIMARY KEY CLUSTERED
(
	[DM] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

INSERT INTO [EDU_ZZ_HJXZ]([DM] ,[MC]) VALUES('1', '农村')
INSERT INTO [EDU_ZZ_HJXZ]([DM] ,[MC]) VALUES('2', '县镇')
INSERT INTO [EDU_ZZ_HJXZ]([DM] ,[MC]) VALUES('3', '城市')

--驾考科目代码
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZ_JKKM]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZ_JKKM](
	[DM]  nvarchar(1)  NOT NULL,--代码
	[MC]  nvarchar(20)  NOT NULL,--科目名称
	[KSSX]  int  NOT NULL,--考试顺序
CONSTRAINT [PK_EDU_ZZ_JKKM] PRIMARY KEY CLUSTERED
(
	[DM] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

INSERT INTO [EDU_ZZ_JKKM]([DM] ,[MC] ,[KSSX]) VALUES('1', '科目一', '1')
INSERT INTO [EDU_ZZ_JKKM]([DM] ,[MC] ,[KSSX]) VALUES('2', '科目二', '2')
INSERT INTO [EDU_ZZ_JKKM]([DM] ,[MC] ,[KSSX]) VALUES('3', '科目三', '3')

--以下为添加注释语句
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主要职务类别代码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZ_ZYZWLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'代码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZ_ZYZWLB', @level2type=N'COLUMN',@level2name=N'DM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZ_ZYZWLB', @level2type=N'COLUMN',@level2name=N'MC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'助学金分类代码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZ_ZXJFL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'代码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZ_ZXJFL', @level2type=N'COLUMN',@level2name=N'DM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZ_ZXJFL', @level2type=N'COLUMN',@level2name=N'MC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中考科目代码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZ_ZKKM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'代码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZ_ZKKM', @level2type=N'COLUMN',@level2name=N'DM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZ_ZKKM', @level2type=N'COLUMN',@level2name=N'MC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生选课审核状态代码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZ_XKSH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'代码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZ_XKSH', @level2type=N'COLUMN',@level2name=N'DM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZ_XKSH', @level2type=N'COLUMN',@level2name=N'MC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实习基地类别代码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZ_SXJDLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'代码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZ_SXJDLB', @level2type=N'COLUMN',@level2name=N'DM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZ_SXJDLB', @level2type=N'COLUMN',@level2name=N'MC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实习基地接纳实习生数量代码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZ_SXJDJNSXSSL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'代码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZ_SXJDJNSXSSL', @level2type=N'COLUMN',@level2name=N'DM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZ_SXJDJNSXSSL', @level2type=N'COLUMN',@level2name=N'MC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'评估情况代码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZ_PGQK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'代码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZ_PGQK', @level2type=N'COLUMN',@level2name=N'DM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZ_PGQK', @level2type=N'COLUMN',@level2name=N'MC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程分类代码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZ_KCFL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'代码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZ_KCFL', @level2type=N'COLUMN',@level2name=N'DM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZ_KCFL', @level2type=N'COLUMN',@level2name=N'MC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'兼职教师岗位代码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZ_JZJSGW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'代码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZ_JZJSGW', @level2type=N'COLUMN',@level2name=N'DM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZ_JZJSGW', @level2type=N'COLUMN',@level2name=N'MC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'户籍性质代码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZ_HJXZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'代码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZ_HJXZ', @level2type=N'COLUMN',@level2name=N'DM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZ_HJXZ', @level2type=N'COLUMN',@level2name=N'MC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'驾考科目代码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZ_JKKM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'代码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZ_JKKM', @level2type=N'COLUMN',@level2name=N'DM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'科目名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZ_JKKM', @level2type=N'COLUMN',@level2name=N'MC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'考试顺序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZ_JKKM', @level2type=N'COLUMN',@level2name=N'KSSX'
GO
