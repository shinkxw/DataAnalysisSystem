--�ռ�����EDU_ZYZX  ��������SqlBuilder0.1

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZYZX_01_A01_ZYML')
            and   type = 'U')
   drop table EDU_ZYZX_01_A01_ZYML
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZYZX_01_A02_ZYMLSHQX')
            and   type = 'U')
   drop table EDU_ZYZX_01_A02_ZYMLSHQX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZYZX_01_A03_WJLX')
            and   type = 'U')
   drop table EDU_ZYZX_01_A03_WJLX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZYZX_01_A06_ZYWJ')
            and   type = 'U')
   drop table EDU_ZYZX_01_A06_ZYWJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZYZX_01_A07_ZYWJXZ')
            and   type = 'U')
   drop table EDU_ZYZX_01_A07_ZYWJXZ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZYZX_01_A08_ZYWJPL')
            and   type = 'U')
   drop table EDU_ZYZX_01_A08_ZYWJPL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZYZX_01_A09_ZYWJPF')
            and   type = 'U')
   drop table EDU_ZYZX_01_A09_ZYWJPF
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZYZX_01_A10_TZGG')
            and   type = 'U')
   drop table EDU_ZYZX_01_A10_TZGG
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZYZX_01_A11_YQLJLX')
            and   type = 'U')
   drop table EDU_ZYZX_01_A11_YQLJLX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZYZX_01_A12_YQLJ')
            and   type = 'U')
   drop table EDU_ZYZX_01_A12_YQLJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZYZX_01_A13_ZXDY')
            and   type = 'U')
   drop table EDU_ZYZX_01_A13_ZXDY
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZYZX_02_A01_SJLX')
            and   type = 'U')
   drop table EDU_ZYZX_02_A01_SJLX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZYZX_02_A02_SJZSD')
            and   type = 'U')
   drop table EDU_ZYZX_02_A02_SJZSD
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZYZX_02_A03_SJTM')
            and   type = 'U')
   drop table EDU_ZYZX_02_A03_SJTM
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZYZX_02_A04_SJ')
            and   type = 'U')
   drop table EDU_ZYZX_02_A04_SJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZYZX_03_A01_KCK')
            and   type = 'U')
   drop table EDU_ZYZX_03_A01_KCK
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZYZX_04_A01_ZLWJML')
            and   type = 'U')
   drop table EDU_ZYZX_04_A01_ZLWJML
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZYZX_04_A02_ZLWJMLQX')
            and   type = 'U')
   drop table EDU_ZYZX_04_A02_ZLWJMLQX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZYZX_04_A03_ZLWJ')
            and   type = 'U')
   drop table EDU_ZYZX_04_A03_ZLWJ
go
--��ԴĿ¼
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZYZX_01_A01_ZYML]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZYZX_01_A01_ZYML](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[MLMC]  nvarchar(50)  NOT NULL,--Ŀ¼����
	[FMLID]  int  NOT NULL,--��Ŀ¼ID
	[PLSX]  int  NOT NULL,--����˳��
	[SFSYZS]  int  NOT NULL,--�Ƿ���ҳչʾ
	[SFQY]  int  NOT NULL,--�Ƿ�����
	[URL]  nvarchar(500)  NOT NULL,--��ַ
CONSTRAINT [PK_EDU_ZYZX_01_A01_ZYML] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--��ԴĿ¼���Ȩ�ޱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZYZX_01_A02_ZYMLSHQX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZYZX_01_A02_ZYMLSHQX](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[YHID]  nvarchar(20)  NOT NULL,--�û�ID
	[MLIDLB]  text  NULL,--Ŀ¼ID�б�
CONSTRAINT [PK_EDU_ZYZX_01_A02_ZYMLSHQX] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�ļ�����
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZYZX_01_A03_WJLX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZYZX_01_A03_WJLX](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[LXMC]  nvarchar(50)  NOT NULL,--��������
CONSTRAINT [PK_EDU_ZYZX_01_A03_WJLX] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--��Դ�ļ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZYZX_01_A06_ZYWJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZYZX_01_A06_ZYWJ](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[ZYMLID]  int  NOT NULL,--��ԴĿ¼
	[ZYBT]  nvarchar(50)  NOT NULL,--��Դ����
	[SYDX]  nvarchar(30)  NOT NULL,--���ö���
	[GJZ]  nvarchar(50)  NOT NULL,--�ؼ���
	[JJ]  nvarchar(200)  NOT NULL,--���
	[ZYLX]  int  NOT NULL,--��Դ����
	[SYXZ]  int  NOT NULL,--ʹ������
	[LY]  nvarchar(20)  NOT NULL,--��Դ
	[YYZID]  nvarchar(20)  NOT NULL,--ӵ����ID
	[ZYMC]  nvarchar(300)  NOT NULL,--��Դ����
	[ZYDX]  nvarchar(300)  NOT NULL,--��Դ��С
	[ZYLJ]  nvarchar(300)  NOT NULL,--��Դ·��
	[WJLXID]  int  NOT NULL,--�ļ�����
	[ZYPJ]  int  NOT NULL,--��Դ����
	[SLT]  nvarchar(300)  NOT NULL,--����ͼ
	[SCSJ]  datetime  NOT NULL,--�ϴ�ʱ��
	[LLRC]  int  NOT NULL,--����˴�
	[XZRC]  int  NOT NULL,--�����˴�
	[PLRC]  int  NOT NULL,--�����˴�
	[PFRC]  int  NOT NULL,--�����˴�
	[ZYZT]  int  NOT NULL,--��Դ״̬
	[SHZT]  int  NOT NULL,--���״̬
	[SHRID]  nvarchar(20)  NOT NULL,--�����ID
	[SHSJ]  datetime  NOT NULL,--���ʱ��
	[ZYDXKB]  int  NOT NULL,--��Դ��С(KB)
CONSTRAINT [PK_EDU_ZYZX_01_A06_ZYWJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--��Դ�ļ�����
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZYZX_01_A07_ZYWJXZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZYZX_01_A07_ZYWJXZ](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[ZYWJID]  int  NOT NULL,--��Դ�ļ�ID
	[XZRID]  nvarchar(20)  NOT NULL,--������ID
	[XZSJ]  datetime  NOT NULL,--����ʱ��
CONSTRAINT [PK_EDU_ZYZX_01_A07_ZYWJXZ] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--��Դ�ļ�����
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZYZX_01_A08_ZYWJPL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZYZX_01_A08_ZYWJPL](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[ZYWJID]  int  NOT NULL,--��Դ�ļ�ID
	[PL]  nvarchar(200)  NOT NULL,--����
	[PLRID]  nvarchar(20)  NOT NULL,--������ID
	[PLSJ]  datetime  NOT NULL,--����ʱ��
CONSTRAINT [PK_EDU_ZYZX_01_A08_ZYWJPL] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--��Դ�ļ�����
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZYZX_01_A09_ZYWJPF]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZYZX_01_A09_ZYWJPF](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[ZYWJID]  int  NOT NULL,--��Դ�ļ�ID
	[PF]  int  NOT NULL,--����
	[PFRID]  nvarchar(20)  NOT NULL,--������ID
	[PFSJ]  datetime  NOT NULL,--����ʱ��
CONSTRAINT [PK_EDU_ZYZX_01_A09_ZYWJPF] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--֪ͨ����
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZYZX_01_A10_TZGG]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZYZX_01_A10_TZGG](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[TITLE]  nvarchar(100)  NOT NULL,--����
	[FBRID]  nvarchar(20)  NOT NULL,--������ID
	[FBRXM]  nvarchar(50)  NOT NULL,--����������
	[FBBM]  nvarchar(50)  NULL,--��������
	[FBSJ]  datetime  NOT NULL,--����ʱ��
	[NR]  text  NULL,--����
	[TPDZ]  nvarchar(300)  NULL,--ͼƬ��ַ
	[DJL]  int  NULL,--�����
	[SHZT]  int  NOT NULL,--���״̬
	[SHRID]  nvarchar(20)  NULL,--�����ID
	[SHRXM]  nvarchar(50)  NULL,--���������
	[SHSJ]  datetime  NOT NULL,--���ʱ��
	[SFXS]  int  NOT NULL,--�Ƿ���ʾ
	[SFZD]  int  NOT NULL,--�Ƿ��ö�
CONSTRAINT [PK_EDU_ZYZX_01_A10_TZGG] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--������������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZYZX_01_A11_YQLJLX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZYZX_01_A11_YQLJLX](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[NAME]  nvarchar(50)  NOT NULL,--������
	[SHOWSTYLE]  int  NOT NULL,--��ʾ��ʽ
CONSTRAINT [PK_EDU_ZYZX_01_A11_YQLJLX] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--��������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZYZX_01_A12_YQLJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZYZX_01_A12_YQLJ](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[YQLJLXID]  int  NOT NULL,--������������ID
	[TITLE]  nvarchar(50)  NOT NULL,--����
	[IMAGEURL]  nvarchar(500)  NULL,--ͼƬ
	[URL]  nvarchar(300)  NOT NULL,--����
CONSTRAINT [PK_EDU_ZYZX_01_A12_YQLJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC,
	[YQLJLXID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--���ߴ���
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZYZX_01_A13_ZXDY]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZYZX_01_A13_ZXDY](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[WENTI]  nvarchar(500)  NOT NULL,--����
	[TWR]  nvarchar(30)  NOT NULL,--������
	[TWSJ]  datetime  NOT NULL,--����ʱ��
	[DAAN]  nvarchar(500)  NULL,--��
	[HDR]  nvarchar(30)  NOT NULL,--�ش���
	[HDSJ]  datetime  NOT NULL,--�ش�ʱ��
	[ZT]  int  NOT NULL,--״̬
CONSTRAINT [PK_EDU_ZYZX_01_A13_ZXDY] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�������ͱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZYZX_02_A01_SJLX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZYZX_02_A01_SJLX](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[LXMC]  nvarchar(50)  NOT NULL,--��������
CONSTRAINT [PK_EDU_ZYZX_02_A01_SJLX] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�Ծ�֪ʶ���
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZYZX_02_A02_SJZSD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZYZX_02_A02_SJZSD](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[KCKID]  int  NOT NULL,--�γ̿�ID
	[ZSDMC]  nvarchar(50)  NOT NULL,--֪ʶ������
CONSTRAINT [PK_EDU_ZYZX_02_A02_SJZSD] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�Ծ���Ŀ��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZYZX_02_A03_SJTM]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZYZX_02_A03_SJTM](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[KCKID]  int  NOT NULL,--�γ̿�ID
	[ZSDID]  int  NOT NULL,--֪ʶ��ID
	[LXID]  int  NOT NULL,--����ID
	[TM]  text  NOT NULL,--��Ŀ
	[NDXS]  decimal(6, 2)  NOT NULL,--�Ѷ�ϵ��
	[FZ]  decimal(5, 1)  NOT NULL,--��ֵ
	[SHZT]  int  NOT NULL,--���״̬
	[SCRID]  nvarchar(20)  NOT NULL,--�ϴ���ID
	[SCSJ]  datetime  NOT NULL,--�ϴ�ʱ��
	[SHRID]  nvarchar(20)  NOT NULL,--�����ID
	[SHSJ]  datetime  NOT NULL,--���ʱ��
CONSTRAINT [PK_EDU_ZYZX_02_A03_SJTM] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�Ծ��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZYZX_02_A04_SJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZYZX_02_A04_SJ](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[KCKID]  int  NOT NULL,--�γ̿�ID
	[SYFF]  nvarchar(50)  NOT NULL,--���÷�Χ
	[SJMC]  nvarchar(50)  NOT NULL,--�Ծ�����
	[NDXS]  decimal(6, 2)  NOT NULL,--�Ѷ�ϵ��
	[FZ]  decimal(5, 1)  NOT NULL,--��ֵ
	[NR]  text  NOT NULL,--����
	[SHZT]  int  NOT NULL,--���״̬
	[SCRID]  nvarchar(20)  NOT NULL,--�ϴ���ID
	[SCSJ]  datetime  NOT NULL,--�ϴ�ʱ��
	[SHRID]  nvarchar(20)  NOT NULL,--�����ID
	[SHSJ]  datetime  NOT NULL,--���ʱ��
	[FJ]  text  NOT NULL,--����
CONSTRAINT [PK_EDU_ZYZX_02_A04_SJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�γ̿��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZYZX_03_A01_KCK]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZYZX_03_A01_KCK](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[KCDM]  nvarchar(20)  NOT NULL,--�γ̴���
	[KCMC]  nvarchar(50)  NOT NULL,--�γ�����
CONSTRAINT [PK_EDU_ZYZX_03_A01_KCK] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�����ļ�Ŀ¼
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZYZX_04_A01_ZLWJML]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZYZX_04_A01_ZLWJML](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[MLMC]  nvarchar(50)  NOT NULL,--Ŀ¼����
	[FMLID]  int  NOT NULL,--��Ŀ¼ID
	[PLSX]  int  NOT NULL,--����˳��
CONSTRAINT [PK_EDU_ZYZX_04_A01_ZLWJML] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�����ļ�Ŀ¼Ȩ��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZYZX_04_A02_ZLWJMLQX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZYZX_04_A02_ZLWJMLQX](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[YHID]  nvarchar(20)  NOT NULL,--�û�ID
	[ZYMLID]  int  NOT NULL,--��ԴĿ¼ID
	[GNBH]  int  NOT NULL,--���ܱ��
CONSTRAINT [PK_EDU_ZYZX_04_A02_ZLWJMLQX] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�����ļ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZYZX_04_A03_ZLWJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZYZX_04_A03_ZLWJ](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[ZYMLID]  int  NOT NULL,--��ԴĿ¼ID
	[BT]  nvarchar(50)  NOT NULL,--����
	[SCSJ]  datetime  NOT NULL,--�ϴ�ʱ��
	[JJ]  nvarchar(200)  NOT NULL,--���
	[WJM]  text  NOT NULL,--�ļ���
	[SCYHID]  nvarchar(20)  NOT NULL,--�ϴ��û�ID
	[ZLWJDX]  nvarchar(300)  NOT NULL,--�����ļ���С
	[ZLWJDXKB]  int  NOT NULL,--�����ļ���С(KB)
CONSTRAINT [PK_EDU_ZYZX_04_A03_ZLWJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--����Ϊ���ע�����
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ԴĿ¼' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A01_ZYML'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A01_ZYML', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A01_ZYML', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ŀ¼����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A01_ZYML', @level2type=N'COLUMN',@level2name=N'MLMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ŀ¼ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A01_ZYML', @level2type=N'COLUMN',@level2name=N'FMLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����˳��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A01_ZYML', @level2type=N'COLUMN',@level2name=N'PLSX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ���ҳչʾ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A01_ZYML', @level2type=N'COLUMN',@level2name=N'SFSYZS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A01_ZYML', @level2type=N'COLUMN',@level2name=N'SFQY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ַ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A01_ZYML', @level2type=N'COLUMN',@level2name=N'URL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ԴĿ¼���Ȩ�ޱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A02_ZYMLSHQX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A02_ZYMLSHQX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A02_ZYMLSHQX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�û�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A02_ZYMLSHQX', @level2type=N'COLUMN',@level2name=N'YHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ŀ¼ID�б�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A02_ZYMLSHQX', @level2type=N'COLUMN',@level2name=N'MLIDLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ļ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A03_WJLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A03_WJLX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A03_WJLX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A03_WJLX', @level2type=N'COLUMN',@level2name=N'LXMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Դ�ļ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A06_ZYWJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A06_ZYWJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A06_ZYWJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ԴĿ¼' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A06_ZYWJ', @level2type=N'COLUMN',@level2name=N'ZYMLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Դ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A06_ZYWJ', @level2type=N'COLUMN',@level2name=N'ZYBT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ö���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A06_ZYWJ', @level2type=N'COLUMN',@level2name=N'SYDX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ؼ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A06_ZYWJ', @level2type=N'COLUMN',@level2name=N'GJZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A06_ZYWJ', @level2type=N'COLUMN',@level2name=N'JJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Դ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A06_ZYWJ', @level2type=N'COLUMN',@level2name=N'ZYLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ʹ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A06_ZYWJ', @level2type=N'COLUMN',@level2name=N'SYXZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Դ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A06_ZYWJ', @level2type=N'COLUMN',@level2name=N'LY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ӵ����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A06_ZYWJ', @level2type=N'COLUMN',@level2name=N'YYZID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Դ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A06_ZYWJ', @level2type=N'COLUMN',@level2name=N'ZYMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Դ��С' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A06_ZYWJ', @level2type=N'COLUMN',@level2name=N'ZYDX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Դ·��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A06_ZYWJ', @level2type=N'COLUMN',@level2name=N'ZYLJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ļ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A06_ZYWJ', @level2type=N'COLUMN',@level2name=N'WJLXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Դ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A06_ZYWJ', @level2type=N'COLUMN',@level2name=N'ZYPJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ͼ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A06_ZYWJ', @level2type=N'COLUMN',@level2name=N'SLT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ϴ�ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A06_ZYWJ', @level2type=N'COLUMN',@level2name=N'SCSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����˴�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A06_ZYWJ', @level2type=N'COLUMN',@level2name=N'LLRC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����˴�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A06_ZYWJ', @level2type=N'COLUMN',@level2name=N'XZRC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����˴�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A06_ZYWJ', @level2type=N'COLUMN',@level2name=N'PLRC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����˴�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A06_ZYWJ', @level2type=N'COLUMN',@level2name=N'PFRC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Դ״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A06_ZYWJ', @level2type=N'COLUMN',@level2name=N'ZYZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A06_ZYWJ', @level2type=N'COLUMN',@level2name=N'SHZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A06_ZYWJ', @level2type=N'COLUMN',@level2name=N'SHRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A06_ZYWJ', @level2type=N'COLUMN',@level2name=N'SHSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Դ��С(KB)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A06_ZYWJ', @level2type=N'COLUMN',@level2name=N'ZYDXKB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Դ�ļ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A07_ZYWJXZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A07_ZYWJXZ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A07_ZYWJXZ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Դ�ļ�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A07_ZYWJXZ', @level2type=N'COLUMN',@level2name=N'ZYWJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A07_ZYWJXZ', @level2type=N'COLUMN',@level2name=N'XZRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A07_ZYWJXZ', @level2type=N'COLUMN',@level2name=N'XZSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Դ�ļ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A08_ZYWJPL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A08_ZYWJPL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A08_ZYWJPL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Դ�ļ�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A08_ZYWJPL', @level2type=N'COLUMN',@level2name=N'ZYWJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A08_ZYWJPL', @level2type=N'COLUMN',@level2name=N'PL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A08_ZYWJPL', @level2type=N'COLUMN',@level2name=N'PLRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A08_ZYWJPL', @level2type=N'COLUMN',@level2name=N'PLSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Դ�ļ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A09_ZYWJPF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A09_ZYWJPF', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A09_ZYWJPF', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Դ�ļ�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A09_ZYWJPF', @level2type=N'COLUMN',@level2name=N'ZYWJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A09_ZYWJPF', @level2type=N'COLUMN',@level2name=N'PF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A09_ZYWJPF', @level2type=N'COLUMN',@level2name=N'PFRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A09_ZYWJPF', @level2type=N'COLUMN',@level2name=N'PFSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'֪ͨ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A10_TZGG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A10_TZGG', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A10_TZGG', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A10_TZGG', @level2type=N'COLUMN',@level2name=N'TITLE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A10_TZGG', @level2type=N'COLUMN',@level2name=N'FBRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A10_TZGG', @level2type=N'COLUMN',@level2name=N'FBRXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A10_TZGG', @level2type=N'COLUMN',@level2name=N'FBBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A10_TZGG', @level2type=N'COLUMN',@level2name=N'FBSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A10_TZGG', @level2type=N'COLUMN',@level2name=N'NR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ͼƬ��ַ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A10_TZGG', @level2type=N'COLUMN',@level2name=N'TPDZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A10_TZGG', @level2type=N'COLUMN',@level2name=N'DJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A10_TZGG', @level2type=N'COLUMN',@level2name=N'SHZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A10_TZGG', @level2type=N'COLUMN',@level2name=N'SHRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A10_TZGG', @level2type=N'COLUMN',@level2name=N'SHRXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A10_TZGG', @level2type=N'COLUMN',@level2name=N'SHSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ���ʾ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A10_TZGG', @level2type=N'COLUMN',@level2name=N'SFXS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ��ö�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A10_TZGG', @level2type=N'COLUMN',@level2name=N'SFZD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A11_YQLJLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A11_YQLJLX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A11_YQLJLX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A11_YQLJLX', @level2type=N'COLUMN',@level2name=N'NAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʾ��ʽ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A11_YQLJLX', @level2type=N'COLUMN',@level2name=N'SHOWSTYLE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A12_YQLJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A12_YQLJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A12_YQLJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A12_YQLJ', @level2type=N'COLUMN',@level2name=N'YQLJLXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A12_YQLJ', @level2type=N'COLUMN',@level2name=N'TITLE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ͼƬ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A12_YQLJ', @level2type=N'COLUMN',@level2name=N'IMAGEURL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A12_YQLJ', @level2type=N'COLUMN',@level2name=N'URL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ߴ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A13_ZXDY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A13_ZXDY', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A13_ZXDY', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A13_ZXDY', @level2type=N'COLUMN',@level2name=N'WENTI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A13_ZXDY', @level2type=N'COLUMN',@level2name=N'TWR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A13_ZXDY', @level2type=N'COLUMN',@level2name=N'TWSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A13_ZXDY', @level2type=N'COLUMN',@level2name=N'DAAN'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ش���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A13_ZXDY', @level2type=N'COLUMN',@level2name=N'HDR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ش�ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A13_ZXDY', @level2type=N'COLUMN',@level2name=N'HDSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_01_A13_ZXDY', @level2type=N'COLUMN',@level2name=N'ZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������ͱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_02_A01_SJLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_02_A01_SJLX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_02_A01_SJLX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_02_A01_SJLX', @level2type=N'COLUMN',@level2name=N'LXMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ծ�֪ʶ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_02_A02_SJZSD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_02_A02_SJZSD', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_02_A02_SJZSD', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�γ̿�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_02_A02_SJZSD', @level2type=N'COLUMN',@level2name=N'KCKID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'֪ʶ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_02_A02_SJZSD', @level2type=N'COLUMN',@level2name=N'ZSDMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ծ���Ŀ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_02_A03_SJTM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_02_A03_SJTM', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_02_A03_SJTM', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�γ̿�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_02_A03_SJTM', @level2type=N'COLUMN',@level2name=N'KCKID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'֪ʶ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_02_A03_SJTM', @level2type=N'COLUMN',@level2name=N'ZSDID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_02_A03_SJTM', @level2type=N'COLUMN',@level2name=N'LXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ŀ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_02_A03_SJTM', @level2type=N'COLUMN',@level2name=N'TM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ѷ�ϵ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_02_A03_SJTM', @level2type=N'COLUMN',@level2name=N'NDXS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ֵ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_02_A03_SJTM', @level2type=N'COLUMN',@level2name=N'FZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_02_A03_SJTM', @level2type=N'COLUMN',@level2name=N'SHZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ϴ���ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_02_A03_SJTM', @level2type=N'COLUMN',@level2name=N'SCRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ϴ�ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_02_A03_SJTM', @level2type=N'COLUMN',@level2name=N'SCSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_02_A03_SJTM', @level2type=N'COLUMN',@level2name=N'SHRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_02_A03_SJTM', @level2type=N'COLUMN',@level2name=N'SHSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ծ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_02_A04_SJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_02_A04_SJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_02_A04_SJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�γ̿�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_02_A04_SJ', @level2type=N'COLUMN',@level2name=N'KCKID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���÷�Χ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_02_A04_SJ', @level2type=N'COLUMN',@level2name=N'SYFF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ծ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_02_A04_SJ', @level2type=N'COLUMN',@level2name=N'SJMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ѷ�ϵ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_02_A04_SJ', @level2type=N'COLUMN',@level2name=N'NDXS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ֵ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_02_A04_SJ', @level2type=N'COLUMN',@level2name=N'FZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_02_A04_SJ', @level2type=N'COLUMN',@level2name=N'NR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_02_A04_SJ', @level2type=N'COLUMN',@level2name=N'SHZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ϴ���ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_02_A04_SJ', @level2type=N'COLUMN',@level2name=N'SCRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ϴ�ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_02_A04_SJ', @level2type=N'COLUMN',@level2name=N'SCSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_02_A04_SJ', @level2type=N'COLUMN',@level2name=N'SHRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_02_A04_SJ', @level2type=N'COLUMN',@level2name=N'SHSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_02_A04_SJ', @level2type=N'COLUMN',@level2name=N'FJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�γ̿��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_03_A01_KCK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_03_A01_KCK', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_03_A01_KCK', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�γ̴���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_03_A01_KCK', @level2type=N'COLUMN',@level2name=N'KCDM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�γ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_03_A01_KCK', @level2type=N'COLUMN',@level2name=N'KCMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����ļ�Ŀ¼' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_04_A01_ZLWJML'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_04_A01_ZLWJML', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_04_A01_ZLWJML', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ŀ¼����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_04_A01_ZLWJML', @level2type=N'COLUMN',@level2name=N'MLMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ŀ¼ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_04_A01_ZLWJML', @level2type=N'COLUMN',@level2name=N'FMLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����˳��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_04_A01_ZLWJML', @level2type=N'COLUMN',@level2name=N'PLSX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����ļ�Ŀ¼Ȩ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_04_A02_ZLWJMLQX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_04_A02_ZLWJMLQX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_04_A02_ZLWJMLQX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�û�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_04_A02_ZLWJMLQX', @level2type=N'COLUMN',@level2name=N'YHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ԴĿ¼ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_04_A02_ZLWJMLQX', @level2type=N'COLUMN',@level2name=N'ZYMLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ܱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_04_A02_ZLWJMLQX', @level2type=N'COLUMN',@level2name=N'GNBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����ļ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_04_A03_ZLWJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_04_A03_ZLWJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_04_A03_ZLWJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ԴĿ¼ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_04_A03_ZLWJ', @level2type=N'COLUMN',@level2name=N'ZYMLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_04_A03_ZLWJ', @level2type=N'COLUMN',@level2name=N'BT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ϴ�ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_04_A03_ZLWJ', @level2type=N'COLUMN',@level2name=N'SCSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_04_A03_ZLWJ', @level2type=N'COLUMN',@level2name=N'JJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ļ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_04_A03_ZLWJ', @level2type=N'COLUMN',@level2name=N'WJM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ϴ��û�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_04_A03_ZLWJ', @level2type=N'COLUMN',@level2name=N'SCYHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����ļ���С' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_04_A03_ZLWJ', @level2type=N'COLUMN',@level2name=N'ZLWJDX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����ļ���С(KB)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_04_A03_ZLWJ', @level2type=N'COLUMN',@level2name=N'ZLWJDXKB'
GO
