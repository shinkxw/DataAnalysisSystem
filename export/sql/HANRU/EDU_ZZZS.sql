--空间名：EDU_ZZZS  生成器：SqlBuilder0.1

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZZS_02_01_RXCJ')
            and   type = 'U')
   drop table EDU_ZZZS_02_01_RXCJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZZS_01_A01_ZSJH')
            and   type = 'U')
   drop table EDU_ZZZS_01_A01_ZSJH
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZZS_01_01_ZSXX')
            and   type = 'U')
   drop table EDU_ZZZS_01_01_ZSXX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZZS_03_01_KSKMCJ')
            and   type = 'U')
   drop table EDU_ZZZS_03_01_KSKMCJ
go
--入学成绩数据表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZZS_02_01_RXCJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZZS_02_01_RXCJ](
	[XSXXID]  int  NOT NULL,--学生信息数据表
	[SCHOOLID]  int  NOT NULL,--学校名
	[RXZF]  decimal(5, 1)  NULL,--入学总分
	[GKZF]  decimal(5, 1)  NULL,--中考总分
	[FJF]  decimal(5, 1)  NULL,--附加分
	[FJFLBM]  nvarchar(1)  NULL,--附加分类别码
CONSTRAINT [PK_EDU_ZZZS_02_01_RXCJ] PRIMARY KEY CLUSTERED
(
	[XSXXID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--招生计划数据表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZZS_01_A01_ZSJH]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZZS_01_A01_ZSJH](
	[ID]  int  identity,--编号
	[SCHOOLID]  int  NOT NULL,--学校名
	[ZYXXID]  int  NOT NULL,--专业基本信息
	[XNID]  int  NOT NULL,--学年
	[ZSJHRS]  int  NOT NULL,--招生计划
	[BZ]  text  NULL,--备注
CONSTRAINT [PK_EDU_ZZZS_01_A01_ZSJH] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--考生数据表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZZS_01_01_ZSXX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZZS_01_01_ZSXX](
	[XSXXID]  int  NOT NULL,--学生信息数据表
	[SCHOOLID]  int  NOT NULL,--学校名
	[ZKZH]  nvarchar(15)  NOT NULL,--准考证号
	[KSH]  nvarchar(20)  NOT NULL,--考生号
	[KQXZQHM]  nvarchar(6)  NULL,--考区行政区划码
	[RXNY]  nvarchar(6)  NOT NULL,--入学年月
	[YSWGYZM]  nvarchar(2)  NOT NULL,--应试外国语种码
	[BKZYM1]  nvarchar(6)  NULL,--报考专业码1
	[BKZYM2]  nvarchar(6)  NULL,--报考专业码2
	[BKZYM3]  nvarchar(6)  NULL,--报考专业码3
	[BKZYM4]  nvarchar(6)  NULL,--报考专业码4
	[BKZYM5]  nvarchar(6)  NULL,--报考专业码5
	[BKZYM6]  nvarchar(6)  NULL,--报考专业码6
	[KSFSM]  nvarchar(1)  NOT NULL,--考试方式码
	[BYZX]  nvarchar(50)  NOT NULL,--毕业中学
	[BYZXYZBM]  nvarchar(6)  NOT NULL,--毕业中学邮政编码
	[KSTC]  nvarchar(100)  NULL,--考生特长
	[JLYCC]  nvarchar(200)  NULL,--奖励与惩处
	[JSHJ]  nvarchar(200)  NULL,--竞赛获奖
	[SHGZ]  nvarchar(200)  NULL,--社会工作
	[TJJL]  nvarchar(20)  NULL,--体检结论
	[JZBS]  nvarchar(20)  NULL,--家族病史
	[KSJWBS]  nvarchar(200)  NULL,--考生既往病史
	[SG]  decimal(5, 1)  NULL,--身高
	[KSSL]  decimal(3, 1)  NULL,--考生视力
CONSTRAINT [PK_EDU_ZZZS_01_01_ZSXX] PRIMARY KEY CLUSTERED
(
	[XSXXID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--考生科目成绩数据类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZZS_03_01_KSKMCJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZZS_03_01_KSKMCJ](
	[XSXXID]  int  NOT NULL,--考生ID
	[SCHOOLID]  int  NOT NULL,--学校ID
	[KMM]  nvarchar(2)  NOT NULL,--科目码
	[ZKFS]  decimal(5, 1)  NOT NULL,--中考分数
CONSTRAINT [PK_EDU_ZZZS_03_01_KSKMCJ] PRIMARY KEY CLUSTERED
(
	[XSXXID] ASC,
	[SCHOOLID] ASC,
	[KMM] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--以下为添加注释语句
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'入学成绩数据表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_02_01_RXCJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生信息数据表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_02_01_RXCJ', @level2type=N'COLUMN',@level2name=N'XSXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_02_01_RXCJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'入学总分' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_02_01_RXCJ', @level2type=N'COLUMN',@level2name=N'RXZF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中考总分' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_02_01_RXCJ', @level2type=N'COLUMN',@level2name=N'GKZF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'附加分' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_02_01_RXCJ', @level2type=N'COLUMN',@level2name=N'FJF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'附加分类别码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_02_01_RXCJ', @level2type=N'COLUMN',@level2name=N'FJFLBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'招生计划数据表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_A01_ZSJH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_A01_ZSJH', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_A01_ZSJH', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'专业基本信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_A01_ZSJH', @level2type=N'COLUMN',@level2name=N'ZYXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学年' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_A01_ZSJH', @level2type=N'COLUMN',@level2name=N'XNID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'招生计划' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_A01_ZSJH', @level2type=N'COLUMN',@level2name=N'ZSJHRS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_A01_ZSJH', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'考生数据表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_01_ZSXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生信息数据表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_01_ZSXX', @level2type=N'COLUMN',@level2name=N'XSXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_01_ZSXX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'准考证号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_01_ZSXX', @level2type=N'COLUMN',@level2name=N'ZKZH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'考生号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_01_ZSXX', @level2type=N'COLUMN',@level2name=N'KSH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'考区行政区划码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_01_ZSXX', @level2type=N'COLUMN',@level2name=N'KQXZQHM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'入学年月' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_01_ZSXX', @level2type=N'COLUMN',@level2name=N'RXNY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'应试外国语种码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_01_ZSXX', @level2type=N'COLUMN',@level2name=N'YSWGYZM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'报考专业码1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_01_ZSXX', @level2type=N'COLUMN',@level2name=N'BKZYM1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'报考专业码2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_01_ZSXX', @level2type=N'COLUMN',@level2name=N'BKZYM2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'报考专业码3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_01_ZSXX', @level2type=N'COLUMN',@level2name=N'BKZYM3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'报考专业码4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_01_ZSXX', @level2type=N'COLUMN',@level2name=N'BKZYM4'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'报考专业码5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_01_ZSXX', @level2type=N'COLUMN',@level2name=N'BKZYM5'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'报考专业码6' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_01_ZSXX', @level2type=N'COLUMN',@level2name=N'BKZYM6'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'考试方式码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_01_ZSXX', @level2type=N'COLUMN',@level2name=N'KSFSM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'毕业中学' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_01_ZSXX', @level2type=N'COLUMN',@level2name=N'BYZX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'毕业中学邮政编码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_01_ZSXX', @level2type=N'COLUMN',@level2name=N'BYZXYZBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'考生特长' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_01_ZSXX', @level2type=N'COLUMN',@level2name=N'KSTC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'奖励与惩处' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_01_ZSXX', @level2type=N'COLUMN',@level2name=N'JLYCC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'竞赛获奖' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_01_ZSXX', @level2type=N'COLUMN',@level2name=N'JSHJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'社会工作' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_01_ZSXX', @level2type=N'COLUMN',@level2name=N'SHGZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'体检结论' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_01_ZSXX', @level2type=N'COLUMN',@level2name=N'TJJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'家族病史' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_01_ZSXX', @level2type=N'COLUMN',@level2name=N'JZBS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'考生既往病史' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_01_ZSXX', @level2type=N'COLUMN',@level2name=N'KSJWBS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'身高' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_01_ZSXX', @level2type=N'COLUMN',@level2name=N'SG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'考生视力' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_01_ZSXX', @level2type=N'COLUMN',@level2name=N'KSSL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'考生科目成绩数据类表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_03_01_KSKMCJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'考生ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_03_01_KSKMCJ', @level2type=N'COLUMN',@level2name=N'XSXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_03_01_KSKMCJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'科目码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_03_01_KSKMCJ', @level2type=N'COLUMN',@level2name=N'KMM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中考分数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_03_01_KSKMCJ', @level2type=N'COLUMN',@level2name=N'ZKFS'
GO
