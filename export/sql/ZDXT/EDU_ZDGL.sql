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

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZDGL_07_BXSB')
            and   type = 'U')
   drop table EDU_ZDGL_07_BXSB
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZDGL_08_SXDXX')
            and   type = 'U')
   drop table EDU_ZDGL_08_SXDXX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZDGL_09_SXSB')
            and   type = 'U')
   drop table EDU_ZDGL_09_SXSB
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZDGL_10_FXDXX')
            and   type = 'U')
   drop table EDU_ZDGL_10_FXDXX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZDGL_11_FXSB')
            and   type = 'U')
   drop table EDU_ZDGL_11_FXSB
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZDGL_21_SXDXM')
            and   type = 'U')
   drop table EDU_ZDGL_21_SXDXM
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZDGL_22_SXD')
            and   type = 'U')
   drop table EDU_ZDGL_22_SXD
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZDGL_23_SXDSJ')
            and   type = 'U')
   drop table EDU_ZDGL_23_SXDSJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZDGL_31_FXD')
            and   type = 'U')
   drop table EDU_ZDGL_31_FXD
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZDGL_32_FXDSJ')
            and   type = 'U')
   drop table EDU_ZDGL_32_FXDSJ
go
--�豸�������ñ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZDGL_01_SBLX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZDGL_01_SBLX](
	[ID]  int  NOT NULL,--���
	[LXMC]  nvarchar(50)  NOT NULL,--��������
	[ZT]  int  NOT NULL,--״̬
	[LXJC]  nvarchar(50)  NOT NULL,--���ͼ��
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
	[XHMCPY]  nvarchar(500)  NOT NULL,--�ͺ�����ƴ��
	[WLBH]  nvarchar(200)  NOT NULL,--���ϱ��
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
	[SSSJQHM]  nvarchar(4)  NOT NULL,--�����м�������
	[DWMC]  nvarchar(50)  NOT NULL,--��λ����
	[DWMCPY]  nvarchar(500)  NOT NULL,--��λ����ƴ��
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
	[BXSC]  int  NOT NULL,--����ʱ��
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
	[SXDWLB]  text  NOT NULL,--���޵�λ�б�
	[SXDWMCLB]  text  NOT NULL,--���޵�λ�����б�
	[DZ]  nvarchar(200)  NOT NULL,--��ַ
	[LXDH]  nvarchar(200)  NOT NULL,--��ϵ�绰
	[GSMC]  nvarchar(200)  NOT NULL,--��˾����
	[LXR]  nvarchar(200)  NOT NULL,--��ϵ��
CONSTRAINT [PK_EDU_ZDGL_06_BM] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�����豸��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZDGL_07_BXSB]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZDGL_07_BXSB](
	[ID]  int  NOT NULL,--���
	[SBXHID]  int  NOT NULL,--�豸�ͺ�ID
	[SXDWID]  int  NOT NULL,--���޵�λID
	[SXDWMC]  nvarchar(50)  NOT NULL,--���޵�λ����
	[SNM]  nvarchar(100)  NOT NULL,--S/N��
	[SCRQ]  datetime  NOT NULL,--��������
	[SBLXMC]  nvarchar(50)  NOT NULL,--�豸��������
	[SCCJMC]  nvarchar(50)  NOT NULL,--������������
	[SBXHMC]  nvarchar(50)  NOT NULL,--�豸�ͺ�����
	[BXZT]  int  NOT NULL,--����״̬
	[BXHTID]  int  NOT NULL,--���޺�ͬID
	[SBZT]  int  NOT NULL,--�豸״̬
	[WXZT]  int  NOT NULL,--ά��״̬
	[RKSJ]  datetime  NOT NULL,--���ʱ��
	[RKCZYHID]  nvarchar(20)  NOT NULL,--�������û�
	[FXM]  nvarchar(100)  NOT NULL,--������
	[FXXX]  nvarchar(100)  NOT NULL,--������Ϣ
	[FXXH]  int  NOT NULL,--�������
	[WXJSSJ]  datetime  NOT NULL,--ά�޽���ʱ��
	[WXJSDJYHID]  nvarchar(20)  NOT NULL,--ά�޽����Ǽ��û�
CONSTRAINT [PK_EDU_ZDGL_07_BXSB] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--���޵���Ϣ��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZDGL_08_SXDXX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZDGL_08_SXDXX](
	[ID]  int  NOT NULL,--���
	[SXDH]  nvarchar(50)  NOT NULL,--���޵���
	[CJYHID]  nvarchar(20)  NOT NULL,--�����û�
	[CJSJ]  datetime  NOT NULL,--����ʱ��
	[SXSJ]  datetime  NOT NULL,--����ʱ��
	[QRSJ]  datetime  NOT NULL,--ȷ��ʱ��
	[ZT]  int  NOT NULL,--״̬
CONSTRAINT [PK_EDU_ZDGL_08_SXDXX] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�����豸��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZDGL_09_SXSB]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZDGL_09_SXSB](
	[ID]  int  identity,--���
	[SXDID]  int  NOT NULL,--���޵�ID
	[BXSBID]  int  NOT NULL,--�����豸ID
CONSTRAINT [PK_EDU_ZDGL_09_SXSB] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--���޵���Ϣ��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZDGL_10_FXDXX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZDGL_10_FXDXX](
	[ID]  int  NOT NULL,--���
	[FXDH]  nvarchar(50)  NOT NULL,--���޵���
	[CJYHID]  nvarchar(20)  NOT NULL,--�����û�
	[CJSJ]  datetime  NOT NULL,--����ʱ��
	[FXSJ]  datetime  NOT NULL,--����ʱ��
	[QRSJ]  datetime  NOT NULL,--ȷ��ʱ��
	[ZT]  int  NOT NULL,--״̬
	[SHDW]  nvarchar(200)  NOT NULL,--�ջ���λ
	[KDDH]  nvarchar(50)  NOT NULL,--��ݵ���
CONSTRAINT [PK_EDU_ZDGL_10_FXDXX] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�����豸��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZDGL_11_FXSB]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZDGL_11_FXSB](
	[ID]  int  identity,--���
	[FXDID]  int  NOT NULL,--���޵�ID
	[BXSBID]  int  NOT NULL,--�����豸ID
CONSTRAINT [PK_EDU_ZDGL_11_FXSB] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--���޵���Ŀ��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZDGL_21_SXDXM]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZDGL_21_SXDXM](
	[ID]  int  identity,--���
	[SSLB]  int  NOT NULL,--�������
	[XMMC]  nvarchar(50)  NOT NULL,--��Ŀ����
	[SFXS]  int  NOT NULL,--�Ƿ���ʾ
	[PLSX]  int  NOT NULL,--����˳��
CONSTRAINT [PK_EDU_ZDGL_21_SXDXM] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--���޵���
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZDGL_22_SXD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZDGL_22_SXD](
	[ID]  int  NOT NULL,--���
	[SXDWID]  int  NOT NULL,--���޵�λID
	[SXDMC]  nvarchar(100)  NOT NULL,--���޵�����
	[SXDH]  nvarchar(100)  NOT NULL,--���޵���
	[SXRQ]  datetime  NOT NULL,--��������
	[GSXX]  nvarchar(200)  NOT NULL,--��˾��Ϣ
	[LXRXX]  nvarchar(200)  NOT NULL,--��ϵ����Ϣ
	[LXDHXX]  nvarchar(200)  NOT NULL,--��ϵ�绰��Ϣ
	[DZXX]  nvarchar(200)  NOT NULL,--��ַ��Ϣ
	[QZXX]  nvarchar(200)  NOT NULL,--ǩ����Ϣ
	[TJYH]  nvarchar(20)  NOT NULL,--����û�
	[TJSJ]  datetime  NOT NULL,--���ʱ��
CONSTRAINT [PK_EDU_ZDGL_22_SXD] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--���޵����ݱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZDGL_23_SXDSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZDGL_23_SXDSJ](
	[ID]  int  identity,--���
	[SXDID]  int  NOT NULL,--���޵�ID
	[SBXHID]  int  NOT NULL,--�豸�ͺ�ID
	[SXDXMID]  int  NOT NULL,--���޵���ĿID
	[SL]  int  NOT NULL,--����
	[WB]  nvarchar(200)  NOT NULL,--�ı�
CONSTRAINT [PK_EDU_ZDGL_23_SXDSJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--���޵���
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZDGL_31_FXD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZDGL_31_FXD](
	[ID]  int  NOT NULL,--���
	[FXDH]  nvarchar(100)  NOT NULL,--���޵���
	[PDBM]  nvarchar(100)  NOT NULL,--�ɵ�����
	[PDY]  nvarchar(50)  NOT NULL,--�ɵ�Ա
	[PDSJ]  nvarchar(50)  NOT NULL,--�ɵ�ʱ��
	[SHDW]  nvarchar(50)  NOT NULL,--�ջ���λ
	[LXR]  nvarchar(50)  NOT NULL,--��ϵ��
	[LXDH]  nvarchar(100)  NOT NULL,--��ϵ�绰
	[WGSX]  nvarchar(50)  NOT NULL,--�깤ʱ��
	[DZ]  nvarchar(100)  NOT NULL,--��ַ
	[ZJTS]  nvarchar(100)  NOT NULL,--�ܼ�̨��
	[ZJJS]  nvarchar(100)  NOT NULL,--�ܼƼ���
	[SLBM]  nvarchar(100)  NOT NULL,--������
	[SDY]  nvarchar(100)  NOT NULL,--�ܵ�Ա
	[QSY]  nvarchar(100)  NOT NULL,--ǩ��Ա
	[QSSJ]  nvarchar(100)  NOT NULL,--ǩ��ʱ��
	[FWQK]  nvarchar(100)  NOT NULL,--�������
	[FWGCS]  nvarchar(100)  NOT NULL,--���񹤳�ʦ
	[WGSJ]  nvarchar(100)  NOT NULL,--�깤ʱ��
	[YSQK]  nvarchar(100)  NOT NULL,--�������
	[YSRY]  nvarchar(100)  NOT NULL,--������Ա
	[YSSJ]  nvarchar(100)  NOT NULL,--����ʱ��
	[TJYH]  nvarchar(20)  NOT NULL,--����û�
	[TJSJ]  datetime  NOT NULL,--���ʱ��
CONSTRAINT [PK_EDU_ZDGL_31_FXD] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--���޵����ݱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZDGL_32_FXDSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZDGL_32_FXDSJ](
	[ID]  int  identity,--���
	[FXDID]  int  NOT NULL,--���޵�ID
	[WLMC]  nvarchar(200)  NOT NULL,--��������
	[PZ]  nvarchar(200)  NOT NULL,--����
	[DW]  nvarchar(200)  NOT NULL,--��λ
	[SL]  nvarchar(200)  NOT NULL,--����
	[FY]  nvarchar(200)  NOT NULL,--����
	[RWSM]  nvarchar(200)  NOT NULL,--����˵��
	[CLJG]  nvarchar(200)  NOT NULL,--������
CONSTRAINT [PK_EDU_ZDGL_32_FXDSJ] PRIMARY KEY CLUSTERED
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
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ͼ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_01_SBLX', @level2type=N'COLUMN',@level2name=N'LXJC'
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
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ͺ�����ƴ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_03_SBXH', @level2type=N'COLUMN',@level2name=N'XHMCPY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ϱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_03_SBXH', @level2type=N'COLUMN',@level2name=N'WLBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���޵�λ��Ϣ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_04_SXDW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_04_SXDW', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_04_SXDW', @level2type=N'COLUMN',@level2name=N'QHM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����м�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_04_SXDW', @level2type=N'COLUMN',@level2name=N'SSSJQHM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��λ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_04_SXDW', @level2type=N'COLUMN',@level2name=N'DWMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��λ����ƴ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_04_SXDW', @level2type=N'COLUMN',@level2name=N'DWMCPY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���޺�ͬ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_05_BXHT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_05_BXHT', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ͬ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_05_BXHT', @level2type=N'COLUMN',@level2name=N'HTMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ά��ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_05_BXHT', @level2type=N'COLUMN',@level2name=N'WXSX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_05_BXHT', @level2type=N'COLUMN',@level2name=N'BXSC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������Ϣ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_06_BM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_06_BM', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_06_BM', @level2type=N'COLUMN',@level2name=N'BMMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���޵�λ�б�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_06_BM', @level2type=N'COLUMN',@level2name=N'SXDWLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���޵�λ�����б�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_06_BM', @level2type=N'COLUMN',@level2name=N'SXDWMCLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ַ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_06_BM', @level2type=N'COLUMN',@level2name=N'DZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ϵ�绰' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_06_BM', @level2type=N'COLUMN',@level2name=N'LXDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��˾����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_06_BM', @level2type=N'COLUMN',@level2name=N'GSMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ϵ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_06_BM', @level2type=N'COLUMN',@level2name=N'LXR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����豸��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_07_BXSB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_07_BXSB', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�豸�ͺ�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_07_BXSB', @level2type=N'COLUMN',@level2name=N'SBXHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���޵�λID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_07_BXSB', @level2type=N'COLUMN',@level2name=N'SXDWID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���޵�λ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_07_BXSB', @level2type=N'COLUMN',@level2name=N'SXDWMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'S/N��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_07_BXSB', @level2type=N'COLUMN',@level2name=N'SNM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_07_BXSB', @level2type=N'COLUMN',@level2name=N'SCRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�豸��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_07_BXSB', @level2type=N'COLUMN',@level2name=N'SBLXMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_07_BXSB', @level2type=N'COLUMN',@level2name=N'SCCJMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�豸�ͺ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_07_BXSB', @level2type=N'COLUMN',@level2name=N'SBXHMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_07_BXSB', @level2type=N'COLUMN',@level2name=N'BXZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���޺�ͬID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_07_BXSB', @level2type=N'COLUMN',@level2name=N'BXHTID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�豸״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_07_BXSB', @level2type=N'COLUMN',@level2name=N'SBZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ά��״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_07_BXSB', @level2type=N'COLUMN',@level2name=N'WXZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_07_BXSB', @level2type=N'COLUMN',@level2name=N'RKSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������û�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_07_BXSB', @level2type=N'COLUMN',@level2name=N'RKCZYHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_07_BXSB', @level2type=N'COLUMN',@level2name=N'FXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������Ϣ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_07_BXSB', @level2type=N'COLUMN',@level2name=N'FXXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_07_BXSB', @level2type=N'COLUMN',@level2name=N'FXXH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ά�޽���ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_07_BXSB', @level2type=N'COLUMN',@level2name=N'WXJSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ά�޽����Ǽ��û�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_07_BXSB', @level2type=N'COLUMN',@level2name=N'WXJSDJYHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���޵���Ϣ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_08_SXDXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_08_SXDXX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���޵���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_08_SXDXX', @level2type=N'COLUMN',@level2name=N'SXDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����û�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_08_SXDXX', @level2type=N'COLUMN',@level2name=N'CJYHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_08_SXDXX', @level2type=N'COLUMN',@level2name=N'CJSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_08_SXDXX', @level2type=N'COLUMN',@level2name=N'SXSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ȷ��ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_08_SXDXX', @level2type=N'COLUMN',@level2name=N'QRSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_08_SXDXX', @level2type=N'COLUMN',@level2name=N'ZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����豸��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_09_SXSB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_09_SXSB', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���޵�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_09_SXSB', @level2type=N'COLUMN',@level2name=N'SXDID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����豸ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_09_SXSB', @level2type=N'COLUMN',@level2name=N'BXSBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���޵���Ϣ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_10_FXDXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_10_FXDXX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���޵���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_10_FXDXX', @level2type=N'COLUMN',@level2name=N'FXDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����û�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_10_FXDXX', @level2type=N'COLUMN',@level2name=N'CJYHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_10_FXDXX', @level2type=N'COLUMN',@level2name=N'CJSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_10_FXDXX', @level2type=N'COLUMN',@level2name=N'FXSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ȷ��ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_10_FXDXX', @level2type=N'COLUMN',@level2name=N'QRSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_10_FXDXX', @level2type=N'COLUMN',@level2name=N'ZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ջ���λ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_10_FXDXX', @level2type=N'COLUMN',@level2name=N'SHDW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ݵ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_10_FXDXX', @level2type=N'COLUMN',@level2name=N'KDDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����豸��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_11_FXSB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_11_FXSB', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���޵�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_11_FXSB', @level2type=N'COLUMN',@level2name=N'FXDID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����豸ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_11_FXSB', @level2type=N'COLUMN',@level2name=N'BXSBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���޵���Ŀ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_21_SXDXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_21_SXDXM', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_21_SXDXM', @level2type=N'COLUMN',@level2name=N'SSLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ŀ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_21_SXDXM', @level2type=N'COLUMN',@level2name=N'XMMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ���ʾ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_21_SXDXM', @level2type=N'COLUMN',@level2name=N'SFXS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����˳��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_21_SXDXM', @level2type=N'COLUMN',@level2name=N'PLSX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���޵���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_22_SXD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_22_SXD', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���޵�λID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_22_SXD', @level2type=N'COLUMN',@level2name=N'SXDWID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���޵�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_22_SXD', @level2type=N'COLUMN',@level2name=N'SXDMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���޵���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_22_SXD', @level2type=N'COLUMN',@level2name=N'SXDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_22_SXD', @level2type=N'COLUMN',@level2name=N'SXRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��˾��Ϣ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_22_SXD', @level2type=N'COLUMN',@level2name=N'GSXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ϵ����Ϣ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_22_SXD', @level2type=N'COLUMN',@level2name=N'LXRXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ϵ�绰��Ϣ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_22_SXD', @level2type=N'COLUMN',@level2name=N'LXDHXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ַ��Ϣ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_22_SXD', @level2type=N'COLUMN',@level2name=N'DZXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ǩ����Ϣ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_22_SXD', @level2type=N'COLUMN',@level2name=N'QZXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����û�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_22_SXD', @level2type=N'COLUMN',@level2name=N'TJYH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_22_SXD', @level2type=N'COLUMN',@level2name=N'TJSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���޵����ݱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_23_SXDSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_23_SXDSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���޵�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_23_SXDSJ', @level2type=N'COLUMN',@level2name=N'SXDID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�豸�ͺ�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_23_SXDSJ', @level2type=N'COLUMN',@level2name=N'SBXHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���޵���ĿID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_23_SXDSJ', @level2type=N'COLUMN',@level2name=N'SXDXMID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_23_SXDSJ', @level2type=N'COLUMN',@level2name=N'SL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ı�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_23_SXDSJ', @level2type=N'COLUMN',@level2name=N'WB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���޵���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_31_FXD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_31_FXD', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���޵���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_31_FXD', @level2type=N'COLUMN',@level2name=N'FXDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ɵ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_31_FXD', @level2type=N'COLUMN',@level2name=N'PDBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ɵ�Ա' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_31_FXD', @level2type=N'COLUMN',@level2name=N'PDY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ɵ�ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_31_FXD', @level2type=N'COLUMN',@level2name=N'PDSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ջ���λ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_31_FXD', @level2type=N'COLUMN',@level2name=N'SHDW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ϵ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_31_FXD', @level2type=N'COLUMN',@level2name=N'LXR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ϵ�绰' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_31_FXD', @level2type=N'COLUMN',@level2name=N'LXDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�깤ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_31_FXD', @level2type=N'COLUMN',@level2name=N'WGSX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ַ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_31_FXD', @level2type=N'COLUMN',@level2name=N'DZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ܼ�̨��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_31_FXD', @level2type=N'COLUMN',@level2name=N'ZJTS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ܼƼ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_31_FXD', @level2type=N'COLUMN',@level2name=N'ZJJS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_31_FXD', @level2type=N'COLUMN',@level2name=N'SLBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ܵ�Ա' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_31_FXD', @level2type=N'COLUMN',@level2name=N'SDY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ǩ��Ա' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_31_FXD', @level2type=N'COLUMN',@level2name=N'QSY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ǩ��ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_31_FXD', @level2type=N'COLUMN',@level2name=N'QSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_31_FXD', @level2type=N'COLUMN',@level2name=N'FWQK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���񹤳�ʦ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_31_FXD', @level2type=N'COLUMN',@level2name=N'FWGCS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�깤ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_31_FXD', @level2type=N'COLUMN',@level2name=N'WGSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_31_FXD', @level2type=N'COLUMN',@level2name=N'YSQK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������Ա' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_31_FXD', @level2type=N'COLUMN',@level2name=N'YSRY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_31_FXD', @level2type=N'COLUMN',@level2name=N'YSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����û�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_31_FXD', @level2type=N'COLUMN',@level2name=N'TJYH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_31_FXD', @level2type=N'COLUMN',@level2name=N'TJSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���޵����ݱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_32_FXDSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_32_FXDSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���޵�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_32_FXDSJ', @level2type=N'COLUMN',@level2name=N'FXDID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_32_FXDSJ', @level2type=N'COLUMN',@level2name=N'WLMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_32_FXDSJ', @level2type=N'COLUMN',@level2name=N'PZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��λ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_32_FXDSJ', @level2type=N'COLUMN',@level2name=N'DW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_32_FXDSJ', @level2type=N'COLUMN',@level2name=N'SL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_32_FXDSJ', @level2type=N'COLUMN',@level2name=N'FY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����˵��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_32_FXDSJ', @level2type=N'COLUMN',@level2name=N'RWSM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_32_FXDSJ', @level2type=N'COLUMN',@level2name=N'CLJG'
GO
