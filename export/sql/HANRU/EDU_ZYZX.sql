--空间名：EDU_ZYZX  生成器：SqlBuilder0.1

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZYZX_01_A01_ZYML')
            and   type = 'U')
   drop table EDU_ZYZX_01_A01_ZYML
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZYZX_01_A02_ZYMLSHQX')
            and   type = 'U')
   drop table EDU_ZYZX_01_A02_ZYMLSHQX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZYZX_01_A03_WJLX')
            and   type = 'U')
   drop table EDU_ZYZX_01_A03_WJLX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZYZX_01_A06_ZYWJ')
            and   type = 'U')
   drop table EDU_ZYZX_01_A06_ZYWJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZYZX_01_A07_ZYWJXZ')
            and   type = 'U')
   drop table EDU_ZYZX_01_A07_ZYWJXZ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZYZX_01_A08_ZYWJPL')
            and   type = 'U')
   drop table EDU_ZYZX_01_A08_ZYWJPL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZYZX_01_A09_ZYWJPF')
            and   type = 'U')
   drop table EDU_ZYZX_01_A09_ZYWJPF
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZYZX_01_A10_TZGG')
            and   type = 'U')
   drop table EDU_ZYZX_01_A10_TZGG
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZYZX_01_A11_YQLJLX')
            and   type = 'U')
   drop table EDU_ZYZX_01_A11_YQLJLX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZYZX_01_A12_YQLJ')
            and   type = 'U')
   drop table EDU_ZYZX_01_A12_YQLJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZYZX_01_A13_ZXDY')
            and   type = 'U')
   drop table EDU_ZYZX_01_A13_ZXDY
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZYZX_02_A01_SJLX')
            and   type = 'U')
   drop table EDU_ZYZX_02_A01_SJLX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZYZX_02_A02_SJZSD')
            and   type = 'U')
   drop table EDU_ZYZX_02_A02_SJZSD
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZYZX_02_A03_SJTM')
            and   type = 'U')
   drop table EDU_ZYZX_02_A03_SJTM
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZYZX_02_A04_SJ')
            and   type = 'U')
   drop table EDU_ZYZX_02_A04_SJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZYZX_03_A01_KCK')
            and   type = 'U')
   drop table EDU_ZYZX_03_A01_KCK
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZYZX_04_A01_ZLWJML')
            and   type = 'U')
   drop table EDU_ZYZX_04_A01_ZLWJML
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZYZX_04_A02_ZLWJMLQX')
            and   type = 'U')
   drop table EDU_ZYZX_04_A02_ZLWJMLQX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZYZX_04_A03_ZLWJ')
            and   type = 'U')
   drop table EDU_ZYZX_04_A03_ZLWJ
go
--资源目录
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZYZX_01_A01_ZYML]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZYZX_01_A01_ZYML](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[MLMC]  nvarchar(50)  NOT NULL,--目录名称
	[FMLID]  int  NOT NULL,--父目录ID
	[PLSX]  int  NOT NULL,--排列顺序
	[SFSYZS]  int  NOT NULL,--是否首页展示
	[SFQY]  int  NOT NULL,--是否启用
	[URL]  nvarchar(500)  NOT NULL,--网址
CONSTRAINT [PK_EDU_ZYZX_01_A01_ZYML] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--资源目录审核权限表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZYZX_01_A02_ZYMLSHQX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZYZX_01_A02_ZYMLSHQX](
	[ID]  int  identity,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[YHID]  nvarchar(20)  NOT NULL,--用户ID
	[MLIDLB]  text  NULL,--目录ID列表
CONSTRAINT [PK_EDU_ZYZX_01_A02_ZYMLSHQX] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--文件类型
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZYZX_01_A03_WJLX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZYZX_01_A03_WJLX](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[LXMC]  nvarchar(50)  NOT NULL,--类型名称
CONSTRAINT [PK_EDU_ZYZX_01_A03_WJLX] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--资源文件
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZYZX_01_A06_ZYWJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZYZX_01_A06_ZYWJ](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[ZYMLID]  int  NOT NULL,--资源目录
	[ZYBT]  nvarchar(50)  NOT NULL,--资源标题
	[SYDX]  nvarchar(30)  NOT NULL,--适用对象
	[GJZ]  nvarchar(50)  NOT NULL,--关键字
	[JJ]  nvarchar(200)  NOT NULL,--简介
	[ZYLX]  int  NOT NULL,--资源类型
	[SYXZ]  int  NOT NULL,--使用限制
	[LY]  nvarchar(20)  NOT NULL,--来源
	[YYZID]  nvarchar(20)  NOT NULL,--拥有者ID
	[ZYMC]  nvarchar(300)  NOT NULL,--资源名称
	[ZYDX]  nvarchar(300)  NOT NULL,--资源大小
	[ZYLJ]  nvarchar(300)  NOT NULL,--资源路径
	[WJLXID]  int  NOT NULL,--文件类型
	[ZYPJ]  int  NOT NULL,--资源评级
	[SLT]  nvarchar(300)  NOT NULL,--缩略图
	[SCSJ]  datetime  NOT NULL,--上传时间
	[LLRC]  int  NOT NULL,--浏览人次
	[XZRC]  int  NOT NULL,--下载人次
	[PLRC]  int  NOT NULL,--评论人次
	[PFRC]  int  NOT NULL,--评分人次
	[ZYZT]  int  NOT NULL,--资源状态
	[SHZT]  int  NOT NULL,--审核状态
	[SHRID]  nvarchar(20)  NOT NULL,--审核人ID
	[SHSJ]  datetime  NOT NULL,--审核时间
	[ZYDXKB]  int  NOT NULL,--资源大小(KB)
CONSTRAINT [PK_EDU_ZYZX_01_A06_ZYWJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--资源文件下载
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZYZX_01_A07_ZYWJXZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZYZX_01_A07_ZYWJXZ](
	[ID]  int  identity,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[ZYWJID]  int  NOT NULL,--资源文件ID
	[XZRID]  nvarchar(20)  NOT NULL,--下载人ID
	[XZSJ]  datetime  NOT NULL,--下载时间
CONSTRAINT [PK_EDU_ZYZX_01_A07_ZYWJXZ] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--资源文件评论
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZYZX_01_A08_ZYWJPL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZYZX_01_A08_ZYWJPL](
	[ID]  int  identity,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[ZYWJID]  int  NOT NULL,--资源文件ID
	[PL]  nvarchar(200)  NOT NULL,--评论
	[PLRID]  nvarchar(20)  NOT NULL,--评论人ID
	[PLSJ]  datetime  NOT NULL,--评论时间
CONSTRAINT [PK_EDU_ZYZX_01_A08_ZYWJPL] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--资源文件评分
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZYZX_01_A09_ZYWJPF]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZYZX_01_A09_ZYWJPF](
	[ID]  int  identity,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[ZYWJID]  int  NOT NULL,--资源文件ID
	[PF]  int  NOT NULL,--评分
	[PFRID]  nvarchar(20)  NOT NULL,--评分人ID
	[PFSJ]  datetime  NOT NULL,--评分时间
CONSTRAINT [PK_EDU_ZYZX_01_A09_ZYWJPF] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--通知公告
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZYZX_01_A10_TZGG]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZYZX_01_A10_TZGG](
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
CONSTRAINT [PK_EDU_ZYZX_01_A10_TZGG] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--友情链接类型
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZYZX_01_A11_YQLJLX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZYZX_01_A11_YQLJLX](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校名
	[NAME]  nvarchar(50)  NOT NULL,--类型名
	[SHOWSTYLE]  int  NOT NULL,--显示方式
CONSTRAINT [PK_EDU_ZYZX_01_A11_YQLJLX] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--友情链接
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZYZX_01_A12_YQLJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZYZX_01_A12_YQLJ](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校名
	[YQLJLXID]  int  NOT NULL,--友情链接类型ID
	[TITLE]  nvarchar(50)  NOT NULL,--标题
	[IMAGEURL]  nvarchar(500)  NULL,--图片
	[URL]  nvarchar(300)  NOT NULL,--链接
CONSTRAINT [PK_EDU_ZYZX_01_A12_YQLJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC,
	[YQLJLXID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--在线答疑
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZYZX_01_A13_ZXDY]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZYZX_01_A13_ZXDY](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校名
	[WENTI]  nvarchar(500)  NOT NULL,--问题
	[TWR]  nvarchar(30)  NOT NULL,--提问人
	[TWSJ]  datetime  NOT NULL,--提问时间
	[DAAN]  nvarchar(500)  NULL,--答案
	[HDR]  nvarchar(30)  NOT NULL,--回答人
	[HDSJ]  datetime  NOT NULL,--回答时间
	[ZT]  int  NOT NULL,--状态
CONSTRAINT [PK_EDU_ZYZX_01_A13_ZXDY] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--试题类型表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZYZX_02_A01_SJLX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZYZX_02_A01_SJLX](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[LXMC]  nvarchar(50)  NOT NULL,--类型名称
CONSTRAINT [PK_EDU_ZYZX_02_A01_SJLX] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--试卷知识点表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZYZX_02_A02_SJZSD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZYZX_02_A02_SJZSD](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[KCKID]  int  NOT NULL,--课程库ID
	[ZSDMC]  nvarchar(50)  NOT NULL,--知识点名称
CONSTRAINT [PK_EDU_ZYZX_02_A02_SJZSD] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--试卷题目表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZYZX_02_A03_SJTM]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZYZX_02_A03_SJTM](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[KCKID]  int  NOT NULL,--课程库ID
	[ZSDID]  int  NOT NULL,--知识点ID
	[LXID]  int  NOT NULL,--类型ID
	[TM]  text  NOT NULL,--题目
	[NDXS]  decimal(6, 2)  NOT NULL,--难度系数
	[FZ]  decimal(5, 1)  NOT NULL,--分值
	[SHZT]  int  NOT NULL,--审核状态
	[SCRID]  nvarchar(20)  NOT NULL,--上传人ID
	[SCSJ]  datetime  NOT NULL,--上传时间
	[SHRID]  nvarchar(20)  NOT NULL,--审核人ID
	[SHSJ]  datetime  NOT NULL,--审核时间
CONSTRAINT [PK_EDU_ZYZX_02_A03_SJTM] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--试卷表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZYZX_02_A04_SJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZYZX_02_A04_SJ](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[KCKID]  int  NOT NULL,--课程库ID
	[SYFF]  nvarchar(50)  NOT NULL,--适用范围
	[SJMC]  nvarchar(50)  NOT NULL,--试卷名称
	[NDXS]  decimal(6, 2)  NOT NULL,--难度系数
	[FZ]  decimal(5, 1)  NOT NULL,--分值
	[NR]  text  NOT NULL,--内容
	[SHZT]  int  NOT NULL,--审核状态
	[SCRID]  nvarchar(20)  NOT NULL,--上传人ID
	[SCSJ]  datetime  NOT NULL,--上传时间
	[SHRID]  nvarchar(20)  NOT NULL,--审核人ID
	[SHSJ]  datetime  NOT NULL,--审核时间
	[FJ]  text  NOT NULL,--附件
CONSTRAINT [PK_EDU_ZYZX_02_A04_SJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--课程库表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZYZX_03_A01_KCK]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZYZX_03_A01_KCK](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[KCDM]  nvarchar(20)  NOT NULL,--课程代码
	[KCMC]  nvarchar(50)  NOT NULL,--课程名称
CONSTRAINT [PK_EDU_ZYZX_03_A01_KCK] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--资料文件目录
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZYZX_04_A01_ZLWJML]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZYZX_04_A01_ZLWJML](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[MLMC]  nvarchar(50)  NOT NULL,--目录名称
	[FMLID]  int  NOT NULL,--父目录ID
	[PLSX]  int  NOT NULL,--排列顺序
CONSTRAINT [PK_EDU_ZYZX_04_A01_ZLWJML] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--资料文件目录权限
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZYZX_04_A02_ZLWJMLQX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZYZX_04_A02_ZLWJMLQX](
	[ID]  int  identity,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[YHID]  nvarchar(20)  NOT NULL,--用户ID
	[ZYMLID]  int  NOT NULL,--资源目录ID
	[GNBH]  int  NOT NULL,--功能编号
CONSTRAINT [PK_EDU_ZYZX_04_A02_ZLWJMLQX] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--资料文件
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZYZX_04_A03_ZLWJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZYZX_04_A03_ZLWJ](
	[ID]  int  identity,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[ZYMLID]  int  NOT NULL,--资源目录ID
	[BT]  nvarchar(50)  NOT NULL,--标题
	[SCSJ]  datetime  NOT NULL,--上传时间
	[JJ]  nvarchar(200)  NOT NULL,--简介
	[WJM]  text  NOT NULL,--文件名
	[SCYHID]  nvarchar(20)  NOT NULL,--上传用户ID
	[ZLWJDX]  nvarchar(300)  NOT NULL,--资料文件大小
	[ZLWJDXKB]  int  NOT NULL,--资料文件大小(KB)
CONSTRAINT [PK_EDU_ZYZX_04_A03_ZLWJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--以下为添加注释语句
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资源目录' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A01_ZYML'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A01_ZYML', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A01_ZYML', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'目录名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A01_ZYML', @level2type=N'COLUMN',@level2name=N'MLMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父目录ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A01_ZYML', @level2type=N'COLUMN',@level2name=N'FMLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排列顺序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A01_ZYML', @level2type=N'COLUMN',@level2name=N'PLSX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否首页展示' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A01_ZYML', @level2type=N'COLUMN',@level2name=N'SFSYZS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否启用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A01_ZYML', @level2type=N'COLUMN',@level2name=N'SFQY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'网址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A01_ZYML', @level2type=N'COLUMN',@level2name=N'URL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资源目录审核权限表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A02_ZYMLSHQX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A02_ZYMLSHQX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A02_ZYMLSHQX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A02_ZYMLSHQX', @level2type=N'COLUMN',@level2name=N'YHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'目录ID列表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A02_ZYMLSHQX', @level2type=N'COLUMN',@level2name=N'MLIDLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A03_WJLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A03_WJLX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A03_WJLX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A03_WJLX', @level2type=N'COLUMN',@level2name=N'LXMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资源文件' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A06_ZYWJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A06_ZYWJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A06_ZYWJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资源目录' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A06_ZYWJ', @level2type=N'COLUMN',@level2name=N'ZYMLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资源标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A06_ZYWJ', @level2type=N'COLUMN',@level2name=N'ZYBT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'适用对象' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A06_ZYWJ', @level2type=N'COLUMN',@level2name=N'SYDX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'关键字' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A06_ZYWJ', @level2type=N'COLUMN',@level2name=N'GJZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'简介' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A06_ZYWJ', @level2type=N'COLUMN',@level2name=N'JJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资源类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A06_ZYWJ', @level2type=N'COLUMN',@level2name=N'ZYLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'使用限制' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A06_ZYWJ', @level2type=N'COLUMN',@level2name=N'SYXZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'来源' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A06_ZYWJ', @level2type=N'COLUMN',@level2name=N'LY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'拥有者ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A06_ZYWJ', @level2type=N'COLUMN',@level2name=N'YYZID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资源名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A06_ZYWJ', @level2type=N'COLUMN',@level2name=N'ZYMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资源大小' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A06_ZYWJ', @level2type=N'COLUMN',@level2name=N'ZYDX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资源路径' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A06_ZYWJ', @level2type=N'COLUMN',@level2name=N'ZYLJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A06_ZYWJ', @level2type=N'COLUMN',@level2name=N'WJLXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资源评级' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A06_ZYWJ', @level2type=N'COLUMN',@level2name=N'ZYPJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'缩略图' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A06_ZYWJ', @level2type=N'COLUMN',@level2name=N'SLT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上传时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A06_ZYWJ', @level2type=N'COLUMN',@level2name=N'SCSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'浏览人次' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A06_ZYWJ', @level2type=N'COLUMN',@level2name=N'LLRC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'下载人次' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A06_ZYWJ', @level2type=N'COLUMN',@level2name=N'XZRC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'评论人次' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A06_ZYWJ', @level2type=N'COLUMN',@level2name=N'PLRC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'评分人次' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A06_ZYWJ', @level2type=N'COLUMN',@level2name=N'PFRC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资源状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A06_ZYWJ', @level2type=N'COLUMN',@level2name=N'ZYZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A06_ZYWJ', @level2type=N'COLUMN',@level2name=N'SHZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A06_ZYWJ', @level2type=N'COLUMN',@level2name=N'SHRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A06_ZYWJ', @level2type=N'COLUMN',@level2name=N'SHSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资源大小(KB)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A06_ZYWJ', @level2type=N'COLUMN',@level2name=N'ZYDXKB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资源文件下载' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A07_ZYWJXZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A07_ZYWJXZ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A07_ZYWJXZ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资源文件ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A07_ZYWJXZ', @level2type=N'COLUMN',@level2name=N'ZYWJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'下载人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A07_ZYWJXZ', @level2type=N'COLUMN',@level2name=N'XZRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'下载时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A07_ZYWJXZ', @level2type=N'COLUMN',@level2name=N'XZSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资源文件评论' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A08_ZYWJPL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A08_ZYWJPL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A08_ZYWJPL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资源文件ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A08_ZYWJPL', @level2type=N'COLUMN',@level2name=N'ZYWJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'评论' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A08_ZYWJPL', @level2type=N'COLUMN',@level2name=N'PL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'评论人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A08_ZYWJPL', @level2type=N'COLUMN',@level2name=N'PLRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'评论时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A08_ZYWJPL', @level2type=N'COLUMN',@level2name=N'PLSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资源文件评分' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A09_ZYWJPF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A09_ZYWJPF', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A09_ZYWJPF', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资源文件ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A09_ZYWJPF', @level2type=N'COLUMN',@level2name=N'ZYWJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'评分' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A09_ZYWJPF', @level2type=N'COLUMN',@level2name=N'PF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'评分人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A09_ZYWJPF', @level2type=N'COLUMN',@level2name=N'PFRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'评分时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A09_ZYWJPF', @level2type=N'COLUMN',@level2name=N'PFSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'通知公告' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A10_TZGG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A10_TZGG', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A10_TZGG', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A10_TZGG', @level2type=N'COLUMN',@level2name=N'TITLE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发布人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A10_TZGG', @level2type=N'COLUMN',@level2name=N'FBRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发布人姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A10_TZGG', @level2type=N'COLUMN',@level2name=N'FBRXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发布部门' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A10_TZGG', @level2type=N'COLUMN',@level2name=N'FBBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发布时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A10_TZGG', @level2type=N'COLUMN',@level2name=N'FBSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A10_TZGG', @level2type=N'COLUMN',@level2name=N'NR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图片地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A10_TZGG', @level2type=N'COLUMN',@level2name=N'TPDZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'点击量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A10_TZGG', @level2type=N'COLUMN',@level2name=N'DJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A10_TZGG', @level2type=N'COLUMN',@level2name=N'SHZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A10_TZGG', @level2type=N'COLUMN',@level2name=N'SHRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核人姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A10_TZGG', @level2type=N'COLUMN',@level2name=N'SHRXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A10_TZGG', @level2type=N'COLUMN',@level2name=N'SHSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否显示' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A10_TZGG', @level2type=N'COLUMN',@level2name=N'SFXS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否置顶' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A10_TZGG', @level2type=N'COLUMN',@level2name=N'SFZD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'友情链接类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A11_YQLJLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A11_YQLJLX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A11_YQLJLX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A11_YQLJLX', @level2type=N'COLUMN',@level2name=N'NAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'显示方式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A11_YQLJLX', @level2type=N'COLUMN',@level2name=N'SHOWSTYLE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'友情链接' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A12_YQLJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A12_YQLJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A12_YQLJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'友情链接类型ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A12_YQLJ', @level2type=N'COLUMN',@level2name=N'YQLJLXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A12_YQLJ', @level2type=N'COLUMN',@level2name=N'TITLE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图片' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A12_YQLJ', @level2type=N'COLUMN',@level2name=N'IMAGEURL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'链接' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A12_YQLJ', @level2type=N'COLUMN',@level2name=N'URL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'在线答疑' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A13_ZXDY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A13_ZXDY', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A13_ZXDY', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'问题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A13_ZXDY', @level2type=N'COLUMN',@level2name=N'WENTI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'提问人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A13_ZXDY', @level2type=N'COLUMN',@level2name=N'TWR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'提问时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A13_ZXDY', @level2type=N'COLUMN',@level2name=N'TWSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'答案' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A13_ZXDY', @level2type=N'COLUMN',@level2name=N'DAAN'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'回答人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A13_ZXDY', @level2type=N'COLUMN',@level2name=N'HDR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'回答时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A13_ZXDY', @level2type=N'COLUMN',@level2name=N'HDSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A13_ZXDY', @level2type=N'COLUMN',@level2name=N'ZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试题类型表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_02_A01_SJLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_02_A01_SJLX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_02_A01_SJLX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_02_A01_SJLX', @level2type=N'COLUMN',@level2name=N'LXMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试卷知识点表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_02_A02_SJZSD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_02_A02_SJZSD', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_02_A02_SJZSD', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程库ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_02_A02_SJZSD', @level2type=N'COLUMN',@level2name=N'KCKID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'知识点名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_02_A02_SJZSD', @level2type=N'COLUMN',@level2name=N'ZSDMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试卷题目表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_02_A03_SJTM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_02_A03_SJTM', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_02_A03_SJTM', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程库ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_02_A03_SJTM', @level2type=N'COLUMN',@level2name=N'KCKID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'知识点ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_02_A03_SJTM', @level2type=N'COLUMN',@level2name=N'ZSDID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_02_A03_SJTM', @level2type=N'COLUMN',@level2name=N'LXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'题目' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_02_A03_SJTM', @level2type=N'COLUMN',@level2name=N'TM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'难度系数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_02_A03_SJTM', @level2type=N'COLUMN',@level2name=N'NDXS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_02_A03_SJTM', @level2type=N'COLUMN',@level2name=N'FZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_02_A03_SJTM', @level2type=N'COLUMN',@level2name=N'SHZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上传人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_02_A03_SJTM', @level2type=N'COLUMN',@level2name=N'SCRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上传时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_02_A03_SJTM', @level2type=N'COLUMN',@level2name=N'SCSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_02_A03_SJTM', @level2type=N'COLUMN',@level2name=N'SHRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_02_A03_SJTM', @level2type=N'COLUMN',@level2name=N'SHSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试卷表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_02_A04_SJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_02_A04_SJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_02_A04_SJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程库ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_02_A04_SJ', @level2type=N'COLUMN',@level2name=N'KCKID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'适用范围' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_02_A04_SJ', @level2type=N'COLUMN',@level2name=N'SYFF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试卷名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_02_A04_SJ', @level2type=N'COLUMN',@level2name=N'SJMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'难度系数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_02_A04_SJ', @level2type=N'COLUMN',@level2name=N'NDXS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_02_A04_SJ', @level2type=N'COLUMN',@level2name=N'FZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_02_A04_SJ', @level2type=N'COLUMN',@level2name=N'NR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_02_A04_SJ', @level2type=N'COLUMN',@level2name=N'SHZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上传人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_02_A04_SJ', @level2type=N'COLUMN',@level2name=N'SCRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上传时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_02_A04_SJ', @level2type=N'COLUMN',@level2name=N'SCSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_02_A04_SJ', @level2type=N'COLUMN',@level2name=N'SHRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_02_A04_SJ', @level2type=N'COLUMN',@level2name=N'SHSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'附件' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_02_A04_SJ', @level2type=N'COLUMN',@level2name=N'FJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程库表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_03_A01_KCK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_03_A01_KCK', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_03_A01_KCK', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程代码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_03_A01_KCK', @level2type=N'COLUMN',@level2name=N'KCDM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_03_A01_KCK', @level2type=N'COLUMN',@level2name=N'KCMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资料文件目录' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_04_A01_ZLWJML'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_04_A01_ZLWJML', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_04_A01_ZLWJML', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'目录名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_04_A01_ZLWJML', @level2type=N'COLUMN',@level2name=N'MLMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父目录ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_04_A01_ZLWJML', @level2type=N'COLUMN',@level2name=N'FMLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排列顺序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_04_A01_ZLWJML', @level2type=N'COLUMN',@level2name=N'PLSX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资料文件目录权限' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_04_A02_ZLWJMLQX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_04_A02_ZLWJMLQX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_04_A02_ZLWJMLQX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_04_A02_ZLWJMLQX', @level2type=N'COLUMN',@level2name=N'YHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资源目录ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_04_A02_ZLWJMLQX', @level2type=N'COLUMN',@level2name=N'ZYMLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'功能编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_04_A02_ZLWJMLQX', @level2type=N'COLUMN',@level2name=N'GNBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资料文件' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_04_A03_ZLWJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_04_A03_ZLWJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_04_A03_ZLWJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资源目录ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_04_A03_ZLWJ', @level2type=N'COLUMN',@level2name=N'ZYMLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_04_A03_ZLWJ', @level2type=N'COLUMN',@level2name=N'BT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上传时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_04_A03_ZLWJ', @level2type=N'COLUMN',@level2name=N'SCSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'简介' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_04_A03_ZLWJ', @level2type=N'COLUMN',@level2name=N'JJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_04_A03_ZLWJ', @level2type=N'COLUMN',@level2name=N'WJM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上传用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_04_A03_ZLWJ', @level2type=N'COLUMN',@level2name=N'SCYHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资料文件大小' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_04_A03_ZLWJ', @level2type=N'COLUMN',@level2name=N'ZLWJDX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资料文件大小(KB)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_04_A03_ZLWJ', @level2type=N'COLUMN',@level2name=N'ZLWJDXKB'
GO
