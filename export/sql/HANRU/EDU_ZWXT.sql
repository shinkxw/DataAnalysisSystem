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

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZWXT_05_A01_XCLX')
            and   type = 'U')
   drop table EDU_ZWXT_05_A01_XCLX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZWXT_05_A02_XCML')
            and   type = 'U')
   drop table EDU_ZWXT_05_A02_XCML
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZWXT_05_A03_XC')
            and   type = 'U')
   drop table EDU_ZWXT_05_A03_XC
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZWXT_05_A04_BX')
            and   type = 'U')
   drop table EDU_ZWXT_05_A04_BX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZWXT_05_A05_YJ')
            and   type = 'U')
   drop table EDU_ZWXT_05_A05_YJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZWXT_05_A06_PD')
            and   type = 'U')
   drop table EDU_ZWXT_05_A06_PD
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZWXT_05_A07_PDXD')
            and   type = 'U')
   drop table EDU_ZWXT_05_A07_PDXD
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

--校产类型表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZWXT_05_A01_XCLX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZWXT_05_A01_XCLX](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校ID
	[LXMC]  nvarchar(50)  NOT NULL,--类型名称
CONSTRAINT [PK_EDU_ZWXT_05_A01_XCLX] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--校产目录表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZWXT_05_A02_XCML]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZWXT_05_A02_XCML](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校ID
	[MLMC]  nvarchar(50)  NOT NULL,--目录名称
	[FMLID]  int  NOT NULL,--父目录ID
CONSTRAINT [PK_EDU_ZWXT_05_A02_XCML] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--校产表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZWXT_05_A03_XC]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZWXT_05_A03_XC](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校ID
	[XCLXID]  int  NOT NULL,--校产类型ID
	[XCMLID]  int  NOT NULL,--校产目录ID
	[DQBGYHID]  nvarchar(20)  NOT NULL,--当前保管用户ID
	[MC]  nvarchar(50)  NOT NULL,--名称
	[GG]  nvarchar(50)  NOT NULL,--规格
	[DJ]  nvarchar(50)  NOT NULL,--单价
	[SL]  int  NOT NULL,--数量
	[DW]  nvarchar(50)  NOT NULL,--单位
	[SCRQ]  datetime  NOT NULL,--生产日期
	[RKSJ]  datetime  NOT NULL,--入库时间
	[SCCJ]  nvarchar(200)  NOT NULL,--生产厂家
	[DQZT]  int  NOT NULL,--当前状态
	[BZ]  nvarchar(200)  NOT NULL,--备注
CONSTRAINT [PK_EDU_ZWXT_05_A03_XC] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--报修表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZWXT_05_A04_BX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZWXT_05_A04_BX](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校ID
	[XCMC]  nvarchar(50)  NOT NULL,--校产名称
	[DYXCID]  int  NOT NULL,--对应校产ID
	[BXDD]  nvarchar(200)  NOT NULL,--报修地点
	[BXYHID]  nvarchar(20)  NOT NULL,--报修用户ID
	[BXSJ]  datetime  NOT NULL,--报修时间
	[GZTP]  text  NOT NULL,--故障图片
	[GZXX]  text  NOT NULL,--故障现象
	[WXZT]  int  NOT NULL,--维修状态
	[BZ]  text  NOT NULL,--备注
CONSTRAINT [PK_EDU_ZWXT_05_A04_BX] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--移交表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZWXT_05_A05_YJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZWXT_05_A05_YJ](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校ID
	[XCID]  int  NOT NULL,--校产ID
	[SQYHID]  nvarchar(20)  NOT NULL,--申请用户ID
	[JSYHID]  nvarchar(20)  NOT NULL,--接收用户ID
	[SHYHID]  nvarchar(20)  NOT NULL,--审核用户ID
	[SQSJ]  datetime  NOT NULL,--申请时间
	[SHSJ]  datetime  NOT NULL,--审核时间
	[JSSJ]  datetime  NOT NULL,--接收时间
	[YJZT]  int  NOT NULL,--移交状态
CONSTRAINT [PK_EDU_ZWXT_05_A05_YJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--盘点表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZWXT_05_A06_PD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZWXT_05_A06_PD](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校ID
	[PDMC]  nvarchar(50)  NOT NULL,--盘点名称
	[KSSJ]  datetime  NOT NULL,--开始时间
	[JSSJ]  datetime  NOT NULL,--结束时间
	[BZ]  text  NOT NULL,--备注
CONSTRAINT [PK_EDU_ZWXT_05_A06_PD] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--盘点详单表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZWXT_05_A07_PDXD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZWXT_05_A07_PDXD](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校ID
	[PDID]  int  NOT NULL,--盘点ID
	[XCID]  int  NOT NULL,--校产ID
	[XCSL]  int  NOT NULL,--校产数量
	[PDSS]  int  NOT NULL,--盘点实数
	[BZ]  text  NOT NULL,--备注
	[BGYHID]  nvarchar(20)  NOT NULL,--保管用户ID
CONSTRAINT [PK_EDU_ZWXT_05_A07_PDXD] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
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
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'校产类型表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A01_XCLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A01_XCLX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A01_XCLX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A01_XCLX', @level2type=N'COLUMN',@level2name=N'LXMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'校产目录表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A02_XCML'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A02_XCML', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A02_XCML', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'目录名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A02_XCML', @level2type=N'COLUMN',@level2name=N'MLMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父目录ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A02_XCML', @level2type=N'COLUMN',@level2name=N'FMLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'校产表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A03_XC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A03_XC', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A03_XC', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'校产类型ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A03_XC', @level2type=N'COLUMN',@level2name=N'XCLXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'校产目录ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A03_XC', @level2type=N'COLUMN',@level2name=N'XCMLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'当前保管用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A03_XC', @level2type=N'COLUMN',@level2name=N'DQBGYHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A03_XC', @level2type=N'COLUMN',@level2name=N'MC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'规格' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A03_XC', @level2type=N'COLUMN',@level2name=N'GG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单价' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A03_XC', @level2type=N'COLUMN',@level2name=N'DJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A03_XC', @level2type=N'COLUMN',@level2name=N'SL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A03_XC', @level2type=N'COLUMN',@level2name=N'DW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'生产日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A03_XC', @level2type=N'COLUMN',@level2name=N'SCRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'入库时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A03_XC', @level2type=N'COLUMN',@level2name=N'RKSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'生产厂家' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A03_XC', @level2type=N'COLUMN',@level2name=N'SCCJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'当前状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A03_XC', @level2type=N'COLUMN',@level2name=N'DQZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A03_XC', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'报修表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A04_BX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A04_BX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A04_BX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'校产名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A04_BX', @level2type=N'COLUMN',@level2name=N'XCMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'对应校产ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A04_BX', @level2type=N'COLUMN',@level2name=N'DYXCID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'报修地点' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A04_BX', @level2type=N'COLUMN',@level2name=N'BXDD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'报修用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A04_BX', @level2type=N'COLUMN',@level2name=N'BXYHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'报修时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A04_BX', @level2type=N'COLUMN',@level2name=N'BXSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'故障图片' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A04_BX', @level2type=N'COLUMN',@level2name=N'GZTP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'故障现象' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A04_BX', @level2type=N'COLUMN',@level2name=N'GZXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'维修状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A04_BX', @level2type=N'COLUMN',@level2name=N'WXZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A04_BX', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'移交表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A05_YJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A05_YJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A05_YJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'校产ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A05_YJ', @level2type=N'COLUMN',@level2name=N'XCID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A05_YJ', @level2type=N'COLUMN',@level2name=N'SQYHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'接收用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A05_YJ', @level2type=N'COLUMN',@level2name=N'JSYHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A05_YJ', @level2type=N'COLUMN',@level2name=N'SHYHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A05_YJ', @level2type=N'COLUMN',@level2name=N'SQSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A05_YJ', @level2type=N'COLUMN',@level2name=N'SHSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'接收时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A05_YJ', @level2type=N'COLUMN',@level2name=N'JSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'移交状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A05_YJ', @level2type=N'COLUMN',@level2name=N'YJZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'盘点表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A06_PD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A06_PD', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A06_PD', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'盘点名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A06_PD', @level2type=N'COLUMN',@level2name=N'PDMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开始时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A06_PD', @level2type=N'COLUMN',@level2name=N'KSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'结束时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A06_PD', @level2type=N'COLUMN',@level2name=N'JSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A06_PD', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'盘点详单表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A07_PDXD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A07_PDXD', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A07_PDXD', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'盘点ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A07_PDXD', @level2type=N'COLUMN',@level2name=N'PDID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'校产ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A07_PDXD', @level2type=N'COLUMN',@level2name=N'XCID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'校产数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A07_PDXD', @level2type=N'COLUMN',@level2name=N'XCSL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'盘点实数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A07_PDXD', @level2type=N'COLUMN',@level2name=N'PDSS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A07_PDXD', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'保管用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A07_PDXD', @level2type=N'COLUMN',@level2name=N'BGYHID'
GO
