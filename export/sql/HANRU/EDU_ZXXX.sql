--�ռ�����EDU_ZXXX  ��������SqlBuilder0.1

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXXX_01_01_ZXXX')
            and   type = 'U')
   drop table EDU_ZXXX_01_01_ZXXX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXXX_02_01_NJ')
            and   type = 'U')
   drop table EDU_ZXXX_02_01_NJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXXX_03_01_BJ')
            and   type = 'U')
   drop table EDU_ZXXX_03_01_BJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXXX_03_A01_BJLB')
            and   type = 'U')
   drop table EDU_ZXXX_03_A01_BJLB
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXXX_04_01_JG')
            and   type = 'U')
   drop table EDU_ZXXX_04_01_JG
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXXX_10_A01_SCSZ')
            and   type = 'U')
   drop table EDU_ZXXX_10_A01_SCSZ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXXX_10_A02_YCDJ')
            and   type = 'U')
   drop table EDU_ZXXX_10_A02_YCDJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXXX_11_A01_RKJL')
            and   type = 'U')
   drop table EDU_ZXXX_11_A01_RKJL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXXX_11_A02_JSLYJL')
            and   type = 'U')
   drop table EDU_ZXXX_11_A02_JSLYJL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXXX_11_A03_BJLYJL')
            and   type = 'U')
   drop table EDU_ZXXX_11_A03_BJLYJL
go
--ѧУ�������������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXXX_01_01_ZXXX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXXX_01_01_ZXXX](
	[ID]  int  NOT NULL,--ѧУID
	[XXDM]  nvarchar(10)  NOT NULL,--ѧУ����
	[XXMC]  nvarchar(60)  NOT NULL,--ѧУ����
	[XXYWMC]  nvarchar(60)  NULL,--ѧУӢ������
	[XXDZ]  nvarchar(180)  NOT NULL,--ѧУ��ַ
	[XXYZBM]  nvarchar(6)  NOT NULL,--ѧУ��������
	[XZQHM]  nvarchar(6)  NOT NULL,--����������
	[JXNY]  nvarchar(6)  NOT NULL,--��У����
	[XQR]  nvarchar(60)  NOT NULL,--У����
	[XXBXLXM]  nvarchar(3)  NOT NULL,--ѧУ��ѧ������
	[XXZGBMM]  nvarchar(3)  NOT NULL,--ѧУ���ܲ�����
	[FDDBRH]  nvarchar(20)  NULL,--���������˺�
	[FRZSH]  nvarchar(20)  NOT NULL,--����֤���
	[XZGH]  nvarchar(20)  NULL,--У������
	[XZXM]  nvarchar(36)  NOT NULL,--У������
	[DWFZRH]  nvarchar(20)  NULL,--��ί�����˺�
	[ZZJGM]  nvarchar(10)  NULL,--��֯������
	[LXDH]  nvarchar(30)  NOT NULL,--��ϵ�绰
	[CZDH]  nvarchar(30)  NOT NULL,--����绰
	[DZXX]  nvarchar(40)  NOT NULL,--��������
	[ZYDZ]  nvarchar(60)  NOT NULL,--��ҳ��ַ
	[LSYG]  text  NOT NULL,--��ʷ�ظ�
	[XXBBM]  nvarchar(2)  NOT NULL,--ѧУ�����
	[SSZGDWM]  nvarchar(3)  NOT NULL,--�������ܵ�λ��
	[SZDCXLXM]  nvarchar(3)  NOT NULL,--���ڵس���������
	[SZDJJSXM]  nvarchar(1)  NOT NULL,--���ڵؾ���������
	[SZDMZSX]  nvarchar(1)  NOT NULL,--���ڵ���������
	[XXXZ]  decimal(3, 1)  NOT NULL,--Сѧѧ��
	[XXRXNL]  decimal(1, 0)  NOT NULL,--Сѧ��ѧ����
	[CZXZ]  decimal(3, 1)  NOT NULL,--����ѧ��
	[CZRXNL]  decimal(2, 0)  NOT NULL,--������ѧ����
	[GZXZ]  decimal(3, 1)  NOT NULL,--����ѧ��
	[ZJXYYM]  nvarchar(3)  NOT NULL,--����ѧ������
	[FJXYYM]  nvarchar(3)  NOT NULL,--����ѧ������
	[ZSBJ]  nvarchar(30)  NULL,--�����뾶
CONSTRAINT [PK_EDU_ZXXX_01_01_ZXXX] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�꼶�������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXXX_02_01_NJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXXX_02_01_NJ](
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[NJ]  nvarchar(10)  NOT NULL,--�꼶��
	[NJMC]  nvarchar(30)  NOT NULL,--�꼶����
	[ZT]  int  NOT NULL,--״̬
	[PLSX]  int  NOT NULL,--����˳��
CONSTRAINT [PK_EDU_ZXXX_02_01_NJ] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[NJ] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�༶�������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXXX_03_01_BJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXXX_03_01_BJ](
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[BH]  nvarchar(10)  NOT NULL,--���
	[NJ]  nvarchar(10)  NOT NULL,--�꼶��
	[BJ]  nvarchar(20)  NULL,--�༶����
	[JBNY]  nvarchar(6)  NULL,--��������
	[BZRGH]  nvarchar(20)  NULL,--�����ι���
	[BZXH]  nvarchar(20)  NULL,--�೤ѧ��
	[BJRYCH]  nvarchar(40)  NULL,--�༶�����ƺ�
	[XZ]  decimal(3, 1)  NULL,--ѧ��
	[BJLXM]  nvarchar(2)  NULL,--�༶������
	[WLLX]  nvarchar(2)  NULL,--��������
	[BYRQ]  nvarchar(8)  NULL,--��ҵ����
	[SFSSMZSYJXB]  nvarchar(1)  NOT NULL,--�Ƿ���������˫���ѧ��
	[SYJXMSM]  nvarchar(1)  NOT NULL,--˫���ѧģʽ��
	[BZRID]  int  NOT NULL,--������ID
	[ZT]  int  NOT NULL,--״̬
	[PLSX]  int  NOT NULL,--����˳��
	[BJLBID]  int  NOT NULL,--�༶���ID
	[FBZRID]  int  NOT NULL,--��������ID
CONSTRAINT [PK_EDU_ZXXX_03_01_BJ] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[BH] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�༶����
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXXX_03_A01_BJLB]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXXX_03_A01_BJLB](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[LBMC]  nvarchar(50)  NOT NULL,--�������
CONSTRAINT [PK_EDU_ZXXX_03_A01_BJLB] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�����������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXXX_04_01_JG]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXXX_04_01_JG](
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[JGH]  nvarchar(10)  NOT NULL,--������
	[LSJGH]  nvarchar(10)  NOT NULL,--����������
	[JGMC]  nvarchar(60)  NOT NULL,--��������
	[JGJC]  nvarchar(10)  NOT NULL,--�������
	[FZRGH]  nvarchar(20)  NULL,--�����˹���
CONSTRAINT [PK_EDU_ZXXX_04_01_JG] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[JGH] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�������ñ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXXX_10_A01_SCSZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXXX_10_A01_SCSZ](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[MC]  nvarchar(50)  NOT NULL,--����
	[JG]  decimal(8, 2)  NOT NULL,--�۸�
CONSTRAINT [PK_EDU_ZXXX_10_A01_SCSZ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�ò͵ǼǱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXXX_10_A02_YCDJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXXX_10_A02_YCDJ](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[XSID]  int  NOT NULL,--ѧ��ID
	[SCID]  int  NOT NULL,--����ID
	[RQ]  datetime  NOT NULL,--����
	[SFJC]  nvarchar(1)  NOT NULL,--�Ƿ�Ͳ�
CONSTRAINT [PK_EDU_ZXXX_10_A02_YCDJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--����¼��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXXX_11_A01_RKJL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXXX_11_A01_RKJL](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[ZCM]  nvarchar(50)  NOT NULL,--�ʲ���
	[SL]  int  NOT NULL,--����
	[DJ]  decimal(8, 2)  NOT NULL,--����
	[RKSJ]  datetime  NOT NULL,--���ʱ��
CONSTRAINT [PK_EDU_ZXXX_11_A01_RKJL] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--��ʦ���ü�¼��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXXX_11_A02_JSLYJL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXXX_11_A02_JSLYJL](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[LYJSID]  int  NOT NULL,--���ý�ʦID
	[ZCID]  int  NOT NULL,--�ʲ�ID
	[LYSL]  int  NOT NULL,--��������
	[LYSJ]  datetime  NOT NULL,--����ʱ��
	[SHZT]  int  NOT NULL,--���״̬
	[SHYHID]  nvarchar(20)  NOT NULL,--����û�ID
CONSTRAINT [PK_EDU_ZXXX_11_A02_JSLYJL] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�༶���ü�¼��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXXX_11_A03_BJLYJL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXXX_11_A03_BJLYJL](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[BJID]  nvarchar(10)  NOT NULL,--�༶ID
	[ZCID]  int  NOT NULL,--�ʲ�ID
	[LYR]  nvarchar(50)  NOT NULL,--������
	[LYSL]  int  NOT NULL,--��������
	[LYSJ]  datetime  NOT NULL,--����ʱ��
	[SHZT]  int  NOT NULL,--���״̬
	[SHYHID]  nvarchar(20)  NOT NULL,--����û�ID
CONSTRAINT [PK_EDU_ZXXX_11_A03_BJLYJL] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--����Ϊ���ע�����
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ�������������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'XXDM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'XXMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУӢ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'XXYWMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��ַ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'XXDZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'XXYZBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'XZQHM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��У����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'JXNY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'У����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'XQR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��ѧ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'XXBXLXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ���ܲ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'XXZGBMM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���������˺�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'FDDBRH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����֤���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'FRZSH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'У������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'XZGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'У������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'XZXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ί�����˺�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'DWFZRH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��֯������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'ZZJGM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ϵ�绰' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'LXDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����绰' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'CZDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'DZXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ҳ��ַ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'ZYDZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʷ�ظ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'LSYG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'XXBBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������ܵ�λ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'SSZGDWM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ڵس���������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'SZDCXLXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ڵؾ���������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'SZDJJSXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ڵ���������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'SZDMZSX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Сѧѧ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'XXXZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Сѧ��ѧ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'XXRXNL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ѧ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'CZXZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ѧ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'CZRXNL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ѧ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'GZXZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ѧ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'ZJXYYM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ѧ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'FJXYYM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����뾶' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'ZSBJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�꼶�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_02_01_NJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_02_01_NJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�꼶��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_02_01_NJ', @level2type=N'COLUMN',@level2name=N'NJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�꼶����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_02_01_NJ', @level2type=N'COLUMN',@level2name=N'NJMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_02_01_NJ', @level2type=N'COLUMN',@level2name=N'ZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����˳��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_02_01_NJ', @level2type=N'COLUMN',@level2name=N'PLSX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�༶�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_03_01_BJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_03_01_BJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_03_01_BJ', @level2type=N'COLUMN',@level2name=N'BH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�꼶��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_03_01_BJ', @level2type=N'COLUMN',@level2name=N'NJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�༶����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_03_01_BJ', @level2type=N'COLUMN',@level2name=N'BJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_03_01_BJ', @level2type=N'COLUMN',@level2name=N'JBNY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����ι���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_03_01_BJ', @level2type=N'COLUMN',@level2name=N'BZRGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�೤ѧ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_03_01_BJ', @level2type=N'COLUMN',@level2name=N'BZXH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�༶�����ƺ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_03_01_BJ', @level2type=N'COLUMN',@level2name=N'BJRYCH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_03_01_BJ', @level2type=N'COLUMN',@level2name=N'XZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�༶������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_03_01_BJ', @level2type=N'COLUMN',@level2name=N'BJLXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_03_01_BJ', @level2type=N'COLUMN',@level2name=N'WLLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ҵ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_03_01_BJ', @level2type=N'COLUMN',@level2name=N'BYRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ���������˫���ѧ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_03_01_BJ', @level2type=N'COLUMN',@level2name=N'SFSSMZSYJXB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'˫���ѧģʽ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_03_01_BJ', @level2type=N'COLUMN',@level2name=N'SYJXMSM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_03_01_BJ', @level2type=N'COLUMN',@level2name=N'BZRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_03_01_BJ', @level2type=N'COLUMN',@level2name=N'ZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����˳��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_03_01_BJ', @level2type=N'COLUMN',@level2name=N'PLSX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�༶���ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_03_01_BJ', @level2type=N'COLUMN',@level2name=N'BJLBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_03_01_BJ', @level2type=N'COLUMN',@level2name=N'FBZRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�༶����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_03_A01_BJLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_03_A01_BJLB', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_03_A01_BJLB', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_03_A01_BJLB', @level2type=N'COLUMN',@level2name=N'LBMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_04_01_JG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_04_01_JG', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_04_01_JG', @level2type=N'COLUMN',@level2name=N'JGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_04_01_JG', @level2type=N'COLUMN',@level2name=N'LSJGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_04_01_JG', @level2type=N'COLUMN',@level2name=N'JGMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_04_01_JG', @level2type=N'COLUMN',@level2name=N'JGJC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����˹���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_04_01_JG', @level2type=N'COLUMN',@level2name=N'FZRGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������ñ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_10_A01_SCSZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_10_A01_SCSZ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_10_A01_SCSZ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_10_A01_SCSZ', @level2type=N'COLUMN',@level2name=N'MC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�۸�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_10_A01_SCSZ', @level2type=N'COLUMN',@level2name=N'JG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ò͵ǼǱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_10_A02_YCDJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_10_A02_YCDJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_10_A02_YCDJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_10_A02_YCDJ', @level2type=N'COLUMN',@level2name=N'XSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_10_A02_YCDJ', @level2type=N'COLUMN',@level2name=N'SCID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_10_A02_YCDJ', @level2type=N'COLUMN',@level2name=N'RQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ�Ͳ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_10_A02_YCDJ', @level2type=N'COLUMN',@level2name=N'SFJC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����¼��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_11_A01_RKJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_11_A01_RKJL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_11_A01_RKJL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ʲ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_11_A01_RKJL', @level2type=N'COLUMN',@level2name=N'ZCM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_11_A01_RKJL', @level2type=N'COLUMN',@level2name=N'SL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_11_A01_RKJL', @level2type=N'COLUMN',@level2name=N'DJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_11_A01_RKJL', @level2type=N'COLUMN',@level2name=N'RKSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʦ���ü�¼��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_11_A02_JSLYJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_11_A02_JSLYJL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_11_A02_JSLYJL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ý�ʦID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_11_A02_JSLYJL', @level2type=N'COLUMN',@level2name=N'LYJSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ʲ�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_11_A02_JSLYJL', @level2type=N'COLUMN',@level2name=N'ZCID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_11_A02_JSLYJL', @level2type=N'COLUMN',@level2name=N'LYSL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_11_A02_JSLYJL', @level2type=N'COLUMN',@level2name=N'LYSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_11_A02_JSLYJL', @level2type=N'COLUMN',@level2name=N'SHZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����û�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_11_A02_JSLYJL', @level2type=N'COLUMN',@level2name=N'SHYHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�༶���ü�¼��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_11_A03_BJLYJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_11_A03_BJLYJL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_11_A03_BJLYJL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�༶ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_11_A03_BJLYJL', @level2type=N'COLUMN',@level2name=N'BJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ʲ�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_11_A03_BJLYJL', @level2type=N'COLUMN',@level2name=N'ZCID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_11_A03_BJLYJL', @level2type=N'COLUMN',@level2name=N'LYR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_11_A03_BJLYJL', @level2type=N'COLUMN',@level2name=N'LYSL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_11_A03_BJLYJL', @level2type=N'COLUMN',@level2name=N'LYSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_11_A03_BJLYJL', @level2type=N'COLUMN',@level2name=N'SHZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����û�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_11_A03_BJLYJL', @level2type=N'COLUMN',@level2name=N'SHYHID'
GO
