--�ռ�����EDU_JPXT  ��������SqlBuilder0.1

if exists (select 1 from  sysobjects where  id = object_id('EDU_JPXT_01_01_JLCSJ')
            and   type = 'U')
   drop table EDU_JPXT_01_01_JLCSJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_JPXT_01_02_JLCBGLL')
            and   type = 'U')
   drop table EDU_JPXT_01_02_JLCBGLL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_JPXT_01_03_JLCWXQK')
            and   type = 'U')
   drop table EDU_JPXT_01_03_JLCWXQK
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_JPXT_01_04_JLCJYQK')
            and   type = 'U')
   drop table EDU_JPXT_01_04_JLCJYQK
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_JPXT_01_05_JLCYHQK')
            and   type = 'U')
   drop table EDU_JPXT_01_05_JLCYHQK
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_JPXT_01_06_JLCCLXH')
            and   type = 'U')
   drop table EDU_JPXT_01_06_JLCCLXH
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_JPXT_02_01_JLYSJ')
            and   type = 'U')
   drop table EDU_JPXT_02_01_JLYSJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_JPXT_02_02_JLYWJQK')
            and   type = 'U')
   drop table EDU_JPXT_02_02_JLYWJQK
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_JPXT_02_03_JLYAQQK')
            and   type = 'U')
   drop table EDU_JPXT_02_03_JLYAQQK
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_JPXT_02_04_JLYJCQK')
            and   type = 'U')
   drop table EDU_JPXT_02_04_JLYJCQK
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_JPXT_03_01_XYSJ')
            and   type = 'U')
   drop table EDU_JPXT_03_01_XYSJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_JPXT_03_02_XYKSJG')
            and   type = 'U')
   drop table EDU_JPXT_03_02_XYKSJG
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_JPXT_03_03_XYHFXX')
            and   type = 'U')
   drop table EDU_JPXT_03_03_XYHFXX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_JPXT_04_01_KMKS')
            and   type = 'U')
   drop table EDU_JPXT_04_01_KMKS
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_JPXT_05_01_CLXH')
            and   type = 'U')
   drop table EDU_JPXT_05_01_CLXH
go
--���������ݱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_JPXT_01_01_JLCSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_JPXT_01_01_JLCSJ](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[GMSJ]  datetime  NOT NULL,--����ʱ��
	[CLXHID]  int  NOT NULL,--�����ͺ�ID
	[PP]  nvarchar(100)  NOT NULL,--Ʒ��
	[CPH]  nvarchar(50)  NOT NULL,--���ƺ�
	[FDJH]  nvarchar(100)  NULL,--��������
	[CJH]  nvarchar(100)  NOT NULL,--���ܺ�
	[BFSJ]  datetime  NOT NULL,--����ʱ��
	[EBRQ]  datetime  NOT NULL,--��������
	[DQZT]  int  NOT NULL,--��ǰ״̬
	[DQJLYID]  int  NOT NULL,--��ǰ����ԱID
	[BZ]  text  NULL,--��ע
CONSTRAINT [PK_EDU_JPXT_01_01_JLCSJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--����������������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_JPXT_01_02_JLCBGLL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_JPXT_01_02_JLCBGLL](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[JLCID]  int  NOT NULL,--������ID
	[JLYID]  int  NOT NULL,--����ԱID
	[BGKSSJ]  datetime  NOT NULL,--���ܿ�ʼʱ��
	[BGJSSJ]  datetime  NULL,--���ܽ���ʱ��
	[BGZT]  text  NOT NULL,--����״̬
CONSTRAINT [PK_EDU_JPXT_01_02_JLCBGLL] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--������ά�������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_JPXT_01_03_JLCWXQK]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_JPXT_01_03_JLCWXQK](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[JLCID]  int  NOT NULL,--������ID
	[GZXX]  text  NOT NULL,--��������
	[SXSJ]  datetime  NOT NULL,--����ʱ��
	[WCSJ]  datetime  NOT NULL,--���ʱ��
	[WXJG]  text  NOT NULL,--ά�޽��
	[BZ]  text  NOT NULL,--��ע
CONSTRAINT [PK_EDU_JPXT_01_03_JLCWXQK] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--���������������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_JPXT_01_04_JLCJYQK]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_JPXT_01_04_JLCJYQK](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[JLCID]  int  NOT NULL,--������ID
	[JYNR]  text  NOT NULL,--��������
	[JYSJ]  datetime  NOT NULL,--����ʱ��
	[WCSJ]  datetime  NOT NULL,--���ʱ��
	[JYJG]  text  NOT NULL,--������
	[BZ]  text  NOT NULL,--��ע
CONSTRAINT [PK_EDU_JPXT_01_04_JLCJYQK] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�������ͺ������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_JPXT_01_05_JLCYHQK]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_JPXT_01_05_JLCYHQK](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[JLCID]  int  NOT NULL,--������ID
	[JLYID]  int  NOT NULL,--����ԱID
	[LRSJ]  datetime  NOT NULL,--¼��ʱ��
	[YLCZ]  decimal(8, 3)  NOT NULL,--��ֵ����
	[BZ]  text  NOT NULL,--��ע
CONSTRAINT [PK_EDU_JPXT_01_05_JLCYHQK] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�������������ı�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_JPXT_01_06_JLCCLXH]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_JPXT_01_06_JLCCLXH](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[JLCID]  int  NOT NULL,--������ID
	[JLYID]  int  NOT NULL,--����ԱID
	[LRSJ]  datetime  NOT NULL,--¼��ʱ��
	[XHQK]  decimal(8, 2)  NOT NULL,--�������
	[BZ]  text  NOT NULL,--��ע
CONSTRAINT [PK_EDU_JPXT_01_06_JLCCLXH] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--����Ա���ݱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_JPXT_02_01_JLYSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_JPXT_02_01_JLYSJ](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[XM]  nvarchar(36)  NOT NULL,--����
	[XBM]  nvarchar(1)  NOT NULL,--�Ա���
	[SFZH]  nvarchar(50)  NOT NULL,--���֤��
	[JSZH]  nvarchar(50)  NOT NULL,--��ʻ֤��
	[JSZYXQ]  datetime  NOT NULL,--��ʻ֤��Ч��
	[JLZH]  nvarchar(50)  NOT NULL,--����֤��
	[JLZYXQ]  datetime  NOT NULL,--����֤��Ч��
	[XL]  nvarchar(50)  NOT NULL,--ѧ��
	[ZC]  nvarchar(50)  NOT NULL,--ְ��
	[JXSJ]  datetime  NOT NULL,--��Уʱ��
	[LXDH]  nvarchar(30)  NOT NULL,--��ϵ�绰
	[ZZ]  nvarchar(200)  NOT NULL,--סַ
	[JSDJ]  nvarchar(100)  NOT NULL,--�����ȼ�
	[JTCHYXM]  nvarchar(36)  NOT NULL,--��ͥ��Աһ����
	[JTCYYGX]  nvarchar(36)  NOT NULL,--��ͥ��Աһ��ϵ
	[JTCYYXBM]  nvarchar(1)  NOT NULL,--��ͥ��Աһ�Ա���
	[JTCYYCSRQ]  datetime  NOT NULL,--��ͥ��Աһ��������
	[JTCYYZZ]  nvarchar(200)  NOT NULL,--��ͥ��Աһסַ
	[JTCYYLXDH]  nvarchar(30)  NOT NULL,--��ͥ��Աһ��ϵ�绰
	[JTCYYCSGZ]  nvarchar(200)  NOT NULL,--��ͥ��Աһ���¹���
	[JTCYEXM]  nvarchar(36)  NOT NULL,--��ͥ��Ա������
	[JTCYEGX]  nvarchar(36)  NOT NULL,--��ͥ��Ա����ϵ
	[JTCYEXBM]  nvarchar(1)  NOT NULL,--��ͥ��Ա���Ա���
	[JTCYECSRQ]  datetime  NOT NULL,--��ͥ��Ա����������
	[JTCYEZZ]  nvarchar(200)  NOT NULL,--��ͥ��Ա��סַ
	[JTCYELXDH]  nvarchar(30)  NOT NULL,--��ͥ��Ա����ϵ�绰
	[JTCYECSGZ]  nvarchar(200)  NOT NULL,--��ͥ��Ա�����¹���
CONSTRAINT [PK_EDU_JPXT_02_01_JLYSJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--����ԱΥ�������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_JPXT_02_02_JLYWJQK]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_JPXT_02_02_JLYWJQK](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[JLYID]  int  NOT NULL,--����ԱID
	[TSR]  nvarchar(50)  NOT NULL,--Ͷ����
	[TSSJ]  datetime  NOT NULL,--Ͷ��ʱ��
	[LXDH]  nvarchar(30)  NOT NULL,--��ϵ�绰
	[TSNR]  text  NOT NULL,--Ͷ������
	[CLJG]  text  NOT NULL,--������
	[BZ]  text  NOT NULL,--��ע
CONSTRAINT [PK_EDU_JPXT_02_02_JLYWJQK] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--����Ա��ȫ�����
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_JPXT_02_03_JLYAQQK]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_JPXT_02_03_JLYAQQK](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[JLYID]  int  NOT NULL,--����ԱID
	[LRSJ]  datetime  NOT NULL,--¼��ʱ��
	[AQQK]  text  NOT NULL,--��ȫ���
	[BZ]  text  NOT NULL,--��ע
CONSTRAINT [PK_EDU_JPXT_02_03_JLYAQQK] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--����Ա���������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_JPXT_02_04_JLYJCQK]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_JPXT_02_04_JLYJCQK](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[JLYID]  int  NOT NULL,--����ԱID
	[LRSJ]  datetime  NOT NULL,--¼��ʱ��
	[JCQK]  text  NOT NULL,--�������
	[BZ]  text  NOT NULL,--��ע
CONSTRAINT [PK_EDU_JPXT_02_04_JLYJCQK] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ѧԱ���ݱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_JPXT_03_01_XYSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_JPXT_03_01_XYSJ](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[XM]  nvarchar(36)  NOT NULL,--����
	[SFZH]  nvarchar(30)  NOT NULL,--���֤��
	[XBM]  nvarchar(1)  NOT NULL,--�Ա���
	[LXDH]  nvarchar(30)  NOT NULL,--��ϵ�绰
	[ZZ]  nvarchar(200)  NOT NULL,--סַ
	[BMSJ]  datetime  NOT NULL,--����ʱ��
	[SFQK]  nvarchar(200)  NOT NULL,--�ɷ����
	[SXCXID]  int  NOT NULL,--��ѡ����ID
	[ZJQK]  nvarchar(200)  NOT NULL,--�������
	[SZJLCID]  int  NOT NULL,--��������ԱID
	[YJJLYID]  int  NOT NULL,--��������ԱID
	[DQZT]  int  NOT NULL,--��ǰ״̬
	[BYSJ]  datetime  NOT NULL,--��ҵʱ��
CONSTRAINT [PK_EDU_JPXT_03_01_XYSJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ѧԱ���Խ����
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_JPXT_03_02_XYKSJG]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_JPXT_03_02_XYKSJG](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[XYID]  int  NOT NULL,--ѧԱID
	[KMKSID]  int  NOT NULL,--��Ŀ����ID
	[KSJG]  int  NOT NULL,--���Խ��
CONSTRAINT [PK_EDU_JPXT_03_02_XYKSJG] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ѧԱ�ط���Ϣ��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_JPXT_03_03_XYHFXX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_JPXT_03_03_XYHFXX](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[XYID]  int  NOT NULL,--ѧԱID
	[HFSJ]  datetime  NOT NULL,--�ط�ʱ��
	[HFJG]  text  NOT NULL,--�طý��
	[BZ]  text  NOT NULL,--��ע
CONSTRAINT [PK_EDU_JPXT_03_03_XYHFXX] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--��Ŀ���Ա�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_JPXT_04_01_KMKS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_JPXT_04_01_KMKS](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[KMDM]  nvarchar(1)  NOT NULL,--��Ŀ����
	[KSSJ]  datetime  NOT NULL,--����ʱ��
	[BZ]  text  NOT NULL,--��ע
CONSTRAINT [PK_EDU_JPXT_04_01_KMKS] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�����ͺ����ݱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_JPXT_05_01_CLXH]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_JPXT_05_01_CLXH](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[CLXHMC]  nvarchar(30)  NOT NULL,--�����ͺ�����
	[BZ]  text  NOT NULL,--��ע
CONSTRAINT [PK_EDU_JPXT_05_01_CLXH] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--����Ϊ���ע�����
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���������ݱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_01_JLCSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_01_JLCSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_01_JLCSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_01_JLCSJ', @level2type=N'COLUMN',@level2name=N'GMSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����ͺ�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_01_JLCSJ', @level2type=N'COLUMN',@level2name=N'CLXHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ʒ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_01_JLCSJ', @level2type=N'COLUMN',@level2name=N'PP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ƺ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_01_JLCSJ', @level2type=N'COLUMN',@level2name=N'CPH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_01_JLCSJ', @level2type=N'COLUMN',@level2name=N'FDJH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ܺ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_01_JLCSJ', @level2type=N'COLUMN',@level2name=N'CJH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_01_JLCSJ', @level2type=N'COLUMN',@level2name=N'BFSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_01_JLCSJ', @level2type=N'COLUMN',@level2name=N'EBRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ǰ״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_01_JLCSJ', @level2type=N'COLUMN',@level2name=N'DQZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ǰ����ԱID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_01_JLCSJ', @level2type=N'COLUMN',@level2name=N'DQJLYID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_01_JLCSJ', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����������������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_02_JLCBGLL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_02_JLCBGLL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_02_JLCBGLL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_02_JLCBGLL', @level2type=N'COLUMN',@level2name=N'JLCID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ԱID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_02_JLCBGLL', @level2type=N'COLUMN',@level2name=N'JLYID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ܿ�ʼʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_02_JLCBGLL', @level2type=N'COLUMN',@level2name=N'BGKSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ܽ���ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_02_JLCBGLL', @level2type=N'COLUMN',@level2name=N'BGJSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_02_JLCBGLL', @level2type=N'COLUMN',@level2name=N'BGZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ά�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_03_JLCWXQK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_03_JLCWXQK', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_03_JLCWXQK', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_03_JLCWXQK', @level2type=N'COLUMN',@level2name=N'JLCID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_03_JLCWXQK', @level2type=N'COLUMN',@level2name=N'GZXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_03_JLCWXQK', @level2type=N'COLUMN',@level2name=N'SXSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_03_JLCWXQK', @level2type=N'COLUMN',@level2name=N'WCSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ά�޽��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_03_JLCWXQK', @level2type=N'COLUMN',@level2name=N'WXJG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_03_JLCWXQK', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���������������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_04_JLCJYQK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_04_JLCJYQK', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_04_JLCJYQK', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_04_JLCJYQK', @level2type=N'COLUMN',@level2name=N'JLCID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_04_JLCJYQK', @level2type=N'COLUMN',@level2name=N'JYNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_04_JLCJYQK', @level2type=N'COLUMN',@level2name=N'JYSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_04_JLCJYQK', @level2type=N'COLUMN',@level2name=N'WCSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_04_JLCJYQK', @level2type=N'COLUMN',@level2name=N'JYJG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_04_JLCJYQK', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������ͺ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_05_JLCYHQK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_05_JLCYHQK', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_05_JLCYHQK', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_05_JLCYHQK', @level2type=N'COLUMN',@level2name=N'JLCID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ԱID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_05_JLCYHQK', @level2type=N'COLUMN',@level2name=N'JLYID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'¼��ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_05_JLCYHQK', @level2type=N'COLUMN',@level2name=N'LRSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ֵ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_05_JLCYHQK', @level2type=N'COLUMN',@level2name=N'YLCZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_05_JLCYHQK', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������������ı�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_06_JLCCLXH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_06_JLCCLXH', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_06_JLCCLXH', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_06_JLCCLXH', @level2type=N'COLUMN',@level2name=N'JLCID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ԱID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_06_JLCCLXH', @level2type=N'COLUMN',@level2name=N'JLYID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'¼��ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_06_JLCCLXH', @level2type=N'COLUMN',@level2name=N'LRSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_06_JLCCLXH', @level2type=N'COLUMN',@level2name=N'XHQK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_06_JLCCLXH', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����Ա���ݱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_01_JLYSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_01_JLYSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_01_JLYSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_01_JLYSJ', @level2type=N'COLUMN',@level2name=N'XM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ա���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_01_JLYSJ', @level2type=N'COLUMN',@level2name=N'XBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���֤��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_01_JLYSJ', @level2type=N'COLUMN',@level2name=N'SFZH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʻ֤��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_01_JLYSJ', @level2type=N'COLUMN',@level2name=N'JSZH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʻ֤��Ч��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_01_JLYSJ', @level2type=N'COLUMN',@level2name=N'JSZYXQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����֤��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_01_JLYSJ', @level2type=N'COLUMN',@level2name=N'JLZH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����֤��Ч��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_01_JLYSJ', @level2type=N'COLUMN',@level2name=N'JLZYXQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_01_JLYSJ', @level2type=N'COLUMN',@level2name=N'XL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ְ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_01_JLYSJ', @level2type=N'COLUMN',@level2name=N'ZC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Уʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_01_JLYSJ', @level2type=N'COLUMN',@level2name=N'JXSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ϵ�绰' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_01_JLYSJ', @level2type=N'COLUMN',@level2name=N'LXDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'סַ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_01_JLYSJ', @level2type=N'COLUMN',@level2name=N'ZZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����ȼ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_01_JLYSJ', @level2type=N'COLUMN',@level2name=N'JSDJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ͥ��Աһ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_01_JLYSJ', @level2type=N'COLUMN',@level2name=N'JTCHYXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ͥ��Աһ��ϵ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_01_JLYSJ', @level2type=N'COLUMN',@level2name=N'JTCYYGX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ͥ��Աһ�Ա���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_01_JLYSJ', @level2type=N'COLUMN',@level2name=N'JTCYYXBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ͥ��Աһ��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_01_JLYSJ', @level2type=N'COLUMN',@level2name=N'JTCYYCSRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ͥ��Աһסַ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_01_JLYSJ', @level2type=N'COLUMN',@level2name=N'JTCYYZZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ͥ��Աһ��ϵ�绰' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_01_JLYSJ', @level2type=N'COLUMN',@level2name=N'JTCYYLXDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ͥ��Աһ���¹���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_01_JLYSJ', @level2type=N'COLUMN',@level2name=N'JTCYYCSGZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ͥ��Ա������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_01_JLYSJ', @level2type=N'COLUMN',@level2name=N'JTCYEXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ͥ��Ա����ϵ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_01_JLYSJ', @level2type=N'COLUMN',@level2name=N'JTCYEGX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ͥ��Ա���Ա���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_01_JLYSJ', @level2type=N'COLUMN',@level2name=N'JTCYEXBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ͥ��Ա����������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_01_JLYSJ', @level2type=N'COLUMN',@level2name=N'JTCYECSRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ͥ��Ա��סַ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_01_JLYSJ', @level2type=N'COLUMN',@level2name=N'JTCYEZZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ͥ��Ա����ϵ�绰' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_01_JLYSJ', @level2type=N'COLUMN',@level2name=N'JTCYELXDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ͥ��Ա�����¹���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_01_JLYSJ', @level2type=N'COLUMN',@level2name=N'JTCYECSGZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ԱΥ�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_02_JLYWJQK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_02_JLYWJQK', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_02_JLYWJQK', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ԱID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_02_JLYWJQK', @level2type=N'COLUMN',@level2name=N'JLYID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ͷ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_02_JLYWJQK', @level2type=N'COLUMN',@level2name=N'TSR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ͷ��ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_02_JLYWJQK', @level2type=N'COLUMN',@level2name=N'TSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ϵ�绰' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_02_JLYWJQK', @level2type=N'COLUMN',@level2name=N'LXDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ͷ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_02_JLYWJQK', @level2type=N'COLUMN',@level2name=N'TSNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_02_JLYWJQK', @level2type=N'COLUMN',@level2name=N'CLJG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_02_JLYWJQK', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����Ա��ȫ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_03_JLYAQQK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_03_JLYAQQK', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_03_JLYAQQK', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ԱID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_03_JLYAQQK', @level2type=N'COLUMN',@level2name=N'JLYID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'¼��ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_03_JLYAQQK', @level2type=N'COLUMN',@level2name=N'LRSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ȫ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_03_JLYAQQK', @level2type=N'COLUMN',@level2name=N'AQQK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_03_JLYAQQK', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����Ա���������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_04_JLYJCQK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_04_JLYJCQK', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_04_JLYJCQK', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ԱID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_04_JLYJCQK', @level2type=N'COLUMN',@level2name=N'JLYID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'¼��ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_04_JLYJCQK', @level2type=N'COLUMN',@level2name=N'LRSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_04_JLYJCQK', @level2type=N'COLUMN',@level2name=N'JCQK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_04_JLYJCQK', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧԱ���ݱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_03_01_XYSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_03_01_XYSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_03_01_XYSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_03_01_XYSJ', @level2type=N'COLUMN',@level2name=N'XM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���֤��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_03_01_XYSJ', @level2type=N'COLUMN',@level2name=N'SFZH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ա���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_03_01_XYSJ', @level2type=N'COLUMN',@level2name=N'XBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ϵ�绰' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_03_01_XYSJ', @level2type=N'COLUMN',@level2name=N'LXDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'סַ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_03_01_XYSJ', @level2type=N'COLUMN',@level2name=N'ZZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_03_01_XYSJ', @level2type=N'COLUMN',@level2name=N'BMSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ɷ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_03_01_XYSJ', @level2type=N'COLUMN',@level2name=N'SFQK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ѡ����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_03_01_XYSJ', @level2type=N'COLUMN',@level2name=N'SXCXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_03_01_XYSJ', @level2type=N'COLUMN',@level2name=N'ZJQK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������ԱID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_03_01_XYSJ', @level2type=N'COLUMN',@level2name=N'SZJLCID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������ԱID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_03_01_XYSJ', @level2type=N'COLUMN',@level2name=N'YJJLYID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ǰ״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_03_01_XYSJ', @level2type=N'COLUMN',@level2name=N'DQZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ҵʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_03_01_XYSJ', @level2type=N'COLUMN',@level2name=N'BYSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧԱ���Խ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_03_02_XYKSJG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_03_02_XYKSJG', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_03_02_XYKSJG', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧԱID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_03_02_XYKSJG', @level2type=N'COLUMN',@level2name=N'XYID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ŀ����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_03_02_XYKSJG', @level2type=N'COLUMN',@level2name=N'KMKSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���Խ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_03_02_XYKSJG', @level2type=N'COLUMN',@level2name=N'KSJG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧԱ�ط���Ϣ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_03_03_XYHFXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_03_03_XYHFXX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_03_03_XYHFXX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧԱID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_03_03_XYHFXX', @level2type=N'COLUMN',@level2name=N'XYID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ط�ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_03_03_XYHFXX', @level2type=N'COLUMN',@level2name=N'HFSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�طý��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_03_03_XYHFXX', @level2type=N'COLUMN',@level2name=N'HFJG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_03_03_XYHFXX', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ŀ���Ա�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_04_01_KMKS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_04_01_KMKS', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_04_01_KMKS', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ŀ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_04_01_KMKS', @level2type=N'COLUMN',@level2name=N'KMDM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_04_01_KMKS', @level2type=N'COLUMN',@level2name=N'KSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_04_01_KMKS', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����ͺ����ݱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_05_01_CLXH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_05_01_CLXH', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_05_01_CLXH', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����ͺ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_05_01_CLXH', @level2type=N'COLUMN',@level2name=N'CLXHMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_05_01_CLXH', @level2type=N'COLUMN',@level2name=N'BZ'
GO
