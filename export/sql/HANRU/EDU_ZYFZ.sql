--�ռ�����EDU_ZYFZ  ��������SqlBuilder0.1

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZYFZ_01_A01_XK')
            and   type = 'U')
   drop table EDU_ZYFZ_01_A01_XK
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZYFZ_01_A02_NJ')
            and   type = 'U')
   drop table EDU_ZYFZ_01_A02_NJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZYFZ_01_A03_RYJB')
            and   type = 'U')
   drop table EDU_ZYFZ_01_A03_RYJB
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZYFZ_01_A04_GZMB')
            and   type = 'U')
   drop table EDU_ZYFZ_01_A04_GZMB
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZYFZ_01_A05_KHQX')
            and   type = 'U')
   drop table EDU_ZYFZ_01_A05_KHQX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZYFZ_02_A01_LMLB')
            and   type = 'U')
   drop table EDU_ZYFZ_02_A01_LMLB
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZYFZ_02_A02_GZNRLM')
            and   type = 'U')
   drop table EDU_ZYFZ_02_A02_GZNRLM
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZYFZ_02_A03_XQLM')
            and   type = 'U')
   drop table EDU_ZYFZ_02_A03_XQLM
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZYFZ_02_A04_GZNR')
            and   type = 'U')
   drop table EDU_ZYFZ_02_A04_GZNR
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZYFZ_02_A05_GZNRPL')
            and   type = 'U')
   drop table EDU_ZYFZ_02_A05_GZNRPL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZYFZ_02_A06_GRRY')
            and   type = 'U')
   drop table EDU_ZYFZ_02_A06_GRRY
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZYFZ_02_A07_XQGRLM')
            and   type = 'U')
   drop table EDU_ZYFZ_02_A07_XQGRLM
go
--ѧ�Ʊ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZYFZ_01_A01_XK]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZYFZ_01_A01_XK](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[XKMC]  nvarchar(50)  NOT NULL,--ѧ������
CONSTRAINT [PK_EDU_ZYFZ_01_A01_XK] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�꼶��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZYFZ_01_A02_NJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZYFZ_01_A02_NJ](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[NJMC]  nvarchar(50)  NOT NULL,--�꼶����
CONSTRAINT [PK_EDU_ZYFZ_01_A02_NJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--���������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZYFZ_01_A03_RYJB]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZYFZ_01_A03_RYJB](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[RYJBMC]  nvarchar(50)  NOT NULL,--������������
CONSTRAINT [PK_EDU_ZYFZ_01_A03_RYJB] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--����ģ���
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZYFZ_01_A04_GZMB]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZYFZ_01_A04_GZMB](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[MBMC]  nvarchar(50)  NOT NULL,--ģ������
	[MBNR]  text  NOT NULL,--ģ������
CONSTRAINT [PK_EDU_ZYFZ_01_A04_GZMB] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--����Ȩ�ޱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZYFZ_01_A05_KHQX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZYFZ_01_A05_KHQX](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[FZMC]  nvarchar(80)  NOT NULL,--��������
	[KHRID]  nvarchar(20)  NOT NULL,--������ID
	[BKHRIDLB]  text  NOT NULL,--��������ID�б�
	[BKHRMCLB]  text  NOT NULL,--�������������б�
	[KHDJ]  int  NOT NULL,--���˵ȼ�
CONSTRAINT [PK_EDU_ZYFZ_01_A05_KHQX] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--��Ŀ����
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZYFZ_02_A01_LMLB]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZYFZ_02_A01_LMLB](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[LMLBMC]  nvarchar(50)  NOT NULL,--��Ŀ�������
	[PLSX]  int  NOT NULL,--����˳��
	[FLBID]  int  NOT NULL,--�����ID
CONSTRAINT [PK_EDU_ZYFZ_02_A01_LMLB] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--����������Ŀ��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZYFZ_02_A02_GZNRLM]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZYFZ_02_A02_GZNRLM](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[LMMC]  nvarchar(200)  NOT NULL,--��Ŀ����
	[LMLBID]  int  NOT NULL,--��Ŀ���ID
	[SYMBID]  int  NOT NULL,--ʹ��ģ��ID
	[PLFS]  int  NOT NULL,--���з�ʽ
	[PLSX]  int  NOT NULL,--����˳��
	[NMLLLM]  int  NOT NULL,--���������Ŀ
	[LMLX]  int  NOT NULL,--��Ŀ����
CONSTRAINT [PK_EDU_ZYFZ_02_A02_GZNRLM] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ѧ����Ŀ��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZYFZ_02_A03_XQLM]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZYFZ_02_A03_XQLM](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[XQID]  int  NOT NULL,--ѧ��ID
	[LMIDLB]  text  NOT NULL,--��ĿID�б�
	[LMMCLB]  text  NOT NULL,--��Ŀ�����б�
CONSTRAINT [PK_EDU_ZYFZ_02_A03_XQLM] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�������ݱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZYFZ_02_A04_GZNR]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZYFZ_02_A04_GZNR](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[BT]  nvarchar(50)  NOT NULL,--����
	[GJC]  nvarchar(50)  NOT NULL,--�ؼ���
	[SSLMID]  int  NOT NULL,--������ĿID
	[SSXKID]  int  NOT NULL,--����ѧ��ID
	[SSNJID]  int  NOT NULL,--�����꼶ID
	[NR]  text  NOT NULL,--����
	[FBRID]  nvarchar(20)  NOT NULL,--������ID
	[FBSJ]  datetime  NOT NULL,--����ʱ��
	[LLL]  int  NOT NULL,--�����
	[XQID]  int  NOT NULL,--ѧ��ID
	[SHZT]  int  NOT NULL,--���״̬
CONSTRAINT [PK_EDU_ZYFZ_02_A04_GZNR] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�����������۱�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZYFZ_02_A05_GZNRPL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZYFZ_02_A05_GZNRPL](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[GZNRID]  int  NOT NULL,--��������ID
	[PLNR]  text  NOT NULL,--��������
	[PLR]  nvarchar(30)  NOT NULL,--������
	[PLSJ]  datetime  NOT NULL,--����ʱ��
CONSTRAINT [PK_EDU_ZYFZ_02_A05_GZNRPL] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--����������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZYFZ_02_A06_GRRY]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZYFZ_02_A06_GRRY](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[RYMC]  nvarchar(50)  NOT NULL,--��������
	[RYJBID]  int  NOT NULL,--��������ID
	[SSXNID]  int  NOT NULL,--����ѧ��ID
	[SJDW]  nvarchar(50)  NOT NULL,--�ڽ���λ
	[SJSJ]  datetime  NOT NULL,--�ڽ�ʱ��
	[HJRID]  nvarchar(20)  NOT NULL,--����ID
	[NR]  text  NOT NULL,--����
	[BZ]  nvarchar(500)  NOT NULL,--��ע
	[TJSJ]  datetime  NOT NULL,--���ʱ��
	[SHZT]  int  NOT NULL,--���״̬
CONSTRAINT [PK_EDU_ZYFZ_02_A06_GRRY] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ѧ�ڸ�����Ŀ��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZYFZ_02_A07_XQGRLM]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZYFZ_02_A07_XQGRLM](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[XQID]  int  NOT NULL,--ѧ��ID
	[YHID]  nvarchar(20)  NOT NULL,--�û�ID
	[LMLBID]  int  NOT NULL,--��Ŀ���ID
	[LMMC]  nvarchar(200)  NOT NULL,--��Ŀ����
	[JSZP]  nvarchar(500)  NOT NULL,--��ʦ����
	[XXPD]  nvarchar(500)  NOT NULL,--ѧУ����
	[LMLX]  int  NOT NULL,--��Ŀ����
	[SYMBID]  int  NOT NULL,--ʹ��ģ��ID
	[PLSX]  int  NOT NULL,--����˳��
CONSTRAINT [PK_EDU_ZYFZ_02_A07_XQGRLM] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--����Ϊ���ע�����
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ�Ʊ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_01_A01_XK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_01_A01_XK', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_01_A01_XK', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_01_A01_XK', @level2type=N'COLUMN',@level2name=N'XKMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�꼶��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_01_A02_NJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_01_A02_NJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_01_A02_NJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�꼶����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_01_A02_NJ', @level2type=N'COLUMN',@level2name=N'NJMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_01_A03_RYJB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_01_A03_RYJB', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_01_A03_RYJB', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_01_A03_RYJB', @level2type=N'COLUMN',@level2name=N'RYJBMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ģ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_01_A04_GZMB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_01_A04_GZMB', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_01_A04_GZMB', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ģ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_01_A04_GZMB', @level2type=N'COLUMN',@level2name=N'MBMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ģ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_01_A04_GZMB', @level2type=N'COLUMN',@level2name=N'MBNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����Ȩ�ޱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_01_A05_KHQX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_01_A05_KHQX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_01_A05_KHQX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_01_A05_KHQX', @level2type=N'COLUMN',@level2name=N'FZMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_01_A05_KHQX', @level2type=N'COLUMN',@level2name=N'KHRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������ID�б�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_01_A05_KHQX', @level2type=N'COLUMN',@level2name=N'BKHRIDLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������������б�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_01_A05_KHQX', @level2type=N'COLUMN',@level2name=N'BKHRMCLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���˵ȼ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_01_A05_KHQX', @level2type=N'COLUMN',@level2name=N'KHDJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ŀ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_02_A01_LMLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_02_A01_LMLB', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_02_A01_LMLB', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ŀ�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_02_A01_LMLB', @level2type=N'COLUMN',@level2name=N'LMLBMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����˳��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_02_A01_LMLB', @level2type=N'COLUMN',@level2name=N'PLSX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_02_A01_LMLB', @level2type=N'COLUMN',@level2name=N'FLBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����������Ŀ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_02_A02_GZNRLM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_02_A02_GZNRLM', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_02_A02_GZNRLM', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ŀ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_02_A02_GZNRLM', @level2type=N'COLUMN',@level2name=N'LMMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ŀ���ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_02_A02_GZNRLM', @level2type=N'COLUMN',@level2name=N'LMLBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ʹ��ģ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_02_A02_GZNRLM', @level2type=N'COLUMN',@level2name=N'SYMBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���з�ʽ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_02_A02_GZNRLM', @level2type=N'COLUMN',@level2name=N'PLFS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����˳��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_02_A02_GZNRLM', @level2type=N'COLUMN',@level2name=N'PLSX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���������Ŀ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_02_A02_GZNRLM', @level2type=N'COLUMN',@level2name=N'NMLLLM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ŀ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_02_A02_GZNRLM', @level2type=N'COLUMN',@level2name=N'LMLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ����Ŀ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_02_A03_XQLM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_02_A03_XQLM', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_02_A03_XQLM', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_02_A03_XQLM', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ĿID�б�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_02_A03_XQLM', @level2type=N'COLUMN',@level2name=N'LMIDLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ŀ�����б�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_02_A03_XQLM', @level2type=N'COLUMN',@level2name=N'LMMCLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������ݱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_02_A04_GZNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_02_A04_GZNR', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_02_A04_GZNR', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_02_A04_GZNR', @level2type=N'COLUMN',@level2name=N'BT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ؼ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_02_A04_GZNR', @level2type=N'COLUMN',@level2name=N'GJC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ĿID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_02_A04_GZNR', @level2type=N'COLUMN',@level2name=N'SSLMID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_02_A04_GZNR', @level2type=N'COLUMN',@level2name=N'SSXKID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����꼶ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_02_A04_GZNR', @level2type=N'COLUMN',@level2name=N'SSNJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_02_A04_GZNR', @level2type=N'COLUMN',@level2name=N'NR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_02_A04_GZNR', @level2type=N'COLUMN',@level2name=N'FBRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_02_A04_GZNR', @level2type=N'COLUMN',@level2name=N'FBSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_02_A04_GZNR', @level2type=N'COLUMN',@level2name=N'LLL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_02_A04_GZNR', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_02_A04_GZNR', @level2type=N'COLUMN',@level2name=N'SHZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����������۱�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_02_A05_GZNRPL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_02_A05_GZNRPL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_02_A05_GZNRPL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_02_A05_GZNRPL', @level2type=N'COLUMN',@level2name=N'GZNRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_02_A05_GZNRPL', @level2type=N'COLUMN',@level2name=N'PLNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_02_A05_GZNRPL', @level2type=N'COLUMN',@level2name=N'PLR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_02_A05_GZNRPL', @level2type=N'COLUMN',@level2name=N'PLSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_02_A06_GRRY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_02_A06_GRRY', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_02_A06_GRRY', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_02_A06_GRRY', @level2type=N'COLUMN',@level2name=N'RYMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_02_A06_GRRY', @level2type=N'COLUMN',@level2name=N'RYJBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_02_A06_GRRY', @level2type=N'COLUMN',@level2name=N'SSXNID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ڽ���λ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_02_A06_GRRY', @level2type=N'COLUMN',@level2name=N'SJDW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ڽ�ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_02_A06_GRRY', @level2type=N'COLUMN',@level2name=N'SJSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_02_A06_GRRY', @level2type=N'COLUMN',@level2name=N'HJRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_02_A06_GRRY', @level2type=N'COLUMN',@level2name=N'NR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_02_A06_GRRY', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_02_A06_GRRY', @level2type=N'COLUMN',@level2name=N'TJSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_02_A06_GRRY', @level2type=N'COLUMN',@level2name=N'SHZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ�ڸ�����Ŀ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_02_A07_XQGRLM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_02_A07_XQGRLM', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_02_A07_XQGRLM', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_02_A07_XQGRLM', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�û�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_02_A07_XQGRLM', @level2type=N'COLUMN',@level2name=N'YHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ŀ���ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_02_A07_XQGRLM', @level2type=N'COLUMN',@level2name=N'LMLBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ŀ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_02_A07_XQGRLM', @level2type=N'COLUMN',@level2name=N'LMMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʦ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_02_A07_XQGRLM', @level2type=N'COLUMN',@level2name=N'JSZP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_02_A07_XQGRLM', @level2type=N'COLUMN',@level2name=N'XXPD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ŀ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_02_A07_XQGRLM', @level2type=N'COLUMN',@level2name=N'LMLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ʹ��ģ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_02_A07_XQGRLM', @level2type=N'COLUMN',@level2name=N'SYMBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����˳��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYFZ_02_A07_XQGRLM', @level2type=N'COLUMN',@level2name=N'PLSX'
GO
