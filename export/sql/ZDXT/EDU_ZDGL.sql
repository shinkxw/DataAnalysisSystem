--�ռ�����EDU_ZDGL  ��������SqlBuilder0.1

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZDGL_01_SBLX')
            and   type = 'U')
   drop table EDU_ZDGL_01_SBLX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZDGL_02_SCCJ')
            and   type = 'U')
   drop table EDU_ZDGL_02_SCCJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZDGL_03_SBXH')
            and   type = 'U')
   drop table EDU_ZDGL_03_SBXH
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZDGL_04_SXDW')
            and   type = 'U')
   drop table EDU_ZDGL_04_SXDW
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZDGL_05_BXHT')
            and   type = 'U')
   drop table EDU_ZDGL_05_BXHT
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZDGL_06_BM')
            and   type = 'U')
   drop table EDU_ZDGL_06_BM
go
--�豸�������ñ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZDGL_01_SBLX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZDGL_01_SBLX](
	[ID]  int  NOT NULL,--���
	[LXMC]  nvarchar(50)  NOT NULL,--��������
	[ZT]  int  NOT NULL,--״̬
CONSTRAINT [PK_EDU_ZDGL_01_SBLX] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--����������Ϣ��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZDGL_02_SCCJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZDGL_02_SCCJ](
	[ID]  int  NOT NULL,--���
	[CJMC]  nvarchar(50)  NOT NULL,--��������
	[ZT]  int  NOT NULL,--״̬
CONSTRAINT [PK_EDU_ZDGL_02_SCCJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�豸�ͺ����ñ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZDGL_03_SBXH]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZDGL_03_SBXH](
	[ID]  int  NOT NULL,--���
	[SBLXID]  int  NOT NULL,--�豸����ID
	[SCCJID]  int  NOT NULL,--��������ID
	[XHMC]  nvarchar(50)  NOT NULL,--�ͺ�����
	[WLMS]  nvarchar(500)  NOT NULL,--��������
CONSTRAINT [PK_EDU_ZDGL_03_SBXH] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--���޵�λ��Ϣ��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZDGL_04_SXDW]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZDGL_04_SXDW](
	[ID]  int  NOT NULL,--���
	[QHM]  nvarchar(6)  NOT NULL,--������
	[DWMC]  nvarchar(50)  NOT NULL,--��λ����
CONSTRAINT [PK_EDU_ZDGL_04_SXDW] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--���޺�ͬ��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZDGL_05_BXHT]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZDGL_05_BXHT](
	[ID]  int  NOT NULL,--���
	[HTMC]  nvarchar(50)  NOT NULL,--��ͬ����
	[WXSX]  int  NOT NULL,--ά��ʱ��
CONSTRAINT [PK_EDU_ZDGL_05_BXHT] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--������Ϣ��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZDGL_06_BM]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZDGL_06_BM](
	[ID]  int  NOT NULL,--���
	[BMMC]  nvarchar(20)  NOT NULL,--��������
	[BMYHLB]  text  NOT NULL,--�����û��б�
	[SXDWLB]  text  NOT NULL,--���޵�λ�б�
CONSTRAINT [PK_EDU_ZDGL_06_BM] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--����Ϊ���ע�����
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�豸�������ñ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_01_SBLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_01_SBLX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_01_SBLX', @level2type=N'COLUMN',@level2name=N'LXMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_01_SBLX', @level2type=N'COLUMN',@level2name=N'ZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����������Ϣ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_02_SCCJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_02_SCCJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_02_SCCJ', @level2type=N'COLUMN',@level2name=N'CJMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_02_SCCJ', @level2type=N'COLUMN',@level2name=N'ZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�豸�ͺ����ñ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_03_SBXH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_03_SBXH', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�豸����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_03_SBXH', @level2type=N'COLUMN',@level2name=N'SBLXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_03_SBXH', @level2type=N'COLUMN',@level2name=N'SCCJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ͺ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_03_SBXH', @level2type=N'COLUMN',@level2name=N'XHMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_03_SBXH', @level2type=N'COLUMN',@level2name=N'WLMS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���޵�λ��Ϣ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_04_SXDW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_04_SXDW', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_04_SXDW', @level2type=N'COLUMN',@level2name=N'QHM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��λ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_04_SXDW', @level2type=N'COLUMN',@level2name=N'DWMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���޺�ͬ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_05_BXHT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_05_BXHT', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ͬ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_05_BXHT', @level2type=N'COLUMN',@level2name=N'HTMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ά��ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_05_BXHT', @level2type=N'COLUMN',@level2name=N'WXSX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������Ϣ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_06_BM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_06_BM', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_06_BM', @level2type=N'COLUMN',@level2name=N'BMMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����û��б�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_06_BM', @level2type=N'COLUMN',@level2name=N'BMYHLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���޵�λ�б�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_06_BM', @level2type=N'COLUMN',@level2name=N'SXDWLB'
GO
