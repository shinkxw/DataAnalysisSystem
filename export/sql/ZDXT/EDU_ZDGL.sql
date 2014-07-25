--空间名：EDU_ZDGL  生成器：SqlBuilder0.1

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZDGL_01_SBLX')
            and   type = 'U')
   drop table EDU_ZDGL_01_SBLX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZDGL_02_SCCJ')
            and   type = 'U')
   drop table EDU_ZDGL_02_SCCJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZDGL_03_SBXH')
            and   type = 'U')
   drop table EDU_ZDGL_03_SBXH
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZDGL_04_SXDW')
            and   type = 'U')
   drop table EDU_ZDGL_04_SXDW
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZDGL_05_BXHT')
            and   type = 'U')
   drop table EDU_ZDGL_05_BXHT
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZDGL_06_BM')
            and   type = 'U')
   drop table EDU_ZDGL_06_BM
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZDGL_07_BXSB')
            and   type = 'U')
   drop table EDU_ZDGL_07_BXSB
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZDGL_08_SXDXX')
            and   type = 'U')
   drop table EDU_ZDGL_08_SXDXX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZDGL_09_SXSB')
            and   type = 'U')
   drop table EDU_ZDGL_09_SXSB
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZDGL_10_FXDXX')
            and   type = 'U')
   drop table EDU_ZDGL_10_FXDXX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZDGL_11_FXSB')
            and   type = 'U')
   drop table EDU_ZDGL_11_FXSB
go
--设备类型配置表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZDGL_01_SBLX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZDGL_01_SBLX](
	[ID]  int  NOT NULL,--编号
	[LXMC]  nvarchar(50)  NOT NULL,--类型名称
	[ZT]  int  NOT NULL,--状态
CONSTRAINT [PK_EDU_ZDGL_01_SBLX] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--生产厂家信息表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZDGL_02_SCCJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZDGL_02_SCCJ](
	[ID]  int  NOT NULL,--编号
	[CJMC]  nvarchar(50)  NOT NULL,--厂家名称
	[ZT]  int  NOT NULL,--状态
CONSTRAINT [PK_EDU_ZDGL_02_SCCJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--设备型号配置表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZDGL_03_SBXH]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZDGL_03_SBXH](
	[ID]  int  NOT NULL,--编号
	[SBLXID]  int  NOT NULL,--设备类型ID
	[SCCJID]  int  NOT NULL,--生产厂家ID
	[XHMC]  nvarchar(50)  NOT NULL,--型号名称
	[WLMS]  nvarchar(500)  NOT NULL,--物料描述
	[XHMCPY]  nvarchar(500)  NOT NULL,--型号名称拼音
CONSTRAINT [PK_EDU_ZDGL_03_SBXH] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--送修单位信息表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZDGL_04_SXDW]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZDGL_04_SXDW](
	[ID]  int  NOT NULL,--编号
	[QHM]  nvarchar(6)  NOT NULL,--区划码
	[DWMC]  nvarchar(50)  NOT NULL,--单位名称
	[DWMCPY]  nvarchar(500)  NOT NULL,--单位名称拼音
CONSTRAINT [PK_EDU_ZDGL_04_SXDW] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--保修合同表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZDGL_05_BXHT]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZDGL_05_BXHT](
	[ID]  int  NOT NULL,--编号
	[HTMC]  nvarchar(50)  NOT NULL,--合同名称
	[WXSX]  int  NOT NULL,--维修时限
CONSTRAINT [PK_EDU_ZDGL_05_BXHT] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--部门信息表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZDGL_06_BM]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZDGL_06_BM](
	[ID]  int  NOT NULL,--编号
	[BMMC]  nvarchar(20)  NOT NULL,--部门名称
	[SXDWLB]  text  NOT NULL,--送修单位列表
	[SXDWMCLB]  text  NOT NULL,--送修单位名称列表
CONSTRAINT [PK_EDU_ZDGL_06_BM] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--报修设备表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZDGL_07_BXSB]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZDGL_07_BXSB](
	[ID]  int  NOT NULL,--编号
	[SBXHID]  int  NOT NULL,--设备型号ID
	[SXDWID]  int  NOT NULL,--送修单位ID
	[SXDWMC]  nvarchar(50)  NOT NULL,--送修单位名称
	[SNM]  nvarchar(100)  NOT NULL,--S/N码
	[SCRQ]  datetime  NOT NULL,--生产日期
	[SBLXMC]  nvarchar(50)  NOT NULL,--设备类型名称
	[SCCJMC]  nvarchar(50)  NOT NULL,--生产厂家名称
	[SBXHMC]  nvarchar(50)  NOT NULL,--设备型号名称
	[BXZT]  int  NOT NULL,--保修状态
	[BXHTID]  int  NOT NULL,--保修合同ID
	[SBZT]  int  NOT NULL,--设备状态
	[WXZT]  int  NOT NULL,--维修状态
	[RKSJ]  datetime  NOT NULL,--入库时间
	[RKCZYHID]  nvarchar(20)  NOT NULL,--入库操作用户
	[FXM]  nvarchar(100)  NOT NULL,--返修码
	[FXSJ]  datetime  NOT NULL,--返修时间
	[FXDJYHID]  nvarchar(20)  NOT NULL,--返修登记用户
CONSTRAINT [PK_EDU_ZDGL_07_BXSB] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--送修单信息表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZDGL_08_SXDXX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZDGL_08_SXDXX](
	[ID]  int  NOT NULL,--编号
	[SXDH]  nvarchar(50)  NOT NULL,--送修单号
	[CJYHID]  nvarchar(20)  NOT NULL,--创建用户
	[CJSJ]  datetime  NOT NULL,--创建时间
	[SXSJ]  datetime  NOT NULL,--送修时间
	[QRSJ]  datetime  NOT NULL,--确认时间
	[ZT]  int  NOT NULL,--状态
CONSTRAINT [PK_EDU_ZDGL_08_SXDXX] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--送修设备表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZDGL_09_SXSB]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZDGL_09_SXSB](
	[ID]  int  identity,--编号
	[SXDID]  int  NOT NULL,--送修单ID
	[BXSBID]  int  NOT NULL,--报修设备ID
CONSTRAINT [PK_EDU_ZDGL_09_SXSB] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--返修单信息表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZDGL_10_FXDXX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZDGL_10_FXDXX](
	[ID]  int  NOT NULL,--编号
	[FXDH]  nvarchar(50)  NOT NULL,--返修单号
	[CJYHID]  nvarchar(20)  NOT NULL,--创建用户
	[CJSJ]  datetime  NOT NULL,--创建时间
	[FXSJ]  datetime  NOT NULL,--返修时间
	[QRSJ]  datetime  NOT NULL,--确认时间
	[ZT]  int  NOT NULL,--状态
CONSTRAINT [PK_EDU_ZDGL_10_FXDXX] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--返修设备表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZDGL_11_FXSB]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZDGL_11_FXSB](
	[ID]  int  identity,--编号
	[FXDID]  int  NOT NULL,--返修单ID
	[BXSBID]  int  NOT NULL,--报修设备ID
CONSTRAINT [PK_EDU_ZDGL_11_FXSB] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--以下为添加注释语句
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'设备类型配置表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_01_SBLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_01_SBLX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_01_SBLX', @level2type=N'COLUMN',@level2name=N'LXMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_01_SBLX', @level2type=N'COLUMN',@level2name=N'ZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'生产厂家信息表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_02_SCCJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_02_SCCJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'厂家名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_02_SCCJ', @level2type=N'COLUMN',@level2name=N'CJMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_02_SCCJ', @level2type=N'COLUMN',@level2name=N'ZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'设备型号配置表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_03_SBXH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_03_SBXH', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'设备类型ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_03_SBXH', @level2type=N'COLUMN',@level2name=N'SBLXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'生产厂家ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_03_SBXH', @level2type=N'COLUMN',@level2name=N'SCCJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'型号名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_03_SBXH', @level2type=N'COLUMN',@level2name=N'XHMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'物料描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_03_SBXH', @level2type=N'COLUMN',@level2name=N'WLMS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'型号名称拼音' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_03_SBXH', @level2type=N'COLUMN',@level2name=N'XHMCPY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'送修单位信息表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_04_SXDW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_04_SXDW', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'区划码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_04_SXDW', @level2type=N'COLUMN',@level2name=N'QHM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单位名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_04_SXDW', @level2type=N'COLUMN',@level2name=N'DWMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单位名称拼音' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_04_SXDW', @level2type=N'COLUMN',@level2name=N'DWMCPY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'保修合同表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_05_BXHT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_05_BXHT', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'合同名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_05_BXHT', @level2type=N'COLUMN',@level2name=N'HTMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'维修时限' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_05_BXHT', @level2type=N'COLUMN',@level2name=N'WXSX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'部门信息表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_06_BM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_06_BM', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'部门名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_06_BM', @level2type=N'COLUMN',@level2name=N'BMMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'送修单位列表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_06_BM', @level2type=N'COLUMN',@level2name=N'SXDWLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'送修单位名称列表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_06_BM', @level2type=N'COLUMN',@level2name=N'SXDWMCLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'报修设备表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_07_BXSB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_07_BXSB', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'设备型号ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_07_BXSB', @level2type=N'COLUMN',@level2name=N'SBXHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'送修单位ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_07_BXSB', @level2type=N'COLUMN',@level2name=N'SXDWID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'送修单位名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_07_BXSB', @level2type=N'COLUMN',@level2name=N'SXDWMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'S/N码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_07_BXSB', @level2type=N'COLUMN',@level2name=N'SNM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'生产日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_07_BXSB', @level2type=N'COLUMN',@level2name=N'SCRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'设备类型名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_07_BXSB', @level2type=N'COLUMN',@level2name=N'SBLXMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'生产厂家名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_07_BXSB', @level2type=N'COLUMN',@level2name=N'SCCJMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'设备型号名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_07_BXSB', @level2type=N'COLUMN',@level2name=N'SBXHMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'保修状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_07_BXSB', @level2type=N'COLUMN',@level2name=N'BXZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'保修合同ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_07_BXSB', @level2type=N'COLUMN',@level2name=N'BXHTID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'设备状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_07_BXSB', @level2type=N'COLUMN',@level2name=N'SBZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'维修状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_07_BXSB', @level2type=N'COLUMN',@level2name=N'WXZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'入库时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_07_BXSB', @level2type=N'COLUMN',@level2name=N'RKSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'入库操作用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_07_BXSB', @level2type=N'COLUMN',@level2name=N'RKCZYHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'返修码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_07_BXSB', @level2type=N'COLUMN',@level2name=N'FXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'返修时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_07_BXSB', @level2type=N'COLUMN',@level2name=N'FXSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'返修登记用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_07_BXSB', @level2type=N'COLUMN',@level2name=N'FXDJYHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'送修单信息表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_08_SXDXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_08_SXDXX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'送修单号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_08_SXDXX', @level2type=N'COLUMN',@level2name=N'SXDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_08_SXDXX', @level2type=N'COLUMN',@level2name=N'CJYHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_08_SXDXX', @level2type=N'COLUMN',@level2name=N'CJSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'送修时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_08_SXDXX', @level2type=N'COLUMN',@level2name=N'SXSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'确认时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_08_SXDXX', @level2type=N'COLUMN',@level2name=N'QRSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_08_SXDXX', @level2type=N'COLUMN',@level2name=N'ZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'送修设备表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_09_SXSB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_09_SXSB', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'送修单ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_09_SXSB', @level2type=N'COLUMN',@level2name=N'SXDID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'报修设备ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_09_SXSB', @level2type=N'COLUMN',@level2name=N'BXSBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'返修单信息表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_10_FXDXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_10_FXDXX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'返修单号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_10_FXDXX', @level2type=N'COLUMN',@level2name=N'FXDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_10_FXDXX', @level2type=N'COLUMN',@level2name=N'CJYHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_10_FXDXX', @level2type=N'COLUMN',@level2name=N'CJSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'返修时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_10_FXDXX', @level2type=N'COLUMN',@level2name=N'FXSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'确认时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_10_FXDXX', @level2type=N'COLUMN',@level2name=N'QRSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_10_FXDXX', @level2type=N'COLUMN',@level2name=N'ZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'返修设备表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_11_FXSB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_11_FXSB', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'返修单ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_11_FXSB', @level2type=N'COLUMN',@level2name=N'FXDID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'报修设备ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_11_FXSB', @level2type=N'COLUMN',@level2name=N'BXSBID'
GO
