--�ռ�����EDU_ZXJZ  ��������SqlBuilder0.1

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJZ_01_01_JZGJBSJ')
            and   type = 'U')
   drop table EDU_ZXJZ_01_01_JZGJBSJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJZ_01_A01_JZGKZ')
            and   type = 'U')
   drop table EDU_ZXJZ_01_A01_JZGKZ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJZ_01_A02_JZGNLZS')
            and   type = 'U')
   drop table EDU_ZXJZ_01_A02_JZGNLZS
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJZ_01_A03_GRXXBJKG')
            and   type = 'U')
   drop table EDU_ZXJZ_01_A03_GRXXBJKG
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJZ_01_A04_JZGJBSJSH')
            and   type = 'U')
   drop table EDU_ZXJZ_01_A04_JZGJBSJSH
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJZ_01_A05_JZGKZSH')
            and   type = 'U')
   drop table EDU_ZXJZ_01_A05_JZGKZSH
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJZ_01_A06_JZGNLZSSH')
            and   type = 'U')
   drop table EDU_ZXJZ_01_A06_JZGNLZSSH
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJZ_02_A01_XNGWSJ')
            and   type = 'U')
   drop table EDU_ZXJZ_02_A01_XNGWSJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJZ_02_A02_RGJL')
            and   type = 'U')
   drop table EDU_ZXJZ_02_A02_RGJL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJZ_07_02_RKSJ')
            and   type = 'U')
   drop table EDU_ZXJZ_07_02_RKSJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJZ_12_A01_XCLX')
            and   type = 'U')
   drop table EDU_ZXJZ_12_A01_XCLX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJZ_12_A02_XC')
            and   type = 'U')
   drop table EDU_ZXJZ_12_A02_XC
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJZ_12_A03_XCMYFFPC')
            and   type = 'U')
   drop table EDU_ZXJZ_12_A03_XCMYFFPC
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJZ_17_A01_DYXX')
            and   type = 'U')
   drop table EDU_ZXJZ_17_A01_DYXX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJZ_17_A02_DFSJJL')
            and   type = 'U')
   drop table EDU_ZXJZ_17_A02_DFSJJL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJZ_17_A03_DZBSJ')
            and   type = 'U')
   drop table EDU_ZXJZ_17_A03_DZBSJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJZ_17_A04_DZBZWSJ')
            and   type = 'U')
   drop table EDU_ZXJZ_17_A04_DZBZWSJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJZ_17_A05_DZBCYXX')
            and   type = 'U')
   drop table EDU_ZXJZ_17_A05_DZBCYXX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJZ_17_A06_DZBHDXX')
            and   type = 'U')
   drop table EDU_ZXJZ_17_A06_DZBHDXX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJZ_18_A03_JSDRBZRJL')
            and   type = 'U')
   drop table EDU_ZXJZ_18_A03_JSDRBZRJL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJZ_19_A01_JJFFJL')
            and   type = 'U')
   drop table EDU_ZXJZ_19_A01_JJFFJL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJZ_20_A01_XSPJDFFS')
            and   type = 'U')
   drop table EDU_ZXJZ_20_A01_XSPJDFFS
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJZ_20_A02_XSPJDFXM')
            and   type = 'U')
   drop table EDU_ZXJZ_20_A02_XSPJDFXM
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJZ_20_A03_XSPJTM')
            and   type = 'U')
   drop table EDU_ZXJZ_20_A03_XSPJTM
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJZ_20_A04_XSPJKP')
            and   type = 'U')
   drop table EDU_ZXJZ_20_A04_XSPJKP
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJZ_20_A05_XSPJKPTM')
            and   type = 'U')
   drop table EDU_ZXJZ_20_A05_XSPJKPTM
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJZ_20_A06_XSPJKPBJ')
            and   type = 'U')
   drop table EDU_ZXJZ_20_A06_XSPJKPBJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJZ_20_A07_XSPJKPJG')
            and   type = 'U')
   drop table EDU_ZXJZ_20_A07_XSPJKPJG
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJZ_20_A08_XSPJTJJL')
            and   type = 'U')
   drop table EDU_ZXJZ_20_A08_XSPJTJJL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJZ_21_A01_BMXSL')
            and   type = 'U')
   drop table EDU_ZXJZ_21_A01_BMXSL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJZ_21_A02_ZXSL')
            and   type = 'U')
   drop table EDU_ZXJZ_21_A02_ZXSL
go
--��ְ���������������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJZ_01_01_JZGJBSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJZ_01_01_JZGJBSJ](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[GH]  nvarchar(20)  NOT NULL,--����
	[XM]  nvarchar(36)  NOT NULL,--����
	[YWXM]  nvarchar(60)  NULL,--Ӣ������
	[XMPY]  nvarchar(60)  NULL,--����ƴ��
	[CYM]  nvarchar(36)  NULL,--������
	[XBM]  nvarchar(1)  NOT NULL,--�Ա���
	[CSRQ]  nvarchar(8)  NOT NULL,--��������
	[CSDM]  nvarchar(6)  NOT NULL,--��������
	[JG]  nvarchar(20)  NULL,--����
	[MZM]  nvarchar(2)  NULL,--������
	[GJDQM]  nvarchar(3)  NOT NULL,--����/������
	[SFZJLXM]  nvarchar(1)  NOT NULL,--���֤��������
	[SFZJH]  nvarchar(20)  NOT NULL,--���֤����
	[HYZKM]  nvarchar(2)  NULL,--����״����
	[GATQWM]  nvarchar(2)  NULL,--�۰�̨������
	[ZZMMM]  nvarchar(2)  NOT NULL,--������ò��
	[JKZKM]  nvarchar(1)  NULL,--����״����
	[XYZJM]  nvarchar(2)  NULL,--�����ڽ���
	[XXM]  nvarchar(1)  NULL,--Ѫ����
	[ZP]  nvarchar(200)  NULL,--��Ƭ
	[SFZJYXQ]  nvarchar(8)  NULL,--���֤����Ч��
	[JGH]  nvarchar(40)  NOT NULL,--������
	[JTZZ]  nvarchar(180)  NULL,--��ͥסַ
	[XZZ]  nvarchar(180)  NULL,--��סַ
	[HKSZD]  nvarchar(180)  NULL,--�������ڵ�
	[HKXZM]  nvarchar(1)  NULL,--����������
	[XLM]  nvarchar(2)  NOT NULL,--ѧ����
	[GZNY]  nvarchar(6)  NULL,--�μӹ�������
	[LXNY]  nvarchar(6)  NULL,--��У����
	[CJNY]  nvarchar(6)  NULL,--�ӽ�����
	[BZLBM]  nvarchar(1)  NOT NULL,--���������
	[DABH]  nvarchar(10)  NOT NULL,--�������
	[DAWB]  text  NULL,--�����ı�
	[TXDZ]  nvarchar(180)  NULL,--ͨ�ŵ�ַ
	[LXDH]  nvarchar(30)  NULL,--��ϵ�绰
	[YZBM]  nvarchar(6)  NULL,--��������
	[DZXX]  nvarchar(40)  NULL,--��������
	[ZYDZ]  nvarchar(60)  NULL,--��ҳ��ַ
	[TC]  text  NULL,--�س�
	[GWZYM]  nvarchar(2)  NOT NULL,--��λְҵ��
	[ZYRKXD]  nvarchar(1)  NOT NULL,--��Ҫ�ο�ѧ��
CONSTRAINT [PK_EDU_ZXJZ_01_01_JZGJBSJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--��ְ����չ��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJZ_01_A01_JZGKZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJZ_01_A01_JZGKZ](
	[JZGID]  int  NOT NULL,--�̹�������ϢID
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[GL]  int  NOT NULL,--����
	[JL]  int  NOT NULL,--����
	[GJRZNX]  int  NOT NULL,--�߼���ְ����
	[ZJRZNX]  int  NOT NULL,--�м���ְ����
	[CJRZNX]  int  NOT NULL,--������ְ����
	[RZNX]  int  NOT NULL,--��ְ����
	[SSDZB]  nvarchar(200)  NOT NULL,--������֧��
	[BYYX]  nvarchar(200)  NOT NULL,--��ҵԺУ
	[XXJL]  text  NOT NULL,--ѧϰ����
	[GZJL]  text  NOT NULL,--��������
	[HJQK]  text  NOT NULL,--�����
	[ZC]  nvarchar(200)  NOT NULL,--ְ��
	[GJRZQDSJ]  nvarchar(20)  NOT NULL,--�߼���ְȡ��ʱ��
	[ZJRZQDSJ]  nvarchar(20)  NOT NULL,--�м���ְȡ��ʱ��
	[CJRZQDSJ]  nvarchar(20)  NOT NULL,--������ְȡ��ʱ��
CONSTRAINT [PK_EDU_ZXJZ_01_A01_JZGKZ] PRIMARY KEY CLUSTERED
(
	[JZGID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--��ְ������֤���������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJZ_01_A02_JZGNLZS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJZ_01_A02_JZGNLZS](
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[JZGJBSJID]  int  NOT NULL,--��ְ��ID
	[ZSMC]  nvarchar(40)  NOT NULL,--֤������
	[ZSBH]  nvarchar(20)  NULL,--֤����
	[ZSBFDW]  nvarchar(60)  NULL,--֤��䷢��λ
	[ZSBFRQ]  nvarchar(8)  NOT NULL,--֤��䷢����
	[ZSBZ]  text  NULL,--֤�鱸ע
	[SFSZYZGZS]  nvarchar(1)  NOT NULL,--�Ƿ���ְҵ�ʸ�֤��
	[JJ]  text  NULL,--���
CONSTRAINT [PK_EDU_ZXJZ_01_A02_JZGNLZS] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[JZGJBSJID] ASC,
	[ZSMC] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--������Ϣ�༭���ر�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJZ_01_A03_GRXXBJKG]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJZ_01_A03_GRXXBJKG](
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[SCSJ]  datetime  NOT NULL,--��ʼʱ��
	[HDSJ]  datetime  NOT NULL,--����ʱ��
	[SFKQ]  nvarchar(1)  NOT NULL,--�Ƿ���
	[SFXYSH]  nvarchar(1)  NOT NULL,--�Ƿ���Ҫ���
CONSTRAINT [PK_EDU_ZXJZ_01_A03_GRXXBJKG] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--��ְ���������������(���)
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJZ_01_A04_JZGJBSJSH]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJZ_01_A04_JZGJBSJSH](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[GH]  nvarchar(20)  NOT NULL,--����
	[XM]  nvarchar(36)  NOT NULL,--����
	[YWXM]  nvarchar(60)  NULL,--Ӣ������
	[XMPY]  nvarchar(60)  NULL,--����ƴ��
	[CYM]  nvarchar(36)  NULL,--������
	[XBM]  nvarchar(1)  NOT NULL,--�Ա���
	[CSRQ]  nvarchar(8)  NOT NULL,--��������
	[CSDM]  nvarchar(6)  NOT NULL,--��������
	[JG]  nvarchar(20)  NULL,--����
	[MZM]  nvarchar(2)  NULL,--������
	[GJDQM]  nvarchar(3)  NOT NULL,--����/������
	[SFZJLXM]  nvarchar(1)  NOT NULL,--���֤��������
	[SFZJH]  nvarchar(20)  NOT NULL,--���֤����
	[HYZKM]  nvarchar(2)  NULL,--����״����
	[GATQWM]  nvarchar(2)  NULL,--�۰�̨������
	[ZZMMM]  nvarchar(2)  NOT NULL,--������ò��
	[JKZKM]  nvarchar(1)  NULL,--����״����
	[XYZJM]  nvarchar(2)  NULL,--�����ڽ���
	[XXM]  nvarchar(1)  NULL,--Ѫ����
	[ZP]  nvarchar(200)  NULL,--��Ƭ
	[SFZJYXQ]  nvarchar(8)  NULL,--���֤����Ч��
	[JGH]  nvarchar(40)  NOT NULL,--������
	[JTZZ]  nvarchar(180)  NULL,--��ͥסַ
	[XZZ]  nvarchar(180)  NULL,--��סַ
	[HKSZD]  nvarchar(180)  NULL,--�������ڵ�
	[HKXZM]  nvarchar(1)  NULL,--����������
	[XLM]  nvarchar(2)  NOT NULL,--ѧ����
	[GZNY]  nvarchar(6)  NULL,--�μӹ�������
	[LXNY]  nvarchar(6)  NULL,--��У����
	[CJNY]  nvarchar(6)  NULL,--�ӽ�����
	[BZLBM]  nvarchar(1)  NOT NULL,--���������
	[DABH]  nvarchar(10)  NOT NULL,--�������
	[DAWB]  text  NULL,--�����ı�
	[TXDZ]  nvarchar(180)  NULL,--ͨ�ŵ�ַ
	[LXDH]  nvarchar(30)  NULL,--��ϵ�绰
	[YZBM]  nvarchar(6)  NULL,--��������
	[DZXX]  nvarchar(40)  NULL,--��������
	[ZYDZ]  nvarchar(60)  NULL,--��ҳ��ַ
	[TC]  text  NULL,--�س�
	[GWZYM]  nvarchar(2)  NOT NULL,--��λְҵ��
	[ZYRKXD]  nvarchar(1)  NOT NULL,--��Ҫ�ο�ѧ��
CONSTRAINT [PK_EDU_ZXJZ_01_A04_JZGJBSJSH] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--��ְ����չ��(���)
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJZ_01_A05_JZGKZSH]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJZ_01_A05_JZGKZSH](
	[JZGID]  int  NOT NULL,--�̹�������ϢID
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[GL]  int  NOT NULL,--����
	[JL]  int  NOT NULL,--����
	[GJRZNX]  int  NOT NULL,--�߼���ְ����
	[ZJRZNX]  int  NOT NULL,--�м���ְ����
	[CJRZNX]  int  NOT NULL,--������ְ����
	[RZNX]  int  NOT NULL,--��ְ����
	[SSDZB]  nvarchar(200)  NOT NULL,--������֧��
	[BYYX]  nvarchar(200)  NOT NULL,--��ҵԺУ
	[XXJL]  text  NOT NULL,--ѧϰ����
	[GZJL]  text  NOT NULL,--��������
	[HJQK]  text  NOT NULL,--�����
	[ZC]  nvarchar(200)  NOT NULL,--ְ��
	[GJRZQDSJ]  nvarchar(20)  NOT NULL,--�߼���ְȡ��ʱ��
	[ZJRZQDSJ]  nvarchar(20)  NOT NULL,--�м���ְȡ��ʱ��
	[CJRZQDSJ]  nvarchar(20)  NOT NULL,--������ְȡ��ʱ��
CONSTRAINT [PK_EDU_ZXJZ_01_A05_JZGKZSH] PRIMARY KEY CLUSTERED
(
	[JZGID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--��ְ������֤���������(���)
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJZ_01_A06_JZGNLZSSH]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJZ_01_A06_JZGNLZSSH](
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[JZGJBSJID]  int  NOT NULL,--��ְ��ID
	[ZSMC]  nvarchar(40)  NOT NULL,--֤������
	[ZSBH]  nvarchar(20)  NULL,--֤����
	[ZSBFDW]  nvarchar(60)  NULL,--֤��䷢��λ
	[ZSBFRQ]  nvarchar(8)  NOT NULL,--֤��䷢����
	[ZSBZ]  text  NULL,--֤�鱸ע
	[SFSZYZGZS]  nvarchar(1)  NOT NULL,--�Ƿ���ְҵ�ʸ�֤��
	[JJ]  text  NULL,--���
	[ZT]  int  NOT NULL,--״̬
CONSTRAINT [PK_EDU_ZXJZ_01_A06_JZGNLZSSH] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[JZGJBSJID] ASC,
	[ZSMC] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--У�ڸ�λ���������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJZ_02_A01_XNGWSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJZ_02_A01_XNGWSJ](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[JGH]  nvarchar(10)  NOT NULL,--������
	[JZGJBSJID]  int  NOT NULL,--��ְ��ID
	[ZWMC]  nvarchar(20)  NOT NULL,--ְ������
CONSTRAINT [PK_EDU_ZXJZ_02_A01_XNGWSJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�θڼ�¼��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJZ_02_A02_RGJL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJZ_02_A02_RGJL](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[JGMC]  nvarchar(60)  NOT NULL,--��������
	[JZGJBSJID]  int  NOT NULL,--��ְ��ID
	[ZWMC]  nvarchar(20)  NOT NULL,--ְ������
	[GWQSNY]  nvarchar(20)  NOT NULL,--��λ��ʼ����
	[GWJSNY]  nvarchar(20)  NOT NULL,--��λ��������
CONSTRAINT [PK_EDU_ZXJZ_02_A02_RGJL] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�ο����������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJZ_07_02_RKSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJZ_07_02_RKSJ](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[JZGJBSJID]  int  NOT NULL,--��ְ���������������
	[RKKCH]  nvarchar(10)  NOT NULL,--�οογ̺�
	[RKQSNY]  nvarchar(6)  NOT NULL,--�ο���ʼ����
	[RKZZNY]  nvarchar(6)  NOT NULL,--�ο���ֹ����
	[RKZXS]  decimal(3, 0)  NOT NULL,--�ο���ѧʱ
	[RKXDM]  nvarchar(1)  NOT NULL,--�ο�ѧ����
	[RKJSM]  nvarchar(1)  NOT NULL,--�ον�ɫ��
	[SKBJ]  nvarchar(10)  NOT NULL,--�ڿΰ༶
	[SKRS]  decimal(4, 0)  NOT NULL,--�ڿ�����
	[ZKS]  int  NOT NULL,--�ܿ�ʱ
	[SFLT]  nvarchar(1)  NOT NULL,--�Ƿ�����
	[NJID]  nvarchar(10)  NOT NULL,--�꼶��
	[XQID]  int  NOT NULL,--ѧ��
	[XNID]  int  NOT NULL,--ѧ��
CONSTRAINT [PK_EDU_ZXJZ_07_02_RKSJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--н�����ͱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJZ_12_A01_XCLX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJZ_12_A01_XCLX](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[XCLXMC]  nvarchar(30)  NOT NULL,--��������
CONSTRAINT [PK_EDU_ZXJZ_12_A01_XCLX] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--н���
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJZ_12_A02_XC]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJZ_12_A02_XC](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[JZGJBSJID]  int  NOT NULL,--�̹�������ϢID
	[KSSJ]  datetime  NOT NULL,--��ʼʱ��
	[JSSJ]  datetime  NOT NULL,--����ʱ��
	[XCLXID]  int  NOT NULL,--н������ID
	[JE]  decimal(8, 2)  NOT NULL,--���
	[FFSJ]  datetime  NOT NULL,--����ʱ��
	[FFPCID]  int  NOT NULL,--��������ID
CONSTRAINT [PK_EDU_ZXJZ_12_A02_XC] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--н��ÿ�·������α�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJZ_12_A03_XCMYFFPC]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJZ_12_A03_XCMYFFPC](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[PCMC]  nvarchar(30)  NOT NULL,--��������
CONSTRAINT [PK_EDU_ZXJZ_12_A03_XCMYFFPC] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--��Ա��Ϣ��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJZ_17_A01_DYXX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJZ_17_A01_DYXX](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[JZGJBSJID]  int  NOT NULL,--�̹�������ϢID
	[RDSJ]  datetime  NOT NULL,--�뵳ʱ��
	[RDDD]  nvarchar(100)  NOT NULL,--�뵳�ص�
	[RDJSR]  nvarchar(100)  NOT NULL,--�뵳������
	[DQZT]  int  NOT NULL,--��ǰ״̬
	[TJJSID]  int  NOT NULL,--��ӽ�ʦID
	[TJSJ]  datetime  NOT NULL,--���ʱ��
	[BZ]  text  NOT NULL,--��ע
CONSTRAINT [PK_EDU_ZXJZ_17_A01_DYXX] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�����սɼ�¼��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJZ_17_A02_DFSJJL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJZ_17_A02_DFSJJL](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[XQID]  int  NOT NULL,--ѧ��ID
	[DYXXID]  int  NOT NULL,--��Ա��ϢID
	[JZGJBSJID]  int  NOT NULL,--�̹�������ϢID
	[SJJE]  decimal(8, 2)  NOT NULL,--�սɽ��
	[TJJSID]  int  NOT NULL,--��ӽ�ʦID
	[TJSJ]  datetime  NULL,--���ʱ��
CONSTRAINT [PK_EDU_ZXJZ_17_A02_DFSJJL] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--��֧�����ݱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJZ_17_A03_DZBSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJZ_17_A03_DZBSJ](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[DZBMC]  nvarchar(50)  NOT NULL,--��֧������
	[SS]  nvarchar(50)  NOT NULL,--����
	[BZ]  text  NOT NULL,--��ע
CONSTRAINT [PK_EDU_ZXJZ_17_A03_DZBSJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--��֧��ְλ���ݱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJZ_17_A04_DZBZWSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJZ_17_A04_DZBZWSJ](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[DZBID]  int  NOT NULL,--��֧��ID
	[ZWMC]  nvarchar(50)  NOT NULL,--ְλ����
	[GZNR]  text  NOT NULL,--��������
	[BZ]  text  NOT NULL,--��ע
CONSTRAINT [PK_EDU_ZXJZ_17_A04_DZBZWSJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--��֧����Ա��Ϣ��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJZ_17_A05_DZBCYXX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJZ_17_A05_DZBCYXX](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[DYXXID]  int  NOT NULL,--��Ա��ϢID
	[JZGJBSJID]  int  NOT NULL,--�̹�������ϢID
	[DZBID]  int  NOT NULL,--��֧��ID
	[DZBZWID]  int  NOT NULL,--��֧��ְλID
	[TJJSID]  int  NOT NULL,--��ӽ�ʦID
	[TJSJ]  datetime  NULL,--���ʱ��
CONSTRAINT [PK_EDU_ZXJZ_17_A05_DZBCYXX] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--��֧�����Ϣ��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJZ_17_A06_DZBHDXX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJZ_17_A06_DZBHDXX](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[XQID]  int  NOT NULL,--ѧ��ID
	[DZBID]  int  NOT NULL,--��֧��ID
	[HDMC]  nvarchar(50)  NOT NULL,--�����
	[HDNR]  text  NOT NULL,--�����
	[SCJSID]  int  NOT NULL,--�ϴ���ʦID
	[SCSJ]  datetime  NOT NULL,--�ϴ�ʱ��
	[HDSJ]  datetime  NOT NULL,--�ʱ��
CONSTRAINT [PK_EDU_ZXJZ_17_A06_DZBHDXX] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--��ʦ���ΰ����μ�¼��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJZ_18_A03_JSDRBZRJL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJZ_18_A03_JSDRBZRJL](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[JZGJBSJID]  int  NOT NULL,--��ְ��ID
	[DRBJ]  nvarchar(50)  NOT NULL,--���ΰ༶
	[DRSJ]  decimal(5, 2)  NOT NULL,--����ʱ��
	[BZ]  nvarchar(500)  NULL,--��ע
CONSTRAINT [PK_EDU_ZXJZ_18_A03_JSDRBZRJL] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--���𷢷ż�¼��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJZ_19_A01_JJFFJL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJZ_19_A01_JJFFJL](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[JZGJBSJID]  int  NOT NULL,--�̹�������ϢID
	[JJMC]  nvarchar(50)  NOT NULL,--��������
	[JE]  decimal(8, 2)  NOT NULL,--���
	[FFSJ]  datetime  NOT NULL,--����ʱ��
	[SFTZG]  nvarchar(1)  NOT NULL,--�Ƿ�֪ͨ��
	[BZ]  nvarchar(200)  NOT NULL,--��ע
CONSTRAINT [PK_EDU_ZXJZ_19_A01_JJFFJL] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ѧ�����̴�ַ�ʽ��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJZ_20_A01_XSPJDFFS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJZ_20_A01_XSPJDFFS](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[DFFSMC]  nvarchar(50)  NOT NULL,--��ַ�ʽ����
	[ZT]  int  NOT NULL,--״̬
CONSTRAINT [PK_EDU_ZXJZ_20_A01_XSPJDFFS] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ѧ�����̴����Ŀ��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJZ_20_A02_XSPJDFXM]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJZ_20_A02_XSPJDFXM](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[DFFSID]  int  NOT NULL,--��ַ�ʽID
	[DFXMMC]  nvarchar(50)  NOT NULL,--�����Ŀ����
	[FZ]  int  NOT NULL,--��ֵ
CONSTRAINT [PK_EDU_ZXJZ_20_A02_XSPJDFXM] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ѧ��������Ŀ��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJZ_20_A03_XSPJTM]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJZ_20_A03_XSPJTM](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[DFFSID]  int  NOT NULL,--��ַ�ʽID
	[PJXM]  nvarchar(50)  NOT NULL,--������Ŀ
	[PJZB]  nvarchar(300)  NOT NULL,--����ָ��
	[ZT]  int  NOT NULL,--״̬
CONSTRAINT [PK_EDU_ZXJZ_20_A03_XSPJTM] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ѧ�����̿�����
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJZ_20_A04_XSPJKP]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJZ_20_A04_XSPJKP](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[KPMC]  nvarchar(50)  NOT NULL,--��������
	[KSSJ]  datetime  NOT NULL,--��ʼʱ��
	[JSSJ]  datetime  NOT NULL,--����ʱ��
	[ZT]  int  NOT NULL,--״̬
CONSTRAINT [PK_EDU_ZXJZ_20_A04_XSPJKP] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ѧ�����̿�����Ŀ��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJZ_20_A05_XSPJKPTM]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJZ_20_A05_XSPJKPTM](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[KPID]  int  NOT NULL,--����ID
	[TMID]  int  NOT NULL,--������ĿID
CONSTRAINT [PK_EDU_ZXJZ_20_A05_XSPJKPTM] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ѧ�����̿����༶��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJZ_20_A06_XSPJKPBJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJZ_20_A06_XSPJKPBJ](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[KPID]  int  NOT NULL,--����ID
	[BJMC]  nvarchar(50)  NOT NULL,--�༶����
	[BPJGIDLB]  text  NOT NULL,--�����̹�ID�б�
	[BPJGXMLB]  text  NOT NULL,--�����̹������б�
	[DYKCMCLB]  text  NOT NULL,--��Ӧ�γ������б�
	[YPRS]  int  NOT NULL,--Ӧ������
	[SBM]  nvarchar(9)  NOT NULL,--ʶ����
	[KQSJ]  datetime  NOT NULL,--����ʱ��
	[ZDGBSJ]  int  NOT NULL,--�Զ��ر�ʱ��
	[ZT]  int  NOT NULL,--״̬
CONSTRAINT [PK_EDU_ZXJZ_20_A06_XSPJKPBJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ѧ�����̿��������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJZ_20_A07_XSPJKPJG]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJZ_20_A07_XSPJKPJG](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[KPTMID]  int  NOT NULL,--������ĿID
	[KPBJID]  int  NOT NULL,--�����༶ID
	[JZGJBSJID]  int  NOT NULL,--��ְ��ID
	[IP]  nvarchar(50)  NOT NULL,--IP��ַ
	[FZ]  int  NOT NULL,--��ֵ
CONSTRAINT [PK_EDU_ZXJZ_20_A07_XSPJKPJG] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ѧ�������ύ��¼��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJZ_20_A08_XSPJTJJL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJZ_20_A08_XSPJTJJL](
	[ID]  int  identity,--���
	[KPBJID]  int  NOT NULL,--�����༶ID
	[SBM]  nvarchar(9)  NOT NULL,--ʶ����
	[IP]  nvarchar(50)  NOT NULL,--IP��ַ
	[TJSJ]  datetime  NOT NULL,--�ύʱ��
CONSTRAINT [PK_EDU_ZXJZ_20_A08_XSPJTJJL] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--������������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJZ_21_A01_BMXSL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJZ_21_A01_BMXSL](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[BMBH]  nvarchar(10)  NOT NULL,--���ű��
	[SJ]  datetime  NOT NULL,--ʱ��
	[ZYGZ]  text  NOT NULL,--��Ҫ����
	[BZ]  text  NOT NULL,--��ע
CONSTRAINT [PK_EDU_ZXJZ_21_A01_BMXSL] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--����������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJZ_21_A02_ZXSL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJZ_21_A02_ZXSL](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[ZRBM]  nvarchar(100)  NOT NULL,--���β���
	[SJ]  datetime  NOT NULL,--ʱ��
	[ZYGZ]  text  NOT NULL,--��Ҫ����
	[BZ]  text  NOT NULL,--��ע
CONSTRAINT [PK_EDU_ZXJZ_21_A02_ZXSL] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--����Ϊ���ע�����
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ְ���������������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'GH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'XM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ӣ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'YWXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ƴ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'XMPY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'CYM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ա���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'XBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'CSRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'CSDM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'JG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'MZM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����/������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'GJDQM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���֤��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'SFZJLXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���֤����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'SFZJH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����״����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'HYZKM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�۰�̨������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'GATQWM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ò��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'ZZMMM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����״����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'JKZKM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����ڽ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'XYZJM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ѫ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'XXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ƭ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'ZP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���֤����Ч��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'SFZJYXQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'JGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ͥסַ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'JTZZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��סַ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'XZZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������ڵ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'HKSZD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'HKXZM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'XLM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�μӹ�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'GZNY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��У����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'LXNY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ӽ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'CJNY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'BZLBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'DABH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����ı�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'DAWB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ͨ�ŵ�ַ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'TXDZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ϵ�绰' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'LXDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'YZBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'DZXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ҳ��ַ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'ZYDZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�س�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'TC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��λְҵ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'GWZYM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ҫ�ο�ѧ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'ZYRKXD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ְ����չ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_A01_JZGKZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�̹�������ϢID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_A01_JZGKZ', @level2type=N'COLUMN',@level2name=N'JZGID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_A01_JZGKZ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_A01_JZGKZ', @level2type=N'COLUMN',@level2name=N'GL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_A01_JZGKZ', @level2type=N'COLUMN',@level2name=N'JL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�߼���ְ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_A01_JZGKZ', @level2type=N'COLUMN',@level2name=N'GJRZNX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�м���ְ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_A01_JZGKZ', @level2type=N'COLUMN',@level2name=N'ZJRZNX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ְ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_A01_JZGKZ', @level2type=N'COLUMN',@level2name=N'CJRZNX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ְ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_A01_JZGKZ', @level2type=N'COLUMN',@level2name=N'RZNX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������֧��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_A01_JZGKZ', @level2type=N'COLUMN',@level2name=N'SSDZB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ҵԺУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_A01_JZGKZ', @level2type=N'COLUMN',@level2name=N'BYYX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧϰ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_A01_JZGKZ', @level2type=N'COLUMN',@level2name=N'XXJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_A01_JZGKZ', @level2type=N'COLUMN',@level2name=N'GZJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_A01_JZGKZ', @level2type=N'COLUMN',@level2name=N'HJQK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ְ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_A01_JZGKZ', @level2type=N'COLUMN',@level2name=N'ZC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�߼���ְȡ��ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_A01_JZGKZ', @level2type=N'COLUMN',@level2name=N'GJRZQDSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�м���ְȡ��ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_A01_JZGKZ', @level2type=N'COLUMN',@level2name=N'ZJRZQDSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ְȡ��ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_A01_JZGKZ', @level2type=N'COLUMN',@level2name=N'CJRZQDSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ְ������֤���������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_A02_JZGNLZS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_A02_JZGNLZS', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ְ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_A02_JZGNLZS', @level2type=N'COLUMN',@level2name=N'JZGJBSJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'֤������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_A02_JZGNLZS', @level2type=N'COLUMN',@level2name=N'ZSMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'֤����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_A02_JZGNLZS', @level2type=N'COLUMN',@level2name=N'ZSBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'֤��䷢��λ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_A02_JZGNLZS', @level2type=N'COLUMN',@level2name=N'ZSBFDW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'֤��䷢����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_A02_JZGNLZS', @level2type=N'COLUMN',@level2name=N'ZSBFRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'֤�鱸ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_A02_JZGNLZS', @level2type=N'COLUMN',@level2name=N'ZSBZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ���ְҵ�ʸ�֤��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_A02_JZGNLZS', @level2type=N'COLUMN',@level2name=N'SFSZYZGZS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_A02_JZGNLZS', @level2type=N'COLUMN',@level2name=N'JJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������Ϣ�༭���ر�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_A03_GRXXBJKG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_A03_GRXXBJKG', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʼʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_A03_GRXXBJKG', @level2type=N'COLUMN',@level2name=N'SCSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_A03_GRXXBJKG', @level2type=N'COLUMN',@level2name=N'HDSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_A03_GRXXBJKG', @level2type=N'COLUMN',@level2name=N'SFKQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ���Ҫ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_A03_GRXXBJKG', @level2type=N'COLUMN',@level2name=N'SFXYSH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ְ���������������(���)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_A04_JZGJBSJSH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_A04_JZGJBSJSH', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_A04_JZGJBSJSH', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_A04_JZGJBSJSH', @level2type=N'COLUMN',@level2name=N'GH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_A04_JZGJBSJSH', @level2type=N'COLUMN',@level2name=N'XM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ӣ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_A04_JZGJBSJSH', @level2type=N'COLUMN',@level2name=N'YWXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ƴ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_A04_JZGJBSJSH', @level2type=N'COLUMN',@level2name=N'XMPY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_A04_JZGJBSJSH', @level2type=N'COLUMN',@level2name=N'CYM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ա���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_A04_JZGJBSJSH', @level2type=N'COLUMN',@level2name=N'XBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_A04_JZGJBSJSH', @level2type=N'COLUMN',@level2name=N'CSRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_A04_JZGJBSJSH', @level2type=N'COLUMN',@level2name=N'CSDM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_A04_JZGJBSJSH', @level2type=N'COLUMN',@level2name=N'JG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_A04_JZGJBSJSH', @level2type=N'COLUMN',@level2name=N'MZM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����/������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_A04_JZGJBSJSH', @level2type=N'COLUMN',@level2name=N'GJDQM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���֤��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_A04_JZGJBSJSH', @level2type=N'COLUMN',@level2name=N'SFZJLXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���֤����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_A04_JZGJBSJSH', @level2type=N'COLUMN',@level2name=N'SFZJH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����״����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_A04_JZGJBSJSH', @level2type=N'COLUMN',@level2name=N'HYZKM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�۰�̨������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_A04_JZGJBSJSH', @level2type=N'COLUMN',@level2name=N'GATQWM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ò��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_A04_JZGJBSJSH', @level2type=N'COLUMN',@level2name=N'ZZMMM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����״����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_A04_JZGJBSJSH', @level2type=N'COLUMN',@level2name=N'JKZKM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����ڽ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_A04_JZGJBSJSH', @level2type=N'COLUMN',@level2name=N'XYZJM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ѫ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_A04_JZGJBSJSH', @level2type=N'COLUMN',@level2name=N'XXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ƭ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_A04_JZGJBSJSH', @level2type=N'COLUMN',@level2name=N'ZP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���֤����Ч��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_A04_JZGJBSJSH', @level2type=N'COLUMN',@level2name=N'SFZJYXQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_A04_JZGJBSJSH', @level2type=N'COLUMN',@level2name=N'JGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ͥסַ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_A04_JZGJBSJSH', @level2type=N'COLUMN',@level2name=N'JTZZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��סַ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_A04_JZGJBSJSH', @level2type=N'COLUMN',@level2name=N'XZZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������ڵ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_A04_JZGJBSJSH', @level2type=N'COLUMN',@level2name=N'HKSZD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_A04_JZGJBSJSH', @level2type=N'COLUMN',@level2name=N'HKXZM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_A04_JZGJBSJSH', @level2type=N'COLUMN',@level2name=N'XLM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�μӹ�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_A04_JZGJBSJSH', @level2type=N'COLUMN',@level2name=N'GZNY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��У����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_A04_JZGJBSJSH', @level2type=N'COLUMN',@level2name=N'LXNY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ӽ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_A04_JZGJBSJSH', @level2type=N'COLUMN',@level2name=N'CJNY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_A04_JZGJBSJSH', @level2type=N'COLUMN',@level2name=N'BZLBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_A04_JZGJBSJSH', @level2type=N'COLUMN',@level2name=N'DABH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����ı�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_A04_JZGJBSJSH', @level2type=N'COLUMN',@level2name=N'DAWB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ͨ�ŵ�ַ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_A04_JZGJBSJSH', @level2type=N'COLUMN',@level2name=N'TXDZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ϵ�绰' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_A04_JZGJBSJSH', @level2type=N'COLUMN',@level2name=N'LXDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_A04_JZGJBSJSH', @level2type=N'COLUMN',@level2name=N'YZBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_A04_JZGJBSJSH', @level2type=N'COLUMN',@level2name=N'DZXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ҳ��ַ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_A04_JZGJBSJSH', @level2type=N'COLUMN',@level2name=N'ZYDZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�س�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_A04_JZGJBSJSH', @level2type=N'COLUMN',@level2name=N'TC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��λְҵ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_A04_JZGJBSJSH', @level2type=N'COLUMN',@level2name=N'GWZYM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ҫ�ο�ѧ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_A04_JZGJBSJSH', @level2type=N'COLUMN',@level2name=N'ZYRKXD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ְ����չ��(���)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_A05_JZGKZSH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�̹�������ϢID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_A05_JZGKZSH', @level2type=N'COLUMN',@level2name=N'JZGID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_A05_JZGKZSH', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_A05_JZGKZSH', @level2type=N'COLUMN',@level2name=N'GL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_A05_JZGKZSH', @level2type=N'COLUMN',@level2name=N'JL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�߼���ְ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_A05_JZGKZSH', @level2type=N'COLUMN',@level2name=N'GJRZNX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�м���ְ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_A05_JZGKZSH', @level2type=N'COLUMN',@level2name=N'ZJRZNX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ְ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_A05_JZGKZSH', @level2type=N'COLUMN',@level2name=N'CJRZNX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ְ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_A05_JZGKZSH', @level2type=N'COLUMN',@level2name=N'RZNX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������֧��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_A05_JZGKZSH', @level2type=N'COLUMN',@level2name=N'SSDZB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ҵԺУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_A05_JZGKZSH', @level2type=N'COLUMN',@level2name=N'BYYX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧϰ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_A05_JZGKZSH', @level2type=N'COLUMN',@level2name=N'XXJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_A05_JZGKZSH', @level2type=N'COLUMN',@level2name=N'GZJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_A05_JZGKZSH', @level2type=N'COLUMN',@level2name=N'HJQK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ְ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_A05_JZGKZSH', @level2type=N'COLUMN',@level2name=N'ZC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�߼���ְȡ��ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_A05_JZGKZSH', @level2type=N'COLUMN',@level2name=N'GJRZQDSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�м���ְȡ��ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_A05_JZGKZSH', @level2type=N'COLUMN',@level2name=N'ZJRZQDSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ְȡ��ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_A05_JZGKZSH', @level2type=N'COLUMN',@level2name=N'CJRZQDSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ְ������֤���������(���)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_A06_JZGNLZSSH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_A06_JZGNLZSSH', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ְ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_A06_JZGNLZSSH', @level2type=N'COLUMN',@level2name=N'JZGJBSJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'֤������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_A06_JZGNLZSSH', @level2type=N'COLUMN',@level2name=N'ZSMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'֤����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_A06_JZGNLZSSH', @level2type=N'COLUMN',@level2name=N'ZSBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'֤��䷢��λ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_A06_JZGNLZSSH', @level2type=N'COLUMN',@level2name=N'ZSBFDW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'֤��䷢����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_A06_JZGNLZSSH', @level2type=N'COLUMN',@level2name=N'ZSBFRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'֤�鱸ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_A06_JZGNLZSSH', @level2type=N'COLUMN',@level2name=N'ZSBZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ���ְҵ�ʸ�֤��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_A06_JZGNLZSSH', @level2type=N'COLUMN',@level2name=N'SFSZYZGZS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_A06_JZGNLZSSH', @level2type=N'COLUMN',@level2name=N'JJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_A06_JZGNLZSSH', @level2type=N'COLUMN',@level2name=N'ZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'У�ڸ�λ���������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_02_A01_XNGWSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_02_A01_XNGWSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_02_A01_XNGWSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_02_A01_XNGWSJ', @level2type=N'COLUMN',@level2name=N'JGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ְ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_02_A01_XNGWSJ', @level2type=N'COLUMN',@level2name=N'JZGJBSJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ְ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_02_A01_XNGWSJ', @level2type=N'COLUMN',@level2name=N'ZWMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�θڼ�¼��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_02_A02_RGJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_02_A02_RGJL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_02_A02_RGJL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_02_A02_RGJL', @level2type=N'COLUMN',@level2name=N'JGMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ְ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_02_A02_RGJL', @level2type=N'COLUMN',@level2name=N'JZGJBSJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ְ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_02_A02_RGJL', @level2type=N'COLUMN',@level2name=N'ZWMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��λ��ʼ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_02_A02_RGJL', @level2type=N'COLUMN',@level2name=N'GWQSNY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��λ��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_02_A02_RGJL', @level2type=N'COLUMN',@level2name=N'GWJSNY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ο����������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_07_02_RKSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_07_02_RKSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_07_02_RKSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ְ���������������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_07_02_RKSJ', @level2type=N'COLUMN',@level2name=N'JZGJBSJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�οογ̺�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_07_02_RKSJ', @level2type=N'COLUMN',@level2name=N'RKKCH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ο���ʼ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_07_02_RKSJ', @level2type=N'COLUMN',@level2name=N'RKQSNY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ο���ֹ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_07_02_RKSJ', @level2type=N'COLUMN',@level2name=N'RKZZNY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ο���ѧʱ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_07_02_RKSJ', @level2type=N'COLUMN',@level2name=N'RKZXS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ο�ѧ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_07_02_RKSJ', @level2type=N'COLUMN',@level2name=N'RKXDM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ον�ɫ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_07_02_RKSJ', @level2type=N'COLUMN',@level2name=N'RKJSM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ڿΰ༶' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_07_02_RKSJ', @level2type=N'COLUMN',@level2name=N'SKBJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ڿ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_07_02_RKSJ', @level2type=N'COLUMN',@level2name=N'SKRS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ܿ�ʱ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_07_02_RKSJ', @level2type=N'COLUMN',@level2name=N'ZKS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_07_02_RKSJ', @level2type=N'COLUMN',@level2name=N'SFLT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�꼶��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_07_02_RKSJ', @level2type=N'COLUMN',@level2name=N'NJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_07_02_RKSJ', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_07_02_RKSJ', @level2type=N'COLUMN',@level2name=N'XNID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'н�����ͱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_12_A01_XCLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_12_A01_XCLX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_12_A01_XCLX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_12_A01_XCLX', @level2type=N'COLUMN',@level2name=N'XCLXMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'н���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_12_A02_XC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_12_A02_XC', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_12_A02_XC', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�̹�������ϢID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_12_A02_XC', @level2type=N'COLUMN',@level2name=N'JZGJBSJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʼʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_12_A02_XC', @level2type=N'COLUMN',@level2name=N'KSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_12_A02_XC', @level2type=N'COLUMN',@level2name=N'JSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'н������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_12_A02_XC', @level2type=N'COLUMN',@level2name=N'XCLXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_12_A02_XC', @level2type=N'COLUMN',@level2name=N'JE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_12_A02_XC', @level2type=N'COLUMN',@level2name=N'FFSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_12_A02_XC', @level2type=N'COLUMN',@level2name=N'FFPCID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'н��ÿ�·������α�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_12_A03_XCMYFFPC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_12_A03_XCMYFFPC', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_12_A03_XCMYFFPC', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_12_A03_XCMYFFPC', @level2type=N'COLUMN',@level2name=N'PCMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ա��Ϣ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_17_A01_DYXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_17_A01_DYXX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_17_A01_DYXX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�̹�������ϢID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_17_A01_DYXX', @level2type=N'COLUMN',@level2name=N'JZGJBSJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�뵳ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_17_A01_DYXX', @level2type=N'COLUMN',@level2name=N'RDSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�뵳�ص�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_17_A01_DYXX', @level2type=N'COLUMN',@level2name=N'RDDD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�뵳������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_17_A01_DYXX', @level2type=N'COLUMN',@level2name=N'RDJSR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ǰ״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_17_A01_DYXX', @level2type=N'COLUMN',@level2name=N'DQZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ӽ�ʦID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_17_A01_DYXX', @level2type=N'COLUMN',@level2name=N'TJJSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_17_A01_DYXX', @level2type=N'COLUMN',@level2name=N'TJSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_17_A01_DYXX', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����սɼ�¼��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_17_A02_DFSJJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_17_A02_DFSJJL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_17_A02_DFSJJL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_17_A02_DFSJJL', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ա��ϢID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_17_A02_DFSJJL', @level2type=N'COLUMN',@level2name=N'DYXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�̹�������ϢID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_17_A02_DFSJJL', @level2type=N'COLUMN',@level2name=N'JZGJBSJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�սɽ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_17_A02_DFSJJL', @level2type=N'COLUMN',@level2name=N'SJJE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ӽ�ʦID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_17_A02_DFSJJL', @level2type=N'COLUMN',@level2name=N'TJJSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_17_A02_DFSJJL', @level2type=N'COLUMN',@level2name=N'TJSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��֧�����ݱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_17_A03_DZBSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_17_A03_DZBSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_17_A03_DZBSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��֧������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_17_A03_DZBSJ', @level2type=N'COLUMN',@level2name=N'DZBMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_17_A03_DZBSJ', @level2type=N'COLUMN',@level2name=N'SS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_17_A03_DZBSJ', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��֧��ְλ���ݱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_17_A04_DZBZWSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_17_A04_DZBZWSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_17_A04_DZBZWSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��֧��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_17_A04_DZBZWSJ', @level2type=N'COLUMN',@level2name=N'DZBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ְλ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_17_A04_DZBZWSJ', @level2type=N'COLUMN',@level2name=N'ZWMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_17_A04_DZBZWSJ', @level2type=N'COLUMN',@level2name=N'GZNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_17_A04_DZBZWSJ', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��֧����Ա��Ϣ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_17_A05_DZBCYXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_17_A05_DZBCYXX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_17_A05_DZBCYXX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ա��ϢID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_17_A05_DZBCYXX', @level2type=N'COLUMN',@level2name=N'DYXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�̹�������ϢID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_17_A05_DZBCYXX', @level2type=N'COLUMN',@level2name=N'JZGJBSJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��֧��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_17_A05_DZBCYXX', @level2type=N'COLUMN',@level2name=N'DZBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��֧��ְλID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_17_A05_DZBCYXX', @level2type=N'COLUMN',@level2name=N'DZBZWID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ӽ�ʦID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_17_A05_DZBCYXX', @level2type=N'COLUMN',@level2name=N'TJJSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_17_A05_DZBCYXX', @level2type=N'COLUMN',@level2name=N'TJSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��֧�����Ϣ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_17_A06_DZBHDXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_17_A06_DZBHDXX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_17_A06_DZBHDXX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_17_A06_DZBHDXX', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��֧��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_17_A06_DZBHDXX', @level2type=N'COLUMN',@level2name=N'DZBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_17_A06_DZBHDXX', @level2type=N'COLUMN',@level2name=N'HDMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_17_A06_DZBHDXX', @level2type=N'COLUMN',@level2name=N'HDNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ϴ���ʦID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_17_A06_DZBHDXX', @level2type=N'COLUMN',@level2name=N'SCJSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ϴ�ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_17_A06_DZBHDXX', @level2type=N'COLUMN',@level2name=N'SCSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_17_A06_DZBHDXX', @level2type=N'COLUMN',@level2name=N'HDSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʦ���ΰ����μ�¼��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_18_A03_JSDRBZRJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_18_A03_JSDRBZRJL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_18_A03_JSDRBZRJL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ְ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_18_A03_JSDRBZRJL', @level2type=N'COLUMN',@level2name=N'JZGJBSJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ΰ༶' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_18_A03_JSDRBZRJL', @level2type=N'COLUMN',@level2name=N'DRBJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_18_A03_JSDRBZRJL', @level2type=N'COLUMN',@level2name=N'DRSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_18_A03_JSDRBZRJL', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���𷢷ż�¼��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_19_A01_JJFFJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_19_A01_JJFFJL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_19_A01_JJFFJL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�̹�������ϢID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_19_A01_JJFFJL', @level2type=N'COLUMN',@level2name=N'JZGJBSJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_19_A01_JJFFJL', @level2type=N'COLUMN',@level2name=N'JJMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_19_A01_JJFFJL', @level2type=N'COLUMN',@level2name=N'JE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_19_A01_JJFFJL', @level2type=N'COLUMN',@level2name=N'FFSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ�֪ͨ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_19_A01_JJFFJL', @level2type=N'COLUMN',@level2name=N'SFTZG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_19_A01_JJFFJL', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ�����̴�ַ�ʽ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_20_A01_XSPJDFFS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_20_A01_XSPJDFFS', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_20_A01_XSPJDFFS', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ַ�ʽ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_20_A01_XSPJDFFS', @level2type=N'COLUMN',@level2name=N'DFFSMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_20_A01_XSPJDFFS', @level2type=N'COLUMN',@level2name=N'ZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ�����̴����Ŀ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_20_A02_XSPJDFXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_20_A02_XSPJDFXM', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_20_A02_XSPJDFXM', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ַ�ʽID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_20_A02_XSPJDFXM', @level2type=N'COLUMN',@level2name=N'DFFSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����Ŀ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_20_A02_XSPJDFXM', @level2type=N'COLUMN',@level2name=N'DFXMMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ֵ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_20_A02_XSPJDFXM', @level2type=N'COLUMN',@level2name=N'FZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��������Ŀ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_20_A03_XSPJTM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_20_A03_XSPJTM', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_20_A03_XSPJTM', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ַ�ʽID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_20_A03_XSPJTM', @level2type=N'COLUMN',@level2name=N'DFFSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������Ŀ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_20_A03_XSPJTM', @level2type=N'COLUMN',@level2name=N'PJXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ָ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_20_A03_XSPJTM', @level2type=N'COLUMN',@level2name=N'PJZB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_20_A03_XSPJTM', @level2type=N'COLUMN',@level2name=N'ZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ�����̿�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_20_A04_XSPJKP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_20_A04_XSPJKP', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_20_A04_XSPJKP', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_20_A04_XSPJKP', @level2type=N'COLUMN',@level2name=N'KPMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʼʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_20_A04_XSPJKP', @level2type=N'COLUMN',@level2name=N'KSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_20_A04_XSPJKP', @level2type=N'COLUMN',@level2name=N'JSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_20_A04_XSPJKP', @level2type=N'COLUMN',@level2name=N'ZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ�����̿�����Ŀ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_20_A05_XSPJKPTM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_20_A05_XSPJKPTM', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_20_A05_XSPJKPTM', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_20_A05_XSPJKPTM', @level2type=N'COLUMN',@level2name=N'KPID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ĿID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_20_A05_XSPJKPTM', @level2type=N'COLUMN',@level2name=N'TMID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ�����̿����༶��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_20_A06_XSPJKPBJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_20_A06_XSPJKPBJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_20_A06_XSPJKPBJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_20_A06_XSPJKPBJ', @level2type=N'COLUMN',@level2name=N'KPID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�༶����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_20_A06_XSPJKPBJ', @level2type=N'COLUMN',@level2name=N'BJMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����̹�ID�б�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_20_A06_XSPJKPBJ', @level2type=N'COLUMN',@level2name=N'BPJGIDLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����̹������б�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_20_A06_XSPJKPBJ', @level2type=N'COLUMN',@level2name=N'BPJGXMLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ӧ�γ������б�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_20_A06_XSPJKPBJ', @level2type=N'COLUMN',@level2name=N'DYKCMCLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ӧ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_20_A06_XSPJKPBJ', @level2type=N'COLUMN',@level2name=N'YPRS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ʶ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_20_A06_XSPJKPBJ', @level2type=N'COLUMN',@level2name=N'SBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_20_A06_XSPJKPBJ', @level2type=N'COLUMN',@level2name=N'KQSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Զ��ر�ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_20_A06_XSPJKPBJ', @level2type=N'COLUMN',@level2name=N'ZDGBSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_20_A06_XSPJKPBJ', @level2type=N'COLUMN',@level2name=N'ZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ�����̿��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_20_A07_XSPJKPJG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_20_A07_XSPJKPJG', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_20_A07_XSPJKPJG', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ĿID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_20_A07_XSPJKPJG', @level2type=N'COLUMN',@level2name=N'KPTMID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����༶ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_20_A07_XSPJKPJG', @level2type=N'COLUMN',@level2name=N'KPBJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ְ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_20_A07_XSPJKPJG', @level2type=N'COLUMN',@level2name=N'JZGJBSJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'IP��ַ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_20_A07_XSPJKPJG', @level2type=N'COLUMN',@level2name=N'IP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ֵ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_20_A07_XSPJKPJG', @level2type=N'COLUMN',@level2name=N'FZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ�������ύ��¼��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_20_A08_XSPJTJJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_20_A08_XSPJTJJL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����༶ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_20_A08_XSPJTJJL', @level2type=N'COLUMN',@level2name=N'KPBJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ʶ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_20_A08_XSPJTJJL', @level2type=N'COLUMN',@level2name=N'SBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'IP��ַ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_20_A08_XSPJTJJL', @level2type=N'COLUMN',@level2name=N'IP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ύʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_20_A08_XSPJTJJL', @level2type=N'COLUMN',@level2name=N'TJSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_21_A01_BMXSL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_21_A01_BMXSL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_21_A01_BMXSL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ű��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_21_A01_BMXSL', @level2type=N'COLUMN',@level2name=N'BMBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_21_A01_BMXSL', @level2type=N'COLUMN',@level2name=N'SJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ҫ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_21_A01_BMXSL', @level2type=N'COLUMN',@level2name=N'ZYGZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_21_A01_BMXSL', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_21_A02_ZXSL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_21_A02_ZXSL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_21_A02_ZXSL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���β���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_21_A02_ZXSL', @level2type=N'COLUMN',@level2name=N'ZRBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_21_A02_ZXSL', @level2type=N'COLUMN',@level2name=N'SJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ҫ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_21_A02_ZXSL', @level2type=N'COLUMN',@level2name=N'ZYGZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_21_A02_ZXSL', @level2type=N'COLUMN',@level2name=N'BZ'
GO
