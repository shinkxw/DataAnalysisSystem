
if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZBG_10_A01_TZ')
            and   type = 'U')
   drop table EDU_ZZBG_10_A01_TZ
go
--֪ͨ���ݱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZBG_10_A01_TZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZBG_10_A01_TZ](
	[ID]  int  NOT NULL,--֪ͨID
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[FSRID]  nvarchar(20)  NOT NULL,--������ID
	[FSRLB]  int  NOT NULL,--���������
	[BT]  nvarchar(100)  NOT NULL,--����
	[NR]  text  NOT NULL,--����
	[FJ]  nvarchar(500)  NULL,--����
	[TJRQ]  datetime  NOT NULL,--�������
	[JSRS]  int  NOT NULL,--��������
	[JSRIDLB]  text  NOT NULL,--������ID�б�
	[JSRMZLB]  text  NOT NULL,--�����������б�
	[YYDRIDLB]  text  NULL,--���Ķ���ID�б�
	[YYDRMZLB]  text  NOT NULL,--���Ķ��������б�
	[FSZT]  int  NOT NULL,--����״̬
CONSTRAINT [PK_EDU_ZZBG_10_A01_TZ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'֪ͨ���ݱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_10_A01_TZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'֪ͨID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_10_A01_TZ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_10_A01_TZ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_10_A01_TZ', @level2type=N'COLUMN',@level2name=N'FSRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_10_A01_TZ', @level2type=N'COLUMN',@level2name=N'FSRLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_10_A01_TZ', @level2type=N'COLUMN',@level2name=N'BT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_10_A01_TZ', @level2type=N'COLUMN',@level2name=N'NR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_10_A01_TZ', @level2type=N'COLUMN',@level2name=N'FJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_10_A01_TZ', @level2type=N'COLUMN',@level2name=N'TJRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_10_A01_TZ', @level2type=N'COLUMN',@level2name=N'JSRS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ID�б�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_10_A01_TZ', @level2type=N'COLUMN',@level2name=N'JSRIDLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����������б�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_10_A01_TZ', @level2type=N'COLUMN',@level2name=N'JSRMZLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���Ķ���ID�б�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_10_A01_TZ', @level2type=N'COLUMN',@level2name=N'YYDRIDLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���Ķ��������б�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_10_A01_TZ', @level2type=N'COLUMN',@level2name=N'YYDRMZLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_10_A01_TZ', @level2type=N'COLUMN',@level2name=N'FSZT'
GO


if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZBG_10_A02_TZYDJL')
            and   type = 'U')
   drop table EDU_ZZBG_10_A02_TZYDJL
go
--֪ͨ�Ķ���¼
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZBG_10_A02_TZYDJL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZBG_10_A02_TZYDJL](
	[ID]  int  NOT NULL,--֪ͨ�Ķ���¼ID
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[TZID]  int  NOT NULL,--֪ͨID
	[BTZRID]  nvarchar(20)  NOT NULL,--��֪ͨ��ID
	[YDRQ]  datetime  NOT NULL,--�Ķ�����
	[SFYD]  nvarchar(1)  NOT NULL,--�Ƿ����Ķ�
CONSTRAINT [PK_EDU_ZZBG_10_A02_TZYDJL] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'֪ͨ�Ķ���¼' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_10_A02_TZYDJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'֪ͨ�Ķ���¼ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_10_A02_TZYDJL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_10_A02_TZYDJL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'֪ͨID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_10_A02_TZYDJL', @level2type=N'COLUMN',@level2name=N'TZID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��֪ͨ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_10_A02_TZYDJL', @level2type=N'COLUMN',@level2name=N'BTZRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ķ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_10_A02_TZYDJL', @level2type=N'COLUMN',@level2name=N'YDRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ����Ķ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_10_A02_TZYDJL', @level2type=N'COLUMN',@level2name=N'SFYD'
GO


if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZBG_10_A03_GG')
            and   type = 'U')
   drop table EDU_ZZBG_10_A03_GG
go
--�������ݱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZBG_10_A03_GG]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZBG_10_A03_GG](
	[ID]  int  NOT NULL,--����ID
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[FBRID]  nvarchar(20)  NOT NULL,--������ID
	[FBBM]  nvarchar(100)  NOT NULL,--��������
	[FBSJ]  datetime  NOT NULL,--����ʱ��
	[BT]  nvarchar(200)  NOT NULL,--�������
	[NR]  text  NOT NULL,--��������
	[ZT]  int  NOT NULL,--����״̬
CONSTRAINT [PK_EDU_ZZBG_10_A03_GG] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������ݱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_10_A03_GG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_10_A03_GG', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_10_A03_GG', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_10_A03_GG', @level2type=N'COLUMN',@level2name=N'FBRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_10_A03_GG', @level2type=N'COLUMN',@level2name=N'FBBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_10_A03_GG', @level2type=N'COLUMN',@level2name=N'FBSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_10_A03_GG', @level2type=N'COLUMN',@level2name=N'BT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_10_A03_GG', @level2type=N'COLUMN',@level2name=N'NR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_10_A03_GG', @level2type=N'COLUMN',@level2name=N'ZT'
GO


if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZBG_11_A01_YJ')
            and   type = 'U')
   drop table EDU_ZZBG_11_A01_YJ
go
--�ʼ����ݱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZBG_11_A01_YJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZBG_11_A01_YJ](
	[ID]  int  NOT NULL,--�ʼ�ID
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[FSRID]  nvarchar(20)  NOT NULL,--������ID
	[JSRID]  nvarchar(20)  NOT NULL,--������ID
	[FSRMC]  nvarchar(100)  NOT NULL,--����������
	[FSRLB]  int  NOT NULL,--���������
	[JSRMC]  nvarchar(100)  NOT NULL,--����������
	[JSRLB]  int  NOT NULL,--���������
	[JSRIDLB]  text  NOT NULL,--������ID�б�
	[JSRMCLB]  text  NOT NULL,--�����������б�
	[BT]  nvarchar(200)  NOT NULL,--����
	[NR]  text  NOT NULL,--����
	[FJ]  nvarchar(200)  NOT NULL,--����
	[FSSJ]  datetime  NOT NULL,--����ʱ��
	[SFYD]  nvarchar(1)  NOT NULL,--�Ƿ����Ķ�
	[YJLX]  int  NOT NULL,--�ʼ�����
CONSTRAINT [PK_EDU_ZZBG_11_A01_YJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ʼ����ݱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_11_A01_YJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ʼ�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_11_A01_YJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_11_A01_YJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_11_A01_YJ', @level2type=N'COLUMN',@level2name=N'FSRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_11_A01_YJ', @level2type=N'COLUMN',@level2name=N'JSRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_11_A01_YJ', @level2type=N'COLUMN',@level2name=N'FSRMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_11_A01_YJ', @level2type=N'COLUMN',@level2name=N'FSRLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_11_A01_YJ', @level2type=N'COLUMN',@level2name=N'JSRMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_11_A01_YJ', @level2type=N'COLUMN',@level2name=N'JSRLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ID�б�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_11_A01_YJ', @level2type=N'COLUMN',@level2name=N'JSRIDLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����������б�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_11_A01_YJ', @level2type=N'COLUMN',@level2name=N'JSRMCLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_11_A01_YJ', @level2type=N'COLUMN',@level2name=N'BT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_11_A01_YJ', @level2type=N'COLUMN',@level2name=N'NR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_11_A01_YJ', @level2type=N'COLUMN',@level2name=N'FJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_11_A01_YJ', @level2type=N'COLUMN',@level2name=N'FSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ����Ķ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_11_A01_YJ', @level2type=N'COLUMN',@level2name=N'SFYD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ʼ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_11_A01_YJ', @level2type=N'COLUMN',@level2name=N'YJLX'
GO


if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZBG_01_01_WJJBSJ')
            and   type = 'U')
   drop table EDU_ZZBG_01_01_WJJBSJ
go
--�ļ������������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZBG_01_01_WJJBSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZBG_01_01_WJJBSJ](
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[ID]  int  NOT NULL,--�ļ�ID
	[WJBH]  nvarchar(10)  NOT NULL,--�ļ����
	[WJWH]  nvarchar(24)  NOT NULL,--�ļ��ĺ�
	[BT]  nvarchar(60)  NOT NULL,--����
	[ZTC]  text  NOT NULL,--�����
	[MJM]  nvarchar(1)  NOT NULL,--�ܼ���
	[JJCDM]  nvarchar(1)  NOT NULL,--�����̶���
	[YS]  decimal(6)  NULL,--ҳ��
	[WJFLM]  nvarchar(2)  NOT NULL,--�ļ�������
	[ZW]  text  NOT NULL,--����
	[FJ]  text  NOT NULL,--����
	[FWRQ]  nvarchar(8)  NOT NULL,--��������
	[CSDW]  text  NOT NULL,--���͵�λ
CONSTRAINT [PK_EDU_ZZBG_01_01_WJJBSJ] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ļ������������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_01_01_WJJBSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_01_01_WJJBSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ļ�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_01_01_WJJBSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ļ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_01_01_WJJBSJ', @level2type=N'COLUMN',@level2name=N'WJBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ļ��ĺ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_01_01_WJJBSJ', @level2type=N'COLUMN',@level2name=N'WJWH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_01_01_WJJBSJ', @level2type=N'COLUMN',@level2name=N'BT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_01_01_WJJBSJ', @level2type=N'COLUMN',@level2name=N'ZTC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ܼ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_01_01_WJJBSJ', @level2type=N'COLUMN',@level2name=N'MJM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����̶���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_01_01_WJJBSJ', @level2type=N'COLUMN',@level2name=N'JJCDM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ҳ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_01_01_WJJBSJ', @level2type=N'COLUMN',@level2name=N'YS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ļ�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_01_01_WJJBSJ', @level2type=N'COLUMN',@level2name=N'WJFLM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_01_01_WJJBSJ', @level2type=N'COLUMN',@level2name=N'ZW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_01_01_WJJBSJ', @level2type=N'COLUMN',@level2name=N'FJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_01_01_WJJBSJ', @level2type=N'COLUMN',@level2name=N'FWRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���͵�λ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_01_01_WJJBSJ', @level2type=N'COLUMN',@level2name=N'CSDW'
GO


if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZBG_02_01_SWCL')
            and   type = 'U')
   drop table EDU_ZZBG_02_01_SWCL
go
--���Ĵ��������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZBG_02_01_SWCL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZBG_02_01_SWCL](
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[WJID]  int  NOT NULL,--�ļ�ID
	[JBYHID]  nvarchar(20)  NOT NULL,--�����û�ID
	[QSRGH]  nvarchar(20)  NOT NULL,--ǩ���˹���
	[CFRGH]  nvarchar(20)  NOT NULL,--����˹���
	[DJRGH]  nvarchar(20)  NOT NULL,--�Ǽ��˹���
	[SWRQ]  nvarchar(8)  NOT NULL,--��������
	[LWDW]  nvarchar(60)  NOT NULL,--���ĵ�λ
	[FS]  decimal(3)  NOT NULL,--����
	[CLQK]  text  NOT NULL,--�������
	[FYFS]  decimal(4)  NULL,--��ӡ����
CONSTRAINT [PK_EDU_ZZBG_02_01_SWCL] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[WJID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���Ĵ��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_02_01_SWCL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_02_01_SWCL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ļ�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_02_01_SWCL', @level2type=N'COLUMN',@level2name=N'WJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����û�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_02_01_SWCL', @level2type=N'COLUMN',@level2name=N'JBYHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ǩ���˹���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_02_01_SWCL', @level2type=N'COLUMN',@level2name=N'QSRGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����˹���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_02_01_SWCL', @level2type=N'COLUMN',@level2name=N'CFRGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ǽ��˹���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_02_01_SWCL', @level2type=N'COLUMN',@level2name=N'DJRGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_02_01_SWCL', @level2type=N'COLUMN',@level2name=N'SWRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ĵ�λ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_02_01_SWCL', @level2type=N'COLUMN',@level2name=N'LWDW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_02_01_SWCL', @level2type=N'COLUMN',@level2name=N'FS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_02_01_SWCL', @level2type=N'COLUMN',@level2name=N'CLQK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ӡ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_02_01_SWCL', @level2type=N'COLUMN',@level2name=N'FYFS'
GO


if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZBG_02_02_WJYB')
            and   type = 'U')
   drop table EDU_ZZBG_02_02_WJYB
go
--�ļ��İ������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZBG_02_02_WJYB]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZBG_02_02_WJYB](
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[WJID]  int  NOT NULL,--�ļ�ID
	[JBYHID]  nvarchar(20)  NOT NULL,--�����û�ID
	[YBLBM]  nvarchar(1)  NULL,--�İ������
	[YBJB]  nvarchar(30)  NULL,--�İ켶��
	[YBDW]  nvarchar(60)  NULL,--�İ쵥λ
	[YBDWBH]  nvarchar(10)  NULL,--�İ쵥λ���
	[YBRGH]  nvarchar(20)  NULL,--�İ��˹���
	[YBYJ]  text  NOT NULL,--�İ����
	[YBRQ]  nvarchar(8)  NULL,--�İ�����
CONSTRAINT [PK_EDU_ZZBG_02_02_WJYB] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[WJID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ļ��İ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_02_02_WJYB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_02_02_WJYB', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ļ�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_02_02_WJYB', @level2type=N'COLUMN',@level2name=N'WJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����û�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_02_02_WJYB', @level2type=N'COLUMN',@level2name=N'JBYHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�İ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_02_02_WJYB', @level2type=N'COLUMN',@level2name=N'YBLBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�İ켶��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_02_02_WJYB', @level2type=N'COLUMN',@level2name=N'YBJB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�İ쵥λ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_02_02_WJYB', @level2type=N'COLUMN',@level2name=N'YBDW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�İ쵥λ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_02_02_WJYB', @level2type=N'COLUMN',@level2name=N'YBDWBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�İ��˹���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_02_02_WJYB', @level2type=N'COLUMN',@level2name=N'YBRGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�İ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_02_02_WJYB', @level2type=N'COLUMN',@level2name=N'YBYJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�İ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_02_02_WJYB', @level2type=N'COLUMN',@level2name=N'YBRQ'
GO


if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZBG_03_01_FWCL')
            and   type = 'U')
   drop table EDU_ZZBG_03_01_FWCL
go
--���Ĵ��������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZBG_03_01_FWCL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZBG_03_01_FWCL](
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[WJID]  int  NOT NULL,--�ļ�ID
	[JBYHID]  nvarchar(20)  NOT NULL,--�����û�ID
	[NGRGH]  nvarchar(20)  NOT NULL,--����˹���
	[NGRQ]  nvarchar(8)  NULL,--�������
	[QFRGH]  nvarchar(20)  NOT NULL,--ǩ���˹���
	[QFRQ]  nvarchar(8)  NOT NULL,--ǩ������
	[FSFW]  nvarchar(60)  NOT NULL,--���ͷ�Χ
	[FSFSM]  nvarchar(1)  NOT NULL,--���ͷ�ʽ��
	[DJRGH]  nvarchar(20)  NOT NULL,--�Ǽ��˹���
	[DJRQ]  nvarchar(8)  NOT NULL,--�Ǽ�����
	[FWJS]  decimal(4)  NOT NULL,--���ļ���
	[GWFWRQ]  nvarchar(8)  NOT NULL,--���ķ�������
	[CLQK]  text  NOT NULL,--�������
	[DZRGH]  nvarchar(20)  NULL,--�����˹���
	[JDRGH]  nvarchar(20)  NULL,--У���˹���
	[FZFSM]  nvarchar(1)  NOT NULL,--��װ��ʽ��
CONSTRAINT [PK_EDU_ZZBG_03_01_FWCL] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[WJID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���Ĵ��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_03_01_FWCL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_03_01_FWCL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ļ�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_03_01_FWCL', @level2type=N'COLUMN',@level2name=N'WJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����û�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_03_01_FWCL', @level2type=N'COLUMN',@level2name=N'JBYHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����˹���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_03_01_FWCL', @level2type=N'COLUMN',@level2name=N'NGRGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_03_01_FWCL', @level2type=N'COLUMN',@level2name=N'NGRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ǩ���˹���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_03_01_FWCL', @level2type=N'COLUMN',@level2name=N'QFRGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ǩ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_03_01_FWCL', @level2type=N'COLUMN',@level2name=N'QFRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ͷ�Χ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_03_01_FWCL', @level2type=N'COLUMN',@level2name=N'FSFW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ͷ�ʽ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_03_01_FWCL', @level2type=N'COLUMN',@level2name=N'FSFSM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ǽ��˹���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_03_01_FWCL', @level2type=N'COLUMN',@level2name=N'DJRGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ǽ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_03_01_FWCL', @level2type=N'COLUMN',@level2name=N'DJRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ļ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_03_01_FWCL', @level2type=N'COLUMN',@level2name=N'FWJS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ķ�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_03_01_FWCL', @level2type=N'COLUMN',@level2name=N'GWFWRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_03_01_FWCL', @level2type=N'COLUMN',@level2name=N'CLQK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����˹���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_03_01_FWCL', @level2type=N'COLUMN',@level2name=N'DZRGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'У���˹���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_03_01_FWCL', @level2type=N'COLUMN',@level2name=N'JDRGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��װ��ʽ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_03_01_FWCL', @level2type=N'COLUMN',@level2name=N'FZFSM'
GO


if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZBG_03_02_HG')
            and   type = 'U')
   drop table EDU_ZZBG_03_02_HG
go
--�˸������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZBG_03_02_HG]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZBG_03_02_HG](
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[WJID]  int  NOT NULL,--�ļ�ID
	[JBYHID]  nvarchar(20)  NOT NULL,--�����û�ID
	[HGRGH]  nvarchar(20)  NOT NULL,--�˸��˹���
	[HGDW]  nvarchar(60)  NOT NULL,--�˸嵥λ
	[HGYJ]  text  NOT NULL,--�˸����
	[HGRQ]  nvarchar(8)  NOT NULL,--�˸�����
CONSTRAINT [PK_EDU_ZZBG_03_02_HG] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[WJID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�˸������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_03_02_HG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_03_02_HG', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ļ�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_03_02_HG', @level2type=N'COLUMN',@level2name=N'WJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����û�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_03_02_HG', @level2type=N'COLUMN',@level2name=N'JBYHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�˸��˹���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_03_02_HG', @level2type=N'COLUMN',@level2name=N'HGRGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�˸嵥λ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_03_02_HG', @level2type=N'COLUMN',@level2name=N'HGDW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�˸����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_03_02_HG', @level2type=N'COLUMN',@level2name=N'HGYJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�˸�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_03_02_HG', @level2type=N'COLUMN',@level2name=N'HGRQ'
GO


if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZBG_03_03_HQ')
            and   type = 'U')
   drop table EDU_ZZBG_03_03_HQ
go
--��ǩ�����
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZBG_03_03_HQ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZBG_03_03_HQ](
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[WJID]  int  NOT NULL,--�ļ�ID
	[JBYHID]  nvarchar(20)  NOT NULL,--�����û�ID
	[HQR]  nvarchar(36)  NOT NULL,--��ǩ��
	[HQDW]  nvarchar(60)  NOT NULL,--��ǩ��λ
	[HQYJ]  text  NOT NULL,--��ǩ���
	[HQRQ]  nvarchar(8)  NOT NULL,--��ǩ����
CONSTRAINT [PK_EDU_ZZBG_03_03_HQ] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[WJID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ǩ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_03_03_HQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_03_03_HQ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ļ�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_03_03_HQ', @level2type=N'COLUMN',@level2name=N'WJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����û�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_03_03_HQ', @level2type=N'COLUMN',@level2name=N'JBYHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ǩ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_03_03_HQ', @level2type=N'COLUMN',@level2name=N'HQR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ǩ��λ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_03_03_HQ', @level2type=N'COLUMN',@level2name=N'HQDW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ǩ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_03_03_HQ', @level2type=N'COLUMN',@level2name=N'HQYJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ǩ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_03_03_HQ', @level2type=N'COLUMN',@level2name=N'HQRQ'
GO


if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZBG_03_04_CP')
            and   type = 'U')
   drop table EDU_ZZBG_03_04_CP
go
--���������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZBG_03_04_CP]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZBG_03_04_CP](
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[WJID]  int  NOT NULL,--�ļ�ID
	[JBYHID]  nvarchar(20)  NOT NULL,--�����û�ID
	[PFR]  nvarchar(36)  NOT NULL,--������
	[PFDW]  nvarchar(60)  NOT NULL,--������λ
	[PFYJ]  text  NOT NULL,--�������
	[PFRQ]  nvarchar(8)  NOT NULL,--��������
CONSTRAINT [PK_EDU_ZZBG_03_04_CP] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[WJID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_03_04_CP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_03_04_CP', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ļ�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_03_04_CP', @level2type=N'COLUMN',@level2name=N'WJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����û�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_03_04_CP', @level2type=N'COLUMN',@level2name=N'JBYHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_03_04_CP', @level2type=N'COLUMN',@level2name=N'PFR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������λ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_03_04_CP', @level2type=N'COLUMN',@level2name=N'PFDW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_03_04_CP', @level2type=N'COLUMN',@level2name=N'PFYJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_03_04_CP', @level2type=N'COLUMN',@level2name=N'PFRQ'
GO


if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZBG_04_01_WJQT')
            and   type = 'U')
   drop table EDU_ZZBG_04_01_WJQT
go
--�ļ������������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZBG_04_01_WJQT]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZBG_04_01_WJQT](
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[WJID]  int  NOT NULL,--�ļ�ID
	[JBYHID]  nvarchar(20)  NOT NULL,--�����û�ID
	[QTRQ]  nvarchar(8)  NOT NULL,--��������
	[QTFW]  nvarchar(180)  NOT NULL,--���˷�Χ
	[QTSM]  text  NULL,--����˵��
	[JBRGH]  nvarchar(20)  NOT NULL,--�����˹���
CONSTRAINT [PK_EDU_ZZBG_04_01_WJQT] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[WJID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ļ������������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_04_01_WJQT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_04_01_WJQT', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ļ�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_04_01_WJQT', @level2type=N'COLUMN',@level2name=N'WJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����û�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_04_01_WJQT', @level2type=N'COLUMN',@level2name=N'JBYHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_04_01_WJQT', @level2type=N'COLUMN',@level2name=N'QTRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���˷�Χ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_04_01_WJQT', @level2type=N'COLUMN',@level2name=N'QTFW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����˵��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_04_01_WJQT', @level2type=N'COLUMN',@level2name=N'QTSM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����˹���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_04_01_WJQT', @level2type=N'COLUMN',@level2name=N'JBRGH'
GO


if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZBG_05_01_WJXH')
            and   type = 'U')
   drop table EDU_ZZBG_05_01_WJXH
go
--�ļ������������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZBG_05_01_WJXH]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZBG_05_01_WJXH](
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[WJID]  int  NOT NULL,--�ļ�ID
	[JBYHID]  nvarchar(20)  NOT NULL,--�����û�ID
	[XHRQ]  nvarchar(8)  NOT NULL,--��������
	[XHSPRGH]  nvarchar(20)  NOT NULL,--���������˹���
	[XHSM]  text  NULL,--����˵��
	[JBRGH]  nvarchar(20)  NOT NULL,--�����˹���
CONSTRAINT [PK_EDU_ZZBG_05_01_WJXH] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[WJID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ļ������������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_05_01_WJXH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_05_01_WJXH', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ļ�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_05_01_WJXH', @level2type=N'COLUMN',@level2name=N'WJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����û�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_05_01_WJXH', @level2type=N'COLUMN',@level2name=N'JBYHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_05_01_WJXH', @level2type=N'COLUMN',@level2name=N'XHRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���������˹���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_05_01_WJXH', @level2type=N'COLUMN',@level2name=N'XHSPRGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����˵��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_05_01_WJXH', @level2type=N'COLUMN',@level2name=N'XHSM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����˹���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_05_01_WJXH', @level2type=N'COLUMN',@level2name=N'JBRGH'
GO


if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZBG_06_01_WJJQ')
            and   type = 'U')
   drop table EDU_ZZBG_06_01_WJJQ
go
--�ļ������������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZBG_06_01_WJJQ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZBG_06_01_WJJQ](
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[WJID]  int  NOT NULL,--�ļ�ID
	[JBYHID]  nvarchar(20)  NOT NULL,--�����û�ID
	[JYR]  nvarchar(36)  NOT NULL,--������
	[JYRQ]  nvarchar(8)  NOT NULL,--��������
	[JYSPRGH]  nvarchar(20)  NOT NULL,--���������˹���
	[JYJBRGH]  nvarchar(20)  NOT NULL,--���ľ����˹���
	[JYYY]  nvarchar(80)  NULL,--����ԭ��
CONSTRAINT [PK_EDU_ZZBG_06_01_WJJQ] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[WJID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ļ������������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_06_01_WJJQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_06_01_WJJQ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ļ�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_06_01_WJJQ', @level2type=N'COLUMN',@level2name=N'WJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����û�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_06_01_WJJQ', @level2type=N'COLUMN',@level2name=N'JBYHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_06_01_WJJQ', @level2type=N'COLUMN',@level2name=N'JYR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_06_01_WJJQ', @level2type=N'COLUMN',@level2name=N'JYRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���������˹���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_06_01_WJJQ', @level2type=N'COLUMN',@level2name=N'JYSPRGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ľ����˹���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_06_01_WJJQ', @level2type=N'COLUMN',@level2name=N'JYJBRGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ԭ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_06_01_WJJQ', @level2type=N'COLUMN',@level2name=N'JYYY'
GO


if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZBG_12_A01_SJFB')
            and   type = 'U')
   drop table EDU_ZZBG_12_A01_SJFB
go
--���ݷ������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZBG_12_A01_SJFB]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZBG_12_A01_SJFB](
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[WJID]  int  NOT NULL,--�ļ�ID
	[JBYHID]  nvarchar(20)  NOT NULL,--�����û�ID
	[FBH]  nvarchar(10)  NOT NULL,--������
	[XXBT]  nvarchar(100)  NOT NULL,--���ݱ���
	[FBLMH]  nvarchar(2)  NOT NULL,--������Ŀ��
	[SJNR]  text  NOT NULL,--��������
	[FJS]  decimal(2)  NOT NULL,--������
	[FBRQ]  nvarchar(8)  NOT NULL,--��������
	[FBDW]  nvarchar(10)  NOT NULL,--������λ��
	[FBRGH]  nvarchar(20)  NULL,--�����˹���
	[FBFW]  nvarchar(200)  NULL,--������Χ
	[FBBZRH]  nvarchar(10)  NOT NULL,--������׼�˺�
	[SJZT]  nvarchar(10)  NOT NULL,--����״̬
CONSTRAINT [PK_EDU_ZZBG_12_A01_SJFB] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[WJID] ASC,
	[FBH] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ݷ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_12_A01_SJFB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_12_A01_SJFB', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ļ�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_12_A01_SJFB', @level2type=N'COLUMN',@level2name=N'WJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����û�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_12_A01_SJFB', @level2type=N'COLUMN',@level2name=N'JBYHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_12_A01_SJFB', @level2type=N'COLUMN',@level2name=N'FBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ݱ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_12_A01_SJFB', @level2type=N'COLUMN',@level2name=N'XXBT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������Ŀ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_12_A01_SJFB', @level2type=N'COLUMN',@level2name=N'FBLMH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_12_A01_SJFB', @level2type=N'COLUMN',@level2name=N'SJNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_12_A01_SJFB', @level2type=N'COLUMN',@level2name=N'FJS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_12_A01_SJFB', @level2type=N'COLUMN',@level2name=N'FBRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������λ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_12_A01_SJFB', @level2type=N'COLUMN',@level2name=N'FBDW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����˹���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_12_A01_SJFB', @level2type=N'COLUMN',@level2name=N'FBRGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������Χ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_12_A01_SJFB', @level2type=N'COLUMN',@level2name=N'FBFW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������׼�˺�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_12_A01_SJFB', @level2type=N'COLUMN',@level2name=N'FBBZRH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_12_A01_SJFB', @level2type=N'COLUMN',@level2name=N'SJZT'
GO


if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZBG_13_A01_DWSJ')
            and   type = 'U')
   drop table EDU_ZZBG_13_A01_DWSJ
go
--��λ���ݱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZBG_13_A01_DWSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZBG_13_A01_DWSJ](
	[ID]  int  NOT NULL,--��λID
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[SJDWID]  int  NULL,--�ϼ���λID
	[DWFZRID]  int  NULL,--��λ������ID
	[DWMC]  nvarchar(60)  NULL,--��λ����
	[DWCYIDLB]  text  NULL,--��λ��ԱID�б�
CONSTRAINT [PK_EDU_ZZBG_13_A01_DWSJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��λ���ݱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_13_A01_DWSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��λID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_13_A01_DWSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_13_A01_DWSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ϼ���λID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_13_A01_DWSJ', @level2type=N'COLUMN',@level2name=N'SJDWID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��λ������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_13_A01_DWSJ', @level2type=N'COLUMN',@level2name=N'DWFZRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��λ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_13_A01_DWSJ', @level2type=N'COLUMN',@level2name=N'DWMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��λ��ԱID�б�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZBG_13_A01_DWSJ', @level2type=N'COLUMN',@level2name=N'DWCYIDLB'
GO

