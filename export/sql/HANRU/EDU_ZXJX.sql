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
	[SX]  int  NOT NULL,--上限
	[XX]  int  NOT NULL,--下限
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
