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

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZXS_17_A02_RYCH')
            and   type = 'U')
   drop table EDU_ZZXS_17_A02_RYCH
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZXS_17_A03_RDJJTY')
            and   type = 'U')
   drop table EDU_ZZXS_17_A03_RDJJTY
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZXS_17_A04_TYSXHB')
            and   type = 'U')
   drop table EDU_ZZXS_17_A04_TYSXHB
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
	[XSXXID]  int  NOT NULL,--ѧ��ID
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[JXJMC]  nvarchar(30)  NOT NULL,--��ѧ������
	[JXJBH]  nvarchar(2)  NOT NULL,--��ѧ����
	[JXJDJ]  nvarchar(20)  NOT NULL,--��ѧ��ȼ�
	[JXJLXM]  nvarchar(2)  NOT NULL,--��ѧ��������
	[JXJE]  decimal(8, 2)  NOT NULL,--��ѧ���
	[HJSJ]  datetime  NOT NULL,--��ʱ��
	[ZZDWHGR]  nvarchar(60)  NULL,--������λ�����
	[JXJLYM]  nvarchar(1)  NULL,--��ѧ����Դ��
	[SFSH]  nvarchar(1)  NOT NULL,--�Ƿ����
	[XQID]  int  NOT NULL,--ѧ��ID
CONSTRAINT [PK_EDU_ZZXS_10_02_JXJSJ] PRIMARY KEY CLUSTERED
(
	[XSXXID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--��ѧ�����������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZXS_10_03_ZXJSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZXS_10_03_ZXJSJ](
	[XSXXID]  int  NOT NULL,--ѧ��ID
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[ZKBMH]  nvarchar(10)  NULL,--�п�������
	[YHKH]  nvarchar(30)  NOT NULL,--���п���
	[ZXJE]  decimal(8, 2)  NOT NULL,--��ѧ���
	[SFSJ]  datetime  NOT NULL,--ʼ��ʱ��
	[TFSJ]  datetime  NOT NULL,--ͣ��ʱ��
	[TFYY]  nvarchar(80)  NOT NULL,--ͣ��ԭ��
	[ZXJMC]  nvarchar(60)  NOT NULL,--��ѧ������
	[ZZDWHGR]  nvarchar(60)  NULL,--������λ�����
	[ZXJLX]  nvarchar(1)  NOT NULL,--��ѧ������
	[SFSH]  nvarchar(1)  NOT NULL,--�Ƿ����
	[XQID]  int  NOT NULL,--ѧ��ID
CONSTRAINT [PK_EDU_ZZXS_10_03_ZXJSJ] PRIMARY KEY CLUSTERED
(
	[XSXXID] ASC,
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
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZXS_17_A02_RYCH]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZXS_17_A02_RYCH](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[XQID]  int  NOT NULL,--ѧ��ID
	[XSXXID]  int  NOT NULL,--ѧ��ID
	[SJJE]  decimal(8, 2)  NOT NULL,--�սɽ��
	[TJSJ]  datetime  NULL,--���ʱ��
CONSTRAINT [PK_EDU_ZZXS_17_A02_RYCH] PRIMARY KEY CLUSTERED
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
CONSTRAINT [PK_EDU_ZZXS_17_A04_TYSXHB] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
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
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_10_02_JXJSJ', @level2type=N'COLUMN',@level2name=N'XSXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_10_02_JXJSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
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
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_10_02_JXJSJ', @level2type=N'COLUMN',@level2name=N'HJSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������λ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_10_02_JXJSJ', @level2type=N'COLUMN',@level2name=N'ZZDWHGR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ѧ����Դ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_10_02_JXJSJ', @level2type=N'COLUMN',@level2name=N'JXJLYM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_10_02_JXJSJ', @level2type=N'COLUMN',@level2name=N'SFSH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_10_02_JXJSJ', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ѧ�����������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_10_03_ZXJSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_10_03_ZXJSJ', @level2type=N'COLUMN',@level2name=N'XSXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_10_03_ZXJSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�п�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_10_03_ZXJSJ', @level2type=N'COLUMN',@level2name=N'ZKBMH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���п���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_10_03_ZXJSJ', @level2type=N'COLUMN',@level2name=N'YHKH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ѧ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_10_03_ZXJSJ', @level2type=N'COLUMN',@level2name=N'ZXJE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ʼ��ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_10_03_ZXJSJ', @level2type=N'COLUMN',@level2name=N'SFSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ͣ��ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_10_03_ZXJSJ', @level2type=N'COLUMN',@level2name=N'TFSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ͣ��ԭ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_10_03_ZXJSJ', @level2type=N'COLUMN',@level2name=N'TFYY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ѧ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_10_03_ZXJSJ', @level2type=N'COLUMN',@level2name=N'ZXJMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������λ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_10_03_ZXJSJ', @level2type=N'COLUMN',@level2name=N'ZZDWHGR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ѧ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_10_03_ZXJSJ', @level2type=N'COLUMN',@level2name=N'ZXJLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_10_03_ZXJSJ', @level2type=N'COLUMN',@level2name=N'SFSH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_10_03_ZXJSJ', @level2type=N'COLUMN',@level2name=N'XQID'
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
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ŷ��սɼ�¼��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_17_A02_RYCH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_17_A02_RYCH', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_17_A02_RYCH', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_17_A02_RYCH', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_17_A02_RYCH', @level2type=N'COLUMN',@level2name=N'XSXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�սɽ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_17_A02_RYCH', @level2type=N'COLUMN',@level2name=N'SJJE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_17_A02_RYCH', @level2type=N'COLUMN',@level2name=N'TJSJ'
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
