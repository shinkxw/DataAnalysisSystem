--�ռ�����EDU_ZDGL  ��������SqlBuilder0.1

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZDGL_01_GZDM')
            and   type = 'U')
   drop table EDU_ZDGL_01_GZDM
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZDGL_02_WXDM')
            and   type = 'U')
   drop table EDU_ZDGL_02_WXDM
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZDGL_03_SBXHLX')
            and   type = 'U')
   drop table EDU_ZDGL_03_SBXHLX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZDGL_04_SCCJ')
            and   type = 'U')
   drop table EDU_ZDGL_04_SCCJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZDGL_05_SBXH')
            and   type = 'U')
   drop table EDU_ZDGL_05_SBXH
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZDGL_06_XZQH')
            and   type = 'U')
   drop table EDU_ZDGL_06_XZQH
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZDGL_07_SSGS')
            and   type = 'U')
   drop table EDU_ZDGL_07_SSGS
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZDGL_08_KH')
            and   type = 'U')
   drop table EDU_ZDGL_08_KH
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZDGL_09_WXS')
            and   type = 'U')
   drop table EDU_ZDGL_09_WXS
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZDGL_10_WXR')
            and   type = 'U')
   drop table EDU_ZDGL_10_WXR
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZDGL_11_FJPC')
            and   type = 'U')
   drop table EDU_ZDGL_11_FJPC
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZDGL_12_FJXX')
            and   type = 'U')
   drop table EDU_ZDGL_12_FJXX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZDGL_13_FHPC')
            and   type = 'U')
   drop table EDU_ZDGL_13_FHPC
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZDGL_14_FHXX')
            and   type = 'U')
   drop table EDU_ZDGL_14_FHXX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZDGL_15_WLGS')
            and   type = 'U')
   drop table EDU_ZDGL_15_WLGS
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZDGL_16_JSD')
            and   type = 'U')
   drop table EDU_ZDGL_16_JSD
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZDGL_17_JSDXX')
            and   type = 'U')
   drop table EDU_ZDGL_17_JSDXX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZDGL_18_JFD')
            and   type = 'U')
   drop table EDU_ZDGL_18_JFD
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZDGL_19_JFDXX')
            and   type = 'U')
   drop table EDU_ZDGL_19_JFDXX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZDGL_20_FHD')
            and   type = 'U')
   drop table EDU_ZDGL_20_FHD
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZDGL_21_FHDXX')
            and   type = 'U')
   drop table EDU_ZDGL_21_FHDXX
go
--���ϴ����
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZDGL_01_GZDM]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZDGL_01_GZDM](
	[ID]  int  NOT NULL,--���
	[GZDM]  nvarchar(200)  NOT NULL,--���ϴ���
	[GZXX]  nvarchar(200)  NOT NULL,--��������
CONSTRAINT [PK_EDU_ZDGL_01_GZDM] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ά�޴����
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZDGL_02_WXDM]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZDGL_02_WXDM](
	[ID]  int  NOT NULL,--���
	[WXDM]  nvarchar(200)  NOT NULL,--ά�޴���
	[WXNR]  nvarchar(500)  NOT NULL,--ά������
	[WXJG]  nvarchar(500)  NOT NULL,--ά�޽��
CONSTRAINT [PK_EDU_ZDGL_02_WXDM] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�豸�ͺ����ͱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZDGL_03_SBXHLX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZDGL_03_SBXHLX](
	[ID]  int  NOT NULL,--���
	[LXMC]  nvarchar(200)  NOT NULL,--��������
	[LXJC]  nvarchar(200)  NOT NULL,--���ͼ��
CONSTRAINT [PK_EDU_ZDGL_03_SBXHLX] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�������ұ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZDGL_04_SCCJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZDGL_04_SCCJ](
	[ID]  int  NOT NULL,--���
	[CJM]  nvarchar(200)  NOT NULL,--������
	[CJDZ]  nvarchar(500)  NOT NULL,--���ҵ�ַ
	[LXR]  nvarchar(200)  NOT NULL,--��ϵ��
	[LXDH]  nvarchar(200)  NOT NULL,--��ϵ�绰
CONSTRAINT [PK_EDU_ZDGL_04_SCCJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�豸�ͺű�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZDGL_05_SBXH]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZDGL_05_SBXH](
	[ID]  int  NOT NULL,--���
	[XX]  nvarchar(200)  NOT NULL,--�ͺ�
	[LXID]  int  NOT NULL,--����ID
	[SCCJID]  int  NOT NULL,--��������ID
	[PY]  nvarchar(200)  NOT NULL,--ƴ��
	[MS]  nvarchar(200)  NOT NULL,--����
	[JG]  float  NOT NULL,--�۸�
CONSTRAINT [PK_EDU_ZDGL_05_SBXH] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--����������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZDGL_06_XZQH]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZDGL_06_XZQH](
	[QHM]  nvarchar(6)  NOT NULL,--������
	[QHMC]  nvarchar(200)  NOT NULL,--��������
	[QH]  nvarchar(200)  NOT NULL,--����
CONSTRAINT [PK_EDU_ZDGL_06_XZQH] PRIMARY KEY CLUSTERED
(
	[QHM] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--������˾��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZDGL_07_SSGS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZDGL_07_SSGS](
	[ID]  int  NOT NULL,--���
	[GSDM]  nvarchar(200)  NOT NULL,--��˾����
	[GSM]  nvarchar(200)  NOT NULL,--��˾��
CONSTRAINT [PK_EDU_ZDGL_07_SSGS] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�ͻ���
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZDGL_08_KH]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZDGL_08_KH](
	[ID]  int  NOT NULL,--���
	[KHDM]  nvarchar(200)  NOT NULL,--�ͻ�����
	[SZQYID]  nvarchar(6)  NOT NULL,--��������ID
	[SSGSID]  int  NOT NULL,--������˾ID
	[DWMC]  nvarchar(200)  NOT NULL,--��λ����
	[PY]  nvarchar(200)  NOT NULL,--ƴ��
	[KHDZ]  nvarchar(200)  NOT NULL,--�ͻ���ַ
	[LXR]  nvarchar(200)  NOT NULL,--��ϵ��
	[DH]  nvarchar(200)  NOT NULL,--�绰
CONSTRAINT [PK_EDU_ZDGL_08_KH] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ά���̱�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZDGL_09_WXS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZDGL_09_WXS](
	[ID]  int  NOT NULL,--���
	[WXSDM]  nvarchar(200)  NOT NULL,--ά���̴���
	[WXSMC]  nvarchar(200)  NOT NULL,--ά��������
	[LXR]  nvarchar(200)  NOT NULL,--��ϵ��
	[LXDM]  nvarchar(200)  NOT NULL,--��ϵ����
	[DZ]  nvarchar(200)  NOT NULL,--��ַ
CONSTRAINT [PK_EDU_ZDGL_09_WXS] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ά���˱�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZDGL_10_WXR]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZDGL_10_WXR](
	[ID]  int  NOT NULL,--���
	[GH]  nvarchar(200)  NOT NULL,--����
	[XM]  nvarchar(200)  NOT NULL,--����
	[LXDH]  nvarchar(200)  NOT NULL,--��ϵ�绰
CONSTRAINT [PK_EDU_ZDGL_10_WXR] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�ּ����α�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZDGL_11_FJPC]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZDGL_11_FJPC](
	[ID]  int  NOT NULL,--���
	[PCH]  nvarchar(200)  NOT NULL,--���κ�
	[KHID]  int  NOT NULL,--�ͻ�ID
	[JSRQ]  datetime  NOT NULL,--��������
	[LRSJ]  datetime  NOT NULL,--¼��ʱ��
	[FJWGSJ]  datetime  NOT NULL,--�ּ��깤ʱ��
	[FJFZR]  nvarchar(200)  NOT NULL,--�ּ�����
	[QRR]  nvarchar(200)  NOT NULL,--ȷ����
	[QRRLXDH]  nvarchar(200)  NOT NULL,--ȷ������ϵ�绰
	[QRSJ]  datetime  NOT NULL,--ȷ��ʱ��
	[CSJG]  int  NOT NULL,--���Խ��
CONSTRAINT [PK_EDU_ZDGL_11_FJPC] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�ּ���ϸ��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZDGL_12_FJXX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZDGL_12_FJXX](
	[ID]  int  NOT NULL,--���
	[PCID]  int  NOT NULL,--����ID
	[XHID]  int  NOT NULL,--�ͺ�ID
	[SRSL]  int  NOT NULL,--��������
	[LPSL]  int  NOT NULL,--��Ʒ����
	[GZSL]  int  NOT NULL,--��������
	[BFSL]  int  NOT NULL,--��������
	[RWSHSL]  int  NOT NULL,--��Ϊ������
	[QT]  int  NOT NULL,--����
	[HJ]  int  NOT NULL,--�ϼ�
	[BZ]  nvarchar(500)  NOT NULL,--��ע
	[JCFW]  int  NOT NULL,--��������
	[HK]  int  NOT NULL,--����
	[WX]  int  NOT NULL,--ά��
	[XDY]  int  NOT NULL,--�µ�Դ
	[JDY]  int  NOT NULL,--�ɵ�Դ
	[PJ]  int  NOT NULL,--���
	[TH]  int  NOT NULL,--�˻�
	[QTE]  int  NOT NULL,--������
	[WF]  int  NOT NULL,--δ��
	[FHRQ]  datetime  NOT NULL,--��������
CONSTRAINT [PK_EDU_ZDGL_12_FJXX] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�������α�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZDGL_13_FHPC]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZDGL_13_FHPC](
	[ID]  int  NOT NULL,--���
	[FHPCH]  nvarchar(200)  NOT NULL,--�������κ�
	[FHR]  nvarchar(200)  NOT NULL,--������
	[WLGSID]  int  NOT NULL,--������˾ID
	[ZXS]  int  NOT NULL,--������
	[FHSJ]  datetime  NOT NULL,--����ʱ��
	[FJPCID]  int  NOT NULL,--�ּ�����ID
CONSTRAINT [PK_EDU_ZDGL_13_FHPC] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--������ϸ��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZDGL_14_FHXX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZDGL_14_FHXX](
	[ID]  int  NOT NULL,--���
	[FHPCID]  int  NOT NULL,--��������ID
	[FJXXID]  int  NOT NULL,--�ּ���ϸID
	[JCFW]  int  NOT NULL,--��������
	[HK]  int  NOT NULL,--����
	[WX]  int  NOT NULL,--ά��
	[XDY]  int  NOT NULL,--�µ�Դ
	[JDY]  int  NOT NULL,--�ɵ�Դ
	[PJ]  int  NOT NULL,--���
	[TH]  int  NOT NULL,--�˻�
	[QT]  int  NOT NULL,--����
	[WF]  int  NOT NULL,--δ��
	[FHRQ]  datetime  NOT NULL,--��������
CONSTRAINT [PK_EDU_ZDGL_14_FHXX] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--������˾��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZDGL_15_WLGS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZDGL_15_WLGS](
	[ID]  int  NOT NULL,--���
	[GSDM]  nvarchar(200)  NOT NULL,--��˾����
	[GSM]  nvarchar(200)  NOT NULL,--��˾��
	[GSLXR]  nvarchar(200)  NOT NULL,--��˾��ϵ��
	[LXDH]  nvarchar(200)  NOT NULL,--��ϵ�绰
CONSTRAINT [PK_EDU_ZDGL_15_WLGS] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--���յ���
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZDGL_16_JSD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZDGL_16_JSD](
	[ID]  int  NOT NULL,--���
	[JSDH]  nvarchar(200)  NOT NULL,--���յ���
	[SXDWID]  int  NOT NULL,--���޵�λID
	[SXRQ]  datetime  NOT NULL,--��������
	[BCZT]  int  NOT NULL,--����״̬
CONSTRAINT [PK_EDU_ZDGL_16_JSD] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--���յ���ϸ��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZDGL_17_JSDXX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZDGL_17_JSDXX](
	[ID]  int  NOT NULL,--���
	[XHID]  int  NOT NULL,--�ͺ�ID
	[XH]  nvarchar(200)  NOT NULL,--���
	[SN]  nvarchar(200)  NOT NULL,--SN��
	[SFECFX]  nvarchar(1)  NOT NULL,--�Ƿ���η���
	[SXDWID]  int  NOT NULL,--���޵�λID
	[GZXXID]  int  NOT NULL,--������ϢID
	[WXXXID]  int  NOT NULL,--ά����ϢID
	[WXRID]  int  NOT NULL,--ά����ID
	[WXRQ]  datetime  NOT NULL,--ά������
	[JSDID]  int  NOT NULL,--���յ�ID
CONSTRAINT [PK_EDU_ZDGL_17_JSDXX] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--��������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZDGL_18_JFD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZDGL_18_JFD](
	[ID]  int  NOT NULL,--���
	[JFDH]  nvarchar(200)  NOT NULL,--��������
	[WXSID]  int  NOT NULL,--ά����ID
	[JFRQ]  datetime  NOT NULL,--��������
CONSTRAINT [PK_EDU_ZDGL_18_JFD] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--��������ϸ��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZDGL_19_JFDXX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZDGL_19_JFDXX](
	[ID]  int  NOT NULL,--���
	[JFDID]  int  NOT NULL,--������ID
	[JSDXXID]  int  NOT NULL,--���յ���ϸID
CONSTRAINT [PK_EDU_ZDGL_19_JFDXX] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--���ص���
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZDGL_20_FHD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZDGL_20_FHD](
	[ID]  int  NOT NULL,--���
	[FHDH]  nvarchar(200)  NOT NULL,--���ص���
	[FHRQ]  datetime  NOT NULL,--��������
	[FHDWID]  int  NOT NULL,--���ص�λID
CONSTRAINT [PK_EDU_ZDGL_20_FHD] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--���ص���ϸ��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZDGL_21_FHDXX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZDGL_21_FHDXX](
	[ID]  int  NOT NULL,--���
	[FHDID]  int  NOT NULL,--���ص�ID
	[JSDXXID]  int  NOT NULL,--���յ���ϸID
CONSTRAINT [PK_EDU_ZDGL_21_FHDXX] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--����Ϊ���ע�����
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ϴ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_01_GZDM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_01_GZDM', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ϴ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_01_GZDM', @level2type=N'COLUMN',@level2name=N'GZDM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_01_GZDM', @level2type=N'COLUMN',@level2name=N'GZXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ά�޴����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_02_WXDM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_02_WXDM', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ά�޴���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_02_WXDM', @level2type=N'COLUMN',@level2name=N'WXDM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ά������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_02_WXDM', @level2type=N'COLUMN',@level2name=N'WXNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ά�޽��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_02_WXDM', @level2type=N'COLUMN',@level2name=N'WXJG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�豸�ͺ����ͱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_03_SBXHLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_03_SBXHLX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_03_SBXHLX', @level2type=N'COLUMN',@level2name=N'LXMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ͼ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_03_SBXHLX', @level2type=N'COLUMN',@level2name=N'LXJC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������ұ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_04_SCCJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_04_SCCJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_04_SCCJ', @level2type=N'COLUMN',@level2name=N'CJM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ҵ�ַ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_04_SCCJ', @level2type=N'COLUMN',@level2name=N'CJDZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ϵ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_04_SCCJ', @level2type=N'COLUMN',@level2name=N'LXR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ϵ�绰' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_04_SCCJ', @level2type=N'COLUMN',@level2name=N'LXDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�豸�ͺű�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_05_SBXH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_05_SBXH', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ͺ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_05_SBXH', @level2type=N'COLUMN',@level2name=N'XX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_05_SBXH', @level2type=N'COLUMN',@level2name=N'LXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_05_SBXH', @level2type=N'COLUMN',@level2name=N'SCCJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ƴ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_05_SBXH', @level2type=N'COLUMN',@level2name=N'PY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_05_SBXH', @level2type=N'COLUMN',@level2name=N'MS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�۸�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_05_SBXH', @level2type=N'COLUMN',@level2name=N'JG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_06_XZQH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_06_XZQH', @level2type=N'COLUMN',@level2name=N'QHM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_06_XZQH', @level2type=N'COLUMN',@level2name=N'QHMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_06_XZQH', @level2type=N'COLUMN',@level2name=N'QH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������˾��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_07_SSGS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_07_SSGS', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��˾����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_07_SSGS', @level2type=N'COLUMN',@level2name=N'GSDM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��˾��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_07_SSGS', @level2type=N'COLUMN',@level2name=N'GSM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ͻ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_08_KH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_08_KH', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ͻ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_08_KH', @level2type=N'COLUMN',@level2name=N'KHDM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_08_KH', @level2type=N'COLUMN',@level2name=N'SZQYID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������˾ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_08_KH', @level2type=N'COLUMN',@level2name=N'SSGSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��λ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_08_KH', @level2type=N'COLUMN',@level2name=N'DWMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ƴ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_08_KH', @level2type=N'COLUMN',@level2name=N'PY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ͻ���ַ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_08_KH', @level2type=N'COLUMN',@level2name=N'KHDZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ϵ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_08_KH', @level2type=N'COLUMN',@level2name=N'LXR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�绰' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_08_KH', @level2type=N'COLUMN',@level2name=N'DH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ά���̱�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_09_WXS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_09_WXS', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ά���̴���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_09_WXS', @level2type=N'COLUMN',@level2name=N'WXSDM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ά��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_09_WXS', @level2type=N'COLUMN',@level2name=N'WXSMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ϵ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_09_WXS', @level2type=N'COLUMN',@level2name=N'LXR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ϵ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_09_WXS', @level2type=N'COLUMN',@level2name=N'LXDM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ַ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_09_WXS', @level2type=N'COLUMN',@level2name=N'DZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ά���˱�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_10_WXR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_10_WXR', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_10_WXR', @level2type=N'COLUMN',@level2name=N'GH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_10_WXR', @level2type=N'COLUMN',@level2name=N'XM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ϵ�绰' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_10_WXR', @level2type=N'COLUMN',@level2name=N'LXDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ּ����α�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_11_FJPC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_11_FJPC', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���κ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_11_FJPC', @level2type=N'COLUMN',@level2name=N'PCH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ͻ�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_11_FJPC', @level2type=N'COLUMN',@level2name=N'KHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_11_FJPC', @level2type=N'COLUMN',@level2name=N'JSRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'¼��ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_11_FJPC', @level2type=N'COLUMN',@level2name=N'LRSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ּ��깤ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_11_FJPC', @level2type=N'COLUMN',@level2name=N'FJWGSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ּ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_11_FJPC', @level2type=N'COLUMN',@level2name=N'FJFZR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ȷ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_11_FJPC', @level2type=N'COLUMN',@level2name=N'QRR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ȷ������ϵ�绰' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_11_FJPC', @level2type=N'COLUMN',@level2name=N'QRRLXDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ȷ��ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_11_FJPC', @level2type=N'COLUMN',@level2name=N'QRSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���Խ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_11_FJPC', @level2type=N'COLUMN',@level2name=N'CSJG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ּ���ϸ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_12_FJXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_12_FJXX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_12_FJXX', @level2type=N'COLUMN',@level2name=N'PCID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ͺ�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_12_FJXX', @level2type=N'COLUMN',@level2name=N'XHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_12_FJXX', @level2type=N'COLUMN',@level2name=N'SRSL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ʒ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_12_FJXX', @level2type=N'COLUMN',@level2name=N'LPSL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_12_FJXX', @level2type=N'COLUMN',@level2name=N'GZSL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_12_FJXX', @level2type=N'COLUMN',@level2name=N'BFSL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ϊ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_12_FJXX', @level2type=N'COLUMN',@level2name=N'RWSHSL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_12_FJXX', @level2type=N'COLUMN',@level2name=N'QT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ϼ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_12_FJXX', @level2type=N'COLUMN',@level2name=N'HJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_12_FJXX', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_12_FJXX', @level2type=N'COLUMN',@level2name=N'JCFW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_12_FJXX', @level2type=N'COLUMN',@level2name=N'HK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ά��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_12_FJXX', @level2type=N'COLUMN',@level2name=N'WX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�µ�Դ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_12_FJXX', @level2type=N'COLUMN',@level2name=N'XDY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ɵ�Դ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_12_FJXX', @level2type=N'COLUMN',@level2name=N'JDY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_12_FJXX', @level2type=N'COLUMN',@level2name=N'PJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�˻�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_12_FJXX', @level2type=N'COLUMN',@level2name=N'TH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_12_FJXX', @level2type=N'COLUMN',@level2name=N'QTE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'δ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_12_FJXX', @level2type=N'COLUMN',@level2name=N'WF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_12_FJXX', @level2type=N'COLUMN',@level2name=N'FHRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������α�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_13_FHPC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_13_FHPC', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������κ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_13_FHPC', @level2type=N'COLUMN',@level2name=N'FHPCH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_13_FHPC', @level2type=N'COLUMN',@level2name=N'FHR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������˾ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_13_FHPC', @level2type=N'COLUMN',@level2name=N'WLGSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_13_FHPC', @level2type=N'COLUMN',@level2name=N'ZXS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_13_FHPC', @level2type=N'COLUMN',@level2name=N'FHSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ּ�����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_13_FHPC', @level2type=N'COLUMN',@level2name=N'FJPCID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ϸ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_14_FHXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_14_FHXX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_14_FHXX', @level2type=N'COLUMN',@level2name=N'FHPCID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ּ���ϸID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_14_FHXX', @level2type=N'COLUMN',@level2name=N'FJXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_14_FHXX', @level2type=N'COLUMN',@level2name=N'JCFW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_14_FHXX', @level2type=N'COLUMN',@level2name=N'HK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ά��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_14_FHXX', @level2type=N'COLUMN',@level2name=N'WX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�µ�Դ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_14_FHXX', @level2type=N'COLUMN',@level2name=N'XDY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ɵ�Դ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_14_FHXX', @level2type=N'COLUMN',@level2name=N'JDY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_14_FHXX', @level2type=N'COLUMN',@level2name=N'PJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�˻�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_14_FHXX', @level2type=N'COLUMN',@level2name=N'TH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_14_FHXX', @level2type=N'COLUMN',@level2name=N'QT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'δ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_14_FHXX', @level2type=N'COLUMN',@level2name=N'WF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_14_FHXX', @level2type=N'COLUMN',@level2name=N'FHRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������˾��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_15_WLGS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_15_WLGS', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��˾����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_15_WLGS', @level2type=N'COLUMN',@level2name=N'GSDM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��˾��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_15_WLGS', @level2type=N'COLUMN',@level2name=N'GSM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��˾��ϵ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_15_WLGS', @level2type=N'COLUMN',@level2name=N'GSLXR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ϵ�绰' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_15_WLGS', @level2type=N'COLUMN',@level2name=N'LXDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���յ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_16_JSD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_16_JSD', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���յ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_16_JSD', @level2type=N'COLUMN',@level2name=N'JSDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���޵�λID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_16_JSD', @level2type=N'COLUMN',@level2name=N'SXDWID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_16_JSD', @level2type=N'COLUMN',@level2name=N'SXRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_16_JSD', @level2type=N'COLUMN',@level2name=N'BCZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���յ���ϸ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_17_JSDXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_17_JSDXX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ͺ�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_17_JSDXX', @level2type=N'COLUMN',@level2name=N'XHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_17_JSDXX', @level2type=N'COLUMN',@level2name=N'XH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SN��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_17_JSDXX', @level2type=N'COLUMN',@level2name=N'SN'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ���η���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_17_JSDXX', @level2type=N'COLUMN',@level2name=N'SFECFX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���޵�λID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_17_JSDXX', @level2type=N'COLUMN',@level2name=N'SXDWID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ϢID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_17_JSDXX', @level2type=N'COLUMN',@level2name=N'GZXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ά����ϢID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_17_JSDXX', @level2type=N'COLUMN',@level2name=N'WXXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ά����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_17_JSDXX', @level2type=N'COLUMN',@level2name=N'WXRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ά������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_17_JSDXX', @level2type=N'COLUMN',@level2name=N'WXRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���յ�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_17_JSDXX', @level2type=N'COLUMN',@level2name=N'JSDID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_18_JFD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_18_JFD', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_18_JFD', @level2type=N'COLUMN',@level2name=N'JFDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ά����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_18_JFD', @level2type=N'COLUMN',@level2name=N'WXSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_18_JFD', @level2type=N'COLUMN',@level2name=N'JFRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������ϸ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_19_JFDXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_19_JFDXX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_19_JFDXX', @level2type=N'COLUMN',@level2name=N'JFDID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���յ���ϸID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_19_JFDXX', @level2type=N'COLUMN',@level2name=N'JSDXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ص���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_20_FHD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_20_FHD', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ص���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_20_FHD', @level2type=N'COLUMN',@level2name=N'FHDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_20_FHD', @level2type=N'COLUMN',@level2name=N'FHRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ص�λID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_20_FHD', @level2type=N'COLUMN',@level2name=N'FHDWID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ص���ϸ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_21_FHDXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_21_FHDXX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ص�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_21_FHDXX', @level2type=N'COLUMN',@level2name=N'FHDID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���յ���ϸID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_21_FHDXX', @level2type=N'COLUMN',@level2name=N'JSDXXID'
GO
