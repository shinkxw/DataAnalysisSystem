--�ռ�����EDU_ZZXS  ��������SqlBuilder0.1

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZXS_01_01_XSXX')
            and   type = 'U')
   drop table EDU_ZZXS_01_01_XSXX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZXS_01_A01_XSXX')
            and   type = 'U')
   drop table EDU_ZZXS_01_A01_XSXX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZXS_02_01_XSJTXX')
            and   type = 'U')
   drop table EDU_ZZXS_02_01_XSJTXX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZXS_02_A01_XSLXR')
            and   type = 'U')
   drop table EDU_ZZXS_02_A01_XSLXR
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZXS_02_02_XSJTCY')
            and   type = 'U')
   drop table EDU_ZZXS_02_02_XSJTCY
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZXS_02_A02_XSJTJJ')
            and   type = 'U')
   drop table EDU_ZZXS_02_A02_XSJTJJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZXS_06_01_XSCJ')
            and   type = 'U')
   drop table EDU_ZZXS_06_01_XSCJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZXS_06_02_XSCJLX')
            and   type = 'U')
   drop table EDU_ZZXS_06_02_XSCJLX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZXS_07_01_XJSJ')
            and   type = 'U')
   drop table EDU_ZZXS_07_01_XJSJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZXS_07_02_XJYD')
            and   type = 'U')
   drop table EDU_ZZXS_07_02_XJYD
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZXS_07_03_XSZCXX')
            and   type = 'U')
   drop table EDU_ZZXS_07_03_XSZCXX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZXS_10_02_JXJSJ')
            and   type = 'U')
   drop table EDU_ZZXS_10_02_JXJSJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZXS_10_03_ZXJSJ')
            and   type = 'U')
   drop table EDU_ZZXS_10_03_ZXJSJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZXS_10_A12_XSHJXJ')
            and   type = 'U')
   drop table EDU_ZZXS_10_A12_XSHJXJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZXS_10_A13_XSHZXJ')
            and   type = 'U')
   drop table EDU_ZZXS_10_A13_XSHZXJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZXS_11_01_BYSJ')
            and   type = 'U')
   drop table EDU_ZZXS_11_01_BYSJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZXS_12_A01_STJBSJ')
            and   type = 'U')
   drop table EDU_ZZXS_12_A01_STJBSJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZXS_12_A02_STCY')
            and   type = 'U')
   drop table EDU_ZZXS_12_A02_STCY
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZXS_12_A03_STCJLX')
            and   type = 'U')
   drop table EDU_ZZXS_12_A03_STCJLX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZXS_12_A04_XSSTCJ')
            and   type = 'U')
   drop table EDU_ZZXS_12_A04_XSSTCJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZXS_14_A01_XSKHXM')
            and   type = 'U')
   drop table EDU_ZZXS_14_A01_XSKHXM
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZXS_14_A02_XSKHBSJ')
            and   type = 'U')
   drop table EDU_ZZXS_14_A02_XSKHBSJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZXS_14_A03_XSRCXWGFKHSJ')
            and   type = 'U')
   drop table EDU_ZZXS_14_A03_XSRCXWGFKHSJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZXS_14_A04_XSWWYTZQSJ')
            and   type = 'U')
   drop table EDU_ZZXS_14_A04_XSWWYTZQSJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZXS_14_A05_XSWWYTZQXM')
            and   type = 'U')
   drop table EDU_ZZXS_14_A05_XSWWYTZQXM
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZXS_14_A06_XSWWYTZQRYAP')
            and   type = 'U')
   drop table EDU_ZZXS_14_A06_XSWWYTZQRYAP
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZXS_15_A01_RYCH')
            and   type = 'U')
   drop table EDU_ZZXS_15_A01_RYCH
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZXS_15_A02_RYCHSQ')
            and   type = 'U')
   drop table EDU_ZZXS_15_A02_RYCHSQ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZXS_16_A01_PKSLX')
            and   type = 'U')
   drop table EDU_ZZXS_16_A01_PKSLX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZXS_16_A02_PKSXX')
            and   type = 'U')
   drop table EDU_ZZXS_16_A02_PKSXX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZXS_17_A01_TYXX')
            and   type = 'U')
   drop table EDU_ZZXS_17_A01_TYXX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZXS_17_A02_TFSJJL')
            and   type = 'U')
   drop table EDU_ZZXS_17_A02_TFSJJL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZXS_17_A03_RDJJTY')
            and   type = 'U')
   drop table EDU_ZZXS_17_A03_RDJJTY
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZXS_17_A04_TYSXHB')
            and   type = 'U')
   drop table EDU_ZZXS_17_A04_TYSXHB
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZXS_18_A01_WJLX')
            and   type = 'U')
   drop table EDU_ZZXS_18_A01_WJLX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZXS_18_A02_CFLX')
            and   type = 'U')
   drop table EDU_ZZXS_18_A02_CFLX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZXS_18_A03_JCCFBZ')
            and   type = 'U')
   drop table EDU_ZZXS_18_A03_JCCFBZ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZXS_18_A04_XSCFXX')
            and   type = 'U')
   drop table EDU_ZZXS_18_A04_XSCFXX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZXS_18_A05_JCCFSQ')
            and   type = 'U')
   drop table EDU_ZZXS_18_A05_JCCFSQ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZXS_18_A06_JCCFSQSHJL')
            and   type = 'U')
   drop table EDU_ZZXS_18_A06_JCCFSQSHJL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZXS_18_A07_BGMB')
            and   type = 'U')
   drop table EDU_ZZXS_18_A07_BGMB
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZXS_18_A08_BG')
            and   type = 'U')
   drop table EDU_ZZXS_18_A08_BG
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZXS_19_A01_BWSJ')
            and   type = 'U')
   drop table EDU_ZZXS_19_A01_BWSJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZXS_19_A02_BWCY')
            and   type = 'U')
   drop table EDU_ZZXS_19_A02_BWCY
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZXS_20_A01_DSSJ')
            and   type = 'U')
   drop table EDU_ZZXS_20_A01_DSSJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZXS_20_A02_XSXZDSJL')
            and   type = 'U')
   drop table EDU_ZZXS_20_A02_XSXZDSJL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZXS_21_A01_ZXBM')
            and   type = 'U')
   drop table EDU_ZZXS_21_A01_ZXBM
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZXS_22_A01_ZSGLCZXX')
            and   type = 'U')
   drop table EDU_ZZXS_22_A01_ZSGLCZXX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZXS_22_A02_ZSGLZSJH')
            and   type = 'U')
   drop table EDU_ZZXS_22_A02_ZSGLZSJH
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZXS_22_A03_ZSGLZSJHXD')
            and   type = 'U')
   drop table EDU_ZZXS_22_A03_ZSGLZSJHXD
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZXS_22_A04_ZSGLXSXX')
            and   type = 'U')
   drop table EDU_ZZXS_22_A04_ZSGLXSXX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZXS_22_A05_ZSGLJYZM')
            and   type = 'U')
   drop table EDU_ZZXS_22_A05_ZSGLJYZM
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZXS_25_A01_DYPJDL')
            and   type = 'U')
   drop table EDU_ZZXS_25_A01_DYPJDL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZXS_25_A02_DYPJXL')
            and   type = 'U')
   drop table EDU_ZZXS_25_A02_DYPJXL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZXS_25_A03_DYPJBJPFJL')
            and   type = 'U')
   drop table EDU_ZZXS_25_A03_DYPJBJPFJL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZXS_25_A04_DYPJXSPFJL')
            and   type = 'U')
   drop table EDU_ZZXS_25_A04_DYPJXSPFJL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZXS_25_A05_DYPJBJDD')
            and   type = 'U')
   drop table EDU_ZZXS_25_A05_DYPJBJDD
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZXS_25_A06_DYPJBJMZHZ')
            and   type = 'U')
   drop table EDU_ZZXS_25_A06_DYPJBJMZHZ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZXS_25_A07_DYPJBJMZDLZF')
            and   type = 'U')
   drop table EDU_ZZXS_25_A07_DYPJBJMZDLZF
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZXS_25_A08_DYPJXSMZHZ')
            and   type = 'U')
   drop table EDU_ZZXS_25_A08_DYPJXSMZHZ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZXS_25_A11_DYPJDXJL')
            and   type = 'U')
   drop table EDU_ZZXS_25_A11_DYPJDXJL
go
--ѧ����Ϣ���ݱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZXS_01_01_XSXX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZXS_01_01_XSXX](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[XH]  nvarchar(30)  NOT NULL,--ѧ��
	[XM]  nvarchar(36)  NOT NULL,--����
	[YWXM]  nvarchar(60)  NULL,--Ӣ������
	[XMPY]  nvarchar(60)  NOT NULL,--����ƴ��
	[CYM]  nvarchar(36)  NULL,--������
	[SFZJLXM]  nvarchar(1)  NOT NULL,--���֤��������
	[SFZJH]  nvarchar(20)  NOT NULL,--���֤����
	[XBM]  nvarchar(1)  NOT NULL,--�Ա���
	[XXM]  nvarchar(1)  NULL,--Ѫ����
	[CSRQ]  nvarchar(8)  NOT NULL,--��������
	[CSDM]  nvarchar(6)  NOT NULL,--��������
	[JG]  nvarchar(20)  NOT NULL,--����
	[MZM]  nvarchar(2)  NOT NULL,--������
	[HYZKM]  nvarchar(2)  NOT NULL,--����״����
	[XYZJM]  nvarchar(2)  NULL,--�����ڽ���
	[GATQWM]  nvarchar(2)  NULL,--�۰�̨������
	[JKZKM]  nvarchar(1)  NULL,--����״����
	[ZZMMM]  nvarchar(2)  NOT NULL,--������ò��
	[HKSZDXZQHM]  nvarchar(6)  NOT NULL,--�������ڵ�����������
	[HKLBM]  nvarchar(1)  NOT NULL,--���������
	[SFSLDRK]  nvarchar(1)  NOT NULL,--�Ƿ��������˿�
	[GJDQM]  nvarchar(3)  NULL,--����/����
	[TC]  text  NULL,--�س�
	[XSLXDH]  nvarchar(30)  NULL,--ѧ����ϵ�绰
	[WLDZ]  nvarchar(60)  NULL,--�����ַ
	[JSTXH]  nvarchar(40)  NULL,--��ʱͨѶ��
	[DZXX]  nvarchar(40)  NULL,--��������
	[ZP]  nvarchar(100)  NULL,--��Ƭ(·��)
	[RXXQID]  int  NOT NULL,--��ѧѧ��ID
	[NFCKH]  nvarchar(50)  NOT NULL,--NFC����
CONSTRAINT [PK_EDU_ZZXS_01_01_XSXX] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ѧ����չ���ݱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZXS_01_A01_XSXX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZXS_01_A01_XSXX](
	[XSXXID]  int  NOT NULL,--ѧ����Ϣ���ݱ�
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[ZYXXID]  int  NOT NULL,--רҵ������Ϣ
	[XNID]  int  NOT NULL,--ѧ��
	[ZZXQID]  int  NOT NULL,--ѧ�ڱ�
	[JTDZQH]  nvarchar(6)  NULL,--��ͥ��ַ������
	[JTXXDZ]  nvarchar(50)  NULL,--��ͥ��ϸ��ַ
	[HJXXDZ]  nvarchar(50)  NULL,--������ϸ��ַ
	[HJXZ]  nvarchar(1)  NULL,--�������ʴ���
	[BYJX]  nvarchar(1)  NULL,--���˾�ѵ
	[CSBZR]  nvarchar(10)  NULL,--����������
	[DRZW]  text  NULL,--�����κ���ְ��
	[YYDR]  text  NULL,--Ը�ⵣ�ΰ�ɲ�����ְ
	[BZ]  text  NULL,--��ע
	[BYLX]  nvarchar(1)  NOT NULL,--��ҵ������
	[XSLX]  nvarchar(5)  NOT NULL,--ѧ������
	[SFZS]  nvarchar(1)  NOT NULL,--�Ƿ�ס��
	[XSBMSJ]  nvarchar(8)  NULL,--ѧ������ʱ��
	[ZZNJID]  nvarchar(4)  NOT NULL,--�꼶ID
	[ZZBJID]  nvarchar(10)  NOT NULL,--�༶ID
CONSTRAINT [PK_EDU_ZZXS_01_A01_XSXX] PRIMARY KEY CLUSTERED
(
	[XSXXID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ѧ����ͥ��Ϣ���ݱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZXS_02_01_XSJTXX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZXS_02_01_XSJTXX](
	[XSXXID]  int  NOT NULL,--ѧ����Ϣ���ݱ�
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[JTZZ]  nvarchar(180)  NOT NULL,--��ͥסַ
	[JTYZBM]  nvarchar(6)  NOT NULL,--��ͥ��������
	[JTDH]  nvarchar(30)  NULL,--��ͥ�绰
	[JTLXR]  nvarchar(36)  NOT NULL,--��ͥ��ϵ��
	[JTDZXX]  nvarchar(40)  NULL,--��ͥ��������
	[JTRK]  int  NULL,--��ͥ�˿�
	[JTZYSRLY]  nvarchar(180)  NULL,--��ͥ��Ҫ������Դ
	[JTYSRJE]  money  NULL,--��ͥ��������
	[JTNSRJE]  money  NULL,--��ͥ��������
	[LJZJHCZ]  nvarchar(30)  NULL,--��������վ
CONSTRAINT [PK_EDU_ZZXS_02_01_XSJTXX] PRIMARY KEY CLUSTERED
(
	[XSXXID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ѧ����ϵ�����ݱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZXS_02_A01_XSLXR]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZXS_02_A01_XSLXR](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[XSXXID]  int  NOT NULL,--ѧ����Ϣ���ݱ�
	[GXM]  nvarchar(2)  NOT NULL,--��ϵ��
	[LXRXM]  nvarchar(36)  NOT NULL,--��ϵ������
	[YZBM]  nvarchar(6)  NULL,--��������
	[TXDZ]  nvarchar(180)  NULL,--ͨ�ŵ�ַ
	[DH]  nvarchar(30)  NOT NULL,--�绰
	[YDDH]  nvarchar(30)  NULL,--�ƶ��绰
	[CZDH]  nvarchar(60)  NULL,--����绰
	[DZXX]  nvarchar(40)  NULL,--��������
	[WLDZ]  nvarchar(60)  NULL,--�����ַ
	[JSTXH]  nvarchar(40)  NULL,--��ʱͨѶ��
CONSTRAINT [PK_EDU_ZZXS_02_A01_XSLXR] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ѧ����ͥ��Ա���ݱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZXS_02_02_XSJTCY]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZXS_02_02_XSJTCY](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[XSXXID]  int  NOT NULL,--ѧ����Ϣ���ݱ�
	[XM]  nvarchar(36)  NOT NULL,--����
	[GXM]  nvarchar(2)  NOT NULL,--��ϵ��
	[JTCYZYM]  nvarchar(3)  NOT NULL,--��ͥ��Աְҵ��
	[SZDW]  nvarchar(60)  NULL,--���ڵ�λ
	[ZZMMM]  nvarchar(2)  NULL,--������ò��
	[DH]  nvarchar(30)  NULL,--�绰
	[YDDH]  nvarchar(30)  NULL,--�ƶ��绰
CONSTRAINT [PK_EDU_ZZXS_02_02_XSJTCY] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ѧ����ͥ����������ݱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZXS_02_A02_XSJTJJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZXS_02_A02_XSJTJJ](
	[XSXXID]  int  NOT NULL,--ѧ����Ϣ���ݱ�
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[SYRK]  decimal(2, 0)  NULL,--�����˿�
	[LDLRK]  decimal(2, 0)  NULL,--�Ͷ����˿�
	[JTRJYSR]  money  NOT NULL,--��ͥ�˾�������
	[JTLBM]  nvarchar(1)  NULL,--��ͥ�����
	[KNYYM]  nvarchar(1)  NULL,--����ԭ����
	[KNCDM]  nvarchar(2)  NULL,--���ѳ̶���
	[SFDB]  nvarchar(1)  NULL,--�Ƿ�ͱ�
	[RXQHKLBM]  nvarchar(1)  NULL,--��ѧǰ���������
	[JXDDBX]  money  NULL,--��ѧ�صͱ���
CONSTRAINT [PK_EDU_ZZXS_02_A02_XSJTJJ] PRIMARY KEY CLUSTERED
(
	[XSXXID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ѧ���ɼ��������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZXS_06_01_XSCJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZXS_06_01_XSCJ](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[XSXXID]  int  NOT NULL,--ѧ��ID
	[KCH]  nvarchar(6)  NOT NULL,--�γ̺�
	[XQID]  int  NOT NULL,--ѧ��ID
	[KCMC]  nvarchar(100)  NOT NULL,--�γ�����
	[XF]  decimal(2, 1)  NOT NULL,--ѧ��
	[XQMC]  nvarchar(10)  NOT NULL,--ѧ������
	[PSCJ]  decimal(5, 1)  NULL,--ƽʱ�ɼ�
	[CJ]  decimal(5, 1)  NOT NULL,--�ɼ�
	[KSXZ]  nvarchar(2)  NULL,--��������
	[RKJGID]  int  NULL,--�ον̹�ID
	[RKJGH]  nvarchar(20)  NULL,--�ον̹���
	[CJLRJGID]  int  NULL,--�ɼ�¼��̹�ID
	[CJLRJGH]  nvarchar(20)  NULL,--�ɼ�¼��̹���
	[CJLRRQ]  nvarchar(8)  NOT NULL,--�ɼ�¼������
	[QZCJ]  decimal(5, 1)  NULL,--���гɼ�
	[QMCJ]  decimal(5, 1)  NULL,--��ĩ�ɼ�
	[KCQDID]  int  NOT NULL,--�γ��嵥ID
	[CJLXID]  int  NOT NULL,--�ɼ�����ID
	[ZYXXID]  int  NOT NULL,--רҵID
	[NJID]  nvarchar(4)  NOT NULL,--�꼶ID
	[BJID]  nvarchar(10)  NOT NULL,--�༶ID
	[SHZT]  int  NOT NULL,--���״̬
	[SHRID]  int  NOT NULL,--�����ID
	[KSID]  int  NOT NULL,--����ID
CONSTRAINT [PK_EDU_ZZXS_06_01_XSCJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ѧ���ɼ����ͱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZXS_06_02_XSCJLX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZXS_06_02_XSCJLX](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[LXMC]  nvarchar(100)  NOT NULL,--��������
	[QZ]  int  NOT NULL,--Ȩ��
	[KCQDID]  int  NOT NULL,--�γ��嵥ID
CONSTRAINT [PK_EDU_ZZXS_06_02_XSCJLX] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ѧ���������ݱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZXS_07_01_XJSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZXS_07_01_XJSJ](
	[XSXXID]  int  NOT NULL,--ѧ����Ϣ���ݱ�
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[ZYXXID]  int  NOT NULL,--רҵ������Ϣ
	[ZZBJID]  nvarchar(10)  NOT NULL,--ѧУ�༶���ݱ�
	[ZZNJID]  nvarchar(4)  NOT NULL,--ѧУ�꼶���ݱ�
	[RXNY]  nvarchar(6)  NOT NULL,--��ѧ����
	[XSLBM]  nvarchar(5)  NOT NULL,--ѧ�������
	[XZ]  nvarchar(20)  NOT NULL,--ѧ��
	[ZYM]  nvarchar(6)  NULL,--רҵ��
	[XSDQZTM]  nvarchar(2)  NOT NULL,--ѧ����ǰ״̬��
CONSTRAINT [PK_EDU_ZZXS_07_01_XJSJ] PRIMARY KEY CLUSTERED
(
	[XSXXID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ѧ���춯���������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZXS_07_02_XJYD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZXS_07_02_XJYD](
	[ID]  int  NOT NULL,--ѧ���춯����
	[XSXXID]  int  NOT NULL,--ѧ��ID
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[YDLBM]  nvarchar(2)  NOT NULL,--�춯�����
	[YDRQ]  nvarchar(8)  NOT NULL,--�춯����
	[YDYYM]  nvarchar(2)  NOT NULL,--�춯ԭ����
	[SPRQ]  nvarchar(8)  NULL,--��������
	[SPWH]  nvarchar(24)  NULL,--�����ĺ�
	[JBRID]  int  NULL,--������ID
	[JBRGH]  nvarchar(20)  NULL,--�����˹���
	[YDLYXXM]  nvarchar(10)  NULL,--�춯��ԴѧУ��
	[YDQXXXM]  nvarchar(10)  NULL,--�춯ȥ��ѧУ��
	[YDSM]  text  NULL,--�춯˵��
	[YZYM]  nvarchar(6)  NULL,--ԭרҵ��
	[YZYID]  int  NOT NULL,--ԭרҵID
	[YBH]  nvarchar(10)  NOT NULL,--ԭ���
	[YNJ]  nvarchar(4)  NOT NULL,--ԭ�꼶
	[XZYM]  nvarchar(6)  NULL,--��רҵ��
	[XZYID]  int  NOT NULL,--��רҵID
	[XBH]  nvarchar(10)  NOT NULL,--�ְ��
	[XNJ]  nvarchar(4)  NOT NULL,--���꼶
CONSTRAINT [PK_EDU_ZZXS_07_02_XJYD] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ѧ��ע����Ϣ���������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZXS_07_03_XSZCXX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZXS_07_03_XSZCXX](
	[XSXXID]  int  NOT NULL,--ѧ��ID
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[XQID]  int  NOT NULL,--ѧ��ID
	[ZCZKM]  nvarchar(1)  NOT NULL,--ע��״����
	[ZCRQ]  nvarchar(8)  NOT NULL,--ע������
	[BDRQ]  nvarchar(8)  NOT NULL,--��������
	[WZCYY]  nvarchar(100)  NOT NULL,--δע��ԭ��
	[WZCWBDQX]  nvarchar(40)  NOT NULL,--δע��/δ����ȥ��
	[SFQJ]  nvarchar(1)  NOT NULL,--�Ƿ����
	[WASZCXQM]  nvarchar(1)  NOT NULL,--δ��ʱע��ѧ����
CONSTRAINT [PK_EDU_ZZXS_07_03_XSZCXX] PRIMARY KEY CLUSTERED
(
	[XSXXID] ASC,
	[SCHOOLID] ASC,
	[XQID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--��ѧ�����������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZXS_10_02_JXJSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZXS_10_02_JXJSJ](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[JXJMC]  nvarchar(30)  NOT NULL,--��ѧ������
	[JXJBH]  nvarchar(2)  NOT NULL,--��ѧ����
	[JXJDJ]  nvarchar(20)  NOT NULL,--��ѧ��ȼ�
	[JXJLXM]  nvarchar(2)  NOT NULL,--��ѧ��������
	[JXJE]  decimal(8, 2)  NOT NULL,--��ѧ���
	[ZZDWHGR]  nvarchar(60)  NULL,--������λ�����
	[JXJLYM]  nvarchar(1)  NULL,--��ѧ����Դ��
	[BZ]  text  NOT NULL,--��ע
	[SFKQ]  int  NOT NULL,--�Ƿ���
	[MXQKHJRS]  int  NOT NULL,--ÿѧ�ڿɻ�����
CONSTRAINT [PK_EDU_ZZXS_10_02_JXJSJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--��ѧ�����������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZXS_10_03_ZXJSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZXS_10_03_ZXJSJ](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[ZXJE]  decimal(8, 2)  NOT NULL,--��ѧ���
	[ZXJMC]  nvarchar(60)  NOT NULL,--��ѧ������
	[ZZDWHGR]  nvarchar(60)  NULL,--������λ�����
	[ZXJLX]  nvarchar(1)  NOT NULL,--��ѧ������
	[BZ]  text  NOT NULL,--��ע
	[SFKQ]  int  NOT NULL,--�Ƿ���
	[MXQKHJRS]  int  NOT NULL,--ÿѧ�ڿɻ�����
CONSTRAINT [PK_EDU_ZZXS_10_03_ZXJSJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ѧ����ѧ���
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZXS_10_A12_XSHJXJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZXS_10_A12_XSHJXJ](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[XQID]  int  NOT NULL,--ѧ��ID
	[XSXXID]  int  NOT NULL,--ѧ��ID
	[JXJID]  int  NOT NULL,--��ѧ��ID
	[HDJE]  decimal(8, 2)  NOT NULL,--��ý��
	[HJSJ]  datetime  NOT NULL,--��ʱ��
	[BZ]  text  NOT NULL,--��ע
	[SQYY]  text  NOT NULL,--����ԭ��
	[SQSJ]  datetime  NOT NULL,--����ʱ��
	[SHZT]  int  NOT NULL,--���״̬
	[SHSJ]  datetime  NOT NULL,--���ʱ��
	[SHJSID]  int  NOT NULL,--��˽�ʦID
	[TJJSID]  int  NOT NULL,--��ӽ�ʦID
CONSTRAINT [PK_EDU_ZZXS_10_A12_XSHJXJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ѧ������ѧ���
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZXS_10_A13_XSHZXJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZXS_10_A13_XSHZXJ](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[XQID]  int  NOT NULL,--ѧ��ID
	[XSXXID]  int  NOT NULL,--ѧ��ID
	[ZXJID]  int  NOT NULL,--��ѧ��ID
	[ZKBMH]  nvarchar(10)  NULL,--�п�������
	[YHKH]  nvarchar(30)  NOT NULL,--���п���
	[HDJE]  decimal(8, 2)  NOT NULL,--��ý��
	[SFSJ]  datetime  NOT NULL,--ʼ��ʱ��
	[TFSJ]  datetime  NOT NULL,--ͣ��ʱ��
	[TFYY]  nvarchar(80)  NOT NULL,--ͣ��ԭ��
	[BZ]  text  NOT NULL,--��ע
	[SQYY]  text  NOT NULL,--����ԭ��
	[SQSJ]  datetime  NOT NULL,--����ʱ��
	[SHZT]  int  NOT NULL,--���״̬
	[SHSJ]  datetime  NOT NULL,--���ʱ��
	[SHJSID]  int  NOT NULL,--��˽�ʦID
	[TJJSID]  int  NOT NULL,--��ӽ�ʦID
CONSTRAINT [PK_EDU_ZZXS_10_A13_XSHZXJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--��ҵ���ݱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZXS_11_01_BYSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZXS_11_01_BYSJ](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[XQID]  int  NOT NULL,--ѧ��ID
	[XSXXID]  int  NOT NULL,--ѧ��ID
	[JSXYNY]  datetime  NOT NULL,--����ѧҵ����
	[JSXYM]  nvarchar(1)  NOT NULL,--����ѧҵ��
	[BYZSH]  nvarchar(20)  NULL,--��ҵ֤���
	[FFRQ]  datetime  NULL,--����ʱ��
	[SFZSLQ]  nvarchar(1)  NULL,--�Ƿ�֤����ȡ
	[TJJSID]  int  NOT NULL,--��ӽ�ʦID
	[TJSJ]  datetime  NOT NULL,--���ʱ��
	[SHZT]  int  NOT NULL,--���״̬
	[SHJSID]  int  NOT NULL,--��˽�ʦID
	[SHSJ]  datetime  NOT NULL,--���ʱ��
CONSTRAINT [PK_EDU_ZZXS_11_01_BYSJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--���Ż������������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZXS_12_A01_STJBSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZXS_12_A01_STJBSJ](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[STMC]  nvarchar(30)  NOT NULL,--��������
	[STBH]  nvarchar(4)  NOT NULL,--���ű��
	[CLRQ]  datetime  NOT NULL,--��������
	[CLMD]  text  NULL,--����Ŀ��
	[CSR]  nvarchar(36)  NOT NULL,--��ʼ��
	[PZBM]  nvarchar(30)  NOT NULL,--��׼����
	[STXZ]  nvarchar(30)  NOT NULL,--��������
	[ZYHDXS]  text  NOT NULL,--��Ҫ���ʽ
	[RS]  decimal(3, 0)  NOT NULL,--����
	[DQFZR]  nvarchar(36)  NOT NULL,--��ǰ������
	[FZRDH]  nvarchar(30)  NOT NULL,--�����˵绰
	[ZDLS]  nvarchar(36)  NOT NULL,--ָ����ʦ
	[ZDLSDH]  nvarchar(30)  NOT NULL,--ָ����ʦ�绰
CONSTRAINT [PK_EDU_ZZXS_12_A01_STJBSJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--���ų�Ա��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZXS_12_A02_STCY]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZXS_12_A02_STCY](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[STID]  int  NOT NULL,--����ID
	[STBH]  nvarchar(4)  NULL,--���ű��
	[XM]  nvarchar(36)  NOT NULL,--ѧ������
	[XSXXID]  int  NOT NULL,--ѧ��ID
	[BJID]  nvarchar(10)  NOT NULL,--ѧ���༶ID
	[CDRQ]  datetime  NOT NULL,--��������
	[STZW]  nvarchar(50)  NOT NULL,--����ְ��
	[GZNR]  text  NOT NULL,--��������
	[STPJ]  text  NOT NULL,--��������
	[DQZT]  nvarchar(1)  NOT NULL,--��ǰ״̬
	[TJRID]  int  NOT NULL,--�����ID
	[SHRID]  int  NOT NULL,--�����ID
	[SHSJ]  datetime  NOT NULL,--���ʱ��
	[SHZT]  int  NOT NULL,--���״̬
CONSTRAINT [PK_EDU_ZZXS_12_A02_STCY] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--���ųɼ����ͱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZXS_12_A03_STCJLX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZXS_12_A03_STCJLX](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[CJLXMC]  nvarchar(30)  NOT NULL,--��������
CONSTRAINT [PK_EDU_ZZXS_12_A03_STCJLX] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ѧ�����ųɼ���
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZXS_12_A04_XSSTCJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZXS_12_A04_XSSTCJ](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[XQID]  int  NOT NULL,--ѧ��ID
	[STCYID]  int  NOT NULL,--���ų�Ա��ID
	[CJLXID]  int  NULL,--�ɼ�����ID
	[FS]  decimal(4, 1)  NOT NULL,--����
	[TJSJ]  datetime  NOT NULL,--���ʱ��
	[TJRID]  int  NOT NULL,--�����ID
	[STID]  int  NOT NULL,--����ID
CONSTRAINT [PK_EDU_ZZXS_12_A04_XSSTCJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ѧ��������Ŀ��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZXS_14_A01_XSKHXM]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZXS_14_A01_XSKHXM](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[XMMC]  nvarchar(20)  NOT NULL,--��Ŀ����
CONSTRAINT [PK_EDU_ZZXS_14_A01_XSKHXM] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ѧ�����˱����ݱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZXS_14_A02_XSKHBSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZXS_14_A02_XSKHBSJ](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[KHBMC]  nvarchar(20)  NOT NULL,--���˱�����
	[KHBJDMLB]  text  NOT NULL,--���˰༶�����б�
	[KHXMIDLB]  text  NOT NULL,--������ĿID�б�
	[KHJSMCLB]  text  NOT NULL,--���˽�ʦ�����б�
	[KHJSIDLB]  text  NOT NULL,--���˽�ʦID�б�
CONSTRAINT [PK_EDU_ZZXS_14_A02_XSKHBSJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ѧ���ճ���Ϊ�淶�������ݱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZXS_14_A03_XSRCXWGFKHSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZXS_14_A03_XSRCXWGFKHSJ](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[KHBJDM]  nvarchar(10)  NOT NULL,--���˰༶����
	[KHBID]  int  NOT NULL,--���˱�ID
	[KHXMID]  int  NOT NULL,--������ĿID
	[KHFZ]  int  NOT NULL,--���˷�ֵ
	[KHSJ]  datetime  NOT NULL,--����ʱ��
	[JLJSID]  int  NOT NULL,--��¼��ʦID
CONSTRAINT [PK_EDU_ZZXS_14_A03_XSRCXWGFKHSJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ѧ����λһ��ֵ�����ݱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZXS_14_A04_XSWWYTZQSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZXS_14_A04_XSWWYTZQSJ](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[ZQXMID]  int  NOT NULL,--ֵ����ĿID
	[JXBMC]  nvarchar(36)  NOT NULL,--��ѧ������
	[ZQRYLX]  int  NOT NULL,--ֵ����Ա����
	[ZQRYID]  int  NOT NULL,--ֵ����ԱID
	[ZQNR]  text  NOT NULL,--ֵ������
	[ZQSJ]  datetime  NOT NULL,--ֵ��ʱ��
	[TJSJ]  datetime  NOT NULL,--���ʱ��
CONSTRAINT [PK_EDU_ZZXS_14_A04_XSWWYTZQSJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ѧ����λһ��ֵ����Ŀ��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZXS_14_A05_XSWWYTZQXM]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZXS_14_A05_XSWWYTZQXM](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[ZQXMMC]  nvarchar(36)  NOT NULL,--ֵ����Ŀ����
CONSTRAINT [PK_EDU_ZZXS_14_A05_XSWWYTZQXM] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ѧ����λһ��ֵ����Ա���ű�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZXS_14_A06_XSWWYTZQRYAP]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZXS_14_A06_XSWWYTZQRYAP](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[ZQXMID]  int  NOT NULL,--ֵ����ĿID
	[ZQRYLX]  int  NOT NULL,--ֵ����Ա����
	[ZQRYID]  int  NOT NULL,--ֵ����ԱID
	[ZQKSSJ]  datetime  NOT NULL,--ֵ�ڿ�ʼʱ��
	[ZQJSSJ]  datetime  NOT NULL,--ֵ�ڽ���ʱ��
CONSTRAINT [PK_EDU_ZZXS_14_A06_XSWWYTZQRYAP] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�����ƺ����ݱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZXS_15_A01_RYCH]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZXS_15_A01_RYCH](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[CHMC]  nvarchar(30)  NOT NULL,--�ƺ�����
	[SYDW]  nvarchar(50)  NOT NULL,--���赥λ
	[BZ]  text  NOT NULL,--��ע
	[SFKQ]  int  NOT NULL,--�Ƿ���
CONSTRAINT [PK_EDU_ZZXS_15_A01_RYCH] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ѧ�������ƺű�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZXS_15_A02_RYCHSQ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZXS_15_A02_RYCHSQ](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[XSXXID]  int  NOT NULL,--ѧ��ID
	[XQID]  int  NOT NULL,--ѧ��ID
	[RYCHID]  int  NOT NULL,--�����ƺ�ID
	[BZ]  text  NOT NULL,--��ע
	[SQYY]  text  NOT NULL,--����ԭ��
	[SQSJ]  datetime  NOT NULL,--����ʱ��
	[SHZT]  int  NOT NULL,--���״̬
	[SHSJ]  datetime  NOT NULL,--���ʱ��
	[SHJSID]  int  NOT NULL,--��˽�ʦID
	[TJJSID]  int  NOT NULL,--��ӽ�ʦID
CONSTRAINT [PK_EDU_ZZXS_15_A02_RYCHSQ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ƶ�������ͱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZXS_16_A01_PKSLX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZXS_16_A01_PKSLX](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[LXMC]  nvarchar(30)  NOT NULL,--��������
	[NR]  text  NOT NULL,--����
	[BZ]  text  NOT NULL,--��ע
	[SFKQ]  int  NOT NULL,--�Ƿ���
CONSTRAINT [PK_EDU_ZZXS_16_A01_PKSLX] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ƶ������Ϣ��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZXS_16_A02_PKSXX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZXS_16_A02_PKSXX](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[XSXXID]  int  NOT NULL,--ѧ��ID
	[XQID]  int  NOT NULL,--ѧ��ID
	[PKSLXID]  int  NOT NULL,--ƶ��������ID
	[BZ]  text  NOT NULL,--��ע
	[SQYY]  text  NOT NULL,--����ԭ��
	[SQSJ]  datetime  NOT NULL,--����ʱ��
	[SHZT]  int  NOT NULL,--���״̬
	[SHSJ]  datetime  NOT NULL,--���ʱ��
	[SHJSID]  int  NOT NULL,--��˽�ʦID
	[TJJSID]  int  NOT NULL,--��ӽ�ʦID
CONSTRAINT [PK_EDU_ZZXS_16_A02_PKSXX] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--��Ա��Ϣ��չ��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZXS_17_A01_TYXX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZXS_17_A01_TYXX](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[BJID]  nvarchar(10)  NOT NULL,--�༶ID
	[XSXXID]  int  NOT NULL,--ѧ��ID
	[RTSJ]  datetime  NOT NULL,--����ʱ��
	[ZRD]  nvarchar(50)  NOT NULL,--ת���
	[ZRSJ]  datetime  NOT NULL,--ת��ʱ��
	[ZCSJ]  datetime  NOT NULL,--ת��ʱ��
	[DQZT]  int  NOT NULL,--��ǰ״̬
	[JBJSID]  int  NOT NULL,--�����ʦID
	[BZ]  text  NOT NULL,--��ע
CONSTRAINT [PK_EDU_ZZXS_17_A01_TYXX] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�ŷ��սɼ�¼��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZXS_17_A02_TFSJJL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZXS_17_A02_TFSJJL](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[XQID]  int  NOT NULL,--ѧ��ID
	[XSXXID]  int  NOT NULL,--ѧ��ID
	[TYXXID]  int  NOT NULL,--��Ա��Ϣ��ID
	[SJJE]  decimal(8, 2)  NOT NULL,--�սɽ��
	[TJSJ]  datetime  NULL,--���ʱ��
	[BJMC]  nvarchar(50)  NOT NULL,--�༶����
CONSTRAINT [PK_EDU_ZZXS_17_A02_TFSJJL] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�뵳������Ա���ݱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZXS_17_A03_RDJJTY]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZXS_17_A03_RDJJTY](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[XSXXID]  int  NOT NULL,--ѧ��ID
	[XQID]  int  NOT NULL,--ѧ��ID
	[PDYY]  text  NOT NULL,--����ԭ��
	[BZ]  text  NOT NULL,--��ע
	[TJSJ]  datetime  NULL,--���ʱ��
	[TJJSID]  int  NOT NULL,--��ӽ�ʦID
	[BJMC]  nvarchar(50)  NOT NULL,--�༶����
CONSTRAINT [PK_EDU_ZZXS_17_A03_RDJJTY] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--��Ա˼��㱨���ݱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZXS_17_A04_TYSXHB]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZXS_17_A04_TYSXHB](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[XSXXID]  int  NOT NULL,--ѧ��ID
	[XQID]  int  NOT NULL,--ѧ��ID
	[HBNR]  text  NOT NULL,--�㱨����
	[BZ]  text  NOT NULL,--��ע
	[TJSJ]  datetime  NULL,--���ʱ��
	[TJJSID]  int  NOT NULL,--��ӽ�ʦID
	[BJMC]  nvarchar(50)  NOT NULL,--�༶����
CONSTRAINT [PK_EDU_ZZXS_17_A04_TYSXHB] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--Υ�����ͱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZXS_18_A01_WJLX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZXS_18_A01_WJLX](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[WJLXMC]  nvarchar(30)  NOT NULL,--Υ����������
	[WJNRFW]  text  NOT NULL,--Υ�����ݷ�Χ
	[BZ]  text  NOT NULL,--��ע
CONSTRAINT [PK_EDU_ZZXS_18_A01_WJLX] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�������ͱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZXS_18_A02_CFLX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZXS_18_A02_CFLX](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[CFLXMC]  nvarchar(30)  NOT NULL,--������������
	[CFGLDW]  nvarchar(30)  NOT NULL,--���ֹ���λ
	[SFCZCKQ]  nvarchar(1)  NOT NULL,--�Ƿ���ڲ鿴��
	[CKQ]  int  NOT NULL,--�鿴��
	[SFYXJC]  nvarchar(1)  NOT NULL,--�Ƿ�������
	[BZ]  text  NOT NULL,--��ע
CONSTRAINT [PK_EDU_ZZXS_18_A02_CFLX] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--������ֲ����
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZXS_18_A03_JCCFBZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZXS_18_A03_JCCFBZ](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[CFLXID]  int  NOT NULL,--��������ID
	[BZMC]  nvarchar(100)  NOT NULL,--��������
	[SHRIDLB]  text  NOT NULL,--�����ID�б�
	[SHRMCLB]  text  NOT NULL,--����������б�
	[SYBZID]  int  NOT NULL,--��һ����ID
	[XYBZID]  int  NOT NULL,--��һ����ID
	[BZ]  text  NOT NULL,--��ע
CONSTRAINT [PK_EDU_ZZXS_18_A03_JCCFBZ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ѧ��������Ϣ��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZXS_18_A04_XSCFXX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZXS_18_A04_XSCFXX](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[XSXXID]  int  NOT NULL,--ѧ��ID
	[WJLXID]  int  NOT NULL,--Υ������ID
	[XQID]  int  NOT NULL,--ѧ��ID
	[DQZT]  int  NOT NULL,--��ǰ״̬
	[WJQK]  text  NOT NULL,--Υ�����
	[JYCFLXID]  int  NOT NULL,--���鴦������ID
	[SBSJ]  datetime  NOT NULL,--�ϱ�ʱ��
	[SBJSID]  int  NOT NULL,--�ϱ���ʦID
	[ZZCFLXID]  int  NOT NULL,--���մ�������ID
	[SHSJ]  datetime  NOT NULL,--���ʱ��
	[SHJSID]  int  NOT NULL,--��˽�ʦID
	[BZ]  text  NOT NULL,--��ע
	[FSSJ]  datetime  NOT NULL,--����ʱ��
	[JCSJ]  datetime  NOT NULL,--���ʱ��
	[JCJSID]  int  NOT NULL,--�����ʦID
CONSTRAINT [PK_EDU_ZZXS_18_A04_XSCFXX] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--������������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZXS_18_A05_JCCFSQ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZXS_18_A05_JCCFSQ](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[XSCFXXID]  int  NOT NULL,--ѧ��������ϢID
	[JCYY]  text  NOT NULL,--���ԭ��
	[YJTL]  text  NOT NULL,--��������
	[DQZT]  int  NOT NULL,--��ǰ״̬
	[DQBZID]  int  NOT NULL,--��ǰ����ID
	[SQSJ]  datetime  NOT NULL,--����ʱ��
	[SQXSID]  int  NOT NULL,--����ѧ��ID
	[SQTHYY]  text  NOT NULL,--�����˻�ԭ��
	[ZHSHSJ]  datetime  NOT NULL,--������ʱ��
	[ZHSHJSID]  int  NOT NULL,--�����˽�ʦID
	[BZ]  text  NOT NULL,--��ע
CONSTRAINT [PK_EDU_ZZXS_18_A05_JCCFSQ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�������������˼�¼��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZXS_18_A06_JCCFSQSHJL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZXS_18_A06_JCCFSQSHJL](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[XSCFXXID]  int  NOT NULL,--ѧ��������ϢID
	[JCCFSQID]  int  NOT NULL,--�����������ID
	[BZID]  int  NOT NULL,--����ID
	[SHJG]  int  NOT NULL,--��˽��
	[SHSJ]  datetime  NOT NULL,--���ʱ��
	[SHJSID]  int  NOT NULL,--��˽�ʦID
	[BZ]  text  NOT NULL,--��ע
CONSTRAINT [PK_EDU_ZZXS_18_A06_JCCFSQSHJL] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--����ģ���
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZXS_18_A07_BGMB]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZXS_18_A07_BGMB](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[MBMC]  nvarchar(50)  NOT NULL,--ģ������
	[NR]  text  NOT NULL,--����
CONSTRAINT [PK_EDU_ZZXS_18_A07_BGMB] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�����
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZXS_18_A08_BG]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZXS_18_A08_BG](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[BT]  nvarchar(100)  NOT NULL,--����
	[NR]  text  NOT NULL,--����
	[FBR]  nvarchar(100)  NOT NULL,--������
	[FBSJ]  datetime  NOT NULL,--����ʱ��
CONSTRAINT [PK_EDU_ZZXS_18_A08_BG] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--��ί���ݱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZXS_19_A01_BWSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZXS_19_A01_BWSJ](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[BWMC]  nvarchar(100)  NOT NULL,--��ί����
CONSTRAINT [PK_EDU_ZZXS_19_A01_BWSJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--��ί��Ա��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZXS_19_A02_BWCY]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZXS_19_A02_BWCY](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[BWID]  int  NOT NULL,--��ίID
	[XSXXID]  int  NOT NULL,--ѧ��ID
	[XQID]  int  NOT NULL,--ѧ��ID
	[ZYXXID]  int  NOT NULL,--רҵID
	[NJID]  nvarchar(4)  NOT NULL,--�꼶ID
	[BJID]  nvarchar(10)  NOT NULL,--�༶ID
CONSTRAINT [PK_EDU_ZZXS_19_A02_BWCY] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--��ʦ���ݱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZXS_20_A01_DSSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZXS_20_A01_DSSJ](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[XQID]  int  NOT NULL,--ѧ��ID
	[JSID]  int  NOT NULL,--��ʦID
	[DSXM]  nvarchar(36)  NOT NULL,--��ʦ����
	[DSJS]  text  NOT NULL,--��ʦ����
	[BJIDLB]  text  NOT NULL,--�༶ID�б�
	[BJMCLB]  text  NOT NULL,--�༶�����б�
	[ZDKXZRS]  int  NOT NULL,--����ѡ������
	[ZDXXZRS]  int  NOT NULL,--�����ѡ������
CONSTRAINT [PK_EDU_ZZXS_20_A01_DSSJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ѧ��ѡ��ʦ��¼��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZXS_20_A02_XSXZDSJL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZXS_20_A02_XSXZDSJL](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[DSID]  int  NOT NULL,--��ʦID
	[XSID]  int  NOT NULL,--ѧ��ID
CONSTRAINT [PK_EDU_ZZXS_20_A02_XSXZDSJL] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--���߱�����
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZXS_21_A01_ZXBM]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZXS_21_A01_ZXBM](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[XM]  nvarchar(200)  NOT NULL,--����
	[XB]  nvarchar(200)  NOT NULL,--�Ա�
	[SG]  nvarchar(200)  NOT NULL,--���
	[TZ]  nvarchar(200)  NOT NULL,--����
	[BYXX]  nvarchar(200)  NOT NULL,--��ҵѧУ
	[BYBJ]  nvarchar(200)  NOT NULL,--��ҵ�༶
	[ZKCJ]  nvarchar(200)  NOT NULL,--�п��ɼ�
	[TBZYY]  nvarchar(200)  NOT NULL,--�־Ըһ
	[TBZYE]  nvarchar(200)  NOT NULL,--�־Ը��
	[JZLXDH]  nvarchar(200)  NOT NULL,--�ҳ���ϵ�绰
	[XSLXDH]  nvarchar(200)  NOT NULL,--ѧ����ϵ�绰
	[ZXTX]  nvarchar(200)  NOT NULL,--סУ/ͨУ
	[ZKZH]  nvarchar(200)  NOT NULL,--׼��֤��
	[SFFCTJ]  nvarchar(200)  NOT NULL,--�Ƿ���ӵ���
	[SFZHM]  nvarchar(200)  NOT NULL,--���֤����
	[DZ]  nvarchar(200)  NOT NULL,--��ַ
	[JF]  nvarchar(200)  NOT NULL,--����
	[BMIP]  nvarchar(200)  NOT NULL,--����IP
CONSTRAINT [PK_EDU_ZZXS_21_A01_ZXBM] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�����������ѧУ��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZXS_22_A01_ZSGLCZXX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZXS_22_A01_ZSGLCZXX](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[XXMC]  nvarchar(200)  NOT NULL,--ѧУ����
CONSTRAINT [PK_EDU_ZZXS_22_A01_ZSGLCZXX] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�������������ƻ���
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZXS_22_A02_ZSGLZSJH]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZXS_22_A02_ZSGLZSJH](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[JHMC]  nvarchar(200)  NOT NULL,--�ƻ�����
	[XNID]  int  NOT NULL,--ѧ��ID
	[KG]  int  NOT NULL,--����
CONSTRAINT [PK_EDU_ZZXS_22_A02_ZSGLZSJH] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�������������ƻ��굥��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZXS_22_A03_ZSGLZSJHXD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZXS_22_A03_ZSGLZSJHXD](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[JHID]  int  NOT NULL,--�ƻ�ID
	[ZYMC]  nvarchar(200)  NOT NULL,--רҵ����
	[ZYID]  int  NOT NULL,--רҵID
	[ZSRS]  int  NOT NULL,--��������
	[ZYJS]  text  NOT NULL,--רҵ����
CONSTRAINT [PK_EDU_ZZXS_22_A03_ZSGLZSJHXD] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--��������������Ϣ��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZXS_22_A04_ZSGLXSXX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZXS_22_A04_ZSGLXSXX](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[XQID]  int  NOT NULL,--ѧ��ID
	[XM]  nvarchar(200)  NOT NULL,--����
	[XB]  nvarchar(200)  NOT NULL,--�Ա�
	[SFZX]  nvarchar(200)  NOT NULL,--�Ƿ�סУ
	[LXDH]  nvarchar(200)  NOT NULL,--��ϵ�绰
	[BYXXID]  int  NOT NULL,--��ҵѧУID
	[YW]  decimal(5, 1)  NOT NULL,--����
	[SX]  decimal(5, 1)  NOT NULL,--��ѧ
	[YY]  decimal(5, 1)  NOT NULL,--Ӣ��
	[SZ]  decimal(5, 1)  NOT NULL,--����
	[KX]  decimal(5, 1)  NOT NULL,--��ѧ
	[TY]  decimal(5, 1)  NOT NULL,--����
	[SYJF]  decimal(5, 1)  NOT NULL,--ʵ��ӷ�
	[ZF]  decimal(5, 1)  NOT NULL,--�ܷ�
	[TC]  nvarchar(200)  NOT NULL,--�س�
	[BZ]  text  NOT NULL,--��ע
	[DYZYID]  int  NOT NULL,--��һ־ԸID
	[DEZYID]  int  NOT NULL,--�ڶ�־ԸID
	[DSZYID]  int  NOT NULL,--����־ԸID
	[LSID]  int  NOT NULL,--��ʱID
	[LRSJ]  datetime  NOT NULL,--¼��ʱ��
	[LRR]  nvarchar(200)  NOT NULL,--¼����
	[LQSJ]  datetime  NOT NULL,--¼ȡʱ��
	[LQR]  nvarchar(200)  NOT NULL,--¼ȡ��
	[LQZYID]  int  NOT NULL,--¼ȡרҵID
	[BH]  nvarchar(200)  NOT NULL,--���
	[JFJE]  decimal(8, 1)  NOT NULL,--�ɷѽ��
	[XNID]  int  NOT NULL,--ѧ��ID
CONSTRAINT [PK_EDU_ZZXS_22_A04_ZSGLXSXX] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC,
	[BH] ASC,
	[JFJE] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--���������ҵ֤����
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZXS_22_A05_ZSGLJYZM]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZXS_22_A05_ZSGLJYZM](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[XSID]  int  NOT NULL,--ѧ��ID
	[XSXM]  nvarchar(200)  NOT NULL,--ѧ������
	[XB]  nvarchar(200)  NOT NULL,--�Ա�
	[ZY]  nvarchar(200)  NOT NULL,--רҵ
	[JTDZ]  nvarchar(200)  NOT NULL,--��ͥ��ַ
	[LXDH]  nvarchar(200)  NOT NULL,--��ϵ�绰
	[JYDW]  nvarchar(200)  NOT NULL,--��ҵ��λ
	[DWDH]  nvarchar(200)  NOT NULL,--��λ�绰
	[JYGW]  nvarchar(200)  NOT NULL,--��ҵ��λ
	[PJYSR]  nvarchar(200)  NOT NULL,--ƽ��������
	[JYSJ]  nvarchar(200)  NOT NULL,--��ҵʱ��
	[ZYDM]  nvarchar(200)  NOT NULL,--רҵ����
	[BJID]  nvarchar(10)  NOT NULL,--�༶ID
	[XJH]  nvarchar(200)  NOT NULL,--ѧ����
	[GZHZY]  nvarchar(200)  NOT NULL,--���ֻ�רҵ
	[SFDK]  nvarchar(200)  NOT NULL,--�Ƿ�Կ�
	[JYDD]  nvarchar(200)  NOT NULL,--��ҵ�ص�
	[JYQX]  nvarchar(200)  NOT NULL,--��ҵȥ��
	[DD]  nvarchar(200)  NOT NULL,--�ص�
	[JYHT]  nvarchar(200)  NOT NULL,--��ҵ��ͬ
	[SB]  nvarchar(200)  NOT NULL,--�籣
CONSTRAINT [PK_EDU_ZZXS_22_A05_ZSGLJYZM] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�������۴����
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZXS_25_A01_DYPJDL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZXS_25_A01_DYPJDL](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[PFDXLX]  int  NOT NULL,--���ֶ�������
	[MC]  nvarchar(200)  NOT NULL,--����
	[PLSX]  int  NOT NULL,--����˳��
CONSTRAINT [PK_EDU_ZZXS_25_A01_DYPJDL] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--��������С���
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZXS_25_A02_DYPJXL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZXS_25_A02_DYPJXL](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[PFDXLX]  int  NOT NULL,--���ֶ�������
	[DLID]  int  NOT NULL,--����ID
	[MC]  nvarchar(200)  NOT NULL,--����
	[MRFZ]  decimal(5, 2)  NOT NULL,--Ĭ�Ϸ�ֵ
	[NFXGFZ]  int  NOT NULL,--�ܷ��޸ķ�ֵ
	[FZSX]  decimal(5, 2)  NOT NULL,--��ֵ����
	[FZXX]  decimal(5, 2)  NOT NULL,--��ֵ����
	[PLSX]  int  NOT NULL,--����˳��
CONSTRAINT [PK_EDU_ZZXS_25_A02_DYPJXL] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�������۰༶���ּ�¼��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZXS_25_A03_DYPJBJPFJL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZXS_25_A03_DYPJBJPFJL](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[XQID]  int  NOT NULL,--ѧ��ID
	[ZCID]  int  NOT NULL,--�ܴ�ID
	[JSID]  int  NOT NULL,--��ʦID
	[BJID]  nvarchar(10)  NOT NULL,--�༶ID
	[DLID]  int  NOT NULL,--����ID
	[XLID]  int  NOT NULL,--С��ID
	[SJ]  datetime  NOT NULL,--ʱ��
	[FZ]  decimal(5, 2)  NOT NULL,--��ֵ
	[BZ]  nvarchar(500)  NOT NULL,--��ע
	[ZT]  int  NOT NULL,--״̬
	[TJSJ]  datetime  NOT NULL,--���ʱ��
	[XFZT]  int  NOT NULL,--����״̬
	[XFSQJSID]  int  NOT NULL,--���������ʦID
	[XFSQSJ]  datetime  NOT NULL,--��������ʱ��
	[XFLY]  nvarchar(500)  NOT NULL,--��������
	[XFCLJG]  int  NOT NULL,--���ִ�����
	[XFCLJSID]  int  NOT NULL,--���ִ����ʦID
	[XFCLSJ]  datetime  NOT NULL,--���ִ���ʱ��
	[CLYJ]  nvarchar(500)  NOT NULL,--�������
	[SCZT]  int  NOT NULL,--ɾ��״̬
	[SCJSID]  int  NOT NULL,--ɾ����ʦID
	[SCSJ]  datetime  NOT NULL,--ɾ��ʱ��
CONSTRAINT [PK_EDU_ZZXS_25_A03_DYPJBJPFJL] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--��������ѧ�����ּ�¼��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZXS_25_A04_DYPJXSPFJL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZXS_25_A04_DYPJXSPFJL](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[XQID]  int  NOT NULL,--ѧ��ID
	[ZCID]  int  NOT NULL,--�ܴ�ID
	[JSID]  int  NOT NULL,--��ʦID
	[BJID]  nvarchar(10)  NOT NULL,--�༶ID
	[XSID]  int  NOT NULL,--ѧ��ID
	[DLID]  int  NOT NULL,--����ID
	[XLID]  int  NOT NULL,--С��ID
	[SJ]  datetime  NOT NULL,--ʱ��
	[FZ]  decimal(5, 2)  NOT NULL,--��ֵ
	[BZ]  nvarchar(500)  NOT NULL,--��ע
	[ZT]  int  NOT NULL,--״̬
	[TJSJ]  datetime  NOT NULL,--���ʱ��
	[GLBJPFJLID]  int  NOT NULL,--�����༶���ּ�¼ID
	[SCZT]  int  NOT NULL,--ɾ��״̬
	[SCJSID]  int  NOT NULL,--ɾ����ʦID
	[SCSJ]  datetime  NOT NULL,--ɾ��ʱ��
CONSTRAINT [PK_EDU_ZZXS_25_A04_DYPJXSPFJL] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�������۰༶�ȵڱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZXS_25_A05_DYPJBJDD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZXS_25_A05_DYPJBJDD](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[MC]  nvarchar(50)  NOT NULL,--�ȵ�����
	[PLSX]  int  NOT NULL,--����˳��
CONSTRAINT [PK_EDU_ZZXS_25_A05_DYPJBJDD] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�������۰༶ÿ�ܻ��ܱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZXS_25_A06_DYPJBJMZHZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZXS_25_A06_DYPJBJMZHZ](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[XQID]  int  NOT NULL,--ѧ��ID
	[ZCID]  int  NOT NULL,--�ܴ�ID
	[BJID]  nvarchar(10)  NOT NULL,--�༶ID
	[ZZF]  decimal(8, 2)  NOT NULL,--���ܷ�
	[ZF]  decimal(8, 2)  NOT NULL,--�ܷ�
	[DDID]  int  NOT NULL,--�ȵ�ID
	[DDPJJSID]  int  NOT NULL,--�ȵ�������ʦID
	[TJJSID]  int  NOT NULL,--��ӽ�ʦID
	[TJSJ]  datetime  NOT NULL,--���ʱ��
CONSTRAINT [PK_EDU_ZZXS_25_A06_DYPJBJMZHZ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�������۰༶ÿ�ܴ����ֱܷ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZXS_25_A07_DYPJBJMZDLZF]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZXS_25_A07_DYPJBJMZDLZF](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[MZHZID]  int  NOT NULL,--ÿ�ܻ���ID
	[DLID]  int  NOT NULL,--����ID
	[ZF]  decimal(8, 2)  NOT NULL,--�ܷ�
CONSTRAINT [PK_EDU_ZZXS_25_A07_DYPJBJMZDLZF] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--��������ѧ��ÿ�ܻ��ܱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZXS_25_A08_DYPJXSMZHZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZXS_25_A08_DYPJXSMZHZ](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[XQID]  int  NOT NULL,--ѧ��ID
	[ZCID]  int  NOT NULL,--�ܴ�ID
	[XSID]  int  NOT NULL,--ѧ��ID
	[ZZF]  decimal(8, 2)  NOT NULL,--���ܷ�
	[TJJSID]  int  NOT NULL,--��ӽ�ʦID
	[TJSJ]  datetime  NOT NULL,--���ʱ��
CONSTRAINT [PK_EDU_ZZXS_25_A08_DYPJXSMZHZ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�������۶��ż�¼��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZXS_25_A11_DYPJDXJL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZXS_25_A11_DYPJDXJL](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[XQID]  int  NOT NULL,--ѧ��ID
	[GLXSPFJLID]  int  NOT NULL,--����ѧ�����ּ�¼ID
	[FSDXMC]  nvarchar(50)  NOT NULL,--���Ͷ�������
	[DHHM]  nvarchar(20)  NOT NULL,--�绰����
	[DXNR]  text  NOT NULL,--��������
	[TJSJ]  datetime  NOT NULL,--���ʱ��
	[FSSJ]  datetime  NOT NULL,--����ʱ��
	[FSZT]  int  NOT NULL,--����״̬
CONSTRAINT [PK_EDU_ZZXS_25_A11_DYPJDXJL] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--����Ϊ���ע�����
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ����Ϣ���ݱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_01_XSXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'XH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'XM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ӣ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'YWXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ƴ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'XMPY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'CYM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���֤��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'SFZJLXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���֤����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'SFZJH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ա���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'XBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ѫ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'XXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'CSRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'CSDM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'JG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'MZM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����״����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'HYZKM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����ڽ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'XYZJM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�۰�̨������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'GATQWM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����״����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'JKZKM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ò��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'ZZMMM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������ڵ�����������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'HKSZDXZQHM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'HKLBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ��������˿�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'SFSLDRK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����/����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'GJDQM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�س�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'TC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ����ϵ�绰' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'XSLXDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����ַ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'WLDZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʱͨѶ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'JSTXH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'DZXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ƭ(·��)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'ZP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ѧѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'RXXQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'NFC����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'NFCKH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ����չ���ݱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_A01_XSXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ����Ϣ���ݱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_A01_XSXX', @level2type=N'COLUMN',@level2name=N'XSXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_A01_XSXX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'רҵ������Ϣ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_A01_XSXX', @level2type=N'COLUMN',@level2name=N'ZYXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_A01_XSXX', @level2type=N'COLUMN',@level2name=N'XNID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ�ڱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_A01_XSXX', @level2type=N'COLUMN',@level2name=N'ZZXQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ͥ��ַ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_A01_XSXX', @level2type=N'COLUMN',@level2name=N'JTDZQH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ͥ��ϸ��ַ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_A01_XSXX', @level2type=N'COLUMN',@level2name=N'JTXXDZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ϸ��ַ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_A01_XSXX', @level2type=N'COLUMN',@level2name=N'HJXXDZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������ʴ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_A01_XSXX', @level2type=N'COLUMN',@level2name=N'HJXZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���˾�ѵ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_A01_XSXX', @level2type=N'COLUMN',@level2name=N'BYJX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_A01_XSXX', @level2type=N'COLUMN',@level2name=N'CSBZR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����κ���ְ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_A01_XSXX', @level2type=N'COLUMN',@level2name=N'DRZW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ը�ⵣ�ΰ�ɲ�����ְ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_A01_XSXX', @level2type=N'COLUMN',@level2name=N'YYDR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_A01_XSXX', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ҵ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_A01_XSXX', @level2type=N'COLUMN',@level2name=N'BYLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_A01_XSXX', @level2type=N'COLUMN',@level2name=N'XSLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ�ס��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_A01_XSXX', @level2type=N'COLUMN',@level2name=N'SFZS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ������ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_A01_XSXX', @level2type=N'COLUMN',@level2name=N'XSBMSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�꼶ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_A01_XSXX', @level2type=N'COLUMN',@level2name=N'ZZNJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�༶ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_A01_XSXX', @level2type=N'COLUMN',@level2name=N'ZZBJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ����ͥ��Ϣ���ݱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_01_XSJTXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ����Ϣ���ݱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_01_XSJTXX', @level2type=N'COLUMN',@level2name=N'XSXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_01_XSJTXX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ͥסַ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_01_XSJTXX', @level2type=N'COLUMN',@level2name=N'JTZZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ͥ��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_01_XSJTXX', @level2type=N'COLUMN',@level2name=N'JTYZBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ͥ�绰' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_01_XSJTXX', @level2type=N'COLUMN',@level2name=N'JTDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ͥ��ϵ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_01_XSJTXX', @level2type=N'COLUMN',@level2name=N'JTLXR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ͥ��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_01_XSJTXX', @level2type=N'COLUMN',@level2name=N'JTDZXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ͥ�˿�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_01_XSJTXX', @level2type=N'COLUMN',@level2name=N'JTRK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ͥ��Ҫ������Դ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_01_XSJTXX', @level2type=N'COLUMN',@level2name=N'JTZYSRLY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ͥ��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_01_XSJTXX', @level2type=N'COLUMN',@level2name=N'JTYSRJE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ͥ��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_01_XSJTXX', @level2type=N'COLUMN',@level2name=N'JTNSRJE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������վ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_01_XSJTXX', @level2type=N'COLUMN',@level2name=N'LJZJHCZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ����ϵ�����ݱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_A01_XSLXR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_A01_XSLXR', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_A01_XSLXR', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ����Ϣ���ݱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_A01_XSLXR', @level2type=N'COLUMN',@level2name=N'XSXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ϵ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_A01_XSLXR', @level2type=N'COLUMN',@level2name=N'GXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ϵ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_A01_XSLXR', @level2type=N'COLUMN',@level2name=N'LXRXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_A01_XSLXR', @level2type=N'COLUMN',@level2name=N'YZBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ͨ�ŵ�ַ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_A01_XSLXR', @level2type=N'COLUMN',@level2name=N'TXDZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�绰' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_A01_XSLXR', @level2type=N'COLUMN',@level2name=N'DH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ƶ��绰' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_A01_XSLXR', @level2type=N'COLUMN',@level2name=N'YDDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����绰' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_A01_XSLXR', @level2type=N'COLUMN',@level2name=N'CZDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_A01_XSLXR', @level2type=N'COLUMN',@level2name=N'DZXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����ַ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_A01_XSLXR', @level2type=N'COLUMN',@level2name=N'WLDZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʱͨѶ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_A01_XSLXR', @level2type=N'COLUMN',@level2name=N'JSTXH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ����ͥ��Ա���ݱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_02_XSJTCY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_02_XSJTCY', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_02_XSJTCY', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ����Ϣ���ݱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_02_XSJTCY', @level2type=N'COLUMN',@level2name=N'XSXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_02_XSJTCY', @level2type=N'COLUMN',@level2name=N'XM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ϵ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_02_XSJTCY', @level2type=N'COLUMN',@level2name=N'GXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ͥ��Աְҵ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_02_XSJTCY', @level2type=N'COLUMN',@level2name=N'JTCYZYM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ڵ�λ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_02_XSJTCY', @level2type=N'COLUMN',@level2name=N'SZDW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ò��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_02_XSJTCY', @level2type=N'COLUMN',@level2name=N'ZZMMM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�绰' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_02_XSJTCY', @level2type=N'COLUMN',@level2name=N'DH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ƶ��绰' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_02_XSJTCY', @level2type=N'COLUMN',@level2name=N'YDDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ����ͥ����������ݱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_A02_XSJTJJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ����Ϣ���ݱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_A02_XSJTJJ', @level2type=N'COLUMN',@level2name=N'XSXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_A02_XSJTJJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����˿�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_A02_XSJTJJ', @level2type=N'COLUMN',@level2name=N'SYRK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ͷ����˿�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_A02_XSJTJJ', @level2type=N'COLUMN',@level2name=N'LDLRK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ͥ�˾�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_A02_XSJTJJ', @level2type=N'COLUMN',@level2name=N'JTRJYSR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ͥ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_A02_XSJTJJ', @level2type=N'COLUMN',@level2name=N'JTLBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ԭ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_A02_XSJTJJ', @level2type=N'COLUMN',@level2name=N'KNYYM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ѳ̶���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_A02_XSJTJJ', @level2type=N'COLUMN',@level2name=N'KNCDM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ�ͱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_A02_XSJTJJ', @level2type=N'COLUMN',@level2name=N'SFDB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ѧǰ���������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_A02_XSJTJJ', @level2type=N'COLUMN',@level2name=N'RXQHKLBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ѧ�صͱ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_A02_XSJTJJ', @level2type=N'COLUMN',@level2name=N'JXDDBX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ���ɼ��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_06_01_XSCJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_06_01_XSCJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_06_01_XSCJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_06_01_XSCJ', @level2type=N'COLUMN',@level2name=N'XSXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�γ̺�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_06_01_XSCJ', @level2type=N'COLUMN',@level2name=N'KCH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_06_01_XSCJ', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�γ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_06_01_XSCJ', @level2type=N'COLUMN',@level2name=N'KCMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_06_01_XSCJ', @level2type=N'COLUMN',@level2name=N'XF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_06_01_XSCJ', @level2type=N'COLUMN',@level2name=N'XQMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ƽʱ�ɼ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_06_01_XSCJ', @level2type=N'COLUMN',@level2name=N'PSCJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ɼ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_06_01_XSCJ', @level2type=N'COLUMN',@level2name=N'CJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_06_01_XSCJ', @level2type=N'COLUMN',@level2name=N'KSXZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ον̹�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_06_01_XSCJ', @level2type=N'COLUMN',@level2name=N'RKJGID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ον̹���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_06_01_XSCJ', @level2type=N'COLUMN',@level2name=N'RKJGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ɼ�¼��̹�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_06_01_XSCJ', @level2type=N'COLUMN',@level2name=N'CJLRJGID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ɼ�¼��̹���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_06_01_XSCJ', @level2type=N'COLUMN',@level2name=N'CJLRJGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ɼ�¼������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_06_01_XSCJ', @level2type=N'COLUMN',@level2name=N'CJLRRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���гɼ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_06_01_XSCJ', @level2type=N'COLUMN',@level2name=N'QZCJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ĩ�ɼ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_06_01_XSCJ', @level2type=N'COLUMN',@level2name=N'QMCJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�γ��嵥ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_06_01_XSCJ', @level2type=N'COLUMN',@level2name=N'KCQDID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ɼ�����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_06_01_XSCJ', @level2type=N'COLUMN',@level2name=N'CJLXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'רҵID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_06_01_XSCJ', @level2type=N'COLUMN',@level2name=N'ZYXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�꼶ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_06_01_XSCJ', @level2type=N'COLUMN',@level2name=N'NJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�༶ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_06_01_XSCJ', @level2type=N'COLUMN',@level2name=N'BJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_06_01_XSCJ', @level2type=N'COLUMN',@level2name=N'SHZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_06_01_XSCJ', @level2type=N'COLUMN',@level2name=N'SHRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_06_01_XSCJ', @level2type=N'COLUMN',@level2name=N'KSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ���ɼ����ͱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_06_02_XSCJLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_06_02_XSCJLX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_06_02_XSCJLX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_06_02_XSCJLX', @level2type=N'COLUMN',@level2name=N'LXMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ȩ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_06_02_XSCJLX', @level2type=N'COLUMN',@level2name=N'QZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�γ��嵥ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_06_02_XSCJLX', @level2type=N'COLUMN',@level2name=N'KCQDID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ���������ݱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_01_XJSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ����Ϣ���ݱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_01_XJSJ', @level2type=N'COLUMN',@level2name=N'XSXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_01_XJSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'רҵ������Ϣ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_01_XJSJ', @level2type=N'COLUMN',@level2name=N'ZYXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ�༶���ݱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_01_XJSJ', @level2type=N'COLUMN',@level2name=N'ZZBJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ�꼶���ݱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_01_XJSJ', @level2type=N'COLUMN',@level2name=N'ZZNJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ѧ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_01_XJSJ', @level2type=N'COLUMN',@level2name=N'RXNY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_01_XJSJ', @level2type=N'COLUMN',@level2name=N'XSLBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_01_XJSJ', @level2type=N'COLUMN',@level2name=N'XZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'רҵ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_01_XJSJ', @level2type=N'COLUMN',@level2name=N'ZYM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ����ǰ״̬��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_01_XJSJ', @level2type=N'COLUMN',@level2name=N'XSDQZTM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ���춯���������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_02_XJYD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ���춯����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_02_XJYD', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_02_XJYD', @level2type=N'COLUMN',@level2name=N'XSXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_02_XJYD', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�춯�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_02_XJYD', @level2type=N'COLUMN',@level2name=N'YDLBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�춯����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_02_XJYD', @level2type=N'COLUMN',@level2name=N'YDRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�춯ԭ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_02_XJYD', @level2type=N'COLUMN',@level2name=N'YDYYM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_02_XJYD', @level2type=N'COLUMN',@level2name=N'SPRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����ĺ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_02_XJYD', @level2type=N'COLUMN',@level2name=N'SPWH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_02_XJYD', @level2type=N'COLUMN',@level2name=N'JBRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����˹���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_02_XJYD', @level2type=N'COLUMN',@level2name=N'JBRGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�춯��ԴѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_02_XJYD', @level2type=N'COLUMN',@level2name=N'YDLYXXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�춯ȥ��ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_02_XJYD', @level2type=N'COLUMN',@level2name=N'YDQXXXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�춯˵��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_02_XJYD', @level2type=N'COLUMN',@level2name=N'YDSM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ԭרҵ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_02_XJYD', @level2type=N'COLUMN',@level2name=N'YZYM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ԭרҵID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_02_XJYD', @level2type=N'COLUMN',@level2name=N'YZYID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ԭ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_02_XJYD', @level2type=N'COLUMN',@level2name=N'YBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ԭ�꼶' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_02_XJYD', @level2type=N'COLUMN',@level2name=N'YNJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��רҵ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_02_XJYD', @level2type=N'COLUMN',@level2name=N'XZYM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��רҵID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_02_XJYD', @level2type=N'COLUMN',@level2name=N'XZYID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ְ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_02_XJYD', @level2type=N'COLUMN',@level2name=N'XBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���꼶' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_02_XJYD', @level2type=N'COLUMN',@level2name=N'XNJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ע����Ϣ���������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_03_XSZCXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_03_XSZCXX', @level2type=N'COLUMN',@level2name=N'XSXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_03_XSZCXX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_03_XSZCXX', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ע��״����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_03_XSZCXX', @level2type=N'COLUMN',@level2name=N'ZCZKM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ע������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_03_XSZCXX', @level2type=N'COLUMN',@level2name=N'ZCRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_03_XSZCXX', @level2type=N'COLUMN',@level2name=N'BDRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'δע��ԭ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_03_XSZCXX', @level2type=N'COLUMN',@level2name=N'WZCYY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'δע��/δ����ȥ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_03_XSZCXX', @level2type=N'COLUMN',@level2name=N'WZCWBDQX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_03_XSZCXX', @level2type=N'COLUMN',@level2name=N'SFQJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'δ��ʱע��ѧ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_03_XSZCXX', @level2type=N'COLUMN',@level2name=N'WASZCXQM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ѧ�����������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_10_02_JXJSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_10_02_JXJSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_10_02_JXJSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ѧ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_10_02_JXJSJ', @level2type=N'COLUMN',@level2name=N'JXJMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ѧ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_10_02_JXJSJ', @level2type=N'COLUMN',@level2name=N'JXJBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ѧ��ȼ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_10_02_JXJSJ', @level2type=N'COLUMN',@level2name=N'JXJDJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ѧ��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_10_02_JXJSJ', @level2type=N'COLUMN',@level2name=N'JXJLXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ѧ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_10_02_JXJSJ', @level2type=N'COLUMN',@level2name=N'JXJE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������λ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_10_02_JXJSJ', @level2type=N'COLUMN',@level2name=N'ZZDWHGR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ѧ����Դ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_10_02_JXJSJ', @level2type=N'COLUMN',@level2name=N'JXJLYM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_10_02_JXJSJ', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_10_02_JXJSJ', @level2type=N'COLUMN',@level2name=N'SFKQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ÿѧ�ڿɻ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_10_02_JXJSJ', @level2type=N'COLUMN',@level2name=N'MXQKHJRS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ѧ�����������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_10_03_ZXJSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_10_03_ZXJSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_10_03_ZXJSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ѧ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_10_03_ZXJSJ', @level2type=N'COLUMN',@level2name=N'ZXJE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ѧ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_10_03_ZXJSJ', @level2type=N'COLUMN',@level2name=N'ZXJMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������λ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_10_03_ZXJSJ', @level2type=N'COLUMN',@level2name=N'ZZDWHGR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ѧ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_10_03_ZXJSJ', @level2type=N'COLUMN',@level2name=N'ZXJLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_10_03_ZXJSJ', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_10_03_ZXJSJ', @level2type=N'COLUMN',@level2name=N'SFKQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ÿѧ�ڿɻ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_10_03_ZXJSJ', @level2type=N'COLUMN',@level2name=N'MXQKHJRS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ����ѧ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_10_A12_XSHJXJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_10_A12_XSHJXJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_10_A12_XSHJXJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_10_A12_XSHJXJ', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_10_A12_XSHJXJ', @level2type=N'COLUMN',@level2name=N'XSXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_10_A12_XSHJXJ', @level2type=N'COLUMN',@level2name=N'JXJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ý��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_10_A12_XSHJXJ', @level2type=N'COLUMN',@level2name=N'HDJE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_10_A12_XSHJXJ', @level2type=N'COLUMN',@level2name=N'HJSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_10_A12_XSHJXJ', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ԭ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_10_A12_XSHJXJ', @level2type=N'COLUMN',@level2name=N'SQYY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_10_A12_XSHJXJ', @level2type=N'COLUMN',@level2name=N'SQSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_10_A12_XSHJXJ', @level2type=N'COLUMN',@level2name=N'SHZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_10_A12_XSHJXJ', @level2type=N'COLUMN',@level2name=N'SHSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��˽�ʦID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_10_A12_XSHJXJ', @level2type=N'COLUMN',@level2name=N'SHJSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ӽ�ʦID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_10_A12_XSHJXJ', @level2type=N'COLUMN',@level2name=N'TJJSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ������ѧ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_10_A13_XSHZXJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_10_A13_XSHZXJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_10_A13_XSHZXJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_10_A13_XSHZXJ', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_10_A13_XSHZXJ', @level2type=N'COLUMN',@level2name=N'XSXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_10_A13_XSHZXJ', @level2type=N'COLUMN',@level2name=N'ZXJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�п�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_10_A13_XSHZXJ', @level2type=N'COLUMN',@level2name=N'ZKBMH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���п���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_10_A13_XSHZXJ', @level2type=N'COLUMN',@level2name=N'YHKH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ý��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_10_A13_XSHZXJ', @level2type=N'COLUMN',@level2name=N'HDJE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ʼ��ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_10_A13_XSHZXJ', @level2type=N'COLUMN',@level2name=N'SFSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ͣ��ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_10_A13_XSHZXJ', @level2type=N'COLUMN',@level2name=N'TFSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ͣ��ԭ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_10_A13_XSHZXJ', @level2type=N'COLUMN',@level2name=N'TFYY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_10_A13_XSHZXJ', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ԭ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_10_A13_XSHZXJ', @level2type=N'COLUMN',@level2name=N'SQYY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_10_A13_XSHZXJ', @level2type=N'COLUMN',@level2name=N'SQSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_10_A13_XSHZXJ', @level2type=N'COLUMN',@level2name=N'SHZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_10_A13_XSHZXJ', @level2type=N'COLUMN',@level2name=N'SHSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��˽�ʦID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_10_A13_XSHZXJ', @level2type=N'COLUMN',@level2name=N'SHJSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ӽ�ʦID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_10_A13_XSHZXJ', @level2type=N'COLUMN',@level2name=N'TJJSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ҵ���ݱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_11_01_BYSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_11_01_BYSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_11_01_BYSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_11_01_BYSJ', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_11_01_BYSJ', @level2type=N'COLUMN',@level2name=N'XSXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ѧҵ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_11_01_BYSJ', @level2type=N'COLUMN',@level2name=N'JSXYNY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ѧҵ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_11_01_BYSJ', @level2type=N'COLUMN',@level2name=N'JSXYM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ҵ֤���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_11_01_BYSJ', @level2type=N'COLUMN',@level2name=N'BYZSH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_11_01_BYSJ', @level2type=N'COLUMN',@level2name=N'FFRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ�֤����ȡ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_11_01_BYSJ', @level2type=N'COLUMN',@level2name=N'SFZSLQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ӽ�ʦID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_11_01_BYSJ', @level2type=N'COLUMN',@level2name=N'TJJSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_11_01_BYSJ', @level2type=N'COLUMN',@level2name=N'TJSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_11_01_BYSJ', @level2type=N'COLUMN',@level2name=N'SHZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��˽�ʦID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_11_01_BYSJ', @level2type=N'COLUMN',@level2name=N'SHJSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_11_01_BYSJ', @level2type=N'COLUMN',@level2name=N'SHSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���Ż������������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_12_A01_STJBSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_12_A01_STJBSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_12_A01_STJBSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_12_A01_STJBSJ', @level2type=N'COLUMN',@level2name=N'STMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ű��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_12_A01_STJBSJ', @level2type=N'COLUMN',@level2name=N'STBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_12_A01_STJBSJ', @level2type=N'COLUMN',@level2name=N'CLRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����Ŀ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_12_A01_STJBSJ', @level2type=N'COLUMN',@level2name=N'CLMD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʼ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_12_A01_STJBSJ', @level2type=N'COLUMN',@level2name=N'CSR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��׼����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_12_A01_STJBSJ', @level2type=N'COLUMN',@level2name=N'PZBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_12_A01_STJBSJ', @level2type=N'COLUMN',@level2name=N'STXZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ҫ���ʽ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_12_A01_STJBSJ', @level2type=N'COLUMN',@level2name=N'ZYHDXS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_12_A01_STJBSJ', @level2type=N'COLUMN',@level2name=N'RS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ǰ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_12_A01_STJBSJ', @level2type=N'COLUMN',@level2name=N'DQFZR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����˵绰' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_12_A01_STJBSJ', @level2type=N'COLUMN',@level2name=N'FZRDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ָ����ʦ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_12_A01_STJBSJ', @level2type=N'COLUMN',@level2name=N'ZDLS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ָ����ʦ�绰' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_12_A01_STJBSJ', @level2type=N'COLUMN',@level2name=N'ZDLSDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ų�Ա��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_12_A02_STCY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_12_A02_STCY', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_12_A02_STCY', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_12_A02_STCY', @level2type=N'COLUMN',@level2name=N'STID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ű��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_12_A02_STCY', @level2type=N'COLUMN',@level2name=N'STBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_12_A02_STCY', @level2type=N'COLUMN',@level2name=N'XM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_12_A02_STCY', @level2type=N'COLUMN',@level2name=N'XSXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ���༶ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_12_A02_STCY', @level2type=N'COLUMN',@level2name=N'BJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_12_A02_STCY', @level2type=N'COLUMN',@level2name=N'CDRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ְ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_12_A02_STCY', @level2type=N'COLUMN',@level2name=N'STZW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_12_A02_STCY', @level2type=N'COLUMN',@level2name=N'GZNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_12_A02_STCY', @level2type=N'COLUMN',@level2name=N'STPJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ǰ״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_12_A02_STCY', @level2type=N'COLUMN',@level2name=N'DQZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_12_A02_STCY', @level2type=N'COLUMN',@level2name=N'TJRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_12_A02_STCY', @level2type=N'COLUMN',@level2name=N'SHRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_12_A02_STCY', @level2type=N'COLUMN',@level2name=N'SHSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_12_A02_STCY', @level2type=N'COLUMN',@level2name=N'SHZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ųɼ����ͱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_12_A03_STCJLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_12_A03_STCJLX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_12_A03_STCJLX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_12_A03_STCJLX', @level2type=N'COLUMN',@level2name=N'CJLXMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ�����ųɼ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_12_A04_XSSTCJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_12_A04_XSSTCJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_12_A04_XSSTCJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_12_A04_XSSTCJ', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ų�Ա��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_12_A04_XSSTCJ', @level2type=N'COLUMN',@level2name=N'STCYID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ɼ�����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_12_A04_XSSTCJ', @level2type=N'COLUMN',@level2name=N'CJLXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_12_A04_XSSTCJ', @level2type=N'COLUMN',@level2name=N'FS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_12_A04_XSSTCJ', @level2type=N'COLUMN',@level2name=N'TJSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_12_A04_XSSTCJ', @level2type=N'COLUMN',@level2name=N'TJRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_12_A04_XSSTCJ', @level2type=N'COLUMN',@level2name=N'STID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��������Ŀ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_14_A01_XSKHXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_14_A01_XSKHXM', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_14_A01_XSKHXM', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ŀ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_14_A01_XSKHXM', @level2type=N'COLUMN',@level2name=N'XMMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ�����˱����ݱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_14_A02_XSKHBSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_14_A02_XSKHBSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_14_A02_XSKHBSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���˱�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_14_A02_XSKHBSJ', @level2type=N'COLUMN',@level2name=N'KHBMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���˰༶�����б�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_14_A02_XSKHBSJ', @level2type=N'COLUMN',@level2name=N'KHBJDMLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ĿID�б�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_14_A02_XSKHBSJ', @level2type=N'COLUMN',@level2name=N'KHXMIDLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���˽�ʦ�����б�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_14_A02_XSKHBSJ', @level2type=N'COLUMN',@level2name=N'KHJSMCLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���˽�ʦID�б�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_14_A02_XSKHBSJ', @level2type=N'COLUMN',@level2name=N'KHJSIDLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ���ճ���Ϊ�淶�������ݱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_14_A03_XSRCXWGFKHSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_14_A03_XSRCXWGFKHSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_14_A03_XSRCXWGFKHSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���˰༶����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_14_A03_XSRCXWGFKHSJ', @level2type=N'COLUMN',@level2name=N'KHBJDM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���˱�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_14_A03_XSRCXWGFKHSJ', @level2type=N'COLUMN',@level2name=N'KHBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ĿID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_14_A03_XSRCXWGFKHSJ', @level2type=N'COLUMN',@level2name=N'KHXMID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���˷�ֵ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_14_A03_XSRCXWGFKHSJ', @level2type=N'COLUMN',@level2name=N'KHFZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_14_A03_XSRCXWGFKHSJ', @level2type=N'COLUMN',@level2name=N'KHSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��¼��ʦID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_14_A03_XSRCXWGFKHSJ', @level2type=N'COLUMN',@level2name=N'JLJSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ����λһ��ֵ�����ݱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_14_A04_XSWWYTZQSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_14_A04_XSWWYTZQSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_14_A04_XSWWYTZQSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ֵ����ĿID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_14_A04_XSWWYTZQSJ', @level2type=N'COLUMN',@level2name=N'ZQXMID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ѧ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_14_A04_XSWWYTZQSJ', @level2type=N'COLUMN',@level2name=N'JXBMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ֵ����Ա����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_14_A04_XSWWYTZQSJ', @level2type=N'COLUMN',@level2name=N'ZQRYLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ֵ����ԱID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_14_A04_XSWWYTZQSJ', @level2type=N'COLUMN',@level2name=N'ZQRYID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ֵ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_14_A04_XSWWYTZQSJ', @level2type=N'COLUMN',@level2name=N'ZQNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ֵ��ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_14_A04_XSWWYTZQSJ', @level2type=N'COLUMN',@level2name=N'ZQSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_14_A04_XSWWYTZQSJ', @level2type=N'COLUMN',@level2name=N'TJSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ����λһ��ֵ����Ŀ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_14_A05_XSWWYTZQXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_14_A05_XSWWYTZQXM', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_14_A05_XSWWYTZQXM', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ֵ����Ŀ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_14_A05_XSWWYTZQXM', @level2type=N'COLUMN',@level2name=N'ZQXMMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ����λһ��ֵ����Ա���ű�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_14_A06_XSWWYTZQRYAP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_14_A06_XSWWYTZQRYAP', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_14_A06_XSWWYTZQRYAP', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ֵ����ĿID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_14_A06_XSWWYTZQRYAP', @level2type=N'COLUMN',@level2name=N'ZQXMID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ֵ����Ա����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_14_A06_XSWWYTZQRYAP', @level2type=N'COLUMN',@level2name=N'ZQRYLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ֵ����ԱID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_14_A06_XSWWYTZQRYAP', @level2type=N'COLUMN',@level2name=N'ZQRYID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ֵ�ڿ�ʼʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_14_A06_XSWWYTZQRYAP', @level2type=N'COLUMN',@level2name=N'ZQKSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ֵ�ڽ���ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_14_A06_XSWWYTZQRYAP', @level2type=N'COLUMN',@level2name=N'ZQJSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����ƺ����ݱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_15_A01_RYCH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_15_A01_RYCH', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_15_A01_RYCH', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ƺ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_15_A01_RYCH', @level2type=N'COLUMN',@level2name=N'CHMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���赥λ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_15_A01_RYCH', @level2type=N'COLUMN',@level2name=N'SYDW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_15_A01_RYCH', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_15_A01_RYCH', @level2type=N'COLUMN',@level2name=N'SFKQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ�������ƺű�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_15_A02_RYCHSQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_15_A02_RYCHSQ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_15_A02_RYCHSQ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_15_A02_RYCHSQ', @level2type=N'COLUMN',@level2name=N'XSXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_15_A02_RYCHSQ', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����ƺ�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_15_A02_RYCHSQ', @level2type=N'COLUMN',@level2name=N'RYCHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_15_A02_RYCHSQ', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ԭ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_15_A02_RYCHSQ', @level2type=N'COLUMN',@level2name=N'SQYY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_15_A02_RYCHSQ', @level2type=N'COLUMN',@level2name=N'SQSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_15_A02_RYCHSQ', @level2type=N'COLUMN',@level2name=N'SHZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_15_A02_RYCHSQ', @level2type=N'COLUMN',@level2name=N'SHSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��˽�ʦID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_15_A02_RYCHSQ', @level2type=N'COLUMN',@level2name=N'SHJSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ӽ�ʦID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_15_A02_RYCHSQ', @level2type=N'COLUMN',@level2name=N'TJJSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ƶ�������ͱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_16_A01_PKSLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_16_A01_PKSLX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_16_A01_PKSLX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_16_A01_PKSLX', @level2type=N'COLUMN',@level2name=N'LXMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_16_A01_PKSLX', @level2type=N'COLUMN',@level2name=N'NR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_16_A01_PKSLX', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_16_A01_PKSLX', @level2type=N'COLUMN',@level2name=N'SFKQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ƶ������Ϣ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_16_A02_PKSXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_16_A02_PKSXX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_16_A02_PKSXX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_16_A02_PKSXX', @level2type=N'COLUMN',@level2name=N'XSXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_16_A02_PKSXX', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ƶ��������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_16_A02_PKSXX', @level2type=N'COLUMN',@level2name=N'PKSLXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_16_A02_PKSXX', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ԭ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_16_A02_PKSXX', @level2type=N'COLUMN',@level2name=N'SQYY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_16_A02_PKSXX', @level2type=N'COLUMN',@level2name=N'SQSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_16_A02_PKSXX', @level2type=N'COLUMN',@level2name=N'SHZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_16_A02_PKSXX', @level2type=N'COLUMN',@level2name=N'SHSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��˽�ʦID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_16_A02_PKSXX', @level2type=N'COLUMN',@level2name=N'SHJSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ӽ�ʦID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_16_A02_PKSXX', @level2type=N'COLUMN',@level2name=N'TJJSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ա��Ϣ��չ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_17_A01_TYXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_17_A01_TYXX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_17_A01_TYXX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�༶ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_17_A01_TYXX', @level2type=N'COLUMN',@level2name=N'BJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_17_A01_TYXX', @level2type=N'COLUMN',@level2name=N'XSXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_17_A01_TYXX', @level2type=N'COLUMN',@level2name=N'RTSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ת���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_17_A01_TYXX', @level2type=N'COLUMN',@level2name=N'ZRD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ת��ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_17_A01_TYXX', @level2type=N'COLUMN',@level2name=N'ZRSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ת��ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_17_A01_TYXX', @level2type=N'COLUMN',@level2name=N'ZCSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ǰ״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_17_A01_TYXX', @level2type=N'COLUMN',@level2name=N'DQZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����ʦID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_17_A01_TYXX', @level2type=N'COLUMN',@level2name=N'JBJSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_17_A01_TYXX', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ŷ��սɼ�¼��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_17_A02_TFSJJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_17_A02_TFSJJL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_17_A02_TFSJJL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_17_A02_TFSJJL', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_17_A02_TFSJJL', @level2type=N'COLUMN',@level2name=N'XSXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ա��Ϣ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_17_A02_TFSJJL', @level2type=N'COLUMN',@level2name=N'TYXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�սɽ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_17_A02_TFSJJL', @level2type=N'COLUMN',@level2name=N'SJJE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_17_A02_TFSJJL', @level2type=N'COLUMN',@level2name=N'TJSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�༶����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_17_A02_TFSJJL', @level2type=N'COLUMN',@level2name=N'BJMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�뵳������Ա���ݱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_17_A03_RDJJTY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_17_A03_RDJJTY', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_17_A03_RDJJTY', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_17_A03_RDJJTY', @level2type=N'COLUMN',@level2name=N'XSXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_17_A03_RDJJTY', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ԭ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_17_A03_RDJJTY', @level2type=N'COLUMN',@level2name=N'PDYY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_17_A03_RDJJTY', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_17_A03_RDJJTY', @level2type=N'COLUMN',@level2name=N'TJSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ӽ�ʦID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_17_A03_RDJJTY', @level2type=N'COLUMN',@level2name=N'TJJSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�༶����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_17_A03_RDJJTY', @level2type=N'COLUMN',@level2name=N'BJMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ա˼��㱨���ݱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_17_A04_TYSXHB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_17_A04_TYSXHB', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_17_A04_TYSXHB', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_17_A04_TYSXHB', @level2type=N'COLUMN',@level2name=N'XSXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_17_A04_TYSXHB', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�㱨����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_17_A04_TYSXHB', @level2type=N'COLUMN',@level2name=N'HBNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_17_A04_TYSXHB', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_17_A04_TYSXHB', @level2type=N'COLUMN',@level2name=N'TJSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ӽ�ʦID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_17_A04_TYSXHB', @level2type=N'COLUMN',@level2name=N'TJJSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�༶����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_17_A04_TYSXHB', @level2type=N'COLUMN',@level2name=N'BJMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Υ�����ͱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_18_A01_WJLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_18_A01_WJLX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_18_A01_WJLX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Υ����������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_18_A01_WJLX', @level2type=N'COLUMN',@level2name=N'WJLXMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Υ�����ݷ�Χ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_18_A01_WJLX', @level2type=N'COLUMN',@level2name=N'WJNRFW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_18_A01_WJLX', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������ͱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_18_A02_CFLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_18_A02_CFLX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_18_A02_CFLX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_18_A02_CFLX', @level2type=N'COLUMN',@level2name=N'CFLXMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ֹ���λ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_18_A02_CFLX', @level2type=N'COLUMN',@level2name=N'CFGLDW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ���ڲ鿴��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_18_A02_CFLX', @level2type=N'COLUMN',@level2name=N'SFCZCKQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�鿴��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_18_A02_CFLX', @level2type=N'COLUMN',@level2name=N'CKQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_18_A02_CFLX', @level2type=N'COLUMN',@level2name=N'SFYXJC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_18_A02_CFLX', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ֲ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_18_A03_JCCFBZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_18_A03_JCCFBZ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_18_A03_JCCFBZ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_18_A03_JCCFBZ', @level2type=N'COLUMN',@level2name=N'CFLXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_18_A03_JCCFBZ', @level2type=N'COLUMN',@level2name=N'BZMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����ID�б�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_18_A03_JCCFBZ', @level2type=N'COLUMN',@level2name=N'SHRIDLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����������б�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_18_A03_JCCFBZ', @level2type=N'COLUMN',@level2name=N'SHRMCLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��һ����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_18_A03_JCCFBZ', @level2type=N'COLUMN',@level2name=N'SYBZID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��һ����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_18_A03_JCCFBZ', @level2type=N'COLUMN',@level2name=N'XYBZID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_18_A03_JCCFBZ', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��������Ϣ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_18_A04_XSCFXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_18_A04_XSCFXX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_18_A04_XSCFXX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_18_A04_XSCFXX', @level2type=N'COLUMN',@level2name=N'XSXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Υ������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_18_A04_XSCFXX', @level2type=N'COLUMN',@level2name=N'WJLXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_18_A04_XSCFXX', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ǰ״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_18_A04_XSCFXX', @level2type=N'COLUMN',@level2name=N'DQZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Υ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_18_A04_XSCFXX', @level2type=N'COLUMN',@level2name=N'WJQK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���鴦������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_18_A04_XSCFXX', @level2type=N'COLUMN',@level2name=N'JYCFLXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ϱ�ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_18_A04_XSCFXX', @level2type=N'COLUMN',@level2name=N'SBSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ϱ���ʦID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_18_A04_XSCFXX', @level2type=N'COLUMN',@level2name=N'SBJSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���մ�������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_18_A04_XSCFXX', @level2type=N'COLUMN',@level2name=N'ZZCFLXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_18_A04_XSCFXX', @level2type=N'COLUMN',@level2name=N'SHSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��˽�ʦID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_18_A04_XSCFXX', @level2type=N'COLUMN',@level2name=N'SHJSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_18_A04_XSCFXX', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_18_A04_XSCFXX', @level2type=N'COLUMN',@level2name=N'FSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_18_A04_XSCFXX', @level2type=N'COLUMN',@level2name=N'JCSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����ʦID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_18_A04_XSCFXX', @level2type=N'COLUMN',@level2name=N'JCJSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_18_A05_JCCFSQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_18_A05_JCCFSQ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_18_A05_JCCFSQ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��������ϢID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_18_A05_JCCFSQ', @level2type=N'COLUMN',@level2name=N'XSCFXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ԭ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_18_A05_JCCFSQ', @level2type=N'COLUMN',@level2name=N'JCYY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_18_A05_JCCFSQ', @level2type=N'COLUMN',@level2name=N'YJTL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ǰ״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_18_A05_JCCFSQ', @level2type=N'COLUMN',@level2name=N'DQZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ǰ����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_18_A05_JCCFSQ', @level2type=N'COLUMN',@level2name=N'DQBZID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_18_A05_JCCFSQ', @level2type=N'COLUMN',@level2name=N'SQSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_18_A05_JCCFSQ', @level2type=N'COLUMN',@level2name=N'SQXSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����˻�ԭ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_18_A05_JCCFSQ', @level2type=N'COLUMN',@level2name=N'SQTHYY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_18_A05_JCCFSQ', @level2type=N'COLUMN',@level2name=N'ZHSHSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����˽�ʦID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_18_A05_JCCFSQ', @level2type=N'COLUMN',@level2name=N'ZHSHJSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_18_A05_JCCFSQ', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������������˼�¼��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_18_A06_JCCFSQSHJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_18_A06_JCCFSQSHJL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_18_A06_JCCFSQSHJL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��������ϢID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_18_A06_JCCFSQSHJL', @level2type=N'COLUMN',@level2name=N'XSCFXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_18_A06_JCCFSQSHJL', @level2type=N'COLUMN',@level2name=N'JCCFSQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_18_A06_JCCFSQSHJL', @level2type=N'COLUMN',@level2name=N'BZID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��˽��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_18_A06_JCCFSQSHJL', @level2type=N'COLUMN',@level2name=N'SHJG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_18_A06_JCCFSQSHJL', @level2type=N'COLUMN',@level2name=N'SHSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��˽�ʦID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_18_A06_JCCFSQSHJL', @level2type=N'COLUMN',@level2name=N'SHJSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_18_A06_JCCFSQSHJL', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ģ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_18_A07_BGMB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_18_A07_BGMB', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_18_A07_BGMB', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ģ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_18_A07_BGMB', @level2type=N'COLUMN',@level2name=N'MBMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_18_A07_BGMB', @level2type=N'COLUMN',@level2name=N'NR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_18_A08_BG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_18_A08_BG', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_18_A08_BG', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_18_A08_BG', @level2type=N'COLUMN',@level2name=N'BT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_18_A08_BG', @level2type=N'COLUMN',@level2name=N'NR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_18_A08_BG', @level2type=N'COLUMN',@level2name=N'FBR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_18_A08_BG', @level2type=N'COLUMN',@level2name=N'FBSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ί���ݱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_19_A01_BWSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_19_A01_BWSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_19_A01_BWSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ί����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_19_A01_BWSJ', @level2type=N'COLUMN',@level2name=N'BWMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ί��Ա��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_19_A02_BWCY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_19_A02_BWCY', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_19_A02_BWCY', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ίID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_19_A02_BWCY', @level2type=N'COLUMN',@level2name=N'BWID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_19_A02_BWCY', @level2type=N'COLUMN',@level2name=N'XSXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_19_A02_BWCY', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'רҵID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_19_A02_BWCY', @level2type=N'COLUMN',@level2name=N'ZYXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�꼶ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_19_A02_BWCY', @level2type=N'COLUMN',@level2name=N'NJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�༶ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_19_A02_BWCY', @level2type=N'COLUMN',@level2name=N'BJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʦ���ݱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_20_A01_DSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_20_A01_DSSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_20_A01_DSSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_20_A01_DSSJ', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʦID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_20_A01_DSSJ', @level2type=N'COLUMN',@level2name=N'JSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʦ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_20_A01_DSSJ', @level2type=N'COLUMN',@level2name=N'DSXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʦ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_20_A01_DSSJ', @level2type=N'COLUMN',@level2name=N'DSJS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�༶ID�б�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_20_A01_DSSJ', @level2type=N'COLUMN',@level2name=N'BJIDLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�༶�����б�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_20_A01_DSSJ', @level2type=N'COLUMN',@level2name=N'BJMCLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ѡ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_20_A01_DSSJ', @level2type=N'COLUMN',@level2name=N'ZDKXZRS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����ѡ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_20_A01_DSSJ', @level2type=N'COLUMN',@level2name=N'ZDXXZRS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ѡ��ʦ��¼��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_20_A02_XSXZDSJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_20_A02_XSXZDSJL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_20_A02_XSXZDSJL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʦID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_20_A02_XSXZDSJL', @level2type=N'COLUMN',@level2name=N'DSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_20_A02_XSXZDSJL', @level2type=N'COLUMN',@level2name=N'XSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���߱�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_21_A01_ZXBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_21_A01_ZXBM', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_21_A01_ZXBM', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_21_A01_ZXBM', @level2type=N'COLUMN',@level2name=N'XM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ա�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_21_A01_ZXBM', @level2type=N'COLUMN',@level2name=N'XB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_21_A01_ZXBM', @level2type=N'COLUMN',@level2name=N'SG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_21_A01_ZXBM', @level2type=N'COLUMN',@level2name=N'TZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ҵѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_21_A01_ZXBM', @level2type=N'COLUMN',@level2name=N'BYXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ҵ�༶' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_21_A01_ZXBM', @level2type=N'COLUMN',@level2name=N'BYBJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�п��ɼ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_21_A01_ZXBM', @level2type=N'COLUMN',@level2name=N'ZKCJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�־Ըһ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_21_A01_ZXBM', @level2type=N'COLUMN',@level2name=N'TBZYY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�־Ը��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_21_A01_ZXBM', @level2type=N'COLUMN',@level2name=N'TBZYE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ҳ���ϵ�绰' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_21_A01_ZXBM', @level2type=N'COLUMN',@level2name=N'JZLXDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ����ϵ�绰' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_21_A01_ZXBM', @level2type=N'COLUMN',@level2name=N'XSLXDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'סУ/ͨУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_21_A01_ZXBM', @level2type=N'COLUMN',@level2name=N'ZXTX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'׼��֤��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_21_A01_ZXBM', @level2type=N'COLUMN',@level2name=N'ZKZH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ���ӵ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_21_A01_ZXBM', @level2type=N'COLUMN',@level2name=N'SFFCTJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���֤����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_21_A01_ZXBM', @level2type=N'COLUMN',@level2name=N'SFZHM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ַ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_21_A01_ZXBM', @level2type=N'COLUMN',@level2name=N'DZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_21_A01_ZXBM', @level2type=N'COLUMN',@level2name=N'JF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����IP' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_21_A01_ZXBM', @level2type=N'COLUMN',@level2name=N'BMIP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����������ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_22_A01_ZSGLCZXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_22_A01_ZSGLCZXX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_22_A01_ZSGLCZXX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_22_A01_ZSGLCZXX', @level2type=N'COLUMN',@level2name=N'XXMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������������ƻ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_22_A02_ZSGLZSJH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_22_A02_ZSGLZSJH', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_22_A02_ZSGLZSJH', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ƻ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_22_A02_ZSGLZSJH', @level2type=N'COLUMN',@level2name=N'JHMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_22_A02_ZSGLZSJH', @level2type=N'COLUMN',@level2name=N'XNID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_22_A02_ZSGLZSJH', @level2type=N'COLUMN',@level2name=N'KG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������������ƻ��굥��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_22_A03_ZSGLZSJHXD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_22_A03_ZSGLZSJHXD', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_22_A03_ZSGLZSJHXD', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ƻ�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_22_A03_ZSGLZSJHXD', @level2type=N'COLUMN',@level2name=N'JHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'רҵ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_22_A03_ZSGLZSJHXD', @level2type=N'COLUMN',@level2name=N'ZYMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'רҵID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_22_A03_ZSGLZSJHXD', @level2type=N'COLUMN',@level2name=N'ZYID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_22_A03_ZSGLZSJHXD', @level2type=N'COLUMN',@level2name=N'ZSRS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'רҵ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_22_A03_ZSGLZSJHXD', @level2type=N'COLUMN',@level2name=N'ZYJS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������������Ϣ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_22_A04_ZSGLXSXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_22_A04_ZSGLXSXX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_22_A04_ZSGLXSXX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_22_A04_ZSGLXSXX', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_22_A04_ZSGLXSXX', @level2type=N'COLUMN',@level2name=N'XM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ա�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_22_A04_ZSGLXSXX', @level2type=N'COLUMN',@level2name=N'XB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ�סУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_22_A04_ZSGLXSXX', @level2type=N'COLUMN',@level2name=N'SFZX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ϵ�绰' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_22_A04_ZSGLXSXX', @level2type=N'COLUMN',@level2name=N'LXDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ҵѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_22_A04_ZSGLXSXX', @level2type=N'COLUMN',@level2name=N'BYXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_22_A04_ZSGLXSXX', @level2type=N'COLUMN',@level2name=N'YW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ѧ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_22_A04_ZSGLXSXX', @level2type=N'COLUMN',@level2name=N'SX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ӣ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_22_A04_ZSGLXSXX', @level2type=N'COLUMN',@level2name=N'YY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_22_A04_ZSGLXSXX', @level2type=N'COLUMN',@level2name=N'SZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ѧ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_22_A04_ZSGLXSXX', @level2type=N'COLUMN',@level2name=N'KX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_22_A04_ZSGLXSXX', @level2type=N'COLUMN',@level2name=N'TY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ʵ��ӷ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_22_A04_ZSGLXSXX', @level2type=N'COLUMN',@level2name=N'SYJF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ܷ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_22_A04_ZSGLXSXX', @level2type=N'COLUMN',@level2name=N'ZF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�س�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_22_A04_ZSGLXSXX', @level2type=N'COLUMN',@level2name=N'TC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_22_A04_ZSGLXSXX', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��һ־ԸID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_22_A04_ZSGLXSXX', @level2type=N'COLUMN',@level2name=N'DYZYID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ڶ�־ԸID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_22_A04_ZSGLXSXX', @level2type=N'COLUMN',@level2name=N'DEZYID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����־ԸID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_22_A04_ZSGLXSXX', @level2type=N'COLUMN',@level2name=N'DSZYID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʱID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_22_A04_ZSGLXSXX', @level2type=N'COLUMN',@level2name=N'LSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'¼��ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_22_A04_ZSGLXSXX', @level2type=N'COLUMN',@level2name=N'LRSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'¼����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_22_A04_ZSGLXSXX', @level2type=N'COLUMN',@level2name=N'LRR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'¼ȡʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_22_A04_ZSGLXSXX', @level2type=N'COLUMN',@level2name=N'LQSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'¼ȡ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_22_A04_ZSGLXSXX', @level2type=N'COLUMN',@level2name=N'LQR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'¼ȡרҵID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_22_A04_ZSGLXSXX', @level2type=N'COLUMN',@level2name=N'LQZYID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_22_A04_ZSGLXSXX', @level2type=N'COLUMN',@level2name=N'BH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ɷѽ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_22_A04_ZSGLXSXX', @level2type=N'COLUMN',@level2name=N'JFJE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_22_A04_ZSGLXSXX', @level2type=N'COLUMN',@level2name=N'XNID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���������ҵ֤����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_22_A05_ZSGLJYZM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_22_A05_ZSGLJYZM', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_22_A05_ZSGLJYZM', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_22_A05_ZSGLJYZM', @level2type=N'COLUMN',@level2name=N'XSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_22_A05_ZSGLJYZM', @level2type=N'COLUMN',@level2name=N'XSXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ա�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_22_A05_ZSGLJYZM', @level2type=N'COLUMN',@level2name=N'XB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'רҵ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_22_A05_ZSGLJYZM', @level2type=N'COLUMN',@level2name=N'ZY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ͥ��ַ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_22_A05_ZSGLJYZM', @level2type=N'COLUMN',@level2name=N'JTDZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ϵ�绰' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_22_A05_ZSGLJYZM', @level2type=N'COLUMN',@level2name=N'LXDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ҵ��λ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_22_A05_ZSGLJYZM', @level2type=N'COLUMN',@level2name=N'JYDW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��λ�绰' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_22_A05_ZSGLJYZM', @level2type=N'COLUMN',@level2name=N'DWDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ҵ��λ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_22_A05_ZSGLJYZM', @level2type=N'COLUMN',@level2name=N'JYGW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ƽ��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_22_A05_ZSGLJYZM', @level2type=N'COLUMN',@level2name=N'PJYSR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ҵʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_22_A05_ZSGLJYZM', @level2type=N'COLUMN',@level2name=N'JYSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'רҵ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_22_A05_ZSGLJYZM', @level2type=N'COLUMN',@level2name=N'ZYDM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�༶ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_22_A05_ZSGLJYZM', @level2type=N'COLUMN',@level2name=N'BJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_22_A05_ZSGLJYZM', @level2type=N'COLUMN',@level2name=N'XJH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ֻ�רҵ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_22_A05_ZSGLJYZM', @level2type=N'COLUMN',@level2name=N'GZHZY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ�Կ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_22_A05_ZSGLJYZM', @level2type=N'COLUMN',@level2name=N'SFDK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ҵ�ص�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_22_A05_ZSGLJYZM', @level2type=N'COLUMN',@level2name=N'JYDD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ҵȥ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_22_A05_ZSGLJYZM', @level2type=N'COLUMN',@level2name=N'JYQX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ص�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_22_A05_ZSGLJYZM', @level2type=N'COLUMN',@level2name=N'DD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ҵ��ͬ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_22_A05_ZSGLJYZM', @level2type=N'COLUMN',@level2name=N'JYHT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�籣' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_22_A05_ZSGLJYZM', @level2type=N'COLUMN',@level2name=N'SB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������۴����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_25_A01_DYPJDL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_25_A01_DYPJDL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_25_A01_DYPJDL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ֶ�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_25_A01_DYPJDL', @level2type=N'COLUMN',@level2name=N'PFDXLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_25_A01_DYPJDL', @level2type=N'COLUMN',@level2name=N'MC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����˳��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_25_A01_DYPJDL', @level2type=N'COLUMN',@level2name=N'PLSX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������С���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_25_A02_DYPJXL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_25_A02_DYPJXL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_25_A02_DYPJXL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ֶ�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_25_A02_DYPJXL', @level2type=N'COLUMN',@level2name=N'PFDXLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_25_A02_DYPJXL', @level2type=N'COLUMN',@level2name=N'DLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_25_A02_DYPJXL', @level2type=N'COLUMN',@level2name=N'MC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ĭ�Ϸ�ֵ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_25_A02_DYPJXL', @level2type=N'COLUMN',@level2name=N'MRFZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ܷ��޸ķ�ֵ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_25_A02_DYPJXL', @level2type=N'COLUMN',@level2name=N'NFXGFZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ֵ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_25_A02_DYPJXL', @level2type=N'COLUMN',@level2name=N'FZSX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ֵ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_25_A02_DYPJXL', @level2type=N'COLUMN',@level2name=N'FZXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����˳��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_25_A02_DYPJXL', @level2type=N'COLUMN',@level2name=N'PLSX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������۰༶���ּ�¼��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_25_A03_DYPJBJPFJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_25_A03_DYPJBJPFJL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_25_A03_DYPJBJPFJL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_25_A03_DYPJBJPFJL', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ܴ�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_25_A03_DYPJBJPFJL', @level2type=N'COLUMN',@level2name=N'ZCID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʦID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_25_A03_DYPJBJPFJL', @level2type=N'COLUMN',@level2name=N'JSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�༶ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_25_A03_DYPJBJPFJL', @level2type=N'COLUMN',@level2name=N'BJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_25_A03_DYPJBJPFJL', @level2type=N'COLUMN',@level2name=N'DLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'С��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_25_A03_DYPJBJPFJL', @level2type=N'COLUMN',@level2name=N'XLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_25_A03_DYPJBJPFJL', @level2type=N'COLUMN',@level2name=N'SJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ֵ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_25_A03_DYPJBJPFJL', @level2type=N'COLUMN',@level2name=N'FZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_25_A03_DYPJBJPFJL', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_25_A03_DYPJBJPFJL', @level2type=N'COLUMN',@level2name=N'ZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_25_A03_DYPJBJPFJL', @level2type=N'COLUMN',@level2name=N'TJSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_25_A03_DYPJBJPFJL', @level2type=N'COLUMN',@level2name=N'XFZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���������ʦID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_25_A03_DYPJBJPFJL', @level2type=N'COLUMN',@level2name=N'XFSQJSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_25_A03_DYPJBJPFJL', @level2type=N'COLUMN',@level2name=N'XFSQSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_25_A03_DYPJBJPFJL', @level2type=N'COLUMN',@level2name=N'XFLY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ִ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_25_A03_DYPJBJPFJL', @level2type=N'COLUMN',@level2name=N'XFCLJG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ִ����ʦID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_25_A03_DYPJBJPFJL', @level2type=N'COLUMN',@level2name=N'XFCLJSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ִ���ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_25_A03_DYPJBJPFJL', @level2type=N'COLUMN',@level2name=N'XFCLSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_25_A03_DYPJBJPFJL', @level2type=N'COLUMN',@level2name=N'CLYJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ɾ��״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_25_A03_DYPJBJPFJL', @level2type=N'COLUMN',@level2name=N'SCZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ɾ����ʦID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_25_A03_DYPJBJPFJL', @level2type=N'COLUMN',@level2name=N'SCJSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ɾ��ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_25_A03_DYPJBJPFJL', @level2type=N'COLUMN',@level2name=N'SCSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������ѧ�����ּ�¼��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_25_A04_DYPJXSPFJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_25_A04_DYPJXSPFJL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_25_A04_DYPJXSPFJL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_25_A04_DYPJXSPFJL', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ܴ�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_25_A04_DYPJXSPFJL', @level2type=N'COLUMN',@level2name=N'ZCID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʦID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_25_A04_DYPJXSPFJL', @level2type=N'COLUMN',@level2name=N'JSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�༶ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_25_A04_DYPJXSPFJL', @level2type=N'COLUMN',@level2name=N'BJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_25_A04_DYPJXSPFJL', @level2type=N'COLUMN',@level2name=N'XSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_25_A04_DYPJXSPFJL', @level2type=N'COLUMN',@level2name=N'DLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'С��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_25_A04_DYPJXSPFJL', @level2type=N'COLUMN',@level2name=N'XLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_25_A04_DYPJXSPFJL', @level2type=N'COLUMN',@level2name=N'SJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ֵ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_25_A04_DYPJXSPFJL', @level2type=N'COLUMN',@level2name=N'FZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_25_A04_DYPJXSPFJL', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_25_A04_DYPJXSPFJL', @level2type=N'COLUMN',@level2name=N'ZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_25_A04_DYPJXSPFJL', @level2type=N'COLUMN',@level2name=N'TJSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����༶���ּ�¼ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_25_A04_DYPJXSPFJL', @level2type=N'COLUMN',@level2name=N'GLBJPFJLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ɾ��״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_25_A04_DYPJXSPFJL', @level2type=N'COLUMN',@level2name=N'SCZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ɾ����ʦID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_25_A04_DYPJXSPFJL', @level2type=N'COLUMN',@level2name=N'SCJSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ɾ��ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_25_A04_DYPJXSPFJL', @level2type=N'COLUMN',@level2name=N'SCSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������۰༶�ȵڱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_25_A05_DYPJBJDD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_25_A05_DYPJBJDD', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_25_A05_DYPJBJDD', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ȵ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_25_A05_DYPJBJDD', @level2type=N'COLUMN',@level2name=N'MC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����˳��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_25_A05_DYPJBJDD', @level2type=N'COLUMN',@level2name=N'PLSX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������۰༶ÿ�ܻ��ܱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_25_A06_DYPJBJMZHZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_25_A06_DYPJBJMZHZ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_25_A06_DYPJBJMZHZ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_25_A06_DYPJBJMZHZ', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ܴ�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_25_A06_DYPJBJMZHZ', @level2type=N'COLUMN',@level2name=N'ZCID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�༶ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_25_A06_DYPJBJMZHZ', @level2type=N'COLUMN',@level2name=N'BJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ܷ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_25_A06_DYPJBJMZHZ', @level2type=N'COLUMN',@level2name=N'ZZF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ܷ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_25_A06_DYPJBJMZHZ', @level2type=N'COLUMN',@level2name=N'ZF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ȵ�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_25_A06_DYPJBJMZHZ', @level2type=N'COLUMN',@level2name=N'DDID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ȵ�������ʦID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_25_A06_DYPJBJMZHZ', @level2type=N'COLUMN',@level2name=N'DDPJJSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ӽ�ʦID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_25_A06_DYPJBJMZHZ', @level2type=N'COLUMN',@level2name=N'TJJSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_25_A06_DYPJBJMZHZ', @level2type=N'COLUMN',@level2name=N'TJSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������۰༶ÿ�ܴ����ֱܷ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_25_A07_DYPJBJMZDLZF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_25_A07_DYPJBJMZDLZF', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_25_A07_DYPJBJMZDLZF', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ÿ�ܻ���ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_25_A07_DYPJBJMZDLZF', @level2type=N'COLUMN',@level2name=N'MZHZID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_25_A07_DYPJBJMZDLZF', @level2type=N'COLUMN',@level2name=N'DLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ܷ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_25_A07_DYPJBJMZDLZF', @level2type=N'COLUMN',@level2name=N'ZF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������ѧ��ÿ�ܻ��ܱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_25_A08_DYPJXSMZHZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_25_A08_DYPJXSMZHZ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_25_A08_DYPJXSMZHZ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_25_A08_DYPJXSMZHZ', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ܴ�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_25_A08_DYPJXSMZHZ', @level2type=N'COLUMN',@level2name=N'ZCID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_25_A08_DYPJXSMZHZ', @level2type=N'COLUMN',@level2name=N'XSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ܷ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_25_A08_DYPJXSMZHZ', @level2type=N'COLUMN',@level2name=N'ZZF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ӽ�ʦID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_25_A08_DYPJXSMZHZ', @level2type=N'COLUMN',@level2name=N'TJJSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_25_A08_DYPJXSMZHZ', @level2type=N'COLUMN',@level2name=N'TJSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������۶��ż�¼��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_25_A11_DYPJDXJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_25_A11_DYPJDXJL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_25_A11_DYPJDXJL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_25_A11_DYPJDXJL', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ѧ�����ּ�¼ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_25_A11_DYPJDXJL', @level2type=N'COLUMN',@level2name=N'GLXSPFJLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���Ͷ�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_25_A11_DYPJDXJL', @level2type=N'COLUMN',@level2name=N'FSDXMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�绰����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_25_A11_DYPJDXJL', @level2type=N'COLUMN',@level2name=N'DHHM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_25_A11_DYPJDXJL', @level2type=N'COLUMN',@level2name=N'DXNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_25_A11_DYPJDXJL', @level2type=N'COLUMN',@level2name=N'TJSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_25_A11_DYPJDXJL', @level2type=N'COLUMN',@level2name=N'FSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_25_A11_DYPJDXJL', @level2type=N'COLUMN',@level2name=N'FSZT'
GO
