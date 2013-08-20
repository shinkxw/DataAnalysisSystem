--�ռ�����EDU_SYS  ��������SqlBuilder0.1

if exists (select 1 from  sysobjects where  id = object_id('EDU_SYS_01_CONFIG')
            and   type = 'U')
   drop table EDU_SYS_01_CONFIG
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_SYS_01_XN')
            and   type = 'U')
   drop table EDU_SYS_01_XN
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_SYS_01_MODULE')
            and   type = 'U')
   drop table EDU_SYS_01_MODULE
go
--ȫ�����ñ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_SYS_01_CONFIG]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_SYS_01_CONFIG](
	[ID]  int  NOT NULL,--����ID
	[VALUE]  nvarchar(200)  NOT NULL,--����ֵ
CONSTRAINT [PK_EDU_SYS_01_CONFIG] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO


--ѧ���
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_SYS_01_XN]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_SYS_01_XN](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[XN]  nvarchar(9)  NOT NULL,--ѧ��
CONSTRAINT [PK_EDU_SYS_01_XN] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

INSERT INTO [EDU_SYS_01_XN]([ID] ,[SCHOOLID] ,[XN]) VALUES('2012', '0', '2012ѧ��')
INSERT INTO [EDU_SYS_01_XN]([ID] ,[SCHOOLID] ,[XN]) VALUES('2013', '0', '2013ѧ��')
INSERT INTO [EDU_SYS_01_XN]([ID] ,[SCHOOLID] ,[XN]) VALUES('2014', '0', '2014ѧ��')
INSERT INTO [EDU_SYS_01_XN]([ID] ,[SCHOOLID] ,[XN]) VALUES('2015', '0', '2015ѧ��')
INSERT INTO [EDU_SYS_01_XN]([ID] ,[SCHOOLID] ,[XN]) VALUES('2016', '0', '2016ѧ��')
INSERT INTO [EDU_SYS_01_XN]([ID] ,[SCHOOLID] ,[XN]) VALUES('2017', '0', '2017ѧ��')
INSERT INTO [EDU_SYS_01_XN]([ID] ,[SCHOOLID] ,[XN]) VALUES('2018', '0', '2018ѧ��')
INSERT INTO [EDU_SYS_01_XN]([ID] ,[SCHOOLID] ,[XN]) VALUES('2019', '0', '2019ѧ��')
INSERT INTO [EDU_SYS_01_XN]([ID] ,[SCHOOLID] ,[XN]) VALUES('2020', '0', '2020ѧ��')
INSERT INTO [EDU_SYS_01_XN]([ID] ,[SCHOOLID] ,[XN]) VALUES('2021', '0', '2021ѧ��')
INSERT INTO [EDU_SYS_01_XN]([ID] ,[SCHOOLID] ,[XN]) VALUES('2022', '0', '2022ѧ��')
INSERT INTO [EDU_SYS_01_XN]([ID] ,[SCHOOLID] ,[XN]) VALUES('2023', '0', '2023ѧ��')
INSERT INTO [EDU_SYS_01_XN]([ID] ,[SCHOOLID] ,[XN]) VALUES('2024', '0', '2024ѧ��')
INSERT INTO [EDU_SYS_01_XN]([ID] ,[SCHOOLID] ,[XN]) VALUES('2025', '0', '2025ѧ��')
INSERT INTO [EDU_SYS_01_XN]([ID] ,[SCHOOLID] ,[XN]) VALUES('2026', '0', '2026ѧ��')
INSERT INTO [EDU_SYS_01_XN]([ID] ,[SCHOOLID] ,[XN]) VALUES('2027', '0', '2027ѧ��')
INSERT INTO [EDU_SYS_01_XN]([ID] ,[SCHOOLID] ,[XN]) VALUES('2028', '0', '2028ѧ��')
INSERT INTO [EDU_SYS_01_XN]([ID] ,[SCHOOLID] ,[XN]) VALUES('2029', '0', '2029ѧ��')
INSERT INTO [EDU_SYS_01_XN]([ID] ,[SCHOOLID] ,[XN]) VALUES('2030', '0', '2030ѧ��')
INSERT INTO [EDU_SYS_01_XN]([ID] ,[SCHOOLID] ,[XN]) VALUES('2031', '0', '2031ѧ��')
INSERT INTO [EDU_SYS_01_XN]([ID] ,[SCHOOLID] ,[XN]) VALUES('2032', '0', '2032ѧ��')
INSERT INTO [EDU_SYS_01_XN]([ID] ,[SCHOOLID] ,[XN]) VALUES('2033', '0', '2033ѧ��')
INSERT INTO [EDU_SYS_01_XN]([ID] ,[SCHOOLID] ,[XN]) VALUES('2034', '0', '2034ѧ��')
INSERT INTO [EDU_SYS_01_XN]([ID] ,[SCHOOLID] ,[XN]) VALUES('2035', '0', '2035ѧ��')

--
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_SYS_01_MODULE]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_SYS_01_MODULE](
	[ID]  int  NOT NULL,--
	[APPID]  int  NOT NULL,--
	[NAME]  nvarchar(20)  NOT NULL,--
	[Depth]  int  NOT NULL,--
	[PID]  int  NOT NULL,--
	[MenuDisp]  int  NOT NULL,--
	[MenuUserType]  int  NOT NULL,--
	[Link]  nvarchar(100)  NOT NULL,--
CONSTRAINT [PK_EDU_SYS_01_MODULE] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO


--����Ϊ���ע�����
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ȫ�����ñ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_SYS_01_CONFIG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_SYS_01_CONFIG', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ֵ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_SYS_01_CONFIG', @level2type=N'COLUMN',@level2name=N'VALUE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_SYS_01_XN'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_SYS_01_XN', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_SYS_01_XN', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_SYS_01_XN', @level2type=N'COLUMN',@level2name=N'XN'
GO
