--�ռ�����EDU_ZZ  ��������SqlBuilder0.1

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZ_ZYZWLB')
            and   type = 'U')
   drop table EDU_ZZ_ZYZWLB
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZ_ZXJFL')
            and   type = 'U')
   drop table EDU_ZZ_ZXJFL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZ_ZKKM')
            and   type = 'U')
   drop table EDU_ZZ_ZKKM
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZ_XKSH')
            and   type = 'U')
   drop table EDU_ZZ_XKSH
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZ_SXJDLB')
            and   type = 'U')
   drop table EDU_ZZ_SXJDLB
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZ_SXJDJNSXSSL')
            and   type = 'U')
   drop table EDU_ZZ_SXJDJNSXSSL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZ_PGQK')
            and   type = 'U')
   drop table EDU_ZZ_PGQK
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZ_KCFL')
            and   type = 'U')
   drop table EDU_ZZ_KCFL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZ_JZJSGW')
            and   type = 'U')
   drop table EDU_ZZ_JZJSGW
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZ_HJXZ')
            and   type = 'U')
   drop table EDU_ZZ_HJXZ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZ_JKKM')
            and   type = 'U')
   drop table EDU_ZZ_JKKM
go
--��Ҫְ��������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZ_ZYZWLB]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZ_ZYZWLB](
	[DM]  nvarchar(1)  NOT NULL,--����
	[MC]  nvarchar(6)  NOT NULL,--����
CONSTRAINT [PK_EDU_ZZ_ZYZWLB] PRIMARY KEY CLUSTERED
(
	[DM] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

INSERT INTO [EDU_ZZ_ZYZWLB]([DM] ,[MC]) VALUES('1', 'ѧУУ��')
INSERT INTO [EDU_ZZ_ZYZWLB]([DM] ,[MC]) VALUES('2', '����֯������')
INSERT INTO [EDU_ZZ_ZYZWLB]([DM] ,[MC]) VALUES('3', 'ѧУ��ϵ��')

--��ѧ��������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZ_ZXJFL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZ_ZXJFL](
	[DM]  nvarchar(1)  NOT NULL,--����
	[MC]  nvarchar(5)  NOT NULL,--����
CONSTRAINT [PK_EDU_ZZ_ZXJFL] PRIMARY KEY CLUSTERED
(
	[DM] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

INSERT INTO [EDU_ZZ_ZXJFL]([DM] ,[MC]) VALUES('1', '������ѧ��')
INSERT INTO [EDU_ZZ_ZXJFL]([DM] ,[MC]) VALUES('2', 'ѧУ��ѧ��')
INSERT INTO [EDU_ZZ_ZXJFL]([DM] ,[MC]) VALUES('3', '��ҵ��ѧ��')
INSERT INTO [EDU_ZZ_ZXJFL]([DM] ,[MC]) VALUES('4', '�����ѧ��')
INSERT INTO [EDU_ZZ_ZXJFL]([DM] ,[MC]) VALUES('5', '������ѧ��')

--�п���Ŀ����
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZ_ZKKM]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZ_ZKKM](
	[DM]  nvarchar(2)  NOT NULL,--����
	[MC]  nvarchar(2)  NOT NULL,--����
CONSTRAINT [PK_EDU_ZZ_ZKKM] PRIMARY KEY CLUSTERED
(
	[DM] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

INSERT INTO [EDU_ZZ_ZKKM]([DM] ,[MC]) VALUES('1', '����')
INSERT INTO [EDU_ZZ_ZKKM]([DM] ,[MC]) VALUES('2', '��ѧ')
INSERT INTO [EDU_ZZ_ZKKM]([DM] ,[MC]) VALUES('3', '����')
INSERT INTO [EDU_ZZ_ZKKM]([DM] ,[MC]) VALUES('4', '����')
INSERT INTO [EDU_ZZ_ZKKM]([DM] ,[MC]) VALUES('5', '����')
INSERT INTO [EDU_ZZ_ZKKM]([DM] ,[MC]) VALUES('6', '��ѧ')
INSERT INTO [EDU_ZZ_ZKKM]([DM] ,[MC]) VALUES('7', '����')
INSERT INTO [EDU_ZZ_ZKKM]([DM] ,[MC]) VALUES('8', '����')
INSERT INTO [EDU_ZZ_ZKKM]([DM] ,[MC]) VALUES('9', '��ʷ')
INSERT INTO [EDU_ZZ_ZKKM]([DM] ,[MC]) VALUES('99', '����')

--ѧ��ѡ�����״̬����
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZ_XKSH]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZ_XKSH](
	[DM]  nvarchar(1)  NOT NULL,--����
	[MC]  nvarchar(5)  NOT NULL,--����
CONSTRAINT [PK_EDU_ZZ_XKSH] PRIMARY KEY CLUSTERED
(
	[DM] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

INSERT INTO [EDU_ZZ_XKSH]([DM] ,[MC]) VALUES('1', '�����')
INSERT INTO [EDU_ZZ_XKSH]([DM] ,[MC]) VALUES('2', '���ͨ��')
INSERT INTO [EDU_ZZ_XKSH]([DM] ,[MC]) VALUES('3', '���δͨ��')

--ʵϰ����������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZ_SXJDLB]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZ_SXJDLB](
	[DM]  nvarchar(1)  NOT NULL,--����
	[MC]  nvarchar(8)  NOT NULL,--����
CONSTRAINT [PK_EDU_ZZ_SXJDLB] PRIMARY KEY CLUSTERED
(
	[DM] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

INSERT INTO [EDU_ZZ_SXJDLB]([DM] ,[MC]) VALUES('1', '������У��')
INSERT INTO [EDU_ZZ_SXJDLB]([DM] ,[MC]) VALUES('2', '������У��')
INSERT INTO [EDU_ZZ_SXJDLB]([DM] ,[MC]) VALUES('3', '��ʡ��������У��')
INSERT INTO [EDU_ZZ_SXJDLB]([DM] ,[MC]) VALUES('4', '��ʡ��������У��')
INSERT INTO [EDU_ZZ_SXJDLB]([DM] ,[MC]) VALUES('5', '��ʡ��У��')
INSERT INTO [EDU_ZZ_SXJDLB]([DM] ,[MC]) VALUES('6', '��ʡ��У��')

--ʵϰ���ؽ���ʵϰ����������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZ_SXJDJNSXSSL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZ_SXJDJNSXSSL](
	[DM]  nvarchar(1)  NOT NULL,--����
	[MC]  nvarchar(7)  NOT NULL,--����
CONSTRAINT [PK_EDU_ZZ_SXJDJNSXSSL] PRIMARY KEY CLUSTERED
(
	[DM] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

INSERT INTO [EDU_ZZ_SXJDJNSXSSL]([DM] ,[MC]) VALUES('1', '10������')
INSERT INTO [EDU_ZZ_SXJDJNSXSSL]([DM] ,[MC]) VALUES('2', '10-30��')
INSERT INTO [EDU_ZZ_SXJDJNSXSSL]([DM] ,[MC]) VALUES('3', '30-50��')
INSERT INTO [EDU_ZZ_SXJDJNSXSSL]([DM] ,[MC]) VALUES('4', '50-80��')
INSERT INTO [EDU_ZZ_SXJDJNSXSSL]([DM] ,[MC]) VALUES('5', '80-100��')
INSERT INTO [EDU_ZZ_SXJDJNSXSSL]([DM] ,[MC]) VALUES('6', '100������')

--�����������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZ_PGQK]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZ_PGQK](
	[DM]  nvarchar(1)  NOT NULL,--����
	[MC]  nvarchar(8)  NOT NULL,--����
CONSTRAINT [PK_EDU_ZZ_PGQK] PRIMARY KEY CLUSTERED
(
	[DM] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

INSERT INTO [EDU_ZZ_PGQK]([DM] ,[MC]) VALUES('1', '����ʾ��У')
INSERT INTO [EDU_ZZ_PGQK]([DM] ,[MC]) VALUES('2', '���Ҽ��ص�')
INSERT INTO [EDU_ZZ_PGQK]([DM] ,[MC]) VALUES('3', 'ʡ�����ص�')
INSERT INTO [EDU_ZZ_PGQK]([DM] ,[MC]) VALUES('4', '����������ɫѧУ')
INSERT INTO [EDU_ZZ_PGQK]([DM] ,[MC]) VALUES('5', '����ʵѵ����')
INSERT INTO [EDU_ZZ_PGQK]([DM] ,[MC]) VALUES('6', '����')

--�γ̷������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZ_KCFL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZ_KCFL](
	[DM]  nvarchar(1)  NOT NULL,--����
	[MC]  nvarchar(7)  NOT NULL,--����
CONSTRAINT [PK_EDU_ZZ_KCFL] PRIMARY KEY CLUSTERED
(
	[DM] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

INSERT INTO [EDU_ZZ_KCFL]([DM] ,[MC]) VALUES('1', '�Ļ�������')
INSERT INTO [EDU_ZZ_KCFL]([DM] ,[MC]) VALUES('2', 'רҵ������')
INSERT INTO [EDU_ZZ_KCFL]([DM] ,[MC]) VALUES('3', 'רҵ��')
INSERT INTO [EDU_ZZ_KCFL]([DM] ,[MC]) VALUES('4', '�Ƽ�ѡ�޿�')
INSERT INTO [EDU_ZZ_KCFL]([DM] ,[MC]) VALUES('5', '����ѡ�޿�')
INSERT INTO [EDU_ZZ_KCFL]([DM] ,[MC]) VALUES('6', '�γ������ʵϰ')
INSERT INTO [EDU_ZZ_KCFL]([DM] ,[MC]) VALUES('7', '����ʵϰ��ʵѵ')
INSERT INTO [EDU_ZZ_KCFL]([DM] ,[MC]) VALUES('8', '���ʵ��')
INSERT INTO [EDU_ZZ_KCFL]([DM] ,[MC]) VALUES('9', '��ѵ')

--��ְ��ʦ��λ����
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZ_JZJSGW]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZ_JZJSGW](
	[DM]  nvarchar(1)  NOT NULL,--����
	[MC]  nvarchar(4)  NOT NULL,--����
CONSTRAINT [PK_EDU_ZZ_JZJSGW] PRIMARY KEY CLUSTERED
(
	[DM] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

INSERT INTO [EDU_ZZ_JZJSGW]([DM] ,[MC]) VALUES('1', '�ճ���ѧ')
INSERT INTO [EDU_ZZ_JZJSGW]([DM] ,[MC]) VALUES('2', '���й���')
INSERT INTO [EDU_ZZ_JZJSGW]([DM] ,[MC]) VALUES('3', 'ʵϰָ��')
INSERT INTO [EDU_ZZ_JZJSGW]([DM] ,[MC]) VALUES('4', '������')

--�������ʴ���
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZ_HJXZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZ_HJXZ](
	[DM]  nvarchar(1)  NOT NULL,--����
	[MC]  nvarchar(2)  NOT NULL,--����
CONSTRAINT [PK_EDU_ZZ_HJXZ] PRIMARY KEY CLUSTERED
(
	[DM] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

INSERT INTO [EDU_ZZ_HJXZ]([DM] ,[MC]) VALUES('1', 'ũ��')
INSERT INTO [EDU_ZZ_HJXZ]([DM] ,[MC]) VALUES('2', '����')
INSERT INTO [EDU_ZZ_HJXZ]([DM] ,[MC]) VALUES('3', '����')

--�ݿ���Ŀ����
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZ_JKKM]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZ_JKKM](
	[DM]  nvarchar(1)  NOT NULL,--����
	[MC]  nvarchar(20)  NOT NULL,--��Ŀ����
	[KSSX]  int  NOT NULL,--����˳��
CONSTRAINT [PK_EDU_ZZ_JKKM] PRIMARY KEY CLUSTERED
(
	[DM] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

INSERT INTO [EDU_ZZ_JKKM]([DM] ,[MC] ,[KSSX]) VALUES('1', '��Ŀһ', '1')
INSERT INTO [EDU_ZZ_JKKM]([DM] ,[MC] ,[KSSX]) VALUES('2', '��Ŀ��', '2')
INSERT INTO [EDU_ZZ_JKKM]([DM] ,[MC] ,[KSSX]) VALUES('3', '��Ŀ��', '3')

--����Ϊ���ע�����
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ҫְ��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZ_ZYZWLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZ_ZYZWLB', @level2type=N'COLUMN',@level2name=N'DM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZ_ZYZWLB', @level2type=N'COLUMN',@level2name=N'MC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ѧ��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZ_ZXJFL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZ_ZXJFL', @level2type=N'COLUMN',@level2name=N'DM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZ_ZXJFL', @level2type=N'COLUMN',@level2name=N'MC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�п���Ŀ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZ_ZKKM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZ_ZKKM', @level2type=N'COLUMN',@level2name=N'DM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZ_ZKKM', @level2type=N'COLUMN',@level2name=N'MC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ѡ�����״̬����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZ_XKSH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZ_XKSH', @level2type=N'COLUMN',@level2name=N'DM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZ_XKSH', @level2type=N'COLUMN',@level2name=N'MC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ʵϰ����������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZ_SXJDLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZ_SXJDLB', @level2type=N'COLUMN',@level2name=N'DM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZ_SXJDLB', @level2type=N'COLUMN',@level2name=N'MC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ʵϰ���ؽ���ʵϰ����������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZ_SXJDJNSXSSL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZ_SXJDJNSXSSL', @level2type=N'COLUMN',@level2name=N'DM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZ_SXJDJNSXSSL', @level2type=N'COLUMN',@level2name=N'MC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZ_PGQK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZ_PGQK', @level2type=N'COLUMN',@level2name=N'DM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZ_PGQK', @level2type=N'COLUMN',@level2name=N'MC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�γ̷������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZ_KCFL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZ_KCFL', @level2type=N'COLUMN',@level2name=N'DM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZ_KCFL', @level2type=N'COLUMN',@level2name=N'MC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ְ��ʦ��λ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZ_JZJSGW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZ_JZJSGW', @level2type=N'COLUMN',@level2name=N'DM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZ_JZJSGW', @level2type=N'COLUMN',@level2name=N'MC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������ʴ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZ_HJXZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZ_HJXZ', @level2type=N'COLUMN',@level2name=N'DM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZ_HJXZ', @level2type=N'COLUMN',@level2name=N'MC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ݿ���Ŀ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZ_JKKM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZ_JKKM', @level2type=N'COLUMN',@level2name=N'DM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ŀ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZ_JKKM', @level2type=N'COLUMN',@level2name=N'MC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����˳��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZ_JKKM', @level2type=N'COLUMN',@level2name=N'KSSX'
GO
