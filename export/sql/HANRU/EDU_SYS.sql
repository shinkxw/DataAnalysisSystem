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

if exists (select 1 from  sysobjects where  id = object_id('EDU_SYS_01_MICROMODULE')
            and   type = 'U')
   drop table EDU_SYS_01_MICROMODULE
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

INSERT INTO [EDU_SYS_01_CONFIG]([ID] ,[VALUE]) VALUES('1001', 'http://www.114school.com/yxt/index.html')
INSERT INTO [EDU_SYS_01_CONFIG]([ID] ,[VALUE]) VALUES('1002', 'http://sso.114school.com/cas/')
INSERT INTO [EDU_SYS_01_CONFIG]([ID] ,[VALUE]) VALUES('1003', 'http://www2.114school.com/203S/api4LoginUser.do')
INSERT INTO [EDU_SYS_01_CONFIG]([ID] ,[VALUE]) VALUES('1004', 'http://122.229.30.151:8888/MsgService/SiServer')
INSERT INTO [EDU_SYS_01_CONFIG]([ID] ,[VALUE]) VALUES('1005', '0573')
INSERT INTO [EDU_SYS_01_CONFIG]([ID] ,[VALUE]) VALUES('1006', '83572000')
INSERT INTO [EDU_SYS_01_CONFIG]([ID] ,[VALUE]) VALUES('1007', '83572499')
INSERT INTO [EDU_SYS_01_CONFIG]([ID] ,[VALUE]) VALUES('2001', '600')
INSERT INTO [EDU_SYS_01_CONFIG]([ID] ,[VALUE]) VALUES('9001', '�ر����ܼ��')
INSERT INTO [EDU_SYS_01_CONFIG]([ID] ,[VALUE]) VALUES('9002', '�������ܼ��')

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


--������
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
	[OrderIndex]  int  NOT NULL,--
CONSTRAINT [PK_EDU_SYS_01_MODULE] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO


--΢������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_SYS_01_MICROMODULE]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_SYS_01_MICROMODULE](
	[ID]  int  NOT NULL,--���
	[MODULEID]  int  NOT NULL,--ģ��ID
	[NAME]  nvarchar(20)  NOT NULL,--����
	[URL]  nvarchar(300)  NOT NULL,--��ַ
	[PICTYPE]  int  NOT NULL,--ͼƬ����
	[PIC1]  nvarchar(300)  NOT NULL,--ͼƬһ
	[PIC2]  nvarchar(300)  NOT NULL,--ͼƬ��
CONSTRAINT [PK_EDU_SYS_01_MICROMODULE] PRIMARY KEY CLUSTERED
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
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_SYS_01_MODULE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'΢������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_SYS_01_MICROMODULE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_SYS_01_MICROMODULE', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ģ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_SYS_01_MICROMODULE', @level2type=N'COLUMN',@level2name=N'MODULEID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_SYS_01_MICROMODULE', @level2type=N'COLUMN',@level2name=N'NAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ַ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_SYS_01_MICROMODULE', @level2type=N'COLUMN',@level2name=N'URL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ͼƬ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_SYS_01_MICROMODULE', @level2type=N'COLUMN',@level2name=N'PICTYPE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ͼƬһ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_SYS_01_MICROMODULE', @level2type=N'COLUMN',@level2name=N'PIC1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ͼƬ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_SYS_01_MICROMODULE', @level2type=N'COLUMN',@level2name=N'PIC2'
GO
