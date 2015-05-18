--空间名：EDU_ZDGL  生成器：SqlBuilder0.1

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZDGL_01_GZDM')
            and   type = 'U')
   drop table EDU_ZDGL_01_GZDM
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZDGL_02_WXDM')
            and   type = 'U')
   drop table EDU_ZDGL_02_WXDM
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZDGL_03_SBXHLX')
            and   type = 'U')
   drop table EDU_ZDGL_03_SBXHLX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZDGL_04_SCCJ')
            and   type = 'U')
   drop table EDU_ZDGL_04_SCCJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZDGL_05_SBXH')
            and   type = 'U')
   drop table EDU_ZDGL_05_SBXH
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZDGL_06_XZQH')
            and   type = 'U')
   drop table EDU_ZDGL_06_XZQH
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZDGL_07_SSGS')
            and   type = 'U')
   drop table EDU_ZDGL_07_SSGS
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZDGL_08_KH')
            and   type = 'U')
   drop table EDU_ZDGL_08_KH
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZDGL_09_WXS')
            and   type = 'U')
   drop table EDU_ZDGL_09_WXS
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZDGL_10_WXR')
            and   type = 'U')
   drop table EDU_ZDGL_10_WXR
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZDGL_11_FJPC')
            and   type = 'U')
   drop table EDU_ZDGL_11_FJPC
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZDGL_12_FJXX')
            and   type = 'U')
   drop table EDU_ZDGL_12_FJXX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZDGL_13_FHPC')
            and   type = 'U')
   drop table EDU_ZDGL_13_FHPC
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZDGL_14_FHXX')
            and   type = 'U')
   drop table EDU_ZDGL_14_FHXX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZDGL_15_WLGS')
            and   type = 'U')
   drop table EDU_ZDGL_15_WLGS
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZDGL_16_JSD')
            and   type = 'U')
   drop table EDU_ZDGL_16_JSD
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZDGL_17_JSDXX')
            and   type = 'U')
   drop table EDU_ZDGL_17_JSDXX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZDGL_18_JFD')
            and   type = 'U')
   drop table EDU_ZDGL_18_JFD
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZDGL_19_JFDXX')
            and   type = 'U')
   drop table EDU_ZDGL_19_JFDXX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZDGL_20_FHD')
            and   type = 'U')
   drop table EDU_ZDGL_20_FHD
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZDGL_21_FHDXX')
            and   type = 'U')
   drop table EDU_ZDGL_21_FHDXX
go
--故障代码表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZDGL_01_GZDM]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZDGL_01_GZDM](
	[ID]  int  NOT NULL,--编号
	[GZDM]  nvarchar(200)  NOT NULL,--故障代码
	[GZXX]  nvarchar(200)  NOT NULL,--故障现象
CONSTRAINT [PK_EDU_ZDGL_01_GZDM] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--维修代码表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZDGL_02_WXDM]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZDGL_02_WXDM](
	[ID]  int  NOT NULL,--编号
	[WXDM]  nvarchar(200)  NOT NULL,--维修代码
	[WXNR]  nvarchar(500)  NOT NULL,--维修内容
	[WXJG]  nvarchar(500)  NOT NULL,--维修结果
CONSTRAINT [PK_EDU_ZDGL_02_WXDM] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--设备型号类型表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZDGL_03_SBXHLX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZDGL_03_SBXHLX](
	[ID]  int  NOT NULL,--编号
	[LXMC]  nvarchar(200)  NOT NULL,--类型名称
	[LXJC]  nvarchar(200)  NOT NULL,--类型简称
CONSTRAINT [PK_EDU_ZDGL_03_SBXHLX] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--生产厂家表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZDGL_04_SCCJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZDGL_04_SCCJ](
	[ID]  int  NOT NULL,--编号
	[CJM]  nvarchar(200)  NOT NULL,--厂家名
	[CJDZ]  nvarchar(500)  NOT NULL,--厂家地址
	[LXR]  nvarchar(200)  NOT NULL,--联系人
	[LXDH]  nvarchar(200)  NOT NULL,--联系电话
CONSTRAINT [PK_EDU_ZDGL_04_SCCJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--设备型号表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZDGL_05_SBXH]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZDGL_05_SBXH](
	[ID]  int  NOT NULL,--编号
	[XX]  nvarchar(200)  NOT NULL,--型号
	[LXID]  int  NOT NULL,--类型ID
	[SCCJID]  int  NOT NULL,--生产厂家ID
	[PY]  nvarchar(200)  NOT NULL,--拼音
	[MS]  nvarchar(200)  NOT NULL,--描述
	[JG]  float  NOT NULL,--价格
CONSTRAINT [PK_EDU_ZDGL_05_SBXH] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--行政区划表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZDGL_06_XZQH]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZDGL_06_XZQH](
	[QHM]  nvarchar(6)  NOT NULL,--区划码
	[QHMC]  nvarchar(200)  NOT NULL,--区划名称
	[QH]  nvarchar(200)  NOT NULL,--区号
CONSTRAINT [PK_EDU_ZDGL_06_XZQH] PRIMARY KEY CLUSTERED
(
	[QHM] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--所属公司表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZDGL_07_SSGS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZDGL_07_SSGS](
	[ID]  int  NOT NULL,--编号
	[GSDM]  nvarchar(200)  NOT NULL,--公司代码
	[GSM]  nvarchar(200)  NOT NULL,--公司名
CONSTRAINT [PK_EDU_ZDGL_07_SSGS] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--客户表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZDGL_08_KH]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZDGL_08_KH](
	[ID]  int  NOT NULL,--编号
	[KHDM]  nvarchar(200)  NOT NULL,--客户代码
	[SZQYID]  nvarchar(6)  NOT NULL,--所在区域ID
	[SSGSID]  int  NOT NULL,--所属公司ID
	[DWMC]  nvarchar(200)  NOT NULL,--单位名称
	[PY]  nvarchar(200)  NOT NULL,--拼音
	[KHDZ]  nvarchar(200)  NOT NULL,--客户地址
	[LXR]  nvarchar(200)  NOT NULL,--联系人
	[DH]  nvarchar(200)  NOT NULL,--电话
CONSTRAINT [PK_EDU_ZDGL_08_KH] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--维修商表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZDGL_09_WXS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZDGL_09_WXS](
	[ID]  int  NOT NULL,--编号
	[WXSDM]  nvarchar(200)  NOT NULL,--维修商代码
	[WXSMC]  nvarchar(200)  NOT NULL,--维修商名称
	[LXR]  nvarchar(200)  NOT NULL,--联系人
	[LXDM]  nvarchar(200)  NOT NULL,--联系代码
	[DZ]  nvarchar(200)  NOT NULL,--地址
CONSTRAINT [PK_EDU_ZDGL_09_WXS] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--维修人表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZDGL_10_WXR]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZDGL_10_WXR](
	[ID]  int  NOT NULL,--编号
	[GH]  nvarchar(200)  NOT NULL,--工号
	[XM]  nvarchar(200)  NOT NULL,--姓名
	[LXDH]  nvarchar(200)  NOT NULL,--联系电话
CONSTRAINT [PK_EDU_ZDGL_10_WXR] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--分拣批次表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZDGL_11_FJPC]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZDGL_11_FJPC](
	[ID]  int  NOT NULL,--编号
	[PCH]  nvarchar(200)  NOT NULL,--批次号
	[KHID]  int  NOT NULL,--客户ID
	[JSRQ]  datetime  NOT NULL,--接受日期
	[LRSJ]  datetime  NOT NULL,--录入时间
	[FJWGSJ]  datetime  NOT NULL,--分拣完工时间
	[FJFZR]  nvarchar(200)  NOT NULL,--分拣负责人
	[QRR]  nvarchar(200)  NOT NULL,--确认人
	[QRRLXDH]  nvarchar(200)  NOT NULL,--确认人联系电话
	[QRSJ]  datetime  NOT NULL,--确认时间
	[CSJG]  int  NOT NULL,--测试结果
CONSTRAINT [PK_EDU_ZDGL_11_FJPC] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--分拣详细表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZDGL_12_FJXX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZDGL_12_FJXX](
	[ID]  int  NOT NULL,--编号
	[PCID]  int  NOT NULL,--批次ID
	[XHID]  int  NOT NULL,--型号ID
	[SRSL]  int  NOT NULL,--收入数量
	[LPSL]  int  NOT NULL,--良品数量
	[GZSL]  int  NOT NULL,--故障数量
	[BFSL]  int  NOT NULL,--报废数量
	[RWSHSL]  int  NOT NULL,--人为损坏数量
	[QT]  int  NOT NULL,--其他
	[HJ]  int  NOT NULL,--合计
	[BZ]  nvarchar(500)  NOT NULL,--备注
	[JCFW]  int  NOT NULL,--基础服务
	[HK]  int  NOT NULL,--换壳
	[WX]  int  NOT NULL,--维修
	[XDY]  int  NOT NULL,--新电源
	[JDY]  int  NOT NULL,--旧电源
	[PJ]  int  NOT NULL,--配件
	[TH]  int  NOT NULL,--退回
	[QTE]  int  NOT NULL,--其他二
	[WF]  int  NOT NULL,--未返
	[FHRQ]  datetime  NOT NULL,--返回日期
CONSTRAINT [PK_EDU_ZDGL_12_FJXX] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--发货批次表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZDGL_13_FHPC]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZDGL_13_FHPC](
	[ID]  int  NOT NULL,--编号
	[FHPCH]  nvarchar(200)  NOT NULL,--发货批次号
	[FHR]  nvarchar(200)  NOT NULL,--发货人
	[WLGSID]  int  NOT NULL,--物流公司ID
	[ZXS]  int  NOT NULL,--总箱数
	[FHSJ]  datetime  NOT NULL,--发货时间
	[FJPCID]  int  NOT NULL,--分拣批次ID
CONSTRAINT [PK_EDU_ZDGL_13_FHPC] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--发货详细表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZDGL_14_FHXX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZDGL_14_FHXX](
	[ID]  int  NOT NULL,--编号
	[FHPCID]  int  NOT NULL,--发货批次ID
	[FJXXID]  int  NOT NULL,--分拣详细ID
	[JCFW]  int  NOT NULL,--基础服务
	[HK]  int  NOT NULL,--换壳
	[WX]  int  NOT NULL,--维修
	[XDY]  int  NOT NULL,--新电源
	[JDY]  int  NOT NULL,--旧电源
	[PJ]  int  NOT NULL,--配件
	[TH]  int  NOT NULL,--退回
	[QT]  int  NOT NULL,--其他
	[WF]  int  NOT NULL,--未返
	[FHRQ]  datetime  NOT NULL,--返回日期
CONSTRAINT [PK_EDU_ZDGL_14_FHXX] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--物流公司表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZDGL_15_WLGS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZDGL_15_WLGS](
	[ID]  int  NOT NULL,--编号
	[GSDM]  nvarchar(200)  NOT NULL,--公司代码
	[GSM]  nvarchar(200)  NOT NULL,--公司名
	[GSLXR]  nvarchar(200)  NOT NULL,--公司联系人
	[LXDH]  nvarchar(200)  NOT NULL,--联系电话
CONSTRAINT [PK_EDU_ZDGL_15_WLGS] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--接收单表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZDGL_16_JSD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZDGL_16_JSD](
	[ID]  int  NOT NULL,--编号
	[JSDH]  nvarchar(200)  NOT NULL,--接收单号
	[SXDWID]  int  NOT NULL,--送修单位ID
	[SXRQ]  datetime  NOT NULL,--送修日期
	[BCZT]  int  NOT NULL,--保存状态
CONSTRAINT [PK_EDU_ZDGL_16_JSD] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--接收单详细表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZDGL_17_JSDXX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZDGL_17_JSDXX](
	[ID]  int  NOT NULL,--编号
	[XHID]  int  NOT NULL,--型号ID
	[XH]  nvarchar(200)  NOT NULL,--序号
	[SN]  nvarchar(200)  NOT NULL,--SN号
	[SFECFX]  nvarchar(1)  NOT NULL,--是否二次返修
	[SXDWID]  int  NOT NULL,--送修单位ID
	[GZXXID]  int  NOT NULL,--故障信息ID
	[WXXXID]  int  NOT NULL,--维修信息ID
	[WXRID]  int  NOT NULL,--维修人ID
	[WXRQ]  datetime  NOT NULL,--维修日期
	[JSDID]  int  NOT NULL,--接收单ID
CONSTRAINT [PK_EDU_ZDGL_17_JSDXX] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--交付单表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZDGL_18_JFD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZDGL_18_JFD](
	[ID]  int  NOT NULL,--编号
	[JFDH]  nvarchar(200)  NOT NULL,--交付单号
	[WXSID]  int  NOT NULL,--维修商ID
	[JFRQ]  datetime  NOT NULL,--交付日期
CONSTRAINT [PK_EDU_ZDGL_18_JFD] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--交付单详细表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZDGL_19_JFDXX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZDGL_19_JFDXX](
	[ID]  int  NOT NULL,--编号
	[JFDID]  int  NOT NULL,--交付单ID
	[JSDXXID]  int  NOT NULL,--接收单详细ID
CONSTRAINT [PK_EDU_ZDGL_19_JFDXX] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--返回单表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZDGL_20_FHD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZDGL_20_FHD](
	[ID]  int  NOT NULL,--编号
	[FHDH]  nvarchar(200)  NOT NULL,--返回单号
	[FHRQ]  datetime  NOT NULL,--返回日期
	[FHDWID]  int  NOT NULL,--返回单位ID
CONSTRAINT [PK_EDU_ZDGL_20_FHD] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--返回单详细表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZDGL_21_FHDXX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZDGL_21_FHDXX](
	[ID]  int  NOT NULL,--编号
	[FHDID]  int  NOT NULL,--返回单ID
	[JSDXXID]  int  NOT NULL,--接收单详细ID
CONSTRAINT [PK_EDU_ZDGL_21_FHDXX] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--以下为添加注释语句
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'故障代码表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_01_GZDM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_01_GZDM', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'故障代码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_01_GZDM', @level2type=N'COLUMN',@level2name=N'GZDM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'故障现象' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_01_GZDM', @level2type=N'COLUMN',@level2name=N'GZXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'维修代码表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_02_WXDM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_02_WXDM', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'维修代码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_02_WXDM', @level2type=N'COLUMN',@level2name=N'WXDM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'维修内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_02_WXDM', @level2type=N'COLUMN',@level2name=N'WXNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'维修结果' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_02_WXDM', @level2type=N'COLUMN',@level2name=N'WXJG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'设备型号类型表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_03_SBXHLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_03_SBXHLX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_03_SBXHLX', @level2type=N'COLUMN',@level2name=N'LXMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型简称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_03_SBXHLX', @level2type=N'COLUMN',@level2name=N'LXJC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'生产厂家表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_04_SCCJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_04_SCCJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'厂家名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_04_SCCJ', @level2type=N'COLUMN',@level2name=N'CJM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'厂家地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_04_SCCJ', @level2type=N'COLUMN',@level2name=N'CJDZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_04_SCCJ', @level2type=N'COLUMN',@level2name=N'LXR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_04_SCCJ', @level2type=N'COLUMN',@level2name=N'LXDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'设备型号表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_05_SBXH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_05_SBXH', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'型号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_05_SBXH', @level2type=N'COLUMN',@level2name=N'XX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_05_SBXH', @level2type=N'COLUMN',@level2name=N'LXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'生产厂家ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_05_SBXH', @level2type=N'COLUMN',@level2name=N'SCCJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'拼音' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_05_SBXH', @level2type=N'COLUMN',@level2name=N'PY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_05_SBXH', @level2type=N'COLUMN',@level2name=N'MS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'价格' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_05_SBXH', @level2type=N'COLUMN',@level2name=N'JG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'行政区划表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_06_XZQH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'区划码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_06_XZQH', @level2type=N'COLUMN',@level2name=N'QHM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'区划名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_06_XZQH', @level2type=N'COLUMN',@level2name=N'QHMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'区号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_06_XZQH', @level2type=N'COLUMN',@level2name=N'QH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属公司表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_07_SSGS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_07_SSGS', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公司代码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_07_SSGS', @level2type=N'COLUMN',@level2name=N'GSDM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公司名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_07_SSGS', @level2type=N'COLUMN',@level2name=N'GSM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'客户表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_08_KH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_08_KH', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'客户代码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_08_KH', @level2type=N'COLUMN',@level2name=N'KHDM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所在区域ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_08_KH', @level2type=N'COLUMN',@level2name=N'SZQYID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属公司ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_08_KH', @level2type=N'COLUMN',@level2name=N'SSGSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单位名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_08_KH', @level2type=N'COLUMN',@level2name=N'DWMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'拼音' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_08_KH', @level2type=N'COLUMN',@level2name=N'PY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'客户地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_08_KH', @level2type=N'COLUMN',@level2name=N'KHDZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_08_KH', @level2type=N'COLUMN',@level2name=N'LXR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_08_KH', @level2type=N'COLUMN',@level2name=N'DH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'维修商表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_09_WXS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_09_WXS', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'维修商代码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_09_WXS', @level2type=N'COLUMN',@level2name=N'WXSDM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'维修商名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_09_WXS', @level2type=N'COLUMN',@level2name=N'WXSMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_09_WXS', @level2type=N'COLUMN',@level2name=N'LXR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系代码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_09_WXS', @level2type=N'COLUMN',@level2name=N'LXDM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_09_WXS', @level2type=N'COLUMN',@level2name=N'DZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'维修人表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_10_WXR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_10_WXR', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_10_WXR', @level2type=N'COLUMN',@level2name=N'GH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_10_WXR', @level2type=N'COLUMN',@level2name=N'XM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_10_WXR', @level2type=N'COLUMN',@level2name=N'LXDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分拣批次表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_11_FJPC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_11_FJPC', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'批次号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_11_FJPC', @level2type=N'COLUMN',@level2name=N'PCH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'客户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_11_FJPC', @level2type=N'COLUMN',@level2name=N'KHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'接受日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_11_FJPC', @level2type=N'COLUMN',@level2name=N'JSRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'录入时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_11_FJPC', @level2type=N'COLUMN',@level2name=N'LRSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分拣完工时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_11_FJPC', @level2type=N'COLUMN',@level2name=N'FJWGSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分拣负责人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_11_FJPC', @level2type=N'COLUMN',@level2name=N'FJFZR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'确认人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_11_FJPC', @level2type=N'COLUMN',@level2name=N'QRR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'确认人联系电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_11_FJPC', @level2type=N'COLUMN',@level2name=N'QRRLXDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'确认时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_11_FJPC', @level2type=N'COLUMN',@level2name=N'QRSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'测试结果' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_11_FJPC', @level2type=N'COLUMN',@level2name=N'CSJG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分拣详细表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_12_FJXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_12_FJXX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'批次ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_12_FJXX', @level2type=N'COLUMN',@level2name=N'PCID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'型号ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_12_FJXX', @level2type=N'COLUMN',@level2name=N'XHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收入数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_12_FJXX', @level2type=N'COLUMN',@level2name=N'SRSL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'良品数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_12_FJXX', @level2type=N'COLUMN',@level2name=N'LPSL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'故障数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_12_FJXX', @level2type=N'COLUMN',@level2name=N'GZSL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'报废数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_12_FJXX', @level2type=N'COLUMN',@level2name=N'BFSL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'人为损坏数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_12_FJXX', @level2type=N'COLUMN',@level2name=N'RWSHSL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'其他' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_12_FJXX', @level2type=N'COLUMN',@level2name=N'QT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'合计' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_12_FJXX', @level2type=N'COLUMN',@level2name=N'HJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_12_FJXX', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'基础服务' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_12_FJXX', @level2type=N'COLUMN',@level2name=N'JCFW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'换壳' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_12_FJXX', @level2type=N'COLUMN',@level2name=N'HK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'维修' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_12_FJXX', @level2type=N'COLUMN',@level2name=N'WX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'新电源' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_12_FJXX', @level2type=N'COLUMN',@level2name=N'XDY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'旧电源' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_12_FJXX', @level2type=N'COLUMN',@level2name=N'JDY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'配件' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_12_FJXX', @level2type=N'COLUMN',@level2name=N'PJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'退回' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_12_FJXX', @level2type=N'COLUMN',@level2name=N'TH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'其他二' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_12_FJXX', @level2type=N'COLUMN',@level2name=N'QTE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'未返' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_12_FJXX', @level2type=N'COLUMN',@level2name=N'WF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'返回日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_12_FJXX', @level2type=N'COLUMN',@level2name=N'FHRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发货批次表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_13_FHPC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_13_FHPC', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发货批次号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_13_FHPC', @level2type=N'COLUMN',@level2name=N'FHPCH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发货人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_13_FHPC', @level2type=N'COLUMN',@level2name=N'FHR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'物流公司ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_13_FHPC', @level2type=N'COLUMN',@level2name=N'WLGSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'总箱数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_13_FHPC', @level2type=N'COLUMN',@level2name=N'ZXS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发货时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_13_FHPC', @level2type=N'COLUMN',@level2name=N'FHSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分拣批次ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_13_FHPC', @level2type=N'COLUMN',@level2name=N'FJPCID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发货详细表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_14_FHXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_14_FHXX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发货批次ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_14_FHXX', @level2type=N'COLUMN',@level2name=N'FHPCID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分拣详细ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_14_FHXX', @level2type=N'COLUMN',@level2name=N'FJXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'基础服务' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_14_FHXX', @level2type=N'COLUMN',@level2name=N'JCFW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'换壳' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_14_FHXX', @level2type=N'COLUMN',@level2name=N'HK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'维修' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_14_FHXX', @level2type=N'COLUMN',@level2name=N'WX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'新电源' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_14_FHXX', @level2type=N'COLUMN',@level2name=N'XDY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'旧电源' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_14_FHXX', @level2type=N'COLUMN',@level2name=N'JDY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'配件' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_14_FHXX', @level2type=N'COLUMN',@level2name=N'PJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'退回' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_14_FHXX', @level2type=N'COLUMN',@level2name=N'TH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'其他' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_14_FHXX', @level2type=N'COLUMN',@level2name=N'QT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'未返' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_14_FHXX', @level2type=N'COLUMN',@level2name=N'WF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'返回日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_14_FHXX', @level2type=N'COLUMN',@level2name=N'FHRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'物流公司表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_15_WLGS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_15_WLGS', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公司代码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_15_WLGS', @level2type=N'COLUMN',@level2name=N'GSDM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公司名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_15_WLGS', @level2type=N'COLUMN',@level2name=N'GSM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公司联系人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_15_WLGS', @level2type=N'COLUMN',@level2name=N'GSLXR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_15_WLGS', @level2type=N'COLUMN',@level2name=N'LXDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'接收单表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_16_JSD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_16_JSD', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'接收单号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_16_JSD', @level2type=N'COLUMN',@level2name=N'JSDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'送修单位ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_16_JSD', @level2type=N'COLUMN',@level2name=N'SXDWID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'送修日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_16_JSD', @level2type=N'COLUMN',@level2name=N'SXRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'保存状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_16_JSD', @level2type=N'COLUMN',@level2name=N'BCZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'接收单详细表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_17_JSDXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_17_JSDXX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'型号ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_17_JSDXX', @level2type=N'COLUMN',@level2name=N'XHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_17_JSDXX', @level2type=N'COLUMN',@level2name=N'XH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SN号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_17_JSDXX', @level2type=N'COLUMN',@level2name=N'SN'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否二次返修' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_17_JSDXX', @level2type=N'COLUMN',@level2name=N'SFECFX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'送修单位ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_17_JSDXX', @level2type=N'COLUMN',@level2name=N'SXDWID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'故障信息ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_17_JSDXX', @level2type=N'COLUMN',@level2name=N'GZXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'维修信息ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_17_JSDXX', @level2type=N'COLUMN',@level2name=N'WXXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'维修人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_17_JSDXX', @level2type=N'COLUMN',@level2name=N'WXRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'维修日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_17_JSDXX', @level2type=N'COLUMN',@level2name=N'WXRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'接收单ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_17_JSDXX', @level2type=N'COLUMN',@level2name=N'JSDID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'交付单表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_18_JFD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_18_JFD', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'交付单号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_18_JFD', @level2type=N'COLUMN',@level2name=N'JFDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'维修商ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_18_JFD', @level2type=N'COLUMN',@level2name=N'WXSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'交付日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_18_JFD', @level2type=N'COLUMN',@level2name=N'JFRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'交付单详细表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_19_JFDXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_19_JFDXX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'交付单ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_19_JFDXX', @level2type=N'COLUMN',@level2name=N'JFDID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'接收单详细ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_19_JFDXX', @level2type=N'COLUMN',@level2name=N'JSDXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'返回单表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_20_FHD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_20_FHD', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'返回单号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_20_FHD', @level2type=N'COLUMN',@level2name=N'FHDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'返回日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_20_FHD', @level2type=N'COLUMN',@level2name=N'FHRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'返回单位ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_20_FHD', @level2type=N'COLUMN',@level2name=N'FHDWID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'返回单详细表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_21_FHDXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_21_FHDXX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'返回单ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_21_FHDXX', @level2type=N'COLUMN',@level2name=N'FHDID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'接收单详细ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_21_FHDXX', @level2type=N'COLUMN',@level2name=N'JSDXXID'
GO
