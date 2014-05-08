--�ռ�����EDU_ZWXT  ��������SqlBuilder0.1

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZWXT_01_A01_JSDCCP')
            and   type = 'U')
   drop table EDU_ZWXT_01_A01_JSDCCP
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZWXT_01_A02_JSDCJL')
            and   type = 'U')
   drop table EDU_ZWXT_01_A02_JSDCJL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZWXT_02_A01_KDGS')
            and   type = 'U')
   drop table EDU_ZWXT_02_A01_KDGS
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZWXT_02_A02_BGQK')
            and   type = 'U')
   drop table EDU_ZWXT_02_A02_BGQK
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZWXT_03_A01_DCPZ')
            and   type = 'U')
   drop table EDU_ZWXT_03_A01_DCPZ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZWXT_03_A02_CPGL')
            and   type = 'U')
   drop table EDU_ZWXT_03_A02_CPGL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZWXT_03_A03_JSDC')
            and   type = 'U')
   drop table EDU_ZWXT_03_A03_JSDC
go
--��ʦ���Ͳ�Ʒ��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZWXT_01_A01_JSDCCP]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZWXT_01_A01_JSDCCP](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[MC]  nvarchar(50)  NOT NULL,--����
	[JG]  decimal(5, 2)  NOT NULL,--�۸�
	[ZL]  nvarchar(100)  NOT NULL,--����
	[TP]  text  NULL,--ͼƬ
	[JS]  text  NOT NULL,--����
	[GYSL]  int  NOT NULL,--��Ӧ����
	[SFKQ]  int  NOT NULL,--�Ƿ���
CONSTRAINT [PK_EDU_ZWXT_01_A01_JSDCCP] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--��ʦ���ͼ�¼��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZWXT_01_A02_JSDCJL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZWXT_01_A02_JSDCJL](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[CPID]  int  NOT NULL,--��ƷID
	[DCSJ]  datetime  NOT NULL,--����ʱ��
	[DCRID]  nvarchar(20)  NOT NULL,--������ID
	[SDSL]  int  NOT NULL,--��������
CONSTRAINT [PK_EDU_ZWXT_01_A02_JSDCJL] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--��ݹ�˾��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZWXT_02_A01_KDGS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZWXT_02_A01_KDGS](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[KDGSMC]  nvarchar(50)  NOT NULL,--��ݹ�˾����
	[LXRXM]  nvarchar(36)  NOT NULL,--��ϵ������
	[LXDH]  nvarchar(20)  NOT NULL,--��ϵ�绰
	[LXDZ]  nvarchar(300)  NOT NULL,--��ϵ��ַ
	[SFSY]  nvarchar(1)  NOT NULL,--�Ƿ�ʹ��
	[PLSX]  int  NOT NULL,--����˳��
CONSTRAINT [PK_EDU_ZWXT_02_A01_KDGS] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--���������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZWXT_02_A02_BGQK]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZWXT_02_A02_BGQK](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[KDGSMC]  nvarchar(50)  NOT NULL,--��ݹ�˾����
	[KDDH]  nvarchar(50)  NOT NULL,--��ݵ���
	[SJRID]  nvarchar(20)  NOT NULL,--�ռ���ID
	[DJRID]  nvarchar(20)  NOT NULL,--�Ǽ���ID
	[DJSJ]  datetime  NOT NULL,--�Ǽ�ʱ��
	[QSZT]  int  NOT NULL,--ǩ��״̬
	[QSSJ]  datetime  NOT NULL,--ǩ��ʱ��
CONSTRAINT [PK_EDU_ZWXT_02_A02_BGQK] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--������ñ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZWXT_03_A01_DCPZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZWXT_03_A01_DCPZ](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[NR]  text  NOT NULL,--����
CONSTRAINT [PK_EDU_ZWXT_03_A01_DCPZ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--��Ʒ�����
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZWXT_03_A02_CPGL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZWXT_03_A02_CPGL](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[SJ]  datetime  NOT NULL,--ʱ��
	[CPMC]  nvarchar(50)  NOT NULL,--��Ʒ����
	[CPLX]  nvarchar(50)  NOT NULL,--��Ʒ����
	[ZL]  nvarchar(50)  NOT NULL,--����
	[CKJ]  nvarchar(50)  NOT NULL,--�ο���
	[JS]  nvarchar(300)  NOT NULL,--����
CONSTRAINT [PK_EDU_ZWXT_03_A02_CPGL] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--��ʦ��˱�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZWXT_03_A03_JSDC]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZWXT_03_A03_JSDC](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[DCSJ]  datetime  NOT NULL,--���ʱ��
	[YHID]  nvarchar(20)  NOT NULL,--�û�ID
	[CPID]  int  NOT NULL,--��ƷID
	[JG]  nvarchar(50)  NOT NULL,--�۸�
	[DGSL]  int  NOT NULL,--��������
	[ZT]  int  NOT NULL,--״̬
CONSTRAINT [PK_EDU_ZWXT_03_A03_JSDC] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--����Ϊ���ע�����
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʦ���Ͳ�Ʒ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_01_A01_JSDCCP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_01_A01_JSDCCP', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_01_A01_JSDCCP', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_01_A01_JSDCCP', @level2type=N'COLUMN',@level2name=N'MC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�۸�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_01_A01_JSDCCP', @level2type=N'COLUMN',@level2name=N'JG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_01_A01_JSDCCP', @level2type=N'COLUMN',@level2name=N'ZL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ͼƬ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_01_A01_JSDCCP', @level2type=N'COLUMN',@level2name=N'TP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_01_A01_JSDCCP', @level2type=N'COLUMN',@level2name=N'JS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ӧ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_01_A01_JSDCCP', @level2type=N'COLUMN',@level2name=N'GYSL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_01_A01_JSDCCP', @level2type=N'COLUMN',@level2name=N'SFKQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʦ���ͼ�¼��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_01_A02_JSDCJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_01_A02_JSDCJL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_01_A02_JSDCJL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ƷID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_01_A02_JSDCJL', @level2type=N'COLUMN',@level2name=N'CPID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_01_A02_JSDCJL', @level2type=N'COLUMN',@level2name=N'DCSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_01_A02_JSDCJL', @level2type=N'COLUMN',@level2name=N'DCRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_01_A02_JSDCJL', @level2type=N'COLUMN',@level2name=N'SDSL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ݹ�˾��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_02_A01_KDGS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_02_A01_KDGS', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_02_A01_KDGS', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ݹ�˾����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_02_A01_KDGS', @level2type=N'COLUMN',@level2name=N'KDGSMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ϵ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_02_A01_KDGS', @level2type=N'COLUMN',@level2name=N'LXRXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ϵ�绰' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_02_A01_KDGS', @level2type=N'COLUMN',@level2name=N'LXDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ϵ��ַ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_02_A01_KDGS', @level2type=N'COLUMN',@level2name=N'LXDZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ�ʹ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_02_A01_KDGS', @level2type=N'COLUMN',@level2name=N'SFSY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����˳��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_02_A01_KDGS', @level2type=N'COLUMN',@level2name=N'PLSX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_02_A02_BGQK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_02_A02_BGQK', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_02_A02_BGQK', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ݹ�˾����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_02_A02_BGQK', @level2type=N'COLUMN',@level2name=N'KDGSMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ݵ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_02_A02_BGQK', @level2type=N'COLUMN',@level2name=N'KDDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ռ���ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_02_A02_BGQK', @level2type=N'COLUMN',@level2name=N'SJRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ǽ���ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_02_A02_BGQK', @level2type=N'COLUMN',@level2name=N'DJRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ǽ�ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_02_A02_BGQK', @level2type=N'COLUMN',@level2name=N'DJSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ǩ��״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_02_A02_BGQK', @level2type=N'COLUMN',@level2name=N'QSZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ǩ��ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_02_A02_BGQK', @level2type=N'COLUMN',@level2name=N'QSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ñ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_03_A01_DCPZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_03_A01_DCPZ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_03_A01_DCPZ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_03_A01_DCPZ', @level2type=N'COLUMN',@level2name=N'NR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ʒ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_03_A02_CPGL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_03_A02_CPGL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_03_A02_CPGL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_03_A02_CPGL', @level2type=N'COLUMN',@level2name=N'SJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ʒ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_03_A02_CPGL', @level2type=N'COLUMN',@level2name=N'CPMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ʒ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_03_A02_CPGL', @level2type=N'COLUMN',@level2name=N'CPLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_03_A02_CPGL', @level2type=N'COLUMN',@level2name=N'ZL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ο���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_03_A02_CPGL', @level2type=N'COLUMN',@level2name=N'CKJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_03_A02_CPGL', @level2type=N'COLUMN',@level2name=N'JS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʦ��˱�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_03_A03_JSDC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_03_A03_JSDC', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_03_A03_JSDC', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_03_A03_JSDC', @level2type=N'COLUMN',@level2name=N'DCSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�û�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_03_A03_JSDC', @level2type=N'COLUMN',@level2name=N'YHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ƷID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_03_A03_JSDC', @level2type=N'COLUMN',@level2name=N'CPID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�۸�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_03_A03_JSDC', @level2type=N'COLUMN',@level2name=N'JG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_03_A03_JSDC', @level2type=N'COLUMN',@level2name=N'DGSL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_03_A03_JSDC', @level2type=N'COLUMN',@level2name=N'ZT'
GO
