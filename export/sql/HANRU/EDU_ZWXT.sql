--空间名：EDU_ZWXT  生成器：SqlBuilder0.1

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZWXT_01_A01_JSDCCP')
            and   type = 'U')
   drop table EDU_ZWXT_01_A01_JSDCCP
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZWXT_01_A02_JSDCJL')
            and   type = 'U')
   drop table EDU_ZWXT_01_A02_JSDCJL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZWXT_02_A01_KDGS')
            and   type = 'U')
   drop table EDU_ZWXT_02_A01_KDGS
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZWXT_02_A02_BGQK')
            and   type = 'U')
   drop table EDU_ZWXT_02_A02_BGQK
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZWXT_03_A01_DCPZ')
            and   type = 'U')
   drop table EDU_ZWXT_03_A01_DCPZ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZWXT_03_A02_CPGL')
            and   type = 'U')
   drop table EDU_ZWXT_03_A02_CPGL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZWXT_03_A03_JSDC')
            and   type = 'U')
   drop table EDU_ZWXT_03_A03_JSDC
go
--教师订餐菜品表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZWXT_01_A01_JSDCCP]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZWXT_01_A01_JSDCCP](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[MC]  nvarchar(50)  NOT NULL,--名称
	[JG]  decimal(5, 2)  NOT NULL,--价格
	[ZL]  nvarchar(100)  NOT NULL,--主料
	[TP]  text  NULL,--图片
	[JS]  text  NOT NULL,--介绍
	[GYSL]  int  NOT NULL,--供应数量
	[SFKQ]  int  NOT NULL,--是否开启
CONSTRAINT [PK_EDU_ZWXT_01_A01_JSDCCP] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--教师订餐记录表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZWXT_01_A02_JSDCJL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZWXT_01_A02_JSDCJL](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[CPID]  int  NOT NULL,--菜品ID
	[DCSJ]  datetime  NOT NULL,--订餐时间
	[DCRID]  nvarchar(20)  NOT NULL,--订餐人ID
	[SDSL]  int  NOT NULL,--所订数量
CONSTRAINT [PK_EDU_ZWXT_01_A02_JSDCJL] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--快递公司表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZWXT_02_A01_KDGS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZWXT_02_A01_KDGS](
	[ID]  int  identity,--编号
	[SCHOOLID]  int  NOT NULL,--学校ID
	[KDGSMC]  nvarchar(50)  NOT NULL,--快递公司名称
	[LXRXM]  nvarchar(36)  NOT NULL,--联系人姓名
	[LXDH]  nvarchar(20)  NOT NULL,--联系电话
	[LXDZ]  nvarchar(300)  NOT NULL,--联系地址
	[SFSY]  nvarchar(1)  NOT NULL,--是否使用
	[PLSX]  int  NOT NULL,--排列顺序
CONSTRAINT [PK_EDU_ZWXT_02_A01_KDGS] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--包裹情况表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZWXT_02_A02_BGQK]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZWXT_02_A02_BGQK](
	[ID]  int  identity,--编号
	[SCHOOLID]  int  NOT NULL,--学校ID
	[KDGSMC]  nvarchar(50)  NOT NULL,--快递公司名称
	[KDDH]  nvarchar(50)  NOT NULL,--快递单号
	[SJRID]  nvarchar(20)  NOT NULL,--收件人ID
	[DJRID]  nvarchar(20)  NOT NULL,--登记人ID
	[DJSJ]  datetime  NOT NULL,--登记时间
	[QSZT]  int  NOT NULL,--签收状态
	[QSSJ]  datetime  NOT NULL,--签收时间
CONSTRAINT [PK_EDU_ZWXT_02_A02_BGQK] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--点菜配置表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZWXT_03_A01_DCPZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZWXT_03_A01_DCPZ](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校ID
	[NR]  text  NOT NULL,--内容
CONSTRAINT [PK_EDU_ZWXT_03_A01_DCPZ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--菜品管理表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZWXT_03_A02_CPGL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZWXT_03_A02_CPGL](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校ID
	[SJ]  datetime  NOT NULL,--时间
	[CPMC]  nvarchar(50)  NOT NULL,--菜品名称
	[CPLX]  nvarchar(50)  NOT NULL,--菜品类型
	[ZL]  nvarchar(50)  NOT NULL,--主料
	[CKJ]  nvarchar(50)  NOT NULL,--参考价
	[JS]  nvarchar(300)  NOT NULL,--介绍
CONSTRAINT [PK_EDU_ZWXT_03_A02_CPGL] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--教师点菜表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZWXT_03_A03_JSDC]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZWXT_03_A03_JSDC](
	[ID]  int  identity,--编号
	[SCHOOLID]  int  NOT NULL,--学校ID
	[DCSJ]  datetime  NOT NULL,--点菜时间
	[YHID]  nvarchar(20)  NOT NULL,--用户ID
	[CPID]  int  NOT NULL,--菜品ID
	[JG]  nvarchar(50)  NOT NULL,--价格
	[DGSL]  int  NOT NULL,--订购数量
	[ZT]  int  NOT NULL,--状态
CONSTRAINT [PK_EDU_ZWXT_03_A03_JSDC] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--以下为添加注释语句
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教师订餐菜品表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_01_A01_JSDCCP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_01_A01_JSDCCP', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_01_A01_JSDCCP', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_01_A01_JSDCCP', @level2type=N'COLUMN',@level2name=N'MC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'价格' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_01_A01_JSDCCP', @level2type=N'COLUMN',@level2name=N'JG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主料' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_01_A01_JSDCCP', @level2type=N'COLUMN',@level2name=N'ZL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图片' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_01_A01_JSDCCP', @level2type=N'COLUMN',@level2name=N'TP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'介绍' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_01_A01_JSDCCP', @level2type=N'COLUMN',@level2name=N'JS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'供应数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_01_A01_JSDCCP', @level2type=N'COLUMN',@level2name=N'GYSL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否开启' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_01_A01_JSDCCP', @level2type=N'COLUMN',@level2name=N'SFKQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教师订餐记录表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_01_A02_JSDCJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_01_A02_JSDCJL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_01_A02_JSDCJL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'菜品ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_01_A02_JSDCJL', @level2type=N'COLUMN',@level2name=N'CPID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订餐时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_01_A02_JSDCJL', @level2type=N'COLUMN',@level2name=N'DCSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订餐人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_01_A02_JSDCJL', @level2type=N'COLUMN',@level2name=N'DCRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所订数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_01_A02_JSDCJL', @level2type=N'COLUMN',@level2name=N'SDSL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'快递公司表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_02_A01_KDGS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_02_A01_KDGS', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_02_A01_KDGS', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'快递公司名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_02_A01_KDGS', @level2type=N'COLUMN',@level2name=N'KDGSMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系人姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_02_A01_KDGS', @level2type=N'COLUMN',@level2name=N'LXRXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_02_A01_KDGS', @level2type=N'COLUMN',@level2name=N'LXDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_02_A01_KDGS', @level2type=N'COLUMN',@level2name=N'LXDZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否使用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_02_A01_KDGS', @level2type=N'COLUMN',@level2name=N'SFSY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排列顺序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_02_A01_KDGS', @level2type=N'COLUMN',@level2name=N'PLSX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'包裹情况表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_02_A02_BGQK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_02_A02_BGQK', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_02_A02_BGQK', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'快递公司名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_02_A02_BGQK', @level2type=N'COLUMN',@level2name=N'KDGSMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'快递单号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_02_A02_BGQK', @level2type=N'COLUMN',@level2name=N'KDDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收件人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_02_A02_BGQK', @level2type=N'COLUMN',@level2name=N'SJRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登记人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_02_A02_BGQK', @level2type=N'COLUMN',@level2name=N'DJRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登记时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_02_A02_BGQK', @level2type=N'COLUMN',@level2name=N'DJSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'签收状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_02_A02_BGQK', @level2type=N'COLUMN',@level2name=N'QSZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'签收时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_02_A02_BGQK', @level2type=N'COLUMN',@level2name=N'QSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'点菜配置表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_03_A01_DCPZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_03_A01_DCPZ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_03_A01_DCPZ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_03_A01_DCPZ', @level2type=N'COLUMN',@level2name=N'NR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'菜品管理表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_03_A02_CPGL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_03_A02_CPGL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_03_A02_CPGL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_03_A02_CPGL', @level2type=N'COLUMN',@level2name=N'SJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'菜品名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_03_A02_CPGL', @level2type=N'COLUMN',@level2name=N'CPMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'菜品类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_03_A02_CPGL', @level2type=N'COLUMN',@level2name=N'CPLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主料' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_03_A02_CPGL', @level2type=N'COLUMN',@level2name=N'ZL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'参考价' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_03_A02_CPGL', @level2type=N'COLUMN',@level2name=N'CKJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'介绍' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_03_A02_CPGL', @level2type=N'COLUMN',@level2name=N'JS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教师点菜表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_03_A03_JSDC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_03_A03_JSDC', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_03_A03_JSDC', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'点菜时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_03_A03_JSDC', @level2type=N'COLUMN',@level2name=N'DCSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_03_A03_JSDC', @level2type=N'COLUMN',@level2name=N'YHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'菜品ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_03_A03_JSDC', @level2type=N'COLUMN',@level2name=N'CPID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'价格' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_03_A03_JSDC', @level2type=N'COLUMN',@level2name=N'JG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订购数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_03_A03_JSDC', @level2type=N'COLUMN',@level2name=N'DGSL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_03_A03_JSDC', @level2type=N'COLUMN',@level2name=N'ZT'
GO
