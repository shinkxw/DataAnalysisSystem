--�ռ�����EDU_ZXDY  ��������SqlBuilder0.1

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXDY_04_A01_ZZGW')
            and   type = 'U')
   drop table EDU_ZXDY_04_A01_ZZGW
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXDY_04_A02_ZZRYAP')
            and   type = 'U')
   drop table EDU_ZXDY_04_A02_ZZRYAP
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXDY_04_A03_ZZGWFP')
            and   type = 'U')
   drop table EDU_ZXDY_04_A03_ZZGWFP
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXDY_04_A04_GWFPMB')
            and   type = 'U')
   drop table EDU_ZXDY_04_A04_GWFPMB
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXDY_04_A05_TBZZJS')
            and   type = 'U')
   drop table EDU_ZXDY_04_A05_TBZZJS
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXDY_04_A06_ZZZC')
            and   type = 'U')
   drop table EDU_ZXDY_04_A06_ZZZC
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXDY_04_A07_MBFPNR')
            and   type = 'U')
   drop table EDU_ZXDY_04_A07_MBFPNR
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXDY_05_A01_ZZDFDL')
            and   type = 'U')
   drop table EDU_ZXDY_05_A01_ZZDFDL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXDY_05_A02_ZZDFXZ')
            and   type = 'U')
   drop table EDU_ZXDY_05_A02_ZZDFXZ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXDY_05_A03_ZZDFD')
            and   type = 'U')
   drop table EDU_ZXDY_05_A03_ZZDFD
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXDY_06_A01_ZZXJ')
            and   type = 'U')
   drop table EDU_ZXDY_06_A01_ZZXJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXDY_06_A02_GQXJH')
            and   type = 'U')
   drop table EDU_ZXDY_06_A02_GQXJH
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXDY_07_A01_DYHDKC')
            and   type = 'U')
   drop table EDU_ZXDY_07_A01_DYHDKC
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXDY_07_A11_XSZZGLJG')
            and   type = 'U')
   drop table EDU_ZXDY_07_A11_XSZZGLJG
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXDY_07_A12_XSZZGLXZ')
            and   type = 'U')
   drop table EDU_ZXDY_07_A12_XSZZGLXZ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXDY_07_A21_BJXSHDQKJL')
            and   type = 'U')
   drop table EDU_ZXDY_07_A21_BJXSHDQKJL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXDY_07_A31_XXDXHD')
            and   type = 'U')
   drop table EDU_ZXDY_07_A31_XXDXHD
go
--ֵ�ܸ�λ���ݱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXDY_04_A01_ZZGW]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXDY_04_A01_ZZGW](
	[ID]  int  NOT NULL,--ֵ�ܸ�λ��ID
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[XQID]  int  NOT NULL,--ѧ��ID
	[GWGZNR]  nvarchar(200)  NOT NULL,--��λ��������
CONSTRAINT [PK_EDU_ZXDY_04_A01_ZZGW] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ֵ����Ա���ű�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXDY_04_A02_ZZRYAP]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXDY_04_A02_ZZRYAP](
	[ID]  int  NOT NULL,--ֵ����Ա���ű�ID
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[XQID]  int  NOT NULL,--ѧ��ID
	[ZCID]  int  NOT NULL,--�ܴ�ID
	[KSRQ]  datetime  NULL,--��ʼ����
	[JSRQ]  datetime  NULL,--��������
	[ZZBJ]  nvarchar(10)  NOT NULL,--ֵ�ܰ༶���
	[ZZID]  nvarchar(20)  NOT NULL,--�鳤ID
	[ZYIDLB]  text  NOT NULL,--��ԱID�б�
	[ZYMCLB]  text  NOT NULL,--��Ա�����б�
CONSTRAINT [PK_EDU_ZXDY_04_A02_ZZRYAP] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ֵ�ܸ�λ�����
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXDY_04_A03_ZZGWFP]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXDY_04_A03_ZZGWFP](
	[ID]  int  NOT NULL,--ֵ�ܸ�λ�����ID
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[XQID]  int  NOT NULL,--ѧ��ID
	[ZCID]  int  NOT NULL,--�ܴ�ID
	[GZR]  int  NULL,--������
	[GWID]  int  NULL,--��λID
	[JSID]  nvarchar(20)  NOT NULL,--��ʦID
CONSTRAINT [PK_EDU_ZXDY_04_A03_ZZGWFP] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--��λ����ģ���
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXDY_04_A04_GWFPMB]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXDY_04_A04_GWFPMB](
	[ID]  int  NOT NULL,--��λ����ģ���ID
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[MBMC]  nvarchar(20)  NOT NULL,--ģ������
CONSTRAINT [PK_EDU_ZXDY_04_A04_GWFPMB] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�ر�ֵ�ܽ�ʦ��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXDY_04_A05_TBZZJS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXDY_04_A05_TBZZJS](
	[ID]  int  NOT NULL,--�ر�ֵ�ܽ�ʦ��ID
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[XQID]  int  NOT NULL,--ѧ��ID
	[JSLX]  nvarchar(20)  NOT NULL,--��ʦ����
	[JSID]  nvarchar(20)  NOT NULL,--��ʦID
	[YXRQ]  datetime  NULL,--��Ч����
CONSTRAINT [PK_EDU_ZXDY_04_A05_TBZZJS] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ֵ���ܴα�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXDY_04_A06_ZZZC]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXDY_04_A06_ZZZC](
	[ID]  int  NOT NULL,--�ܴα�ID
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[XQID]  int  NOT NULL,--ѧ��ID
	[ZCM]  nvarchar(20)  NOT NULL,--�ܴ���
	[XQKSRQ]  datetime  NULL,--��ʼ����
	[XQJSRQ]  datetime  NULL,--��������
CONSTRAINT [PK_EDU_ZXDY_04_A06_ZZZC] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ģ��������ݱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXDY_04_A07_MBFPNR]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXDY_04_A07_MBFPNR](
	[ID]  int  NOT NULL,--ģ�����ݱ�ID
	[MBID]  int  NOT NULL,--ģ���ID
	[GZR]  int  NULL,--������
	[GWID]  int  NULL,--��λID
	[DYRYH]  int  NOT NULL,--��Ӧ��Ա��
CONSTRAINT [PK_EDU_ZXDY_04_A07_MBFPNR] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ֵ�ܴ�ִ����
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXDY_05_A01_ZZDFDL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXDY_05_A01_ZZDFDL](
	[ID]  int  NOT NULL,--ֵ�ܴ�ִ����ID
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[XQID]  int  NOT NULL,--ѧ��ID
	[DLMC]  nvarchar(20)  NOT NULL,--��������
CONSTRAINT [PK_EDU_ZXDY_05_A01_ZZDFDL] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ֵ�ܴ��ϸ���
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXDY_05_A02_ZZDFXZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXDY_05_A02_ZZDFXZ](
	[ID]  int  NOT NULL,--ֵ�ܴ��ϸ���ID
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[SSDLID]  int  NOT NULL,--��������ID
	[XZNR]  nvarchar(200)  NOT NULL,--ϸ������
	[XZFZ]  decimal(6, 2)  NOT NULL,--ϸ���ֵ
CONSTRAINT [PK_EDU_ZXDY_05_A02_ZZDFXZ] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ֵ�ܴ�ֵ���
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXDY_05_A03_ZZDFD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXDY_05_A03_ZZDFD](
	[ID]  int  NOT NULL,--ֵ�ܴ�ֵ���ID
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[XQID]  int  NOT NULL,--ѧ��ID
	[ZCID]  int  NOT NULL,--�ܴ�ID
	[BJ]  nvarchar(10)  NULL,--�༶
	[XSIDLB]  text  NULL,--ѧ��ID�б�
	[XSMCLB]  text  NULL,--ѧ�������б�
	[SSXZID]  int  NOT NULL,--����ϸ��
	[DFFZ]  decimal(6, 2)  NOT NULL,--��ַ�ֵ
	[FSSJ]  datetime  NOT NULL,--����ʱ��
	[DFSJ]  datetime  NOT NULL,--���ʱ��
	[DFJSID]  nvarchar(20)  NOT NULL,--��ֽ�ʦID
	[BZ]  text  NOT NULL,--��ע
CONSTRAINT [PK_EDU_ZXDY_05_A03_ZZDFD] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ֵ��С���
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXDY_06_A01_ZZXJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXDY_06_A01_ZZXJ](
	[ID]  int  NOT NULL,--ֵ��С���ID
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[XQID]  int  NOT NULL,--ѧ��ID
	[ZCID]  int  NOT NULL,--�ܴ�ID
	[SZDS]  text  NULL,--���ܴ���
	[ZZJCQKFK]  text  NULL,--ֵ�ܼ���������
CONSTRAINT [PK_EDU_ZXDY_06_A01_ZZXJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�����½�����
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXDY_06_A02_GQXJH]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXDY_06_A02_GQXJH](
	[ID]  int  NOT NULL,--�����½�����ID
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[XQID]  int  NOT NULL,--ѧ��ID
	[ZCID]  int  NOT NULL,--�ܴ�ID
	[JHZT]  text  NULL,--��������
	[JHNR]  text  NULL,--��������
CONSTRAINT [PK_EDU_ZXDY_06_A02_GQXJH] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--������γ̱�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXDY_07_A01_DYHDKC]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXDY_07_A01_DYHDKC](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[BJ]  nvarchar(10)  NOT NULL,--�༶
	[HDSJ]  nvarchar(50)  NOT NULL,--�ʱ��
	[HDZT]  nvarchar(100)  NOT NULL,--�����
	[DYHDGCJL]  text  NOT NULL,--��������̼�¼
	[HDGCTPZS]  text  NOT NULL,--�����ͼƬչʾ
	[DYHDHJ]  text  NOT NULL,--��������
CONSTRAINT [PK_EDU_ZXDY_07_A01_DYHDKC] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ѧ���������������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXDY_07_A11_XSZZGLJG]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXDY_07_A11_XSZZGLJG](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[JGMC]  nvarchar(200)  NOT NULL,--��������
CONSTRAINT [PK_EDU_ZXDY_07_A11_XSZZGLJG] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ѧ����������С���
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXDY_07_A12_XSZZGLXZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXDY_07_A12_XSZZGLXZ](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[GLJGID]  int  NOT NULL,--�������ID
	[ZZ]  nvarchar(50)  NOT NULL,--�鳤
	[ZY]  nvarchar(200)  NOT NULL,--��Ա
	[XZKH]  nvarchar(200)  NOT NULL,--С��ں�(Ŀ��)
	[PLSX]  int  NOT NULL,--����˳��
CONSTRAINT [PK_EDU_ZXDY_07_A12_XSZZGLXZ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�༶ѧ��������¼��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXDY_07_A21_BJXSHDQKJL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXDY_07_A21_BJXSHDQKJL](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[HDBJ]  nvarchar(10)  NOT NULL,--��༶
	[SJ]  nvarchar(50)  NOT NULL,--ʱ��
	[DD]  nvarchar(200)  NOT NULL,--�ص�
	[CYRS]  nvarchar(50)  NOT NULL,--��������
	[HDXS]  nvarchar(200)  NOT NULL,--���ʽ
	[HDZT]  nvarchar(200)  NOT NULL,--�����
	[HDGCJL]  text  NOT NULL,--����̼�¼������ͼƬ��
	[HDHJ]  text  NOT NULL,--���ǣ������ε�����
CONSTRAINT [PK_EDU_ZXDY_07_A21_BJXSHDQKJL] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ѧУ���ͻ��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXDY_07_A31_XXDXHD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXDY_07_A31_XXDXHD](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[HDZT]  nvarchar(100)  NOT NULL,--�����
	[HDZZBM]  nvarchar(200)  NOT NULL,--���֯����
	[XMFZR]  nvarchar(200)  NOT NULL,--��Ŀ������
	[SJ]  nvarchar(50)  NOT NULL,--ʱ��
	[DD]  nvarchar(200)  NOT NULL,--�ص�
	[HDGCJL]  text  NOT NULL,--����̼�¼����ͼƬ��
	[HDHJ]  text  NOT NULL,--����
CONSTRAINT [PK_EDU_ZXDY_07_A31_XXDXHD] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--����Ϊ���ע�����
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ֵ�ܸ�λ���ݱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A01_ZZGW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ֵ�ܸ�λ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A01_ZZGW', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A01_ZZGW', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A01_ZZGW', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��λ��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A01_ZZGW', @level2type=N'COLUMN',@level2name=N'GWGZNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ֵ����Ա���ű�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A02_ZZRYAP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ֵ����Ա���ű�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A02_ZZRYAP', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A02_ZZRYAP', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A02_ZZRYAP', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ܴ�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A02_ZZRYAP', @level2type=N'COLUMN',@level2name=N'ZCID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʼ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A02_ZZRYAP', @level2type=N'COLUMN',@level2name=N'KSRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A02_ZZRYAP', @level2type=N'COLUMN',@level2name=N'JSRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ֵ�ܰ༶���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A02_ZZRYAP', @level2type=N'COLUMN',@level2name=N'ZZBJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�鳤ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A02_ZZRYAP', @level2type=N'COLUMN',@level2name=N'ZZID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ԱID�б�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A02_ZZRYAP', @level2type=N'COLUMN',@level2name=N'ZYIDLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ա�����б�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A02_ZZRYAP', @level2type=N'COLUMN',@level2name=N'ZYMCLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ֵ�ܸ�λ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A03_ZZGWFP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ֵ�ܸ�λ�����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A03_ZZGWFP', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A03_ZZGWFP', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A03_ZZGWFP', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ܴ�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A03_ZZGWFP', @level2type=N'COLUMN',@level2name=N'ZCID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A03_ZZGWFP', @level2type=N'COLUMN',@level2name=N'GZR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��λID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A03_ZZGWFP', @level2type=N'COLUMN',@level2name=N'GWID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʦID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A03_ZZGWFP', @level2type=N'COLUMN',@level2name=N'JSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��λ����ģ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A04_GWFPMB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��λ����ģ���ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A04_GWFPMB', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A04_GWFPMB', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ģ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A04_GWFPMB', @level2type=N'COLUMN',@level2name=N'MBMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ر�ֵ�ܽ�ʦ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A05_TBZZJS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ر�ֵ�ܽ�ʦ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A05_TBZZJS', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A05_TBZZJS', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A05_TBZZJS', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʦ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A05_TBZZJS', @level2type=N'COLUMN',@level2name=N'JSLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʦID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A05_TBZZJS', @level2type=N'COLUMN',@level2name=N'JSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ч����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A05_TBZZJS', @level2type=N'COLUMN',@level2name=N'YXRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ֵ���ܴα�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A06_ZZZC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ܴα�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A06_ZZZC', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A06_ZZZC', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A06_ZZZC', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ܴ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A06_ZZZC', @level2type=N'COLUMN',@level2name=N'ZCM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʼ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A06_ZZZC', @level2type=N'COLUMN',@level2name=N'XQKSRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A06_ZZZC', @level2type=N'COLUMN',@level2name=N'XQJSRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ģ��������ݱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A07_MBFPNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ģ�����ݱ�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A07_MBFPNR', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ģ���ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A07_MBFPNR', @level2type=N'COLUMN',@level2name=N'MBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A07_MBFPNR', @level2type=N'COLUMN',@level2name=N'GZR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��λID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A07_MBFPNR', @level2type=N'COLUMN',@level2name=N'GWID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ӧ��Ա��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A07_MBFPNR', @level2type=N'COLUMN',@level2name=N'DYRYH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ֵ�ܴ�ִ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_05_A01_ZZDFDL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ֵ�ܴ�ִ����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_05_A01_ZZDFDL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_05_A01_ZZDFDL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_05_A01_ZZDFDL', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_05_A01_ZZDFDL', @level2type=N'COLUMN',@level2name=N'DLMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ֵ�ܴ��ϸ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_05_A02_ZZDFXZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ֵ�ܴ��ϸ���ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_05_A02_ZZDFXZ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_05_A02_ZZDFXZ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_05_A02_ZZDFXZ', @level2type=N'COLUMN',@level2name=N'SSDLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ϸ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_05_A02_ZZDFXZ', @level2type=N'COLUMN',@level2name=N'XZNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ϸ���ֵ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_05_A02_ZZDFXZ', @level2type=N'COLUMN',@level2name=N'XZFZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ֵ�ܴ�ֵ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_05_A03_ZZDFD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ֵ�ܴ�ֵ���ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_05_A03_ZZDFD', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_05_A03_ZZDFD', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_05_A03_ZZDFD', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ܴ�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_05_A03_ZZDFD', @level2type=N'COLUMN',@level2name=N'ZCID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�༶' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_05_A03_ZZDFD', @level2type=N'COLUMN',@level2name=N'BJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID�б�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_05_A03_ZZDFD', @level2type=N'COLUMN',@level2name=N'XSIDLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ�������б�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_05_A03_ZZDFD', @level2type=N'COLUMN',@level2name=N'XSMCLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ϸ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_05_A03_ZZDFD', @level2type=N'COLUMN',@level2name=N'SSXZID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ַ�ֵ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_05_A03_ZZDFD', @level2type=N'COLUMN',@level2name=N'DFFZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_05_A03_ZZDFD', @level2type=N'COLUMN',@level2name=N'FSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_05_A03_ZZDFD', @level2type=N'COLUMN',@level2name=N'DFSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ֽ�ʦID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_05_A03_ZZDFD', @level2type=N'COLUMN',@level2name=N'DFJSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_05_A03_ZZDFD', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ֵ��С���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_06_A01_ZZXJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ֵ��С���ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_06_A01_ZZXJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_06_A01_ZZXJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_06_A01_ZZXJ', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ܴ�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_06_A01_ZZXJ', @level2type=N'COLUMN',@level2name=N'ZCID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ܴ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_06_A01_ZZXJ', @level2type=N'COLUMN',@level2name=N'SZDS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ֵ�ܼ���������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_06_A01_ZZXJ', @level2type=N'COLUMN',@level2name=N'ZZJCQKFK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����½�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_06_A02_GQXJH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����½�����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_06_A02_GQXJH', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_06_A02_GQXJH', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_06_A02_GQXJH', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ܴ�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_06_A02_GQXJH', @level2type=N'COLUMN',@level2name=N'ZCID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_06_A02_GQXJH', @level2type=N'COLUMN',@level2name=N'JHZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_06_A02_GQXJH', @level2type=N'COLUMN',@level2name=N'JHNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������γ̱�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_07_A01_DYHDKC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_07_A01_DYHDKC', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_07_A01_DYHDKC', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�༶' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_07_A01_DYHDKC', @level2type=N'COLUMN',@level2name=N'BJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_07_A01_DYHDKC', @level2type=N'COLUMN',@level2name=N'HDSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_07_A01_DYHDKC', @level2type=N'COLUMN',@level2name=N'HDZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������̼�¼' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_07_A01_DYHDKC', @level2type=N'COLUMN',@level2name=N'DYHDGCJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����ͼƬչʾ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_07_A01_DYHDKC', @level2type=N'COLUMN',@level2name=N'HDGCTPZS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_07_A01_DYHDKC', @level2type=N'COLUMN',@level2name=N'DYHDHJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ���������������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_07_A11_XSZZGLJG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_07_A11_XSZZGLJG', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_07_A11_XSZZGLJG', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_07_A11_XSZZGLJG', @level2type=N'COLUMN',@level2name=N'JGMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ����������С���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_07_A12_XSZZGLXZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_07_A12_XSZZGLXZ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_07_A12_XSZZGLXZ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_07_A12_XSZZGLXZ', @level2type=N'COLUMN',@level2name=N'GLJGID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�鳤' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_07_A12_XSZZGLXZ', @level2type=N'COLUMN',@level2name=N'ZZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ա' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_07_A12_XSZZGLXZ', @level2type=N'COLUMN',@level2name=N'ZY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'С��ں�(Ŀ��)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_07_A12_XSZZGLXZ', @level2type=N'COLUMN',@level2name=N'XZKH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����˳��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_07_A12_XSZZGLXZ', @level2type=N'COLUMN',@level2name=N'PLSX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�༶ѧ��������¼��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_07_A21_BJXSHDQKJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_07_A21_BJXSHDQKJL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_07_A21_BJXSHDQKJL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��༶' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_07_A21_BJXSHDQKJL', @level2type=N'COLUMN',@level2name=N'HDBJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_07_A21_BJXSHDQKJL', @level2type=N'COLUMN',@level2name=N'SJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ص�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_07_A21_BJXSHDQKJL', @level2type=N'COLUMN',@level2name=N'DD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_07_A21_BJXSHDQKJL', @level2type=N'COLUMN',@level2name=N'CYRS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ʽ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_07_A21_BJXSHDQKJL', @level2type=N'COLUMN',@level2name=N'HDXS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_07_A21_BJXSHDQKJL', @level2type=N'COLUMN',@level2name=N'HDZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����̼�¼������ͼƬ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_07_A21_BJXSHDQKJL', @level2type=N'COLUMN',@level2name=N'HDGCJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ǣ������ε�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_07_A21_BJXSHDQKJL', @level2type=N'COLUMN',@level2name=N'HDHJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ���ͻ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_07_A31_XXDXHD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_07_A31_XXDXHD', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_07_A31_XXDXHD', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_07_A31_XXDXHD', @level2type=N'COLUMN',@level2name=N'HDZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���֯����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_07_A31_XXDXHD', @level2type=N'COLUMN',@level2name=N'HDZZBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ŀ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_07_A31_XXDXHD', @level2type=N'COLUMN',@level2name=N'XMFZR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_07_A31_XXDXHD', @level2type=N'COLUMN',@level2name=N'SJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ص�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_07_A31_XXDXHD', @level2type=N'COLUMN',@level2name=N'DD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����̼�¼����ͼƬ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_07_A31_XXDXHD', @level2type=N'COLUMN',@level2name=N'HDGCJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_07_A31_XXDXHD', @level2type=N'COLUMN',@level2name=N'HDHJ'
GO
