--空间名：EDU_ZX  生成器：SqlBuilder0.1

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZX_01_A01_HDGL')
            and   type = 'U')
   drop table EDU_ZX_01_A01_HDGL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZX_01_A02_BMGL')
            and   type = 'U')
   drop table EDU_ZX_01_A02_BMGL
go
--活动管理
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZX_01_A01_HDGL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZX_01_A01_HDGL](
	[SCHOOLID]  int  NOT NULL,--学校
	[HDBMBBT]  nvarchar(200)  NOT NULL,--活动报名表标题
	[HDBMTZ]  text  NOT NULL,--活动报名通知
	[HDQTZT]  nvarchar(200)  NOT NULL,--活动启停状态
CONSTRAINT [PK_EDU_ZX_01_A01_HDGL] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--报名管理
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZX_01_A02_BMGL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZX_01_A02_BMGL](
	[BMM]  nvarchar(32)  NOT NULL,--报名码
	[SCHOOLID]  int  NOT NULL,--学校
	[XM]  nvarchar(200)  NOT NULL,--姓名
	[XB]  nvarchar(200)  NOT NULL,--性别
	[BXCZ]  nvarchar(200)  NOT NULL,--毕业初中
	[FQXM]  nvarchar(200)  NOT NULL,--父亲姓名
	[FQLXFS]  nvarchar(200)  NOT NULL,--父亲联系方式
	[MQXM]  nvarchar(200)  NOT NULL,--母亲姓名
	[MQLXFS]  nvarchar(200)  NOT NULL,--母亲联系方式
	[SFZX]  nvarchar(200)  NOT NULL,--是否住校
	[YLZD]  nvarchar(200)  NOT NULL,--预留字段1
CONSTRAINT [PK_EDU_ZX_01_A02_BMGL] PRIMARY KEY CLUSTERED
(
	[BMM] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--以下为添加注释语句
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'活动管理' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZX_01_A01_HDGL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZX_01_A01_HDGL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'活动报名表标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZX_01_A01_HDGL', @level2type=N'COLUMN',@level2name=N'HDBMBBT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'活动报名通知' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZX_01_A01_HDGL', @level2type=N'COLUMN',@level2name=N'HDBMTZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'活动启停状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZX_01_A01_HDGL', @level2type=N'COLUMN',@level2name=N'HDQTZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'报名管理' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZX_01_A02_BMGL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'报名码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZX_01_A02_BMGL', @level2type=N'COLUMN',@level2name=N'BMM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZX_01_A02_BMGL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZX_01_A02_BMGL', @level2type=N'COLUMN',@level2name=N'XM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'性别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZX_01_A02_BMGL', @level2type=N'COLUMN',@level2name=N'XB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'毕业初中' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZX_01_A02_BMGL', @level2type=N'COLUMN',@level2name=N'BXCZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父亲姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZX_01_A02_BMGL', @level2type=N'COLUMN',@level2name=N'FQXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父亲联系方式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZX_01_A02_BMGL', @level2type=N'COLUMN',@level2name=N'FQLXFS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'母亲姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZX_01_A02_BMGL', @level2type=N'COLUMN',@level2name=N'MQXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'母亲联系方式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZX_01_A02_BMGL', @level2type=N'COLUMN',@level2name=N'MQLXFS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否住校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZX_01_A02_BMGL', @level2type=N'COLUMN',@level2name=N'SFZX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'预留字段1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZX_01_A02_BMGL', @level2type=N'COLUMN',@level2name=N'YLZD'
GO
