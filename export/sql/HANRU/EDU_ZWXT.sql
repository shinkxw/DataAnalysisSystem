--空间名：EDU_ZWXT  生成器：SqlBuilder0.1

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZWXT_01_A01_JSDCCP')
            and   type = 'U')
   drop table EDU_ZWXT_01_A01_JSDCCP
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZWXT_01_A02_JSDCJL')
            and   type = 'U')
   drop table EDU_ZWXT_01_A02_JSDCJL
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
	[TP]  text  NOT NULL,--图片
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
