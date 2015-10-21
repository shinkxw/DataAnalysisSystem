--空间名：EDU_ZXJX  生成器：SqlBuilder0.1

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_01_01_KC')
            and   type = 'U')
   drop table EDU_ZXJX_01_01_KC
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_04_01_JCJBXX')
            and   type = 'U')
   drop table EDU_ZXJX_04_01_JCJBXX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_04_02_JCXYXX')
            and   type = 'U')
   drop table EDU_ZXJX_04_02_JCXYXX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_04_A03_JCLYJL')
            and   type = 'U')
   drop table EDU_ZXJX_04_A03_JCLYJL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_04_A05_JCFK')
            and   type = 'U')
   drop table EDU_ZXJX_04_A05_JCFK
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_04_A06_JCBF')
            and   type = 'U')
   drop table EDU_ZXJX_04_A06_JCBF
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_05_A01_KS')
            and   type = 'U')
   drop table EDU_ZXJX_05_A01_KS
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_05_A02_KSKM')
            and   type = 'U')
   drop table EDU_ZXJX_05_A02_KSKM
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_06_A01_MPJL')
            and   type = 'U')
   drop table EDU_ZXJX_06_A01_MPJL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_07_A01_CJFXPZ')
            and   type = 'U')
   drop table EDU_ZXJX_07_A01_CJFXPZ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_07_A02_CJFXPZXM')
            and   type = 'U')
   drop table EDU_ZXJX_07_A02_CJFXPZXM
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_08_A01_XXGCXPJPZ')
            and   type = 'U')
   drop table EDU_ZXJX_08_A01_XXGCXPJPZ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_08_A02_XXGCXPJJG')
            and   type = 'U')
   drop table EDU_ZXJX_08_A02_XXGCXPJJG
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_08_A03_XXGCXPJXMLX')
            and   type = 'U')
   drop table EDU_ZXJX_08_A03_XXGCXPJXMLX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_09_A01_TKSQSJ')
            and   type = 'U')
   drop table EDU_ZXJX_09_A01_TKSQSJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_10_A01_JSGCXPJJL')
            and   type = 'U')
   drop table EDU_ZXJX_10_A01_JSGCXPJJL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_10_A02_JSGCXPJXM')
            and   type = 'U')
   drop table EDU_ZXJX_10_A02_JSGCXPJXM
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_10_A03_JSMZSKS')
            and   type = 'U')
   drop table EDU_ZXJX_10_A03_JSMZSKS
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_11_A01_LWSJ')
            and   type = 'U')
   drop table EDU_ZXJX_11_A01_LWSJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_11_A02_KYHDSJ')
            and   type = 'U')
   drop table EDU_ZXJX_11_A02_KYHDSJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_11_A03_CPXXSJ')
            and   type = 'U')
   drop table EDU_ZXJX_11_A03_CPXXSJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_11_A04_KTSJ')
            and   type = 'U')
   drop table EDU_ZXJX_11_A04_KTSJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_11_A05_KTJDSJ')
            and   type = 'U')
   drop table EDU_ZXJX_11_A05_KTJDSJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_35_A01_TKXZ')
            and   type = 'U')
   drop table EDU_ZXJX_35_A01_TKXZ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_35_A02_GKKSQ')
            and   type = 'U')
   drop table EDU_ZXJX_35_A02_GKKSQ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_36_A01_JSQJLX')
            and   type = 'U')
   drop table EDU_ZXJX_36_A01_JSQJLX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_36_A02_DKLX')
            and   type = 'U')
   drop table EDU_ZXJX_36_A02_DKLX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_36_A03_JSQJXX')
            and   type = 'U')
   drop table EDU_ZXJX_36_A03_JSQJXX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_36_A04_XPKLB')
            and   type = 'U')
   drop table EDU_ZXJX_36_A04_XPKLB
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_50_A01_XXKCLB')
            and   type = 'U')
   drop table EDU_ZXJX_50_A01_XXKCLB
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_50_A02_KKSJ')
            and   type = 'U')
   drop table EDU_ZXJX_50_A02_KKSJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_50_A03_JXBSJ')
            and   type = 'U')
   drop table EDU_ZXJX_50_A03_JXBSJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_50_A04_XSXKJL')
            and   type = 'U')
   drop table EDU_ZXJX_50_A04_XSXKJL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_50_A05_XSXXKCJ')
            and   type = 'U')
   drop table EDU_ZXJX_50_A05_XSXXKCJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_50_A06_KTDMB')
            and   type = 'U')
   drop table EDU_ZXJX_50_A06_KTDMB
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_52_A01_KSSJ')
            and   type = 'U')
   drop table EDU_ZXJX_52_A01_KSSJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_52_A02_KSSJAP')
            and   type = 'U')
   drop table EDU_ZXJX_52_A02_KSSJAP
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_52_A03_KSDD')
            and   type = 'U')
   drop table EDU_ZXJX_52_A03_KSDD
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_52_A04_CKXS')
            and   type = 'U')
   drop table EDU_ZXJX_52_A04_CKXS
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_52_A05_JKAP')
            and   type = 'U')
   drop table EDU_ZXJX_52_A05_JKAP
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_53_A01_XFZKC')
            and   type = 'U')
   drop table EDU_ZXJX_53_A01_XFZKC
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_53_A02_XFZKKSJ')
            and   type = 'U')
   drop table EDU_ZXJX_53_A02_XFZKKSJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_53_A11_XFZXQJXJH')
            and   type = 'U')
   drop table EDU_ZXJX_53_A11_XFZXQJXJH
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_53_A12_XFZBXKCQD')
            and   type = 'U')
   drop table EDU_ZXJX_53_A12_XFZBXKCQD
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_53_A13_XFZXXKCQD')
            and   type = 'U')
   drop table EDU_ZXJX_53_A13_XFZXXKCQD
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_53_A20_XFZXK')
            and   type = 'U')
   drop table EDU_ZXJX_53_A20_XFZXK
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_53_A21_XFZJXBSJ')
            and   type = 'U')
   drop table EDU_ZXJX_53_A21_XFZJXBSJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_53_A22_XSXFZXKJL')
            and   type = 'U')
   drop table EDU_ZXJX_53_A22_XSXFZXKJL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_53_A23_XFZECXKXS')
            and   type = 'U')
   drop table EDU_ZXJX_53_A23_XFZECXKXS
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_53_A24_XFZKTNR')
            and   type = 'U')
   drop table EDU_ZXJX_53_A24_XFZKTNR
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_53_A25_XFZKTJLXM')
            and   type = 'U')
   drop table EDU_ZXJX_53_A25_XFZKTJLXM
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_53_A26_XFZKTJLJG')
            and   type = 'U')
   drop table EDU_ZXJX_53_A26_XFZKTJLJG
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_53_A27_XFZZYNR')
            and   type = 'U')
   drop table EDU_ZXJX_53_A27_XFZZYNR
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_53_A28_XFZZYJLXM')
            and   type = 'U')
   drop table EDU_ZXJX_53_A28_XFZZYJLXM
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_53_A29_XFZZYJLJG')
            and   type = 'U')
   drop table EDU_ZXJX_53_A29_XFZZYJLJG
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_53_A41_XFZDYCS')
            and   type = 'U')
   drop table EDU_ZXJX_53_A41_XFZDYCS
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_53_A42_XFZDYCSCJ')
            and   type = 'U')
   drop table EDU_ZXJX_53_A42_XFZDYCSCJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_53_A46_BXKXXTKCJ')
            and   type = 'U')
   drop table EDU_ZXJX_53_A46_BXKXXTKCJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_53_A51_XFZKKGL')
            and   type = 'U')
   drop table EDU_ZXJX_53_A51_XFZKKGL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_54_A01_SCNRMB')
            and   type = 'U')
   drop table EDU_ZXJX_54_A01_SCNRMB
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_54_A02_SCXM')
            and   type = 'U')
   drop table EDU_ZXJX_54_A02_SCXM
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_54_A03_SCNR')
            and   type = 'U')
   drop table EDU_ZXJX_54_A03_SCNR
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_54_A04_XSSXPD')
            and   type = 'U')
   drop table EDU_ZXJX_54_A04_XSSXPD
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_54_A05_XSCJXX')
            and   type = 'U')
   drop table EDU_ZXJX_54_A05_XSCJXX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_55_A01_SFXM')
            and   type = 'U')
   drop table EDU_ZXJX_55_A01_SFXM
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_55_A02_SFJG')
            and   type = 'U')
   drop table EDU_ZXJX_55_A02_SFJG
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_55_A03_XSSFXMBZ')
            and   type = 'U')
   drop table EDU_ZXJX_55_A03_XSSFXMBZ
go
--课程数据类
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_01_01_KC]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_01_01_KC](
	[SCHOOLID]  int  NOT NULL,--学校名
	[KCH]  nvarchar(10)  NOT NULL,--课程号
	[KCMC]  nvarchar(60)  NULL,--课程名称
	[KCM]  nvarchar(2)  NOT NULL,--课程码
	[KCDJM]  nvarchar(1)  NOT NULL,--课程等级码
	[KCBM]  nvarchar(60)  NOT NULL,--课程别名
	[KCJJ]  text  NULL,--课程简介
	[KCYQ]  text  NULL,--课程要求
	[ZXS]  decimal(3, 0)  NULL,--总学时
	[ZHXS]  decimal(2, 0)  NULL,--周学时
	[ZXXS]  decimal(3, 0)  NULL,--自学学时
	[SKFSM]  nvarchar(1)  NOT NULL,--授课方式码
	[JCBM]  text  NULL,--教材编码
	[CKSM]  text  NULL,--参考书目
	[CDXZ]  int  NULL,--场地限制
	[SFZK]  nvarchar(1)  NULL,--是否主课
	[PLSX]  int  NOT NULL,--排列顺序
CONSTRAINT [PK_EDU_ZXJX_01_01_KC] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[KCH] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--教材基本信息表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_04_01_JCJBXX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_04_01_JCJBXX](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校ID
	[JCDM]  nvarchar(13)  NOT NULL,--教材代码
	[JCMC]  nvarchar(60)  NOT NULL,--教材名称
	[CBH]  nvarchar(30)  NULL,--出版号
	[DYZZ]  nvarchar(30)  NOT NULL,--第一作者
	[QTZZ]  nvarchar(90)  NULL,--其他作者
	[BC]  nvarchar(30)  NOT NULL,--版次
	[YC]  nvarchar(2)  NULL,--印次
	[JG]  decimal(8, 2)  NULL,--价格
	[CBS]  nvarchar(180)  NULL,--出版社
	[CBRQ]  nvarchar(8)  NULL,--出版日期
	[SFYLXC]  nvarchar(1)  NULL,--是否有练习册
	[SFYJCJF]  nvarchar(1)  NULL,--是否有教参教辅
	[NRJJ]  text  NULL,--内容简介
	[DQZT]  int  NOT NULL,--当前状态
	[ZDKC]  int  NOT NULL,--最低库存
	[DQKC]  int  NOT NULL,--当前库存
CONSTRAINT [PK_EDU_ZXJX_04_01_JCJBXX] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--教材选用信息表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_04_02_JCXYXX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_04_02_JCXYXX](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校ID
	[XQID]  int  NOT NULL,--学期ID
	[NJID]  nvarchar(10)  NOT NULL,--年级ID
	[KCID]  nvarchar(10)  NOT NULL,--课程ID
	[JCID]  int  NULL,--教材ID
	[XYSL]  int  NOT NULL,--选用数量
	[SQRID]  int  NOT NULL,--申请人ID
	[SQSJ]  datetime  NOT NULL,--申请时间
	[SHZT]  int  NOT NULL,--审核状态
	[SHRID]  int  NOT NULL,--审核人ID
	[SHSJ]  datetime  NOT NULL,--审核时间
	[SFRK]  nvarchar(1)  NOT NULL,--是否入库
CONSTRAINT [PK_EDU_ZXJX_04_02_JCXYXX] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--教材领用记录表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_04_A03_JCLYJL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_04_A03_JCLYJL](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校ID
	[XQID]  int  NOT NULL,--学期ID
	[NJID]  nvarchar(10)  NOT NULL,--年级ID
	[BJID]  nvarchar(10)  NOT NULL,--班级ID
	[JCID]  int  NOT NULL,--教材ID
	[LYSL]  int  NOT NULL,--领用数量
	[LYR]  nvarchar(36)  NOT NULL,--领用人
	[LYSJ]  datetime  NOT NULL,--领用时间
	[JSRID]  int  NOT NULL,--经手人ID
CONSTRAINT [PK_EDU_ZXJX_04_A03_JCLYJL] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--教材反馈表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_04_A05_JCFK]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_04_A05_JCFK](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校ID
	[XQID]  int  NOT NULL,--学期ID
	[JCID]  int  NULL,--教材ID
	[FKXX]  text  NOT NULL,--反馈信息
	[FKSJ]  datetime  NOT NULL,--反馈时间
	[FKJSID]  int  NOT NULL,--反馈教师ID
CONSTRAINT [PK_EDU_ZXJX_04_A05_JCFK] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--教材报废表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_04_A06_JCBF]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_04_A06_JCBF](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校ID
	[XQID]  int  NOT NULL,--学期ID
	[JCID]  int  NULL,--教材ID
	[BFSL]  int  NOT NULL,--报废数量
	[BFYY]  text  NOT NULL,--报废原因
	[BFSJ]  datetime  NOT NULL,--报废时间
	[JSRID]  int  NOT NULL,--经手人ID
CONSTRAINT [PK_EDU_ZXJX_04_A06_JCBF] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--考试数据表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_05_A01_KS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_05_A01_KS](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校名
	[XNID]  int  NOT NULL,--学年
	[XQID]  int  NOT NULL,--学期
	[KSMC]  nvarchar(60)  NOT NULL,--考试名称
	[KSKSSJ]  datetime  NOT NULL,--考试开始时间
	[KSJSSJ]  datetime  NOT NULL,--考试结束时间
	[DFKSSJ]  datetime  NOT NULL,--登分开始时间
	[DFJSSJ]  datetime  NOT NULL,--登分结束时间
	[DFKS]  int  NOT NULL,--登分方式
	[SFYXCX]  nvarchar(1)  NOT NULL,--是否允许查询
	[SFXYPK]  nvarchar(1)  NOT NULL,--是否需要排考
CONSTRAINT [PK_EDU_ZXJX_05_A01_KS] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--考试科目数据表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_05_A02_KSKM]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_05_A02_KSKM](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校名
	[SSKSID]  int  NOT NULL,--所属考试ID
	[JSRKID]  int  NOT NULL,--教师任课编号
	[KCMC]  nvarchar(60)  NOT NULL,--课程名称
	[NJMC]  nvarchar(30)  NOT NULL,--年级名称
	[BJMC]  nvarchar(20)  NOT NULL,--班级名称
	[CJZF]  decimal(5, 1)  NOT NULL,--成绩总分
CONSTRAINT [PK_EDU_ZXJX_05_A02_KSKM] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--面批记录表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_06_A01_MPJL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_06_A01_MPJL](
	[ID]  int  identity,--编号
	[SCHOOLID]  int  NOT NULL,--学校名
	[MPJS]  int  NOT NULL,--面批教师
	[MPKC]  nvarchar(10)  NOT NULL,--面批课程
	[MPXS]  int  NOT NULL,--面批学生
	[XNID]  int  NOT NULL,--学年
	[XQID]  int  NOT NULL,--学期
	[NJID]  nvarchar(10)  NOT NULL,--年级
	[BJID]  nvarchar(10)  NOT NULL,--班级
	[MPJG]  int  NOT NULL,--面批结果
	[MPSJ]  datetime  NOT NULL,--面批时间
	[RRSJ]  datetime  NOT NULL,--录入时间
	[BZ]  text  NULL,--备注
	[JSRKID]  int  NOT NULL,--教师任课编号
	[XLZID]  int  NOT NULL,--校历周ID
CONSTRAINT [PK_EDU_ZXJX_06_A01_MPJL] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--成绩分析配置表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_07_A01_CJFXPZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_07_A01_CJFXPZ](
	[ID]  int  identity,--编号
	[SCHOOLID]  int  NOT NULL,--学校ID
	[SSKSID]  nvarchar(20)  NOT NULL,--配置名称
	[FXLX]  int  NOT NULL,--分析类型
	[BZ]  nvarchar(60)  NOT NULL,--备注
	[NJQ]  int  NOT NULL,--年级前
	[NJH]  int  NOT NULL,--年级后
CONSTRAINT [PK_EDU_ZXJX_07_A01_CJFXPZ] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--成绩分析配置项目表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_07_A02_CJFXPZXM]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_07_A02_CJFXPZXM](
	[ID]  int  identity,--编号
	[SSPZID]  int  NOT NULL,--所属配置ID
	[DCMC]  nvarchar(20)  NOT NULL,--名称
	[SX]  decimal(6, 2)  NOT NULL,--上限
	[XX]  decimal(6, 2)  NOT NULL,--下限
	[PZQZ]  int  NOT NULL,--P值权重
CONSTRAINT [PK_EDU_ZXJX_07_A02_CJFXPZXM] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--学生学习过程性评价配置表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_08_A01_XXGCXPJPZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_08_A01_XXGCXPJPZ](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校ID
	[SSKCH]  text  NOT NULL,--所属课程号
	[PZMC]  nvarchar(80)  NOT NULL,--配置名称
	[PZLX]  nvarchar(30)  NOT NULL,--配置类型
	[FLM]  nvarchar(30)  NOT NULL,--父类名
CONSTRAINT [PK_EDU_ZXJX_08_A01_XXGCXPJPZ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--学生学习过程性评价结果表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_08_A02_XXGCXPJJG]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_08_A02_XXGCXPJJG](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校ID
	[PZID]  int  NOT NULL,--评价配置ID
	[FS]  decimal(18, 1)  NOT NULL,--分数
	[XLZID]  int  NOT NULL,--校历周ID
	[XSXXID]  int  NOT NULL,--学生ID
	[SSKCH]  nvarchar(10)  NOT NULL,--所属课程号
CONSTRAINT [PK_EDU_ZXJX_08_A02_XXGCXPJJG] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--学生学习过程性评价项目类型表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_08_A03_XXGCXPJXMLX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_08_A03_XXGCXPJXMLX](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校ID
	[LXMC]  nvarchar(80)  NOT NULL,--类型名称
	[PJKM]  text  NOT NULL,--评价科目
CONSTRAINT [PK_EDU_ZXJX_08_A03_XXGCXPJXMLX] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--调课申请数据表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_09_A01_TKSQSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_09_A01_TKSQSJ](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校ID
	[JSID]  int  NOT NULL,--教师
	[KCID]  nvarchar(10)  NOT NULL,--课程
	[TKLXID]  int  NOT NULL,--调课类型ID
	[TKQQSZ]  int  NOT NULL,--调课前起始周
	[TKQJSZ]  int  NOT NULL,--调课前结束周
	[TKQXQ]  int  NOT NULL,--调课前星期
	[TKQSD]  int  NOT NULL,--调课前时段
	[TKQJC]  int  NOT NULL,--调课前节次
	[TKHQSZ]  int  NOT NULL,--调课后起始周
	[TKHJSZ]  int  NOT NULL,--调课后结束周
	[TKHXQ]  int  NOT NULL,--调课后星期
	[TKHSD]  int  NOT NULL,--调课后时段
	[TKHJC]  int  NOT NULL,--调课后节次
	[ZT]  int  NOT NULL,--当前状态
	[BZ]  text  NOT NULL,--备注
	[SQSJ]  datetime  NOT NULL,--申请时间
	[JSJSID]  int  NOT NULL,--接收教师ID
CONSTRAINT [PK_EDU_ZXJX_09_A01_TKSQSJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--教师过程性评价记录表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_10_A01_JSGCXPJJL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_10_A01_JSGCXPJJL](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校ID
	[XQID]  int  NOT NULL,--学期
	[XLZID]  int  NOT NULL,--考评周
	[JSID]  int  NOT NULL,--教师
	[PJXMID]  int  NOT NULL,--考评项目
	[KHF]  decimal(8, 3)  NOT NULL,--考核分
	[FLM]  decimal(8, 3)  NOT NULL,--成绩
	[LRSJ]  datetime  NOT NULL,--录入时间
CONSTRAINT [PK_EDU_ZXJX_10_A01_JSGCXPJJL] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--教师过程性评价考核项目表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_10_A02_JSGCXPJXM]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_10_A02_JSGCXPJXM](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校ID
	[XMMC]  nvarchar(36)  NOT NULL,--项目名称
	[DWMC]  nvarchar(36)  NOT NULL,--单位
	[ZGF]  decimal(8, 3)  NOT NULL,--考核最高分
	[QZ]  decimal(8, 3)  NOT NULL,--权重
	[SFTJ]  int  NOT NULL,--是否统计
	[SJLY]  int  NOT NULL,--数据来源
CONSTRAINT [PK_EDU_ZXJX_10_A02_JSGCXPJXM] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--教师每周上课数表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_10_A03_JSMZSKS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_10_A03_JSMZSKS](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校ID
	[JSID]  int  NOT NULL,--教师ID
	[XLZID]  int  NOT NULL,--校历周ID
	[JSRKID]  int  NOT NULL,--教师任课ID
	[KCH]  nvarchar(10)  NOT NULL,--课程号
	[SKJS]  int  NOT NULL,--上课节数
CONSTRAINT [PK_EDU_ZXJX_10_A03_JSMZSKS] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--论文数据表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_11_A01_LWSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_11_A01_LWSJ](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[XNID]  int  NOT NULL,--学年ID
	[XQID]  int  NOT NULL,--学期ID
	[LWMC]  nvarchar(100)  NOT NULL,--论文名称
	[LWZY]  nvarchar(100)  NOT NULL,--论文摘要
	[LWNR]  text  NOT NULL,--论文内容
	[SCJSID]  int  NOT NULL,--上传教师ID
	[SCSJ]  datetime  NOT NULL,--上传时间
CONSTRAINT [PK_EDU_ZXJX_11_A01_LWSJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--科研活动数据表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_11_A02_KYHDSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_11_A02_KYHDSJ](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[XNID]  int  NOT NULL,--学年ID
	[XQID]  int  NOT NULL,--学期ID
	[HDMC]  nvarchar(50)  NOT NULL,--活动名称
	[HDNR]  text  NOT NULL,--活动内容
	[SFFB]  nvarchar(1)  NOT NULL,--是否发布
	[SCJSID]  int  NOT NULL,--上传教师ID
	[SCSJ]  datetime  NOT NULL,--上传时间
CONSTRAINT [PK_EDU_ZXJX_11_A02_KYHDSJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--参评信息数据表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_11_A03_CPXXSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_11_A03_CPXXSJ](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[XNID]  int  NOT NULL,--学年ID
	[XQID]  int  NOT NULL,--学期ID
	[XXMC]  nvarchar(50)  NOT NULL,--信息名称
	[XXNR]  text  NOT NULL,--信息内容
	[SFFB]  nvarchar(1)  NOT NULL,--是否发布
	[SCJSID]  int  NOT NULL,--上传教师ID
	[SCSJ]  datetime  NOT NULL,--上传时间
CONSTRAINT [PK_EDU_ZXJX_11_A03_CPXXSJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--课题数据表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_11_A04_KTSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_11_A04_KTSJ](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[XNID]  int  NOT NULL,--学年ID
	[XQID]  int  NOT NULL,--学期ID
	[KTMC]  nvarchar(50)  NOT NULL,--课题名称
	[KTZT]  nvarchar(200)  NOT NULL,--课题主题
	[KTNR]  text  NOT NULL,--课题内容
	[SQJSID]  int  NOT NULL,--申请教师ID
	[SQSJ]  datetime  NOT NULL,--申请时间
	[SHZT]  int  NOT NULL,--审核状态
	[SHJSID]  int  NOT NULL,--审核教师ID
	[SHSJ]  datetime  NOT NULL,--审核时间
	[JXZT]  int  NOT NULL,--节项状态
	[JXSJ]  datetime  NOT NULL,--节项时间
CONSTRAINT [PK_EDU_ZXJX_11_A04_KTSJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--课题阶段数据表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_11_A05_KTJDSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_11_A05_KTJDSJ](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[KTID]  int  NOT NULL,--课题ID
	[JDMC]  nvarchar(50)  NOT NULL,--阶段名称
	[JDGZNR]  text  NOT NULL,--阶段工作内容
	[SCSJ]  datetime  NOT NULL,--上传时间
CONSTRAINT [PK_EDU_ZXJX_11_A05_KTJDSJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--听课小组
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_35_A01_TKXZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_35_A01_TKXZ](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[XZMC]  nvarchar(100)  NOT NULL,--小组名称
	[XZCY]  text  NOT NULL,--小组成员
	[XZCYMC]  text  NOT NULL,--小组成员名称
CONSTRAINT [PK_EDU_ZXJX_35_A01_TKXZ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--公开课申请
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_35_A02_GKKSQ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_35_A02_GKKSQ](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[KCMC]  nvarchar(100)  NOT NULL,--课程名称
	[SKSJ]  datetime  NOT NULL,--上课时间
	[SKDD]  nvarchar(100)  NOT NULL,--上课地点
	[KCJJ]  text  NOT NULL,--课程简介
	[TKXZID]  int  NOT NULL,--听课小组ID
	[SHZT]  int  NOT NULL,--审核状态
	[SFGS]  int  NOT NULL,--是否公示
	[SQRID]  int  NOT NULL,--申请人ID
	[SHRID]  nvarchar(20)  NOT NULL,--审核人ID
CONSTRAINT [PK_EDU_ZXJX_35_A02_GKKSQ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--教师请假类型表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_36_A01_JSQJLX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_36_A01_JSQJLX](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[LXMC]  nvarchar(50)  NOT NULL,--类型名称
	[BZ]  text  NOT NULL,--备注
	[SFCC]  int  NOT NULL,--是否出差
CONSTRAINT [PK_EDU_ZXJX_36_A01_JSQJLX] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--代课类型表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_36_A02_DKLX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_36_A02_DKLX](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[LXMC]  nvarchar(50)  NOT NULL,--类型名称
	[BZ]  text  NOT NULL,--备注
CONSTRAINT [PK_EDU_ZXJX_36_A02_DKLX] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--教师请假信息表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_36_A03_JSQJXX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_36_A03_JSQJXX](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[QJJSID]  int  NOT NULL,--请假教师ID
	[JSQJLXID]  int  NOT NULL,--教师请假类型ID
	[QJKSSJ]  datetime  NOT NULL,--请假开始时间
	[QJJSSJ]  datetime  NOT NULL,--请假结束时间
	[CLZT]  int  NOT NULL,--处理状态
	[KCCLFS]  int  NOT NULL,--课程处理方式
	[QJYY]  text  NOT NULL,--请假原因
	[SQSJ]  datetime  NOT NULL,--申请时间
	[BZ]  text  NOT NULL,--备注
	[SHRID]  nvarchar(20)  NOT NULL,--审核人ID
CONSTRAINT [PK_EDU_ZXJX_36_A03_JSQJXX] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--需排课列表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_36_A04_XPKLB]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_36_A04_XPKLB](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[JSQJXXID]  int  NOT NULL,--教师请假信息表ID
	[PKJGJLID]  int  NOT NULL,--排课结果记录表ID
	[RQ]  datetime  NOT NULL,--日期
	[CLZT]  int  NOT NULL,--处理状态
	[XPKJSID]  int  NOT NULL,--需排课教师ID
	[TJJSID]  int  NOT NULL,--推荐教师ID
	[DKJSID]  int  NOT NULL,--代课教师ID
	[DKLXID]  int  NOT NULL,--代课类型ID
	[PKSJ]  datetime  NOT NULL,--排课时间
	[QRSJ]  datetime  NOT NULL,--确认时间
	[PKRID]  nvarchar(20)  NOT NULL,--排课人ID
CONSTRAINT [PK_EDU_ZXJX_36_A04_XPKLB] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--选修课程类别表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_50_A01_XXKCLB]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_50_A01_XXKCLB](
	[ID]  int  identity,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[LBMC]  nvarchar(100)  NOT NULL,--类别名称
	[JJ]  text  NOT NULL,--简介
CONSTRAINT [PK_EDU_ZXJX_50_A01_XXKCLB] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--开课时间表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_50_A02_KKSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_50_A02_KKSJ](
	[ID]  int  identity,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[SKSJ]  nvarchar(50)  NOT NULL,--上课时间
	[SDIDLB]  text  NOT NULL,--时段ID列表
	[SDMCLB]  text  NOT NULL,--时段名称列表
CONSTRAINT [PK_EDU_ZXJX_50_A02_KKSJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--教学班数据表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_50_A03_JXBSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_50_A03_JXBSJ](
	[ID]  int  identity,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[XXKCLBID]  int  NOT NULL,--选修课程类别ID
	[KCMC]  nvarchar(50)  NOT NULL,--课程名称
	[KCJS]  text  NOT NULL,--课程介绍
	[JXJH]  text  NOT NULL,--教学计划
	[ZKS]  int  NOT NULL,--总课时
	[XF]  decimal(5, 1)  NOT NULL,--学分
	[XQID]  int  NOT NULL,--学期ID
	[NJID]  nvarchar(10)  NOT NULL,--年级ID
	[DQZT]  int  NOT NULL,--当前状态
	[KKJSID]  int  NOT NULL,--开课教师ID
	[SKSJID]  int  NOT NULL,--上课时间ID
	[SKDD]  nvarchar(100)  NOT NULL,--上课地点
	[BJKRNRS]  int  NOT NULL,--班级可容纳人数
	[ZDKBRS]  int  NOT NULL,--最低开班人数
CONSTRAINT [PK_EDU_ZXJX_50_A03_JXBSJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--学生选课记录表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_50_A04_XSXKJL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_50_A04_XSXKJL](
	[ID]  int  identity,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[XSID]  int  NOT NULL,--学生ID
	[JXBID]  int  NOT NULL,--教学班ID
CONSTRAINT [PK_EDU_ZXJX_50_A04_XSXKJL] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--学生选修课成绩表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_50_A05_XSXXKCJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_50_A05_XSXXKCJ](
	[ID]  int  identity,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[XSID]  int  NOT NULL,--学生ID
	[JXBID]  int  NOT NULL,--教学班ID
	[CJ]  decimal(5, 2)  NOT NULL,--成绩
CONSTRAINT [PK_EDU_ZXJX_50_A05_XSXXKCJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--课堂点名表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_50_A06_KTDMB]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_50_A06_KTDMB](
	[ID]  int  identity,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[JXBID]  int  NOT NULL,--教学班ID
	[XSID]  int  NOT NULL,--学生ID
	[ZT]  int  NOT NULL,--状态
	[SJ]  datetime  NOT NULL,--时间
	[BZ]  nvarchar(100)  NOT NULL,--备注
CONSTRAINT [PK_EDU_ZXJX_50_A06_KTDMB] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--考试时间表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_52_A01_KSSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_52_A01_KSSJ](
	[ID]  int  identity,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[KSID]  int  NOT NULL,--考试ID
	[KSRQ]  datetime  NOT NULL,--考试日期
	[KSSJ]  nvarchar(50)  NOT NULL,--考试时间
	[BZ]  text  NOT NULL,--备注
	[CCMC]  nvarchar(50)  NOT NULL,--场次名称
CONSTRAINT [PK_EDU_ZXJX_52_A01_KSSJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--考试时间安排表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_52_A02_KSSJAP]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_52_A02_KSSJAP](
	[ID]  int  identity,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[KSID]  int  NOT NULL,--考试ID
	[KSSJID]  int  NOT NULL,--考试时间ID
	[KCID]  nvarchar(10)  NOT NULL,--课程ID
CONSTRAINT [PK_EDU_ZXJX_52_A02_KSSJAP] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--考试地点表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_52_A03_KSDD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_52_A03_KSDD](
	[ID]  int  identity,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[KCMC]  nvarchar(50)  NOT NULL,--考场名称
	[ZDRNRS]  int  NOT NULL,--最大容纳人数
	[DD]  nvarchar(200)  NOT NULL,--地点
	[ZLRS]  int  NOT NULL,--纵列人数
CONSTRAINT [PK_EDU_ZXJX_52_A03_KSDD] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--参考学生表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_52_A04_CKXS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_52_A04_CKXS](
	[ID]  int  identity,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[KSID]  int  NOT NULL,--考试ID
	[XSID]  int  NOT NULL,--学生ID
	[KCID]  int  NOT NULL,--考场ID
	[ZKZH]  nvarchar(50)  NOT NULL,--准考证号
	[ZWH]  nvarchar(50)  NOT NULL,--座位号
CONSTRAINT [PK_EDU_ZXJX_52_A04_CKXS] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--监考安排表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_52_A05_JKAP]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_52_A05_JKAP](
	[ID]  int  identity,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[KSID]  int  NOT NULL,--考试ID
	[CCID]  int  NOT NULL,--场次ID
	[JGID]  int  NOT NULL,--教工ID
	[KCID]  int  NOT NULL,--考场ID
CONSTRAINT [PK_EDU_ZXJX_52_A05_JKAP] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--学分制课程表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_53_A01_XFZKC]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_53_A01_XFZKC](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校ID
	[KCH]  nvarchar(10)  NOT NULL,--课程号
	[KCLB]  nvarchar(60)  NULL,--课程类别
	[SSKM]  nvarchar(60)  NULL,--所属科目
	[KCMC]  nvarchar(60)  NULL,--课程名称
	[SFSY]  int  NULL,--是否使用
	[PLSX]  int  NOT NULL,--排列顺序
CONSTRAINT [PK_EDU_ZXJX_53_A01_XFZKC] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--学分制开课时间表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_53_A02_XFZKKSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_53_A02_XFZKKSJ](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[SJMC]  nvarchar(50)  NOT NULL,--时间名称
	[SDIDLB]  text  NOT NULL,--时段ID列表
	[SDMCLB]  text  NOT NULL,--时段名称列表
CONSTRAINT [PK_EDU_ZXJX_53_A02_XFZKKSJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--学分制学期教学计划表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_53_A11_XFZXQJXJH]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_53_A11_XFZXQJXJH](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校ID
	[XQID]  int  NOT NULL,--学期ID
	[NJID]  nvarchar(10)  NOT NULL,--年级ID
	[BJLBID]  int  NOT NULL,--班级类别ID
	[BJID]  nvarchar(10)  NOT NULL,--班级ID
	[KCLX]  int  NOT NULL,--课程类型
CONSTRAINT [PK_EDU_ZXJX_53_A11_XFZXQJXJH] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--学分制必修课程清单表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_53_A12_XFZBXKCQD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_53_A12_XFZBXKCQD](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校ID
	[JXJHID]  int  NOT NULL,--教学计划ID
	[KCID]  int  NOT NULL,--课程ID
	[XF]  decimal(3, 1)  NOT NULL,--学分
CONSTRAINT [PK_EDU_ZXJX_53_A12_XFZBXKCQD] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--学分制限选课程清单表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_53_A13_XFZXXKCQD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_53_A13_XFZXXKCQD](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校ID
	[JXJHID]  int  NOT NULL,--教学计划ID
	[KCIDLB]  int  NOT NULL,--课程ID列表
	[KCMCLB]  int  NOT NULL,--课程名称列表
	[XXMS]  int  NOT NULL,--限选数量
	[XF]  decimal(3, 1)  NOT NULL,--学分
CONSTRAINT [PK_EDU_ZXJX_53_A13_XFZXXKCQD] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--学分制选课表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_53_A20_XFZXK]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_53_A20_XFZXK](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[XQID]  int  NOT NULL,--学期ID
	[XKMC]  nvarchar(50)  NOT NULL,--选课名称
	[XKKSSJ]  datetime  NOT NULL,--选课开始时间
	[XKJSSJ]  datetime  NOT NULL,--选课结束时间
	[SFYXSYXSECXK]  int  NOT NULL,--是否允许所有学生二次选课
	[ECXKKSSJ]  datetime  NOT NULL,--二次选课开始时间
	[ECXKJSSJ]  datetime  NOT NULL,--二次选课结束时间
	[XKFFYLC]  nvarchar(200)  NOT NULL,--选课方法与流程
	[KXKCLXIDLB]  nvarchar(200)  NOT NULL,--可选课程类型ID列表
	[KXKCLXMCLB]  nvarchar(200)  NOT NULL,--可选课程类型名称列表
	[XKBJIDLB]  text  NOT NULL,--选课班级ID列表
	[XSZDXKMS]  int  NOT NULL,--学生最多选课门数
CONSTRAINT [PK_EDU_ZXJX_53_A20_XFZXK] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--学分制教学班数据表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_53_A21_XFZJXBSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_53_A21_XFZJXBSJ](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[XQID]  int  NOT NULL,--学期ID
	[ZRKJSID]  int  NOT NULL,--主任课教师ID
	[FRKJSID]  int  NOT NULL,--辅任课教师ID
	[KCID]  int  NOT NULL,--课程ID
	[KKSJID]  int  NOT NULL,--开课时间ID
	[SKDD]  nvarchar(200)  NOT NULL,--上课地点
	[ZKS]  int  NOT NULL,--总课时
	[BJKRNRS]  int  NOT NULL,--班级可容纳人数
	[ZDKBRS]  int  NOT NULL,--最低开班人数
	[ZT]  int  NOT NULL,--状态
	[BZ]  text  NOT NULL,--备注
	[KCMC]  nvarchar(200)  NOT NULL,--课程名称
	[SKBJIDLB]  text  NOT NULL,--授课班级ID列表
	[SKBJMCLB]  text  NOT NULL,--授课班级名称列表
	[JXBLX]  int  NOT NULL,--教学班类型
CONSTRAINT [PK_EDU_ZXJX_53_A21_XFZJXBSJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--学生学分制选课记录表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_53_A22_XSXFZXKJL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_53_A22_XSXFZXKJL](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[XSID]  int  NOT NULL,--学生ID
	[XFZJXBID]  int  NOT NULL,--学分制教学班ID
CONSTRAINT [PK_EDU_ZXJX_53_A22_XSXFZXKJL] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--学分制二次选课学生表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_53_A23_XFZECXKXS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_53_A23_XFZECXKXS](
	[ID]  int  identity,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[XKID]  int  NOT NULL,--选课ID
	[XSID]  int  NOT NULL,--学生ID
CONSTRAINT [PK_EDU_ZXJX_53_A23_XFZECXKXS] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--学分制课堂内容表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_53_A24_XFZKTNR]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_53_A24_XFZKTNR](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[XFZJXBID]  int  NOT NULL,--学分制教学班ID
	[KTNR]  text  NOT NULL,--课堂内容
	[TJSJ]  datetime  NOT NULL,--添加时间
CONSTRAINT [PK_EDU_ZXJX_53_A24_XFZKTNR] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--学分制课堂记录项目表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_53_A25_XFZKTJLXM]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_53_A25_XFZKTJLXM](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[XMMC]  nvarchar(200)  NOT NULL,--项目名称
	[SRLX]  int  NOT NULL,--输入类型
	[MRZ]  nvarchar(200)  NOT NULL,--默认值
	[PLSX]  int  NOT NULL,--排列顺序
CONSTRAINT [PK_EDU_ZXJX_53_A25_XFZKTJLXM] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--学分制课堂记录结果表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_53_A26_XFZKTJLJG]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_53_A26_XFZKTJLJG](
	[ID]  int  identity,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[KTNRID]  int  NOT NULL,--课堂内容ID
	[XSID]  int  NOT NULL,--学生ID
	[XMID]  int  NOT NULL,--项目ID
	[JG]  nvarchar(200)  NOT NULL,--结果
CONSTRAINT [PK_EDU_ZXJX_53_A26_XFZKTJLJG] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--学分制作业内容表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_53_A27_XFZZYNR]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_53_A27_XFZZYNR](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[XFZJXBID]  int  NOT NULL,--学分制教学班ID
	[ZYNR]  text  NOT NULL,--作业内容
	[TJSJ]  datetime  NOT NULL,--添加时间
CONSTRAINT [PK_EDU_ZXJX_53_A27_XFZZYNR] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--学分制作业记录项目表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_53_A28_XFZZYJLXM]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_53_A28_XFZZYJLXM](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[XMMC]  nvarchar(200)  NOT NULL,--项目名称
	[SRLX]  int  NOT NULL,--输入类型
	[MRZ]  nvarchar(200)  NOT NULL,--默认值
	[PLSX]  int  NOT NULL,--排列顺序
CONSTRAINT [PK_EDU_ZXJX_53_A28_XFZZYJLXM] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--学分制作业记录结果表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_53_A29_XFZZYJLJG]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_53_A29_XFZZYJLJG](
	[ID]  int  identity,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[ZYNRID]  int  NOT NULL,--作业内容ID
	[XSID]  int  NOT NULL,--学生ID
	[XMID]  int  NOT NULL,--项目ID
	[JG]  nvarchar(200)  NOT NULL,--结果
CONSTRAINT [PK_EDU_ZXJX_53_A29_XFZZYJLJG] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--学分制单元测试表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_53_A41_XFZDYCS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_53_A41_XFZDYCS](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[XFZJXBID]  int  NOT NULL,--学分制教学班ID
	[CSMC]  nvarchar(200)  NOT NULL,--测试名称
	[TJSJ]  datetime  NOT NULL,--添加时间
CONSTRAINT [PK_EDU_ZXJX_53_A41_XFZDYCS] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--学分制单元测试成绩表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_53_A42_XFZDYCSCJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_53_A42_XFZDYCSCJ](
	[ID]  int  identity,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[DYCSID]  int  NOT NULL,--单元测试ID
	[XSID]  int  NOT NULL,--学生ID
	[CJ]  decimal(5, 1)  NOT NULL,--成绩
CONSTRAINT [PK_EDU_ZXJX_53_A42_XFZDYCSCJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--必修课学校统考成绩表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_53_A46_BXKXXTKCJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_53_A46_BXKXXTKCJ](
	[ID]  int  identity,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[XFZJXBID]  int  NOT NULL,--学分制教学班ID
	[XSID]  int  NOT NULL,--学生ID
	[TKLX]  int  NOT NULL,--统考类型
	[CJ]  decimal(5, 1)  NOT NULL,--成绩
CONSTRAINT [PK_EDU_ZXJX_53_A46_BXKXXTKCJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--学分制开课管理表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_53_A51_XFZKKGL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_53_A51_XFZKKGL](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[KCMC]  nvarchar(100)  NOT NULL,--课程名称
	[KKR]  nvarchar(200)  NOT NULL,--开课人
	[KCNR]  text  NOT NULL,--课程内容
	[HJQK]  text  NOT NULL,--获奖情况
CONSTRAINT [PK_EDU_ZXJX_53_A51_XFZKKGL] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--手册内容模板表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_54_A01_SCNRMB]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_54_A01_SCNRMB](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[MC]  nvarchar(100)  NOT NULL,--名称
	[NR]  text  NOT NULL,--内容
CONSTRAINT [PK_EDU_ZXJX_54_A01_SCNRMB] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--手册项目表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_54_A02_SCXM]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_54_A02_SCXM](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[XMMC]  nvarchar(100)  NOT NULL,--项目名称
	[SFQFXQ]  int  NOT NULL,--是否区分学期
	[PLSX]  int  NOT NULL,--排列顺序
	[SCNRMBID]  int  NOT NULL,--手册内容模板ID
CONSTRAINT [PK_EDU_ZXJX_54_A02_SCXM] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--手册内容表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_54_A03_SCNR]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_54_A03_SCNR](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[BJID]  nvarchar(10)  NOT NULL,--班级ID
	[XMID]  int  NOT NULL,--项目ID
	[XNID]  int  NOT NULL,--学年ID
	[XQID]  int  NOT NULL,--学期ID
	[NR]  text  NOT NULL,--内容
CONSTRAINT [PK_EDU_ZXJX_54_A03_SCNR] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--学生思想品德表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_54_A04_XSSXPD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_54_A04_XSSXPD](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[BJID]  nvarchar(10)  NOT NULL,--班级ID
	[XSID]  int  NOT NULL,--学生ID
	[XNID]  int  NOT NULL,--学年ID
	[NR]  text  NOT NULL,--内容
CONSTRAINT [PK_EDU_ZXJX_54_A04_XSSXPD] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--学生晨检信息表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_54_A05_XSCJXX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_54_A05_XSCJXX](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[XQID]  int  NOT NULL,--学期ID
	[XSID]  int  NOT NULL,--学生ID
	[RQ]  datetime  NOT NULL,--日期
	[FR]  nvarchar(200)  NOT NULL,--发热
	[KS]  nvarchar(200)  NOT NULL,--咳嗽
	[PZ]  nvarchar(200)  NOT NULL,--皮疹
	[FX]  nvarchar(200)  NOT NULL,--腹泻
	[OT]  nvarchar(200)  NOT NULL,--呕吐
	[HD]  nvarchar(200)  NOT NULL,--黄疸
	[JMCX]  nvarchar(200)  NOT NULL,--结膜充血
	[QT]  nvarchar(200)  NOT NULL,--其它
	[SFJZ]  nvarchar(200)  NOT NULL,--是否就诊
	[JBMC]  nvarchar(200)  NOT NULL,--疾病名称
	[LG]  nvarchar(200)  NOT NULL,--留观
	[HJ]  nvarchar(200)  NOT NULL,--回家
	[LXSJ]  nvarchar(200)  NOT NULL,--离校时间
	[FXSJ]  nvarchar(200)  NOT NULL,--复学时间
	[QKTS]  nvarchar(200)  NOT NULL,--缺课天数
	[BZ]  text  NOT NULL,--备注
CONSTRAINT [PK_EDU_ZXJX_54_A05_XSCJXX] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--收费项目表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_55_A01_SFXM]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_55_A01_SFXM](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[XQID]  int  NOT NULL,--学期ID
	[FYMC]  nvarchar(100)  NOT NULL,--费用名称
	[YSJE]  decimal(10, 3)  NOT NULL,--应收金额
	[PLSX]  int  NOT NULL,--排列顺序
	[BZ]  text  NOT NULL,--备注
CONSTRAINT [PK_EDU_ZXJX_55_A01_SFXM] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--收费结果表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_55_A02_SFJG]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_55_A02_SFJG](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[SFXMID]  int  NOT NULL,--收费项目ID
	[XSID]  int  NOT NULL,--学生ID
	[SJJE]  decimal(10, 3)  NOT NULL,--实缴金额
	[JFZT]  int  NOT NULL,--缴费状态
CONSTRAINT [PK_EDU_ZXJX_55_A02_SFJG] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--学生收费项目备注表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_55_A03_XSSFXMBZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_55_A03_XSSFXMBZ](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[XSID]  int  NOT NULL,--学生ID
	[XQID]  int  NOT NULL,--学期ID
	[BZ]  text  NOT NULL,--备注
CONSTRAINT [PK_EDU_ZXJX_55_A03_XSSFXMBZ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--以下为添加注释语句
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程数据类' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_01_01_KC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_01_01_KC', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_01_01_KC', @level2type=N'COLUMN',@level2name=N'KCH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_01_01_KC', @level2type=N'COLUMN',@level2name=N'KCMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_01_01_KC', @level2type=N'COLUMN',@level2name=N'KCM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程等级码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_01_01_KC', @level2type=N'COLUMN',@level2name=N'KCDJM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程别名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_01_01_KC', @level2type=N'COLUMN',@level2name=N'KCBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程简介' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_01_01_KC', @level2type=N'COLUMN',@level2name=N'KCJJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程要求' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_01_01_KC', @level2type=N'COLUMN',@level2name=N'KCYQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'总学时' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_01_01_KC', @level2type=N'COLUMN',@level2name=N'ZXS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'周学时' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_01_01_KC', @level2type=N'COLUMN',@level2name=N'ZHXS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自学学时' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_01_01_KC', @level2type=N'COLUMN',@level2name=N'ZXXS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'授课方式码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_01_01_KC', @level2type=N'COLUMN',@level2name=N'SKFSM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教材编码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_01_01_KC', @level2type=N'COLUMN',@level2name=N'JCBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'参考书目' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_01_01_KC', @level2type=N'COLUMN',@level2name=N'CKSM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'场地限制' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_01_01_KC', @level2type=N'COLUMN',@level2name=N'CDXZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否主课' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_01_01_KC', @level2type=N'COLUMN',@level2name=N'SFZK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排列顺序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_01_01_KC', @level2type=N'COLUMN',@level2name=N'PLSX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教材基本信息表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_04_01_JCJBXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_04_01_JCJBXX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_04_01_JCJBXX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教材代码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_04_01_JCJBXX', @level2type=N'COLUMN',@level2name=N'JCDM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教材名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_04_01_JCJBXX', @level2type=N'COLUMN',@level2name=N'JCMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'出版号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_04_01_JCJBXX', @level2type=N'COLUMN',@level2name=N'CBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'第一作者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_04_01_JCJBXX', @level2type=N'COLUMN',@level2name=N'DYZZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'其他作者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_04_01_JCJBXX', @level2type=N'COLUMN',@level2name=N'QTZZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'版次' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_04_01_JCJBXX', @level2type=N'COLUMN',@level2name=N'BC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'印次' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_04_01_JCJBXX', @level2type=N'COLUMN',@level2name=N'YC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'价格' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_04_01_JCJBXX', @level2type=N'COLUMN',@level2name=N'JG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'出版社' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_04_01_JCJBXX', @level2type=N'COLUMN',@level2name=N'CBS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'出版日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_04_01_JCJBXX', @level2type=N'COLUMN',@level2name=N'CBRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否有练习册' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_04_01_JCJBXX', @level2type=N'COLUMN',@level2name=N'SFYLXC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否有教参教辅' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_04_01_JCJBXX', @level2type=N'COLUMN',@level2name=N'SFYJCJF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'内容简介' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_04_01_JCJBXX', @level2type=N'COLUMN',@level2name=N'NRJJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'当前状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_04_01_JCJBXX', @level2type=N'COLUMN',@level2name=N'DQZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最低库存' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_04_01_JCJBXX', @level2type=N'COLUMN',@level2name=N'ZDKC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'当前库存' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_04_01_JCJBXX', @level2type=N'COLUMN',@level2name=N'DQKC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教材选用信息表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_04_02_JCXYXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_04_02_JCXYXX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_04_02_JCXYXX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学期ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_04_02_JCXYXX', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'年级ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_04_02_JCXYXX', @level2type=N'COLUMN',@level2name=N'NJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_04_02_JCXYXX', @level2type=N'COLUMN',@level2name=N'KCID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教材ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_04_02_JCXYXX', @level2type=N'COLUMN',@level2name=N'JCID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'选用数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_04_02_JCXYXX', @level2type=N'COLUMN',@level2name=N'XYSL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_04_02_JCXYXX', @level2type=N'COLUMN',@level2name=N'SQRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_04_02_JCXYXX', @level2type=N'COLUMN',@level2name=N'SQSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_04_02_JCXYXX', @level2type=N'COLUMN',@level2name=N'SHZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_04_02_JCXYXX', @level2type=N'COLUMN',@level2name=N'SHRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_04_02_JCXYXX', @level2type=N'COLUMN',@level2name=N'SHSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否入库' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_04_02_JCXYXX', @level2type=N'COLUMN',@level2name=N'SFRK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教材领用记录表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_04_A03_JCLYJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_04_A03_JCLYJL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_04_A03_JCLYJL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学期ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_04_A03_JCLYJL', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'年级ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_04_A03_JCLYJL', @level2type=N'COLUMN',@level2name=N'NJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'班级ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_04_A03_JCLYJL', @level2type=N'COLUMN',@level2name=N'BJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教材ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_04_A03_JCLYJL', @level2type=N'COLUMN',@level2name=N'JCID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'领用数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_04_A03_JCLYJL', @level2type=N'COLUMN',@level2name=N'LYSL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'领用人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_04_A03_JCLYJL', @level2type=N'COLUMN',@level2name=N'LYR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'领用时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_04_A03_JCLYJL', @level2type=N'COLUMN',@level2name=N'LYSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'经手人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_04_A03_JCLYJL', @level2type=N'COLUMN',@level2name=N'JSRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教材反馈表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_04_A05_JCFK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_04_A05_JCFK', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_04_A05_JCFK', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学期ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_04_A05_JCFK', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教材ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_04_A05_JCFK', @level2type=N'COLUMN',@level2name=N'JCID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'反馈信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_04_A05_JCFK', @level2type=N'COLUMN',@level2name=N'FKXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'反馈时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_04_A05_JCFK', @level2type=N'COLUMN',@level2name=N'FKSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'反馈教师ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_04_A05_JCFK', @level2type=N'COLUMN',@level2name=N'FKJSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教材报废表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_04_A06_JCBF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_04_A06_JCBF', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_04_A06_JCBF', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学期ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_04_A06_JCBF', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教材ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_04_A06_JCBF', @level2type=N'COLUMN',@level2name=N'JCID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'报废数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_04_A06_JCBF', @level2type=N'COLUMN',@level2name=N'BFSL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'报废原因' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_04_A06_JCBF', @level2type=N'COLUMN',@level2name=N'BFYY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'报废时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_04_A06_JCBF', @level2type=N'COLUMN',@level2name=N'BFSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'经手人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_04_A06_JCBF', @level2type=N'COLUMN',@level2name=N'JSRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'考试数据表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_05_A01_KS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_05_A01_KS', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_05_A01_KS', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学年' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_05_A01_KS', @level2type=N'COLUMN',@level2name=N'XNID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_05_A01_KS', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'考试名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_05_A01_KS', @level2type=N'COLUMN',@level2name=N'KSMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'考试开始时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_05_A01_KS', @level2type=N'COLUMN',@level2name=N'KSKSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'考试结束时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_05_A01_KS', @level2type=N'COLUMN',@level2name=N'KSJSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登分开始时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_05_A01_KS', @level2type=N'COLUMN',@level2name=N'DFKSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登分结束时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_05_A01_KS', @level2type=N'COLUMN',@level2name=N'DFJSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登分方式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_05_A01_KS', @level2type=N'COLUMN',@level2name=N'DFKS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否允许查询' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_05_A01_KS', @level2type=N'COLUMN',@level2name=N'SFYXCX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否需要排考' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_05_A01_KS', @level2type=N'COLUMN',@level2name=N'SFXYPK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'考试科目数据表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_05_A02_KSKM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_05_A02_KSKM', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_05_A02_KSKM', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属考试ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_05_A02_KSKM', @level2type=N'COLUMN',@level2name=N'SSKSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教师任课编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_05_A02_KSKM', @level2type=N'COLUMN',@level2name=N'JSRKID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_05_A02_KSKM', @level2type=N'COLUMN',@level2name=N'KCMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'年级名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_05_A02_KSKM', @level2type=N'COLUMN',@level2name=N'NJMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'班级名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_05_A02_KSKM', @level2type=N'COLUMN',@level2name=N'BJMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'成绩总分' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_05_A02_KSKM', @level2type=N'COLUMN',@level2name=N'CJZF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'面批记录表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_06_A01_MPJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_06_A01_MPJL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_06_A01_MPJL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'面批教师' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_06_A01_MPJL', @level2type=N'COLUMN',@level2name=N'MPJS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'面批课程' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_06_A01_MPJL', @level2type=N'COLUMN',@level2name=N'MPKC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'面批学生' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_06_A01_MPJL', @level2type=N'COLUMN',@level2name=N'MPXS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学年' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_06_A01_MPJL', @level2type=N'COLUMN',@level2name=N'XNID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_06_A01_MPJL', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'年级' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_06_A01_MPJL', @level2type=N'COLUMN',@level2name=N'NJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'班级' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_06_A01_MPJL', @level2type=N'COLUMN',@level2name=N'BJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'面批结果' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_06_A01_MPJL', @level2type=N'COLUMN',@level2name=N'MPJG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'面批时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_06_A01_MPJL', @level2type=N'COLUMN',@level2name=N'MPSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'录入时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_06_A01_MPJL', @level2type=N'COLUMN',@level2name=N'RRSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_06_A01_MPJL', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教师任课编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_06_A01_MPJL', @level2type=N'COLUMN',@level2name=N'JSRKID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'校历周ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_06_A01_MPJL', @level2type=N'COLUMN',@level2name=N'XLZID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'成绩分析配置表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_07_A01_CJFXPZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_07_A01_CJFXPZ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_07_A01_CJFXPZ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'配置名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_07_A01_CJFXPZ', @level2type=N'COLUMN',@level2name=N'SSKSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分析类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_07_A01_CJFXPZ', @level2type=N'COLUMN',@level2name=N'FXLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_07_A01_CJFXPZ', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'年级前' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_07_A01_CJFXPZ', @level2type=N'COLUMN',@level2name=N'NJQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'年级后' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_07_A01_CJFXPZ', @level2type=N'COLUMN',@level2name=N'NJH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'成绩分析配置项目表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_07_A02_CJFXPZXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_07_A02_CJFXPZXM', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属配置ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_07_A02_CJFXPZXM', @level2type=N'COLUMN',@level2name=N'SSPZID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_07_A02_CJFXPZXM', @level2type=N'COLUMN',@level2name=N'DCMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上限' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_07_A02_CJFXPZXM', @level2type=N'COLUMN',@level2name=N'SX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'下限' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_07_A02_CJFXPZXM', @level2type=N'COLUMN',@level2name=N'XX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'P值权重' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_07_A02_CJFXPZXM', @level2type=N'COLUMN',@level2name=N'PZQZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生学习过程性评价配置表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_08_A01_XXGCXPJPZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_08_A01_XXGCXPJPZ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_08_A01_XXGCXPJPZ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属课程号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_08_A01_XXGCXPJPZ', @level2type=N'COLUMN',@level2name=N'SSKCH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'配置名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_08_A01_XXGCXPJPZ', @level2type=N'COLUMN',@level2name=N'PZMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'配置类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_08_A01_XXGCXPJPZ', @level2type=N'COLUMN',@level2name=N'PZLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父类名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_08_A01_XXGCXPJPZ', @level2type=N'COLUMN',@level2name=N'FLM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生学习过程性评价结果表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_08_A02_XXGCXPJJG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_08_A02_XXGCXPJJG', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_08_A02_XXGCXPJJG', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'评价配置ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_08_A02_XXGCXPJJG', @level2type=N'COLUMN',@level2name=N'PZID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_08_A02_XXGCXPJJG', @level2type=N'COLUMN',@level2name=N'FS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'校历周ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_08_A02_XXGCXPJJG', @level2type=N'COLUMN',@level2name=N'XLZID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_08_A02_XXGCXPJJG', @level2type=N'COLUMN',@level2name=N'XSXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属课程号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_08_A02_XXGCXPJJG', @level2type=N'COLUMN',@level2name=N'SSKCH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生学习过程性评价项目类型表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_08_A03_XXGCXPJXMLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_08_A03_XXGCXPJXMLX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_08_A03_XXGCXPJXMLX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_08_A03_XXGCXPJXMLX', @level2type=N'COLUMN',@level2name=N'LXMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'评价科目' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_08_A03_XXGCXPJXMLX', @level2type=N'COLUMN',@level2name=N'PJKM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'调课申请数据表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_09_A01_TKSQSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_09_A01_TKSQSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_09_A01_TKSQSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教师' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_09_A01_TKSQSJ', @level2type=N'COLUMN',@level2name=N'JSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_09_A01_TKSQSJ', @level2type=N'COLUMN',@level2name=N'KCID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'调课类型ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_09_A01_TKSQSJ', @level2type=N'COLUMN',@level2name=N'TKLXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'调课前起始周' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_09_A01_TKSQSJ', @level2type=N'COLUMN',@level2name=N'TKQQSZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'调课前结束周' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_09_A01_TKSQSJ', @level2type=N'COLUMN',@level2name=N'TKQJSZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'调课前星期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_09_A01_TKSQSJ', @level2type=N'COLUMN',@level2name=N'TKQXQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'调课前时段' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_09_A01_TKSQSJ', @level2type=N'COLUMN',@level2name=N'TKQSD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'调课前节次' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_09_A01_TKSQSJ', @level2type=N'COLUMN',@level2name=N'TKQJC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'调课后起始周' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_09_A01_TKSQSJ', @level2type=N'COLUMN',@level2name=N'TKHQSZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'调课后结束周' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_09_A01_TKSQSJ', @level2type=N'COLUMN',@level2name=N'TKHJSZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'调课后星期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_09_A01_TKSQSJ', @level2type=N'COLUMN',@level2name=N'TKHXQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'调课后时段' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_09_A01_TKSQSJ', @level2type=N'COLUMN',@level2name=N'TKHSD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'调课后节次' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_09_A01_TKSQSJ', @level2type=N'COLUMN',@level2name=N'TKHJC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'当前状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_09_A01_TKSQSJ', @level2type=N'COLUMN',@level2name=N'ZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_09_A01_TKSQSJ', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_09_A01_TKSQSJ', @level2type=N'COLUMN',@level2name=N'SQSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'接收教师ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_09_A01_TKSQSJ', @level2type=N'COLUMN',@level2name=N'JSJSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教师过程性评价记录表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_10_A01_JSGCXPJJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_10_A01_JSGCXPJJL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_10_A01_JSGCXPJJL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_10_A01_JSGCXPJJL', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'考评周' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_10_A01_JSGCXPJJL', @level2type=N'COLUMN',@level2name=N'XLZID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教师' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_10_A01_JSGCXPJJL', @level2type=N'COLUMN',@level2name=N'JSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'考评项目' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_10_A01_JSGCXPJJL', @level2type=N'COLUMN',@level2name=N'PJXMID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'考核分' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_10_A01_JSGCXPJJL', @level2type=N'COLUMN',@level2name=N'KHF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'成绩' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_10_A01_JSGCXPJJL', @level2type=N'COLUMN',@level2name=N'FLM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'录入时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_10_A01_JSGCXPJJL', @level2type=N'COLUMN',@level2name=N'LRSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教师过程性评价考核项目表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_10_A02_JSGCXPJXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_10_A02_JSGCXPJXM', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_10_A02_JSGCXPJXM', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'项目名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_10_A02_JSGCXPJXM', @level2type=N'COLUMN',@level2name=N'XMMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_10_A02_JSGCXPJXM', @level2type=N'COLUMN',@level2name=N'DWMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'考核最高分' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_10_A02_JSGCXPJXM', @level2type=N'COLUMN',@level2name=N'ZGF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'权重' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_10_A02_JSGCXPJXM', @level2type=N'COLUMN',@level2name=N'QZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否统计' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_10_A02_JSGCXPJXM', @level2type=N'COLUMN',@level2name=N'SFTJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据来源' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_10_A02_JSGCXPJXM', @level2type=N'COLUMN',@level2name=N'SJLY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教师每周上课数表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_10_A03_JSMZSKS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_10_A03_JSMZSKS', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_10_A03_JSMZSKS', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教师ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_10_A03_JSMZSKS', @level2type=N'COLUMN',@level2name=N'JSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'校历周ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_10_A03_JSMZSKS', @level2type=N'COLUMN',@level2name=N'XLZID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教师任课ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_10_A03_JSMZSKS', @level2type=N'COLUMN',@level2name=N'JSRKID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_10_A03_JSMZSKS', @level2type=N'COLUMN',@level2name=N'KCH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上课节数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_10_A03_JSMZSKS', @level2type=N'COLUMN',@level2name=N'SKJS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'论文数据表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_11_A01_LWSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_11_A01_LWSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_11_A01_LWSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学年ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_11_A01_LWSJ', @level2type=N'COLUMN',@level2name=N'XNID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学期ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_11_A01_LWSJ', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'论文名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_11_A01_LWSJ', @level2type=N'COLUMN',@level2name=N'LWMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'论文摘要' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_11_A01_LWSJ', @level2type=N'COLUMN',@level2name=N'LWZY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'论文内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_11_A01_LWSJ', @level2type=N'COLUMN',@level2name=N'LWNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上传教师ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_11_A01_LWSJ', @level2type=N'COLUMN',@level2name=N'SCJSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上传时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_11_A01_LWSJ', @level2type=N'COLUMN',@level2name=N'SCSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'科研活动数据表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_11_A02_KYHDSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_11_A02_KYHDSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_11_A02_KYHDSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学年ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_11_A02_KYHDSJ', @level2type=N'COLUMN',@level2name=N'XNID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学期ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_11_A02_KYHDSJ', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'活动名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_11_A02_KYHDSJ', @level2type=N'COLUMN',@level2name=N'HDMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'活动内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_11_A02_KYHDSJ', @level2type=N'COLUMN',@level2name=N'HDNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否发布' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_11_A02_KYHDSJ', @level2type=N'COLUMN',@level2name=N'SFFB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上传教师ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_11_A02_KYHDSJ', @level2type=N'COLUMN',@level2name=N'SCJSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上传时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_11_A02_KYHDSJ', @level2type=N'COLUMN',@level2name=N'SCSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'参评信息数据表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_11_A03_CPXXSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_11_A03_CPXXSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_11_A03_CPXXSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学年ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_11_A03_CPXXSJ', @level2type=N'COLUMN',@level2name=N'XNID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学期ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_11_A03_CPXXSJ', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'信息名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_11_A03_CPXXSJ', @level2type=N'COLUMN',@level2name=N'XXMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'信息内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_11_A03_CPXXSJ', @level2type=N'COLUMN',@level2name=N'XXNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否发布' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_11_A03_CPXXSJ', @level2type=N'COLUMN',@level2name=N'SFFB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上传教师ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_11_A03_CPXXSJ', @level2type=N'COLUMN',@level2name=N'SCJSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上传时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_11_A03_CPXXSJ', @level2type=N'COLUMN',@level2name=N'SCSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课题数据表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_11_A04_KTSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_11_A04_KTSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_11_A04_KTSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学年ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_11_A04_KTSJ', @level2type=N'COLUMN',@level2name=N'XNID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学期ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_11_A04_KTSJ', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课题名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_11_A04_KTSJ', @level2type=N'COLUMN',@level2name=N'KTMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课题主题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_11_A04_KTSJ', @level2type=N'COLUMN',@level2name=N'KTZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课题内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_11_A04_KTSJ', @level2type=N'COLUMN',@level2name=N'KTNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请教师ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_11_A04_KTSJ', @level2type=N'COLUMN',@level2name=N'SQJSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_11_A04_KTSJ', @level2type=N'COLUMN',@level2name=N'SQSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_11_A04_KTSJ', @level2type=N'COLUMN',@level2name=N'SHZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核教师ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_11_A04_KTSJ', @level2type=N'COLUMN',@level2name=N'SHJSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_11_A04_KTSJ', @level2type=N'COLUMN',@level2name=N'SHSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'节项状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_11_A04_KTSJ', @level2type=N'COLUMN',@level2name=N'JXZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'节项时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_11_A04_KTSJ', @level2type=N'COLUMN',@level2name=N'JXSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课题阶段数据表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_11_A05_KTJDSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_11_A05_KTJDSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_11_A05_KTJDSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课题ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_11_A05_KTJDSJ', @level2type=N'COLUMN',@level2name=N'KTID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'阶段名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_11_A05_KTJDSJ', @level2type=N'COLUMN',@level2name=N'JDMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'阶段工作内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_11_A05_KTJDSJ', @level2type=N'COLUMN',@level2name=N'JDGZNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上传时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_11_A05_KTJDSJ', @level2type=N'COLUMN',@level2name=N'SCSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'听课小组' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_35_A01_TKXZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_35_A01_TKXZ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_35_A01_TKXZ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'小组名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_35_A01_TKXZ', @level2type=N'COLUMN',@level2name=N'XZMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'小组成员' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_35_A01_TKXZ', @level2type=N'COLUMN',@level2name=N'XZCY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'小组成员名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_35_A01_TKXZ', @level2type=N'COLUMN',@level2name=N'XZCYMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公开课申请' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_35_A02_GKKSQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_35_A02_GKKSQ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_35_A02_GKKSQ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_35_A02_GKKSQ', @level2type=N'COLUMN',@level2name=N'KCMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上课时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_35_A02_GKKSQ', @level2type=N'COLUMN',@level2name=N'SKSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上课地点' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_35_A02_GKKSQ', @level2type=N'COLUMN',@level2name=N'SKDD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程简介' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_35_A02_GKKSQ', @level2type=N'COLUMN',@level2name=N'KCJJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'听课小组ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_35_A02_GKKSQ', @level2type=N'COLUMN',@level2name=N'TKXZID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_35_A02_GKKSQ', @level2type=N'COLUMN',@level2name=N'SHZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否公示' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_35_A02_GKKSQ', @level2type=N'COLUMN',@level2name=N'SFGS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_35_A02_GKKSQ', @level2type=N'COLUMN',@level2name=N'SQRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_35_A02_GKKSQ', @level2type=N'COLUMN',@level2name=N'SHRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教师请假类型表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_36_A01_JSQJLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_36_A01_JSQJLX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_36_A01_JSQJLX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_36_A01_JSQJLX', @level2type=N'COLUMN',@level2name=N'LXMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_36_A01_JSQJLX', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否出差' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_36_A01_JSQJLX', @level2type=N'COLUMN',@level2name=N'SFCC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'代课类型表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_36_A02_DKLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_36_A02_DKLX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_36_A02_DKLX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_36_A02_DKLX', @level2type=N'COLUMN',@level2name=N'LXMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_36_A02_DKLX', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教师请假信息表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_36_A03_JSQJXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_36_A03_JSQJXX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_36_A03_JSQJXX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'请假教师ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_36_A03_JSQJXX', @level2type=N'COLUMN',@level2name=N'QJJSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教师请假类型ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_36_A03_JSQJXX', @level2type=N'COLUMN',@level2name=N'JSQJLXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'请假开始时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_36_A03_JSQJXX', @level2type=N'COLUMN',@level2name=N'QJKSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'请假结束时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_36_A03_JSQJXX', @level2type=N'COLUMN',@level2name=N'QJJSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'处理状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_36_A03_JSQJXX', @level2type=N'COLUMN',@level2name=N'CLZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程处理方式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_36_A03_JSQJXX', @level2type=N'COLUMN',@level2name=N'KCCLFS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'请假原因' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_36_A03_JSQJXX', @level2type=N'COLUMN',@level2name=N'QJYY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_36_A03_JSQJXX', @level2type=N'COLUMN',@level2name=N'SQSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_36_A03_JSQJXX', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_36_A03_JSQJXX', @level2type=N'COLUMN',@level2name=N'SHRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'需排课列表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_36_A04_XPKLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_36_A04_XPKLB', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_36_A04_XPKLB', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教师请假信息表ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_36_A04_XPKLB', @level2type=N'COLUMN',@level2name=N'JSQJXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排课结果记录表ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_36_A04_XPKLB', @level2type=N'COLUMN',@level2name=N'PKJGJLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_36_A04_XPKLB', @level2type=N'COLUMN',@level2name=N'RQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'处理状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_36_A04_XPKLB', @level2type=N'COLUMN',@level2name=N'CLZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'需排课教师ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_36_A04_XPKLB', @level2type=N'COLUMN',@level2name=N'XPKJSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'推荐教师ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_36_A04_XPKLB', @level2type=N'COLUMN',@level2name=N'TJJSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'代课教师ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_36_A04_XPKLB', @level2type=N'COLUMN',@level2name=N'DKJSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'代课类型ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_36_A04_XPKLB', @level2type=N'COLUMN',@level2name=N'DKLXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排课时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_36_A04_XPKLB', @level2type=N'COLUMN',@level2name=N'PKSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'确认时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_36_A04_XPKLB', @level2type=N'COLUMN',@level2name=N'QRSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排课人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_36_A04_XPKLB', @level2type=N'COLUMN',@level2name=N'PKRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'选修课程类别表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_50_A01_XXKCLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_50_A01_XXKCLB', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_50_A01_XXKCLB', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类别名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_50_A01_XXKCLB', @level2type=N'COLUMN',@level2name=N'LBMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'简介' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_50_A01_XXKCLB', @level2type=N'COLUMN',@level2name=N'JJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开课时间表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_50_A02_KKSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_50_A02_KKSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_50_A02_KKSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上课时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_50_A02_KKSJ', @level2type=N'COLUMN',@level2name=N'SKSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'时段ID列表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_50_A02_KKSJ', @level2type=N'COLUMN',@level2name=N'SDIDLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'时段名称列表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_50_A02_KKSJ', @level2type=N'COLUMN',@level2name=N'SDMCLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教学班数据表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_50_A03_JXBSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_50_A03_JXBSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_50_A03_JXBSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'选修课程类别ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_50_A03_JXBSJ', @level2type=N'COLUMN',@level2name=N'XXKCLBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_50_A03_JXBSJ', @level2type=N'COLUMN',@level2name=N'KCMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程介绍' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_50_A03_JXBSJ', @level2type=N'COLUMN',@level2name=N'KCJS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教学计划' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_50_A03_JXBSJ', @level2type=N'COLUMN',@level2name=N'JXJH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'总课时' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_50_A03_JXBSJ', @level2type=N'COLUMN',@level2name=N'ZKS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学分' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_50_A03_JXBSJ', @level2type=N'COLUMN',@level2name=N'XF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学期ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_50_A03_JXBSJ', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'年级ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_50_A03_JXBSJ', @level2type=N'COLUMN',@level2name=N'NJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'当前状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_50_A03_JXBSJ', @level2type=N'COLUMN',@level2name=N'DQZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开课教师ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_50_A03_JXBSJ', @level2type=N'COLUMN',@level2name=N'KKJSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上课时间ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_50_A03_JXBSJ', @level2type=N'COLUMN',@level2name=N'SKSJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上课地点' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_50_A03_JXBSJ', @level2type=N'COLUMN',@level2name=N'SKDD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'班级可容纳人数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_50_A03_JXBSJ', @level2type=N'COLUMN',@level2name=N'BJKRNRS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最低开班人数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_50_A03_JXBSJ', @level2type=N'COLUMN',@level2name=N'ZDKBRS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生选课记录表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_50_A04_XSXKJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_50_A04_XSXKJL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_50_A04_XSXKJL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_50_A04_XSXKJL', @level2type=N'COLUMN',@level2name=N'XSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教学班ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_50_A04_XSXKJL', @level2type=N'COLUMN',@level2name=N'JXBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生选修课成绩表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_50_A05_XSXXKCJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_50_A05_XSXXKCJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_50_A05_XSXXKCJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_50_A05_XSXXKCJ', @level2type=N'COLUMN',@level2name=N'XSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教学班ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_50_A05_XSXXKCJ', @level2type=N'COLUMN',@level2name=N'JXBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'成绩' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_50_A05_XSXXKCJ', @level2type=N'COLUMN',@level2name=N'CJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课堂点名表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_50_A06_KTDMB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_50_A06_KTDMB', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_50_A06_KTDMB', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教学班ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_50_A06_KTDMB', @level2type=N'COLUMN',@level2name=N'JXBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_50_A06_KTDMB', @level2type=N'COLUMN',@level2name=N'XSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_50_A06_KTDMB', @level2type=N'COLUMN',@level2name=N'ZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_50_A06_KTDMB', @level2type=N'COLUMN',@level2name=N'SJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_50_A06_KTDMB', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'考试时间表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_52_A01_KSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_52_A01_KSSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_52_A01_KSSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'考试ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_52_A01_KSSJ', @level2type=N'COLUMN',@level2name=N'KSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'考试日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_52_A01_KSSJ', @level2type=N'COLUMN',@level2name=N'KSRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'考试时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_52_A01_KSSJ', @level2type=N'COLUMN',@level2name=N'KSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_52_A01_KSSJ', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'场次名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_52_A01_KSSJ', @level2type=N'COLUMN',@level2name=N'CCMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'考试时间安排表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_52_A02_KSSJAP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_52_A02_KSSJAP', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_52_A02_KSSJAP', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'考试ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_52_A02_KSSJAP', @level2type=N'COLUMN',@level2name=N'KSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'考试时间ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_52_A02_KSSJAP', @level2type=N'COLUMN',@level2name=N'KSSJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_52_A02_KSSJAP', @level2type=N'COLUMN',@level2name=N'KCID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'考试地点表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_52_A03_KSDD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_52_A03_KSDD', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_52_A03_KSDD', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'考场名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_52_A03_KSDD', @level2type=N'COLUMN',@level2name=N'KCMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最大容纳人数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_52_A03_KSDD', @level2type=N'COLUMN',@level2name=N'ZDRNRS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'地点' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_52_A03_KSDD', @level2type=N'COLUMN',@level2name=N'DD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'纵列人数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_52_A03_KSDD', @level2type=N'COLUMN',@level2name=N'ZLRS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'参考学生表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_52_A04_CKXS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_52_A04_CKXS', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_52_A04_CKXS', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'考试ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_52_A04_CKXS', @level2type=N'COLUMN',@level2name=N'KSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_52_A04_CKXS', @level2type=N'COLUMN',@level2name=N'XSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'考场ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_52_A04_CKXS', @level2type=N'COLUMN',@level2name=N'KCID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'准考证号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_52_A04_CKXS', @level2type=N'COLUMN',@level2name=N'ZKZH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'座位号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_52_A04_CKXS', @level2type=N'COLUMN',@level2name=N'ZWH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'监考安排表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_52_A05_JKAP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_52_A05_JKAP', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_52_A05_JKAP', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'考试ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_52_A05_JKAP', @level2type=N'COLUMN',@level2name=N'KSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'场次ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_52_A05_JKAP', @level2type=N'COLUMN',@level2name=N'CCID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教工ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_52_A05_JKAP', @level2type=N'COLUMN',@level2name=N'JGID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'考场ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_52_A05_JKAP', @level2type=N'COLUMN',@level2name=N'KCID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学分制课程表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A01_XFZKC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A01_XFZKC', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A01_XFZKC', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A01_XFZKC', @level2type=N'COLUMN',@level2name=N'KCH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程类别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A01_XFZKC', @level2type=N'COLUMN',@level2name=N'KCLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属科目' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A01_XFZKC', @level2type=N'COLUMN',@level2name=N'SSKM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A01_XFZKC', @level2type=N'COLUMN',@level2name=N'KCMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否使用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A01_XFZKC', @level2type=N'COLUMN',@level2name=N'SFSY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排列顺序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A01_XFZKC', @level2type=N'COLUMN',@level2name=N'PLSX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学分制开课时间表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A02_XFZKKSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A02_XFZKKSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A02_XFZKKSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'时间名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A02_XFZKKSJ', @level2type=N'COLUMN',@level2name=N'SJMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'时段ID列表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A02_XFZKKSJ', @level2type=N'COLUMN',@level2name=N'SDIDLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'时段名称列表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A02_XFZKKSJ', @level2type=N'COLUMN',@level2name=N'SDMCLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学分制学期教学计划表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A11_XFZXQJXJH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A11_XFZXQJXJH', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A11_XFZXQJXJH', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学期ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A11_XFZXQJXJH', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'年级ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A11_XFZXQJXJH', @level2type=N'COLUMN',@level2name=N'NJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'班级类别ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A11_XFZXQJXJH', @level2type=N'COLUMN',@level2name=N'BJLBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'班级ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A11_XFZXQJXJH', @level2type=N'COLUMN',@level2name=N'BJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A11_XFZXQJXJH', @level2type=N'COLUMN',@level2name=N'KCLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学分制必修课程清单表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A12_XFZBXKCQD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A12_XFZBXKCQD', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A12_XFZBXKCQD', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教学计划ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A12_XFZBXKCQD', @level2type=N'COLUMN',@level2name=N'JXJHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A12_XFZBXKCQD', @level2type=N'COLUMN',@level2name=N'KCID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学分' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A12_XFZBXKCQD', @level2type=N'COLUMN',@level2name=N'XF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学分制限选课程清单表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A13_XFZXXKCQD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A13_XFZXXKCQD', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A13_XFZXXKCQD', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教学计划ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A13_XFZXXKCQD', @level2type=N'COLUMN',@level2name=N'JXJHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程ID列表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A13_XFZXXKCQD', @level2type=N'COLUMN',@level2name=N'KCIDLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程名称列表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A13_XFZXXKCQD', @level2type=N'COLUMN',@level2name=N'KCMCLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'限选数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A13_XFZXXKCQD', @level2type=N'COLUMN',@level2name=N'XXMS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学分' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A13_XFZXXKCQD', @level2type=N'COLUMN',@level2name=N'XF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学分制选课表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A20_XFZXK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A20_XFZXK', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A20_XFZXK', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学期ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A20_XFZXK', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'选课名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A20_XFZXK', @level2type=N'COLUMN',@level2name=N'XKMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'选课开始时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A20_XFZXK', @level2type=N'COLUMN',@level2name=N'XKKSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'选课结束时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A20_XFZXK', @level2type=N'COLUMN',@level2name=N'XKJSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否允许所有学生二次选课' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A20_XFZXK', @level2type=N'COLUMN',@level2name=N'SFYXSYXSECXK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'二次选课开始时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A20_XFZXK', @level2type=N'COLUMN',@level2name=N'ECXKKSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'二次选课结束时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A20_XFZXK', @level2type=N'COLUMN',@level2name=N'ECXKJSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'选课方法与流程' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A20_XFZXK', @level2type=N'COLUMN',@level2name=N'XKFFYLC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'可选课程类型ID列表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A20_XFZXK', @level2type=N'COLUMN',@level2name=N'KXKCLXIDLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'可选课程类型名称列表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A20_XFZXK', @level2type=N'COLUMN',@level2name=N'KXKCLXMCLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'选课班级ID列表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A20_XFZXK', @level2type=N'COLUMN',@level2name=N'XKBJIDLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生最多选课门数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A20_XFZXK', @level2type=N'COLUMN',@level2name=N'XSZDXKMS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学分制教学班数据表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A21_XFZJXBSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A21_XFZJXBSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A21_XFZJXBSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学期ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A21_XFZJXBSJ', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主任课教师ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A21_XFZJXBSJ', @level2type=N'COLUMN',@level2name=N'ZRKJSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'辅任课教师ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A21_XFZJXBSJ', @level2type=N'COLUMN',@level2name=N'FRKJSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A21_XFZJXBSJ', @level2type=N'COLUMN',@level2name=N'KCID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开课时间ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A21_XFZJXBSJ', @level2type=N'COLUMN',@level2name=N'KKSJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上课地点' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A21_XFZJXBSJ', @level2type=N'COLUMN',@level2name=N'SKDD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'总课时' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A21_XFZJXBSJ', @level2type=N'COLUMN',@level2name=N'ZKS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'班级可容纳人数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A21_XFZJXBSJ', @level2type=N'COLUMN',@level2name=N'BJKRNRS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最低开班人数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A21_XFZJXBSJ', @level2type=N'COLUMN',@level2name=N'ZDKBRS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A21_XFZJXBSJ', @level2type=N'COLUMN',@level2name=N'ZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A21_XFZJXBSJ', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A21_XFZJXBSJ', @level2type=N'COLUMN',@level2name=N'KCMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'授课班级ID列表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A21_XFZJXBSJ', @level2type=N'COLUMN',@level2name=N'SKBJIDLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'授课班级名称列表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A21_XFZJXBSJ', @level2type=N'COLUMN',@level2name=N'SKBJMCLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教学班类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A21_XFZJXBSJ', @level2type=N'COLUMN',@level2name=N'JXBLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生学分制选课记录表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A22_XSXFZXKJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A22_XSXFZXKJL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A22_XSXFZXKJL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A22_XSXFZXKJL', @level2type=N'COLUMN',@level2name=N'XSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学分制教学班ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A22_XSXFZXKJL', @level2type=N'COLUMN',@level2name=N'XFZJXBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学分制二次选课学生表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A23_XFZECXKXS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A23_XFZECXKXS', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A23_XFZECXKXS', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'选课ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A23_XFZECXKXS', @level2type=N'COLUMN',@level2name=N'XKID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A23_XFZECXKXS', @level2type=N'COLUMN',@level2name=N'XSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学分制课堂内容表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A24_XFZKTNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A24_XFZKTNR', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A24_XFZKTNR', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学分制教学班ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A24_XFZKTNR', @level2type=N'COLUMN',@level2name=N'XFZJXBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课堂内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A24_XFZKTNR', @level2type=N'COLUMN',@level2name=N'KTNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A24_XFZKTNR', @level2type=N'COLUMN',@level2name=N'TJSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学分制课堂记录项目表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A25_XFZKTJLXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A25_XFZKTJLXM', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A25_XFZKTJLXM', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'项目名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A25_XFZKTJLXM', @level2type=N'COLUMN',@level2name=N'XMMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'输入类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A25_XFZKTJLXM', @level2type=N'COLUMN',@level2name=N'SRLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'默认值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A25_XFZKTJLXM', @level2type=N'COLUMN',@level2name=N'MRZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排列顺序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A25_XFZKTJLXM', @level2type=N'COLUMN',@level2name=N'PLSX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学分制课堂记录结果表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A26_XFZKTJLJG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A26_XFZKTJLJG', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A26_XFZKTJLJG', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课堂内容ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A26_XFZKTJLJG', @level2type=N'COLUMN',@level2name=N'KTNRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A26_XFZKTJLJG', @level2type=N'COLUMN',@level2name=N'XSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'项目ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A26_XFZKTJLJG', @level2type=N'COLUMN',@level2name=N'XMID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'结果' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A26_XFZKTJLJG', @level2type=N'COLUMN',@level2name=N'JG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学分制作业内容表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A27_XFZZYNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A27_XFZZYNR', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A27_XFZZYNR', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学分制教学班ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A27_XFZZYNR', @level2type=N'COLUMN',@level2name=N'XFZJXBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'作业内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A27_XFZZYNR', @level2type=N'COLUMN',@level2name=N'ZYNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A27_XFZZYNR', @level2type=N'COLUMN',@level2name=N'TJSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学分制作业记录项目表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A28_XFZZYJLXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A28_XFZZYJLXM', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A28_XFZZYJLXM', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'项目名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A28_XFZZYJLXM', @level2type=N'COLUMN',@level2name=N'XMMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'输入类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A28_XFZZYJLXM', @level2type=N'COLUMN',@level2name=N'SRLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'默认值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A28_XFZZYJLXM', @level2type=N'COLUMN',@level2name=N'MRZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排列顺序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A28_XFZZYJLXM', @level2type=N'COLUMN',@level2name=N'PLSX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学分制作业记录结果表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A29_XFZZYJLJG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A29_XFZZYJLJG', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A29_XFZZYJLJG', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'作业内容ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A29_XFZZYJLJG', @level2type=N'COLUMN',@level2name=N'ZYNRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A29_XFZZYJLJG', @level2type=N'COLUMN',@level2name=N'XSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'项目ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A29_XFZZYJLJG', @level2type=N'COLUMN',@level2name=N'XMID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'结果' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A29_XFZZYJLJG', @level2type=N'COLUMN',@level2name=N'JG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学分制单元测试表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A41_XFZDYCS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A41_XFZDYCS', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A41_XFZDYCS', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学分制教学班ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A41_XFZDYCS', @level2type=N'COLUMN',@level2name=N'XFZJXBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'测试名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A41_XFZDYCS', @level2type=N'COLUMN',@level2name=N'CSMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A41_XFZDYCS', @level2type=N'COLUMN',@level2name=N'TJSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学分制单元测试成绩表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A42_XFZDYCSCJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A42_XFZDYCSCJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A42_XFZDYCSCJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单元测试ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A42_XFZDYCSCJ', @level2type=N'COLUMN',@level2name=N'DYCSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A42_XFZDYCSCJ', @level2type=N'COLUMN',@level2name=N'XSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'成绩' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A42_XFZDYCSCJ', @level2type=N'COLUMN',@level2name=N'CJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'必修课学校统考成绩表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A46_BXKXXTKCJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A46_BXKXXTKCJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A46_BXKXXTKCJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学分制教学班ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A46_BXKXXTKCJ', @level2type=N'COLUMN',@level2name=N'XFZJXBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A46_BXKXXTKCJ', @level2type=N'COLUMN',@level2name=N'XSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'统考类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A46_BXKXXTKCJ', @level2type=N'COLUMN',@level2name=N'TKLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'成绩' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A46_BXKXXTKCJ', @level2type=N'COLUMN',@level2name=N'CJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学分制开课管理表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A51_XFZKKGL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A51_XFZKKGL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A51_XFZKKGL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A51_XFZKKGL', @level2type=N'COLUMN',@level2name=N'KCMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开课人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A51_XFZKKGL', @level2type=N'COLUMN',@level2name=N'KKR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A51_XFZKKGL', @level2type=N'COLUMN',@level2name=N'KCNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'获奖情况' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A51_XFZKKGL', @level2type=N'COLUMN',@level2name=N'HJQK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'手册内容模板表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_54_A01_SCNRMB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_54_A01_SCNRMB', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_54_A01_SCNRMB', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_54_A01_SCNRMB', @level2type=N'COLUMN',@level2name=N'MC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_54_A01_SCNRMB', @level2type=N'COLUMN',@level2name=N'NR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'手册项目表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_54_A02_SCXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_54_A02_SCXM', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_54_A02_SCXM', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'项目名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_54_A02_SCXM', @level2type=N'COLUMN',@level2name=N'XMMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否区分学期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_54_A02_SCXM', @level2type=N'COLUMN',@level2name=N'SFQFXQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排列顺序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_54_A02_SCXM', @level2type=N'COLUMN',@level2name=N'PLSX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'手册内容模板ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_54_A02_SCXM', @level2type=N'COLUMN',@level2name=N'SCNRMBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'手册内容表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_54_A03_SCNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_54_A03_SCNR', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_54_A03_SCNR', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'班级ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_54_A03_SCNR', @level2type=N'COLUMN',@level2name=N'BJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'项目ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_54_A03_SCNR', @level2type=N'COLUMN',@level2name=N'XMID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学年ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_54_A03_SCNR', @level2type=N'COLUMN',@level2name=N'XNID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学期ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_54_A03_SCNR', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_54_A03_SCNR', @level2type=N'COLUMN',@level2name=N'NR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生思想品德表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_54_A04_XSSXPD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_54_A04_XSSXPD', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_54_A04_XSSXPD', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'班级ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_54_A04_XSSXPD', @level2type=N'COLUMN',@level2name=N'BJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_54_A04_XSSXPD', @level2type=N'COLUMN',@level2name=N'XSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学年ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_54_A04_XSSXPD', @level2type=N'COLUMN',@level2name=N'XNID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_54_A04_XSSXPD', @level2type=N'COLUMN',@level2name=N'NR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生晨检信息表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_54_A05_XSCJXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_54_A05_XSCJXX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_54_A05_XSCJXX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学期ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_54_A05_XSCJXX', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_54_A05_XSCJXX', @level2type=N'COLUMN',@level2name=N'XSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_54_A05_XSCJXX', @level2type=N'COLUMN',@level2name=N'RQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发热' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_54_A05_XSCJXX', @level2type=N'COLUMN',@level2name=N'FR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'咳嗽' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_54_A05_XSCJXX', @level2type=N'COLUMN',@level2name=N'KS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'皮疹' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_54_A05_XSCJXX', @level2type=N'COLUMN',@level2name=N'PZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'腹泻' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_54_A05_XSCJXX', @level2type=N'COLUMN',@level2name=N'FX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'呕吐' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_54_A05_XSCJXX', @level2type=N'COLUMN',@level2name=N'OT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'黄疸' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_54_A05_XSCJXX', @level2type=N'COLUMN',@level2name=N'HD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'结膜充血' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_54_A05_XSCJXX', @level2type=N'COLUMN',@level2name=N'JMCX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'其它' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_54_A05_XSCJXX', @level2type=N'COLUMN',@level2name=N'QT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否就诊' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_54_A05_XSCJXX', @level2type=N'COLUMN',@level2name=N'SFJZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'疾病名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_54_A05_XSCJXX', @level2type=N'COLUMN',@level2name=N'JBMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'留观' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_54_A05_XSCJXX', @level2type=N'COLUMN',@level2name=N'LG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'回家' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_54_A05_XSCJXX', @level2type=N'COLUMN',@level2name=N'HJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'离校时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_54_A05_XSCJXX', @level2type=N'COLUMN',@level2name=N'LXSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'复学时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_54_A05_XSCJXX', @level2type=N'COLUMN',@level2name=N'FXSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'缺课天数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_54_A05_XSCJXX', @level2type=N'COLUMN',@level2name=N'QKTS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_54_A05_XSCJXX', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收费项目表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_55_A01_SFXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_55_A01_SFXM', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_55_A01_SFXM', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学期ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_55_A01_SFXM', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'费用名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_55_A01_SFXM', @level2type=N'COLUMN',@level2name=N'FYMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'应收金额' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_55_A01_SFXM', @level2type=N'COLUMN',@level2name=N'YSJE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排列顺序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_55_A01_SFXM', @level2type=N'COLUMN',@level2name=N'PLSX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_55_A01_SFXM', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收费结果表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_55_A02_SFJG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_55_A02_SFJG', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_55_A02_SFJG', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收费项目ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_55_A02_SFJG', @level2type=N'COLUMN',@level2name=N'SFXMID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_55_A02_SFJG', @level2type=N'COLUMN',@level2name=N'XSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实缴金额' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_55_A02_SFJG', @level2type=N'COLUMN',@level2name=N'SJJE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'缴费状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_55_A02_SFJG', @level2type=N'COLUMN',@level2name=N'JFZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生收费项目备注表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_55_A03_XSSFXMBZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_55_A03_XSSFXMBZ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_55_A03_XSSFXMBZ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_55_A03_XSSFXMBZ', @level2type=N'COLUMN',@level2name=N'XSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学期ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_55_A03_XSSFXMBZ', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_55_A03_XSSFXMBZ', @level2type=N'COLUMN',@level2name=N'BZ'
GO
