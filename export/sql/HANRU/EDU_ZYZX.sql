--空间名：EDU_ZYZX  生成器：SqlBuilder0.1

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

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZYZX_03_A01_KCK')
            and   type = 'U')
   drop table EDU_ZYZX_03_A01_KCK
go
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
	[KCKID]  int  NOT NULL,--课程库ID
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
	[KCKID]  int  NOT NULL,--课程库ID
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
	[KCKID]  int  NOT NULL,--课程库ID
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

--课程库表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZYZX_03_A01_KCK]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZYZX_03_A01_KCK](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[KCDM]  nvarchar(20)  NOT NULL,--课程代码
	[KCMC]  nvarchar(50)  NOT NULL,--课程名称
CONSTRAINT [PK_EDU_ZYZX_03_A01_KCK] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--以下为添加注释语句
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
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程库ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_02_A02_SJZSD', @level2type=N'COLUMN',@level2name=N'KCKID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'知识点名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_02_A02_SJZSD', @level2type=N'COLUMN',@level2name=N'ZSDMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'试卷题目表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_02_A03_SJTM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_02_A03_SJTM', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_02_A03_SJTM', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程库ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_02_A03_SJTM', @level2type=N'COLUMN',@level2name=N'KCKID'
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
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程库ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_02_A04_SJ', @level2type=N'COLUMN',@level2name=N'KCKID'
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
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程库表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_03_A01_KCK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_03_A01_KCK', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_03_A01_KCK', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程代码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_03_A01_KCK', @level2type=N'COLUMN',@level2name=N'KCDM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_03_A01_KCK', @level2type=N'COLUMN',@level2name=N'KCMC'
GO
