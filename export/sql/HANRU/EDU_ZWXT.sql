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

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZWXT_05_A01_XCLX')
            and   type = 'U')
   drop table EDU_ZWXT_05_A01_XCLX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZWXT_05_A02_XCML')
            and   type = 'U')
   drop table EDU_ZWXT_05_A02_XCML
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZWXT_05_A03_XC')
            and   type = 'U')
   drop table EDU_ZWXT_05_A03_XC
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZWXT_05_A04_BX')
            and   type = 'U')
   drop table EDU_ZWXT_05_A04_BX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZWXT_05_A05_YJ')
            and   type = 'U')
   drop table EDU_ZWXT_05_A05_YJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZWXT_05_A06_PD')
            and   type = 'U')
   drop table EDU_ZWXT_05_A06_PD
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZWXT_05_A07_PDXD')
            and   type = 'U')
   drop table EDU_ZWXT_05_A07_PDXD
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

--У�����ͱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZWXT_05_A01_XCLX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZWXT_05_A01_XCLX](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[LXMC]  nvarchar(50)  NOT NULL,--��������
CONSTRAINT [PK_EDU_ZWXT_05_A01_XCLX] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--У��Ŀ¼��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZWXT_05_A02_XCML]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZWXT_05_A02_XCML](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[MLMC]  nvarchar(50)  NOT NULL,--Ŀ¼����
	[FMLID]  int  NOT NULL,--��Ŀ¼ID
CONSTRAINT [PK_EDU_ZWXT_05_A02_XCML] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--У����
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZWXT_05_A03_XC]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZWXT_05_A03_XC](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[XCLXID]  int  NOT NULL,--У������ID
	[XCMLID]  int  NOT NULL,--У��Ŀ¼ID
	[DQBGYHID]  nvarchar(20)  NOT NULL,--��ǰ�����û�ID
	[MC]  nvarchar(50)  NOT NULL,--����
	[GG]  nvarchar(50)  NOT NULL,--���
	[DJ]  nvarchar(50)  NOT NULL,--����
	[SL]  int  NOT NULL,--����
	[DW]  nvarchar(50)  NOT NULL,--��λ
	[SCRQ]  datetime  NOT NULL,--��������
	[RKSJ]  datetime  NOT NULL,--���ʱ��
	[SCCJ]  nvarchar(200)  NOT NULL,--��������
	[DQZT]  int  NOT NULL,--��ǰ״̬
	[BZ]  nvarchar(200)  NOT NULL,--��ע
CONSTRAINT [PK_EDU_ZWXT_05_A03_XC] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--���ޱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZWXT_05_A04_BX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZWXT_05_A04_BX](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[XCMC]  nvarchar(50)  NOT NULL,--У������
	[DYXCID]  int  NOT NULL,--��ӦУ��ID
	[BXDD]  nvarchar(200)  NOT NULL,--���޵ص�
	[BXYHID]  nvarchar(20)  NOT NULL,--�����û�ID
	[BXSJ]  datetime  NOT NULL,--����ʱ��
	[GZTP]  text  NOT NULL,--����ͼƬ
	[GZXX]  text  NOT NULL,--��������
	[WXZT]  int  NOT NULL,--ά��״̬
	[BZ]  text  NOT NULL,--��ע
CONSTRAINT [PK_EDU_ZWXT_05_A04_BX] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�ƽ���
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZWXT_05_A05_YJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZWXT_05_A05_YJ](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[XCID]  int  NOT NULL,--У��ID
	[SQYHID]  nvarchar(20)  NOT NULL,--�����û�ID
	[JSYHID]  nvarchar(20)  NOT NULL,--�����û�ID
	[SHYHID]  nvarchar(20)  NOT NULL,--����û�ID
	[SQSJ]  datetime  NOT NULL,--����ʱ��
	[SHSJ]  datetime  NOT NULL,--���ʱ��
	[JSSJ]  datetime  NOT NULL,--����ʱ��
	[YJZT]  int  NOT NULL,--�ƽ�״̬
CONSTRAINT [PK_EDU_ZWXT_05_A05_YJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�̵��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZWXT_05_A06_PD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZWXT_05_A06_PD](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[PDMC]  nvarchar(50)  NOT NULL,--�̵�����
	[KSSJ]  datetime  NOT NULL,--��ʼʱ��
	[JSSJ]  datetime  NOT NULL,--����ʱ��
	[BZ]  text  NOT NULL,--��ע
CONSTRAINT [PK_EDU_ZWXT_05_A06_PD] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�̵��굥��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZWXT_05_A07_PDXD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZWXT_05_A07_PDXD](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[PDID]  int  NOT NULL,--�̵�ID
	[XCID]  int  NOT NULL,--У��ID
	[XCSL]  int  NOT NULL,--У������
	[PDSS]  int  NOT NULL,--�̵�ʵ��
	[BZ]  text  NOT NULL,--��ע
	[BGYHID]  nvarchar(20)  NOT NULL,--�����û�ID
CONSTRAINT [PK_EDU_ZWXT_05_A07_PDXD] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
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
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'У�����ͱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A01_XCLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A01_XCLX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A01_XCLX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A01_XCLX', @level2type=N'COLUMN',@level2name=N'LXMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'У��Ŀ¼��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A02_XCML'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A02_XCML', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A02_XCML', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ŀ¼����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A02_XCML', @level2type=N'COLUMN',@level2name=N'MLMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ŀ¼ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A02_XCML', @level2type=N'COLUMN',@level2name=N'FMLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'У����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A03_XC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A03_XC', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A03_XC', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'У������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A03_XC', @level2type=N'COLUMN',@level2name=N'XCLXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'У��Ŀ¼ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A03_XC', @level2type=N'COLUMN',@level2name=N'XCMLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ǰ�����û�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A03_XC', @level2type=N'COLUMN',@level2name=N'DQBGYHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A03_XC', @level2type=N'COLUMN',@level2name=N'MC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A03_XC', @level2type=N'COLUMN',@level2name=N'GG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A03_XC', @level2type=N'COLUMN',@level2name=N'DJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A03_XC', @level2type=N'COLUMN',@level2name=N'SL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��λ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A03_XC', @level2type=N'COLUMN',@level2name=N'DW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A03_XC', @level2type=N'COLUMN',@level2name=N'SCRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A03_XC', @level2type=N'COLUMN',@level2name=N'RKSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A03_XC', @level2type=N'COLUMN',@level2name=N'SCCJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ǰ״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A03_XC', @level2type=N'COLUMN',@level2name=N'DQZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A03_XC', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ޱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A04_BX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A04_BX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A04_BX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'У������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A04_BX', @level2type=N'COLUMN',@level2name=N'XCMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ӦУ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A04_BX', @level2type=N'COLUMN',@level2name=N'DYXCID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���޵ص�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A04_BX', @level2type=N'COLUMN',@level2name=N'BXDD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����û�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A04_BX', @level2type=N'COLUMN',@level2name=N'BXYHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A04_BX', @level2type=N'COLUMN',@level2name=N'BXSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ͼƬ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A04_BX', @level2type=N'COLUMN',@level2name=N'GZTP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A04_BX', @level2type=N'COLUMN',@level2name=N'GZXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ά��״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A04_BX', @level2type=N'COLUMN',@level2name=N'WXZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A04_BX', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ƽ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A05_YJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A05_YJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A05_YJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'У��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A05_YJ', @level2type=N'COLUMN',@level2name=N'XCID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����û�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A05_YJ', @level2type=N'COLUMN',@level2name=N'SQYHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����û�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A05_YJ', @level2type=N'COLUMN',@level2name=N'JSYHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����û�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A05_YJ', @level2type=N'COLUMN',@level2name=N'SHYHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A05_YJ', @level2type=N'COLUMN',@level2name=N'SQSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A05_YJ', @level2type=N'COLUMN',@level2name=N'SHSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A05_YJ', @level2type=N'COLUMN',@level2name=N'JSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ƽ�״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A05_YJ', @level2type=N'COLUMN',@level2name=N'YJZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�̵��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A06_PD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A06_PD', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A06_PD', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�̵�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A06_PD', @level2type=N'COLUMN',@level2name=N'PDMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʼʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A06_PD', @level2type=N'COLUMN',@level2name=N'KSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A06_PD', @level2type=N'COLUMN',@level2name=N'JSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A06_PD', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�̵��굥��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A07_PDXD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A07_PDXD', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A07_PDXD', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�̵�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A07_PDXD', @level2type=N'COLUMN',@level2name=N'PDID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'У��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A07_PDXD', @level2type=N'COLUMN',@level2name=N'XCID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'У������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A07_PDXD', @level2type=N'COLUMN',@level2name=N'XCSL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�̵�ʵ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A07_PDXD', @level2type=N'COLUMN',@level2name=N'PDSS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A07_PDXD', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����û�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZWXT_05_A07_PDXD', @level2type=N'COLUMN',@level2name=N'BGYHID'
GO
