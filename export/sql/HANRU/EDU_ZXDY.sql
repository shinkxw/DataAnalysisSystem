--空间名：EDU_ZXDY  生成器：SqlBuilder0.1

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXDY_04_A01_ZZGW')
            and   type = 'U')
   drop table EDU_ZXDY_04_A01_ZZGW
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXDY_04_A02_ZZRYAP')
            and   type = 'U')
   drop table EDU_ZXDY_04_A02_ZZRYAP
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXDY_04_A03_ZZGWFP')
            and   type = 'U')
   drop table EDU_ZXDY_04_A03_ZZGWFP
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXDY_04_A04_GWFPMB')
            and   type = 'U')
   drop table EDU_ZXDY_04_A04_GWFPMB
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXDY_04_A05_TBZZJS')
            and   type = 'U')
   drop table EDU_ZXDY_04_A05_TBZZJS
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXDY_04_A06_ZZZC')
            and   type = 'U')
   drop table EDU_ZXDY_04_A06_ZZZC
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXDY_04_A07_MBFPNR')
            and   type = 'U')
   drop table EDU_ZXDY_04_A07_MBFPNR
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXDY_05_A01_ZZDFDL')
            and   type = 'U')
   drop table EDU_ZXDY_05_A01_ZZDFDL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXDY_05_A02_ZZDFXZ')
            and   type = 'U')
   drop table EDU_ZXDY_05_A02_ZZDFXZ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXDY_05_A03_ZZDFD')
            and   type = 'U')
   drop table EDU_ZXDY_05_A03_ZZDFD
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXDY_06_A01_ZZXJ')
            and   type = 'U')
   drop table EDU_ZXDY_06_A01_ZZXJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXDY_06_A02_GQXJH')
            and   type = 'U')
   drop table EDU_ZXDY_06_A02_GQXJH
go
--值周岗位数据表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXDY_04_A01_ZZGW]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXDY_04_A01_ZZGW](
	[ID]  int  NOT NULL,--值周岗位表ID
	[SCHOOLID]  int  NOT NULL,--学校ID
	[XQID]  int  NOT NULL,--学期ID
	[GWGZNR]  nvarchar(200)  NOT NULL,--岗位工作内容
CONSTRAINT [PK_EDU_ZXDY_04_A01_ZZGW] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--值周人员安排表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXDY_04_A02_ZZRYAP]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXDY_04_A02_ZZRYAP](
	[ID]  int  NOT NULL,--值周人员安排表ID
	[SCHOOLID]  int  NOT NULL,--学校ID
	[XQID]  int  NOT NULL,--学期ID
	[ZCID]  int  NOT NULL,--周次ID
	[KSRQ]  datetime  NULL,--开始日期
	[JSRQ]  datetime  NULL,--结束日期
	[ZZBJ]  nvarchar(10)  NOT NULL,--值周班级班号
	[ZZID]  nvarchar(20)  NOT NULL,--组长ID
	[ZYIDLB]  text  NOT NULL,--组员ID列表
	[ZYMCLB]  text  NOT NULL,--组员名称列表
CONSTRAINT [PK_EDU_ZXDY_04_A02_ZZRYAP] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--值周岗位分配表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXDY_04_A03_ZZGWFP]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXDY_04_A03_ZZGWFP](
	[ID]  int  NOT NULL,--值周岗位分配表ID
	[SCHOOLID]  int  NOT NULL,--学校ID
	[XQID]  int  NOT NULL,--学期ID
	[ZCID]  int  NOT NULL,--周次ID
	[GZR]  int  NULL,--工作日
	[GWID]  int  NULL,--岗位ID
	[JSID]  nvarchar(20)  NOT NULL,--教师ID
CONSTRAINT [PK_EDU_ZXDY_04_A03_ZZGWFP] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--岗位分配模板表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXDY_04_A04_GWFPMB]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXDY_04_A04_GWFPMB](
	[ID]  int  NOT NULL,--岗位分配模板表ID
	[SCHOOLID]  int  NOT NULL,--学校ID
	[MBMC]  nvarchar(20)  NOT NULL,--模板名称
CONSTRAINT [PK_EDU_ZXDY_04_A04_GWFPMB] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--特别值周教师表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXDY_04_A05_TBZZJS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXDY_04_A05_TBZZJS](
	[ID]  int  NOT NULL,--特别值周教师表ID
	[SCHOOLID]  int  NOT NULL,--学校ID
	[XQID]  int  NOT NULL,--学期ID
	[JSLX]  nvarchar(20)  NOT NULL,--教师类型
	[JSID]  nvarchar(20)  NOT NULL,--教师ID
	[YXRQ]  datetime  NULL,--有效日期
CONSTRAINT [PK_EDU_ZXDY_04_A05_TBZZJS] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--值周周次表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXDY_04_A06_ZZZC]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXDY_04_A06_ZZZC](
	[ID]  int  NOT NULL,--周次表ID
	[SCHOOLID]  int  NOT NULL,--学校ID
	[XQID]  int  NOT NULL,--学期ID
	[ZCM]  nvarchar(20)  NOT NULL,--周次名
	[XQKSRQ]  datetime  NULL,--开始日期
	[XQJSRQ]  datetime  NULL,--结束日期
CONSTRAINT [PK_EDU_ZXDY_04_A06_ZZZC] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--模板分配内容表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXDY_04_A07_MBFPNR]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXDY_04_A07_MBFPNR](
	[ID]  int  NOT NULL,--模板内容表ID
	[MBID]  int  NOT NULL,--模板表ID
	[GZR]  int  NULL,--工作日
	[GWID]  int  NULL,--岗位ID
	[DYRYH]  int  NOT NULL,--对应人员号
CONSTRAINT [PK_EDU_ZXDY_04_A07_MBFPNR] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--值周打分大类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXDY_05_A01_ZZDFDL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXDY_05_A01_ZZDFDL](
	[ID]  int  NOT NULL,--值周打分大类表ID
	[SCHOOLID]  int  NOT NULL,--学校ID
	[XQID]  int  NOT NULL,--学期ID
	[DLMC]  nvarchar(20)  NOT NULL,--大类名称
CONSTRAINT [PK_EDU_ZXDY_05_A01_ZZDFDL] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--值周打分细则表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXDY_05_A02_ZZDFXZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXDY_05_A02_ZZDFXZ](
	[ID]  int  NOT NULL,--值周打分细则表ID
	[SCHOOLID]  int  NOT NULL,--学校ID
	[SSDLID]  int  NOT NULL,--所属大类ID
	[XZNR]  nvarchar(200)  NOT NULL,--细则内容
	[XZFZ]  decimal(6, 2)  NOT NULL,--细则分值
CONSTRAINT [PK_EDU_ZXDY_05_A02_ZZDFXZ] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--值周打分单表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXDY_05_A03_ZZDFD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXDY_05_A03_ZZDFD](
	[ID]  int  NOT NULL,--值周打分单表ID
	[SCHOOLID]  int  NOT NULL,--学校ID
	[XQID]  int  NOT NULL,--学期ID
	[ZCID]  int  NOT NULL,--周次ID
	[BJ]  nvarchar(10)  NULL,--班级
	[XSIDLB]  text  NULL,--学生ID列表
	[XSMCLB]  text  NULL,--学生名称列表
	[SSXZID]  int  NOT NULL,--所属细则
	[DFFZ]  decimal(6, 2)  NOT NULL,--打分分值
	[FSSJ]  datetime  NOT NULL,--发生时间
	[DFSJ]  datetime  NOT NULL,--打分时间
	[DFJSID]  nvarchar(20)  NOT NULL,--打分教师ID
	[BZ]  text  NOT NULL,--备注
CONSTRAINT [PK_EDU_ZXDY_05_A03_ZZDFD] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--值周小结表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXDY_06_A01_ZZXJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXDY_06_A01_ZZXJ](
	[ID]  int  NOT NULL,--值周小结表ID
	[SCHOOLID]  int  NOT NULL,--学校ID
	[XQID]  int  NOT NULL,--学期ID
	[ZCID]  int  NOT NULL,--周次ID
	[SZDS]  text  NULL,--上周大事
	[ZZJCQKFK]  text  NULL,--值周检查情况反馈
CONSTRAINT [PK_EDU_ZXDY_06_A01_ZZXJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--国旗下讲话表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXDY_06_A02_GQXJH]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXDY_06_A02_GQXJH](
	[ID]  int  NOT NULL,--国旗下讲话表ID
	[SCHOOLID]  int  NOT NULL,--学校ID
	[XQID]  int  NOT NULL,--学期ID
	[ZCID]  int  NOT NULL,--周次ID
	[JHZT]  text  NULL,--讲话主题
	[JHNR]  text  NULL,--讲话内容
CONSTRAINT [PK_EDU_ZXDY_06_A02_GQXJH] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--以下为添加注释语句
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'值周岗位数据表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A01_ZZGW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'值周岗位表ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A01_ZZGW', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A01_ZZGW', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学期ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A01_ZZGW', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'岗位工作内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A01_ZZGW', @level2type=N'COLUMN',@level2name=N'GWGZNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'值周人员安排表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A02_ZZRYAP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'值周人员安排表ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A02_ZZRYAP', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A02_ZZRYAP', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学期ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A02_ZZRYAP', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'周次ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A02_ZZRYAP', @level2type=N'COLUMN',@level2name=N'ZCID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开始日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A02_ZZRYAP', @level2type=N'COLUMN',@level2name=N'KSRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'结束日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A02_ZZRYAP', @level2type=N'COLUMN',@level2name=N'JSRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'值周班级班号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A02_ZZRYAP', @level2type=N'COLUMN',@level2name=N'ZZBJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'组长ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A02_ZZRYAP', @level2type=N'COLUMN',@level2name=N'ZZID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'组员ID列表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A02_ZZRYAP', @level2type=N'COLUMN',@level2name=N'ZYIDLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'组员名称列表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A02_ZZRYAP', @level2type=N'COLUMN',@level2name=N'ZYMCLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'值周岗位分配表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A03_ZZGWFP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'值周岗位分配表ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A03_ZZGWFP', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A03_ZZGWFP', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学期ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A03_ZZGWFP', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'周次ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A03_ZZGWFP', @level2type=N'COLUMN',@level2name=N'ZCID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工作日' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A03_ZZGWFP', @level2type=N'COLUMN',@level2name=N'GZR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'岗位ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A03_ZZGWFP', @level2type=N'COLUMN',@level2name=N'GWID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教师ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A03_ZZGWFP', @level2type=N'COLUMN',@level2name=N'JSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'岗位分配模板表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A04_GWFPMB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'岗位分配模板表ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A04_GWFPMB', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A04_GWFPMB', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'模板名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A04_GWFPMB', @level2type=N'COLUMN',@level2name=N'MBMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'特别值周教师表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A05_TBZZJS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'特别值周教师表ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A05_TBZZJS', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A05_TBZZJS', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学期ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A05_TBZZJS', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教师类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A05_TBZZJS', @level2type=N'COLUMN',@level2name=N'JSLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教师ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A05_TBZZJS', @level2type=N'COLUMN',@level2name=N'JSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'有效日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A05_TBZZJS', @level2type=N'COLUMN',@level2name=N'YXRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'值周周次表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A06_ZZZC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'周次表ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A06_ZZZC', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A06_ZZZC', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学期ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A06_ZZZC', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'周次名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A06_ZZZC', @level2type=N'COLUMN',@level2name=N'ZCM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开始日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A06_ZZZC', @level2type=N'COLUMN',@level2name=N'XQKSRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'结束日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A06_ZZZC', @level2type=N'COLUMN',@level2name=N'XQJSRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'模板分配内容表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A07_MBFPNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'模板内容表ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A07_MBFPNR', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'模板表ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A07_MBFPNR', @level2type=N'COLUMN',@level2name=N'MBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工作日' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A07_MBFPNR', @level2type=N'COLUMN',@level2name=N'GZR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'岗位ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A07_MBFPNR', @level2type=N'COLUMN',@level2name=N'GWID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'对应人员号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A07_MBFPNR', @level2type=N'COLUMN',@level2name=N'DYRYH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'值周打分大类表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_05_A01_ZZDFDL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'值周打分大类表ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_05_A01_ZZDFDL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_05_A01_ZZDFDL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学期ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_05_A01_ZZDFDL', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'大类名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_05_A01_ZZDFDL', @level2type=N'COLUMN',@level2name=N'DLMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'值周打分细则表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_05_A02_ZZDFXZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'值周打分细则表ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_05_A02_ZZDFXZ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_05_A02_ZZDFXZ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属大类ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_05_A02_ZZDFXZ', @level2type=N'COLUMN',@level2name=N'SSDLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'细则内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_05_A02_ZZDFXZ', @level2type=N'COLUMN',@level2name=N'XZNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'细则分值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_05_A02_ZZDFXZ', @level2type=N'COLUMN',@level2name=N'XZFZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'值周打分单表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_05_A03_ZZDFD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'值周打分单表ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_05_A03_ZZDFD', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_05_A03_ZZDFD', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学期ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_05_A03_ZZDFD', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'周次ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_05_A03_ZZDFD', @level2type=N'COLUMN',@level2name=N'ZCID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'班级' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_05_A03_ZZDFD', @level2type=N'COLUMN',@level2name=N'BJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生ID列表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_05_A03_ZZDFD', @level2type=N'COLUMN',@level2name=N'XSIDLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生名称列表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_05_A03_ZZDFD', @level2type=N'COLUMN',@level2name=N'XSMCLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属细则' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_05_A03_ZZDFD', @level2type=N'COLUMN',@level2name=N'SSXZID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'打分分值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_05_A03_ZZDFD', @level2type=N'COLUMN',@level2name=N'DFFZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发生时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_05_A03_ZZDFD', @level2type=N'COLUMN',@level2name=N'FSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'打分时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_05_A03_ZZDFD', @level2type=N'COLUMN',@level2name=N'DFSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'打分教师ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_05_A03_ZZDFD', @level2type=N'COLUMN',@level2name=N'DFJSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_05_A03_ZZDFD', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'值周小结表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_06_A01_ZZXJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'值周小结表ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_06_A01_ZZXJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_06_A01_ZZXJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学期ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_06_A01_ZZXJ', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'周次ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_06_A01_ZZXJ', @level2type=N'COLUMN',@level2name=N'ZCID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上周大事' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_06_A01_ZZXJ', @level2type=N'COLUMN',@level2name=N'SZDS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'值周检查情况反馈' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_06_A01_ZZXJ', @level2type=N'COLUMN',@level2name=N'ZZJCQKFK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'国旗下讲话表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_06_A02_GQXJH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'国旗下讲话表ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_06_A02_GQXJH', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_06_A02_GQXJH', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学期ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_06_A02_GQXJH', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'周次ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_06_A02_GQXJH', @level2type=N'COLUMN',@level2name=N'ZCID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'讲话主题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_06_A02_GQXJH', @level2type=N'COLUMN',@level2name=N'JHZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'讲话内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_06_A02_GQXJH', @level2type=N'COLUMN',@level2name=N'JHNR'
GO
