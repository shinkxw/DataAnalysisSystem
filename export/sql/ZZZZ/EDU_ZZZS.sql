--�ռ�����EDU_ZZZS  ��������SqlBuilder0.1

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZZS_02_01_RXCJ')
            and   type = 'U')
   drop table EDU_ZZZS_02_01_RXCJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZZS_01_A01_ZSJH')
            and   type = 'U')
   drop table EDU_ZZZS_01_A01_ZSJH
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZZS_01_01_ZSXX')
            and   type = 'U')
   drop table EDU_ZZZS_01_01_ZSXX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZZS_03_01_KSKMCJ')
            and   type = 'U')
   drop table EDU_ZZZS_03_01_KSKMCJ
go
--��ѧ�ɼ����ݱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZZS_02_01_RXCJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZZS_02_01_RXCJ](
	[XSXXID]  int  NOT NULL,--ѧ����Ϣ���ݱ�
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[RXZF]  decimal(5, 1)  NULL,--��ѧ�ܷ�
	[GKZF]  decimal(5, 1)  NULL,--�п��ܷ�
	[FJF]  decimal(5, 1)  NULL,--���ӷ�
	[FJFLBM]  nvarchar(1)  NULL,--���ӷ������
CONSTRAINT [PK_EDU_ZZZS_02_01_RXCJ] PRIMARY KEY CLUSTERED
(
	[XSXXID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�����ƻ����ݱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZZS_01_A01_ZSJH]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZZS_01_A01_ZSJH](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[ZYXXID]  int  NOT NULL,--רҵ������Ϣ
	[XNID]  int  NOT NULL,--ѧ��
	[ZSJHRS]  int  NOT NULL,--�����ƻ�
	[BZ]  text  NULL,--��ע
CONSTRAINT [PK_EDU_ZZZS_01_A01_ZSJH] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�������ݱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZZS_01_01_ZSXX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZZS_01_01_ZSXX](
	[XSXXID]  int  NOT NULL,--ѧ����Ϣ���ݱ�
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[ZKZH]  nvarchar(15)  NOT NULL,--׼��֤��
	[KSH]  nvarchar(20)  NOT NULL,--������
	[KQXZQHM]  nvarchar(6)  NULL,--��������������
	[RXNY]  nvarchar(6)  NOT NULL,--��ѧ����
	[YSWGYZM]  nvarchar(2)  NOT NULL,--Ӧ�����������
	[BKZYM1]  nvarchar(6)  NULL,--����רҵ��1
	[BKZYM2]  nvarchar(6)  NULL,--����רҵ��2
	[BKZYM3]  nvarchar(6)  NULL,--����רҵ��3
	[BKZYM4]  nvarchar(6)  NULL,--����רҵ��4
	[BKZYM5]  nvarchar(6)  NULL,--����רҵ��5
	[BKZYM6]  nvarchar(6)  NULL,--����רҵ��6
	[KSFSM]  nvarchar(1)  NOT NULL,--���Է�ʽ��
	[BYZX]  nvarchar(50)  NOT NULL,--��ҵ��ѧ
	[BYZXYZBM]  nvarchar(6)  NOT NULL,--��ҵ��ѧ��������
	[KSTC]  nvarchar(100)  NULL,--�����س�
	[JLYCC]  nvarchar(200)  NULL,--������ʹ�
	[JSHJ]  nvarchar(200)  NULL,--������
	[SHGZ]  nvarchar(200)  NULL,--��Ṥ��
	[TJJL]  nvarchar(20)  NULL,--������
	[JZBS]  nvarchar(20)  NULL,--���岡ʷ
	[KSJWBS]  nvarchar(200)  NULL,--����������ʷ
	[SG]  decimal(5, 1)  NULL,--���
	[KSSL]  decimal(3, 1)  NULL,--��������
CONSTRAINT [PK_EDU_ZZZS_01_01_ZSXX] PRIMARY KEY CLUSTERED
(
	[XSXXID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--������Ŀ�ɼ��������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZZS_03_01_KSKMCJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZZS_03_01_KSKMCJ](
	[XSXXID]  int  NOT NULL,--����ID
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[KMM]  nvarchar(2)  NOT NULL,--��Ŀ��
	[ZKFS]  decimal(5, 1)  NOT NULL,--�п�����
CONSTRAINT [PK_EDU_ZZZS_03_01_KSKMCJ] PRIMARY KEY CLUSTERED
(
	[XSXXID] ASC,
	[SCHOOLID] ASC,
	[KMM] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--����Ϊ���ע�����
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ѧ�ɼ����ݱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_02_01_RXCJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ����Ϣ���ݱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_02_01_RXCJ', @level2type=N'COLUMN',@level2name=N'XSXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_02_01_RXCJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ѧ�ܷ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_02_01_RXCJ', @level2type=N'COLUMN',@level2name=N'RXZF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�п��ܷ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_02_01_RXCJ', @level2type=N'COLUMN',@level2name=N'GKZF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ӷ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_02_01_RXCJ', @level2type=N'COLUMN',@level2name=N'FJF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ӷ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_02_01_RXCJ', @level2type=N'COLUMN',@level2name=N'FJFLBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����ƻ����ݱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_A01_ZSJH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_A01_ZSJH', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_A01_ZSJH', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'רҵ������Ϣ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_A01_ZSJH', @level2type=N'COLUMN',@level2name=N'ZYXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_A01_ZSJH', @level2type=N'COLUMN',@level2name=N'XNID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����ƻ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_A01_ZSJH', @level2type=N'COLUMN',@level2name=N'ZSJHRS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_A01_ZSJH', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������ݱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_01_ZSXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ����Ϣ���ݱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_01_ZSXX', @level2type=N'COLUMN',@level2name=N'XSXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_01_ZSXX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'׼��֤��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_01_ZSXX', @level2type=N'COLUMN',@level2name=N'ZKZH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_01_ZSXX', @level2type=N'COLUMN',@level2name=N'KSH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_01_ZSXX', @level2type=N'COLUMN',@level2name=N'KQXZQHM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ѧ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_01_ZSXX', @level2type=N'COLUMN',@level2name=N'RXNY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ӧ�����������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_01_ZSXX', @level2type=N'COLUMN',@level2name=N'YSWGYZM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����רҵ��1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_01_ZSXX', @level2type=N'COLUMN',@level2name=N'BKZYM1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����רҵ��2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_01_ZSXX', @level2type=N'COLUMN',@level2name=N'BKZYM2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����רҵ��3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_01_ZSXX', @level2type=N'COLUMN',@level2name=N'BKZYM3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����רҵ��4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_01_ZSXX', @level2type=N'COLUMN',@level2name=N'BKZYM4'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����רҵ��5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_01_ZSXX', @level2type=N'COLUMN',@level2name=N'BKZYM5'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����רҵ��6' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_01_ZSXX', @level2type=N'COLUMN',@level2name=N'BKZYM6'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���Է�ʽ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_01_ZSXX', @level2type=N'COLUMN',@level2name=N'KSFSM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ҵ��ѧ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_01_ZSXX', @level2type=N'COLUMN',@level2name=N'BYZX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ҵ��ѧ��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_01_ZSXX', @level2type=N'COLUMN',@level2name=N'BYZXYZBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����س�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_01_ZSXX', @level2type=N'COLUMN',@level2name=N'KSTC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ʹ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_01_ZSXX', @level2type=N'COLUMN',@level2name=N'JLYCC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_01_ZSXX', @level2type=N'COLUMN',@level2name=N'JSHJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ṥ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_01_ZSXX', @level2type=N'COLUMN',@level2name=N'SHGZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_01_ZSXX', @level2type=N'COLUMN',@level2name=N'TJJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���岡ʷ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_01_ZSXX', @level2type=N'COLUMN',@level2name=N'JZBS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����������ʷ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_01_ZSXX', @level2type=N'COLUMN',@level2name=N'KSJWBS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_01_ZSXX', @level2type=N'COLUMN',@level2name=N'SG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_01_ZSXX', @level2type=N'COLUMN',@level2name=N'KSSL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������Ŀ�ɼ��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_03_01_KSKMCJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_03_01_KSKMCJ', @level2type=N'COLUMN',@level2name=N'XSXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_03_01_KSKMCJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ŀ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_03_01_KSKMCJ', @level2type=N'COLUMN',@level2name=N'KMM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�п�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_03_01_KSKMCJ', @level2type=N'COLUMN',@level2name=N'ZKFS'
GO
