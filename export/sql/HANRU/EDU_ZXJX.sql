--�ռ�����EDU_ZXJX  ��������SqlBuilder0.1

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_01_01_KC')
            and   type = 'U')
   drop table EDU_ZXJX_01_01_KC
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_04_01_JCJBXX')
            and   type = 'U')
   drop table EDU_ZXJX_04_01_JCJBXX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_04_02_JCXYXX')
            and   type = 'U')
   drop table EDU_ZXJX_04_02_JCXYXX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_04_A03_JCLYJL')
            and   type = 'U')
   drop table EDU_ZXJX_04_A03_JCLYJL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_04_A05_JCFK')
            and   type = 'U')
   drop table EDU_ZXJX_04_A05_JCFK
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_04_A06_JCBF')
            and   type = 'U')
   drop table EDU_ZXJX_04_A06_JCBF
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_05_A01_KS')
            and   type = 'U')
   drop table EDU_ZXJX_05_A01_KS
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_05_A02_KSKM')
            and   type = 'U')
   drop table EDU_ZXJX_05_A02_KSKM
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_06_A01_MPJL')
            and   type = 'U')
   drop table EDU_ZXJX_06_A01_MPJL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_07_A01_CJFXPZ')
            and   type = 'U')
   drop table EDU_ZXJX_07_A01_CJFXPZ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_07_A02_CJFXPZXM')
            and   type = 'U')
   drop table EDU_ZXJX_07_A02_CJFXPZXM
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_08_A01_XXGCXPJPZ')
            and   type = 'U')
   drop table EDU_ZXJX_08_A01_XXGCXPJPZ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_08_A02_XXGCXPJJG')
            and   type = 'U')
   drop table EDU_ZXJX_08_A02_XXGCXPJJG
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_08_A03_XXGCXPJXMLX')
            and   type = 'U')
   drop table EDU_ZXJX_08_A03_XXGCXPJXMLX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_09_A01_TKSQSJ')
            and   type = 'U')
   drop table EDU_ZXJX_09_A01_TKSQSJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_10_A01_JSGCXPJJL')
            and   type = 'U')
   drop table EDU_ZXJX_10_A01_JSGCXPJJL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_10_A02_JSGCXPJXM')
            and   type = 'U')
   drop table EDU_ZXJX_10_A02_JSGCXPJXM
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_10_A03_JSMZSKS')
            and   type = 'U')
   drop table EDU_ZXJX_10_A03_JSMZSKS
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_11_A01_LWSJ')
            and   type = 'U')
   drop table EDU_ZXJX_11_A01_LWSJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_11_A02_KYHDSJ')
            and   type = 'U')
   drop table EDU_ZXJX_11_A02_KYHDSJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_11_A03_CPXXSJ')
            and   type = 'U')
   drop table EDU_ZXJX_11_A03_CPXXSJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_11_A04_KTSJ')
            and   type = 'U')
   drop table EDU_ZXJX_11_A04_KTSJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_11_A05_KTJDSJ')
            and   type = 'U')
   drop table EDU_ZXJX_11_A05_KTJDSJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_35_A01_TKXZ')
            and   type = 'U')
   drop table EDU_ZXJX_35_A01_TKXZ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_35_A02_GKKSQ')
            and   type = 'U')
   drop table EDU_ZXJX_35_A02_GKKSQ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_36_A01_JSQJLX')
            and   type = 'U')
   drop table EDU_ZXJX_36_A01_JSQJLX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_36_A02_DKLX')
            and   type = 'U')
   drop table EDU_ZXJX_36_A02_DKLX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_36_A03_JSQJXX')
            and   type = 'U')
   drop table EDU_ZXJX_36_A03_JSQJXX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_36_A04_XPKLB')
            and   type = 'U')
   drop table EDU_ZXJX_36_A04_XPKLB
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_50_A01_XXKCLB')
            and   type = 'U')
   drop table EDU_ZXJX_50_A01_XXKCLB
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_50_A02_KKSJ')
            and   type = 'U')
   drop table EDU_ZXJX_50_A02_KKSJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_50_A03_JXBSJ')
            and   type = 'U')
   drop table EDU_ZXJX_50_A03_JXBSJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_50_A04_XSXKJL')
            and   type = 'U')
   drop table EDU_ZXJX_50_A04_XSXKJL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_50_A05_XSXXKCJ')
            and   type = 'U')
   drop table EDU_ZXJX_50_A05_XSXXKCJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_50_A06_KTDMB')
            and   type = 'U')
   drop table EDU_ZXJX_50_A06_KTDMB
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_52_A01_KSSJ')
            and   type = 'U')
   drop table EDU_ZXJX_52_A01_KSSJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_52_A02_KSSJAP')
            and   type = 'U')
   drop table EDU_ZXJX_52_A02_KSSJAP
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_52_A03_KSDD')
            and   type = 'U')
   drop table EDU_ZXJX_52_A03_KSDD
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_52_A04_CKXS')
            and   type = 'U')
   drop table EDU_ZXJX_52_A04_CKXS
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_52_A05_JKAP')
            and   type = 'U')
   drop table EDU_ZXJX_52_A05_JKAP
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_53_A01_XFZKC')
            and   type = 'U')
   drop table EDU_ZXJX_53_A01_XFZKC
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_53_A02_XFZKKSJ')
            and   type = 'U')
   drop table EDU_ZXJX_53_A02_XFZKKSJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_53_A11_XFZXQJXJH')
            and   type = 'U')
   drop table EDU_ZXJX_53_A11_XFZXQJXJH
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_53_A12_XFZBXKCQD')
            and   type = 'U')
   drop table EDU_ZXJX_53_A12_XFZBXKCQD
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_53_A13_XFZXXKCQD')
            and   type = 'U')
   drop table EDU_ZXJX_53_A13_XFZXXKCQD
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_53_A20_XFZXK')
            and   type = 'U')
   drop table EDU_ZXJX_53_A20_XFZXK
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_53_A21_XFZJXBSJ')
            and   type = 'U')
   drop table EDU_ZXJX_53_A21_XFZJXBSJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_53_A22_XSXFZXKJL')
            and   type = 'U')
   drop table EDU_ZXJX_53_A22_XSXFZXKJL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_53_A23_XFZECXKXS')
            and   type = 'U')
   drop table EDU_ZXJX_53_A23_XFZECXKXS
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_53_A24_XFZKTNR')
            and   type = 'U')
   drop table EDU_ZXJX_53_A24_XFZKTNR
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_53_A25_XFZKTJLXM')
            and   type = 'U')
   drop table EDU_ZXJX_53_A25_XFZKTJLXM
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_53_A26_XFZKTJLJG')
            and   type = 'U')
   drop table EDU_ZXJX_53_A26_XFZKTJLJG
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_53_A27_XFZZYNR')
            and   type = 'U')
   drop table EDU_ZXJX_53_A27_XFZZYNR
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_53_A28_XFZZYJLXM')
            and   type = 'U')
   drop table EDU_ZXJX_53_A28_XFZZYJLXM
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_53_A29_XFZZYJLJG')
            and   type = 'U')
   drop table EDU_ZXJX_53_A29_XFZZYJLJG
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_53_A41_XFZDYCS')
            and   type = 'U')
   drop table EDU_ZXJX_53_A41_XFZDYCS
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_53_A42_XFZDYCSCJ')
            and   type = 'U')
   drop table EDU_ZXJX_53_A42_XFZDYCSCJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_53_A46_BXKXXTKCJ')
            and   type = 'U')
   drop table EDU_ZXJX_53_A46_BXKXXTKCJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_53_A51_XFZKKGL')
            and   type = 'U')
   drop table EDU_ZXJX_53_A51_XFZKKGL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_54_A01_SCNRMB')
            and   type = 'U')
   drop table EDU_ZXJX_54_A01_SCNRMB
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_54_A02_SCXM')
            and   type = 'U')
   drop table EDU_ZXJX_54_A02_SCXM
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_54_A03_SCNR')
            and   type = 'U')
   drop table EDU_ZXJX_54_A03_SCNR
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_54_A04_XSSXPD')
            and   type = 'U')
   drop table EDU_ZXJX_54_A04_XSSXPD
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_54_A05_XSCJXX')
            and   type = 'U')
   drop table EDU_ZXJX_54_A05_XSCJXX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_55_A01_SFXM')
            and   type = 'U')
   drop table EDU_ZXJX_55_A01_SFXM
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_55_A02_SFJG')
            and   type = 'U')
   drop table EDU_ZXJX_55_A02_SFJG
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_55_A03_XSSFXMBZ')
            and   type = 'U')
   drop table EDU_ZXJX_55_A03_XSSFXMBZ
go
--�γ�������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_01_01_KC]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_01_01_KC](
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[KCH]  nvarchar(10)  NOT NULL,--�γ̺�
	[KCMC]  nvarchar(60)  NULL,--�γ�����
	[KCM]  nvarchar(2)  NOT NULL,--�γ���
	[KCDJM]  nvarchar(1)  NOT NULL,--�γ̵ȼ���
	[KCBM]  nvarchar(60)  NOT NULL,--�γ̱���
	[KCJJ]  text  NULL,--�γ̼��
	[KCYQ]  text  NULL,--�γ�Ҫ��
	[ZXS]  decimal(3, 0)  NULL,--��ѧʱ
	[ZHXS]  decimal(2, 0)  NULL,--��ѧʱ
	[ZXXS]  decimal(3, 0)  NULL,--��ѧѧʱ
	[SKFSM]  nvarchar(1)  NOT NULL,--�ڿη�ʽ��
	[JCBM]  text  NULL,--�̲ı���
	[CKSM]  text  NULL,--�ο���Ŀ
	[CDXZ]  int  NULL,--��������
	[SFZK]  nvarchar(1)  NULL,--�Ƿ�����
	[PLSX]  int  NOT NULL,--����˳��
CONSTRAINT [PK_EDU_ZXJX_01_01_KC] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[KCH] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�̲Ļ�����Ϣ��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_04_01_JCJBXX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_04_01_JCJBXX](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[JCDM]  nvarchar(13)  NOT NULL,--�̲Ĵ���
	[JCMC]  nvarchar(60)  NOT NULL,--�̲�����
	[CBH]  nvarchar(30)  NULL,--�����
	[DYZZ]  nvarchar(30)  NOT NULL,--��һ����
	[QTZZ]  nvarchar(90)  NULL,--��������
	[BC]  nvarchar(30)  NOT NULL,--���
	[YC]  nvarchar(2)  NULL,--ӡ��
	[JG]  decimal(8, 2)  NULL,--�۸�
	[CBS]  nvarchar(180)  NULL,--������
	[CBRQ]  nvarchar(8)  NULL,--��������
	[SFYLXC]  nvarchar(1)  NULL,--�Ƿ�����ϰ��
	[SFYJCJF]  nvarchar(1)  NULL,--�Ƿ��н̲ν̸�
	[NRJJ]  text  NULL,--���ݼ��
	[DQZT]  int  NOT NULL,--��ǰ״̬
	[ZDKC]  int  NOT NULL,--��Ϳ��
	[DQKC]  int  NOT NULL,--��ǰ���
CONSTRAINT [PK_EDU_ZXJX_04_01_JCJBXX] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�̲�ѡ����Ϣ��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_04_02_JCXYXX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_04_02_JCXYXX](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[XQID]  int  NOT NULL,--ѧ��ID
	[NJID]  nvarchar(10)  NOT NULL,--�꼶ID
	[KCID]  nvarchar(10)  NOT NULL,--�γ�ID
	[JCID]  int  NULL,--�̲�ID
	[XYSL]  int  NOT NULL,--ѡ������
	[SQRID]  int  NOT NULL,--������ID
	[SQSJ]  datetime  NOT NULL,--����ʱ��
	[SHZT]  int  NOT NULL,--���״̬
	[SHRID]  int  NOT NULL,--�����ID
	[SHSJ]  datetime  NOT NULL,--���ʱ��
	[SFRK]  nvarchar(1)  NOT NULL,--�Ƿ����
CONSTRAINT [PK_EDU_ZXJX_04_02_JCXYXX] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�̲����ü�¼��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_04_A03_JCLYJL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_04_A03_JCLYJL](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[XQID]  int  NOT NULL,--ѧ��ID
	[NJID]  nvarchar(10)  NOT NULL,--�꼶ID
	[BJID]  nvarchar(10)  NOT NULL,--�༶ID
	[JCID]  int  NOT NULL,--�̲�ID
	[LYSL]  int  NOT NULL,--��������
	[LYR]  nvarchar(36)  NOT NULL,--������
	[LYSJ]  datetime  NOT NULL,--����ʱ��
	[JSRID]  int  NOT NULL,--������ID
CONSTRAINT [PK_EDU_ZXJX_04_A03_JCLYJL] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�̲ķ�����
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_04_A05_JCFK]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_04_A05_JCFK](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[XQID]  int  NOT NULL,--ѧ��ID
	[JCID]  int  NULL,--�̲�ID
	[FKXX]  text  NOT NULL,--������Ϣ
	[FKSJ]  datetime  NOT NULL,--����ʱ��
	[FKJSID]  int  NOT NULL,--������ʦID
CONSTRAINT [PK_EDU_ZXJX_04_A05_JCFK] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�̲ı��ϱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_04_A06_JCBF]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_04_A06_JCBF](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[XQID]  int  NOT NULL,--ѧ��ID
	[JCID]  int  NULL,--�̲�ID
	[BFSL]  int  NOT NULL,--��������
	[BFYY]  text  NOT NULL,--����ԭ��
	[BFSJ]  datetime  NOT NULL,--����ʱ��
	[JSRID]  int  NOT NULL,--������ID
CONSTRAINT [PK_EDU_ZXJX_04_A06_JCBF] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�������ݱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_05_A01_KS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_05_A01_KS](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[XNID]  int  NOT NULL,--ѧ��
	[XQID]  int  NOT NULL,--ѧ��
	[KSMC]  nvarchar(60)  NOT NULL,--��������
	[KSKSSJ]  datetime  NOT NULL,--���Կ�ʼʱ��
	[KSJSSJ]  datetime  NOT NULL,--���Խ���ʱ��
	[DFKSSJ]  datetime  NOT NULL,--�Ƿֿ�ʼʱ��
	[DFJSSJ]  datetime  NOT NULL,--�Ƿֽ���ʱ��
	[DFKS]  int  NOT NULL,--�Ƿַ�ʽ
	[SFYXCX]  nvarchar(1)  NOT NULL,--�Ƿ������ѯ
	[SFXYPK]  nvarchar(1)  NOT NULL,--�Ƿ���Ҫ�ſ�
CONSTRAINT [PK_EDU_ZXJX_05_A01_KS] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--���Կ�Ŀ���ݱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_05_A02_KSKM]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_05_A02_KSKM](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[SSKSID]  int  NOT NULL,--��������ID
	[JSRKID]  int  NOT NULL,--��ʦ�οα��
	[KCMC]  nvarchar(60)  NOT NULL,--�γ�����
	[NJMC]  nvarchar(30)  NOT NULL,--�꼶����
	[BJMC]  nvarchar(20)  NOT NULL,--�༶����
	[CJZF]  decimal(5, 1)  NOT NULL,--�ɼ��ܷ�
CONSTRAINT [PK_EDU_ZXJX_05_A02_KSKM] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--������¼��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_06_A01_MPJL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_06_A01_MPJL](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[MPJS]  int  NOT NULL,--������ʦ
	[MPKC]  nvarchar(10)  NOT NULL,--�����γ�
	[MPXS]  int  NOT NULL,--����ѧ��
	[XNID]  int  NOT NULL,--ѧ��
	[XQID]  int  NOT NULL,--ѧ��
	[NJID]  nvarchar(10)  NOT NULL,--�꼶
	[BJID]  nvarchar(10)  NOT NULL,--�༶
	[MPJG]  int  NOT NULL,--�������
	[MPSJ]  datetime  NOT NULL,--����ʱ��
	[RRSJ]  datetime  NOT NULL,--¼��ʱ��
	[BZ]  text  NULL,--��ע
	[JSRKID]  int  NOT NULL,--��ʦ�οα��
	[XLZID]  int  NOT NULL,--У����ID
CONSTRAINT [PK_EDU_ZXJX_06_A01_MPJL] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�ɼ��������ñ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_07_A01_CJFXPZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_07_A01_CJFXPZ](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[SSKSID]  nvarchar(20)  NOT NULL,--��������
	[FXLX]  int  NOT NULL,--��������
	[BZ]  nvarchar(60)  NOT NULL,--��ע
	[NJQ]  int  NOT NULL,--�꼶ǰ
	[NJH]  int  NOT NULL,--�꼶��
CONSTRAINT [PK_EDU_ZXJX_07_A01_CJFXPZ] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�ɼ�����������Ŀ��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_07_A02_CJFXPZXM]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_07_A02_CJFXPZXM](
	[ID]  int  identity,--���
	[SSPZID]  int  NOT NULL,--��������ID
	[DCMC]  nvarchar(20)  NOT NULL,--����
	[SX]  decimal(6, 2)  NOT NULL,--����
	[XX]  decimal(6, 2)  NOT NULL,--����
	[PZQZ]  int  NOT NULL,--PֵȨ��
CONSTRAINT [PK_EDU_ZXJX_07_A02_CJFXPZXM] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ѧ��ѧϰ�������������ñ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_08_A01_XXGCXPJPZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_08_A01_XXGCXPJPZ](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[SSKCH]  text  NOT NULL,--�����γ̺�
	[PZMC]  nvarchar(80)  NOT NULL,--��������
	[PZLX]  nvarchar(30)  NOT NULL,--��������
	[FLM]  nvarchar(30)  NOT NULL,--������
CONSTRAINT [PK_EDU_ZXJX_08_A01_XXGCXPJPZ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ѧ��ѧϰ���������۽����
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_08_A02_XXGCXPJJG]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_08_A02_XXGCXPJJG](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[PZID]  int  NOT NULL,--��������ID
	[FS]  decimal(18, 1)  NOT NULL,--����
	[XLZID]  int  NOT NULL,--У����ID
	[XSXXID]  int  NOT NULL,--ѧ��ID
	[SSKCH]  nvarchar(10)  NOT NULL,--�����γ̺�
CONSTRAINT [PK_EDU_ZXJX_08_A02_XXGCXPJJG] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ѧ��ѧϰ������������Ŀ���ͱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_08_A03_XXGCXPJXMLX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_08_A03_XXGCXPJXMLX](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[LXMC]  nvarchar(80)  NOT NULL,--��������
	[PJKM]  text  NOT NULL,--���ۿ�Ŀ
CONSTRAINT [PK_EDU_ZXJX_08_A03_XXGCXPJXMLX] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�����������ݱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_09_A01_TKSQSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_09_A01_TKSQSJ](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[JSID]  int  NOT NULL,--��ʦ
	[KCID]  nvarchar(10)  NOT NULL,--�γ�
	[TKLXID]  int  NOT NULL,--��������ID
	[TKQQSZ]  int  NOT NULL,--����ǰ��ʼ��
	[TKQJSZ]  int  NOT NULL,--����ǰ������
	[TKQXQ]  int  NOT NULL,--����ǰ����
	[TKQSD]  int  NOT NULL,--����ǰʱ��
	[TKQJC]  int  NOT NULL,--����ǰ�ڴ�
	[TKHQSZ]  int  NOT NULL,--���κ���ʼ��
	[TKHJSZ]  int  NOT NULL,--���κ������
	[TKHXQ]  int  NOT NULL,--���κ�����
	[TKHSD]  int  NOT NULL,--���κ�ʱ��
	[TKHJC]  int  NOT NULL,--���κ�ڴ�
	[ZT]  int  NOT NULL,--��ǰ״̬
	[BZ]  text  NOT NULL,--��ע
	[SQSJ]  datetime  NOT NULL,--����ʱ��
	[JSJSID]  int  NOT NULL,--���ս�ʦID
CONSTRAINT [PK_EDU_ZXJX_09_A01_TKSQSJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--��ʦ���������ۼ�¼��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_10_A01_JSGCXPJJL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_10_A01_JSGCXPJJL](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[XQID]  int  NOT NULL,--ѧ��
	[XLZID]  int  NOT NULL,--������
	[JSID]  int  NOT NULL,--��ʦ
	[PJXMID]  int  NOT NULL,--������Ŀ
	[KHF]  decimal(8, 3)  NOT NULL,--���˷�
	[FLM]  decimal(8, 3)  NOT NULL,--�ɼ�
	[LRSJ]  datetime  NOT NULL,--¼��ʱ��
CONSTRAINT [PK_EDU_ZXJX_10_A01_JSGCXPJJL] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--��ʦ���������ۿ�����Ŀ��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_10_A02_JSGCXPJXM]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_10_A02_JSGCXPJXM](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[XMMC]  nvarchar(36)  NOT NULL,--��Ŀ����
	[DWMC]  nvarchar(36)  NOT NULL,--��λ
	[ZGF]  decimal(8, 3)  NOT NULL,--������߷�
	[QZ]  decimal(8, 3)  NOT NULL,--Ȩ��
	[SFTJ]  int  NOT NULL,--�Ƿ�ͳ��
	[SJLY]  int  NOT NULL,--������Դ
CONSTRAINT [PK_EDU_ZXJX_10_A02_JSGCXPJXM] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--��ʦÿ���Ͽ�����
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_10_A03_JSMZSKS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_10_A03_JSMZSKS](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[JSID]  int  NOT NULL,--��ʦID
	[XLZID]  int  NOT NULL,--У����ID
	[JSRKID]  int  NOT NULL,--��ʦ�ο�ID
	[KCH]  nvarchar(10)  NOT NULL,--�γ̺�
	[SKJS]  int  NOT NULL,--�Ͽν���
CONSTRAINT [PK_EDU_ZXJX_10_A03_JSMZSKS] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�������ݱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_11_A01_LWSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_11_A01_LWSJ](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[XNID]  int  NOT NULL,--ѧ��ID
	[XQID]  int  NOT NULL,--ѧ��ID
	[LWMC]  nvarchar(100)  NOT NULL,--��������
	[LWZY]  nvarchar(100)  NOT NULL,--����ժҪ
	[LWNR]  text  NOT NULL,--��������
	[SCJSID]  int  NOT NULL,--�ϴ���ʦID
	[SCSJ]  datetime  NOT NULL,--�ϴ�ʱ��
CONSTRAINT [PK_EDU_ZXJX_11_A01_LWSJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--���л���ݱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_11_A02_KYHDSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_11_A02_KYHDSJ](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[XNID]  int  NOT NULL,--ѧ��ID
	[XQID]  int  NOT NULL,--ѧ��ID
	[HDMC]  nvarchar(50)  NOT NULL,--�����
	[HDNR]  text  NOT NULL,--�����
	[SFFB]  nvarchar(1)  NOT NULL,--�Ƿ񷢲�
	[SCJSID]  int  NOT NULL,--�ϴ���ʦID
	[SCSJ]  datetime  NOT NULL,--�ϴ�ʱ��
CONSTRAINT [PK_EDU_ZXJX_11_A02_KYHDSJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--������Ϣ���ݱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_11_A03_CPXXSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_11_A03_CPXXSJ](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[XNID]  int  NOT NULL,--ѧ��ID
	[XQID]  int  NOT NULL,--ѧ��ID
	[XXMC]  nvarchar(50)  NOT NULL,--��Ϣ����
	[XXNR]  text  NOT NULL,--��Ϣ����
	[SFFB]  nvarchar(1)  NOT NULL,--�Ƿ񷢲�
	[SCJSID]  int  NOT NULL,--�ϴ���ʦID
	[SCSJ]  datetime  NOT NULL,--�ϴ�ʱ��
CONSTRAINT [PK_EDU_ZXJX_11_A03_CPXXSJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�������ݱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_11_A04_KTSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_11_A04_KTSJ](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[XNID]  int  NOT NULL,--ѧ��ID
	[XQID]  int  NOT NULL,--ѧ��ID
	[KTMC]  nvarchar(50)  NOT NULL,--��������
	[KTZT]  nvarchar(200)  NOT NULL,--��������
	[KTNR]  text  NOT NULL,--��������
	[SQJSID]  int  NOT NULL,--�����ʦID
	[SQSJ]  datetime  NOT NULL,--����ʱ��
	[SHZT]  int  NOT NULL,--���״̬
	[SHJSID]  int  NOT NULL,--��˽�ʦID
	[SHSJ]  datetime  NOT NULL,--���ʱ��
	[JXZT]  int  NOT NULL,--����״̬
	[JXSJ]  datetime  NOT NULL,--����ʱ��
CONSTRAINT [PK_EDU_ZXJX_11_A04_KTSJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--����׶����ݱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_11_A05_KTJDSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_11_A05_KTJDSJ](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[KTID]  int  NOT NULL,--����ID
	[JDMC]  nvarchar(50)  NOT NULL,--�׶�����
	[JDGZNR]  text  NOT NULL,--�׶ι�������
	[SCSJ]  datetime  NOT NULL,--�ϴ�ʱ��
CONSTRAINT [PK_EDU_ZXJX_11_A05_KTJDSJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--����С��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_35_A01_TKXZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_35_A01_TKXZ](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[XZMC]  nvarchar(100)  NOT NULL,--С������
	[XZCY]  text  NOT NULL,--С���Ա
	[XZCYMC]  text  NOT NULL,--С���Ա����
CONSTRAINT [PK_EDU_ZXJX_35_A01_TKXZ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--����������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_35_A02_GKKSQ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_35_A02_GKKSQ](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[KCMC]  nvarchar(100)  NOT NULL,--�γ�����
	[SKSJ]  datetime  NOT NULL,--�Ͽ�ʱ��
	[SKDD]  nvarchar(100)  NOT NULL,--�Ͽεص�
	[KCJJ]  text  NOT NULL,--�γ̼��
	[TKXZID]  int  NOT NULL,--����С��ID
	[SHZT]  int  NOT NULL,--���״̬
	[SFGS]  int  NOT NULL,--�Ƿ�ʾ
	[SQRID]  int  NOT NULL,--������ID
	[SHRID]  nvarchar(20)  NOT NULL,--�����ID
CONSTRAINT [PK_EDU_ZXJX_35_A02_GKKSQ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--��ʦ������ͱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_36_A01_JSQJLX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_36_A01_JSQJLX](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[LXMC]  nvarchar(50)  NOT NULL,--��������
	[BZ]  text  NOT NULL,--��ע
	[SFCC]  int  NOT NULL,--�Ƿ����
CONSTRAINT [PK_EDU_ZXJX_36_A01_JSQJLX] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�������ͱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_36_A02_DKLX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_36_A02_DKLX](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[LXMC]  nvarchar(50)  NOT NULL,--��������
	[BZ]  text  NOT NULL,--��ע
CONSTRAINT [PK_EDU_ZXJX_36_A02_DKLX] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--��ʦ�����Ϣ��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_36_A03_JSQJXX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_36_A03_JSQJXX](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[QJJSID]  int  NOT NULL,--��ٽ�ʦID
	[JSQJLXID]  int  NOT NULL,--��ʦ�������ID
	[QJKSSJ]  datetime  NOT NULL,--��ٿ�ʼʱ��
	[QJJSSJ]  datetime  NOT NULL,--��ٽ���ʱ��
	[CLZT]  int  NOT NULL,--����״̬
	[KCCLFS]  int  NOT NULL,--�γ̴���ʽ
	[QJYY]  text  NOT NULL,--���ԭ��
	[SQSJ]  datetime  NOT NULL,--����ʱ��
	[BZ]  text  NOT NULL,--��ע
	[SHRID]  nvarchar(20)  NOT NULL,--�����ID
CONSTRAINT [PK_EDU_ZXJX_36_A03_JSQJXX] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--���ſ��б�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_36_A04_XPKLB]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_36_A04_XPKLB](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[JSQJXXID]  int  NOT NULL,--��ʦ�����Ϣ��ID
	[PKJGJLID]  int  NOT NULL,--�ſν����¼��ID
	[RQ]  datetime  NOT NULL,--����
	[CLZT]  int  NOT NULL,--����״̬
	[XPKJSID]  int  NOT NULL,--���ſν�ʦID
	[TJJSID]  int  NOT NULL,--�Ƽ���ʦID
	[DKJSID]  int  NOT NULL,--���ν�ʦID
	[DKLXID]  int  NOT NULL,--��������ID
	[PKSJ]  datetime  NOT NULL,--�ſ�ʱ��
	[QRSJ]  datetime  NOT NULL,--ȷ��ʱ��
	[PKRID]  nvarchar(20)  NOT NULL,--�ſ���ID
CONSTRAINT [PK_EDU_ZXJX_36_A04_XPKLB] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ѡ�޿γ�����
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_50_A01_XXKCLB]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_50_A01_XXKCLB](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[LBMC]  nvarchar(100)  NOT NULL,--�������
	[JJ]  text  NOT NULL,--���
CONSTRAINT [PK_EDU_ZXJX_50_A01_XXKCLB] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--����ʱ���
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_50_A02_KKSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_50_A02_KKSJ](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[SKSJ]  nvarchar(50)  NOT NULL,--�Ͽ�ʱ��
	[SDIDLB]  text  NOT NULL,--ʱ��ID�б�
	[SDMCLB]  text  NOT NULL,--ʱ�������б�
CONSTRAINT [PK_EDU_ZXJX_50_A02_KKSJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--��ѧ�����ݱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_50_A03_JXBSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_50_A03_JXBSJ](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[XXKCLBID]  int  NOT NULL,--ѡ�޿γ����ID
	[KCMC]  nvarchar(50)  NOT NULL,--�γ�����
	[KCJS]  text  NOT NULL,--�γ̽���
	[JXJH]  text  NOT NULL,--��ѧ�ƻ�
	[ZKS]  int  NOT NULL,--�ܿ�ʱ
	[XF]  decimal(5, 1)  NOT NULL,--ѧ��
	[XQID]  int  NOT NULL,--ѧ��ID
	[NJID]  nvarchar(10)  NOT NULL,--�꼶ID
	[DQZT]  int  NOT NULL,--��ǰ״̬
	[KKJSID]  int  NOT NULL,--���ν�ʦID
	[SKSJID]  int  NOT NULL,--�Ͽ�ʱ��ID
	[SKDD]  nvarchar(100)  NOT NULL,--�Ͽεص�
	[BJKRNRS]  int  NOT NULL,--�༶����������
	[ZDKBRS]  int  NOT NULL,--��Ϳ�������
CONSTRAINT [PK_EDU_ZXJX_50_A03_JXBSJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ѧ��ѡ�μ�¼��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_50_A04_XSXKJL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_50_A04_XSXKJL](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[XSID]  int  NOT NULL,--ѧ��ID
	[JXBID]  int  NOT NULL,--��ѧ��ID
CONSTRAINT [PK_EDU_ZXJX_50_A04_XSXKJL] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ѧ��ѡ�޿γɼ���
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_50_A05_XSXXKCJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_50_A05_XSXXKCJ](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[XSID]  int  NOT NULL,--ѧ��ID
	[JXBID]  int  NOT NULL,--��ѧ��ID
	[CJ]  decimal(5, 2)  NOT NULL,--�ɼ�
CONSTRAINT [PK_EDU_ZXJX_50_A05_XSXXKCJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--���õ�����
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_50_A06_KTDMB]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_50_A06_KTDMB](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[JXBID]  int  NOT NULL,--��ѧ��ID
	[XSID]  int  NOT NULL,--ѧ��ID
	[ZT]  int  NOT NULL,--״̬
	[SJ]  datetime  NOT NULL,--ʱ��
	[BZ]  nvarchar(100)  NOT NULL,--��ע
CONSTRAINT [PK_EDU_ZXJX_50_A06_KTDMB] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--����ʱ���
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_52_A01_KSSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_52_A01_KSSJ](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[KSID]  int  NOT NULL,--����ID
	[KSRQ]  datetime  NOT NULL,--��������
	[KSSJ]  nvarchar(50)  NOT NULL,--����ʱ��
	[BZ]  text  NOT NULL,--��ע
	[CCMC]  nvarchar(50)  NOT NULL,--��������
CONSTRAINT [PK_EDU_ZXJX_52_A01_KSSJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--����ʱ�䰲�ű�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_52_A02_KSSJAP]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_52_A02_KSSJAP](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[KSID]  int  NOT NULL,--����ID
	[KSSJID]  int  NOT NULL,--����ʱ��ID
	[KCID]  nvarchar(10)  NOT NULL,--�γ�ID
CONSTRAINT [PK_EDU_ZXJX_52_A02_KSSJAP] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--���Եص��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_52_A03_KSDD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_52_A03_KSDD](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[KCMC]  nvarchar(50)  NOT NULL,--��������
	[ZDRNRS]  int  NOT NULL,--�����������
	[DD]  nvarchar(200)  NOT NULL,--�ص�
	[ZLRS]  int  NOT NULL,--��������
CONSTRAINT [PK_EDU_ZXJX_52_A03_KSDD] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�ο�ѧ����
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_52_A04_CKXS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_52_A04_CKXS](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[KSID]  int  NOT NULL,--����ID
	[XSID]  int  NOT NULL,--ѧ��ID
	[KCID]  int  NOT NULL,--����ID
	[ZKZH]  nvarchar(50)  NOT NULL,--׼��֤��
	[ZWH]  nvarchar(50)  NOT NULL,--��λ��
CONSTRAINT [PK_EDU_ZXJX_52_A04_CKXS] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�࿼���ű�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_52_A05_JKAP]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_52_A05_JKAP](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[KSID]  int  NOT NULL,--����ID
	[CCID]  int  NOT NULL,--����ID
	[JGID]  int  NOT NULL,--�̹�ID
	[KCID]  int  NOT NULL,--����ID
CONSTRAINT [PK_EDU_ZXJX_52_A05_JKAP] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ѧ���ƿγ̱�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_53_A01_XFZKC]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_53_A01_XFZKC](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[KCH]  nvarchar(10)  NOT NULL,--�γ̺�
	[KCLB]  nvarchar(60)  NULL,--�γ����
	[SSKM]  nvarchar(60)  NULL,--������Ŀ
	[KCMC]  nvarchar(60)  NULL,--�γ�����
	[SFSY]  int  NULL,--�Ƿ�ʹ��
	[PLSX]  int  NOT NULL,--����˳��
CONSTRAINT [PK_EDU_ZXJX_53_A01_XFZKC] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ѧ���ƿ���ʱ���
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_53_A02_XFZKKSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_53_A02_XFZKKSJ](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[SJMC]  nvarchar(50)  NOT NULL,--ʱ������
	[SDIDLB]  text  NOT NULL,--ʱ��ID�б�
	[SDMCLB]  text  NOT NULL,--ʱ�������б�
CONSTRAINT [PK_EDU_ZXJX_53_A02_XFZKKSJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ѧ����ѧ�ڽ�ѧ�ƻ���
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_53_A11_XFZXQJXJH]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_53_A11_XFZXQJXJH](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[XQID]  int  NOT NULL,--ѧ��ID
	[NJID]  nvarchar(10)  NOT NULL,--�꼶ID
	[BJLBID]  int  NOT NULL,--�༶���ID
	[BJID]  nvarchar(10)  NOT NULL,--�༶ID
	[KCLX]  int  NOT NULL,--�γ�����
CONSTRAINT [PK_EDU_ZXJX_53_A11_XFZXQJXJH] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ѧ���Ʊ��޿γ��嵥��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_53_A12_XFZBXKCQD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_53_A12_XFZBXKCQD](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[JXJHID]  int  NOT NULL,--��ѧ�ƻ�ID
	[KCID]  int  NOT NULL,--�γ�ID
	[XF]  decimal(3, 1)  NOT NULL,--ѧ��
CONSTRAINT [PK_EDU_ZXJX_53_A12_XFZBXKCQD] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ѧ������ѡ�γ��嵥��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_53_A13_XFZXXKCQD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_53_A13_XFZXXKCQD](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[JXJHID]  int  NOT NULL,--��ѧ�ƻ�ID
	[KCIDLB]  int  NOT NULL,--�γ�ID�б�
	[KCMCLB]  int  NOT NULL,--�γ������б�
	[XXMS]  int  NOT NULL,--��ѡ����
	[XF]  decimal(3, 1)  NOT NULL,--ѧ��
CONSTRAINT [PK_EDU_ZXJX_53_A13_XFZXXKCQD] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ѧ����ѡ�α�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_53_A20_XFZXK]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_53_A20_XFZXK](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[XQID]  int  NOT NULL,--ѧ��ID
	[XKMC]  nvarchar(50)  NOT NULL,--ѡ������
	[XKKSSJ]  datetime  NOT NULL,--ѡ�ο�ʼʱ��
	[XKJSSJ]  datetime  NOT NULL,--ѡ�ν���ʱ��
	[SFYXSYXSECXK]  int  NOT NULL,--�Ƿ���������ѧ������ѡ��
	[ECXKKSSJ]  datetime  NOT NULL,--����ѡ�ο�ʼʱ��
	[ECXKJSSJ]  datetime  NOT NULL,--����ѡ�ν���ʱ��
	[XKFFYLC]  nvarchar(200)  NOT NULL,--ѡ�η���������
	[KXKCLXIDLB]  nvarchar(200)  NOT NULL,--��ѡ�γ�����ID�б�
	[KXKCLXMCLB]  nvarchar(200)  NOT NULL,--��ѡ�γ����������б�
	[XKBJIDLB]  text  NOT NULL,--ѡ�ΰ༶ID�б�
	[XSZDXKMS]  int  NOT NULL,--ѧ�����ѡ������
CONSTRAINT [PK_EDU_ZXJX_53_A20_XFZXK] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ѧ���ƽ�ѧ�����ݱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_53_A21_XFZJXBSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_53_A21_XFZJXBSJ](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[XQID]  int  NOT NULL,--ѧ��ID
	[ZRKJSID]  int  NOT NULL,--���ον�ʦID
	[FRKJSID]  int  NOT NULL,--���ον�ʦID
	[KCID]  int  NOT NULL,--�γ�ID
	[KKSJID]  int  NOT NULL,--����ʱ��ID
	[SKDD]  nvarchar(200)  NOT NULL,--�Ͽεص�
	[ZKS]  int  NOT NULL,--�ܿ�ʱ
	[BJKRNRS]  int  NOT NULL,--�༶����������
	[ZDKBRS]  int  NOT NULL,--��Ϳ�������
	[ZT]  int  NOT NULL,--״̬
	[BZ]  text  NOT NULL,--��ע
	[KCMC]  nvarchar(200)  NOT NULL,--�γ�����
	[SKBJIDLB]  text  NOT NULL,--�ڿΰ༶ID�б�
	[SKBJMCLB]  text  NOT NULL,--�ڿΰ༶�����б�
	[JXBLX]  int  NOT NULL,--��ѧ������
CONSTRAINT [PK_EDU_ZXJX_53_A21_XFZJXBSJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ѧ��ѧ����ѡ�μ�¼��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_53_A22_XSXFZXKJL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_53_A22_XSXFZXKJL](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[XSID]  int  NOT NULL,--ѧ��ID
	[XFZJXBID]  int  NOT NULL,--ѧ���ƽ�ѧ��ID
CONSTRAINT [PK_EDU_ZXJX_53_A22_XSXFZXKJL] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ѧ���ƶ���ѡ��ѧ����
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_53_A23_XFZECXKXS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_53_A23_XFZECXKXS](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[XKID]  int  NOT NULL,--ѡ��ID
	[XSID]  int  NOT NULL,--ѧ��ID
CONSTRAINT [PK_EDU_ZXJX_53_A23_XFZECXKXS] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ѧ���ƿ������ݱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_53_A24_XFZKTNR]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_53_A24_XFZKTNR](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[XFZJXBID]  int  NOT NULL,--ѧ���ƽ�ѧ��ID
	[KTNR]  text  NOT NULL,--��������
	[TJSJ]  datetime  NOT NULL,--���ʱ��
CONSTRAINT [PK_EDU_ZXJX_53_A24_XFZKTNR] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ѧ���ƿ��ü�¼��Ŀ��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_53_A25_XFZKTJLXM]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_53_A25_XFZKTJLXM](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[XMMC]  nvarchar(200)  NOT NULL,--��Ŀ����
	[SRLX]  int  NOT NULL,--��������
	[MRZ]  nvarchar(200)  NOT NULL,--Ĭ��ֵ
	[PLSX]  int  NOT NULL,--����˳��
CONSTRAINT [PK_EDU_ZXJX_53_A25_XFZKTJLXM] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ѧ���ƿ��ü�¼�����
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_53_A26_XFZKTJLJG]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_53_A26_XFZKTJLJG](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[KTNRID]  int  NOT NULL,--��������ID
	[XSID]  int  NOT NULL,--ѧ��ID
	[XMID]  int  NOT NULL,--��ĿID
	[JG]  nvarchar(200)  NOT NULL,--���
CONSTRAINT [PK_EDU_ZXJX_53_A26_XFZKTJLJG] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ѧ������ҵ���ݱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_53_A27_XFZZYNR]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_53_A27_XFZZYNR](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[XFZJXBID]  int  NOT NULL,--ѧ���ƽ�ѧ��ID
	[ZYNR]  text  NOT NULL,--��ҵ����
	[TJSJ]  datetime  NOT NULL,--���ʱ��
CONSTRAINT [PK_EDU_ZXJX_53_A27_XFZZYNR] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ѧ������ҵ��¼��Ŀ��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_53_A28_XFZZYJLXM]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_53_A28_XFZZYJLXM](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[XMMC]  nvarchar(200)  NOT NULL,--��Ŀ����
	[SRLX]  int  NOT NULL,--��������
	[MRZ]  nvarchar(200)  NOT NULL,--Ĭ��ֵ
	[PLSX]  int  NOT NULL,--����˳��
CONSTRAINT [PK_EDU_ZXJX_53_A28_XFZZYJLXM] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ѧ������ҵ��¼�����
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_53_A29_XFZZYJLJG]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_53_A29_XFZZYJLJG](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[ZYNRID]  int  NOT NULL,--��ҵ����ID
	[XSID]  int  NOT NULL,--ѧ��ID
	[XMID]  int  NOT NULL,--��ĿID
	[JG]  nvarchar(200)  NOT NULL,--���
CONSTRAINT [PK_EDU_ZXJX_53_A29_XFZZYJLJG] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ѧ���Ƶ�Ԫ���Ա�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_53_A41_XFZDYCS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_53_A41_XFZDYCS](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[XFZJXBID]  int  NOT NULL,--ѧ���ƽ�ѧ��ID
	[CSMC]  nvarchar(200)  NOT NULL,--��������
	[TJSJ]  datetime  NOT NULL,--���ʱ��
CONSTRAINT [PK_EDU_ZXJX_53_A41_XFZDYCS] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ѧ���Ƶ�Ԫ���Գɼ���
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_53_A42_XFZDYCSCJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_53_A42_XFZDYCSCJ](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[DYCSID]  int  NOT NULL,--��Ԫ����ID
	[XSID]  int  NOT NULL,--ѧ��ID
	[CJ]  decimal(5, 1)  NOT NULL,--�ɼ�
CONSTRAINT [PK_EDU_ZXJX_53_A42_XFZDYCSCJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--���޿�ѧУͳ���ɼ���
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_53_A46_BXKXXTKCJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_53_A46_BXKXXTKCJ](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[XFZJXBID]  int  NOT NULL,--ѧ���ƽ�ѧ��ID
	[XSID]  int  NOT NULL,--ѧ��ID
	[TKLX]  int  NOT NULL,--ͳ������
	[CJ]  decimal(5, 1)  NOT NULL,--�ɼ�
CONSTRAINT [PK_EDU_ZXJX_53_A46_BXKXXTKCJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ѧ���ƿ��ι����
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_53_A51_XFZKKGL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_53_A51_XFZKKGL](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[KCMC]  nvarchar(100)  NOT NULL,--�γ�����
	[KKR]  nvarchar(200)  NOT NULL,--������
	[KCNR]  text  NOT NULL,--�γ�����
	[HJQK]  text  NOT NULL,--�����
CONSTRAINT [PK_EDU_ZXJX_53_A51_XFZKKGL] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�ֲ�����ģ���
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_54_A01_SCNRMB]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_54_A01_SCNRMB](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[MC]  nvarchar(100)  NOT NULL,--����
	[NR]  text  NOT NULL,--����
CONSTRAINT [PK_EDU_ZXJX_54_A01_SCNRMB] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�ֲ���Ŀ��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_54_A02_SCXM]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_54_A02_SCXM](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[XMMC]  nvarchar(100)  NOT NULL,--��Ŀ����
	[SFQFXQ]  int  NOT NULL,--�Ƿ�����ѧ��
	[PLSX]  int  NOT NULL,--����˳��
	[SCNRMBID]  int  NOT NULL,--�ֲ�����ģ��ID
CONSTRAINT [PK_EDU_ZXJX_54_A02_SCXM] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�ֲ����ݱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_54_A03_SCNR]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_54_A03_SCNR](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[BJID]  nvarchar(10)  NOT NULL,--�༶ID
	[XMID]  int  NOT NULL,--��ĿID
	[XNID]  int  NOT NULL,--ѧ��ID
	[XQID]  int  NOT NULL,--ѧ��ID
	[NR]  text  NOT NULL,--����
CONSTRAINT [PK_EDU_ZXJX_54_A03_SCNR] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ѧ��˼��Ʒ�±�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_54_A04_XSSXPD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_54_A04_XSSXPD](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[BJID]  nvarchar(10)  NOT NULL,--�༶ID
	[XSID]  int  NOT NULL,--ѧ��ID
	[XNID]  int  NOT NULL,--ѧ��ID
	[NR]  text  NOT NULL,--����
CONSTRAINT [PK_EDU_ZXJX_54_A04_XSSXPD] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ѧ��������Ϣ��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_54_A05_XSCJXX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_54_A05_XSCJXX](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[XQID]  int  NOT NULL,--ѧ��ID
	[XSID]  int  NOT NULL,--ѧ��ID
	[RQ]  datetime  NOT NULL,--����
	[FR]  nvarchar(200)  NOT NULL,--����
	[KS]  nvarchar(200)  NOT NULL,--����
	[PZ]  nvarchar(200)  NOT NULL,--Ƥ��
	[FX]  nvarchar(200)  NOT NULL,--��к
	[OT]  nvarchar(200)  NOT NULL,--Ż��
	[HD]  nvarchar(200)  NOT NULL,--����
	[JMCX]  nvarchar(200)  NOT NULL,--��Ĥ��Ѫ
	[QT]  nvarchar(200)  NOT NULL,--����
	[SFJZ]  nvarchar(200)  NOT NULL,--�Ƿ����
	[JBMC]  nvarchar(200)  NOT NULL,--��������
	[LG]  nvarchar(200)  NOT NULL,--����
	[HJ]  nvarchar(200)  NOT NULL,--�ؼ�
	[LXSJ]  nvarchar(200)  NOT NULL,--��Уʱ��
	[FXSJ]  nvarchar(200)  NOT NULL,--��ѧʱ��
	[QKTS]  nvarchar(200)  NOT NULL,--ȱ������
	[BZ]  text  NOT NULL,--��ע
CONSTRAINT [PK_EDU_ZXJX_54_A05_XSCJXX] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�շ���Ŀ��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_55_A01_SFXM]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_55_A01_SFXM](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[XQID]  int  NOT NULL,--ѧ��ID
	[FYMC]  nvarchar(100)  NOT NULL,--��������
	[YSJE]  decimal(10, 3)  NOT NULL,--Ӧ�ս��
	[PLSX]  int  NOT NULL,--����˳��
	[BZ]  text  NOT NULL,--��ע
CONSTRAINT [PK_EDU_ZXJX_55_A01_SFXM] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�շѽ����
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_55_A02_SFJG]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_55_A02_SFJG](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[SFXMID]  int  NOT NULL,--�շ���ĿID
	[XSID]  int  NOT NULL,--ѧ��ID
	[SJJE]  decimal(10, 3)  NOT NULL,--ʵ�ɽ��
	[JFZT]  int  NOT NULL,--�ɷ�״̬
CONSTRAINT [PK_EDU_ZXJX_55_A02_SFJG] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ѧ���շ���Ŀ��ע��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJX_55_A03_XSSFXMBZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJX_55_A03_XSSFXMBZ](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[XSID]  int  NOT NULL,--ѧ��ID
	[XQID]  int  NOT NULL,--ѧ��ID
	[BZ]  text  NOT NULL,--��ע
CONSTRAINT [PK_EDU_ZXJX_55_A03_XSSFXMBZ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--����Ϊ���ע�����
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�γ�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_01_01_KC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_01_01_KC', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�γ̺�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_01_01_KC', @level2type=N'COLUMN',@level2name=N'KCH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�γ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_01_01_KC', @level2type=N'COLUMN',@level2name=N'KCMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�γ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_01_01_KC', @level2type=N'COLUMN',@level2name=N'KCM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�γ̵ȼ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_01_01_KC', @level2type=N'COLUMN',@level2name=N'KCDJM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�γ̱���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_01_01_KC', @level2type=N'COLUMN',@level2name=N'KCBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�γ̼��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_01_01_KC', @level2type=N'COLUMN',@level2name=N'KCJJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�γ�Ҫ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_01_01_KC', @level2type=N'COLUMN',@level2name=N'KCYQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ѧʱ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_01_01_KC', @level2type=N'COLUMN',@level2name=N'ZXS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ѧʱ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_01_01_KC', @level2type=N'COLUMN',@level2name=N'ZHXS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ѧѧʱ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_01_01_KC', @level2type=N'COLUMN',@level2name=N'ZXXS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ڿη�ʽ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_01_01_KC', @level2type=N'COLUMN',@level2name=N'SKFSM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�̲ı���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_01_01_KC', @level2type=N'COLUMN',@level2name=N'JCBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ο���Ŀ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_01_01_KC', @level2type=N'COLUMN',@level2name=N'CKSM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_01_01_KC', @level2type=N'COLUMN',@level2name=N'CDXZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_01_01_KC', @level2type=N'COLUMN',@level2name=N'SFZK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����˳��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_01_01_KC', @level2type=N'COLUMN',@level2name=N'PLSX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�̲Ļ�����Ϣ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_04_01_JCJBXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_04_01_JCJBXX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_04_01_JCJBXX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�̲Ĵ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_04_01_JCJBXX', @level2type=N'COLUMN',@level2name=N'JCDM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�̲�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_04_01_JCJBXX', @level2type=N'COLUMN',@level2name=N'JCMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_04_01_JCJBXX', @level2type=N'COLUMN',@level2name=N'CBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��һ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_04_01_JCJBXX', @level2type=N'COLUMN',@level2name=N'DYZZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_04_01_JCJBXX', @level2type=N'COLUMN',@level2name=N'QTZZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_04_01_JCJBXX', @level2type=N'COLUMN',@level2name=N'BC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ӡ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_04_01_JCJBXX', @level2type=N'COLUMN',@level2name=N'YC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�۸�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_04_01_JCJBXX', @level2type=N'COLUMN',@level2name=N'JG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_04_01_JCJBXX', @level2type=N'COLUMN',@level2name=N'CBS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_04_01_JCJBXX', @level2type=N'COLUMN',@level2name=N'CBRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ�����ϰ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_04_01_JCJBXX', @level2type=N'COLUMN',@level2name=N'SFYLXC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ��н̲ν̸�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_04_01_JCJBXX', @level2type=N'COLUMN',@level2name=N'SFYJCJF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ݼ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_04_01_JCJBXX', @level2type=N'COLUMN',@level2name=N'NRJJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ǰ״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_04_01_JCJBXX', @level2type=N'COLUMN',@level2name=N'DQZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ϳ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_04_01_JCJBXX', @level2type=N'COLUMN',@level2name=N'ZDKC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ǰ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_04_01_JCJBXX', @level2type=N'COLUMN',@level2name=N'DQKC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�̲�ѡ����Ϣ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_04_02_JCXYXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_04_02_JCXYXX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_04_02_JCXYXX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_04_02_JCXYXX', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�꼶ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_04_02_JCXYXX', @level2type=N'COLUMN',@level2name=N'NJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�γ�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_04_02_JCXYXX', @level2type=N'COLUMN',@level2name=N'KCID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�̲�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_04_02_JCXYXX', @level2type=N'COLUMN',@level2name=N'JCID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѡ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_04_02_JCXYXX', @level2type=N'COLUMN',@level2name=N'XYSL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_04_02_JCXYXX', @level2type=N'COLUMN',@level2name=N'SQRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_04_02_JCXYXX', @level2type=N'COLUMN',@level2name=N'SQSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_04_02_JCXYXX', @level2type=N'COLUMN',@level2name=N'SHZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_04_02_JCXYXX', @level2type=N'COLUMN',@level2name=N'SHRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_04_02_JCXYXX', @level2type=N'COLUMN',@level2name=N'SHSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_04_02_JCXYXX', @level2type=N'COLUMN',@level2name=N'SFRK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�̲����ü�¼��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_04_A03_JCLYJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_04_A03_JCLYJL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_04_A03_JCLYJL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_04_A03_JCLYJL', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�꼶ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_04_A03_JCLYJL', @level2type=N'COLUMN',@level2name=N'NJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�༶ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_04_A03_JCLYJL', @level2type=N'COLUMN',@level2name=N'BJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�̲�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_04_A03_JCLYJL', @level2type=N'COLUMN',@level2name=N'JCID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_04_A03_JCLYJL', @level2type=N'COLUMN',@level2name=N'LYSL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_04_A03_JCLYJL', @level2type=N'COLUMN',@level2name=N'LYR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_04_A03_JCLYJL', @level2type=N'COLUMN',@level2name=N'LYSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_04_A03_JCLYJL', @level2type=N'COLUMN',@level2name=N'JSRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�̲ķ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_04_A05_JCFK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_04_A05_JCFK', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_04_A05_JCFK', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_04_A05_JCFK', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�̲�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_04_A05_JCFK', @level2type=N'COLUMN',@level2name=N'JCID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������Ϣ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_04_A05_JCFK', @level2type=N'COLUMN',@level2name=N'FKXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_04_A05_JCFK', @level2type=N'COLUMN',@level2name=N'FKSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ʦID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_04_A05_JCFK', @level2type=N'COLUMN',@level2name=N'FKJSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�̲ı��ϱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_04_A06_JCBF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_04_A06_JCBF', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_04_A06_JCBF', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_04_A06_JCBF', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�̲�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_04_A06_JCBF', @level2type=N'COLUMN',@level2name=N'JCID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_04_A06_JCBF', @level2type=N'COLUMN',@level2name=N'BFSL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ԭ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_04_A06_JCBF', @level2type=N'COLUMN',@level2name=N'BFYY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_04_A06_JCBF', @level2type=N'COLUMN',@level2name=N'BFSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_04_A06_JCBF', @level2type=N'COLUMN',@level2name=N'JSRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������ݱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_05_A01_KS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_05_A01_KS', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_05_A01_KS', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_05_A01_KS', @level2type=N'COLUMN',@level2name=N'XNID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_05_A01_KS', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_05_A01_KS', @level2type=N'COLUMN',@level2name=N'KSMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���Կ�ʼʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_05_A01_KS', @level2type=N'COLUMN',@level2name=N'KSKSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���Խ���ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_05_A01_KS', @level2type=N'COLUMN',@level2name=N'KSJSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿֿ�ʼʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_05_A01_KS', @level2type=N'COLUMN',@level2name=N'DFKSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿֽ���ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_05_A01_KS', @level2type=N'COLUMN',@level2name=N'DFJSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿַ�ʽ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_05_A01_KS', @level2type=N'COLUMN',@level2name=N'DFKS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ������ѯ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_05_A01_KS', @level2type=N'COLUMN',@level2name=N'SFYXCX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ���Ҫ�ſ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_05_A01_KS', @level2type=N'COLUMN',@level2name=N'SFXYPK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���Կ�Ŀ���ݱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_05_A02_KSKM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_05_A02_KSKM', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_05_A02_KSKM', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_05_A02_KSKM', @level2type=N'COLUMN',@level2name=N'SSKSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʦ�οα��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_05_A02_KSKM', @level2type=N'COLUMN',@level2name=N'JSRKID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�γ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_05_A02_KSKM', @level2type=N'COLUMN',@level2name=N'KCMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�꼶����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_05_A02_KSKM', @level2type=N'COLUMN',@level2name=N'NJMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�༶����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_05_A02_KSKM', @level2type=N'COLUMN',@level2name=N'BJMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ɼ��ܷ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_05_A02_KSKM', @level2type=N'COLUMN',@level2name=N'CJZF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������¼��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_06_A01_MPJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_06_A01_MPJL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_06_A01_MPJL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ʦ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_06_A01_MPJL', @level2type=N'COLUMN',@level2name=N'MPJS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����γ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_06_A01_MPJL', @level2type=N'COLUMN',@level2name=N'MPKC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ѧ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_06_A01_MPJL', @level2type=N'COLUMN',@level2name=N'MPXS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_06_A01_MPJL', @level2type=N'COLUMN',@level2name=N'XNID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_06_A01_MPJL', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�꼶' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_06_A01_MPJL', @level2type=N'COLUMN',@level2name=N'NJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�༶' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_06_A01_MPJL', @level2type=N'COLUMN',@level2name=N'BJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_06_A01_MPJL', @level2type=N'COLUMN',@level2name=N'MPJG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_06_A01_MPJL', @level2type=N'COLUMN',@level2name=N'MPSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'¼��ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_06_A01_MPJL', @level2type=N'COLUMN',@level2name=N'RRSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_06_A01_MPJL', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʦ�οα��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_06_A01_MPJL', @level2type=N'COLUMN',@level2name=N'JSRKID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'У����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_06_A01_MPJL', @level2type=N'COLUMN',@level2name=N'XLZID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ɼ��������ñ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_07_A01_CJFXPZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_07_A01_CJFXPZ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_07_A01_CJFXPZ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_07_A01_CJFXPZ', @level2type=N'COLUMN',@level2name=N'SSKSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_07_A01_CJFXPZ', @level2type=N'COLUMN',@level2name=N'FXLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_07_A01_CJFXPZ', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�꼶ǰ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_07_A01_CJFXPZ', @level2type=N'COLUMN',@level2name=N'NJQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�꼶��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_07_A01_CJFXPZ', @level2type=N'COLUMN',@level2name=N'NJH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ɼ�����������Ŀ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_07_A02_CJFXPZXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_07_A02_CJFXPZXM', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_07_A02_CJFXPZXM', @level2type=N'COLUMN',@level2name=N'SSPZID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_07_A02_CJFXPZXM', @level2type=N'COLUMN',@level2name=N'DCMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_07_A02_CJFXPZXM', @level2type=N'COLUMN',@level2name=N'SX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_07_A02_CJFXPZXM', @level2type=N'COLUMN',@level2name=N'XX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PֵȨ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_07_A02_CJFXPZXM', @level2type=N'COLUMN',@level2name=N'PZQZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ѧϰ�������������ñ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_08_A01_XXGCXPJPZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_08_A01_XXGCXPJPZ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_08_A01_XXGCXPJPZ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����γ̺�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_08_A01_XXGCXPJPZ', @level2type=N'COLUMN',@level2name=N'SSKCH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_08_A01_XXGCXPJPZ', @level2type=N'COLUMN',@level2name=N'PZMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_08_A01_XXGCXPJPZ', @level2type=N'COLUMN',@level2name=N'PZLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_08_A01_XXGCXPJPZ', @level2type=N'COLUMN',@level2name=N'FLM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ѧϰ���������۽����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_08_A02_XXGCXPJJG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_08_A02_XXGCXPJJG', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_08_A02_XXGCXPJJG', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_08_A02_XXGCXPJJG', @level2type=N'COLUMN',@level2name=N'PZID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_08_A02_XXGCXPJJG', @level2type=N'COLUMN',@level2name=N'FS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'У����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_08_A02_XXGCXPJJG', @level2type=N'COLUMN',@level2name=N'XLZID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_08_A02_XXGCXPJJG', @level2type=N'COLUMN',@level2name=N'XSXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����γ̺�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_08_A02_XXGCXPJJG', @level2type=N'COLUMN',@level2name=N'SSKCH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ѧϰ������������Ŀ���ͱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_08_A03_XXGCXPJXMLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_08_A03_XXGCXPJXMLX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_08_A03_XXGCXPJXMLX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_08_A03_XXGCXPJXMLX', @level2type=N'COLUMN',@level2name=N'LXMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ۿ�Ŀ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_08_A03_XXGCXPJXMLX', @level2type=N'COLUMN',@level2name=N'PJKM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����������ݱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_09_A01_TKSQSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_09_A01_TKSQSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_09_A01_TKSQSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʦ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_09_A01_TKSQSJ', @level2type=N'COLUMN',@level2name=N'JSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�γ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_09_A01_TKSQSJ', @level2type=N'COLUMN',@level2name=N'KCID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_09_A01_TKSQSJ', @level2type=N'COLUMN',@level2name=N'TKLXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ǰ��ʼ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_09_A01_TKSQSJ', @level2type=N'COLUMN',@level2name=N'TKQQSZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ǰ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_09_A01_TKSQSJ', @level2type=N'COLUMN',@level2name=N'TKQJSZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ǰ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_09_A01_TKSQSJ', @level2type=N'COLUMN',@level2name=N'TKQXQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ǰʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_09_A01_TKSQSJ', @level2type=N'COLUMN',@level2name=N'TKQSD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ǰ�ڴ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_09_A01_TKSQSJ', @level2type=N'COLUMN',@level2name=N'TKQJC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���κ���ʼ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_09_A01_TKSQSJ', @level2type=N'COLUMN',@level2name=N'TKHQSZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���κ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_09_A01_TKSQSJ', @level2type=N'COLUMN',@level2name=N'TKHJSZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���κ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_09_A01_TKSQSJ', @level2type=N'COLUMN',@level2name=N'TKHXQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���κ�ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_09_A01_TKSQSJ', @level2type=N'COLUMN',@level2name=N'TKHSD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���κ�ڴ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_09_A01_TKSQSJ', @level2type=N'COLUMN',@level2name=N'TKHJC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ǰ״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_09_A01_TKSQSJ', @level2type=N'COLUMN',@level2name=N'ZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_09_A01_TKSQSJ', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_09_A01_TKSQSJ', @level2type=N'COLUMN',@level2name=N'SQSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ս�ʦID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_09_A01_TKSQSJ', @level2type=N'COLUMN',@level2name=N'JSJSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʦ���������ۼ�¼��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_10_A01_JSGCXPJJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_10_A01_JSGCXPJJL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_10_A01_JSGCXPJJL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_10_A01_JSGCXPJJL', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_10_A01_JSGCXPJJL', @level2type=N'COLUMN',@level2name=N'XLZID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʦ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_10_A01_JSGCXPJJL', @level2type=N'COLUMN',@level2name=N'JSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������Ŀ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_10_A01_JSGCXPJJL', @level2type=N'COLUMN',@level2name=N'PJXMID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���˷�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_10_A01_JSGCXPJJL', @level2type=N'COLUMN',@level2name=N'KHF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ɼ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_10_A01_JSGCXPJJL', @level2type=N'COLUMN',@level2name=N'FLM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'¼��ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_10_A01_JSGCXPJJL', @level2type=N'COLUMN',@level2name=N'LRSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʦ���������ۿ�����Ŀ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_10_A02_JSGCXPJXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_10_A02_JSGCXPJXM', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_10_A02_JSGCXPJXM', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ŀ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_10_A02_JSGCXPJXM', @level2type=N'COLUMN',@level2name=N'XMMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��λ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_10_A02_JSGCXPJXM', @level2type=N'COLUMN',@level2name=N'DWMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������߷�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_10_A02_JSGCXPJXM', @level2type=N'COLUMN',@level2name=N'ZGF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ȩ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_10_A02_JSGCXPJXM', @level2type=N'COLUMN',@level2name=N'QZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ�ͳ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_10_A02_JSGCXPJXM', @level2type=N'COLUMN',@level2name=N'SFTJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������Դ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_10_A02_JSGCXPJXM', @level2type=N'COLUMN',@level2name=N'SJLY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʦÿ���Ͽ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_10_A03_JSMZSKS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_10_A03_JSMZSKS', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_10_A03_JSMZSKS', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʦID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_10_A03_JSMZSKS', @level2type=N'COLUMN',@level2name=N'JSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'У����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_10_A03_JSMZSKS', @level2type=N'COLUMN',@level2name=N'XLZID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʦ�ο�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_10_A03_JSMZSKS', @level2type=N'COLUMN',@level2name=N'JSRKID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�γ̺�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_10_A03_JSMZSKS', @level2type=N'COLUMN',@level2name=N'KCH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ͽν���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_10_A03_JSMZSKS', @level2type=N'COLUMN',@level2name=N'SKJS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������ݱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_11_A01_LWSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_11_A01_LWSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_11_A01_LWSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_11_A01_LWSJ', @level2type=N'COLUMN',@level2name=N'XNID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_11_A01_LWSJ', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_11_A01_LWSJ', @level2type=N'COLUMN',@level2name=N'LWMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ժҪ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_11_A01_LWSJ', @level2type=N'COLUMN',@level2name=N'LWZY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_11_A01_LWSJ', @level2type=N'COLUMN',@level2name=N'LWNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ϴ���ʦID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_11_A01_LWSJ', @level2type=N'COLUMN',@level2name=N'SCJSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ϴ�ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_11_A01_LWSJ', @level2type=N'COLUMN',@level2name=N'SCSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���л���ݱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_11_A02_KYHDSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_11_A02_KYHDSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_11_A02_KYHDSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_11_A02_KYHDSJ', @level2type=N'COLUMN',@level2name=N'XNID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_11_A02_KYHDSJ', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_11_A02_KYHDSJ', @level2type=N'COLUMN',@level2name=N'HDMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_11_A02_KYHDSJ', @level2type=N'COLUMN',@level2name=N'HDNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ񷢲�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_11_A02_KYHDSJ', @level2type=N'COLUMN',@level2name=N'SFFB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ϴ���ʦID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_11_A02_KYHDSJ', @level2type=N'COLUMN',@level2name=N'SCJSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ϴ�ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_11_A02_KYHDSJ', @level2type=N'COLUMN',@level2name=N'SCSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������Ϣ���ݱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_11_A03_CPXXSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_11_A03_CPXXSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_11_A03_CPXXSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_11_A03_CPXXSJ', @level2type=N'COLUMN',@level2name=N'XNID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_11_A03_CPXXSJ', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ϣ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_11_A03_CPXXSJ', @level2type=N'COLUMN',@level2name=N'XXMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ϣ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_11_A03_CPXXSJ', @level2type=N'COLUMN',@level2name=N'XXNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ񷢲�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_11_A03_CPXXSJ', @level2type=N'COLUMN',@level2name=N'SFFB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ϴ���ʦID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_11_A03_CPXXSJ', @level2type=N'COLUMN',@level2name=N'SCJSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ϴ�ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_11_A03_CPXXSJ', @level2type=N'COLUMN',@level2name=N'SCSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������ݱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_11_A04_KTSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_11_A04_KTSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_11_A04_KTSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_11_A04_KTSJ', @level2type=N'COLUMN',@level2name=N'XNID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_11_A04_KTSJ', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_11_A04_KTSJ', @level2type=N'COLUMN',@level2name=N'KTMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_11_A04_KTSJ', @level2type=N'COLUMN',@level2name=N'KTZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_11_A04_KTSJ', @level2type=N'COLUMN',@level2name=N'KTNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����ʦID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_11_A04_KTSJ', @level2type=N'COLUMN',@level2name=N'SQJSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_11_A04_KTSJ', @level2type=N'COLUMN',@level2name=N'SQSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_11_A04_KTSJ', @level2type=N'COLUMN',@level2name=N'SHZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��˽�ʦID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_11_A04_KTSJ', @level2type=N'COLUMN',@level2name=N'SHJSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_11_A04_KTSJ', @level2type=N'COLUMN',@level2name=N'SHSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_11_A04_KTSJ', @level2type=N'COLUMN',@level2name=N'JXZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_11_A04_KTSJ', @level2type=N'COLUMN',@level2name=N'JXSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����׶����ݱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_11_A05_KTJDSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_11_A05_KTJDSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_11_A05_KTJDSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_11_A05_KTJDSJ', @level2type=N'COLUMN',@level2name=N'KTID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�׶�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_11_A05_KTJDSJ', @level2type=N'COLUMN',@level2name=N'JDMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�׶ι�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_11_A05_KTJDSJ', @level2type=N'COLUMN',@level2name=N'JDGZNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ϴ�ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_11_A05_KTJDSJ', @level2type=N'COLUMN',@level2name=N'SCSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����С��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_35_A01_TKXZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_35_A01_TKXZ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_35_A01_TKXZ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'С������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_35_A01_TKXZ', @level2type=N'COLUMN',@level2name=N'XZMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'С���Ա' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_35_A01_TKXZ', @level2type=N'COLUMN',@level2name=N'XZCY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'С���Ա����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_35_A01_TKXZ', @level2type=N'COLUMN',@level2name=N'XZCYMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_35_A02_GKKSQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_35_A02_GKKSQ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_35_A02_GKKSQ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�γ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_35_A02_GKKSQ', @level2type=N'COLUMN',@level2name=N'KCMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ͽ�ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_35_A02_GKKSQ', @level2type=N'COLUMN',@level2name=N'SKSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ͽεص�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_35_A02_GKKSQ', @level2type=N'COLUMN',@level2name=N'SKDD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�γ̼��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_35_A02_GKKSQ', @level2type=N'COLUMN',@level2name=N'KCJJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����С��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_35_A02_GKKSQ', @level2type=N'COLUMN',@level2name=N'TKXZID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_35_A02_GKKSQ', @level2type=N'COLUMN',@level2name=N'SHZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ�ʾ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_35_A02_GKKSQ', @level2type=N'COLUMN',@level2name=N'SFGS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_35_A02_GKKSQ', @level2type=N'COLUMN',@level2name=N'SQRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_35_A02_GKKSQ', @level2type=N'COLUMN',@level2name=N'SHRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʦ������ͱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_36_A01_JSQJLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_36_A01_JSQJLX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_36_A01_JSQJLX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_36_A01_JSQJLX', @level2type=N'COLUMN',@level2name=N'LXMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_36_A01_JSQJLX', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_36_A01_JSQJLX', @level2type=N'COLUMN',@level2name=N'SFCC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������ͱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_36_A02_DKLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_36_A02_DKLX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_36_A02_DKLX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_36_A02_DKLX', @level2type=N'COLUMN',@level2name=N'LXMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_36_A02_DKLX', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʦ�����Ϣ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_36_A03_JSQJXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_36_A03_JSQJXX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_36_A03_JSQJXX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ٽ�ʦID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_36_A03_JSQJXX', @level2type=N'COLUMN',@level2name=N'QJJSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʦ�������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_36_A03_JSQJXX', @level2type=N'COLUMN',@level2name=N'JSQJLXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ٿ�ʼʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_36_A03_JSQJXX', @level2type=N'COLUMN',@level2name=N'QJKSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ٽ���ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_36_A03_JSQJXX', @level2type=N'COLUMN',@level2name=N'QJJSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_36_A03_JSQJXX', @level2type=N'COLUMN',@level2name=N'CLZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�γ̴���ʽ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_36_A03_JSQJXX', @level2type=N'COLUMN',@level2name=N'KCCLFS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ԭ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_36_A03_JSQJXX', @level2type=N'COLUMN',@level2name=N'QJYY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_36_A03_JSQJXX', @level2type=N'COLUMN',@level2name=N'SQSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_36_A03_JSQJXX', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_36_A03_JSQJXX', @level2type=N'COLUMN',@level2name=N'SHRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ſ��б�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_36_A04_XPKLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_36_A04_XPKLB', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_36_A04_XPKLB', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʦ�����Ϣ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_36_A04_XPKLB', @level2type=N'COLUMN',@level2name=N'JSQJXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ſν����¼��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_36_A04_XPKLB', @level2type=N'COLUMN',@level2name=N'PKJGJLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_36_A04_XPKLB', @level2type=N'COLUMN',@level2name=N'RQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_36_A04_XPKLB', @level2type=N'COLUMN',@level2name=N'CLZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ſν�ʦID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_36_A04_XPKLB', @level2type=N'COLUMN',@level2name=N'XPKJSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƽ���ʦID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_36_A04_XPKLB', @level2type=N'COLUMN',@level2name=N'TJJSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ν�ʦID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_36_A04_XPKLB', @level2type=N'COLUMN',@level2name=N'DKJSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_36_A04_XPKLB', @level2type=N'COLUMN',@level2name=N'DKLXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ſ�ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_36_A04_XPKLB', @level2type=N'COLUMN',@level2name=N'PKSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ȷ��ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_36_A04_XPKLB', @level2type=N'COLUMN',@level2name=N'QRSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ſ���ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_36_A04_XPKLB', @level2type=N'COLUMN',@level2name=N'PKRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѡ�޿γ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_50_A01_XXKCLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_50_A01_XXKCLB', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_50_A01_XXKCLB', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_50_A01_XXKCLB', @level2type=N'COLUMN',@level2name=N'LBMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_50_A01_XXKCLB', @level2type=N'COLUMN',@level2name=N'JJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_50_A02_KKSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_50_A02_KKSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_50_A02_KKSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ͽ�ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_50_A02_KKSJ', @level2type=N'COLUMN',@level2name=N'SKSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ʱ��ID�б�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_50_A02_KKSJ', @level2type=N'COLUMN',@level2name=N'SDIDLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ʱ�������б�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_50_A02_KKSJ', @level2type=N'COLUMN',@level2name=N'SDMCLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ѧ�����ݱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_50_A03_JXBSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_50_A03_JXBSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_50_A03_JXBSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѡ�޿γ����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_50_A03_JXBSJ', @level2type=N'COLUMN',@level2name=N'XXKCLBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�γ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_50_A03_JXBSJ', @level2type=N'COLUMN',@level2name=N'KCMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�γ̽���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_50_A03_JXBSJ', @level2type=N'COLUMN',@level2name=N'KCJS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ѧ�ƻ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_50_A03_JXBSJ', @level2type=N'COLUMN',@level2name=N'JXJH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ܿ�ʱ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_50_A03_JXBSJ', @level2type=N'COLUMN',@level2name=N'ZKS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_50_A03_JXBSJ', @level2type=N'COLUMN',@level2name=N'XF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_50_A03_JXBSJ', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�꼶ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_50_A03_JXBSJ', @level2type=N'COLUMN',@level2name=N'NJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ǰ״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_50_A03_JXBSJ', @level2type=N'COLUMN',@level2name=N'DQZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ν�ʦID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_50_A03_JXBSJ', @level2type=N'COLUMN',@level2name=N'KKJSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ͽ�ʱ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_50_A03_JXBSJ', @level2type=N'COLUMN',@level2name=N'SKSJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ͽεص�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_50_A03_JXBSJ', @level2type=N'COLUMN',@level2name=N'SKDD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�༶����������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_50_A03_JXBSJ', @level2type=N'COLUMN',@level2name=N'BJKRNRS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ϳ�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_50_A03_JXBSJ', @level2type=N'COLUMN',@level2name=N'ZDKBRS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ѡ�μ�¼��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_50_A04_XSXKJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_50_A04_XSXKJL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_50_A04_XSXKJL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_50_A04_XSXKJL', @level2type=N'COLUMN',@level2name=N'XSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_50_A04_XSXKJL', @level2type=N'COLUMN',@level2name=N'JXBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ѡ�޿γɼ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_50_A05_XSXXKCJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_50_A05_XSXXKCJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_50_A05_XSXXKCJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_50_A05_XSXXKCJ', @level2type=N'COLUMN',@level2name=N'XSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_50_A05_XSXXKCJ', @level2type=N'COLUMN',@level2name=N'JXBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ɼ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_50_A05_XSXXKCJ', @level2type=N'COLUMN',@level2name=N'CJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���õ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_50_A06_KTDMB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_50_A06_KTDMB', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_50_A06_KTDMB', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_50_A06_KTDMB', @level2type=N'COLUMN',@level2name=N'JXBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_50_A06_KTDMB', @level2type=N'COLUMN',@level2name=N'XSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_50_A06_KTDMB', @level2type=N'COLUMN',@level2name=N'ZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_50_A06_KTDMB', @level2type=N'COLUMN',@level2name=N'SJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_50_A06_KTDMB', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_52_A01_KSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_52_A01_KSSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_52_A01_KSSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_52_A01_KSSJ', @level2type=N'COLUMN',@level2name=N'KSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_52_A01_KSSJ', @level2type=N'COLUMN',@level2name=N'KSRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_52_A01_KSSJ', @level2type=N'COLUMN',@level2name=N'KSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_52_A01_KSSJ', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_52_A01_KSSJ', @level2type=N'COLUMN',@level2name=N'CCMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ�䰲�ű�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_52_A02_KSSJAP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_52_A02_KSSJAP', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_52_A02_KSSJAP', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_52_A02_KSSJAP', @level2type=N'COLUMN',@level2name=N'KSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_52_A02_KSSJAP', @level2type=N'COLUMN',@level2name=N'KSSJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�γ�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_52_A02_KSSJAP', @level2type=N'COLUMN',@level2name=N'KCID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���Եص��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_52_A03_KSDD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_52_A03_KSDD', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_52_A03_KSDD', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_52_A03_KSDD', @level2type=N'COLUMN',@level2name=N'KCMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_52_A03_KSDD', @level2type=N'COLUMN',@level2name=N'ZDRNRS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ص�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_52_A03_KSDD', @level2type=N'COLUMN',@level2name=N'DD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_52_A03_KSDD', @level2type=N'COLUMN',@level2name=N'ZLRS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ο�ѧ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_52_A04_CKXS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_52_A04_CKXS', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_52_A04_CKXS', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_52_A04_CKXS', @level2type=N'COLUMN',@level2name=N'KSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_52_A04_CKXS', @level2type=N'COLUMN',@level2name=N'XSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_52_A04_CKXS', @level2type=N'COLUMN',@level2name=N'KCID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'׼��֤��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_52_A04_CKXS', @level2type=N'COLUMN',@level2name=N'ZKZH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��λ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_52_A04_CKXS', @level2type=N'COLUMN',@level2name=N'ZWH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�࿼���ű�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_52_A05_JKAP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_52_A05_JKAP', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_52_A05_JKAP', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_52_A05_JKAP', @level2type=N'COLUMN',@level2name=N'KSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_52_A05_JKAP', @level2type=N'COLUMN',@level2name=N'CCID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�̹�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_52_A05_JKAP', @level2type=N'COLUMN',@level2name=N'JGID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_52_A05_JKAP', @level2type=N'COLUMN',@level2name=N'KCID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ���ƿγ̱�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A01_XFZKC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A01_XFZKC', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A01_XFZKC', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�γ̺�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A01_XFZKC', @level2type=N'COLUMN',@level2name=N'KCH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�γ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A01_XFZKC', @level2type=N'COLUMN',@level2name=N'KCLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������Ŀ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A01_XFZKC', @level2type=N'COLUMN',@level2name=N'SSKM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�γ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A01_XFZKC', @level2type=N'COLUMN',@level2name=N'KCMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ�ʹ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A01_XFZKC', @level2type=N'COLUMN',@level2name=N'SFSY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����˳��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A01_XFZKC', @level2type=N'COLUMN',@level2name=N'PLSX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ���ƿ���ʱ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A02_XFZKKSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A02_XFZKKSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A02_XFZKKSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ʱ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A02_XFZKKSJ', @level2type=N'COLUMN',@level2name=N'SJMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ʱ��ID�б�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A02_XFZKKSJ', @level2type=N'COLUMN',@level2name=N'SDIDLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ʱ�������б�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A02_XFZKKSJ', @level2type=N'COLUMN',@level2name=N'SDMCLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ����ѧ�ڽ�ѧ�ƻ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A11_XFZXQJXJH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A11_XFZXQJXJH', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A11_XFZXQJXJH', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A11_XFZXQJXJH', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�꼶ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A11_XFZXQJXJH', @level2type=N'COLUMN',@level2name=N'NJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�༶���ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A11_XFZXQJXJH', @level2type=N'COLUMN',@level2name=N'BJLBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�༶ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A11_XFZXQJXJH', @level2type=N'COLUMN',@level2name=N'BJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�γ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A11_XFZXQJXJH', @level2type=N'COLUMN',@level2name=N'KCLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ���Ʊ��޿γ��嵥��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A12_XFZBXKCQD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A12_XFZBXKCQD', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A12_XFZBXKCQD', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ѧ�ƻ�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A12_XFZBXKCQD', @level2type=N'COLUMN',@level2name=N'JXJHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�γ�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A12_XFZBXKCQD', @level2type=N'COLUMN',@level2name=N'KCID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A12_XFZBXKCQD', @level2type=N'COLUMN',@level2name=N'XF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ������ѡ�γ��嵥��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A13_XFZXXKCQD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A13_XFZXXKCQD', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A13_XFZXXKCQD', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ѧ�ƻ�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A13_XFZXXKCQD', @level2type=N'COLUMN',@level2name=N'JXJHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�γ�ID�б�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A13_XFZXXKCQD', @level2type=N'COLUMN',@level2name=N'KCIDLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�γ������б�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A13_XFZXXKCQD', @level2type=N'COLUMN',@level2name=N'KCMCLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ѡ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A13_XFZXXKCQD', @level2type=N'COLUMN',@level2name=N'XXMS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A13_XFZXXKCQD', @level2type=N'COLUMN',@level2name=N'XF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ����ѡ�α�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A20_XFZXK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A20_XFZXK', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A20_XFZXK', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A20_XFZXK', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѡ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A20_XFZXK', @level2type=N'COLUMN',@level2name=N'XKMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѡ�ο�ʼʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A20_XFZXK', @level2type=N'COLUMN',@level2name=N'XKKSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѡ�ν���ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A20_XFZXK', @level2type=N'COLUMN',@level2name=N'XKJSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ���������ѧ������ѡ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A20_XFZXK', @level2type=N'COLUMN',@level2name=N'SFYXSYXSECXK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ѡ�ο�ʼʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A20_XFZXK', @level2type=N'COLUMN',@level2name=N'ECXKKSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ѡ�ν���ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A20_XFZXK', @level2type=N'COLUMN',@level2name=N'ECXKJSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѡ�η���������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A20_XFZXK', @level2type=N'COLUMN',@level2name=N'XKFFYLC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ѡ�γ�����ID�б�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A20_XFZXK', @level2type=N'COLUMN',@level2name=N'KXKCLXIDLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ѡ�γ����������б�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A20_XFZXK', @level2type=N'COLUMN',@level2name=N'KXKCLXMCLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѡ�ΰ༶ID�б�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A20_XFZXK', @level2type=N'COLUMN',@level2name=N'XKBJIDLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ�����ѡ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A20_XFZXK', @level2type=N'COLUMN',@level2name=N'XSZDXKMS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ���ƽ�ѧ�����ݱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A21_XFZJXBSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A21_XFZJXBSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A21_XFZJXBSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A21_XFZJXBSJ', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ον�ʦID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A21_XFZJXBSJ', @level2type=N'COLUMN',@level2name=N'ZRKJSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ον�ʦID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A21_XFZJXBSJ', @level2type=N'COLUMN',@level2name=N'FRKJSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�γ�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A21_XFZJXBSJ', @level2type=N'COLUMN',@level2name=N'KCID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A21_XFZJXBSJ', @level2type=N'COLUMN',@level2name=N'KKSJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ͽεص�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A21_XFZJXBSJ', @level2type=N'COLUMN',@level2name=N'SKDD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ܿ�ʱ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A21_XFZJXBSJ', @level2type=N'COLUMN',@level2name=N'ZKS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�༶����������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A21_XFZJXBSJ', @level2type=N'COLUMN',@level2name=N'BJKRNRS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ϳ�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A21_XFZJXBSJ', @level2type=N'COLUMN',@level2name=N'ZDKBRS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A21_XFZJXBSJ', @level2type=N'COLUMN',@level2name=N'ZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A21_XFZJXBSJ', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�γ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A21_XFZJXBSJ', @level2type=N'COLUMN',@level2name=N'KCMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ڿΰ༶ID�б�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A21_XFZJXBSJ', @level2type=N'COLUMN',@level2name=N'SKBJIDLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ڿΰ༶�����б�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A21_XFZJXBSJ', @level2type=N'COLUMN',@level2name=N'SKBJMCLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ѧ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A21_XFZJXBSJ', @level2type=N'COLUMN',@level2name=N'JXBLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ѧ����ѡ�μ�¼��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A22_XSXFZXKJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A22_XSXFZXKJL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A22_XSXFZXKJL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A22_XSXFZXKJL', @level2type=N'COLUMN',@level2name=N'XSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ���ƽ�ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A22_XSXFZXKJL', @level2type=N'COLUMN',@level2name=N'XFZJXBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ���ƶ���ѡ��ѧ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A23_XFZECXKXS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A23_XFZECXKXS', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A23_XFZECXKXS', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѡ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A23_XFZECXKXS', @level2type=N'COLUMN',@level2name=N'XKID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A23_XFZECXKXS', @level2type=N'COLUMN',@level2name=N'XSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ���ƿ������ݱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A24_XFZKTNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A24_XFZKTNR', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A24_XFZKTNR', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ���ƽ�ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A24_XFZKTNR', @level2type=N'COLUMN',@level2name=N'XFZJXBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A24_XFZKTNR', @level2type=N'COLUMN',@level2name=N'KTNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A24_XFZKTNR', @level2type=N'COLUMN',@level2name=N'TJSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ���ƿ��ü�¼��Ŀ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A25_XFZKTJLXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A25_XFZKTJLXM', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A25_XFZKTJLXM', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ŀ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A25_XFZKTJLXM', @level2type=N'COLUMN',@level2name=N'XMMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A25_XFZKTJLXM', @level2type=N'COLUMN',@level2name=N'SRLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ĭ��ֵ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A25_XFZKTJLXM', @level2type=N'COLUMN',@level2name=N'MRZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����˳��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A25_XFZKTJLXM', @level2type=N'COLUMN',@level2name=N'PLSX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ���ƿ��ü�¼�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A26_XFZKTJLJG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A26_XFZKTJLJG', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A26_XFZKTJLJG', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A26_XFZKTJLJG', @level2type=N'COLUMN',@level2name=N'KTNRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A26_XFZKTJLJG', @level2type=N'COLUMN',@level2name=N'XSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ĿID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A26_XFZKTJLJG', @level2type=N'COLUMN',@level2name=N'XMID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A26_XFZKTJLJG', @level2type=N'COLUMN',@level2name=N'JG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ������ҵ���ݱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A27_XFZZYNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A27_XFZZYNR', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A27_XFZZYNR', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ���ƽ�ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A27_XFZZYNR', @level2type=N'COLUMN',@level2name=N'XFZJXBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ҵ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A27_XFZZYNR', @level2type=N'COLUMN',@level2name=N'ZYNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A27_XFZZYNR', @level2type=N'COLUMN',@level2name=N'TJSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ������ҵ��¼��Ŀ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A28_XFZZYJLXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A28_XFZZYJLXM', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A28_XFZZYJLXM', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ŀ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A28_XFZZYJLXM', @level2type=N'COLUMN',@level2name=N'XMMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A28_XFZZYJLXM', @level2type=N'COLUMN',@level2name=N'SRLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ĭ��ֵ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A28_XFZZYJLXM', @level2type=N'COLUMN',@level2name=N'MRZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����˳��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A28_XFZZYJLXM', @level2type=N'COLUMN',@level2name=N'PLSX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ������ҵ��¼�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A29_XFZZYJLJG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A29_XFZZYJLJG', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A29_XFZZYJLJG', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ҵ����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A29_XFZZYJLJG', @level2type=N'COLUMN',@level2name=N'ZYNRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A29_XFZZYJLJG', @level2type=N'COLUMN',@level2name=N'XSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ĿID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A29_XFZZYJLJG', @level2type=N'COLUMN',@level2name=N'XMID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A29_XFZZYJLJG', @level2type=N'COLUMN',@level2name=N'JG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ���Ƶ�Ԫ���Ա�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A41_XFZDYCS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A41_XFZDYCS', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A41_XFZDYCS', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ���ƽ�ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A41_XFZDYCS', @level2type=N'COLUMN',@level2name=N'XFZJXBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A41_XFZDYCS', @level2type=N'COLUMN',@level2name=N'CSMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A41_XFZDYCS', @level2type=N'COLUMN',@level2name=N'TJSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ���Ƶ�Ԫ���Գɼ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A42_XFZDYCSCJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A42_XFZDYCSCJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A42_XFZDYCSCJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ԫ����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A42_XFZDYCSCJ', @level2type=N'COLUMN',@level2name=N'DYCSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A42_XFZDYCSCJ', @level2type=N'COLUMN',@level2name=N'XSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ɼ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A42_XFZDYCSCJ', @level2type=N'COLUMN',@level2name=N'CJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���޿�ѧУͳ���ɼ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A46_BXKXXTKCJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A46_BXKXXTKCJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A46_BXKXXTKCJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ���ƽ�ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A46_BXKXXTKCJ', @level2type=N'COLUMN',@level2name=N'XFZJXBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A46_BXKXXTKCJ', @level2type=N'COLUMN',@level2name=N'XSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ͳ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A46_BXKXXTKCJ', @level2type=N'COLUMN',@level2name=N'TKLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ɼ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A46_BXKXXTKCJ', @level2type=N'COLUMN',@level2name=N'CJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ���ƿ��ι����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A51_XFZKKGL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A51_XFZKKGL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A51_XFZKKGL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�γ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A51_XFZKKGL', @level2type=N'COLUMN',@level2name=N'KCMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A51_XFZKKGL', @level2type=N'COLUMN',@level2name=N'KKR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�γ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A51_XFZKKGL', @level2type=N'COLUMN',@level2name=N'KCNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_53_A51_XFZKKGL', @level2type=N'COLUMN',@level2name=N'HJQK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ֲ�����ģ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_54_A01_SCNRMB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_54_A01_SCNRMB', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_54_A01_SCNRMB', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_54_A01_SCNRMB', @level2type=N'COLUMN',@level2name=N'MC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_54_A01_SCNRMB', @level2type=N'COLUMN',@level2name=N'NR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ֲ���Ŀ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_54_A02_SCXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_54_A02_SCXM', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_54_A02_SCXM', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ŀ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_54_A02_SCXM', @level2type=N'COLUMN',@level2name=N'XMMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ�����ѧ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_54_A02_SCXM', @level2type=N'COLUMN',@level2name=N'SFQFXQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����˳��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_54_A02_SCXM', @level2type=N'COLUMN',@level2name=N'PLSX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ֲ�����ģ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_54_A02_SCXM', @level2type=N'COLUMN',@level2name=N'SCNRMBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ֲ����ݱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_54_A03_SCNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_54_A03_SCNR', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_54_A03_SCNR', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�༶ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_54_A03_SCNR', @level2type=N'COLUMN',@level2name=N'BJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ĿID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_54_A03_SCNR', @level2type=N'COLUMN',@level2name=N'XMID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_54_A03_SCNR', @level2type=N'COLUMN',@level2name=N'XNID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_54_A03_SCNR', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_54_A03_SCNR', @level2type=N'COLUMN',@level2name=N'NR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��˼��Ʒ�±�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_54_A04_XSSXPD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_54_A04_XSSXPD', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_54_A04_XSSXPD', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�༶ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_54_A04_XSSXPD', @level2type=N'COLUMN',@level2name=N'BJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_54_A04_XSSXPD', @level2type=N'COLUMN',@level2name=N'XSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_54_A04_XSSXPD', @level2type=N'COLUMN',@level2name=N'XNID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_54_A04_XSSXPD', @level2type=N'COLUMN',@level2name=N'NR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��������Ϣ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_54_A05_XSCJXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_54_A05_XSCJXX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_54_A05_XSCJXX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_54_A05_XSCJXX', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_54_A05_XSCJXX', @level2type=N'COLUMN',@level2name=N'XSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_54_A05_XSCJXX', @level2type=N'COLUMN',@level2name=N'RQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_54_A05_XSCJXX', @level2type=N'COLUMN',@level2name=N'FR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_54_A05_XSCJXX', @level2type=N'COLUMN',@level2name=N'KS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ƥ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_54_A05_XSCJXX', @level2type=N'COLUMN',@level2name=N'PZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��к' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_54_A05_XSCJXX', @level2type=N'COLUMN',@level2name=N'FX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ż��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_54_A05_XSCJXX', @level2type=N'COLUMN',@level2name=N'OT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_54_A05_XSCJXX', @level2type=N'COLUMN',@level2name=N'HD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ĥ��Ѫ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_54_A05_XSCJXX', @level2type=N'COLUMN',@level2name=N'JMCX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_54_A05_XSCJXX', @level2type=N'COLUMN',@level2name=N'QT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_54_A05_XSCJXX', @level2type=N'COLUMN',@level2name=N'SFJZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_54_A05_XSCJXX', @level2type=N'COLUMN',@level2name=N'JBMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_54_A05_XSCJXX', @level2type=N'COLUMN',@level2name=N'LG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ؼ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_54_A05_XSCJXX', @level2type=N'COLUMN',@level2name=N'HJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Уʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_54_A05_XSCJXX', @level2type=N'COLUMN',@level2name=N'LXSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ѧʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_54_A05_XSCJXX', @level2type=N'COLUMN',@level2name=N'FXSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ȱ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_54_A05_XSCJXX', @level2type=N'COLUMN',@level2name=N'QKTS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_54_A05_XSCJXX', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�շ���Ŀ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_55_A01_SFXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_55_A01_SFXM', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_55_A01_SFXM', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_55_A01_SFXM', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_55_A01_SFXM', @level2type=N'COLUMN',@level2name=N'FYMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ӧ�ս��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_55_A01_SFXM', @level2type=N'COLUMN',@level2name=N'YSJE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����˳��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_55_A01_SFXM', @level2type=N'COLUMN',@level2name=N'PLSX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_55_A01_SFXM', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�շѽ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_55_A02_SFJG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_55_A02_SFJG', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_55_A02_SFJG', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�շ���ĿID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_55_A02_SFJG', @level2type=N'COLUMN',@level2name=N'SFXMID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_55_A02_SFJG', @level2type=N'COLUMN',@level2name=N'XSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ʵ�ɽ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_55_A02_SFJG', @level2type=N'COLUMN',@level2name=N'SJJE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ɷ�״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_55_A02_SFJG', @level2type=N'COLUMN',@level2name=N'JFZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ���շ���Ŀ��ע��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_55_A03_XSSFXMBZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_55_A03_XSSFXMBZ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_55_A03_XSSFXMBZ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_55_A03_XSSFXMBZ', @level2type=N'COLUMN',@level2name=N'XSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_55_A03_XSSFXMBZ', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJX_55_A03_XSSFXMBZ', @level2type=N'COLUMN',@level2name=N'BZ'
GO
