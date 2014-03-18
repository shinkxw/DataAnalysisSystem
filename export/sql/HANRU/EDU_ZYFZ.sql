--空间名：EDU_ZYFZ  生成器：SqlBuilder0.1

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZYFZ_01_A01_XK')
            and   type = 'U')
   drop table EDU_ZYFZ_01_A01_XK
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZYFZ_01_A02_NJ')
            and   type = 'U')
   drop table EDU_ZYFZ_01_A02_NJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZYFZ_01_A03_RYJB')
            and   type = 'U')
   drop table EDU_ZYFZ_01_A03_RYJB
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZYFZ_01_A04_GZMB')
            and   type = 'U')
   drop table EDU_ZYFZ_01_A04_GZMB
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZYFZ_02_A01_LMLB')
            and   type = 'U')
   drop table EDU_ZYFZ_02_A01_LMLB
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZYFZ_02_A02_GZNRLM')
            and   type = 'U')
   drop table EDU_ZYFZ_02_A02_GZNRLM
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZYFZ_02_A03_XQLM')
            and   type = 'U')
   drop table EDU_ZYFZ_02_A03_XQLM
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZYFZ_02_A04_GZNR')
            and   type = 'U')
   drop table EDU_ZYFZ_02_A04_GZNR
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZYFZ_02_A05_GZNRPL')
            and   type = 'U')
   drop table EDU_ZYFZ_02_A05_GZNRPL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZYFZ_02_A06_GRRY')
            and   type = 'U')
   drop table EDU_ZYFZ_02_A06_GRRY
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZYFZ_03_A01_YQLJLX')
            and   type = 'U')
   drop table EDU_ZYFZ_03_A01_YQLJLX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZYFZ_03_A02_YQLJ')
            and   type = 'U')
   drop table EDU_ZYFZ_03_A02_YQLJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZYFZ_03_A03_GGXX')
            and   type = 'U')
   drop table EDU_ZYFZ_03_A03_GGXX
go
--学科表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZYFZ_01_A01_XK]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZYFZ_01_A01_XK](
	[ID]  int  identity,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[XKMC]  nvarchar(50)  NOT NULL,--学科名称
CONSTRAINT [PK_EDU_ZYFZ_01_A01_XK] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--年级表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZYFZ_01_A02_NJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZYFZ_01_A02_NJ](
	[ID]  int  identity,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[NJMC]  nvarchar(50)  NOT NULL,--年级名称
CONSTRAINT [PK_EDU_ZYFZ_01_A02_NJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--荣誉级别表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZYFZ_01_A03_RYJB]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZYFZ_01_A03_RYJB](
	[ID]  int  identity,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[RYJBMC]  nvarchar(50)  NOT NULL,--荣誉级别名称
CONSTRAINT [PK_EDU_ZYFZ_01_A03_RYJB] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--工作模板表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZYFZ_01_A04_GZMB]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZYFZ_01_A04_GZMB](
	[ID]  int  identity,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[MBMC]  nvarchar(50)  NOT NULL,--模板名称
	[MBNR]  text  NOT NULL,--模板内容
CONSTRAINT [PK_EDU_ZYFZ_01_A04_GZMB] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--栏目类别表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZYFZ_02_A01_LMLB]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZYFZ_02_A01_LMLB](
	[ID]  int  identity,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[LMLBMC]  nvarchar(50)  NOT NULL,--栏目类别名称
	[PLSX]  int  NOT NULL,--排列顺序
CONSTRAINT [PK_EDU_ZYFZ_02_A01_LMLB] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--工作内容栏目表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZYFZ_02_A02_GZNRLM]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZYFZ_02_A02_GZNRLM](
	[ID]  int  identity,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[LMMC]  nvarchar(20)  NOT NULL,--栏目名称
	[LMLBID]  int  NOT NULL,--栏目类别ID
	[SYMBID]  int  NOT NULL,--使用模板ID
	[PLFS]  int  NOT NULL,--排列方式
	[PLSX]  int  NOT NULL,--排列顺序
	[NMLLLM]  int  NOT NULL,--匿名浏览栏目
CONSTRAINT [PK_EDU_ZYFZ_02_A02_GZNRLM] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--学期栏目表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZYFZ_02_A03_XQLM]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZYFZ_02_A03_XQLM](
	[ID]  int  identity,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[XQID]  int  NOT NULL,--学期ID
	[LMIDLB]  text  NOT NULL,--栏目ID列表
	[LMMCLB]  text  NOT NULL,--栏目名称列表
CONSTRAINT [PK_EDU_ZYFZ_02_A03_XQLM] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--工作内容表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZYFZ_02_A04_GZNR]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZYFZ_02_A04_GZNR](
	[ID]  int  identity,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[BT]  nvarchar(50)  NOT NULL,--标题
	[GJC]  nvarchar(50)  NOT NULL,--关键词
	[SSLMID]  int  NOT NULL,--所属栏目ID
	[SSXKID]  int  NOT NULL,--所属学科ID
	[SSNJID]  int  NOT NULL,--所属年级ID
	[SFGK]  nvarchar(1)  NOT NULL,--是否公开
	[NR]  text  NOT NULL,--内容
	[FBRID]  nvarchar(20)  NOT NULL,--发布人ID
	[FBSJ]  datetime  NOT NULL,--发布时间
	[LLL]  int  NOT NULL,--浏览量
	[XQID]  int  NOT NULL,--学期ID
CONSTRAINT [PK_EDU_ZYFZ_02_A04_GZNR] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--工作内容评论表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZYFZ_02_A05_GZNRPL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZYFZ_02_A05_GZNRPL](
	[ID]  int  identity,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[GZNRID]  int  NOT NULL,--工作内容ID
	[PLNR]  text  NOT NULL,--评论内容
	[PLR]  nvarchar(30)  NOT NULL,--评论人
	[PLSJ]  datetime  NOT NULL,--评论时间
CONSTRAINT [PK_EDU_ZYFZ_02_A05_GZNRPL] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--个人荣誉表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZYFZ_02_A06_GRRY]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZYFZ_02_A06_GRRY](
	[ID]  int  identity,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[RYMC]  nvarchar(50)  NOT NULL,--荣誉名称
	[RYJBID]  int  NOT NULL,--荣誉级别ID
	[SSXNID]  int  NOT NULL,--所属学年ID
	[SJDW]  nvarchar(50)  NOT NULL,--授奖单位
	[SJSJ]  datetime  NOT NULL,--授奖时间
	[SFGK]  nvarchar(1)  NOT NULL,--是否公开
	[HJRID]  nvarchar(20)  NOT NULL,--获奖人ID
	[NR]  text  NOT NULL,--内容
	[BZ]  nvarchar(500)  NOT NULL,--备注
	[TJSJ]  datetime  NOT NULL,--添加时间
CONSTRAINT [PK_EDU_ZYFZ_02_A06_GRRY] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--友情链接类型表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZYFZ_03_A01_YQLJLX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZYFZ_03_A01_YQLJLX](
	[ID]  int  identity,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[LXMC]  nvarchar(50)  NOT NULL,--类型名称
	[XSFS]  int  NOT NULL,--显示方式
CONSTRAINT [PK_EDU_ZYFZ_03_A01_YQLJLX] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--友情链接表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZYFZ_03_A02_YQLJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZYFZ_03_A02_YQLJ](
	[ID]  int  identity,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[LJLXID]  int  NOT NULL,--链接类型ID
	[LJMC]  nvarchar(50)  NOT NULL,--链接名称
	[LJTP]  text  NOT NULL,--链接图片
	[LJDZ]  text  NOT NULL,--链接地址
CONSTRAINT [PK_EDU_ZYFZ_03_A02_YQLJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--公告信息表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZYFZ_03_A03_GGXX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZYFZ_03_A03_GGXX](
	[ID]  int  identity,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[BT]  nvarchar(50)  NOT NULL,--标题
	[FBRID]  nvarchar(20)  NOT NULL,--发布人ID
	[FBSJ]  datetime  NOT NULL,--发布时间
	[NR]  text  NOT NULL,--内容
	[DJL]  int  NOT NULL,--点击量
	[SFZD]  nvarchar(1)  NOT NULL,--是否置顶
CONSTRAINT [PK_EDU_ZYFZ_03_A03_GGXX] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--以下为添加注释语句
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学科表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_01_A01_XK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_01_A01_XK', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_01_A01_XK', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学科名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_01_A01_XK', @level2type=N'COLUMN',@level2name=N'XKMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'年级表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_01_A02_NJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_01_A02_NJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_01_A02_NJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'年级名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_01_A02_NJ', @level2type=N'COLUMN',@level2name=N'NJMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'荣誉级别表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_01_A03_RYJB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_01_A03_RYJB', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_01_A03_RYJB', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'荣誉级别名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_01_A03_RYJB', @level2type=N'COLUMN',@level2name=N'RYJBMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工作模板表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_01_A04_GZMB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_01_A04_GZMB', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_01_A04_GZMB', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'模板名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_01_A04_GZMB', @level2type=N'COLUMN',@level2name=N'MBMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'模板内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_01_A04_GZMB', @level2type=N'COLUMN',@level2name=N'MBNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'栏目类别表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_02_A01_LMLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_02_A01_LMLB', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_02_A01_LMLB', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'栏目类别名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_02_A01_LMLB', @level2type=N'COLUMN',@level2name=N'LMLBMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排列顺序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_02_A01_LMLB', @level2type=N'COLUMN',@level2name=N'PLSX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工作内容栏目表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_02_A02_GZNRLM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_02_A02_GZNRLM', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_02_A02_GZNRLM', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'栏目名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_02_A02_GZNRLM', @level2type=N'COLUMN',@level2name=N'LMMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'栏目类别ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_02_A02_GZNRLM', @level2type=N'COLUMN',@level2name=N'LMLBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'使用模板ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_02_A02_GZNRLM', @level2type=N'COLUMN',@level2name=N'SYMBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排列方式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_02_A02_GZNRLM', @level2type=N'COLUMN',@level2name=N'PLFS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排列顺序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_02_A02_GZNRLM', @level2type=N'COLUMN',@level2name=N'PLSX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'匿名浏览栏目' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_02_A02_GZNRLM', @level2type=N'COLUMN',@level2name=N'NMLLLM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学期栏目表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_02_A03_XQLM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_02_A03_XQLM', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_02_A03_XQLM', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学期ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_02_A03_XQLM', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'栏目ID列表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_02_A03_XQLM', @level2type=N'COLUMN',@level2name=N'LMIDLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'栏目名称列表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_02_A03_XQLM', @level2type=N'COLUMN',@level2name=N'LMMCLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工作内容表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_02_A04_GZNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_02_A04_GZNR', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_02_A04_GZNR', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_02_A04_GZNR', @level2type=N'COLUMN',@level2name=N'BT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'关键词' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_02_A04_GZNR', @level2type=N'COLUMN',@level2name=N'GJC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属栏目ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_02_A04_GZNR', @level2type=N'COLUMN',@level2name=N'SSLMID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属学科ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_02_A04_GZNR', @level2type=N'COLUMN',@level2name=N'SSXKID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属年级ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_02_A04_GZNR', @level2type=N'COLUMN',@level2name=N'SSNJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否公开' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_02_A04_GZNR', @level2type=N'COLUMN',@level2name=N'SFGK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_02_A04_GZNR', @level2type=N'COLUMN',@level2name=N'NR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发布人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_02_A04_GZNR', @level2type=N'COLUMN',@level2name=N'FBRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发布时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_02_A04_GZNR', @level2type=N'COLUMN',@level2name=N'FBSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'浏览量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_02_A04_GZNR', @level2type=N'COLUMN',@level2name=N'LLL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学期ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_02_A04_GZNR', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工作内容评论表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_02_A05_GZNRPL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_02_A05_GZNRPL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_02_A05_GZNRPL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工作内容ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_02_A05_GZNRPL', @level2type=N'COLUMN',@level2name=N'GZNRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'评论内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_02_A05_GZNRPL', @level2type=N'COLUMN',@level2name=N'PLNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'评论人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_02_A05_GZNRPL', @level2type=N'COLUMN',@level2name=N'PLR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'评论时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_02_A05_GZNRPL', @level2type=N'COLUMN',@level2name=N'PLSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'个人荣誉表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_02_A06_GRRY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_02_A06_GRRY', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_02_A06_GRRY', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'荣誉名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_02_A06_GRRY', @level2type=N'COLUMN',@level2name=N'RYMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'荣誉级别ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_02_A06_GRRY', @level2type=N'COLUMN',@level2name=N'RYJBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属学年ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_02_A06_GRRY', @level2type=N'COLUMN',@level2name=N'SSXNID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'授奖单位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_02_A06_GRRY', @level2type=N'COLUMN',@level2name=N'SJDW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'授奖时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_02_A06_GRRY', @level2type=N'COLUMN',@level2name=N'SJSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否公开' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_02_A06_GRRY', @level2type=N'COLUMN',@level2name=N'SFGK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'获奖人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_02_A06_GRRY', @level2type=N'COLUMN',@level2name=N'HJRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_02_A06_GRRY', @level2type=N'COLUMN',@level2name=N'NR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_02_A06_GRRY', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_02_A06_GRRY', @level2type=N'COLUMN',@level2name=N'TJSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'友情链接类型表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_03_A01_YQLJLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_03_A01_YQLJLX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_03_A01_YQLJLX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_03_A01_YQLJLX', @level2type=N'COLUMN',@level2name=N'LXMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'显示方式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_03_A01_YQLJLX', @level2type=N'COLUMN',@level2name=N'XSFS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'友情链接表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_03_A02_YQLJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_03_A02_YQLJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_03_A02_YQLJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'链接类型ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_03_A02_YQLJ', @level2type=N'COLUMN',@level2name=N'LJLXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'链接名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_03_A02_YQLJ', @level2type=N'COLUMN',@level2name=N'LJMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'链接图片' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_03_A02_YQLJ', @level2type=N'COLUMN',@level2name=N'LJTP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'链接地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_03_A02_YQLJ', @level2type=N'COLUMN',@level2name=N'LJDZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公告信息表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_03_A03_GGXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_03_A03_GGXX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_03_A03_GGXX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_03_A03_GGXX', @level2type=N'COLUMN',@level2name=N'BT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发布人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_03_A03_GGXX', @level2type=N'COLUMN',@level2name=N'FBRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发布时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_03_A03_GGXX', @level2type=N'COLUMN',@level2name=N'FBSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_03_A03_GGXX', @level2type=N'COLUMN',@level2name=N'NR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'点击量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_03_A03_GGXX', @level2type=N'COLUMN',@level2name=N'DJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否置顶' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_03_A03_GGXX', @level2type=N'COLUMN',@level2name=N'SFZD'
GO
