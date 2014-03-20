--空间名：EDU_CFXT  生成器：SqlBuilder0.1

if exists (select 1 from  sysobjects where  id = object_id('EDU_CFXT_01_A01_KM')
            and   type = 'U')
   drop table EDU_CFXT_01_A01_KM
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_CFXT_01_A02_KS')
            and   type = 'U')
   drop table EDU_CFXT_01_A02_KS
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_CFXT_01_A03_CKXS')
            and   type = 'U')
   drop table EDU_CFXT_01_A03_CKXS
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_CFXT_01_A04_KSCJ')
            and   type = 'U')
   drop table EDU_CFXT_01_A04_KSCJ
go
--科目信息
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_CFXT_01_A01_KM]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_CFXT_01_A01_KM](
	[ID]  int  identity,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[KMMC]  nvarchar(20)  NOT NULL,--科目名称
	[KMZF]  decimal(5, 1)  NOT NULL,--科目总分
CONSTRAINT [PK_EDU_CFXT_01_A01_KM] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--考试信息
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_CFXT_01_A02_KS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_CFXT_01_A02_KS](
	[ID]  int  identity,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[KSMC]  nvarchar(20)  NOT NULL,--考试名称
	[KSKMIDLB]  text  NOT NULL,--考试科目ID列表
	[KSKMMCLB]  text  NOT NULL,--考试科目名称列表
	[CFWZ]  nvarchar(500)  NOT NULL,--查分网址
	[CFZT]  int  NOT NULL,--查分状态
	[HDX]  int  NOT NULL,--划档线
	[HDXSJG]  nvarchar(500)  NOT NULL,--划档线上结果
	[HDXXJG]  nvarchar(500)  NOT NULL,--划档线下结果
CONSTRAINT [PK_EDU_CFXT_01_A02_KS] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--参考学生信息
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_CFXT_01_A03_CKXS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_CFXT_01_A03_CKXS](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[KSID]  int  NOT NULL,--考试ID
	[XM]  nvarchar(20)  NOT NULL,--姓名
	[ZKZH]  nvarchar(50)  NOT NULL,--准考证号
	[JZDH]  nvarchar(20)  NOT NULL,--家长电话
	[ZCJ]  decimal(5, 1)  NOT NULL,--总成绩
CONSTRAINT [PK_EDU_CFXT_01_A03_CKXS] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--考试成绩
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_CFXT_01_A04_KSCJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_CFXT_01_A04_KSCJ](
	[ID]  int  identity,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[KSID]  int  NOT NULL,--考试ID
	[KMID]  int  NOT NULL,--科目ID
	[CKXSID]  int  NOT NULL,--参考学生ID
	[CJ]  decimal(5, 1)  NOT NULL,--成绩
CONSTRAINT [PK_EDU_CFXT_01_A04_KSCJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--以下为添加注释语句
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'科目信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_CFXT_01_A01_KM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_CFXT_01_A01_KM', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_CFXT_01_A01_KM', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'科目名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_CFXT_01_A01_KM', @level2type=N'COLUMN',@level2name=N'KMMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'科目总分' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_CFXT_01_A01_KM', @level2type=N'COLUMN',@level2name=N'KMZF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'考试信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_CFXT_01_A02_KS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_CFXT_01_A02_KS', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_CFXT_01_A02_KS', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'考试名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_CFXT_01_A02_KS', @level2type=N'COLUMN',@level2name=N'KSMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'考试科目ID列表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_CFXT_01_A02_KS', @level2type=N'COLUMN',@level2name=N'KSKMIDLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'考试科目名称列表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_CFXT_01_A02_KS', @level2type=N'COLUMN',@level2name=N'KSKMMCLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'查分网址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_CFXT_01_A02_KS', @level2type=N'COLUMN',@level2name=N'CFWZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'查分状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_CFXT_01_A02_KS', @level2type=N'COLUMN',@level2name=N'CFZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'划档线' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_CFXT_01_A02_KS', @level2type=N'COLUMN',@level2name=N'HDX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'划档线上结果' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_CFXT_01_A02_KS', @level2type=N'COLUMN',@level2name=N'HDXSJG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'划档线下结果' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_CFXT_01_A02_KS', @level2type=N'COLUMN',@level2name=N'HDXXJG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'参考学生信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_CFXT_01_A03_CKXS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_CFXT_01_A03_CKXS', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_CFXT_01_A03_CKXS', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'考试ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_CFXT_01_A03_CKXS', @level2type=N'COLUMN',@level2name=N'KSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_CFXT_01_A03_CKXS', @level2type=N'COLUMN',@level2name=N'XM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'准考证号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_CFXT_01_A03_CKXS', @level2type=N'COLUMN',@level2name=N'ZKZH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'家长电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_CFXT_01_A03_CKXS', @level2type=N'COLUMN',@level2name=N'JZDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'总成绩' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_CFXT_01_A03_CKXS', @level2type=N'COLUMN',@level2name=N'ZCJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'考试成绩' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_CFXT_01_A04_KSCJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_CFXT_01_A04_KSCJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_CFXT_01_A04_KSCJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'考试ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_CFXT_01_A04_KSCJ', @level2type=N'COLUMN',@level2name=N'KSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'科目ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_CFXT_01_A04_KSCJ', @level2type=N'COLUMN',@level2name=N'KMID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'参考学生ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_CFXT_01_A04_KSCJ', @level2type=N'COLUMN',@level2name=N'CKXSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'成绩' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_CFXT_01_A04_KSCJ', @level2type=N'COLUMN',@level2name=N'CJ'
GO
