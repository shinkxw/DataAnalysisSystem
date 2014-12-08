--�ռ�����EDU_XYDT  ��������SqlBuilder0.1

if exists (select 1 from  sysobjects where  id = object_id('EDU_XYDT_01_A01_SPML')
            and   type = 'U')
   drop table EDU_XYDT_01_A01_SPML
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_XYDT_01_A03_SPLX')
            and   type = 'U')
   drop table EDU_XYDT_01_A03_SPLX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_XYDT_01_A06_SPWJ')
            and   type = 'U')
   drop table EDU_XYDT_01_A06_SPWJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_XYDT_01_A08_SPWJPL')
            and   type = 'U')
   drop table EDU_XYDT_01_A08_SPWJPL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_XYDT_01_A10_TZGG')
            and   type = 'U')
   drop table EDU_XYDT_01_A10_TZGG
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_XYDT_01_A11_YQLJLX')
            and   type = 'U')
   drop table EDU_XYDT_01_A11_YQLJLX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_XYDT_01_A12_YQLJ')
            and   type = 'U')
   drop table EDU_XYDT_01_A12_YQLJ
go
--��ƵĿ¼
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_XYDT_01_A01_SPML]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_XYDT_01_A01_SPML](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[MLMC]  nvarchar(300)  NOT NULL,--Ŀ¼����
	[FMLID]  int  NOT NULL,--��Ŀ¼ID
	[PLSX]  int  NOT NULL,--����˳��
	[SFSYZS]  int  NOT NULL,--�Ƿ���ҳչʾ
	[SFQY]  int  NOT NULL,--�Ƿ�����
	[URL]  nvarchar(500)  NOT NULL,--��ַ
	[FMLIDLB]  nvarchar(500)  NOT NULL,--��Ŀ¼ID�б�
CONSTRAINT [PK_EDU_XYDT_01_A01_SPML] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--��Ƶ����
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_XYDT_01_A03_SPLX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_XYDT_01_A03_SPLX](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[LXMC]  nvarchar(50)  NOT NULL,--��������
CONSTRAINT [PK_EDU_XYDT_01_A03_SPLX] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--��Ƶ�ļ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_XYDT_01_A06_SPWJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_XYDT_01_A06_SPWJ](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[SPMLID]  int  NOT NULL,--��ƵĿ¼ID
	[ZYBT]  nvarchar(300)  NOT NULL,--��Ƶ����
	[GJZ]  nvarchar(50)  NOT NULL,--�ؼ���
	[SYXZ]  int  NOT NULL,--ʹ������
	[LY]  nvarchar(20)  NOT NULL,--��Դ
	[WBSPLJ]  nvarchar(200)  NOT NULL,--�ⲿ��Ƶ����
	[YYZID]  nvarchar(20)  NOT NULL,--ӵ����ID
	[SPMC]  nvarchar(300)  NOT NULL,--��Ƶ����
	[SPDX]  nvarchar(300)  NOT NULL,--��Ƶ��С
	[SPLJ]  nvarchar(300)  NOT NULL,--��Ƶ·��
	[SPLXID]  int  NOT NULL,--��Ƶ����ID
	[SPPJ]  int  NOT NULL,--��Ƶ����
	[SLT]  nvarchar(300)  NOT NULL,--����ͼ
	[SCSJ]  datetime  NOT NULL,--�ϴ�ʱ��
	[LLRC]  int  NOT NULL,--����˴�
	[XZRC]  int  NOT NULL,--�����˴�
	[PLRC]  int  NOT NULL,--�����˴�
	[PFRC]  int  NOT NULL,--�����˴�
	[SHZT]  int  NOT NULL,--���״̬
	[SHRID]  nvarchar(20)  NOT NULL,--�����ID
	[SHSJ]  datetime  NOT NULL,--���ʱ��
	[ZYDXKB]  int  NOT NULL,--��Դ��С(KB)
CONSTRAINT [PK_EDU_XYDT_01_A06_SPWJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--��Ƶ�ļ�����
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_XYDT_01_A08_SPWJPL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_XYDT_01_A08_SPWJPL](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[SPWJID]  int  NOT NULL,--��Ƶ�ļ�ID
	[PL]  nvarchar(200)  NOT NULL,--����
	[PLRID]  nvarchar(20)  NOT NULL,--������ID
	[PLSJ]  datetime  NOT NULL,--����ʱ��
CONSTRAINT [PK_EDU_XYDT_01_A08_SPWJPL] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--֪ͨ����
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_XYDT_01_A10_TZGG]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_XYDT_01_A10_TZGG](
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
CONSTRAINT [PK_EDU_XYDT_01_A10_TZGG] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--������������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_XYDT_01_A11_YQLJLX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_XYDT_01_A11_YQLJLX](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[NAME]  nvarchar(50)  NOT NULL,--������
	[SHOWSTYLE]  int  NOT NULL,--��ʾ��ʽ
CONSTRAINT [PK_EDU_XYDT_01_A11_YQLJLX] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--��������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_XYDT_01_A12_YQLJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_XYDT_01_A12_YQLJ](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[YQLJLXID]  int  NOT NULL,--������������ID
	[TITLE]  nvarchar(50)  NOT NULL,--����
	[IMAGEURL]  nvarchar(500)  NULL,--ͼƬ
	[URL]  nvarchar(300)  NOT NULL,--����
CONSTRAINT [PK_EDU_XYDT_01_A12_YQLJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC,
	[YQLJLXID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--����Ϊ���ע�����
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ƵĿ¼' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A01_SPML'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A01_SPML', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A01_SPML', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ŀ¼����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A01_SPML', @level2type=N'COLUMN',@level2name=N'MLMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ŀ¼ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A01_SPML', @level2type=N'COLUMN',@level2name=N'FMLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����˳��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A01_SPML', @level2type=N'COLUMN',@level2name=N'PLSX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ���ҳչʾ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A01_SPML', @level2type=N'COLUMN',@level2name=N'SFSYZS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A01_SPML', @level2type=N'COLUMN',@level2name=N'SFQY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ַ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A01_SPML', @level2type=N'COLUMN',@level2name=N'URL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ŀ¼ID�б�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A01_SPML', @level2type=N'COLUMN',@level2name=N'FMLIDLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ƶ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A03_SPLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A03_SPLX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A03_SPLX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A03_SPLX', @level2type=N'COLUMN',@level2name=N'LXMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ƶ�ļ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A06_SPWJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A06_SPWJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A06_SPWJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ƵĿ¼ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A06_SPWJ', @level2type=N'COLUMN',@level2name=N'SPMLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ƶ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A06_SPWJ', @level2type=N'COLUMN',@level2name=N'ZYBT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ؼ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A06_SPWJ', @level2type=N'COLUMN',@level2name=N'GJZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ʹ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A06_SPWJ', @level2type=N'COLUMN',@level2name=N'SYXZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Դ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A06_SPWJ', @level2type=N'COLUMN',@level2name=N'LY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ⲿ��Ƶ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A06_SPWJ', @level2type=N'COLUMN',@level2name=N'WBSPLJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ӵ����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A06_SPWJ', @level2type=N'COLUMN',@level2name=N'YYZID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ƶ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A06_SPWJ', @level2type=N'COLUMN',@level2name=N'SPMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ƶ��С' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A06_SPWJ', @level2type=N'COLUMN',@level2name=N'SPDX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ƶ·��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A06_SPWJ', @level2type=N'COLUMN',@level2name=N'SPLJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ƶ����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A06_SPWJ', @level2type=N'COLUMN',@level2name=N'SPLXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ƶ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A06_SPWJ', @level2type=N'COLUMN',@level2name=N'SPPJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ͼ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A06_SPWJ', @level2type=N'COLUMN',@level2name=N'SLT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ϴ�ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A06_SPWJ', @level2type=N'COLUMN',@level2name=N'SCSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����˴�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A06_SPWJ', @level2type=N'COLUMN',@level2name=N'LLRC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����˴�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A06_SPWJ', @level2type=N'COLUMN',@level2name=N'XZRC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����˴�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A06_SPWJ', @level2type=N'COLUMN',@level2name=N'PLRC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����˴�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A06_SPWJ', @level2type=N'COLUMN',@level2name=N'PFRC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A06_SPWJ', @level2type=N'COLUMN',@level2name=N'SHZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A06_SPWJ', @level2type=N'COLUMN',@level2name=N'SHRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A06_SPWJ', @level2type=N'COLUMN',@level2name=N'SHSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Դ��С(KB)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A06_SPWJ', @level2type=N'COLUMN',@level2name=N'ZYDXKB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ƶ�ļ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A08_SPWJPL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A08_SPWJPL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A08_SPWJPL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ƶ�ļ�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A08_SPWJPL', @level2type=N'COLUMN',@level2name=N'SPWJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A08_SPWJPL', @level2type=N'COLUMN',@level2name=N'PL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A08_SPWJPL', @level2type=N'COLUMN',@level2name=N'PLRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A08_SPWJPL', @level2type=N'COLUMN',@level2name=N'PLSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'֪ͨ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A10_TZGG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A10_TZGG', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A10_TZGG', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A10_TZGG', @level2type=N'COLUMN',@level2name=N'TITLE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A10_TZGG', @level2type=N'COLUMN',@level2name=N'FBRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A10_TZGG', @level2type=N'COLUMN',@level2name=N'FBRXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A10_TZGG', @level2type=N'COLUMN',@level2name=N'FBBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A10_TZGG', @level2type=N'COLUMN',@level2name=N'FBSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A10_TZGG', @level2type=N'COLUMN',@level2name=N'NR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ͼƬ��ַ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A10_TZGG', @level2type=N'COLUMN',@level2name=N'TPDZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A10_TZGG', @level2type=N'COLUMN',@level2name=N'DJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A10_TZGG', @level2type=N'COLUMN',@level2name=N'SHZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A10_TZGG', @level2type=N'COLUMN',@level2name=N'SHRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A10_TZGG', @level2type=N'COLUMN',@level2name=N'SHRXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A10_TZGG', @level2type=N'COLUMN',@level2name=N'SHSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ���ʾ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A10_TZGG', @level2type=N'COLUMN',@level2name=N'SFXS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ��ö�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A10_TZGG', @level2type=N'COLUMN',@level2name=N'SFZD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A11_YQLJLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A11_YQLJLX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A11_YQLJLX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A11_YQLJLX', @level2type=N'COLUMN',@level2name=N'NAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʾ��ʽ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A11_YQLJLX', @level2type=N'COLUMN',@level2name=N'SHOWSTYLE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A12_YQLJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A12_YQLJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A12_YQLJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A12_YQLJ', @level2type=N'COLUMN',@level2name=N'YQLJLXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A12_YQLJ', @level2type=N'COLUMN',@level2name=N'TITLE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ͼƬ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A12_YQLJ', @level2type=N'COLUMN',@level2name=N'IMAGEURL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_XYDT_01_A12_YQLJ', @level2type=N'COLUMN',@level2name=N'URL'
GO
