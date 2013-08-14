
if exists (select 1 from  sysobjects where  id = object_id('EDU_ELE_02_YHFZ')
            and   type = 'U')
   drop table EDU_ELE_02_YHFZ
go
--用户分组表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ELE_02_YHFZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ELE_02_YHFZ](
	[ID]  int  NOT NULL,--分组ID
	[SCHOOLID]  int  NOT NULL,--学校ID
	[APPID]  int  NOT NULL,--应用ID
	[YHID]  nvarchar(20)  NOT NULL,--用户ID
	[SJFZID]  int  NOT NULL,--上级分组ID
	[FZMC]  nvarchar(100)  NOT NULL,--分组名称
CONSTRAINT [PK_EDU_ELE_02_YHFZ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户分组表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_02_YHFZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分组ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_02_YHFZ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_02_YHFZ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'应用ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_02_YHFZ', @level2type=N'COLUMN',@level2name=N'APPID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_02_YHFZ', @level2type=N'COLUMN',@level2name=N'YHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上级分组ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_02_YHFZ', @level2type=N'COLUMN',@level2name=N'SJFZID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分组名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_02_YHFZ', @level2type=N'COLUMN',@level2name=N'FZMC'
GO


if exists (select 1 from  sysobjects where  id = object_id('EDU_ELE_02_FZYH')
            and   type = 'U')
   drop table EDU_ELE_02_FZYH
go
--分组用户表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ELE_02_FZYH]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ELE_02_FZYH](
	[ID]  int  NOT NULL,--分组教师ID
	[SCHOOLID]  int  NOT NULL,--学校ID
	[APPID]  int  NOT NULL,--应用ID
	[FZID]  int  NOT NULL,--分组ID
	[FZYHID]  nvarchar(20)  NOT NULL,--分组用户ID
CONSTRAINT [PK_EDU_ELE_02_FZYH] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分组用户表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_02_FZYH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分组教师ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_02_FZYH', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_02_FZYH', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'应用ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_02_FZYH', @level2type=N'COLUMN',@level2name=N'APPID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分组ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_02_FZYH', @level2type=N'COLUMN',@level2name=N'FZID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分组用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_02_FZYH', @level2type=N'COLUMN',@level2name=N'FZYHID'
GO

