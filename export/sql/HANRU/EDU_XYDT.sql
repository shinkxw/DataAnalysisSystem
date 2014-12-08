--空间名：EDU_XYDT  生成器：SqlBuilder0.1

if exists (select 1 from  sysobjects where  id = object_id('EDU_XYDT_01_A01_SPML')
            and   type = 'U')
   drop table EDU_XYDT_01_A01_SPML
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_XYDT_01_A03_SPLX')
            and   type = 'U')
   drop table EDU_XYDT_01_A03_SPLX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_XYDT_01_A06_SPWJ')
            and   type = 'U')
   drop table EDU_XYDT_01_A06_SPWJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_XYDT_01_A08_SPWJPL')
            and   type = 'U')
   drop table EDU_XYDT_01_A08_SPWJPL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_XYDT_01_A10_TZGG')
            and   type = 'U')
   drop table EDU_XYDT_01_A10_TZGG
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_XYDT_01_A11_YQLJLX')
            and   type = 'U')
   drop table EDU_XYDT_01_A11_YQLJLX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_XYDT_01_A12_YQLJ')
            and   type = 'U')
   drop table EDU_XYDT_01_A12_YQLJ
go
--视频目录
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_XYDT_01_A01_SPML]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_XYDT_01_A01_SPML](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[MLMC]  nvarchar(300)  NOT NULL,--目录名称
	[FMLID]  int  NOT NULL,--父目录ID
	[PLSX]  int  NOT NULL,--排列顺序
	[SFSYZS]  int  NOT NULL,--是否首页展示
	[SFQY]  int  NOT NULL,--是否启用
	[URL]  nvarchar(500)  NOT NULL,--网址
	[FMLIDLB]  nvarchar(500)  NOT NULL,--父目录ID列表
CONSTRAINT [PK_EDU_XYDT_01_A01_SPML] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--视频类型
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_XYDT_01_A03_SPLX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_XYDT_01_A03_SPLX](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[LXMC]  nvarchar(50)  NOT NULL,--类型名称
CONSTRAINT [PK_EDU_XYDT_01_A03_SPLX] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--视频文件
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_XYDT_01_A06_SPWJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_XYDT_01_A06_SPWJ](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[SPMLID]  int  NOT NULL,--视频目录ID
	[ZYBT]  nvarchar(300)  NOT NULL,--视频标题
	[GJZ]  nvarchar(50)  NOT NULL,--关键字
	[SYXZ]  int  NOT NULL,--使用限制
	[LY]  nvarchar(20)  NOT NULL,--来源
	[WBSPLJ]  nvarchar(200)  NOT NULL,--外部视频链接
	[YYZID]  nvarchar(20)  NOT NULL,--拥有者ID
	[SPMC]  nvarchar(300)  NOT NULL,--视频名称
	[SPDX]  nvarchar(300)  NOT NULL,--视频大小
	[SPLJ]  nvarchar(300)  NOT NULL,--视频路径
	[SPLXID]  int  NOT NULL,--视频类型ID
	[SPPJ]  int  NOT NULL,--视频评级
	[SLT]  nvarchar(300)  NOT NULL,--缩略图
	[SCSJ]  datetime  NOT NULL,--上传时间
	[LLRC]  int  NOT NULL,--浏览人次
	[XZRC]  int  NOT NULL,--下载人次
	[PLRC]  int  NOT NULL,--评论人次
	[PFRC]  int  NOT NULL,--评分人次
	[SHZT]  int  NOT NULL,--审核状态
	[SHRID]  nvarchar(20)  NOT NULL,--审核人ID
	[SHSJ]  datetime  NOT NULL,--审核时间
	[ZYDXKB]  int  NOT NULL,--资源大小(KB)
CONSTRAINT [PK_EDU_XYDT_01_A06_SPWJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--视频文件评论
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_XYDT_01_A08_SPWJPL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_XYDT_01_A08_SPWJPL](
	[ID]  int  identity,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[SPWJID]  int  NOT NULL,--视频文件ID
	[PL]  nvarchar(200)  NOT NULL,--评论
	[PLRID]  nvarchar(20)  NOT NULL,--评论人ID
	[PLSJ]  datetime  NOT NULL,--评论时间
CONSTRAINT [PK_EDU_XYDT_01_A08_SPWJPL] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--通知公告
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_XYDT_01_A10_TZGG]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_XYDT_01_A10_TZGG](
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
CONSTRAINT [PK_EDU_XYDT_01_A10_TZGG] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--友情链接类型
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_XYDT_01_A11_YQLJLX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_XYDT_01_A11_YQLJLX](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校名
	[NAME]  nvarchar(50)  NOT NULL,--类型名
	[SHOWSTYLE]  int  NOT NULL,--显示方式
CONSTRAINT [PK_EDU_XYDT_01_A11_YQLJLX] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--友情链接
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_XYDT_01_A12_YQLJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_XYDT_01_A12_YQLJ](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校名
	[YQLJLXID]  int  NOT NULL,--友情链接类型ID
	[TITLE]  nvarchar(50)  NOT NULL,--标题
	[IMAGEURL]  nvarchar(500)  NULL,--图片
	[URL]  nvarchar(300)  NOT NULL,--链接
CONSTRAINT [PK_EDU_XYDT_01_A12_YQLJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC,
	[YQLJLXID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--以下为添加注释语句
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'视频目录' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A01_SPML'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A01_SPML', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A01_SPML', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'目录名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A01_SPML', @level2type=N'COLUMN',@level2name=N'MLMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父目录ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A01_SPML', @level2type=N'COLUMN',@level2name=N'FMLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排列顺序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A01_SPML', @level2type=N'COLUMN',@level2name=N'PLSX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否首页展示' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A01_SPML', @level2type=N'COLUMN',@level2name=N'SFSYZS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否启用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A01_SPML', @level2type=N'COLUMN',@level2name=N'SFQY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'网址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A01_SPML', @level2type=N'COLUMN',@level2name=N'URL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父目录ID列表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A01_SPML', @level2type=N'COLUMN',@level2name=N'FMLIDLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'视频类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A03_SPLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A03_SPLX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A03_SPLX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A03_SPLX', @level2type=N'COLUMN',@level2name=N'LXMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'视频文件' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A06_SPWJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A06_SPWJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A06_SPWJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'视频目录ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A06_SPWJ', @level2type=N'COLUMN',@level2name=N'SPMLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'视频标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A06_SPWJ', @level2type=N'COLUMN',@level2name=N'ZYBT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'关键字' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A06_SPWJ', @level2type=N'COLUMN',@level2name=N'GJZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'使用限制' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A06_SPWJ', @level2type=N'COLUMN',@level2name=N'SYXZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'来源' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A06_SPWJ', @level2type=N'COLUMN',@level2name=N'LY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'外部视频链接' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A06_SPWJ', @level2type=N'COLUMN',@level2name=N'WBSPLJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'拥有者ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A06_SPWJ', @level2type=N'COLUMN',@level2name=N'YYZID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'视频名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A06_SPWJ', @level2type=N'COLUMN',@level2name=N'SPMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'视频大小' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A06_SPWJ', @level2type=N'COLUMN',@level2name=N'SPDX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'视频路径' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A06_SPWJ', @level2type=N'COLUMN',@level2name=N'SPLJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'视频类型ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A06_SPWJ', @level2type=N'COLUMN',@level2name=N'SPLXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'视频评级' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A06_SPWJ', @level2type=N'COLUMN',@level2name=N'SPPJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'缩略图' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A06_SPWJ', @level2type=N'COLUMN',@level2name=N'SLT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上传时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A06_SPWJ', @level2type=N'COLUMN',@level2name=N'SCSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'浏览人次' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A06_SPWJ', @level2type=N'COLUMN',@level2name=N'LLRC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'下载人次' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A06_SPWJ', @level2type=N'COLUMN',@level2name=N'XZRC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'评论人次' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A06_SPWJ', @level2type=N'COLUMN',@level2name=N'PLRC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'评分人次' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A06_SPWJ', @level2type=N'COLUMN',@level2name=N'PFRC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A06_SPWJ', @level2type=N'COLUMN',@level2name=N'SHZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A06_SPWJ', @level2type=N'COLUMN',@level2name=N'SHRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A06_SPWJ', @level2type=N'COLUMN',@level2name=N'SHSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资源大小(KB)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A06_SPWJ', @level2type=N'COLUMN',@level2name=N'ZYDXKB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'视频文件评论' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A08_SPWJPL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A08_SPWJPL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A08_SPWJPL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'视频文件ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A08_SPWJPL', @level2type=N'COLUMN',@level2name=N'SPWJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'评论' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A08_SPWJPL', @level2type=N'COLUMN',@level2name=N'PL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'评论人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A08_SPWJPL', @level2type=N'COLUMN',@level2name=N'PLRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'评论时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A08_SPWJPL', @level2type=N'COLUMN',@level2name=N'PLSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'通知公告' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A10_TZGG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A10_TZGG', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A10_TZGG', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A10_TZGG', @level2type=N'COLUMN',@level2name=N'TITLE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发布人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A10_TZGG', @level2type=N'COLUMN',@level2name=N'FBRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发布人姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A10_TZGG', @level2type=N'COLUMN',@level2name=N'FBRXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发布部门' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A10_TZGG', @level2type=N'COLUMN',@level2name=N'FBBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发布时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A10_TZGG', @level2type=N'COLUMN',@level2name=N'FBSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A10_TZGG', @level2type=N'COLUMN',@level2name=N'NR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图片地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A10_TZGG', @level2type=N'COLUMN',@level2name=N'TPDZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'点击量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A10_TZGG', @level2type=N'COLUMN',@level2name=N'DJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A10_TZGG', @level2type=N'COLUMN',@level2name=N'SHZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A10_TZGG', @level2type=N'COLUMN',@level2name=N'SHRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核人姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A10_TZGG', @level2type=N'COLUMN',@level2name=N'SHRXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A10_TZGG', @level2type=N'COLUMN',@level2name=N'SHSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否显示' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A10_TZGG', @level2type=N'COLUMN',@level2name=N'SFXS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否置顶' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A10_TZGG', @level2type=N'COLUMN',@level2name=N'SFZD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'友情链接类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A11_YQLJLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A11_YQLJLX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A11_YQLJLX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A11_YQLJLX', @level2type=N'COLUMN',@level2name=N'NAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'显示方式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A11_YQLJLX', @level2type=N'COLUMN',@level2name=N'SHOWSTYLE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'友情链接' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A12_YQLJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A12_YQLJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A12_YQLJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'友情链接类型ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A12_YQLJ', @level2type=N'COLUMN',@level2name=N'YQLJLXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A12_YQLJ', @level2type=N'COLUMN',@level2name=N'TITLE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图片' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A12_YQLJ', @level2type=N'COLUMN',@level2name=N'IMAGEURL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'链接' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A12_YQLJ', @level2type=N'COLUMN',@level2name=N'URL'
GO
