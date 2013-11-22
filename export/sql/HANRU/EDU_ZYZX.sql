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

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZYZX_01_A01_ZYFL')
            and   type = 'U')
   drop table EDU_ZYZX_01_A01_ZYFL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZYZX_01_A02_ZYML')
            and   type = 'U')
   drop table EDU_ZYZX_01_A02_ZYML
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZYZX_01_A03_WJLX')
            and   type = 'U')
   drop table EDU_ZYZX_01_A03_WJLX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZYZX_01_A04_ZYMLQX')
            and   type = 'U')
   drop table EDU_ZYZX_01_A04_ZYMLQX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZYZX_01_A05_ZYWJQX')
            and   type = 'U')
   drop table EDU_ZYZX_01_A05_ZYWJQX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZYZX_01_A06_ZYWJ')
            and   type = 'U')
   drop table EDU_ZYZX_01_A06_ZYWJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZYZX_01_A07_ZYWJPJ')
            and   type = 'U')
   drop table EDU_ZYZX_01_A07_ZYWJPJ
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

--资源分类
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZYZX_01_A01_ZYFL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZYZX_01_A01_ZYFL](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[FLMC]  nvarchar(50)  NOT NULL,--分类名称
	[FFLID]  int  NOT NULL,--父分类ID
	[PLSX]  int  NOT NULL,--排列顺序
	[SFSYZS]  int  NOT NULL,--是否首页展示
	[SFQY]  int  NOT NULL,--是否启用
CONSTRAINT [PK_EDU_ZYZX_01_A01_ZYFL] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--资源目录
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZYZX_01_A02_ZYML]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZYZX_01_A02_ZYML](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[MLMC]  nvarchar(50)  NOT NULL,--目录名称
	[FMLID]  int  NOT NULL,--父目录ID
	[PLSX]  int  NOT NULL,--排列顺序
	[YYZID]  nvarchar(20)  NOT NULL,--拥有者ID
	[WJLXIDLB]  nvarchar(200)  NOT NULL,--上传文件类型ID列表
	[FWQX]  int  NOT NULL,--访问权限
CONSTRAINT [PK_EDU_ZYZX_01_A02_ZYML] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
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

--资源目录权限
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZYZX_01_A04_ZYMLQX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZYZX_01_A04_ZYMLQX](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[ZYMLID]  int  NOT NULL,--资源目录ID
	[YHLX]  int  NOT NULL,--用户类型
	[QXLB]  nvarchar(200)  NOT NULL,--权限列表
CONSTRAINT [PK_EDU_ZYZX_01_A04_ZYMLQX] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--资源文件权限
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZYZX_01_A05_ZYWJQX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZYZX_01_A05_ZYWJQX](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[ZYWJID]  int  NOT NULL,--资源文件ID
	[YHLX]  int  NOT NULL,--用户类型
	[QXLB]  nvarchar(200)  NOT NULL,--权限列表
CONSTRAINT [PK_EDU_ZYZX_01_A05_ZYWJQX] PRIMARY KEY CLUSTERED
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
	[ZYFLID]  int  NOT NULL,--资源类型
	[ZYMLID]  int  NOT NULL,--资源目录
	[ZYBT]  nvarchar(50)  NOT NULL,--资源标题
	[BZ]  nvarchar(100)  NOT NULL,--备注
	[GJZ]  nvarchar(50)  NOT NULL,--关键字
	[YYZID]  nvarchar(20)  NOT NULL,--拥有者ID
	[ZYLLLX]  int  NOT NULL,--资源浏览类型
	[WJLXID]  int  NOT NULL,--文件类型
	[ZYNR]  text  NOT NULL,--资源内容
	[FJMC]  nvarchar(300)  NOT NULL,--附件名称
	[FJDX]  nvarchar(300)  NOT NULL,--附件大小
	[FJLJ]  nvarchar(300)  NOT NULL,--附件路径
	[ZYZT]  int  NOT NULL,--资源状态
	[ZYPJ]  int  NOT NULL,--资源评级
	[SCSJ]  datetime  NOT NULL,--上传时间
	[SYNJ]  nvarchar(30)  NOT NULL,--适用年级
	[SYXK]  nvarchar(30)  NOT NULL,--适用学科
	[LLRC]  int  NOT NULL,--浏览人次
	[SHZT]  int  NOT NULL,--审核状态
	[SHRID]  nvarchar(20)  NOT NULL,--审核人ID
	[SHSJ]  datetime  NOT NULL,--审核时间
CONSTRAINT [PK_EDU_ZYZX_01_A06_ZYWJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--资源文件评价
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZYZX_01_A07_ZYWJPJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZYZX_01_A07_ZYWJPJ](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[ZYWJID]  int  NOT NULL,--资源文件ID
	[PF]  int  NOT NULL,--评分
	[PL]  nvarchar(200)  NOT NULL,--评论
	[PJRID]  nvarchar(20)  NOT NULL,--评价人ID
	[PJSJ]  datetime  NOT NULL,--评价时间
CONSTRAINT [PK_EDU_ZYZX_01_A07_ZYWJPJ] PRIMARY KEY CLUSTERED
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
	[KCH]  nvarchar(6)  NOT NULL,--课程ID
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
	[KCH]  nvarchar(6)  NOT NULL,--课程ID
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
	[KCH]  nvarchar(6)  NOT NULL,--课程ID
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
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资源分类' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A01_ZYFL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A01_ZYFL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A01_ZYFL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分类名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A01_ZYFL', @level2type=N'COLUMN',@level2name=N'FLMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父分类ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A01_ZYFL', @level2type=N'COLUMN',@level2name=N'FFLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排列顺序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A01_ZYFL', @level2type=N'COLUMN',@level2name=N'PLSX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否首页展示' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A01_ZYFL', @level2type=N'COLUMN',@level2name=N'SFSYZS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否启用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A01_ZYFL', @level2type=N'COLUMN',@level2name=N'SFQY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资源目录' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A02_ZYML'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A02_ZYML', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A02_ZYML', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'目录名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A02_ZYML', @level2type=N'COLUMN',@level2name=N'MLMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父目录ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A02_ZYML', @level2type=N'COLUMN',@level2name=N'FMLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排列顺序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A02_ZYML', @level2type=N'COLUMN',@level2name=N'PLSX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'拥有者ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A02_ZYML', @level2type=N'COLUMN',@level2name=N'YYZID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上传文件类型ID列表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A02_ZYML', @level2type=N'COLUMN',@level2name=N'WJLXIDLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'访问权限' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A02_ZYML', @level2type=N'COLUMN',@level2name=N'FWQX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A03_WJLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A03_WJLX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A03_WJLX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A03_WJLX', @level2type=N'COLUMN',@level2name=N'LXMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资源目录权限' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A04_ZYMLQX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A04_ZYMLQX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A04_ZYMLQX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资源目录ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A04_ZYMLQX', @level2type=N'COLUMN',@level2name=N'ZYMLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A04_ZYMLQX', @level2type=N'COLUMN',@level2name=N'YHLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'权限列表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A04_ZYMLQX', @level2type=N'COLUMN',@level2name=N'QXLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资源文件权限' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A05_ZYWJQX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A05_ZYWJQX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A05_ZYWJQX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资源文件ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A05_ZYWJQX', @level2type=N'COLUMN',@level2name=N'ZYWJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A05_ZYWJQX', @level2type=N'COLUMN',@level2name=N'YHLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'权限列表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A05_ZYWJQX', @level2type=N'COLUMN',@level2name=N'QXLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资源文件' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A06_ZYWJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A06_ZYWJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A06_ZYWJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资源类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A06_ZYWJ', @level2type=N'COLUMN',@level2name=N'ZYFLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资源目录' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A06_ZYWJ', @level2type=N'COLUMN',@level2name=N'ZYMLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资源标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A06_ZYWJ', @level2type=N'COLUMN',@level2name=N'ZYBT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A06_ZYWJ', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'关键字' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A06_ZYWJ', @level2type=N'COLUMN',@level2name=N'GJZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'拥有者ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A06_ZYWJ', @level2type=N'COLUMN',@level2name=N'YYZID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资源浏览类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A06_ZYWJ', @level2type=N'COLUMN',@level2name=N'ZYLLLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A06_ZYWJ', @level2type=N'COLUMN',@level2name=N'WJLXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资源内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A06_ZYWJ', @level2type=N'COLUMN',@level2name=N'ZYNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'附件名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A06_ZYWJ', @level2type=N'COLUMN',@level2name=N'FJMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'附件大小' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A06_ZYWJ', @level2type=N'COLUMN',@level2name=N'FJDX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'附件路径' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A06_ZYWJ', @level2type=N'COLUMN',@level2name=N'FJLJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资源状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A06_ZYWJ', @level2type=N'COLUMN',@level2name=N'ZYZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资源评级' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A06_ZYWJ', @level2type=N'COLUMN',@level2name=N'ZYPJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上传时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A06_ZYWJ', @level2type=N'COLUMN',@level2name=N'SCSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'适用年级' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A06_ZYWJ', @level2type=N'COLUMN',@level2name=N'SYNJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'适用学科' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A06_ZYWJ', @level2type=N'COLUMN',@level2name=N'SYXK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'浏览人次' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A06_ZYWJ', @level2type=N'COLUMN',@level2name=N'LLRC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A06_ZYWJ', @level2type=N'COLUMN',@level2name=N'SHZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A06_ZYWJ', @level2type=N'COLUMN',@level2name=N'SHRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A06_ZYWJ', @level2type=N'COLUMN',@level2name=N'SHSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资源文件评价' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A07_ZYWJPJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A07_ZYWJPJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A07_ZYWJPJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资源文件ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A07_ZYWJPJ', @level2type=N'COLUMN',@level2name=N'ZYWJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'评分' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A07_ZYWJPJ', @level2type=N'COLUMN',@level2name=N'PF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'评论' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A07_ZYWJPJ', @level2type=N'COLUMN',@level2name=N'PL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'评价人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A07_ZYWJPJ', @level2type=N'COLUMN',@level2name=N'PJRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'评价时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A07_ZYWJPJ', @level2type=N'COLUMN',@level2name=N'PJSJ'
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
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_02_A02_SJZSD', @level2type=N'COLUMN',@level2name=N'KCH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'知识点名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_02_A02_SJZSD', @level2type=N'COLUMN',@level2name=N'ZSDMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试卷题目表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_02_A03_SJTM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_02_A03_SJTM', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_02_A03_SJTM', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_02_A03_SJTM', @level2type=N'COLUMN',@level2name=N'KCH'
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
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_02_A04_SJ', @level2type=N'COLUMN',@level2name=N'KCH'
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
