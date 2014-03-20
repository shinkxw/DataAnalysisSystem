--�ռ�����EDU_CFXT  ��������SqlBuilder0.1

if exists (select 1 from  sysobjects where  id = object_id('EDU_CFXT_01_A01_KM')
            and   type = 'U')
   drop table EDU_CFXT_01_A01_KM
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_CFXT_01_A02_KS')
            and   type = 'U')
   drop table EDU_CFXT_01_A02_KS
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_CFXT_01_A03_CKXS')
            and   type = 'U')
   drop table EDU_CFXT_01_A03_CKXS
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_CFXT_01_A04_KSCJ')
            and   type = 'U')
   drop table EDU_CFXT_01_A04_KSCJ
go
--��Ŀ��Ϣ
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_CFXT_01_A01_KM]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_CFXT_01_A01_KM](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[KMMC]  nvarchar(20)  NOT NULL,--��Ŀ����
	[KMZF]  decimal(5, 1)  NOT NULL,--��Ŀ�ܷ�
CONSTRAINT [PK_EDU_CFXT_01_A01_KM] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--������Ϣ
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_CFXT_01_A02_KS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_CFXT_01_A02_KS](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[KSMC]  nvarchar(20)  NOT NULL,--��������
	[KSKMIDLB]  text  NOT NULL,--���Կ�ĿID�б�
	[KSKMMCLB]  text  NOT NULL,--���Կ�Ŀ�����б�
	[CFWZ]  nvarchar(500)  NOT NULL,--�����ַ
	[CFZT]  int  NOT NULL,--���״̬
	[HDX]  int  NOT NULL,--������
	[HDXSJG]  nvarchar(500)  NOT NULL,--�������Ͻ��
	[HDXXJG]  nvarchar(500)  NOT NULL,--�������½��
CONSTRAINT [PK_EDU_CFXT_01_A02_KS] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�ο�ѧ����Ϣ
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_CFXT_01_A03_CKXS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_CFXT_01_A03_CKXS](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[KSID]  int  NOT NULL,--����ID
	[XM]  nvarchar(20)  NOT NULL,--����
	[ZKZH]  nvarchar(50)  NOT NULL,--׼��֤��
	[JZDH]  nvarchar(20)  NOT NULL,--�ҳ��绰
	[ZCJ]  decimal(5, 1)  NOT NULL,--�ܳɼ�
CONSTRAINT [PK_EDU_CFXT_01_A03_CKXS] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--���Գɼ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_CFXT_01_A04_KSCJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_CFXT_01_A04_KSCJ](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[KSID]  int  NOT NULL,--����ID
	[KMID]  int  NOT NULL,--��ĿID
	[CKXSID]  int  NOT NULL,--�ο�ѧ��ID
	[CJ]  decimal(5, 1)  NOT NULL,--�ɼ�
CONSTRAINT [PK_EDU_CFXT_01_A04_KSCJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--����Ϊ���ע�����
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ŀ��Ϣ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_CFXT_01_A01_KM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_CFXT_01_A01_KM', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_CFXT_01_A01_KM', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ŀ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_CFXT_01_A01_KM', @level2type=N'COLUMN',@level2name=N'KMMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ŀ�ܷ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_CFXT_01_A01_KM', @level2type=N'COLUMN',@level2name=N'KMZF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������Ϣ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_CFXT_01_A02_KS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_CFXT_01_A02_KS', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_CFXT_01_A02_KS', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_CFXT_01_A02_KS', @level2type=N'COLUMN',@level2name=N'KSMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���Կ�ĿID�б�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_CFXT_01_A02_KS', @level2type=N'COLUMN',@level2name=N'KSKMIDLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���Կ�Ŀ�����б�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_CFXT_01_A02_KS', @level2type=N'COLUMN',@level2name=N'KSKMMCLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����ַ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_CFXT_01_A02_KS', @level2type=N'COLUMN',@level2name=N'CFWZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_CFXT_01_A02_KS', @level2type=N'COLUMN',@level2name=N'CFZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_CFXT_01_A02_KS', @level2type=N'COLUMN',@level2name=N'HDX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������Ͻ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_CFXT_01_A02_KS', @level2type=N'COLUMN',@level2name=N'HDXSJG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������½��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_CFXT_01_A02_KS', @level2type=N'COLUMN',@level2name=N'HDXXJG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ο�ѧ����Ϣ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_CFXT_01_A03_CKXS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_CFXT_01_A03_CKXS', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_CFXT_01_A03_CKXS', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_CFXT_01_A03_CKXS', @level2type=N'COLUMN',@level2name=N'KSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_CFXT_01_A03_CKXS', @level2type=N'COLUMN',@level2name=N'XM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'׼��֤��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_CFXT_01_A03_CKXS', @level2type=N'COLUMN',@level2name=N'ZKZH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ҳ��绰' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_CFXT_01_A03_CKXS', @level2type=N'COLUMN',@level2name=N'JZDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ܳɼ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_CFXT_01_A03_CKXS', @level2type=N'COLUMN',@level2name=N'ZCJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���Գɼ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_CFXT_01_A04_KSCJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_CFXT_01_A04_KSCJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_CFXT_01_A04_KSCJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_CFXT_01_A04_KSCJ', @level2type=N'COLUMN',@level2name=N'KSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ĿID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_CFXT_01_A04_KSCJ', @level2type=N'COLUMN',@level2name=N'KMID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ο�ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_CFXT_01_A04_KSCJ', @level2type=N'COLUMN',@level2name=N'CKXSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ɼ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_CFXT_01_A04_KSCJ', @level2type=N'COLUMN',@level2name=N'CJ'
GO
