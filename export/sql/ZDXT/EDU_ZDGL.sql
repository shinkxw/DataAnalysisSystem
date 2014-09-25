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

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZDGL_21_SXDXM')
            and   type = 'U')
   drop table EDU_ZDGL_21_SXDXM
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZDGL_22_SXD')
            and   type = 'U')
   drop table EDU_ZDGL_22_SXD
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZDGL_23_SXDSJ')
            and   type = 'U')
   drop table EDU_ZDGL_23_SXDSJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZDGL_31_FXD')
            and   type = 'U')
   drop table EDU_ZDGL_31_FXD
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZDGL_32_FXDSJ')
            and   type = 'U')
   drop table EDU_ZDGL_32_FXDSJ
go
--设备类型配置表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZDGL_01_SBLX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZDGL_01_SBLX](
	[ID]  int  NOT NULL,--编号
	[LXMC]  nvarchar(50)  NOT NULL,--类型名称
	[ZT]  int  NOT NULL,--状态
	[LXJC]  nvarchar(50)  NOT NULL,--类型简称
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
	[WLBH]  nvarchar(200)  NOT NULL,--物料编号
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
	[SSSJQHM]  nvarchar(4)  NOT NULL,--所属市级区划码
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
	[BXSC]  int  NOT NULL,--保修时长
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
	[DZ]  nvarchar(200)  NOT NULL,--地址
	[LXDH]  nvarchar(200)  NOT NULL,--联系电话
	[GSMC]  nvarchar(200)  NOT NULL,--公司名称
	[LXR]  nvarchar(200)  NOT NULL,--联系人
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
	[FXXX]  nvarchar(100)  NOT NULL,--返修信息
	[FXXH]  int  NOT NULL,--返修序号
	[WXJSSJ]  datetime  NOT NULL,--维修结束时间
	[WXJSDJYHID]  nvarchar(20)  NOT NULL,--维修结束登记用户
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
	[SHDW]  nvarchar(200)  NOT NULL,--收货单位
	[KDDH]  nvarchar(50)  NOT NULL,--快递单号
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

--送修单项目表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZDGL_21_SXDXM]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZDGL_21_SXDXM](
	[ID]  int  identity,--编号
	[SSLB]  int  NOT NULL,--所属类别
	[XMMC]  nvarchar(50)  NOT NULL,--项目名称
	[SFXS]  int  NOT NULL,--是否显示
	[PLSX]  int  NOT NULL,--排列顺序
CONSTRAINT [PK_EDU_ZDGL_21_SXDXM] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--送修单表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZDGL_22_SXD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZDGL_22_SXD](
	[ID]  int  NOT NULL,--编号
	[SXDWID]  int  NOT NULL,--送修单位ID
	[SXDMC]  nvarchar(100)  NOT NULL,--送修单名称
	[SXDH]  nvarchar(100)  NOT NULL,--送修单号
	[SXRQ]  datetime  NOT NULL,--送修日期
	[GSXX]  nvarchar(200)  NOT NULL,--公司信息
	[LXRXX]  nvarchar(200)  NOT NULL,--联系人信息
	[LXDHXX]  nvarchar(200)  NOT NULL,--联系电话信息
	[DZXX]  nvarchar(200)  NOT NULL,--地址信息
	[QZXX]  nvarchar(200)  NOT NULL,--签字信息
	[TJYH]  nvarchar(20)  NOT NULL,--添加用户
	[TJSJ]  datetime  NOT NULL,--添加时间
CONSTRAINT [PK_EDU_ZDGL_22_SXD] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--送修单数据表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZDGL_23_SXDSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZDGL_23_SXDSJ](
	[ID]  int  identity,--编号
	[SXDID]  int  NOT NULL,--送修单ID
	[SBXHID]  int  NOT NULL,--设备型号ID
	[SXDXMID]  int  NOT NULL,--送修单项目ID
	[SL]  int  NOT NULL,--数量
	[WB]  nvarchar(200)  NOT NULL,--文本
CONSTRAINT [PK_EDU_ZDGL_23_SXDSJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--返修单表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZDGL_31_FXD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZDGL_31_FXD](
	[ID]  int  NOT NULL,--编号
	[FXDH]  nvarchar(100)  NOT NULL,--返修单号
	[PDBM]  nvarchar(100)  NOT NULL,--派单部门
	[PDY]  nvarchar(50)  NOT NULL,--派单员
	[PDSJ]  nvarchar(50)  NOT NULL,--派单时间
	[SHDW]  nvarchar(50)  NOT NULL,--收货单位
	[LXR]  nvarchar(50)  NOT NULL,--联系人
	[LXDH]  nvarchar(100)  NOT NULL,--联系电话
	[WGSX]  nvarchar(50)  NOT NULL,--完工时限
	[DZ]  nvarchar(100)  NOT NULL,--地址
	[ZJTS]  nvarchar(100)  NOT NULL,--总计台数
	[ZJJS]  nvarchar(100)  NOT NULL,--总计件数
	[SLBM]  nvarchar(100)  NOT NULL,--受理部门
	[SDY]  nvarchar(100)  NOT NULL,--受单员
	[QSY]  nvarchar(100)  NOT NULL,--签收员
	[QSSJ]  nvarchar(100)  NOT NULL,--签收时间
	[FWQK]  nvarchar(100)  NOT NULL,--服务情况
	[FWGCS]  nvarchar(100)  NOT NULL,--服务工程师
	[WGSJ]  nvarchar(100)  NOT NULL,--完工时间
	[YSQK]  nvarchar(100)  NOT NULL,--验收情况
	[YSRY]  nvarchar(100)  NOT NULL,--验收人员
	[YSSJ]  nvarchar(100)  NOT NULL,--验收时间
	[TJYH]  nvarchar(20)  NOT NULL,--添加用户
	[TJSJ]  datetime  NOT NULL,--添加时间
CONSTRAINT [PK_EDU_ZDGL_31_FXD] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--返修单数据表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZDGL_32_FXDSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZDGL_32_FXDSJ](
	[ID]  int  identity,--编号
	[FXDID]  int  NOT NULL,--返修单ID
	[WLMC]  nvarchar(200)  NOT NULL,--物料名称
	[PZ]  nvarchar(200)  NOT NULL,--配置
	[DW]  nvarchar(200)  NOT NULL,--单位
	[SL]  nvarchar(200)  NOT NULL,--数量
	[FY]  nvarchar(200)  NOT NULL,--费用
	[RWSM]  nvarchar(200)  NOT NULL,--任务说明
	[CLJG]  nvarchar(200)  NOT NULL,--处理结果
CONSTRAINT [PK_EDU_ZDGL_32_FXDSJ] PRIMARY KEY CLUSTERED
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
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型简称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_01_SBLX', @level2type=N'COLUMN',@level2name=N'LXJC'
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
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'物料编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_03_SBXH', @level2type=N'COLUMN',@level2name=N'WLBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'送修单位信息表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_04_SXDW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_04_SXDW', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'区划码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_04_SXDW', @level2type=N'COLUMN',@level2name=N'QHM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属市级区划码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_04_SXDW', @level2type=N'COLUMN',@level2name=N'SSSJQHM'
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
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'保修时长' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_05_BXHT', @level2type=N'COLUMN',@level2name=N'BXSC'
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
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_06_BM', @level2type=N'COLUMN',@level2name=N'DZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_06_BM', @level2type=N'COLUMN',@level2name=N'LXDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公司名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_06_BM', @level2type=N'COLUMN',@level2name=N'GSMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_06_BM', @level2type=N'COLUMN',@level2name=N'LXR'
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
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'返修信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_07_BXSB', @level2type=N'COLUMN',@level2name=N'FXXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'返修序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_07_BXSB', @level2type=N'COLUMN',@level2name=N'FXXH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'维修结束时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_07_BXSB', @level2type=N'COLUMN',@level2name=N'WXJSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'维修结束登记用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_07_BXSB', @level2type=N'COLUMN',@level2name=N'WXJSDJYHID'
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
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收货单位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_10_FXDXX', @level2type=N'COLUMN',@level2name=N'SHDW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'快递单号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_10_FXDXX', @level2type=N'COLUMN',@level2name=N'KDDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'返修设备表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_11_FXSB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_11_FXSB', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'返修单ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_11_FXSB', @level2type=N'COLUMN',@level2name=N'FXDID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'报修设备ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_11_FXSB', @level2type=N'COLUMN',@level2name=N'BXSBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'送修单项目表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_21_SXDXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_21_SXDXM', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属类别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_21_SXDXM', @level2type=N'COLUMN',@level2name=N'SSLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'项目名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_21_SXDXM', @level2type=N'COLUMN',@level2name=N'XMMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否显示' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_21_SXDXM', @level2type=N'COLUMN',@level2name=N'SFXS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排列顺序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_21_SXDXM', @level2type=N'COLUMN',@level2name=N'PLSX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'送修单表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_22_SXD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_22_SXD', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'送修单位ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_22_SXD', @level2type=N'COLUMN',@level2name=N'SXDWID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'送修单名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_22_SXD', @level2type=N'COLUMN',@level2name=N'SXDMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'送修单号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_22_SXD', @level2type=N'COLUMN',@level2name=N'SXDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'送修日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_22_SXD', @level2type=N'COLUMN',@level2name=N'SXRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公司信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_22_SXD', @level2type=N'COLUMN',@level2name=N'GSXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系人信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_22_SXD', @level2type=N'COLUMN',@level2name=N'LXRXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系电话信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_22_SXD', @level2type=N'COLUMN',@level2name=N'LXDHXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'地址信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_22_SXD', @level2type=N'COLUMN',@level2name=N'DZXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'签字信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_22_SXD', @level2type=N'COLUMN',@level2name=N'QZXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_22_SXD', @level2type=N'COLUMN',@level2name=N'TJYH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_22_SXD', @level2type=N'COLUMN',@level2name=N'TJSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'送修单数据表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_23_SXDSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_23_SXDSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'送修单ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_23_SXDSJ', @level2type=N'COLUMN',@level2name=N'SXDID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'设备型号ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_23_SXDSJ', @level2type=N'COLUMN',@level2name=N'SBXHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'送修单项目ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_23_SXDSJ', @level2type=N'COLUMN',@level2name=N'SXDXMID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_23_SXDSJ', @level2type=N'COLUMN',@level2name=N'SL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文本' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_23_SXDSJ', @level2type=N'COLUMN',@level2name=N'WB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'返修单表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_31_FXD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_31_FXD', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'返修单号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_31_FXD', @level2type=N'COLUMN',@level2name=N'FXDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'派单部门' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_31_FXD', @level2type=N'COLUMN',@level2name=N'PDBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'派单员' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_31_FXD', @level2type=N'COLUMN',@level2name=N'PDY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'派单时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_31_FXD', @level2type=N'COLUMN',@level2name=N'PDSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收货单位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_31_FXD', @level2type=N'COLUMN',@level2name=N'SHDW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_31_FXD', @level2type=N'COLUMN',@level2name=N'LXR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_31_FXD', @level2type=N'COLUMN',@level2name=N'LXDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'完工时限' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_31_FXD', @level2type=N'COLUMN',@level2name=N'WGSX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_31_FXD', @level2type=N'COLUMN',@level2name=N'DZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'总计台数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_31_FXD', @level2type=N'COLUMN',@level2name=N'ZJTS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'总计件数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_31_FXD', @level2type=N'COLUMN',@level2name=N'ZJJS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'受理部门' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_31_FXD', @level2type=N'COLUMN',@level2name=N'SLBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'受单员' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_31_FXD', @level2type=N'COLUMN',@level2name=N'SDY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'签收员' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_31_FXD', @level2type=N'COLUMN',@level2name=N'QSY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'签收时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_31_FXD', @level2type=N'COLUMN',@level2name=N'QSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'服务情况' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_31_FXD', @level2type=N'COLUMN',@level2name=N'FWQK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'服务工程师' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_31_FXD', @level2type=N'COLUMN',@level2name=N'FWGCS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'完工时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_31_FXD', @level2type=N'COLUMN',@level2name=N'WGSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'验收情况' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_31_FXD', @level2type=N'COLUMN',@level2name=N'YSQK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'验收人员' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_31_FXD', @level2type=N'COLUMN',@level2name=N'YSRY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'验收时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_31_FXD', @level2type=N'COLUMN',@level2name=N'YSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_31_FXD', @level2type=N'COLUMN',@level2name=N'TJYH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_31_FXD', @level2type=N'COLUMN',@level2name=N'TJSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'返修单数据表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_32_FXDSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_32_FXDSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'返修单ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_32_FXDSJ', @level2type=N'COLUMN',@level2name=N'FXDID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'物料名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_32_FXDSJ', @level2type=N'COLUMN',@level2name=N'WLMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'配置' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_32_FXDSJ', @level2type=N'COLUMN',@level2name=N'PZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_32_FXDSJ', @level2type=N'COLUMN',@level2name=N'DW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_32_FXDSJ', @level2type=N'COLUMN',@level2name=N'SL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'费用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_32_FXDSJ', @level2type=N'COLUMN',@level2name=N'FY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'任务说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_32_FXDSJ', @level2type=N'COLUMN',@level2name=N'RWSM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'处理结果' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_32_FXDSJ', @level2type=N'COLUMN',@level2name=N'CLJG'
GO
