--�ռ�����EDU_KTGL  ��������SqlBuilder0.1

if exists (select 1 from  sysobjects where  id = object_id('EDU_KTGL_01_A01_KTML')
            and   type = 'U')
   drop table EDU_KTGL_01_A01_KTML
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_KTGL_01_A03_KTJB')
            and   type = 'U')
   drop table EDU_KTGL_01_A03_KTJB
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_KTGL_01_A10_TZGG')
            and   type = 'U')
   drop table EDU_KTGL_01_A10_TZGG
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_KTGL_01_A11_YQLJLX')
            and   type = 'U')
   drop table EDU_KTGL_01_A11_YQLJLX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_KTGL_01_A12_YQLJ')
            and   type = 'U')
   drop table EDU_KTGL_01_A12_YQLJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_KTGL_05_A01_KTNR')
            and   type = 'U')
   drop table EDU_KTGL_05_A01_KTNR
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_KTGL_06_A01_XZZQ')
            and   type = 'U')
   drop table EDU_KTGL_06_A01_XZZQ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_KTGL_07_A01_FWLL')
            and   type = 'U')
   drop table EDU_KTGL_07_A01_FWLL
go
--����Ŀ¼
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_KTGL_01_A01_KTML]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_KTGL_01_A01_KTML](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[MLMC]  nvarchar(300)  NOT NULL,--Ŀ¼����
	[FMLID]  int  NOT NULL,--��Ŀ¼ID
	[PLSX]  int  NOT NULL,--����˳��
	[SFSYZS]  int  NOT NULL,--�Ƿ���ҳչʾ
	[SFQY]  int  NOT NULL,--�Ƿ�����
	[URL]  nvarchar(500)  NOT NULL,--��ַ
CONSTRAINT [PK_EDU_KTGL_01_A01_KTML] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--���⼶��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_KTGL_01_A03_KTJB]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_KTGL_01_A03_KTJB](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[JBMC]  nvarchar(50)  NOT NULL,--��������
CONSTRAINT [PK_EDU_KTGL_01_A03_KTJB] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--֪ͨ����
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_KTGL_01_A10_TZGG]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_KTGL_01_A10_TZGG](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[TITLE]  nvarchar(100)  NOT NULL,--����
	[FBRID]  nvarchar(20)  NOT NULL,--������ID
	[FBRXM]  nvarchar(50)  NOT NULL,--����������
	[FBBM]  nvarchar(50)  NULL,--��������
	[FBSJ]  datetime  NOT NULL,--����ʱ��
	[NR]  text  NULL,--����
	[TPDZ]  nvarchar(300)  NULL,--ͼƬ��ַ
	[DJL]  int  NULL,--�����
	[SHZT]  int  NOT NULL,--���״̬
	[SHRID]  nvarchar(20)  NULL,--�����ID
	[SHRXM]  nvarchar(50)  NULL,--���������
	[SHSJ]  datetime  NOT NULL,--���ʱ��
	[SFXS]  int  NOT NULL,--�Ƿ���ʾ
	[SFZD]  int  NOT NULL,--�Ƿ��ö�
CONSTRAINT [PK_EDU_KTGL_01_A10_TZGG] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--������������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_KTGL_01_A11_YQLJLX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_KTGL_01_A11_YQLJLX](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[NAME]  nvarchar(50)  NOT NULL,--������
	[SHOWSTYLE]  int  NOT NULL,--��ʾ��ʽ
CONSTRAINT [PK_EDU_KTGL_01_A11_YQLJLX] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--��������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_KTGL_01_A12_YQLJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_KTGL_01_A12_YQLJ](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[YQLJLXID]  int  NOT NULL,--������������ID
	[TITLE]  nvarchar(50)  NOT NULL,--����
	[IMAGEURL]  nvarchar(500)  NULL,--ͼƬ
	[URL]  nvarchar(300)  NOT NULL,--����
CONSTRAINT [PK_EDU_KTGL_01_A12_YQLJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--��������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_KTGL_05_A01_KTNR]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_KTGL_05_A01_KTNR](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[KTJBID]  int  NOT NULL,--���⼶��ID
	[KTMC]  nvarchar(100)  NOT NULL,--��������
	[KTFZRID]  nvarchar(20)  NOT NULL,--���⸺����
	[KTFZRQQ]  nvarchar(20)  NOT NULL,--���⸺����QQ
	[KTFZRDH]  nvarchar(20)  NOT NULL,--���⸺���˵绰
	[CYRYMD]  text  NOT NULL,--������Ա����
	[YJFA]  text  NOT NULL,--�о�����
	[YJCG]  text  NOT NULL,--�о��ɹ�
	[JTBG]  text  NOT NULL,--���ⱨ��
	[MLID]  int  NOT NULL,--Ŀ¼ID
	[SHZT]  int  NOT NULL,--���״̬
	[LXSJ]  datetime  NOT NULL,--����ʱ��
	[JTSJ]  datetime  NOT NULL,--����ʱ��
CONSTRAINT [PK_EDU_KTGL_05_A01_KTNR] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--����ר��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_KTGL_06_A01_XZZQ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_KTGL_06_A01_XZZQ](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[BT]  nvarchar(200)  NOT NULL,--����
	[NR]  text  NOT NULL,--����
CONSTRAINT [PK_EDU_KTGL_06_A01_XZZQ] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--��������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_KTGL_07_A01_FWLL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_KTGL_07_A01_FWLL](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[FWIP]  nvarchar(50)  NOT NULL,--����IP
	[FWLJ]  nvarchar(500)  NOT NULL,--��������
	[FWSJ]  datetime  NOT NULL,--����ʱ��
CONSTRAINT [PK_EDU_KTGL_07_A01_FWLL] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--����Ϊ���ע�����
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����Ŀ¼' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_01_A01_KTML'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_01_A01_KTML', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_01_A01_KTML', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ŀ¼����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_01_A01_KTML', @level2type=N'COLUMN',@level2name=N'MLMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ŀ¼ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_01_A01_KTML', @level2type=N'COLUMN',@level2name=N'FMLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����˳��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_01_A01_KTML', @level2type=N'COLUMN',@level2name=N'PLSX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ���ҳչʾ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_01_A01_KTML', @level2type=N'COLUMN',@level2name=N'SFSYZS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_01_A01_KTML', @level2type=N'COLUMN',@level2name=N'SFQY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ַ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_01_A01_KTML', @level2type=N'COLUMN',@level2name=N'URL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���⼶��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_01_A03_KTJB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_01_A03_KTJB', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_01_A03_KTJB', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_01_A03_KTJB', @level2type=N'COLUMN',@level2name=N'JBMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'֪ͨ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_01_A10_TZGG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_01_A10_TZGG', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_01_A10_TZGG', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_01_A10_TZGG', @level2type=N'COLUMN',@level2name=N'TITLE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_01_A10_TZGG', @level2type=N'COLUMN',@level2name=N'FBRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_01_A10_TZGG', @level2type=N'COLUMN',@level2name=N'FBRXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_01_A10_TZGG', @level2type=N'COLUMN',@level2name=N'FBBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_01_A10_TZGG', @level2type=N'COLUMN',@level2name=N'FBSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_01_A10_TZGG', @level2type=N'COLUMN',@level2name=N'NR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ͼƬ��ַ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_01_A10_TZGG', @level2type=N'COLUMN',@level2name=N'TPDZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_01_A10_TZGG', @level2type=N'COLUMN',@level2name=N'DJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_01_A10_TZGG', @level2type=N'COLUMN',@level2name=N'SHZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_01_A10_TZGG', @level2type=N'COLUMN',@level2name=N'SHRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_01_A10_TZGG', @level2type=N'COLUMN',@level2name=N'SHRXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_01_A10_TZGG', @level2type=N'COLUMN',@level2name=N'SHSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ���ʾ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_01_A10_TZGG', @level2type=N'COLUMN',@level2name=N'SFXS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ��ö�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_01_A10_TZGG', @level2type=N'COLUMN',@level2name=N'SFZD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_01_A11_YQLJLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_01_A11_YQLJLX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_01_A11_YQLJLX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_01_A11_YQLJLX', @level2type=N'COLUMN',@level2name=N'NAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʾ��ʽ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_01_A11_YQLJLX', @level2type=N'COLUMN',@level2name=N'SHOWSTYLE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_01_A12_YQLJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_01_A12_YQLJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_01_A12_YQLJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_01_A12_YQLJ', @level2type=N'COLUMN',@level2name=N'YQLJLXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_01_A12_YQLJ', @level2type=N'COLUMN',@level2name=N'TITLE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ͼƬ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_01_A12_YQLJ', @level2type=N'COLUMN',@level2name=N'IMAGEURL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_01_A12_YQLJ', @level2type=N'COLUMN',@level2name=N'URL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_05_A01_KTNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_05_A01_KTNR', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_05_A01_KTNR', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���⼶��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_05_A01_KTNR', @level2type=N'COLUMN',@level2name=N'KTJBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_05_A01_KTNR', @level2type=N'COLUMN',@level2name=N'KTMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���⸺����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_05_A01_KTNR', @level2type=N'COLUMN',@level2name=N'KTFZRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���⸺����QQ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_05_A01_KTNR', @level2type=N'COLUMN',@level2name=N'KTFZRQQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���⸺���˵绰' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_05_A01_KTNR', @level2type=N'COLUMN',@level2name=N'KTFZRDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������Ա����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_05_A01_KTNR', @level2type=N'COLUMN',@level2name=N'CYRYMD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�о�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_05_A01_KTNR', @level2type=N'COLUMN',@level2name=N'YJFA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�о��ɹ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_05_A01_KTNR', @level2type=N'COLUMN',@level2name=N'YJCG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ⱨ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_05_A01_KTNR', @level2type=N'COLUMN',@level2name=N'JTBG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ŀ¼ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_05_A01_KTNR', @level2type=N'COLUMN',@level2name=N'MLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_05_A01_KTNR', @level2type=N'COLUMN',@level2name=N'SHZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_05_A01_KTNR', @level2type=N'COLUMN',@level2name=N'LXSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_05_A01_KTNR', @level2type=N'COLUMN',@level2name=N'JTSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ר��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_06_A01_XZZQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_06_A01_XZZQ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_06_A01_XZZQ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_06_A01_XZZQ', @level2type=N'COLUMN',@level2name=N'BT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_06_A01_XZZQ', @level2type=N'COLUMN',@level2name=N'NR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_07_A01_FWLL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_07_A01_FWLL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_07_A01_FWLL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����IP' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_07_A01_FWLL', @level2type=N'COLUMN',@level2name=N'FWIP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_07_A01_FWLL', @level2type=N'COLUMN',@level2name=N'FWLJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_KTGL_07_A01_FWLL', @level2type=N'COLUMN',@level2name=N'FWSJ'
GO
