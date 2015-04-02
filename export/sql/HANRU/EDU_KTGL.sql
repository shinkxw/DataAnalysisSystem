--空间名：EDU_KTGL  生成器：SqlBuilder0.1

if exists (select 1 from  sysobjects where  id = object_id('EDU_KTGL_01_A01_KTML')
            and   type = 'U')
   drop table EDU_KTGL_01_A01_KTML
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_KTGL_01_A03_KTJB')
            and   type = 'U')
   drop table EDU_KTGL_01_A03_KTJB
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_KTGL_01_A10_TZGG')
            and   type = 'U')
   drop table EDU_KTGL_01_A10_TZGG
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_KTGL_01_A11_YQLJLX')
            and   type = 'U')
   drop table EDU_KTGL_01_A11_YQLJLX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_KTGL_01_A12_YQLJ')
            and   type = 'U')
   drop table EDU_KTGL_01_A12_YQLJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_KTGL_05_A01_KTNR')
            and   type = 'U')
   drop table EDU_KTGL_05_A01_KTNR
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_KTGL_06_A01_XZZQ')
            and   type = 'U')
   drop table EDU_KTGL_06_A01_XZZQ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_KTGL_07_A01_FWLL')
            and   type = 'U')
   drop table EDU_KTGL_07_A01_FWLL
go
--课题目录
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_KTGL_01_A01_KTML]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_KTGL_01_A01_KTML](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[MLMC]  nvarchar(300)  NOT NULL,--目录名称
	[FMLID]  int  NOT NULL,--父目录ID
	[PLSX]  int  NOT NULL,--排列顺序
	[SFSYZS]  int  NOT NULL,--是否首页展示
	[SFQY]  int  NOT NULL,--是否启用
	[URL]  nvarchar(500)  NOT NULL,--网址
CONSTRAINT [PK_EDU_KTGL_01_A01_KTML] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--课题级别
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_KTGL_01_A03_KTJB]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_KTGL_01_A03_KTJB](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[JBMC]  nvarchar(50)  NOT NULL,--级别名称
CONSTRAINT [PK_EDU_KTGL_01_A03_KTJB] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--通知公告
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_KTGL_01_A10_TZGG]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_KTGL_01_A10_TZGG](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校名
	[TITLE]  nvarchar(100)  NOT NULL,--标题
	[FBRID]  nvarchar(20)  NOT NULL,--发布人ID
	[FBRXM]  nvarchar(50)  NOT NULL,--发布人姓名
	[FBBM]  nvarchar(50)  NULL,--发布部门
	[FBSJ]  datetime  NOT NULL,--发布时间
	[NR]  text  NULL,--内容
	[TPDZ]  nvarchar(300)  NULL,--图片地址
	[DJL]  int  NULL,--点击量
	[SHZT]  int  NOT NULL,--审核状态
	[SHRID]  nvarchar(20)  NULL,--审核人ID
	[SHRXM]  nvarchar(50)  NULL,--审核人姓名
	[SHSJ]  datetime  NOT NULL,--审核时间
	[SFXS]  int  NOT NULL,--是否显示
	[SFZD]  int  NOT NULL,--是否置顶
CONSTRAINT [PK_EDU_KTGL_01_A10_TZGG] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--友情链接类型
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_KTGL_01_A11_YQLJLX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_KTGL_01_A11_YQLJLX](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校名
	[NAME]  nvarchar(50)  NOT NULL,--类型名
	[SHOWSTYLE]  int  NOT NULL,--显示方式
CONSTRAINT [PK_EDU_KTGL_01_A11_YQLJLX] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--友情链接
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_KTGL_01_A12_YQLJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_KTGL_01_A12_YQLJ](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校名
	[YQLJLXID]  int  NOT NULL,--友情链接类型ID
	[TITLE]  nvarchar(50)  NOT NULL,--标题
	[IMAGEURL]  nvarchar(500)  NULL,--图片
	[URL]  nvarchar(300)  NOT NULL,--链接
CONSTRAINT [PK_EDU_KTGL_01_A12_YQLJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--课题内容
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_KTGL_05_A01_KTNR]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_KTGL_05_A01_KTNR](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[KTJBID]  int  NOT NULL,--课题级别ID
	[KTMC]  nvarchar(100)  NOT NULL,--课题名称
	[KTFZRID]  nvarchar(20)  NOT NULL,--课题负责人
	[KTFZRQQ]  nvarchar(20)  NOT NULL,--课题负责人QQ
	[KTFZRDH]  nvarchar(20)  NOT NULL,--课题负责人电话
	[CYRYMD]  text  NOT NULL,--参与人员名单
	[YJFA]  text  NOT NULL,--研究方案
	[YJCG]  text  NOT NULL,--研究成果
	[JTBG]  text  NOT NULL,--结题报告
	[MLID]  int  NOT NULL,--目录ID
	[SHZT]  int  NOT NULL,--审核状态
	[LXSJ]  datetime  NOT NULL,--立项时间
	[JTSJ]  datetime  NOT NULL,--结题时间
CONSTRAINT [PK_EDU_KTGL_05_A01_KTNR] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--下载专区
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_KTGL_06_A01_XZZQ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_KTGL_06_A01_XZZQ](
	[ID]  int  identity,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[BT]  nvarchar(200)  NOT NULL,--标题
	[NR]  text  NOT NULL,--内容
CONSTRAINT [PK_EDU_KTGL_06_A01_XZZQ] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--访问履历
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_KTGL_07_A01_FWLL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_KTGL_07_A01_FWLL](
	[ID]  int  identity,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[FWIP]  nvarchar(50)  NOT NULL,--访问IP
	[FWLJ]  nvarchar(500)  NOT NULL,--访问链接
	[FWSJ]  datetime  NOT NULL,--访问时间
CONSTRAINT [PK_EDU_KTGL_07_A01_FWLL] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--以下为添加注释语句
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课题目录' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_01_A01_KTML'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_01_A01_KTML', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_01_A01_KTML', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'目录名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_01_A01_KTML', @level2type=N'COLUMN',@level2name=N'MLMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父目录ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_01_A01_KTML', @level2type=N'COLUMN',@level2name=N'FMLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排列顺序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_01_A01_KTML', @level2type=N'COLUMN',@level2name=N'PLSX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否首页展示' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_01_A01_KTML', @level2type=N'COLUMN',@level2name=N'SFSYZS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否启用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_01_A01_KTML', @level2type=N'COLUMN',@level2name=N'SFQY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'网址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_01_A01_KTML', @level2type=N'COLUMN',@level2name=N'URL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课题级别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_01_A03_KTJB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_01_A03_KTJB', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_01_A03_KTJB', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'级别名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_01_A03_KTJB', @level2type=N'COLUMN',@level2name=N'JBMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'通知公告' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_01_A10_TZGG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_01_A10_TZGG', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_01_A10_TZGG', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_01_A10_TZGG', @level2type=N'COLUMN',@level2name=N'TITLE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发布人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_01_A10_TZGG', @level2type=N'COLUMN',@level2name=N'FBRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发布人姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_01_A10_TZGG', @level2type=N'COLUMN',@level2name=N'FBRXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发布部门' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_01_A10_TZGG', @level2type=N'COLUMN',@level2name=N'FBBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发布时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_01_A10_TZGG', @level2type=N'COLUMN',@level2name=N'FBSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_01_A10_TZGG', @level2type=N'COLUMN',@level2name=N'NR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图片地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_01_A10_TZGG', @level2type=N'COLUMN',@level2name=N'TPDZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'点击量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_01_A10_TZGG', @level2type=N'COLUMN',@level2name=N'DJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_01_A10_TZGG', @level2type=N'COLUMN',@level2name=N'SHZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_01_A10_TZGG', @level2type=N'COLUMN',@level2name=N'SHRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核人姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_01_A10_TZGG', @level2type=N'COLUMN',@level2name=N'SHRXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_01_A10_TZGG', @level2type=N'COLUMN',@level2name=N'SHSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否显示' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_01_A10_TZGG', @level2type=N'COLUMN',@level2name=N'SFXS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否置顶' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_01_A10_TZGG', @level2type=N'COLUMN',@level2name=N'SFZD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'友情链接类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_01_A11_YQLJLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_01_A11_YQLJLX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_01_A11_YQLJLX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_01_A11_YQLJLX', @level2type=N'COLUMN',@level2name=N'NAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'显示方式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_01_A11_YQLJLX', @level2type=N'COLUMN',@level2name=N'SHOWSTYLE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'友情链接' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_01_A12_YQLJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_01_A12_YQLJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_01_A12_YQLJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'友情链接类型ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_01_A12_YQLJ', @level2type=N'COLUMN',@level2name=N'YQLJLXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_01_A12_YQLJ', @level2type=N'COLUMN',@level2name=N'TITLE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图片' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_01_A12_YQLJ', @level2type=N'COLUMN',@level2name=N'IMAGEURL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'链接' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_01_A12_YQLJ', @level2type=N'COLUMN',@level2name=N'URL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课题内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_05_A01_KTNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_05_A01_KTNR', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_05_A01_KTNR', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课题级别ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_05_A01_KTNR', @level2type=N'COLUMN',@level2name=N'KTJBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课题名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_05_A01_KTNR', @level2type=N'COLUMN',@level2name=N'KTMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课题负责人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_05_A01_KTNR', @level2type=N'COLUMN',@level2name=N'KTFZRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课题负责人QQ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_05_A01_KTNR', @level2type=N'COLUMN',@level2name=N'KTFZRQQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课题负责人电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_05_A01_KTNR', @level2type=N'COLUMN',@level2name=N'KTFZRDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'参与人员名单' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_05_A01_KTNR', @level2type=N'COLUMN',@level2name=N'CYRYMD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'研究方案' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_05_A01_KTNR', @level2type=N'COLUMN',@level2name=N'YJFA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'研究成果' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_05_A01_KTNR', @level2type=N'COLUMN',@level2name=N'YJCG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'结题报告' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_05_A01_KTNR', @level2type=N'COLUMN',@level2name=N'JTBG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'目录ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_05_A01_KTNR', @level2type=N'COLUMN',@level2name=N'MLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_05_A01_KTNR', @level2type=N'COLUMN',@level2name=N'SHZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'立项时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_05_A01_KTNR', @level2type=N'COLUMN',@level2name=N'LXSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'结题时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_05_A01_KTNR', @level2type=N'COLUMN',@level2name=N'JTSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'下载专区' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_06_A01_XZZQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_06_A01_XZZQ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_06_A01_XZZQ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_06_A01_XZZQ', @level2type=N'COLUMN',@level2name=N'BT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_06_A01_XZZQ', @level2type=N'COLUMN',@level2name=N'NR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'访问履历' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_07_A01_FWLL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_07_A01_FWLL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_07_A01_FWLL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'访问IP' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_07_A01_FWLL', @level2type=N'COLUMN',@level2name=N'FWIP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'访问链接' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_07_A01_FWLL', @level2type=N'COLUMN',@level2name=N'FWLJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'访问时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_07_A01_FWLL', @level2type=N'COLUMN',@level2name=N'FWSJ'
GO
