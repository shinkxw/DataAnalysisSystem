--�ռ�����EDU_ELE  ��������SqlBuilder0.1

if exists (select 1 from  sysobjects where  id = object_id('EDU_ELE_01_USER')
            and   type = 'U')
   drop table EDU_ELE_01_USER
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ELE_01_APP')
            and   type = 'U')
   drop table EDU_ELE_01_APP
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ELE_01_SCHOOL')
            and   type = 'U')
   drop table EDU_ELE_01_SCHOOL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ELE_01_XQ')
            and   type = 'U')
   drop table EDU_ELE_01_XQ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ELE_01_ROLE')
            and   type = 'U')
   drop table EDU_ELE_01_ROLE
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ELE_01_CONFIG')
            and   type = 'U')
   drop table EDU_ELE_01_CONFIG
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ELE_01_HASH')
            and   type = 'U')
   drop table EDU_ELE_01_HASH
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ELE_01_APPUSER')
            and   type = 'U')
   drop table EDU_ELE_01_APPUSER
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ELE_01_APPDLCS')
            and   type = 'U')
   drop table EDU_ELE_01_APPDLCS
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ELE_03_APPRZ')
            and   type = 'U')
   drop table EDU_ELE_03_APPRZ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ELE_03_APPLL')
            and   type = 'U')
   drop table EDU_ELE_03_APPLL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ELE_03_YHSYJL')
            and   type = 'U')
   drop table EDU_ELE_03_YHSYJL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ELE_03_XNJS')
            and   type = 'U')
   drop table EDU_ELE_03_XNJS
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ELE_04_PKJGJL')
            and   type = 'U')
   drop table EDU_ELE_04_PKJGJL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ELE_05_XL')
            and   type = 'U')
   drop table EDU_ELE_05_XL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ELE_05_XLZ')
            and   type = 'U')
   drop table EDU_ELE_05_XLZ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ELE_05_WEEKDAY')
            and   type = 'U')
   drop table EDU_ELE_05_WEEKDAY
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ELE_05_SD')
            and   type = 'U')
   drop table EDU_ELE_05_SD
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ELE_05_JC')
            and   type = 'U')
   drop table EDU_ELE_05_JC
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ELE_06_CDSJ')
            and   type = 'U')
   drop table EDU_ELE_06_CDSJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ELE_07_JFBD')
            and   type = 'U')
   drop table EDU_ELE_07_JFBD
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ELE_07_RYBD')
            and   type = 'U')
   drop table EDU_ELE_07_RYBD
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ELE_08_JFCONFIG')
            and   type = 'U')
   drop table EDU_ELE_08_JFCONFIG
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ELE_08_RYCONFIG')
            and   type = 'U')
   drop table EDU_ELE_08_RYCONFIG
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ELE_09_JKXX')
            and   type = 'U')
   drop table EDU_ELE_09_JKXX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ELE_10_XZQH')
            and   type = 'U')
   drop table EDU_ELE_10_XZQH
go
--Ӧ��ϵͳ�û���
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ELE_01_USER]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ELE_01_USER](
	[LOGINNAME]  nvarchar(20)  NOT NULL,--�û���
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[APPID]  int  NOT NULL,--Ӧ��ID
	[PWD]  nvarchar(100)  NOT NULL,--����
	[STATUS]  int  NOT NULL,--�û�״̬
	[USERTYPE]  int  NOT NULL,--�û����
	[USERID]  int  NOT NULL,--�û�ID
	[ROLEIDLst]  nvarchar(200)  NOT NULL,--�û���ɫ
	[XM]  nvarchar(36)  NOT NULL,--����
	[XB]  nvarchar(10)  NOT NULL,--�Ա�
	[QQ]  nvarchar(10)  NOT NULL,--QQ
	[DZYJ]  nvarchar(100)  NOT NULL,--�����ʼ�
	[LXDH]  nvarchar(30)  NOT NULL,--��ϵ�绰
	[ZJDLSJ]  datetime  NOT NULL,--���һ�ε�¼ʱ��
	[DLCGCS]  int  NOT NULL,--��¼�ɹ�����
	[YHCJSJ]  datetime  NOT NULL,--�û�����ʱ��
	[YHRY]  int  NOT NULL,--�û�����
	[YHJF]  int  NOT NULL,--�û�����
	[BMID]  int  NOT NULL,--����ID
CONSTRAINT [PK_EDU_ELE_01_USER] PRIMARY KEY CLUSTERED
(
	[LOGINNAME] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--Ӧ�ñ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ELE_01_APP]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ELE_01_APP](
	[ID]  int  NOT NULL,--Ӧ��ID
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[NAME]  nvarchar(50)  NOT NULL,--Ӧ������
	[URL]  nvarchar(200)  NOT NULL,--��ַ
	[AUTHIP]  nvarchar(200)  NOT NULL,--����IP
	[SM]  text  NOT NULL,--˵��
	[DLFS]  int  NOT NULL,--��¼��ʽ
	[STATUS]  int  NOT NULL,--Ӧ��״̬
	[TYPE]  int  NOT NULL,--Ӧ�����
	[DLCSLB]  text  NOT NULL,--��¼�����б�
	[MNDLJS]  text  NOT NULL,--ģ���¼JS
	[SYDX]  nvarchar(500)  NULL,--ʹ�ö���
	[KJDX]  nvarchar(500)  NULL,--�ɼ�����
CONSTRAINT [PK_EDU_ELE_01_APP] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ѧУ���ñ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ELE_01_SCHOOL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ELE_01_SCHOOL](
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[SCHOOLNAME]  nvarchar(60)  NOT NULL,--ѧУ����
	[SCHOOLTYPE]  int  NOT NULL,--ѧУ����
	[XNID]  int  NOT NULL,--ѧ��ID
	[XQID]  int  NOT NULL,--ѧ��ID
	[MatchURL]  nvarchar(500)  NOT NULL,--ƥ��url
	[MenhuURL]  nvarchar(500)  NOT NULL,--�Ż�url
	[MenhuWebid]  int  NOT NULL,--�Ż�webid
	[LogLevel]  int  NOT NULL,--��־����
	[ModuleIdList]  text  NOT NULL,--Ȩ���б�
	[EnableStatus]  int  NOT NULL,--����״̬
	[CreateTime]  datetime  NOT NULL,--����ʱ��
	[YXTID]  nvarchar(500)  NOT NULL,--��УͨID
	[LOGO]  nvarchar(500)  NOT NULL,--ͼ��
CONSTRAINT [PK_EDU_ELE_01_SCHOOL] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ѧ�����ݱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ELE_01_XQ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ELE_01_XQ](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[XNID]  int  NOT NULL,--ѧ��
	[XQM]  nvarchar(1)  NOT NULL,--ѧ����
	[XQMC]  nvarchar(10)  NOT NULL,--ѧ������
	[XQKSRQ]  nvarchar(8)  NULL,--ѧ�ڿ�ʼ����
	[XQJSRQ]  nvarchar(8)  NULL,--ѧ�ڽ�������
CONSTRAINT [PK_EDU_ELE_01_XQ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--Ӧ��ϵͳ��ɫ��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ELE_01_ROLE]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ELE_01_ROLE](
	[ID]  int  NOT NULL,--��ɫID
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[APPID]  int  NOT NULL,--Ӧ��ID
	[NAME]  nvarchar(20)  NOT NULL,--��ɫ��
	[PID]  int  NOT NULL,--��ɫ������ID
	[ModIDLst]  text  NOT NULL,--��ɫ�ܷ��ʵ�ģ���б�
CONSTRAINT [PK_EDU_ELE_01_ROLE] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--Ӧ��ϵͳ���ñ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ELE_01_CONFIG]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ELE_01_CONFIG](
	[ID]  int  NOT NULL,--����ID
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[APPID]  int  NOT NULL,--Ӧ��ID
	[VALUE]  nvarchar(200)  NOT NULL,--����ֵ
CONSTRAINT [PK_EDU_ELE_01_CONFIG] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC,
	[APPID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ϵͳ��ϣ��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ELE_01_HASH]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ELE_01_HASH](
	[KEY]  nvarchar(200)  NOT NULL,--��
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[VALUE]  text  NOT NULL,--ֵ
CONSTRAINT [PK_EDU_ELE_01_HASH] PRIMARY KEY CLUSTERED
(
	[KEY] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--������Ӧ���û���
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ELE_01_APPUSER]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ELE_01_APPUSER](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[YHID]  nvarchar(20)  NOT NULL,--�û�ID
	[APPID]  int  NOT NULL,--Ӧ��ID
	[YHMC]  nvarchar(36)  NOT NULL,--�û�����
	[YHZT]  int  NOT NULL,--�û�״̬
CONSTRAINT [PK_EDU_ELE_01_APPUSER] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--������Ӧ�õ�¼������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ELE_01_APPDLCS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ELE_01_APPDLCS](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[APPUSERID]  int  NOT NULL,--Ӧ���û�ID
	[CSMC]  nvarchar(50)  NOT NULL,--��������
	[CSZ]  text  NOT NULL,--����ֵ
CONSTRAINT [PK_EDU_ELE_01_APPDLCS] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--Ӧ����־��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ELE_03_APPRZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ELE_03_APPRZ](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[APPID]  int  NOT NULL,--Ӧ��ID
	[RZLX]  int  NOT NULL,--��־����
	[YHID]  nvarchar(20)  NOT NULL,--�����û�
	[CZSJ]  datetime  NOT NULL,--����ʱ��
	[CZYY]  nvarchar(30)  NOT NULL,--����Ӧ��
	[CZLX]  nvarchar(10)  NOT NULL,--��������
	[CZJTXX]  nvarchar(200)  NULL,--����������Ϣ
CONSTRAINT [PK_EDU_ELE_03_APPRZ] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--Ӧ��������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ELE_03_APPLL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ELE_03_APPLL](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[APPID]  int  NOT NULL,--Ӧ��ID
	[YHID]  nvarchar(20)  NOT NULL,--�����û�
	[CZSJ]  datetime  NOT NULL,--����ʱ��
	[CZYY]  nvarchar(30)  NOT NULL,--����Ӧ��
	[CZBM]  nvarchar(100)  NOT NULL,--��������
	[CZXX]  text  NOT NULL,--������Ϣ
CONSTRAINT [PK_EDU_ELE_03_APPLL] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�û�ʹ�ü�¼��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ELE_03_YHSYJL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ELE_03_YHSYJL](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[APPID]  int  NOT NULL,--Ӧ��ID
	[MODULEID]  int  NOT NULL,--����ID
	[YHID]  nvarchar(20)  NOT NULL,--�û�ID
	[GNMC]  nvarchar(50)  NOT NULL,--��������
	[LJ]  nvarchar(100)  NOT NULL,--����
	[SYSJ]  datetime  NOT NULL,--ʹ��ʱ��
	[XHHMS]  int  NOT NULL,--���ĺ�����
CONSTRAINT [PK_EDU_ELE_03_YHSYJL] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--���ܼ��ӱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ELE_03_XNJS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ELE_03_XNJS](
	[ID]  int  identity,--���
	[JLSJ]  datetime  NOT NULL,--��¼ʱ��
	[CPUSYL]  float  NOT NULL,--CPUʹ����
	[NCSYL]  float  NOT NULL,--�ڴ�ʹ����
	[CPDQSD]  float  NOT NULL,--���̶�ȡ�ٶ�
	[CPXRSD]  float  NOT NULL,--����д���ٶ�
	[ZXRS]  int  NOT NULL,--��������
CONSTRAINT [PK_EDU_ELE_03_XNJS] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�ſν����¼��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ELE_04_PKJGJL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ELE_04_PKJGJL](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[XQID]  int  NOT NULL,--ѧ��ID
	[TEACHERID]  int  NOT NULL,--��ʦ
	[TEACHERNAME]  nvarchar(100)  NOT NULL,--��ʦ
	[COURSEID]  nvarchar(20)  NOT NULL,--�γ�
	[COURSENAME]  nvarchar(100)  NOT NULL,--�γ�
	[CLASSID]  nvarchar(20)  NOT NULL,--�༶
	[CLASSNAME]  nvarchar(100)  NOT NULL,--�༶
	[WEEKDAY]  int  NOT NULL,--������
	[WEEKDAYNAME]  nvarchar(20)  NOT NULL,--����������
	[PERIOD]  int  NOT NULL,--ʱ��
	[PERIODNAME]  nvarchar(20)  NOT NULL,--ʱ������
	[SESSION]  int  NOT NULL,--�ڴ�
	[SESSIONNAME]  nvarchar(20)  NOT NULL,--�ڴ�����
CONSTRAINT [PK_EDU_ELE_04_PKJGJL] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--У����
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ELE_05_XL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ELE_05_XL](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[NAME]  nvarchar(50)  NOT NULL,--У������
	[STARTDAY]  datetime  NOT NULL,--��ʼ����
	[ENDDAY]  datetime  NOT NULL,--��������
	[XNID]  int  NOT NULL,--ѧ��ID
	[XQID]  int  NOT NULL,--ѧ��ID
CONSTRAINT [PK_EDU_ELE_05_XL] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--У���ܱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ELE_05_XLZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ELE_05_XLZ](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[XLID]  int  NOT NULL,--У��ID
	[NAME]  nvarchar(50)  NOT NULL,--У��������
	[STARTDAY]  datetime  NOT NULL,--��ʼ����
	[ENDDAY]  datetime  NOT NULL,--��������
	[ZJH]  text  NULL,--�ܼƻ�
CONSTRAINT [PK_EDU_ELE_05_XLZ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--����
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ELE_05_WEEKDAY]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ELE_05_WEEKDAY](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[MC]  nvarchar(8)  NOT NULL,--����
CONSTRAINT [PK_EDU_ELE_05_WEEKDAY] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ʱ��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ELE_05_SD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ELE_05_SD](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[MC]  nvarchar(5)  NOT NULL,--����
CONSTRAINT [PK_EDU_ELE_05_SD] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�ڴ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ELE_05_JC]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ELE_05_JC](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[SDID]  int  NOT NULL,--����ʱ��ID
	[MC]  nvarchar(5)  NOT NULL,--����
CONSTRAINT [PK_EDU_ELE_05_JC] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�������ݱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ELE_06_CDSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ELE_06_CDSJ](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[CDMC]  nvarchar(200)  NOT NULL,--��������
	[CDDZ]  nvarchar(200)  NOT NULL,--���ص�ַ
	[CDLX]  int  NOT NULL,--��������
	[CDFZR]  nvarchar(36)  NOT NULL,--���ظ�����
CONSTRAINT [PK_EDU_ELE_06_CDSJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--���ֱ䶯��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ELE_07_JFBD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ELE_07_JFBD](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[APPID]  int  NOT NULL,--Ӧ��ID
	[YHID]  nvarchar(20)  NOT NULL,--�û�ID
	[BDSJ]  datetime  NOT NULL,--�䶯ʱ��
	[BDTM]  nvarchar(30)  NOT NULL,--�䶯��Ŀ
	[BDJF]  int  NOT NULL,--�䶯����
	[CZXX]  text  NOT NULL,--������Ϣ
CONSTRAINT [PK_EDU_ELE_07_JFBD] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�����䶯��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ELE_07_RYBD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ELE_07_RYBD](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[APPID]  int  NOT NULL,--Ӧ��ID
	[YHID]  nvarchar(20)  NOT NULL,--�û�ID
	[BDSJ]  datetime  NOT NULL,--�䶯ʱ��
	[BDTM]  nvarchar(30)  NOT NULL,--�䶯��Ŀ
	[BDRY]  int  NOT NULL,--�䶯����
	[CZXX]  text  NOT NULL,--������Ϣ
CONSTRAINT [PK_EDU_ELE_07_RYBD] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�������ñ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ELE_08_JFCONFIG]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ELE_08_JFCONFIG](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[GNMC]  nvarchar(30)  NOT NULL,--��������
	[APPID]  int  NOT NULL,--Ӧ��ID
	[JF]  int  NOT NULL,--����
CONSTRAINT [PK_EDU_ELE_08_JFCONFIG] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�������ñ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ELE_08_RYCONFIG]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ELE_08_RYCONFIG](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[GNMC]  nvarchar(30)  NOT NULL,--��������
	[APPID]  int  NOT NULL,--Ӧ��ID
	[RY]  int  NOT NULL,--����
CONSTRAINT [PK_EDU_ELE_08_RYCONFIG] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�ӿ���Ϣ��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ELE_09_JKXX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ELE_09_JKXX](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[JKLB]  nvarchar(30)  NOT NULL,--�ӿ����
	[JKSM]  nvarchar(50)  NOT NULL,--�ӿ�˵��
	[CRCS]  nvarchar(50)  NOT NULL,--�������
	[TZWZ]  text  NOT NULL,--��ת��ַ
	[KQZT]  int  NOT NULL,--����״̬
	[FWCS]  int  NOT NULL,--���ʴ���
	[TJSJ]  datetime  NOT NULL,--���ʱ��
	[TJYH]  nvarchar(20)  NOT NULL,--����û�
CONSTRAINT [PK_EDU_ELE_09_JKXX] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--����������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ELE_10_XZQH]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ELE_10_XZQH](
	[DM]  nvarchar(6)  NOT NULL,--����
	[MC]  nvarchar(15)  NOT NULL,--����
	[QH]  nvarchar(4)  NOT NULL,--����
CONSTRAINT [PK_EDU_ELE_10_XZQH] PRIMARY KEY CLUSTERED
(
	[DM] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--����Ϊ���ע�����
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ӧ��ϵͳ�û���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_USER'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�û���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_USER', @level2type=N'COLUMN',@level2name=N'LOGINNAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_USER', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ӧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_USER', @level2type=N'COLUMN',@level2name=N'APPID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_USER', @level2type=N'COLUMN',@level2name=N'PWD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�û�״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_USER', @level2type=N'COLUMN',@level2name=N'STATUS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�û����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_USER', @level2type=N'COLUMN',@level2name=N'USERTYPE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�û�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_USER', @level2type=N'COLUMN',@level2name=N'USERID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�û���ɫ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_USER', @level2type=N'COLUMN',@level2name=N'ROLEIDLst'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_USER', @level2type=N'COLUMN',@level2name=N'XM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ա�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_USER', @level2type=N'COLUMN',@level2name=N'XB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'QQ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_USER', @level2type=N'COLUMN',@level2name=N'QQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����ʼ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_USER', @level2type=N'COLUMN',@level2name=N'DZYJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ϵ�绰' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_USER', @level2type=N'COLUMN',@level2name=N'LXDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���һ�ε�¼ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_USER', @level2type=N'COLUMN',@level2name=N'ZJDLSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��¼�ɹ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_USER', @level2type=N'COLUMN',@level2name=N'DLCGCS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�û�����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_USER', @level2type=N'COLUMN',@level2name=N'YHCJSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�û�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_USER', @level2type=N'COLUMN',@level2name=N'YHRY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�û�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_USER', @level2type=N'COLUMN',@level2name=N'YHJF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_USER', @level2type=N'COLUMN',@level2name=N'BMID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ӧ�ñ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_APP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ӧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_APP', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_APP', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ӧ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_APP', @level2type=N'COLUMN',@level2name=N'NAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ַ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_APP', @level2type=N'COLUMN',@level2name=N'URL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����IP' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_APP', @level2type=N'COLUMN',@level2name=N'AUTHIP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'˵��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_APP', @level2type=N'COLUMN',@level2name=N'SM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��¼��ʽ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_APP', @level2type=N'COLUMN',@level2name=N'DLFS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ӧ��״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_APP', @level2type=N'COLUMN',@level2name=N'STATUS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ӧ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_APP', @level2type=N'COLUMN',@level2name=N'TYPE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��¼�����б�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_APP', @level2type=N'COLUMN',@level2name=N'DLCSLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ģ���¼JS' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_APP', @level2type=N'COLUMN',@level2name=N'MNDLJS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ʹ�ö���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_APP', @level2type=N'COLUMN',@level2name=N'SYDX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ɼ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_APP', @level2type=N'COLUMN',@level2name=N'KJDX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ���ñ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_SCHOOL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_SCHOOL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_SCHOOL', @level2type=N'COLUMN',@level2name=N'SCHOOLNAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_SCHOOL', @level2type=N'COLUMN',@level2name=N'SCHOOLTYPE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_SCHOOL', @level2type=N'COLUMN',@level2name=N'XNID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_SCHOOL', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ƥ��url' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_SCHOOL', @level2type=N'COLUMN',@level2name=N'MatchURL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ż�url' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_SCHOOL', @level2type=N'COLUMN',@level2name=N'MenhuURL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ż�webid' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_SCHOOL', @level2type=N'COLUMN',@level2name=N'MenhuWebid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��־����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_SCHOOL', @level2type=N'COLUMN',@level2name=N'LogLevel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ȩ���б�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_SCHOOL', @level2type=N'COLUMN',@level2name=N'ModuleIdList'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_SCHOOL', @level2type=N'COLUMN',@level2name=N'EnableStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_SCHOOL', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��УͨID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_SCHOOL', @level2type=N'COLUMN',@level2name=N'YXTID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ͼ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_SCHOOL', @level2type=N'COLUMN',@level2name=N'LOGO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ�����ݱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_XQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_XQ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_XQ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_XQ', @level2type=N'COLUMN',@level2name=N'XNID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_XQ', @level2type=N'COLUMN',@level2name=N'XQM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_XQ', @level2type=N'COLUMN',@level2name=N'XQMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ�ڿ�ʼ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_XQ', @level2type=N'COLUMN',@level2name=N'XQKSRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ�ڽ�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_XQ', @level2type=N'COLUMN',@level2name=N'XQJSRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ӧ��ϵͳ��ɫ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_ROLE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ɫID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_ROLE', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_ROLE', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ӧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_ROLE', @level2type=N'COLUMN',@level2name=N'APPID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ɫ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_ROLE', @level2type=N'COLUMN',@level2name=N'NAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ɫ������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_ROLE', @level2type=N'COLUMN',@level2name=N'PID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ɫ�ܷ��ʵ�ģ���б�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_ROLE', @level2type=N'COLUMN',@level2name=N'ModIDLst'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ӧ��ϵͳ���ñ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_CONFIG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_CONFIG', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_CONFIG', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ӧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_CONFIG', @level2type=N'COLUMN',@level2name=N'APPID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ֵ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_CONFIG', @level2type=N'COLUMN',@level2name=N'VALUE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ϵͳ��ϣ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_HASH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_HASH', @level2type=N'COLUMN',@level2name=N'KEY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_HASH', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ֵ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_HASH', @level2type=N'COLUMN',@level2name=N'VALUE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������Ӧ���û���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_APPUSER'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_APPUSER', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_APPUSER', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�û�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_APPUSER', @level2type=N'COLUMN',@level2name=N'YHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ӧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_APPUSER', @level2type=N'COLUMN',@level2name=N'APPID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�û�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_APPUSER', @level2type=N'COLUMN',@level2name=N'YHMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�û�״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_APPUSER', @level2type=N'COLUMN',@level2name=N'YHZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������Ӧ�õ�¼������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_APPDLCS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_APPDLCS', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_APPDLCS', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ӧ���û�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_APPDLCS', @level2type=N'COLUMN',@level2name=N'APPUSERID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_APPDLCS', @level2type=N'COLUMN',@level2name=N'CSMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ֵ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_01_APPDLCS', @level2type=N'COLUMN',@level2name=N'CSZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ӧ����־��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_03_APPRZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_03_APPRZ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_03_APPRZ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ӧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_03_APPRZ', @level2type=N'COLUMN',@level2name=N'APPID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��־����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_03_APPRZ', @level2type=N'COLUMN',@level2name=N'RZLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����û�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_03_APPRZ', @level2type=N'COLUMN',@level2name=N'YHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_03_APPRZ', @level2type=N'COLUMN',@level2name=N'CZSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����Ӧ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_03_APPRZ', @level2type=N'COLUMN',@level2name=N'CZYY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_03_APPRZ', @level2type=N'COLUMN',@level2name=N'CZLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����������Ϣ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_03_APPRZ', @level2type=N'COLUMN',@level2name=N'CZJTXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ӧ��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_03_APPLL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_03_APPLL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_03_APPLL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ӧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_03_APPLL', @level2type=N'COLUMN',@level2name=N'APPID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����û�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_03_APPLL', @level2type=N'COLUMN',@level2name=N'YHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_03_APPLL', @level2type=N'COLUMN',@level2name=N'CZSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����Ӧ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_03_APPLL', @level2type=N'COLUMN',@level2name=N'CZYY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_03_APPLL', @level2type=N'COLUMN',@level2name=N'CZBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������Ϣ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_03_APPLL', @level2type=N'COLUMN',@level2name=N'CZXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�û�ʹ�ü�¼��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_03_YHSYJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_03_YHSYJL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_03_YHSYJL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ӧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_03_YHSYJL', @level2type=N'COLUMN',@level2name=N'APPID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_03_YHSYJL', @level2type=N'COLUMN',@level2name=N'MODULEID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�û�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_03_YHSYJL', @level2type=N'COLUMN',@level2name=N'YHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_03_YHSYJL', @level2type=N'COLUMN',@level2name=N'GNMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_03_YHSYJL', @level2type=N'COLUMN',@level2name=N'LJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ʹ��ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_03_YHSYJL', @level2type=N'COLUMN',@level2name=N'SYSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ĺ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_03_YHSYJL', @level2type=N'COLUMN',@level2name=N'XHHMS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ܼ��ӱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_03_XNJS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_03_XNJS', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��¼ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_03_XNJS', @level2type=N'COLUMN',@level2name=N'JLSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CPUʹ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_03_XNJS', @level2type=N'COLUMN',@level2name=N'CPUSYL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ڴ�ʹ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_03_XNJS', @level2type=N'COLUMN',@level2name=N'NCSYL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���̶�ȡ�ٶ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_03_XNJS', @level2type=N'COLUMN',@level2name=N'CPDQSD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����д���ٶ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_03_XNJS', @level2type=N'COLUMN',@level2name=N'CPXRSD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_03_XNJS', @level2type=N'COLUMN',@level2name=N'ZXRS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ſν����¼��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_04_PKJGJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_04_PKJGJL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_04_PKJGJL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_04_PKJGJL', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʦ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_04_PKJGJL', @level2type=N'COLUMN',@level2name=N'TEACHERID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʦ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_04_PKJGJL', @level2type=N'COLUMN',@level2name=N'TEACHERNAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�γ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_04_PKJGJL', @level2type=N'COLUMN',@level2name=N'COURSEID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�γ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_04_PKJGJL', @level2type=N'COLUMN',@level2name=N'COURSENAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�༶' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_04_PKJGJL', @level2type=N'COLUMN',@level2name=N'CLASSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�༶' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_04_PKJGJL', @level2type=N'COLUMN',@level2name=N'CLASSNAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_04_PKJGJL', @level2type=N'COLUMN',@level2name=N'WEEKDAY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_04_PKJGJL', @level2type=N'COLUMN',@level2name=N'WEEKDAYNAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_04_PKJGJL', @level2type=N'COLUMN',@level2name=N'PERIOD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ʱ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_04_PKJGJL', @level2type=N'COLUMN',@level2name=N'PERIODNAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ڴ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_04_PKJGJL', @level2type=N'COLUMN',@level2name=N'SESSION'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ڴ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_04_PKJGJL', @level2type=N'COLUMN',@level2name=N'SESSIONNAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'У����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_05_XL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_05_XL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_05_XL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'У������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_05_XL', @level2type=N'COLUMN',@level2name=N'NAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʼ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_05_XL', @level2type=N'COLUMN',@level2name=N'STARTDAY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_05_XL', @level2type=N'COLUMN',@level2name=N'ENDDAY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_05_XL', @level2type=N'COLUMN',@level2name=N'XNID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_05_XL', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'У���ܱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_05_XLZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_05_XLZ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_05_XLZ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'У��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_05_XLZ', @level2type=N'COLUMN',@level2name=N'XLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'У��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_05_XLZ', @level2type=N'COLUMN',@level2name=N'NAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʼ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_05_XLZ', @level2type=N'COLUMN',@level2name=N'STARTDAY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_05_XLZ', @level2type=N'COLUMN',@level2name=N'ENDDAY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ܼƻ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_05_XLZ', @level2type=N'COLUMN',@level2name=N'ZJH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_05_WEEKDAY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_05_WEEKDAY', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_05_WEEKDAY', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_05_WEEKDAY', @level2type=N'COLUMN',@level2name=N'MC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_05_SD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_05_SD', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_05_SD', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_05_SD', @level2type=N'COLUMN',@level2name=N'MC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ڴ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_05_JC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_05_JC', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_05_JC', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_05_JC', @level2type=N'COLUMN',@level2name=N'SDID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_05_JC', @level2type=N'COLUMN',@level2name=N'MC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������ݱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_06_CDSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_06_CDSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_06_CDSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_06_CDSJ', @level2type=N'COLUMN',@level2name=N'CDMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ص�ַ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_06_CDSJ', @level2type=N'COLUMN',@level2name=N'CDDZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_06_CDSJ', @level2type=N'COLUMN',@level2name=N'CDLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ظ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_06_CDSJ', @level2type=N'COLUMN',@level2name=N'CDFZR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ֱ䶯��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_07_JFBD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_07_JFBD', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_07_JFBD', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ӧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_07_JFBD', @level2type=N'COLUMN',@level2name=N'APPID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�û�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_07_JFBD', @level2type=N'COLUMN',@level2name=N'YHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�䶯ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_07_JFBD', @level2type=N'COLUMN',@level2name=N'BDSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�䶯��Ŀ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_07_JFBD', @level2type=N'COLUMN',@level2name=N'BDTM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�䶯����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_07_JFBD', @level2type=N'COLUMN',@level2name=N'BDJF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������Ϣ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_07_JFBD', @level2type=N'COLUMN',@level2name=N'CZXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����䶯��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_07_RYBD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_07_RYBD', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_07_RYBD', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ӧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_07_RYBD', @level2type=N'COLUMN',@level2name=N'APPID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�û�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_07_RYBD', @level2type=N'COLUMN',@level2name=N'YHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�䶯ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_07_RYBD', @level2type=N'COLUMN',@level2name=N'BDSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�䶯��Ŀ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_07_RYBD', @level2type=N'COLUMN',@level2name=N'BDTM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�䶯����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_07_RYBD', @level2type=N'COLUMN',@level2name=N'BDRY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������Ϣ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_07_RYBD', @level2type=N'COLUMN',@level2name=N'CZXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������ñ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_08_JFCONFIG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_08_JFCONFIG', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_08_JFCONFIG', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_08_JFCONFIG', @level2type=N'COLUMN',@level2name=N'GNMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ӧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_08_JFCONFIG', @level2type=N'COLUMN',@level2name=N'APPID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_08_JFCONFIG', @level2type=N'COLUMN',@level2name=N'JF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������ñ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_08_RYCONFIG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_08_RYCONFIG', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_08_RYCONFIG', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_08_RYCONFIG', @level2type=N'COLUMN',@level2name=N'GNMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ӧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_08_RYCONFIG', @level2type=N'COLUMN',@level2name=N'APPID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_08_RYCONFIG', @level2type=N'COLUMN',@level2name=N'RY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ӿ���Ϣ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_09_JKXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_09_JKXX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_09_JKXX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ӿ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_09_JKXX', @level2type=N'COLUMN',@level2name=N'JKLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ӿ�˵��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_09_JKXX', @level2type=N'COLUMN',@level2name=N'JKSM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_09_JKXX', @level2type=N'COLUMN',@level2name=N'CRCS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ת��ַ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_09_JKXX', @level2type=N'COLUMN',@level2name=N'TZWZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_09_JKXX', @level2type=N'COLUMN',@level2name=N'KQZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ʴ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_09_JKXX', @level2type=N'COLUMN',@level2name=N'FWCS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_09_JKXX', @level2type=N'COLUMN',@level2name=N'TJSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����û�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_09_JKXX', @level2type=N'COLUMN',@level2name=N'TJYH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_10_XZQH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_10_XZQH', @level2type=N'COLUMN',@level2name=N'DM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_10_XZQH', @level2type=N'COLUMN',@level2name=N'MC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_10_XZQH', @level2type=N'COLUMN',@level2name=N'QH'
GO
--�ռ�����EDU_OAXT  ��������SqlBuilder0.1

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_01_01_WJJBSJ')
            and   type = 'U')
   drop table EDU_OAXT_01_01_WJJBSJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_02_01_SWCL')
            and   type = 'U')
   drop table EDU_OAXT_02_01_SWCL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_02_02_WJYB')
            and   type = 'U')
   drop table EDU_OAXT_02_02_WJYB
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_03_01_FWCL')
            and   type = 'U')
   drop table EDU_OAXT_03_01_FWCL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_03_02_HG')
            and   type = 'U')
   drop table EDU_OAXT_03_02_HG
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_03_03_HQ')
            and   type = 'U')
   drop table EDU_OAXT_03_03_HQ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_03_04_CP')
            and   type = 'U')
   drop table EDU_OAXT_03_04_CP
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_04_01_WJQT')
            and   type = 'U')
   drop table EDU_OAXT_04_01_WJQT
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_05_01_WJXH')
            and   type = 'U')
   drop table EDU_OAXT_05_01_WJXH
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_06_01_WJJQ')
            and   type = 'U')
   drop table EDU_OAXT_06_01_WJJQ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_08_01_DADJ')
            and   type = 'U')
   drop table EDU_OAXT_08_01_DADJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_10_A01_TZ')
            and   type = 'U')
   drop table EDU_OAXT_10_A01_TZ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_10_A02_TZYDJL')
            and   type = 'U')
   drop table EDU_OAXT_10_A02_TZYDJL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_10_A03_GG')
            and   type = 'U')
   drop table EDU_OAXT_10_A03_GG
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_10_A04_TZMB')
            and   type = 'U')
   drop table EDU_OAXT_10_A04_TZMB
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_11_A01_YJ')
            and   type = 'U')
   drop table EDU_OAXT_11_A01_YJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_12_A01_SJFB')
            and   type = 'U')
   drop table EDU_OAXT_12_A01_SJFB
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_13_A01_DWSJ')
            and   type = 'U')
   drop table EDU_OAXT_13_A01_DWSJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_14_A01_GRRCXX')
            and   type = 'U')
   drop table EDU_OAXT_14_A01_GRRCXX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_15_A01_ZCML')
            and   type = 'U')
   drop table EDU_OAXT_15_A01_ZCML
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_15_A02_ZCDL')
            and   type = 'U')
   drop table EDU_OAXT_15_A02_ZCDL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_15_A03_ZCKC')
            and   type = 'U')
   drop table EDU_OAXT_15_A03_ZCKC
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_15_A04_ZCRK')
            and   type = 'U')
   drop table EDU_OAXT_15_A04_ZCRK
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_15_A05_ZCJH')
            and   type = 'U')
   drop table EDU_OAXT_15_A05_ZCJH
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_15_A06_ZCBG')
            and   type = 'U')
   drop table EDU_OAXT_15_A06_ZCBG
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_15_A07_BXLX')
            and   type = 'U')
   drop table EDU_OAXT_15_A07_BXLX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_15_A08_BXGL')
            and   type = 'U')
   drop table EDU_OAXT_15_A08_BXGL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_15_A09_WXJH')
            and   type = 'U')
   drop table EDU_OAXT_15_A09_WXJH
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_15_A10_ZCBF')
            and   type = 'U')
   drop table EDU_OAXT_15_A10_ZCBF
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_15_A11_ZCPD')
            and   type = 'U')
   drop table EDU_OAXT_15_A11_ZCPD
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_15_A12_ZCPDMX')
            and   type = 'U')
   drop table EDU_OAXT_15_A12_ZCPDMX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_15_A13_WXJL')
            and   type = 'U')
   drop table EDU_OAXT_15_A13_WXJL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_15_A14_BXGZXX')
            and   type = 'U')
   drop table EDU_OAXT_15_A14_BXGZXX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_20_A01_LCMBLX')
            and   type = 'U')
   drop table EDU_OAXT_20_A01_LCMBLX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_20_A02_LCBDSJ')
            and   type = 'U')
   drop table EDU_OAXT_20_A02_LCBDSJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_20_A03_LCMB')
            and   type = 'U')
   drop table EDU_OAXT_20_A03_LCMB
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_20_A04_LCBZ')
            and   type = 'U')
   drop table EDU_OAXT_20_A04_LCBZ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_20_A05_LCSL')
            and   type = 'U')
   drop table EDU_OAXT_20_A05_LCSL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_20_A06_LCSHJL')
            and   type = 'U')
   drop table EDU_OAXT_20_A06_LCSHJL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_20_A07_LCMBLXPZ')
            and   type = 'U')
   drop table EDU_OAXT_20_A07_LCMBLXPZ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_21_A01_QJLX')
            and   type = 'U')
   drop table EDU_OAXT_21_A01_QJLX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_21_A02_QJSQ')
            and   type = 'U')
   drop table EDU_OAXT_21_A02_QJSQ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_21_A03_QJSQXGJL')
            and   type = 'U')
   drop table EDU_OAXT_21_A03_QJSQXGJL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_22_A01_HYSSJ')
            and   type = 'U')
   drop table EDU_OAXT_22_A01_HYSSJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_22_A02_HYSQ')
            and   type = 'U')
   drop table EDU_OAXT_22_A02_HYSQ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_22_A03_HYSQXGJL')
            and   type = 'U')
   drop table EDU_OAXT_22_A03_HYSQXGJL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_22_A04_HYJY')
            and   type = 'U')
   drop table EDU_OAXT_22_A04_HYJY
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_22_A05_HYBZLX')
            and   type = 'U')
   drop table EDU_OAXT_22_A05_HYBZLX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_22_A06_HYJYMB')
            and   type = 'U')
   drop table EDU_OAXT_22_A06_HYJYMB
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_23_A01_GWSQ')
            and   type = 'U')
   drop table EDU_OAXT_23_A01_GWSQ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_23_A02_GWSQXGJL')
            and   type = 'U')
   drop table EDU_OAXT_23_A02_GWSQXGJL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_24_A01_YCSQ')
            and   type = 'U')
   drop table EDU_OAXT_24_A01_YCSQ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_24_A02_YCSQXGJL')
            and   type = 'U')
   drop table EDU_OAXT_24_A02_YCSQXGJL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_24_A03_CLSJ')
            and   type = 'U')
   drop table EDU_OAXT_24_A03_CLSJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_25_A01_CGSQ')
            and   type = 'U')
   drop table EDU_OAXT_25_A01_CGSQ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_25_A02_CGSQXGJL')
            and   type = 'U')
   drop table EDU_OAXT_25_A02_CGSQXGJL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_26_A01_SYSSJ')
            and   type = 'U')
   drop table EDU_OAXT_26_A01_SYSSJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_26_A02_SYSQC')
            and   type = 'U')
   drop table EDU_OAXT_26_A02_SYSQC
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_26_A03_SYSSQ')
            and   type = 'U')
   drop table EDU_OAXT_26_A03_SYSSQ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_26_A04_SYSSQXGJL')
            and   type = 'U')
   drop table EDU_OAXT_26_A04_SYSSQXGJL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_30_A01_DSJ')
            and   type = 'U')
   drop table EDU_OAXT_30_A01_DSJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_31_A01_GRTXL')
            and   type = 'U')
   drop table EDU_OAXT_31_A01_GRTXL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_32_A01_DCWJ')
            and   type = 'U')
   drop table EDU_OAXT_32_A01_DCWJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_32_A02_DCWJTM')
            and   type = 'U')
   drop table EDU_OAXT_32_A02_DCWJTM
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_32_A03_DCWJTMXX')
            and   type = 'U')
   drop table EDU_OAXT_32_A03_DCWJTMXX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_32_A04_DCWJJL')
            and   type = 'U')
   drop table EDU_OAXT_32_A04_DCWJJL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_33_A01_GWJCXX')
            and   type = 'U')
   drop table EDU_OAXT_33_A01_GWJCXX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_33_A02_GZ')
            and   type = 'U')
   drop table EDU_OAXT_33_A02_GZ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_33_A03_FW')
            and   type = 'U')
   drop table EDU_OAXT_33_A03_FW
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_33_A04_SW')
            and   type = 'U')
   drop table EDU_OAXT_33_A04_SW
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_33_A05_HTWZ')
            and   type = 'U')
   drop table EDU_OAXT_33_A05_HTWZ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_34_A01_WYLCJL')
            and   type = 'U')
   drop table EDU_OAXT_34_A01_WYLCJL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_35_A01_RW')
            and   type = 'U')
   drop table EDU_OAXT_35_A01_RW
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_35_A02_RWJSR')
            and   type = 'U')
   drop table EDU_OAXT_35_A02_RWJSR
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_35_A03_HFJL')
            and   type = 'U')
   drop table EDU_OAXT_35_A03_HFJL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_36_A01_BJGZLB')
            and   type = 'U')
   drop table EDU_OAXT_36_A01_BJGZLB
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_36_A02_BJGZJC')
            and   type = 'U')
   drop table EDU_OAXT_36_A02_BJGZJC
go
--�ļ������������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_01_01_WJJBSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_01_01_WJJBSJ](
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[ID]  int  NOT NULL,--�ļ�ID
	[WJBH]  nvarchar(10)  NOT NULL,--�ļ����
	[WJWH]  nvarchar(24)  NOT NULL,--�ļ��ĺ�
	[BT]  nvarchar(60)  NOT NULL,--����
	[ZTC]  text  NOT NULL,--�����
	[MJM]  nvarchar(1)  NOT NULL,--�ܼ���
	[JJCDM]  nvarchar(1)  NOT NULL,--�����̶���
	[YS]  decimal(6, 0)  NULL,--ҳ��
	[WJFLM]  nvarchar(2)  NOT NULL,--�ļ�������
	[ZW]  text  NOT NULL,--����
	[FJ]  text  NOT NULL,--����
	[FWRQ]  nvarchar(8)  NOT NULL,--��������
	[CSDW]  text  NOT NULL,--���͵�λ
CONSTRAINT [PK_EDU_OAXT_01_01_WJJBSJ] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--���Ĵ��������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_02_01_SWCL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_02_01_SWCL](
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[WJID]  int  NOT NULL,--�ļ�ID
	[QSRID]  nvarchar(20)  NOT NULL,--ǩ����ID
	[CFRID]  nvarchar(20)  NOT NULL,--�����ID
	[DJRID]  nvarchar(20)  NOT NULL,--�Ǽ���ID
	[QSRGH]  nvarchar(20)  NOT NULL,--ǩ���˹���
	[CFRGH]  nvarchar(20)  NOT NULL,--����˹���
	[DJRGH]  nvarchar(20)  NOT NULL,--�Ǽ��˹���
	[SWRQ]  nvarchar(8)  NOT NULL,--��������
	[LWDW]  nvarchar(60)  NOT NULL,--���ĵ�λ
	[FS]  decimal(3, 0)  NOT NULL,--����
	[CLQK]  text  NOT NULL,--�������
	[FYFS]  decimal(4, 0)  NULL,--��ӡ����
CONSTRAINT [PK_EDU_OAXT_02_01_SWCL] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[WJID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�ļ��İ������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_02_02_WJYB]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_02_02_WJYB](
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[WJID]  int  NOT NULL,--�ļ�ID
	[YBRID]  nvarchar(20)  NOT NULL,--�İ���ID
	[YBLBM]  nvarchar(1)  NULL,--�İ������
	[YBJB]  nvarchar(30)  NULL,--�İ켶��
	[YBDW]  nvarchar(60)  NULL,--�İ쵥λ
	[YBDWBH]  nvarchar(10)  NULL,--�İ쵥λ���
	[YBRGH]  nvarchar(20)  NULL,--�İ��˹���
	[YBYJ]  text  NOT NULL,--�İ����
	[YBRQ]  nvarchar(8)  NULL,--�İ�����
CONSTRAINT [PK_EDU_OAXT_02_02_WJYB] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[WJID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--���Ĵ��������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_03_01_FWCL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_03_01_FWCL](
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[WJID]  int  NOT NULL,--�ļ�ID
	[NGRID]  nvarchar(20)  NOT NULL,--�����ID
	[QFRID]  nvarchar(20)  NOT NULL,--ǩ����ID
	[DJRID]  nvarchar(20)  NOT NULL,--�Ǽ���ID
	[DZRID]  nvarchar(20)  NOT NULL,--������ID
	[JDRID]  nvarchar(20)  NOT NULL,--У����ID
	[NGRGH]  nvarchar(20)  NOT NULL,--����˹���
	[NGRQ]  nvarchar(8)  NULL,--�������
	[QFRGH]  nvarchar(20)  NOT NULL,--ǩ���˹���
	[QFRQ]  nvarchar(8)  NOT NULL,--ǩ������
	[FSFW]  nvarchar(60)  NOT NULL,--���ͷ�Χ
	[FSFSM]  nvarchar(1)  NOT NULL,--���ͷ�ʽ��
	[DJRGH]  nvarchar(20)  NOT NULL,--�Ǽ��˹���
	[DJRQ]  nvarchar(8)  NOT NULL,--�Ǽ�����
	[FWJS]  decimal(4, 0)  NOT NULL,--���ļ���
	[GWFWRQ]  nvarchar(8)  NOT NULL,--���ķ�������
	[CLQK]  text  NOT NULL,--�������
	[DZRGH]  nvarchar(20)  NULL,--�����˹���
	[JDRGH]  nvarchar(20)  NULL,--У���˹���
	[FZFSM]  nvarchar(1)  NOT NULL,--��װ��ʽ��
CONSTRAINT [PK_EDU_OAXT_03_01_FWCL] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[WJID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�˸������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_03_02_HG]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_03_02_HG](
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[WJID]  int  NOT NULL,--�ļ�ID
	[HGRID]  nvarchar(20)  NOT NULL,--�˸���ID
	[HGRGH]  nvarchar(20)  NOT NULL,--�˸��˹���
	[HGDW]  nvarchar(60)  NOT NULL,--�˸嵥λ
	[HGYJ]  text  NOT NULL,--�˸����
	[HGRQ]  nvarchar(8)  NOT NULL,--�˸�����
CONSTRAINT [PK_EDU_OAXT_03_02_HG] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[WJID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--��ǩ�����
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_03_03_HQ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_03_03_HQ](
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[WJID]  int  NOT NULL,--�ļ�ID
	[HQRID]  nvarchar(20)  NOT NULL,--��ǩ��ID
	[HQR]  nvarchar(36)  NOT NULL,--��ǩ��
	[HQDW]  nvarchar(60)  NOT NULL,--��ǩ��λ
	[HQYJ]  text  NOT NULL,--��ǩ���
	[HQRQ]  nvarchar(8)  NOT NULL,--��ǩ����
CONSTRAINT [PK_EDU_OAXT_03_03_HQ] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[WJID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--���������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_03_04_CP]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_03_04_CP](
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[WJID]  int  NOT NULL,--�ļ�ID
	[PFRID]  nvarchar(20)  NOT NULL,--������ID
	[PFR]  nvarchar(36)  NOT NULL,--������
	[PFDW]  nvarchar(60)  NOT NULL,--������λ
	[PFYJ]  text  NOT NULL,--�������
	[PFRQ]  nvarchar(8)  NOT NULL,--��������
CONSTRAINT [PK_EDU_OAXT_03_04_CP] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[WJID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�ļ������������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_04_01_WJQT]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_04_01_WJQT](
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[WJID]  int  NOT NULL,--�ļ�ID
	[JBRID]  nvarchar(20)  NOT NULL,--������ID
	[QTRQ]  nvarchar(8)  NOT NULL,--��������
	[QTFW]  nvarchar(180)  NOT NULL,--���˷�Χ
	[QTSM]  text  NULL,--����˵��
	[JBRGH]  nvarchar(20)  NOT NULL,--�����˹���
CONSTRAINT [PK_EDU_OAXT_04_01_WJQT] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[WJID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�ļ������������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_05_01_WJXH]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_05_01_WJXH](
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[WJID]  int  NOT NULL,--�ļ�ID
	[XHSPRID]  nvarchar(20)  NOT NULL,--����������ID
	[JBRID]  nvarchar(20)  NOT NULL,--������ID
	[XHRQ]  nvarchar(8)  NOT NULL,--��������
	[XHSPRGH]  nvarchar(20)  NOT NULL,--���������˹���
	[XHSM]  text  NULL,--����˵��
	[JBRGH]  nvarchar(20)  NOT NULL,--�����˹���
CONSTRAINT [PK_EDU_OAXT_05_01_WJXH] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[WJID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�ļ������������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_06_01_WJJQ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_06_01_WJJQ](
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[WJID]  int  NOT NULL,--�ļ�ID
	[JYSPRID]  nvarchar(20)  NOT NULL,--����������ID
	[JYJBRID]  nvarchar(20)  NOT NULL,--���ľ�����ID
	[JYR]  nvarchar(36)  NOT NULL,--������
	[JYRQ]  nvarchar(8)  NOT NULL,--��������
	[JYSPRGH]  nvarchar(20)  NOT NULL,--���������˹���
	[JYJBRGH]  nvarchar(20)  NOT NULL,--���ľ����˹���
	[JYYY]  nvarchar(80)  NULL,--����ԭ��
CONSTRAINT [PK_EDU_OAXT_06_01_WJJQ] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[WJID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�����Ǽ����ݱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_08_01_DADJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_08_01_DADJ](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[QZH]  nvarchar(10)  NOT NULL,--ȫ�ں�
	[ND]  nvarchar(4)  NOT NULL,--���
	[MLH]  nvarchar(5)  NOT NULL,--Ŀ¼��
	[AJH]  nvarchar(5)  NOT NULL,--�����
	[TM]  nvarchar(120)  NOT NULL,--����
	[ZTC]  text  NOT NULL,--�����
	[QSRQ]  datetime  NULL,--��ʼ����
	[JZRQ]  datetime  NULL,--��ֹ����
	[BGQXM]  nvarchar(1)  NOT NULL,--����������
	[MJM]  nvarchar(1)  NULL,--�ܼ���
	[YS]  decimal(6, 0)  NOT NULL,--ҳ��
	[FS]  decimal(8, 0)  NOT NULL,--����
	[BZDW]  nvarchar(60)  NULL,--���Ƶ�λ
	[CFWZ]  nvarchar(60)  NOT NULL,--���λ��
	[DAFLM]  nvarchar(2)  NOT NULL,--����������
CONSTRAINT [PK_EDU_OAXT_08_01_DADJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--֪ͨ���ݱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_10_A01_TZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_10_A01_TZ](
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
CONSTRAINT [PK_EDU_OAXT_10_A01_TZ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--֪ͨ�Ķ���¼
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_10_A02_TZYDJL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_10_A02_TZYDJL](
	[ID]  int  NOT NULL,--֪ͨ�Ķ���¼ID
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[TZID]  int  NOT NULL,--֪ͨID
	[BTZRID]  nvarchar(20)  NOT NULL,--��֪ͨ��ID
	[YDRQ]  datetime  NOT NULL,--�Ķ�����
	[SFYD]  nvarchar(1)  NOT NULL,--�Ƿ����Ķ�
	[SCZT]  int  NOT NULL,--ɾ��״̬
CONSTRAINT [PK_EDU_OAXT_10_A02_TZYDJL] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�������ݱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_10_A03_GG]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_10_A03_GG](
	[ID]  int  NOT NULL,--����ID
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[FBRID]  nvarchar(20)  NOT NULL,--������ID
	[FBBM]  nvarchar(100)  NOT NULL,--��������
	[FBSJ]  datetime  NOT NULL,--����ʱ��
	[BT]  nvarchar(200)  NOT NULL,--�������
	[NR]  text  NOT NULL,--��������
	[ZT]  int  NOT NULL,--����״̬
CONSTRAINT [PK_EDU_OAXT_10_A03_GG] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--֪ͨģ���
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_10_A04_TZMB]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_10_A04_TZMB](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[MBMC]  nvarchar(50)  NOT NULL,--ģ������
	[MBNR]  text  NOT NULL,--ģ������
CONSTRAINT [PK_EDU_OAXT_10_A04_TZMB] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�ʼ����ݱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_11_A01_YJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_11_A01_YJ](
	[ID]  int  NOT NULL,--�ʼ�ID
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[YYZID]  nvarchar(20)  NOT NULL,--ӵ����ID
	[FSRID]  nvarchar(20)  NOT NULL,--������ID
	[JSRID]  nvarchar(20)  NOT NULL,--������ID
	[FSRMC]  nvarchar(100)  NOT NULL,--����������
	[JSRMC]  nvarchar(100)  NOT NULL,--����������
	[JSRIDLB]  text  NOT NULL,--������ID�б�
	[JSRMCLB]  text  NOT NULL,--�����������б�
	[BT]  nvarchar(200)  NOT NULL,--����
	[NR]  text  NOT NULL,--����
	[FJ]  nvarchar(200)  NOT NULL,--����
	[FSSJ]  datetime  NOT NULL,--����ʱ��
	[SFYD]  nvarchar(1)  NOT NULL,--�Ƿ����Ķ�
	[YJLX]  int  NOT NULL,--�ʼ�����
CONSTRAINT [PK_EDU_OAXT_11_A01_YJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--���ݷ������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_12_A01_SJFB]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_12_A01_SJFB](
	[ID]  int  identity,--���ݷ���ID
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[WEBID]  int  NOT NULL,--��վID
	[FBRID]  nvarchar(20)  NOT NULL,--������ID
	[FBBZRID]  nvarchar(20)  NOT NULL,--������׼��ID
	[FBH]  nvarchar(10)  NOT NULL,--������
	[XXBT]  nvarchar(100)  NOT NULL,--���ݱ���
	[FBLMH]  nvarchar(2)  NOT NULL,--������Ŀ��
	[SJNR]  text  NOT NULL,--��������
	[FJS]  decimal(2, 0)  NOT NULL,--������
	[FBRQ]  nvarchar(8)  NOT NULL,--��������
	[FBDW]  nvarchar(10)  NOT NULL,--������λ��
	[FBRGH]  nvarchar(20)  NULL,--�����˹���
	[FBFW]  nvarchar(200)  NULL,--������Χ
	[FBBZRH]  nvarchar(10)  NOT NULL,--������׼�˺�
	[SJZT]  nvarchar(10)  NOT NULL,--����״̬
CONSTRAINT [PK_EDU_OAXT_12_A01_SJFB] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--��λ���ݱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_13_A01_DWSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_13_A01_DWSJ](
	[ID]  int  NOT NULL,--��λID
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[SJDWID]  int  NULL,--�ϼ���λID
	[DWFZRID]  nvarchar(20)  NULL,--��λ������ID
	[DWMC]  nvarchar(60)  NULL,--��λ����
	[DWCYIDLB]  text  NULL,--��λ��ԱID�б�
CONSTRAINT [PK_EDU_OAXT_13_A01_DWSJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�����ճ���Ϣ��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_14_A01_GRRCXX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_14_A01_GRRCXX](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[YHID]  nvarchar(20)  NOT NULL,--�û�ID
	[BT]  nvarchar(200)  NOT NULL,--����
	[NR]  text  NOT NULL,--����
	[KSSJ]  datetime  NOT NULL,--��ʼʱ��
	[JSSJ]  datetime  NOT NULL,--����ʱ��
	[SFTS]  nvarchar(1)  NOT NULL,--�Ƿ���ʾ
	[ZT]  int  NOT NULL,--״̬
CONSTRAINT [PK_EDU_OAXT_14_A01_GRRCXX] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�ʲ�Ŀ¼��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_15_A01_ZCML]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_15_A01_ZCML](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[Name]  nvarchar(100)  NOT NULL,--У��Ŀ¼
	[Superid]  int  NOT NULL,--��Ŀ¼ID
	[Remark]  nvarchar(100)  NOT NULL,--��ע
CONSTRAINT [PK_EDU_OAXT_15_A01_ZCML] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�ʲ������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_15_A02_ZCDL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_15_A02_ZCDL](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[Name]  nvarchar(100)  NOT NULL,--У������
	[Remark]  nvarchar(100)  NOT NULL,--��ע
CONSTRAINT [PK_EDU_OAXT_15_A02_ZCDL] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�ʲ�����
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_15_A03_ZCKC]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_15_A03_ZCKC](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[TypeID]  int  NOT NULL,--�ʲ�Ŀ¼��ID
	[ClassID]  int  NOT NULL,--�ʲ������ID
	[Name]  nvarchar(200)  NOT NULL,--�ʲ�����
	[Info]  nvarchar(200)  NOT NULL,--�ʲ����
	[Productdate]  datetime  NOT NULL,--����ʱ��
	[Price]  decimal(10, 2)  NOT NULL,--����
	[SumCount]  decimal(8, 2)  NOT NULL,--����
	[Merchant]  nvarchar(200)  NOT NULL,--��Ӧ��
	[Vender]  nvarchar(200)  NOT NULL,--����
	[Remark]  nvarchar(100)  NOT NULL,--��ע
	[AllCount]  decimal(8, 2)  NOT NULL,--�ʲ�����
	[RKL]  decimal(8, 2)  NOT NULL,--�����
	[RQ]  datetime  NOT NULL,--����
	[DW]  nvarchar(100)  NOT NULL,--��λ
	[ZJ]  decimal(10, 2)  NOT NULL,--�ܼ�
	[SYBM]  nvarchar(100)  NOT NULL,--ʹ�ò���
	[CFDW]  nvarchar(200)  NOT NULL,--��ŵ�λ
	[FZR]  nvarchar(50)  NOT NULL,--������
	[CZFS]  nvarchar(200)  NOT NULL,--���÷�ʽ
CONSTRAINT [PK_EDU_OAXT_15_A03_ZCKC] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�ʲ�����
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_15_A04_ZCRK]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_15_A04_ZCRK](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[TypeID]  int  NOT NULL,--�ʲ�Ŀ¼��ID
	[ClassID]  int  NOT NULL,--�ʲ������ID
	[Name]  nvarchar(200)  NOT NULL,--У������
	[Info]  nvarchar(200)  NOT NULL,--�ʲ����
	[Productdate]  datetime  NOT NULL,--����ʱ��
	[Price]  decimal(10, 2)  NOT NULL,--����
	[SumCount]  decimal(8, 2)  NOT NULL,--����
	[Merchant]  nvarchar(200)  NOT NULL,--��Ӧ��
	[Vender]  nvarchar(200)  NOT NULL,--����
	[Registdate]  datetime  NOT NULL,--�Ǽ�ʱ��
	[Remark]  nvarchar(100)  NOT NULL,--��ע
	[Status]  int  NOT NULL,--���״̬
	[RQ]  datetime  NOT NULL,--����
	[DW]  nvarchar(100)  NOT NULL,--��λ
	[ZJ]  decimal(10, 2)  NOT NULL,--�ܼ�
	[SYBM]  nvarchar(100)  NOT NULL,--ʹ�ò���
	[CFDW]  nvarchar(200)  NOT NULL,--��ŵ�λ
	[FZR]  nvarchar(50)  NOT NULL,--������
	[CZFS]  nvarchar(200)  NOT NULL,--���÷�ʽ
CONSTRAINT [PK_EDU_OAXT_15_A04_ZCRK] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�ʲ��軹��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_15_A05_ZCJH]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_15_A05_ZCJH](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[TypeID]  int  NOT NULL,--�ʲ�Ŀ¼��ID
	[ClassID]  int  NOT NULL,--�ʲ������ID
	[AID]  int  NOT NULL,--����ID
	[SumCount]  decimal(8, 2)  NOT NULL,--����
	[Unit]  nvarchar(10)  NOT NULL,--��λ
	[Borrower]  nvarchar(200)  NOT NULL,--���÷�
	[Remark]  nvarchar(100)  NOT NULL,--��ע
	[Registdate]  datetime  NOT NULL,--�Ǽ�ʱ��
CONSTRAINT [PK_EDU_OAXT_15_A05_ZCJH] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�ʲ������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_15_A06_ZCBG]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_15_A06_ZCBG](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[TypeID]  int  NOT NULL,--���(���á����á�����)
	[TypeName]  nvarchar(100)  NOT NULL,--�������
	[AID]  int  NOT NULL,--����ID
	[Name]  nvarchar(200)  NOT NULL,--�ʲ�����
	[Option]  nvarchar(200)  NOT NULL,--����
	[RegistTime]  datetime  NOT NULL,--�Ǽ�ʱ��
	[Remark]  nvarchar(100)  NOT NULL,--��ע
	[SumCount]  decimal(8, 2)  NOT NULL,--����
CONSTRAINT [PK_EDU_OAXT_15_A06_ZCBG] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�������ͱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_15_A07_BXLX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_15_A07_BXLX](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[TypeName]  nvarchar(50)  NOT NULL,--��������
	[Remark]  nvarchar(300)  NOT NULL,--��ע
CONSTRAINT [PK_EDU_OAXT_15_A07_BXLX] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--���޹����
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_15_A08_BXGL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_15_A08_BXGL](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[AID]  int  NOT NULL,--����ID
	[TypeID]  int  NOT NULL,--��������ID
	[Title]  nvarchar(300)  NOT NULL,--��������
	[Telephone]  nvarchar(20)  NOT NULL,--��ϵ�绰
	[Repairplace]  nvarchar(20)  NOT NULL,--���޵ص�
	[Repaircontent]  nvarchar(20)  NOT NULL,--��������
	[Repairpeople]  nvarchar(20)  NOT NULL,--ά����
	[RepairDate]  datetime  NOT NULL,--ά��ʱ��
	[ReadrID]  nvarchar(200)  NOT NULL,--�Ķ����
	[Readr]  nvarchar(200)  NOT NULL,--�Ķ����
	[Applicant]  nvarchar(20)  NOT NULL,--������
	[Approver]  nvarchar(20)  NULL,--������
	[Evaluate]  nvarchar(200)  NOT NULL,--����
	[StartDate]  datetime  NOT NULL,--��ʼʱ��
	[Status]  int  NOT NULL,--״̬
	[Remark]  nvarchar(300)  NOT NULL,--��ע
	[SumCount]  decimal(8, 2)  NOT NULL,--����
	[GZTP]  text  NOT NULL,--����ͼƬ
	[WCZT]  int  NOT NULL,--���״̬
	[SCZT]  int  NOT NULL,--ɾ��״̬
CONSTRAINT [PK_EDU_OAXT_15_A08_BXGL] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ά�޼ƻ���
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_15_A09_WXJH]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_15_A09_WXJH](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[AID]  int  NOT NULL,--����ID
	[Title]  nvarchar(100)  NOT NULL,--�ƻ�����
	[Content]  text  NOT NULL,--ά������
CONSTRAINT [PK_EDU_OAXT_15_A09_WXJH] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�ʲ����ϱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_15_A10_ZCBF]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_15_A10_ZCBF](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[AID]  int  NOT NULL,--����ID
	[Sum]  decimal(8, 2)  NOT NULL,--����
	[Reporter]  nvarchar(100)  NOT NULL,--�걨��
	[Remark]  nvarchar(100)  NOT NULL,--��ע
	[RegsterID]  nvarchar(20)  NOT NULL,--�Ǽ���ID
	[Statu]  int  NOT NULL,--״̬
	[Registdate]  datetime  NOT NULL,--�Ǽ�ʱ��
CONSTRAINT [PK_EDU_OAXT_15_A10_ZCBF] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�ʲ��̵��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_15_A11_ZCPD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_15_A11_ZCPD](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[Title]  nvarchar(100)  NOT NULL,--�̵�����
	[PanDate]  datetime  NOT NULL,--�̵�����
	[PanTypeIDs]  text  NOT NULL,--�̵�Ŀ¼ID�б�
	[Remark]  text  NOT NULL,--��ע
	[Statu]  int  NOT NULL,--״̬
CONSTRAINT [PK_EDU_OAXT_15_A11_ZCPD] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�ʲ��̵���ϸ��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_15_A12_ZCPDMX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_15_A12_ZCPDMX](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[AID]  int  NOT NULL,--����ID
	[PID]  int  NOT NULL,--�̵��ID
	[PUserID]  nvarchar(20)  NOT NULL,--�̵���ID
	[Storesum]  decimal(8, 2)  NOT NULL,--�����
	[RealSum]  decimal(8, 2)  NOT NULL,--ʵ����
	[Name]  nvarchar(200)  NOT NULL,--�ʲ�����
	[AllCount]  decimal(8, 2)  NOT NULL,--�ʲ�����
	[Remark]  text  NOT NULL,--��ע
	[BorrowCount]  decimal(8, 2)  NOT NULL,--��������
CONSTRAINT [PK_EDU_OAXT_15_A12_ZCPDMX] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ά�޼�¼��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_15_A13_WXJL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_15_A13_WXJL](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[WPID]  int  NOT NULL,--��ƷID
	[WXZT]  int  NOT NULL,--ά��״̬
	[BZ]  text  NOT NULL,--��ע
CONSTRAINT [PK_EDU_OAXT_15_A13_WXJL] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--���޹�����Ϣ��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_15_A14_BXGZXX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_15_A14_BXGZXX](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[BXLXID]  int  NOT NULL,--��������ID
	[GZXX]  nvarchar(500)  NOT NULL,--������Ϣ
CONSTRAINT [PK_EDU_OAXT_15_A14_BXGZXX] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--����ģ�����ͱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_20_A01_LCMBLX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_20_A01_LCMBLX](
	[ID]  int  NOT NULL,--���
	[LXMC]  nvarchar(100)  NOT NULL,--��������
	[BZ]  text  NOT NULL,--��ע
CONSTRAINT [PK_EDU_OAXT_20_A01_LCMBLX] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--���̱����ݱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_20_A02_LCBDSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_20_A02_LCBDSJ](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[BDMC]  nvarchar(100)  NOT NULL,--������
	[BDNR]  text  NOT NULL,--������
	[TJSJ]  datetime  NOT NULL,--���ʱ��
	[BZ]  text  NOT NULL,--��ע
CONSTRAINT [PK_EDU_OAXT_20_A02_LCBDSJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--����ģ���
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_20_A03_LCMB]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_20_A03_LCMB](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[MBLXID]  int  NOT NULL,--ģ������ID
	[MBMC]  nvarchar(100)  NOT NULL,--ģ������
	[BDID]  int  NOT NULL,--��ID
	[QSBZID]  int  NOT NULL,--��ʼ����ID
	[JSBZID]  int  NOT NULL,--��������ID
	[TJSJ]  datetime  NOT NULL,--���ʱ��
	[BZ]  text  NOT NULL,--��ע
CONSTRAINT [PK_EDU_OAXT_20_A03_LCMB] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--���̲����
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_20_A04_LCBZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_20_A04_LCBZ](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[BZMC]  nvarchar(100)  NOT NULL,--��������
	[LCMBID]  int  NOT NULL,--����ģ��ID
	[SPRIDLB]  text  NOT NULL,--������ID�б�
	[SPRMCLB]  text  NOT NULL,--�����������б�
	[SYBZID]  int  NOT NULL,--��һ����ID
	[XYBZID]  int  NOT NULL,--��һ����ID
	[BZ]  text  NOT NULL,--��ע
CONSTRAINT [PK_EDU_OAXT_20_A04_LCBZ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--����ʵ����
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_20_A05_LCSL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_20_A05_LCSL](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[LCMBID]  int  NOT NULL,--����ģ��ID
	[SQRID]  nvarchar(20)  NOT NULL,--������ID
	[SPRID]  nvarchar(20)  NOT NULL,--������ID
	[SQSJ]  datetime  NOT NULL,--����ʱ��
	[DQBZID]  int  NOT NULL,--��ǰ����ID
	[DQBZZXZT]  int  NOT NULL,--��ǰ����ִ��״̬
	[YXQ]  datetime  NOT NULL,--��Ч��
	[SLZT]  int  NOT NULL,--ʵ��״̬
	[FJ]  nvarchar(500)  NOT NULL,--����
	[BZ]  text  NOT NULL,--��ע
	[LXID]  int  NOT NULL,--����ID
	[LXMC]  nvarchar(100)  NULL,--��������
CONSTRAINT [PK_EDU_OAXT_20_A05_LCSL] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--������˼�¼��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_20_A06_LCSHJL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_20_A06_LCSHJL](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[LCMBMC]  nvarchar(100)  NOT NULL,--����ģ������
	[LCSLID]  int  NOT NULL,--����ʵ��ID
	[BZMC]  nvarchar(100)  NOT NULL,--��������
	[BZID]  int  NOT NULL,--����ID
	[LCMBLXID]  int  NOT NULL,--����ģ������ID
	[SQRID]  nvarchar(20)  NOT NULL,--������ID
	[SPRID]  nvarchar(20)  NOT NULL,--������ID
	[SHZT]  int  NOT NULL,--���״̬
	[TJSJ]  datetime  NOT NULL,--���ʱ��
	[BZ]  text  NOT NULL,--��ע
CONSTRAINT [PK_EDU_OAXT_20_A06_LCSHJL] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--����ģ���������ñ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_20_A07_LCMBLXPZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_20_A07_LCMBLXPZ](
	[LCMBLXID]  int  NOT NULL,--����ģ������ID
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[BSYLC]  int  NOT NULL,--��ʹ������
CONSTRAINT [PK_EDU_OAXT_20_A07_LCMBLXPZ] PRIMARY KEY CLUSTERED
(
	[LCMBLXID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--������ͱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_21_A01_QJLX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_21_A01_QJLX](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[LXMC]  nvarchar(50)  NOT NULL,--��������
	[BZ]  text  NOT NULL,--��ע
	[JSDW]  nvarchar(50)  NOT NULL,--��ʱ��λ
	[ZCSJ]  decimal(8, 2)  NOT NULL,--�ʱ��
CONSTRAINT [PK_EDU_OAXT_21_A01_QJLX] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--��������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_21_A02_QJSQ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_21_A02_QJSQ](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[LCSLID]  int  NOT NULL,--����ʵ��ID
	[QJLXID]  int  NOT NULL,--�������ID
	[QJYY]  nvarchar(300)  NOT NULL,--���ԭ��
	[KSSJ]  datetime  NOT NULL,--��ʼʱ��
	[JSSJ]  datetime  NOT NULL,--����ʱ��
	[QJTS]  decimal(18, 2)  NOT NULL,--�������
	[SQSJ]  datetime  NOT NULL,--����ʱ��
	[SQZT]  int  NOT NULL,--����״̬
	[SQRID]  nvarchar(20)  NOT NULL,--������ID
	[BZ]  text  NOT NULL,--��ע
	[BJ]  int  NOT NULL,--����
	[XJ]  int  NOT NULL,--����
	[XJRID]  nvarchar(20)  NOT NULL,--������ID
	[XJSJ]  datetime  NOT NULL,--����ʱ��
CONSTRAINT [PK_EDU_OAXT_21_A02_QJSQ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--��������޸ļ�¼��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_21_A03_QJSQXGJL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_21_A03_QJSQXGJL](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[SQID]  int  NOT NULL,--��������ID
	[XGYHID]  nvarchar(20)  NOT NULL,--�޸��û�ID
	[XGYHXM]  nvarchar(36)  NOT NULL,--�޸��û�����
	[QJLXID]  int  NOT NULL,--�������ID
	[QJLXMC]  nvarchar(200)  NOT NULL,--�����������
	[QJYY]  nvarchar(300)  NOT NULL,--���ԭ��
	[KSSJ]  datetime  NOT NULL,--��ʼʱ��
	[JSSJ]  datetime  NOT NULL,--����ʱ��
	[QJTS]  decimal(5, 2)  NOT NULL,--�������
	[SQSJ]  datetime  NOT NULL,--����ʱ��
	[SQZT]  int  NOT NULL,--����״̬
	[SQRID]  nvarchar(20)  NOT NULL,--������ID
	[BZ]  text  NOT NULL,--��ע
	[LCSLID]  int  NOT NULL,--����ʵ��ID
	[LCSLZT]  int  NULL,--����ʵ��״̬
	[LCMBID]  int  NOT NULL,--����ģ��ID
	[LCMBMC]  nvarchar(200)  NOT NULL,--����ģ������
	[DQBZID]  int  NULL,--��ǰ����ID
	[DQBZMC]  nvarchar(200)  NOT NULL,--��ǰ��������
	[DQBZSHZT]  int  NULL,--��ǰ�������״̬
	[SQRBMID]  int  NULL,--�����˲���ID
CONSTRAINT [PK_EDU_OAXT_21_A03_QJSQXGJL] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--���������ݱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_22_A01_HYSSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_22_A01_HYSSJ](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[FJMC]  nvarchar(50)  NOT NULL,--��������
	[FJDZ]  nvarchar(200)  NOT NULL,--�����ַ
	[ZDRNRS]  int  NOT NULL,--�����������
	[BZ]  text  NOT NULL,--��ע
CONSTRAINT [PK_EDU_OAXT_22_A01_HYSSJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--���������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_22_A02_HYSQ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_22_A02_HYSQ](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[LCSLID]  int  NOT NULL,--����ʵ��ID
	[HYMC]  nvarchar(200)  NOT NULL,--��������
	[HYNR]  text  NOT NULL,--��������
	[ZCRID]  nvarchar(20)  NOT NULL,--������
	[JLRID]  nvarchar(20)  NOT NULL,--��¼��
	[HYJB]  nvarchar(10)  NOT NULL,--���鼶��
	[HYDDID]  int  NOT NULL,--����ص�ID
	[HYDZ]  nvarchar(50)  NOT NULL,--�����ַ
	[YHRYIDLB]  text  NOT NULL,--�����ԱID�б�
	[YHRYXMLB]  text  NOT NULL,--�����Ա�����б�
	[KSSJ]  datetime  NOT NULL,--��ʼʱ��
	[JSSJ]  datetime  NOT NULL,--����ʱ��
	[SQSJ]  datetime  NOT NULL,--����ʱ��
	[SQZT]  int  NOT NULL,--����״̬
	[SQRID]  nvarchar(20)  NOT NULL,--������ID
	[BZ]  text  NOT NULL,--��ע
	[FJ]  nvarchar(300)  NULL,--����
CONSTRAINT [PK_EDU_OAXT_22_A02_HYSQ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--���������޸ļ�¼��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_22_A03_HYSQXGJL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_22_A03_HYSQXGJL](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[SQID]  int  NOT NULL,--���������ID
	[XGYHID]  nvarchar(20)  NOT NULL,--�޸��û�ID
	[XGYHXM]  nvarchar(36)  NOT NULL,--�޸��û�����
	[HYMC]  nvarchar(200)  NOT NULL,--��������
	[HYNR]  text  NOT NULL,--��������
	[ZCRID]  nvarchar(20)  NOT NULL,--������
	[JLRID]  nvarchar(20)  NOT NULL,--��¼��
	[HYJB]  nvarchar(10)  NOT NULL,--���鼶��
	[HYDZID]  int  NOT NULL,--����ص�ID
	[HYDZ]  nvarchar(50)  NOT NULL,--�����ַ
	[YHRYIDLB]  text  NOT NULL,--�����ԱID�б�
	[YHRYXMLB]  text  NOT NULL,--�����Ա�����б�
	[KSSJ]  datetime  NOT NULL,--��ʼʱ��
	[JSSJ]  datetime  NOT NULL,--����ʱ��
	[SQSJ]  datetime  NOT NULL,--����ʱ��
	[SQZT]  int  NOT NULL,--����״̬
	[SQRID]  nvarchar(20)  NOT NULL,--������ID
	[BZ]  text  NOT NULL,--��ע
	[FJ]  nvarchar(300)  NULL,--����
	[LCSLID]  int  NOT NULL,--����ʵ��ID
	[LCSLZT]  int  NULL,--����ʵ��״̬
	[LCMBID]  int  NOT NULL,--����ģ��ID
	[LCMBMC]  nvarchar(200)  NOT NULL,--����ģ������
	[DQBZID]  int  NULL,--��ǰ����ID
	[DQBZMC]  nvarchar(200)  NOT NULL,--��ǰ��������
	[DQBZSHZT]  int  NULL,--��ǰ�������״̬
	[SQRBMID]  int  NULL,--�����˲���ID
CONSTRAINT [PK_EDU_OAXT_22_A03_HYSQXGJL] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�����Ҫ��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_22_A04_HYJY]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_22_A04_HYJY](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[HYID]  int  NOT NULL,--����ID
	[HYJYNR]  text  NOT NULL,--�����Ҫ����
	[JLRID]  nvarchar(20)  NOT NULL,--��¼��
	[JLSJ]  datetime  NOT NULL,--��¼ʱ��
CONSTRAINT [PK_EDU_OAXT_22_A04_HYJY] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--���鱸ע���ͱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_22_A05_HYBZLX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_22_A05_HYBZLX](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[MC]  nvarchar(100)  NOT NULL,--����
	[LX]  int  NOT NULL,--����
CONSTRAINT [PK_EDU_OAXT_22_A05_HYBZLX] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�����Ҫģ���
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_22_A06_HYJYMB]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_22_A06_HYJYMB](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[MBMC]  nvarchar(50)  NOT NULL,--ģ������
	[MBNR]  text  NOT NULL,--ģ������
CONSTRAINT [PK_EDU_OAXT_22_A06_HYJYMB] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--���������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_23_A01_GWSQ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_23_A01_GWSQ](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[LCSLID]  int  NOT NULL,--����ʵ��ID
	[GWBT]  nvarchar(200)  NOT NULL,--���ı���
	[GWNR]  text  NOT NULL,--��������
	[FJ]  nvarchar(200)  NOT NULL,--����
	[SJRIDLB]  text  NOT NULL,--�ռ���ID�б�
	[SJRXMLB]  text  NOT NULL,--�ռ��������б�
	[YDQK]  nvarchar(200)  NOT NULL,--�Ķ����
	[SQSJ]  datetime  NOT NULL,--����ʱ��
	[SQRID]  nvarchar(20)  NOT NULL,--������ID
	[SQZT]  int  NOT NULL,--����״̬
	[BZ]  text  NOT NULL,--��ע
	[SWDW]  nvarchar(50)  NOT NULL,--���ĵ�λ
	[YGDCS]  int  NOT NULL,--�ѹ鵵����
	[WJBH]  nvarchar(50)  NOT NULL,--�ļ����
CONSTRAINT [PK_EDU_OAXT_23_A01_GWSQ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--���������޸ļ�¼��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_23_A02_GWSQXGJL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_23_A02_GWSQXGJL](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[SQID]  int  NOT NULL,--���������ID
	[XGYHID]  nvarchar(20)  NOT NULL,--�޸��û�ID
	[XGYHXM]  nvarchar(36)  NOT NULL,--�޸��û�����
	[GWBT]  nvarchar(200)  NOT NULL,--���ı���
	[GWNR]  text  NOT NULL,--��������
	[FJ]  nvarchar(200)  NOT NULL,--����
	[SJRIDLB]  text  NOT NULL,--�ռ���ID�б�
	[SJRXMLB]  text  NOT NULL,--�ռ��������б�
	[YDQK]  nvarchar(200)  NOT NULL,--�Ķ����
	[SQSJ]  datetime  NOT NULL,--����ʱ��
	[SQRID]  nvarchar(20)  NOT NULL,--������ID
	[SQZT]  int  NOT NULL,--����״̬
	[BZ]  text  NOT NULL,--��ע
	[SWDW]  nvarchar(50)  NOT NULL,--���ĵ�λ
	[LCSLID]  int  NOT NULL,--����ʵ��ID
	[LCSLZT]  int  NULL,--����ʵ��״̬
	[LCMBID]  int  NOT NULL,--����ģ��ID
	[LCMBMC]  nvarchar(200)  NOT NULL,--����ģ������
	[DQBZID]  int  NULL,--��ǰ����ID
	[DQBZMC]  nvarchar(200)  NOT NULL,--��ǰ��������
	[DQBZSHZT]  int  NULL,--��ǰ�������״̬
	[SQRBMID]  int  NULL,--�����˲���ID
CONSTRAINT [PK_EDU_OAXT_23_A02_GWSQXGJL] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�ó������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_24_A01_YCSQ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_24_A01_YCSQ](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[LCSLID]  int  NOT NULL,--����ʵ��ID
	[YCYY]  nvarchar(300)  NOT NULL,--�ó�ԭ��
	[WCRS]  int  NOT NULL,--�������
	[KSSJ]  datetime  NOT NULL,--��ʼʱ��
	[SYTS]  int  NOT NULL,--ʹ������
	[SQSJ]  datetime  NOT NULL,--����ʱ��
	[SQRID]  nvarchar(20)  NOT NULL,--������ID
	[SQZT]  int  NOT NULL,--����״̬
	[BZ]  text  NOT NULL,--��ע
	[SQCLID]  int  NOT NULL,--���복��ID
	[JSSJ]  datetime  NOT NULL,--����ʱ��
CONSTRAINT [PK_EDU_OAXT_24_A01_YCSQ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�ó������޸ļ�¼��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_24_A02_YCSQXGJL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_24_A02_YCSQXGJL](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[SQID]  int  NOT NULL,--�ó������ID
	[XGYHID]  nvarchar(20)  NOT NULL,--�޸��û�ID
	[XGYHXM]  nvarchar(36)  NOT NULL,--�޸��û�����
	[YCYY]  nvarchar(300)  NOT NULL,--�ó�ԭ��
	[WCRS]  int  NOT NULL,--�������
	[KSSJ]  datetime  NOT NULL,--��ʼʱ��
	[SYTS]  int  NOT NULL,--ʹ������
	[SQSJ]  datetime  NOT NULL,--����ʱ��
	[SQRID]  nvarchar(20)  NOT NULL,--������ID
	[SQZT]  int  NOT NULL,--����״̬
	[BZ]  text  NOT NULL,--��ע
	[LCSLID]  int  NOT NULL,--����ʵ��ID
	[LCSLZT]  int  NULL,--����ʵ��״̬
	[LCMBID]  int  NOT NULL,--����ģ��ID
	[LCMBMC]  nvarchar(200)  NOT NULL,--����ģ������
	[DQBZID]  int  NULL,--��ǰ����ID
	[DQBZMC]  nvarchar(200)  NOT NULL,--��ǰ��������
	[DQBZSHZT]  int  NULL,--��ǰ�������״̬
	[SQRBMID]  int  NULL,--�����˲���ID
	[SQCLID]  int  NOT NULL,--���복��ID
	[JSSJ]  datetime  NOT NULL,--����ʱ��
CONSTRAINT [PK_EDU_OAXT_24_A02_YCSQXGJL] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�������ݱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_24_A03_CLSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_24_A03_CLSJ](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[CLMC]  nvarchar(50)  NOT NULL,--��������
	[CLPP]  nvarchar(200)  NOT NULL,--����Ʒ��
	[CLCPH]  nvarchar(200)  NOT NULL,--�������ƺ�
	[ZDRNRS]  int  NOT NULL,--����������
	[CLZT]  int  NOT NULL,--����״̬
	[BZ]  text  NOT NULL,--��ע
CONSTRAINT [PK_EDU_OAXT_24_A03_CLSJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�ɹ������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_25_A01_CGSQ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_25_A01_CGSQ](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[LCSLID]  int  NOT NULL,--����ʵ��ID
	[CGDMC]  nvarchar(200)  NOT NULL,--�ɹ�������
	[CGNR]  text  NOT NULL,--�ɹ�����
	[FJ]  nvarchar(300)  NOT NULL,--����
	[SQSJ]  datetime  NOT NULL,--����ʱ��
	[SQRID]  nvarchar(20)  NOT NULL,--������ID
	[CGZT]  int  NOT NULL,--�ɹ�״̬
	[BZ]  text  NOT NULL,--��ע
CONSTRAINT [PK_EDU_OAXT_25_A01_CGSQ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�ɹ������޸ļ�¼��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_25_A02_CGSQXGJL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_25_A02_CGSQXGJL](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[SQID]  int  NOT NULL,--�ɹ������ID
	[XGYHID]  nvarchar(20)  NOT NULL,--�޸��û�ID
	[XGYHXM]  nvarchar(36)  NOT NULL,--�޸��û�����
	[CGDMC]  nvarchar(200)  NOT NULL,--�ɹ�������
	[CGNR]  text  NOT NULL,--�ɹ�����
	[FJ]  nvarchar(300)  NOT NULL,--����
	[SQSJ]  datetime  NOT NULL,--����ʱ��
	[SQRID]  nvarchar(20)  NOT NULL,--������ID
	[CGZT]  int  NOT NULL,--�ɹ�״̬
	[BZ]  text  NOT NULL,--��ע
	[LCSLID]  int  NOT NULL,--����ʵ��ID
	[LCSLZT]  int  NULL,--����ʵ��״̬
	[LCMBID]  int  NOT NULL,--����ģ��ID
	[LCMBMC]  nvarchar(200)  NOT NULL,--����ģ������
	[DQBZID]  int  NULL,--��ǰ����ID
	[DQBZMC]  nvarchar(200)  NOT NULL,--��ǰ��������
	[DQBZSHZT]  int  NULL,--��ǰ�������״̬
	[SQRBMID]  int  NULL,--�����˲���ID
CONSTRAINT [PK_EDU_OAXT_25_A02_CGSQXGJL] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ʵ�������ݱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_26_A01_SYSSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_26_A01_SYSSJ](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[MC]  nvarchar(50)  NOT NULL,--����
	[DD]  nvarchar(200)  NOT NULL,--�ص�
	[FZR]  nvarchar(36)  NOT NULL,--������
CONSTRAINT [PK_EDU_OAXT_26_A01_SYSSJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ʵ�������ı�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_26_A02_SYSQC]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_26_A02_SYSQC](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[QCMC]  nvarchar(50)  NOT NULL,--��������
CONSTRAINT [PK_EDU_OAXT_26_A02_SYSQC] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ʵ���������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_26_A03_SYSSQ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_26_A03_SYSSQ](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[SYSID]  int  NOT NULL,--ʵ����ID
	[LCSLID]  int  NOT NULL,--����ʵ��ID
	[SYQC]  text  NOT NULL,--ʵ������
	[SYMC]  nvarchar(200)  NOT NULL,--ʵ������
	[KM]  nvarchar(50)  NOT NULL,--��Ŀ
	[BJ]  nvarchar(50)  NOT NULL,--�༶
	[KSSJ]  datetime  NOT NULL,--��ʼʱ��
	[JSSJ]  datetime  NOT NULL,--����ʱ��
	[SQSJ]  datetime  NOT NULL,--����ʱ��
	[SQZT]  int  NOT NULL,--����״̬
	[SQRID]  nvarchar(20)  NOT NULL,--������ID
	[BZ]  text  NOT NULL,--��ע
CONSTRAINT [PK_EDU_OAXT_26_A03_SYSSQ] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ʵ���������޸ļ�¼��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_26_A04_SYSSQXGJL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_26_A04_SYSSQXGJL](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[SQID]  int  NOT NULL,--ʵ���������ID
	[XGYHID]  nvarchar(20)  NOT NULL,--�޸��û�ID
	[XGYHXM]  nvarchar(36)  NOT NULL,--�޸��û�����
	[XGSJ]  datetime  NOT NULL,--�޸�ʱ��
CONSTRAINT [PK_EDU_OAXT_26_A04_SYSSQXGJL] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--���¼Ǳ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_30_A01_DSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_30_A01_DSJ](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[BT]  nvarchar(100)  NOT NULL,--����
	[NR]  text  NOT NULL,--����
CONSTRAINT [PK_EDU_OAXT_30_A01_DSJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--����ͨѶ¼��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_31_A01_GRTXL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_31_A01_GRTXL](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[GRID]  nvarchar(20)  NOT NULL,--����ID
	[LXRXM]  nvarchar(50)  NOT NULL,--��ϵ������
	[LXRDH]  nvarchar(50)  NOT NULL,--��ϵ�˵绰
CONSTRAINT [PK_EDU_OAXT_31_A01_GRTXL] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�����ʾ����ݱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_32_A01_DCWJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_32_A01_DCWJ](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[Title]  nvarchar(300)  NOT NULL,--�ʾ�����
	[Users]  text  NOT NULL,--��ѡ��Ա
	[StartTime]  datetime  NOT NULL,--��ʼʱ��
	[EndTime]  datetime  NOT NULL,--����ʱ��
	[IsStart]  int  NOT NULL,--�Ƿ���
	[JJ]  text  NOT NULL,--���
CONSTRAINT [PK_EDU_OAXT_32_A01_DCWJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�����ʾ���Ŀ��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_32_A02_DCWJTM]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_32_A02_DCWJTM](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[WJID]  int  NOT NULL,--�����ʾ�
	[TypeID]  int  NOT NULL,--��Ŀ����
	[Title]  nvarchar(300)  NOT NULL,--��Ŀ
	[SSDL]  nvarchar(100)  NOT NULL,--��������
CONSTRAINT [PK_EDU_OAXT_32_A02_DCWJTM] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�ʾ���Ŀѡ���
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_32_A03_DCWJTMXX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_32_A03_DCWJTMXX](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[TMID]  int  NOT NULL,--������Ŀ
	[WJID]  int  NOT NULL,--�����ʾ�
	[SelectItem]  nvarchar(100)  NOT NULL,--ѡ��
	[XXFZ]  int  NOT NULL,--ѡ���ֵ
CONSTRAINT [PK_EDU_OAXT_32_A03_DCWJTMXX] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�ʾ�����¼��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_32_A04_DCWJJL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_32_A04_DCWJJL](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[YHID]  nvarchar(20)  NOT NULL,--�û�ID
	[WJID]  int  NOT NULL,--�����ʾ�ID
	[TMID]  int  NOT NULL,--������ĿID
	[XXID]  int  NOT NULL,--ѡ��ID
	[XXFZ]  int  NOT NULL,--ѡ���ֵ
	[TJZT]  int  NOT NULL,--�ύ״̬
CONSTRAINT [PK_EDU_OAXT_32_A04_DCWJJL] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--���Ļ�����Ϣ��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_33_A01_GWJCXX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_33_A01_GWJCXX](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[HTWZ]  nvarchar(100)  NOT NULL,--��ͷ����
	[GWBT]  nvarchar(100)  NOT NULL,--���ı���
	[SJ]  datetime  NOT NULL,--ʱ��
	[ZW]  text  NOT NULL,--����
	[BH]  nvarchar(30)  NOT NULL,--���
CONSTRAINT [PK_EDU_OAXT_33_A01_GWJCXX] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--������Ϣ��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_33_A02_GZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_33_A02_GZ](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[QZTPLJ]  text  NOT NULL,--ǩ��ͼƬ·��
CONSTRAINT [PK_EDU_OAXT_33_A02_GZ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--���ı�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_33_A03_FW]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_33_A03_FW](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[GWID]  int  NOT NULL,--����ID
	[FZ]  nvarchar(300)  NOT NULL,--��ע
	[SHRID]  nvarchar(20)  NOT NULL,--�����ID
	[DXTZZT]  int  NOT NULL,--����֪ͨ״̬
	[SHPZ]  nvarchar(500)  NOT NULL,--�����ע
	[GZID]  int  NOT NULL,--����ID
	[ZYCD]  int  NOT NULL,--��Ҫ�̶�
	[SFHF]  int  NOT NULL,--�Ƿ���Ҫ�ظ�
	[FSDW]  nvarchar(50)  NOT NULL,--���͵�λ�����
	[FSZLY]  nvarchar(500)  NOT NULL,--����������
	[FSRID]  nvarchar(20)  NOT NULL,--������ID
	[BSZT]  int  NOT NULL,--����״̬
	[SHZT]  int  NOT NULL,--���״̬
	[FSZT]  int  NOT NULL,--����״̬
	[BJZT]  int  NOT NULL,--���״̬
CONSTRAINT [PK_EDU_OAXT_33_A03_FW] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--���ı�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_33_A04_SW]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_33_A04_SW](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[GWID]  int  NOT NULL,--����ID
	[XFRID]  nvarchar(20)  NOT NULL,--�·���ID
	[JSRID]  nvarchar(20)  NOT NULL,--������ID
	[XFSJ]  datetime  NOT NULL,--�·�ʱ��
	[QSZT]  int  NOT NULL,--ǩ��״̬
	[DXTZZT]  int  NOT NULL,--����֪ͨ״̬
	[HFZT]  int  NOT NULL,--�ظ�״̬
	[HFXX]  nvarchar(500)  NOT NULL,--�ظ���Ϣ
	[HFFJ]  text  NOT NULL,--�ظ�����
	[CLZT]  int  NOT NULL,--����״̬
	[SCZT]  int  NOT NULL,--ɾ��״̬
CONSTRAINT [PK_EDU_OAXT_33_A04_SW] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--��ͷ���ֱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_33_A05_HTWZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_33_A05_HTWZ](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[HTWZ]  nvarchar(100)  NOT NULL,--��ͷ����
CONSTRAINT [PK_EDU_OAXT_33_A05_HTWZ] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--��ӡ���̼�¼
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_34_A01_WYLCJL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_34_A01_WYLCJL](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[WYBT]  nvarchar(50)  NOT NULL,--��ӡ����
	[NR]  text  NOT NULL,--����
	[BZ]  nvarchar(300)  NOT NULL,--��ע
	[SQRID]  nvarchar(20)  NOT NULL,--������ID
	[SQSJ]  datetime  NOT NULL,--����ʱ��
	[SHZT]  int  NOT NULL,--���״̬
	[SHRID]  nvarchar(20)  NOT NULL,--�����ID
	[SHSJ]  datetime  NOT NULL,--���ʱ��
	[SHBZ]  nvarchar(300)  NOT NULL,--��˱�ע
	[SHLBSFXS]  int  NOT NULL,--����б��Ƿ���ʾ
	[DYZT]  int  NOT NULL,--��ӡ״̬
	[DYSJ]  datetime  NOT NULL,--��ӡʱ��
	[DYBZ]  nvarchar(300)  NOT NULL,--��ӡ��ע
	[DYLBSFXS]  int  NOT NULL,--��ӡ�б��Ƿ���ʾ
CONSTRAINT [PK_EDU_OAXT_34_A01_WYLCJL] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�����
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_35_A01_RW]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_35_A01_RW](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[RWBT]  nvarchar(100)  NOT NULL,--�������
	[JSYHIDLB]  text  NOT NULL,--�����û�ID�б�
	[JSYHXMLB]  text  NOT NULL,--�����û������б�
	[JZRQ]  datetime  NOT NULL,--��ֹ����
	[NR]  text  NOT NULL,--����
	[FBRID]  nvarchar(20)  NOT NULL,--������ID
	[FBRXM]  nvarchar(36)  NOT NULL,--����������
	[FBBMMC]  nvarchar(60)  NOT NULL,--������������
	[FBSJ]  datetime  NOT NULL,--����ʱ��
	[RWZT]  int  NOT NULL,--����״̬
CONSTRAINT [PK_EDU_OAXT_35_A01_RW] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--��������˱�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_35_A02_RWJSR]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_35_A02_RWJSR](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[RWID]  int  NOT NULL,--����ID
	[JSRID]  nvarchar(20)  NOT NULL,--������ID
	[YDZT]  int  NOT NULL,--�Ķ�״̬
	[WCZT]  int  NOT NULL,--���״̬
	[SCZT]  int  NOT NULL,--ɾ��״̬
	[TJZT]  int  NOT NULL,--�ύ״̬
	[FJ]  text  NOT NULL,--����
	[BZ]  text  NOT NULL,--��ע
CONSTRAINT [PK_EDU_OAXT_35_A02_RWJSR] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�ظ���¼��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_35_A03_HFJL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_35_A03_HFJL](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[RWID]  int  NOT NULL,--����ID
	[HFRID]  nvarchar(20)  NOT NULL,--�ظ���ID
	[HFNR]  text  NOT NULL,--�ظ�����
	[HSSJ]  datetime  NOT NULL,--�ظ�ʱ��
CONSTRAINT [PK_EDU_OAXT_35_A03_HFJL] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�༶��������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_36_A01_BJGZLB]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_36_A01_BJGZLB](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[GZLBMC]  nvarchar(100)  NOT NULL,--�����������
	[DJRYIDLB]  text  NOT NULL,--�Ǽ���ԱID�б�
	[DJRYXMLB]  text  NOT NULL,--�Ǽ���Ա�����б�
CONSTRAINT [PK_EDU_OAXT_36_A01_BJGZLB] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�༶��������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_36_A02_BJGZJC]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_36_A02_BJGZJC](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[GZLBID]  int  NOT NULL,--�������ID
	[BJ]  nvarchar(50)  NOT NULL,--�༶
	[RQ]  datetime  NOT NULL,--����
	[JG]  int  NOT NULL,--���
	[BJMC]  nvarchar(50)  NOT NULL,--�༶����
CONSTRAINT [PK_EDU_OAXT_36_A02_BJGZJC] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--����Ϊ���ע�����
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ļ������������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_01_01_WJJBSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_01_01_WJJBSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ļ�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_01_01_WJJBSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ļ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_01_01_WJJBSJ', @level2type=N'COLUMN',@level2name=N'WJBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ļ��ĺ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_01_01_WJJBSJ', @level2type=N'COLUMN',@level2name=N'WJWH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_01_01_WJJBSJ', @level2type=N'COLUMN',@level2name=N'BT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_01_01_WJJBSJ', @level2type=N'COLUMN',@level2name=N'ZTC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ܼ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_01_01_WJJBSJ', @level2type=N'COLUMN',@level2name=N'MJM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����̶���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_01_01_WJJBSJ', @level2type=N'COLUMN',@level2name=N'JJCDM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ҳ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_01_01_WJJBSJ', @level2type=N'COLUMN',@level2name=N'YS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ļ�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_01_01_WJJBSJ', @level2type=N'COLUMN',@level2name=N'WJFLM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_01_01_WJJBSJ', @level2type=N'COLUMN',@level2name=N'ZW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_01_01_WJJBSJ', @level2type=N'COLUMN',@level2name=N'FJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_01_01_WJJBSJ', @level2type=N'COLUMN',@level2name=N'FWRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���͵�λ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_01_01_WJJBSJ', @level2type=N'COLUMN',@level2name=N'CSDW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���Ĵ��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_02_01_SWCL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_02_01_SWCL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ļ�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_02_01_SWCL', @level2type=N'COLUMN',@level2name=N'WJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ǩ����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_02_01_SWCL', @level2type=N'COLUMN',@level2name=N'QSRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_02_01_SWCL', @level2type=N'COLUMN',@level2name=N'CFRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ǽ���ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_02_01_SWCL', @level2type=N'COLUMN',@level2name=N'DJRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ǩ���˹���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_02_01_SWCL', @level2type=N'COLUMN',@level2name=N'QSRGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����˹���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_02_01_SWCL', @level2type=N'COLUMN',@level2name=N'CFRGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ǽ��˹���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_02_01_SWCL', @level2type=N'COLUMN',@level2name=N'DJRGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_02_01_SWCL', @level2type=N'COLUMN',@level2name=N'SWRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ĵ�λ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_02_01_SWCL', @level2type=N'COLUMN',@level2name=N'LWDW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_02_01_SWCL', @level2type=N'COLUMN',@level2name=N'FS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_02_01_SWCL', @level2type=N'COLUMN',@level2name=N'CLQK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ӡ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_02_01_SWCL', @level2type=N'COLUMN',@level2name=N'FYFS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ļ��İ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_02_02_WJYB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_02_02_WJYB', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ļ�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_02_02_WJYB', @level2type=N'COLUMN',@level2name=N'WJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�İ���ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_02_02_WJYB', @level2type=N'COLUMN',@level2name=N'YBRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�İ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_02_02_WJYB', @level2type=N'COLUMN',@level2name=N'YBLBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�İ켶��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_02_02_WJYB', @level2type=N'COLUMN',@level2name=N'YBJB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�İ쵥λ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_02_02_WJYB', @level2type=N'COLUMN',@level2name=N'YBDW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�İ쵥λ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_02_02_WJYB', @level2type=N'COLUMN',@level2name=N'YBDWBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�İ��˹���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_02_02_WJYB', @level2type=N'COLUMN',@level2name=N'YBRGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�İ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_02_02_WJYB', @level2type=N'COLUMN',@level2name=N'YBYJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�İ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_02_02_WJYB', @level2type=N'COLUMN',@level2name=N'YBRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���Ĵ��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_01_FWCL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_01_FWCL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ļ�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_01_FWCL', @level2type=N'COLUMN',@level2name=N'WJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_01_FWCL', @level2type=N'COLUMN',@level2name=N'NGRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ǩ����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_01_FWCL', @level2type=N'COLUMN',@level2name=N'QFRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ǽ���ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_01_FWCL', @level2type=N'COLUMN',@level2name=N'DJRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_01_FWCL', @level2type=N'COLUMN',@level2name=N'DZRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'У����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_01_FWCL', @level2type=N'COLUMN',@level2name=N'JDRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����˹���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_01_FWCL', @level2type=N'COLUMN',@level2name=N'NGRGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_01_FWCL', @level2type=N'COLUMN',@level2name=N'NGRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ǩ���˹���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_01_FWCL', @level2type=N'COLUMN',@level2name=N'QFRGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ǩ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_01_FWCL', @level2type=N'COLUMN',@level2name=N'QFRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ͷ�Χ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_01_FWCL', @level2type=N'COLUMN',@level2name=N'FSFW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ͷ�ʽ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_01_FWCL', @level2type=N'COLUMN',@level2name=N'FSFSM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ǽ��˹���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_01_FWCL', @level2type=N'COLUMN',@level2name=N'DJRGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ǽ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_01_FWCL', @level2type=N'COLUMN',@level2name=N'DJRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ļ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_01_FWCL', @level2type=N'COLUMN',@level2name=N'FWJS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ķ�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_01_FWCL', @level2type=N'COLUMN',@level2name=N'GWFWRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_01_FWCL', @level2type=N'COLUMN',@level2name=N'CLQK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����˹���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_01_FWCL', @level2type=N'COLUMN',@level2name=N'DZRGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'У���˹���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_01_FWCL', @level2type=N'COLUMN',@level2name=N'JDRGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��װ��ʽ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_01_FWCL', @level2type=N'COLUMN',@level2name=N'FZFSM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�˸������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_02_HG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_02_HG', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ļ�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_02_HG', @level2type=N'COLUMN',@level2name=N'WJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�˸���ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_02_HG', @level2type=N'COLUMN',@level2name=N'HGRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�˸��˹���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_02_HG', @level2type=N'COLUMN',@level2name=N'HGRGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�˸嵥λ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_02_HG', @level2type=N'COLUMN',@level2name=N'HGDW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�˸����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_02_HG', @level2type=N'COLUMN',@level2name=N'HGYJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�˸�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_02_HG', @level2type=N'COLUMN',@level2name=N'HGRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ǩ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_03_HQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_03_HQ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ļ�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_03_HQ', @level2type=N'COLUMN',@level2name=N'WJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ǩ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_03_HQ', @level2type=N'COLUMN',@level2name=N'HQRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ǩ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_03_HQ', @level2type=N'COLUMN',@level2name=N'HQR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ǩ��λ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_03_HQ', @level2type=N'COLUMN',@level2name=N'HQDW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ǩ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_03_HQ', @level2type=N'COLUMN',@level2name=N'HQYJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ǩ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_03_HQ', @level2type=N'COLUMN',@level2name=N'HQRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_04_CP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_04_CP', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ļ�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_04_CP', @level2type=N'COLUMN',@level2name=N'WJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_04_CP', @level2type=N'COLUMN',@level2name=N'PFRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_04_CP', @level2type=N'COLUMN',@level2name=N'PFR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������λ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_04_CP', @level2type=N'COLUMN',@level2name=N'PFDW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_04_CP', @level2type=N'COLUMN',@level2name=N'PFYJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_03_04_CP', @level2type=N'COLUMN',@level2name=N'PFRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ļ������������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_04_01_WJQT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_04_01_WJQT', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ļ�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_04_01_WJQT', @level2type=N'COLUMN',@level2name=N'WJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_04_01_WJQT', @level2type=N'COLUMN',@level2name=N'JBRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_04_01_WJQT', @level2type=N'COLUMN',@level2name=N'QTRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���˷�Χ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_04_01_WJQT', @level2type=N'COLUMN',@level2name=N'QTFW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����˵��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_04_01_WJQT', @level2type=N'COLUMN',@level2name=N'QTSM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����˹���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_04_01_WJQT', @level2type=N'COLUMN',@level2name=N'JBRGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ļ������������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_05_01_WJXH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_05_01_WJXH', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ļ�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_05_01_WJXH', @level2type=N'COLUMN',@level2name=N'WJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_05_01_WJXH', @level2type=N'COLUMN',@level2name=N'XHSPRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_05_01_WJXH', @level2type=N'COLUMN',@level2name=N'JBRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_05_01_WJXH', @level2type=N'COLUMN',@level2name=N'XHRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���������˹���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_05_01_WJXH', @level2type=N'COLUMN',@level2name=N'XHSPRGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����˵��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_05_01_WJXH', @level2type=N'COLUMN',@level2name=N'XHSM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����˹���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_05_01_WJXH', @level2type=N'COLUMN',@level2name=N'JBRGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ļ������������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_06_01_WJJQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_06_01_WJJQ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ļ�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_06_01_WJJQ', @level2type=N'COLUMN',@level2name=N'WJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_06_01_WJJQ', @level2type=N'COLUMN',@level2name=N'JYSPRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ľ�����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_06_01_WJJQ', @level2type=N'COLUMN',@level2name=N'JYJBRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_06_01_WJJQ', @level2type=N'COLUMN',@level2name=N'JYR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_06_01_WJJQ', @level2type=N'COLUMN',@level2name=N'JYRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���������˹���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_06_01_WJJQ', @level2type=N'COLUMN',@level2name=N'JYSPRGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ľ����˹���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_06_01_WJJQ', @level2type=N'COLUMN',@level2name=N'JYJBRGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ԭ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_06_01_WJJQ', @level2type=N'COLUMN',@level2name=N'JYYY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����Ǽ����ݱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_08_01_DADJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_08_01_DADJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_08_01_DADJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ȫ�ں�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_08_01_DADJ', @level2type=N'COLUMN',@level2name=N'QZH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_08_01_DADJ', @level2type=N'COLUMN',@level2name=N'ND'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ŀ¼��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_08_01_DADJ', @level2type=N'COLUMN',@level2name=N'MLH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_08_01_DADJ', @level2type=N'COLUMN',@level2name=N'AJH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_08_01_DADJ', @level2type=N'COLUMN',@level2name=N'TM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_08_01_DADJ', @level2type=N'COLUMN',@level2name=N'ZTC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʼ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_08_01_DADJ', @level2type=N'COLUMN',@level2name=N'QSRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ֹ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_08_01_DADJ', @level2type=N'COLUMN',@level2name=N'JZRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_08_01_DADJ', @level2type=N'COLUMN',@level2name=N'BGQXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ܼ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_08_01_DADJ', @level2type=N'COLUMN',@level2name=N'MJM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ҳ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_08_01_DADJ', @level2type=N'COLUMN',@level2name=N'YS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_08_01_DADJ', @level2type=N'COLUMN',@level2name=N'FS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���Ƶ�λ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_08_01_DADJ', @level2type=N'COLUMN',@level2name=N'BZDW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���λ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_08_01_DADJ', @level2type=N'COLUMN',@level2name=N'CFWZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_08_01_DADJ', @level2type=N'COLUMN',@level2name=N'DAFLM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'֪ͨ���ݱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_10_A01_TZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'֪ͨID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_10_A01_TZ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_10_A01_TZ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_10_A01_TZ', @level2type=N'COLUMN',@level2name=N'FSRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_10_A01_TZ', @level2type=N'COLUMN',@level2name=N'FSRLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_10_A01_TZ', @level2type=N'COLUMN',@level2name=N'BT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_10_A01_TZ', @level2type=N'COLUMN',@level2name=N'NR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_10_A01_TZ', @level2type=N'COLUMN',@level2name=N'FJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_10_A01_TZ', @level2type=N'COLUMN',@level2name=N'TJRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_10_A01_TZ', @level2type=N'COLUMN',@level2name=N'JSRS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ID�б�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_10_A01_TZ', @level2type=N'COLUMN',@level2name=N'JSRIDLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����������б�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_10_A01_TZ', @level2type=N'COLUMN',@level2name=N'JSRMZLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���Ķ���ID�б�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_10_A01_TZ', @level2type=N'COLUMN',@level2name=N'YYDRIDLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���Ķ��������б�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_10_A01_TZ', @level2type=N'COLUMN',@level2name=N'YYDRMZLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_10_A01_TZ', @level2type=N'COLUMN',@level2name=N'FSZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'֪ͨ�Ķ���¼' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_10_A02_TZYDJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'֪ͨ�Ķ���¼ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_10_A02_TZYDJL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_10_A02_TZYDJL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'֪ͨID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_10_A02_TZYDJL', @level2type=N'COLUMN',@level2name=N'TZID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��֪ͨ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_10_A02_TZYDJL', @level2type=N'COLUMN',@level2name=N'BTZRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ķ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_10_A02_TZYDJL', @level2type=N'COLUMN',@level2name=N'YDRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ����Ķ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_10_A02_TZYDJL', @level2type=N'COLUMN',@level2name=N'SFYD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ɾ��״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_10_A02_TZYDJL', @level2type=N'COLUMN',@level2name=N'SCZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������ݱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_10_A03_GG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_10_A03_GG', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_10_A03_GG', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_10_A03_GG', @level2type=N'COLUMN',@level2name=N'FBRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_10_A03_GG', @level2type=N'COLUMN',@level2name=N'FBBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_10_A03_GG', @level2type=N'COLUMN',@level2name=N'FBSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_10_A03_GG', @level2type=N'COLUMN',@level2name=N'BT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_10_A03_GG', @level2type=N'COLUMN',@level2name=N'NR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_10_A03_GG', @level2type=N'COLUMN',@level2name=N'ZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'֪ͨģ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_10_A04_TZMB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_10_A04_TZMB', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_10_A04_TZMB', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ģ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_10_A04_TZMB', @level2type=N'COLUMN',@level2name=N'MBMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ģ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_10_A04_TZMB', @level2type=N'COLUMN',@level2name=N'MBNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ʼ����ݱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_11_A01_YJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ʼ�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_11_A01_YJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_11_A01_YJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ӵ����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_11_A01_YJ', @level2type=N'COLUMN',@level2name=N'YYZID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_11_A01_YJ', @level2type=N'COLUMN',@level2name=N'FSRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_11_A01_YJ', @level2type=N'COLUMN',@level2name=N'JSRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_11_A01_YJ', @level2type=N'COLUMN',@level2name=N'FSRMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_11_A01_YJ', @level2type=N'COLUMN',@level2name=N'JSRMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ID�б�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_11_A01_YJ', @level2type=N'COLUMN',@level2name=N'JSRIDLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����������б�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_11_A01_YJ', @level2type=N'COLUMN',@level2name=N'JSRMCLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_11_A01_YJ', @level2type=N'COLUMN',@level2name=N'BT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_11_A01_YJ', @level2type=N'COLUMN',@level2name=N'NR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_11_A01_YJ', @level2type=N'COLUMN',@level2name=N'FJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_11_A01_YJ', @level2type=N'COLUMN',@level2name=N'FSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ����Ķ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_11_A01_YJ', @level2type=N'COLUMN',@level2name=N'SFYD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ʼ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_11_A01_YJ', @level2type=N'COLUMN',@level2name=N'YJLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ݷ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_12_A01_SJFB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ݷ���ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_12_A01_SJFB', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_12_A01_SJFB', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��վID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_12_A01_SJFB', @level2type=N'COLUMN',@level2name=N'WEBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_12_A01_SJFB', @level2type=N'COLUMN',@level2name=N'FBRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������׼��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_12_A01_SJFB', @level2type=N'COLUMN',@level2name=N'FBBZRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_12_A01_SJFB', @level2type=N'COLUMN',@level2name=N'FBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ݱ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_12_A01_SJFB', @level2type=N'COLUMN',@level2name=N'XXBT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������Ŀ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_12_A01_SJFB', @level2type=N'COLUMN',@level2name=N'FBLMH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_12_A01_SJFB', @level2type=N'COLUMN',@level2name=N'SJNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_12_A01_SJFB', @level2type=N'COLUMN',@level2name=N'FJS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_12_A01_SJFB', @level2type=N'COLUMN',@level2name=N'FBRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������λ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_12_A01_SJFB', @level2type=N'COLUMN',@level2name=N'FBDW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����˹���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_12_A01_SJFB', @level2type=N'COLUMN',@level2name=N'FBRGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������Χ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_12_A01_SJFB', @level2type=N'COLUMN',@level2name=N'FBFW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������׼�˺�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_12_A01_SJFB', @level2type=N'COLUMN',@level2name=N'FBBZRH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_12_A01_SJFB', @level2type=N'COLUMN',@level2name=N'SJZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��λ���ݱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_13_A01_DWSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��λID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_13_A01_DWSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_13_A01_DWSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ϼ���λID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_13_A01_DWSJ', @level2type=N'COLUMN',@level2name=N'SJDWID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��λ������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_13_A01_DWSJ', @level2type=N'COLUMN',@level2name=N'DWFZRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��λ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_13_A01_DWSJ', @level2type=N'COLUMN',@level2name=N'DWMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��λ��ԱID�б�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_13_A01_DWSJ', @level2type=N'COLUMN',@level2name=N'DWCYIDLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����ճ���Ϣ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_14_A01_GRRCXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_14_A01_GRRCXX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_14_A01_GRRCXX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�û�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_14_A01_GRRCXX', @level2type=N'COLUMN',@level2name=N'YHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_14_A01_GRRCXX', @level2type=N'COLUMN',@level2name=N'BT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_14_A01_GRRCXX', @level2type=N'COLUMN',@level2name=N'NR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʼʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_14_A01_GRRCXX', @level2type=N'COLUMN',@level2name=N'KSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_14_A01_GRRCXX', @level2type=N'COLUMN',@level2name=N'JSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ���ʾ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_14_A01_GRRCXX', @level2type=N'COLUMN',@level2name=N'SFTS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_14_A01_GRRCXX', @level2type=N'COLUMN',@level2name=N'ZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ʲ�Ŀ¼��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A01_ZCML'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A01_ZCML', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A01_ZCML', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'У��Ŀ¼' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A01_ZCML', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ŀ¼ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A01_ZCML', @level2type=N'COLUMN',@level2name=N'Superid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A01_ZCML', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ʲ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A02_ZCDL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A02_ZCDL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A02_ZCDL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'У������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A02_ZCDL', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A02_ZCDL', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ʲ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A03_ZCKC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A03_ZCKC', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A03_ZCKC', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ʲ�Ŀ¼��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A03_ZCKC', @level2type=N'COLUMN',@level2name=N'TypeID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ʲ������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A03_ZCKC', @level2type=N'COLUMN',@level2name=N'ClassID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ʲ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A03_ZCKC', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ʲ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A03_ZCKC', @level2type=N'COLUMN',@level2name=N'Info'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A03_ZCKC', @level2type=N'COLUMN',@level2name=N'Productdate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A03_ZCKC', @level2type=N'COLUMN',@level2name=N'Price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A03_ZCKC', @level2type=N'COLUMN',@level2name=N'SumCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ӧ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A03_ZCKC', @level2type=N'COLUMN',@level2name=N'Merchant'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A03_ZCKC', @level2type=N'COLUMN',@level2name=N'Vender'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A03_ZCKC', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ʲ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A03_ZCKC', @level2type=N'COLUMN',@level2name=N'AllCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A03_ZCKC', @level2type=N'COLUMN',@level2name=N'RKL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A03_ZCKC', @level2type=N'COLUMN',@level2name=N'RQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��λ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A03_ZCKC', @level2type=N'COLUMN',@level2name=N'DW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ܼ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A03_ZCKC', @level2type=N'COLUMN',@level2name=N'ZJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ʹ�ò���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A03_ZCKC', @level2type=N'COLUMN',@level2name=N'SYBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ŵ�λ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A03_ZCKC', @level2type=N'COLUMN',@level2name=N'CFDW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A03_ZCKC', @level2type=N'COLUMN',@level2name=N'FZR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���÷�ʽ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A03_ZCKC', @level2type=N'COLUMN',@level2name=N'CZFS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ʲ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A04_ZCRK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A04_ZCRK', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A04_ZCRK', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ʲ�Ŀ¼��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A04_ZCRK', @level2type=N'COLUMN',@level2name=N'TypeID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ʲ������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A04_ZCRK', @level2type=N'COLUMN',@level2name=N'ClassID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'У������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A04_ZCRK', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ʲ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A04_ZCRK', @level2type=N'COLUMN',@level2name=N'Info'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A04_ZCRK', @level2type=N'COLUMN',@level2name=N'Productdate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A04_ZCRK', @level2type=N'COLUMN',@level2name=N'Price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A04_ZCRK', @level2type=N'COLUMN',@level2name=N'SumCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ӧ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A04_ZCRK', @level2type=N'COLUMN',@level2name=N'Merchant'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A04_ZCRK', @level2type=N'COLUMN',@level2name=N'Vender'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ǽ�ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A04_ZCRK', @level2type=N'COLUMN',@level2name=N'Registdate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A04_ZCRK', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A04_ZCRK', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A04_ZCRK', @level2type=N'COLUMN',@level2name=N'RQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��λ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A04_ZCRK', @level2type=N'COLUMN',@level2name=N'DW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ܼ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A04_ZCRK', @level2type=N'COLUMN',@level2name=N'ZJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ʹ�ò���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A04_ZCRK', @level2type=N'COLUMN',@level2name=N'SYBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ŵ�λ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A04_ZCRK', @level2type=N'COLUMN',@level2name=N'CFDW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A04_ZCRK', @level2type=N'COLUMN',@level2name=N'FZR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���÷�ʽ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A04_ZCRK', @level2type=N'COLUMN',@level2name=N'CZFS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ʲ��軹��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A05_ZCJH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A05_ZCJH', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A05_ZCJH', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ʲ�Ŀ¼��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A05_ZCJH', @level2type=N'COLUMN',@level2name=N'TypeID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ʲ������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A05_ZCJH', @level2type=N'COLUMN',@level2name=N'ClassID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A05_ZCJH', @level2type=N'COLUMN',@level2name=N'AID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A05_ZCJH', @level2type=N'COLUMN',@level2name=N'SumCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��λ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A05_ZCJH', @level2type=N'COLUMN',@level2name=N'Unit'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���÷�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A05_ZCJH', @level2type=N'COLUMN',@level2name=N'Borrower'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A05_ZCJH', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ǽ�ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A05_ZCJH', @level2type=N'COLUMN',@level2name=N'Registdate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ʲ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A06_ZCBG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A06_ZCBG', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A06_ZCBG', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���(���á����á�����)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A06_ZCBG', @level2type=N'COLUMN',@level2name=N'TypeID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A06_ZCBG', @level2type=N'COLUMN',@level2name=N'TypeName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A06_ZCBG', @level2type=N'COLUMN',@level2name=N'AID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ʲ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A06_ZCBG', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A06_ZCBG', @level2type=N'COLUMN',@level2name=N'Option'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ǽ�ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A06_ZCBG', @level2type=N'COLUMN',@level2name=N'RegistTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A06_ZCBG', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A06_ZCBG', @level2type=N'COLUMN',@level2name=N'SumCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������ͱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A07_BXLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A07_BXLX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A07_BXLX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A07_BXLX', @level2type=N'COLUMN',@level2name=N'TypeName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A07_BXLX', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���޹����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A08_BXGL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A08_BXGL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A08_BXGL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A08_BXGL', @level2type=N'COLUMN',@level2name=N'AID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A08_BXGL', @level2type=N'COLUMN',@level2name=N'TypeID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A08_BXGL', @level2type=N'COLUMN',@level2name=N'Title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ϵ�绰' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A08_BXGL', @level2type=N'COLUMN',@level2name=N'Telephone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���޵ص�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A08_BXGL', @level2type=N'COLUMN',@level2name=N'Repairplace'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A08_BXGL', @level2type=N'COLUMN',@level2name=N'Repaircontent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ά����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A08_BXGL', @level2type=N'COLUMN',@level2name=N'Repairpeople'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ά��ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A08_BXGL', @level2type=N'COLUMN',@level2name=N'RepairDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ķ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A08_BXGL', @level2type=N'COLUMN',@level2name=N'ReadrID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ķ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A08_BXGL', @level2type=N'COLUMN',@level2name=N'Readr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A08_BXGL', @level2type=N'COLUMN',@level2name=N'Applicant'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A08_BXGL', @level2type=N'COLUMN',@level2name=N'Approver'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A08_BXGL', @level2type=N'COLUMN',@level2name=N'Evaluate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʼʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A08_BXGL', @level2type=N'COLUMN',@level2name=N'StartDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A08_BXGL', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A08_BXGL', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A08_BXGL', @level2type=N'COLUMN',@level2name=N'SumCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ͼƬ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A08_BXGL', @level2type=N'COLUMN',@level2name=N'GZTP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A08_BXGL', @level2type=N'COLUMN',@level2name=N'WCZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ɾ��״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A08_BXGL', @level2type=N'COLUMN',@level2name=N'SCZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ά�޼ƻ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A09_WXJH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A09_WXJH', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A09_WXJH', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A09_WXJH', @level2type=N'COLUMN',@level2name=N'AID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ƻ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A09_WXJH', @level2type=N'COLUMN',@level2name=N'Title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ά������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A09_WXJH', @level2type=N'COLUMN',@level2name=N'Content'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ʲ����ϱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A10_ZCBF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A10_ZCBF', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A10_ZCBF', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A10_ZCBF', @level2type=N'COLUMN',@level2name=N'AID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A10_ZCBF', @level2type=N'COLUMN',@level2name=N'Sum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�걨��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A10_ZCBF', @level2type=N'COLUMN',@level2name=N'Reporter'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A10_ZCBF', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ǽ���ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A10_ZCBF', @level2type=N'COLUMN',@level2name=N'RegsterID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A10_ZCBF', @level2type=N'COLUMN',@level2name=N'Statu'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ǽ�ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A10_ZCBF', @level2type=N'COLUMN',@level2name=N'Registdate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ʲ��̵��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A11_ZCPD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A11_ZCPD', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A11_ZCPD', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�̵�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A11_ZCPD', @level2type=N'COLUMN',@level2name=N'Title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�̵�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A11_ZCPD', @level2type=N'COLUMN',@level2name=N'PanDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�̵�Ŀ¼ID�б�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A11_ZCPD', @level2type=N'COLUMN',@level2name=N'PanTypeIDs'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A11_ZCPD', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A11_ZCPD', @level2type=N'COLUMN',@level2name=N'Statu'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ʲ��̵���ϸ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A12_ZCPDMX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A12_ZCPDMX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A12_ZCPDMX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A12_ZCPDMX', @level2type=N'COLUMN',@level2name=N'AID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�̵��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A12_ZCPDMX', @level2type=N'COLUMN',@level2name=N'PID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�̵���ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A12_ZCPDMX', @level2type=N'COLUMN',@level2name=N'PUserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A12_ZCPDMX', @level2type=N'COLUMN',@level2name=N'Storesum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ʵ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A12_ZCPDMX', @level2type=N'COLUMN',@level2name=N'RealSum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ʲ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A12_ZCPDMX', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ʲ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A12_ZCPDMX', @level2type=N'COLUMN',@level2name=N'AllCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A12_ZCPDMX', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A12_ZCPDMX', @level2type=N'COLUMN',@level2name=N'BorrowCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ά�޼�¼��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A13_WXJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A13_WXJL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A13_WXJL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ƷID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A13_WXJL', @level2type=N'COLUMN',@level2name=N'WPID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ά��״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A13_WXJL', @level2type=N'COLUMN',@level2name=N'WXZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A13_WXJL', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���޹�����Ϣ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A14_BXGZXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A14_BXGZXX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A14_BXGZXX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A14_BXGZXX', @level2type=N'COLUMN',@level2name=N'BXLXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������Ϣ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A14_BXGZXX', @level2type=N'COLUMN',@level2name=N'GZXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ģ�����ͱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A01_LCMBLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A01_LCMBLX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A01_LCMBLX', @level2type=N'COLUMN',@level2name=N'LXMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A01_LCMBLX', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���̱����ݱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A02_LCBDSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A02_LCBDSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A02_LCBDSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A02_LCBDSJ', @level2type=N'COLUMN',@level2name=N'BDMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A02_LCBDSJ', @level2type=N'COLUMN',@level2name=N'BDNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A02_LCBDSJ', @level2type=N'COLUMN',@level2name=N'TJSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A02_LCBDSJ', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ģ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A03_LCMB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A03_LCMB', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A03_LCMB', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ģ������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A03_LCMB', @level2type=N'COLUMN',@level2name=N'MBLXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ģ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A03_LCMB', @level2type=N'COLUMN',@level2name=N'MBMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A03_LCMB', @level2type=N'COLUMN',@level2name=N'BDID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʼ����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A03_LCMB', @level2type=N'COLUMN',@level2name=N'QSBZID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A03_LCMB', @level2type=N'COLUMN',@level2name=N'JSBZID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A03_LCMB', @level2type=N'COLUMN',@level2name=N'TJSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A03_LCMB', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���̲����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A04_LCBZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A04_LCBZ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A04_LCBZ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A04_LCBZ', @level2type=N'COLUMN',@level2name=N'BZMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ģ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A04_LCBZ', @level2type=N'COLUMN',@level2name=N'LCMBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ID�б�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A04_LCBZ', @level2type=N'COLUMN',@level2name=N'SPRIDLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����������б�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A04_LCBZ', @level2type=N'COLUMN',@level2name=N'SPRMCLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��һ����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A04_LCBZ', @level2type=N'COLUMN',@level2name=N'SYBZID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��һ����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A04_LCBZ', @level2type=N'COLUMN',@level2name=N'XYBZID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A04_LCBZ', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʵ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A05_LCSL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A05_LCSL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A05_LCSL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ģ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A05_LCSL', @level2type=N'COLUMN',@level2name=N'LCMBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A05_LCSL', @level2type=N'COLUMN',@level2name=N'SQRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A05_LCSL', @level2type=N'COLUMN',@level2name=N'SPRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A05_LCSL', @level2type=N'COLUMN',@level2name=N'SQSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ǰ����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A05_LCSL', @level2type=N'COLUMN',@level2name=N'DQBZID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ǰ����ִ��״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A05_LCSL', @level2type=N'COLUMN',@level2name=N'DQBZZXZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ч��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A05_LCSL', @level2type=N'COLUMN',@level2name=N'YXQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ʵ��״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A05_LCSL', @level2type=N'COLUMN',@level2name=N'SLZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A05_LCSL', @level2type=N'COLUMN',@level2name=N'FJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A05_LCSL', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A05_LCSL', @level2type=N'COLUMN',@level2name=N'LXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A05_LCSL', @level2type=N'COLUMN',@level2name=N'LXMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������˼�¼��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A06_LCSHJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A06_LCSHJL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A06_LCSHJL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ģ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A06_LCSHJL', @level2type=N'COLUMN',@level2name=N'LCMBMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʵ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A06_LCSHJL', @level2type=N'COLUMN',@level2name=N'LCSLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A06_LCSHJL', @level2type=N'COLUMN',@level2name=N'BZMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A06_LCSHJL', @level2type=N'COLUMN',@level2name=N'BZID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ģ������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A06_LCSHJL', @level2type=N'COLUMN',@level2name=N'LCMBLXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A06_LCSHJL', @level2type=N'COLUMN',@level2name=N'SQRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A06_LCSHJL', @level2type=N'COLUMN',@level2name=N'SPRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A06_LCSHJL', @level2type=N'COLUMN',@level2name=N'SHZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A06_LCSHJL', @level2type=N'COLUMN',@level2name=N'TJSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A06_LCSHJL', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ģ���������ñ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A07_LCMBLXPZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ģ������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A07_LCMBLXPZ', @level2type=N'COLUMN',@level2name=N'LCMBLXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A07_LCMBLXPZ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʹ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_20_A07_LCMBLXPZ', @level2type=N'COLUMN',@level2name=N'BSYLC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ͱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A01_QJLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A01_QJLX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A01_QJLX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A01_QJLX', @level2type=N'COLUMN',@level2name=N'LXMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A01_QJLX', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʱ��λ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A01_QJLX', @level2type=N'COLUMN',@level2name=N'JSDW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A01_QJLX', @level2type=N'COLUMN',@level2name=N'ZCSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A02_QJSQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A02_QJSQ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A02_QJSQ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʵ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A02_QJSQ', @level2type=N'COLUMN',@level2name=N'LCSLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A02_QJSQ', @level2type=N'COLUMN',@level2name=N'QJLXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ԭ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A02_QJSQ', @level2type=N'COLUMN',@level2name=N'QJYY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʼʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A02_QJSQ', @level2type=N'COLUMN',@level2name=N'KSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A02_QJSQ', @level2type=N'COLUMN',@level2name=N'JSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A02_QJSQ', @level2type=N'COLUMN',@level2name=N'QJTS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A02_QJSQ', @level2type=N'COLUMN',@level2name=N'SQSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A02_QJSQ', @level2type=N'COLUMN',@level2name=N'SQZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A02_QJSQ', @level2type=N'COLUMN',@level2name=N'SQRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A02_QJSQ', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A02_QJSQ', @level2type=N'COLUMN',@level2name=N'BJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A02_QJSQ', @level2type=N'COLUMN',@level2name=N'XJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A02_QJSQ', @level2type=N'COLUMN',@level2name=N'XJRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A02_QJSQ', @level2type=N'COLUMN',@level2name=N'XJSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������޸ļ�¼��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A03_QJSQXGJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A03_QJSQXGJL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A03_QJSQXGJL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A03_QJSQXGJL', @level2type=N'COLUMN',@level2name=N'SQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�޸��û�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A03_QJSQXGJL', @level2type=N'COLUMN',@level2name=N'XGYHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�޸��û�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A03_QJSQXGJL', @level2type=N'COLUMN',@level2name=N'XGYHXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A03_QJSQXGJL', @level2type=N'COLUMN',@level2name=N'QJLXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A03_QJSQXGJL', @level2type=N'COLUMN',@level2name=N'QJLXMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ԭ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A03_QJSQXGJL', @level2type=N'COLUMN',@level2name=N'QJYY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʼʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A03_QJSQXGJL', @level2type=N'COLUMN',@level2name=N'KSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A03_QJSQXGJL', @level2type=N'COLUMN',@level2name=N'JSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A03_QJSQXGJL', @level2type=N'COLUMN',@level2name=N'QJTS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A03_QJSQXGJL', @level2type=N'COLUMN',@level2name=N'SQSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A03_QJSQXGJL', @level2type=N'COLUMN',@level2name=N'SQZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A03_QJSQXGJL', @level2type=N'COLUMN',@level2name=N'SQRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A03_QJSQXGJL', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʵ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A03_QJSQXGJL', @level2type=N'COLUMN',@level2name=N'LCSLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʵ��״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A03_QJSQXGJL', @level2type=N'COLUMN',@level2name=N'LCSLZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ģ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A03_QJSQXGJL', @level2type=N'COLUMN',@level2name=N'LCMBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ģ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A03_QJSQXGJL', @level2type=N'COLUMN',@level2name=N'LCMBMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ǰ����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A03_QJSQXGJL', @level2type=N'COLUMN',@level2name=N'DQBZID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ǰ��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A03_QJSQXGJL', @level2type=N'COLUMN',@level2name=N'DQBZMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ǰ�������״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A03_QJSQXGJL', @level2type=N'COLUMN',@level2name=N'DQBZSHZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����˲���ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_21_A03_QJSQXGJL', @level2type=N'COLUMN',@level2name=N'SQRBMID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���������ݱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A01_HYSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A01_HYSSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A01_HYSSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A01_HYSSJ', @level2type=N'COLUMN',@level2name=N'FJMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����ַ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A01_HYSSJ', @level2type=N'COLUMN',@level2name=N'FJDZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A01_HYSSJ', @level2type=N'COLUMN',@level2name=N'ZDRNRS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A01_HYSSJ', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A02_HYSQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A02_HYSQ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A02_HYSQ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʵ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A02_HYSQ', @level2type=N'COLUMN',@level2name=N'LCSLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A02_HYSQ', @level2type=N'COLUMN',@level2name=N'HYMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A02_HYSQ', @level2type=N'COLUMN',@level2name=N'HYNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A02_HYSQ', @level2type=N'COLUMN',@level2name=N'ZCRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��¼��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A02_HYSQ', @level2type=N'COLUMN',@level2name=N'JLRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���鼶��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A02_HYSQ', @level2type=N'COLUMN',@level2name=N'HYJB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ص�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A02_HYSQ', @level2type=N'COLUMN',@level2name=N'HYDDID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����ַ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A02_HYSQ', @level2type=N'COLUMN',@level2name=N'HYDZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����ԱID�б�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A02_HYSQ', @level2type=N'COLUMN',@level2name=N'YHRYIDLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����Ա�����б�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A02_HYSQ', @level2type=N'COLUMN',@level2name=N'YHRYXMLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʼʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A02_HYSQ', @level2type=N'COLUMN',@level2name=N'KSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A02_HYSQ', @level2type=N'COLUMN',@level2name=N'JSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A02_HYSQ', @level2type=N'COLUMN',@level2name=N'SQSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A02_HYSQ', @level2type=N'COLUMN',@level2name=N'SQZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A02_HYSQ', @level2type=N'COLUMN',@level2name=N'SQRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A02_HYSQ', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A02_HYSQ', @level2type=N'COLUMN',@level2name=N'FJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���������޸ļ�¼��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A03_HYSQXGJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A03_HYSQXGJL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A03_HYSQXGJL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A03_HYSQXGJL', @level2type=N'COLUMN',@level2name=N'SQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�޸��û�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A03_HYSQXGJL', @level2type=N'COLUMN',@level2name=N'XGYHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�޸��û�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A03_HYSQXGJL', @level2type=N'COLUMN',@level2name=N'XGYHXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A03_HYSQXGJL', @level2type=N'COLUMN',@level2name=N'HYMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A03_HYSQXGJL', @level2type=N'COLUMN',@level2name=N'HYNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A03_HYSQXGJL', @level2type=N'COLUMN',@level2name=N'ZCRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��¼��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A03_HYSQXGJL', @level2type=N'COLUMN',@level2name=N'JLRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���鼶��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A03_HYSQXGJL', @level2type=N'COLUMN',@level2name=N'HYJB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ص�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A03_HYSQXGJL', @level2type=N'COLUMN',@level2name=N'HYDZID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����ַ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A03_HYSQXGJL', @level2type=N'COLUMN',@level2name=N'HYDZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����ԱID�б�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A03_HYSQXGJL', @level2type=N'COLUMN',@level2name=N'YHRYIDLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����Ա�����б�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A03_HYSQXGJL', @level2type=N'COLUMN',@level2name=N'YHRYXMLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʼʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A03_HYSQXGJL', @level2type=N'COLUMN',@level2name=N'KSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A03_HYSQXGJL', @level2type=N'COLUMN',@level2name=N'JSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A03_HYSQXGJL', @level2type=N'COLUMN',@level2name=N'SQSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A03_HYSQXGJL', @level2type=N'COLUMN',@level2name=N'SQZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A03_HYSQXGJL', @level2type=N'COLUMN',@level2name=N'SQRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A03_HYSQXGJL', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A03_HYSQXGJL', @level2type=N'COLUMN',@level2name=N'FJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʵ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A03_HYSQXGJL', @level2type=N'COLUMN',@level2name=N'LCSLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʵ��״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A03_HYSQXGJL', @level2type=N'COLUMN',@level2name=N'LCSLZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ģ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A03_HYSQXGJL', @level2type=N'COLUMN',@level2name=N'LCMBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ģ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A03_HYSQXGJL', @level2type=N'COLUMN',@level2name=N'LCMBMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ǰ����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A03_HYSQXGJL', @level2type=N'COLUMN',@level2name=N'DQBZID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ǰ��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A03_HYSQXGJL', @level2type=N'COLUMN',@level2name=N'DQBZMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ǰ�������״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A03_HYSQXGJL', @level2type=N'COLUMN',@level2name=N'DQBZSHZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����˲���ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A03_HYSQXGJL', @level2type=N'COLUMN',@level2name=N'SQRBMID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����Ҫ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A04_HYJY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A04_HYJY', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A04_HYJY', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A04_HYJY', @level2type=N'COLUMN',@level2name=N'HYID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����Ҫ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A04_HYJY', @level2type=N'COLUMN',@level2name=N'HYJYNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��¼��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A04_HYJY', @level2type=N'COLUMN',@level2name=N'JLRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��¼ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A04_HYJY', @level2type=N'COLUMN',@level2name=N'JLSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���鱸ע���ͱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A05_HYBZLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A05_HYBZLX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A05_HYBZLX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A05_HYBZLX', @level2type=N'COLUMN',@level2name=N'MC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A05_HYBZLX', @level2type=N'COLUMN',@level2name=N'LX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����Ҫģ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A06_HYJYMB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A06_HYJYMB', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A06_HYJYMB', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ģ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A06_HYJYMB', @level2type=N'COLUMN',@level2name=N'MBMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ģ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_22_A06_HYJYMB', @level2type=N'COLUMN',@level2name=N'MBNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_23_A01_GWSQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_23_A01_GWSQ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_23_A01_GWSQ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʵ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_23_A01_GWSQ', @level2type=N'COLUMN',@level2name=N'LCSLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ı���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_23_A01_GWSQ', @level2type=N'COLUMN',@level2name=N'GWBT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_23_A01_GWSQ', @level2type=N'COLUMN',@level2name=N'GWNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_23_A01_GWSQ', @level2type=N'COLUMN',@level2name=N'FJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ռ���ID�б�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_23_A01_GWSQ', @level2type=N'COLUMN',@level2name=N'SJRIDLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ռ��������б�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_23_A01_GWSQ', @level2type=N'COLUMN',@level2name=N'SJRXMLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ķ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_23_A01_GWSQ', @level2type=N'COLUMN',@level2name=N'YDQK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_23_A01_GWSQ', @level2type=N'COLUMN',@level2name=N'SQSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_23_A01_GWSQ', @level2type=N'COLUMN',@level2name=N'SQRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_23_A01_GWSQ', @level2type=N'COLUMN',@level2name=N'SQZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_23_A01_GWSQ', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ĵ�λ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_23_A01_GWSQ', @level2type=N'COLUMN',@level2name=N'SWDW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ѹ鵵����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_23_A01_GWSQ', @level2type=N'COLUMN',@level2name=N'YGDCS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ļ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_23_A01_GWSQ', @level2type=N'COLUMN',@level2name=N'WJBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���������޸ļ�¼��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_23_A02_GWSQXGJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_23_A02_GWSQXGJL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_23_A02_GWSQXGJL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_23_A02_GWSQXGJL', @level2type=N'COLUMN',@level2name=N'SQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�޸��û�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_23_A02_GWSQXGJL', @level2type=N'COLUMN',@level2name=N'XGYHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�޸��û�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_23_A02_GWSQXGJL', @level2type=N'COLUMN',@level2name=N'XGYHXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ı���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_23_A02_GWSQXGJL', @level2type=N'COLUMN',@level2name=N'GWBT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_23_A02_GWSQXGJL', @level2type=N'COLUMN',@level2name=N'GWNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_23_A02_GWSQXGJL', @level2type=N'COLUMN',@level2name=N'FJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ռ���ID�б�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_23_A02_GWSQXGJL', @level2type=N'COLUMN',@level2name=N'SJRIDLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ռ��������б�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_23_A02_GWSQXGJL', @level2type=N'COLUMN',@level2name=N'SJRXMLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ķ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_23_A02_GWSQXGJL', @level2type=N'COLUMN',@level2name=N'YDQK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_23_A02_GWSQXGJL', @level2type=N'COLUMN',@level2name=N'SQSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_23_A02_GWSQXGJL', @level2type=N'COLUMN',@level2name=N'SQRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_23_A02_GWSQXGJL', @level2type=N'COLUMN',@level2name=N'SQZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_23_A02_GWSQXGJL', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ĵ�λ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_23_A02_GWSQXGJL', @level2type=N'COLUMN',@level2name=N'SWDW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʵ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_23_A02_GWSQXGJL', @level2type=N'COLUMN',@level2name=N'LCSLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʵ��״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_23_A02_GWSQXGJL', @level2type=N'COLUMN',@level2name=N'LCSLZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ģ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_23_A02_GWSQXGJL', @level2type=N'COLUMN',@level2name=N'LCMBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ģ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_23_A02_GWSQXGJL', @level2type=N'COLUMN',@level2name=N'LCMBMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ǰ����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_23_A02_GWSQXGJL', @level2type=N'COLUMN',@level2name=N'DQBZID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ǰ��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_23_A02_GWSQXGJL', @level2type=N'COLUMN',@level2name=N'DQBZMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ǰ�������״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_23_A02_GWSQXGJL', @level2type=N'COLUMN',@level2name=N'DQBZSHZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����˲���ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_23_A02_GWSQXGJL', @level2type=N'COLUMN',@level2name=N'SQRBMID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ó������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A01_YCSQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A01_YCSQ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A01_YCSQ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʵ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A01_YCSQ', @level2type=N'COLUMN',@level2name=N'LCSLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ó�ԭ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A01_YCSQ', @level2type=N'COLUMN',@level2name=N'YCYY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A01_YCSQ', @level2type=N'COLUMN',@level2name=N'WCRS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʼʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A01_YCSQ', @level2type=N'COLUMN',@level2name=N'KSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ʹ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A01_YCSQ', @level2type=N'COLUMN',@level2name=N'SYTS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A01_YCSQ', @level2type=N'COLUMN',@level2name=N'SQSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A01_YCSQ', @level2type=N'COLUMN',@level2name=N'SQRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A01_YCSQ', @level2type=N'COLUMN',@level2name=N'SQZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A01_YCSQ', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���복��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A01_YCSQ', @level2type=N'COLUMN',@level2name=N'SQCLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A01_YCSQ', @level2type=N'COLUMN',@level2name=N'JSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ó������޸ļ�¼��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A02_YCSQXGJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A02_YCSQXGJL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A02_YCSQXGJL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ó������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A02_YCSQXGJL', @level2type=N'COLUMN',@level2name=N'SQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�޸��û�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A02_YCSQXGJL', @level2type=N'COLUMN',@level2name=N'XGYHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�޸��û�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A02_YCSQXGJL', @level2type=N'COLUMN',@level2name=N'XGYHXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ó�ԭ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A02_YCSQXGJL', @level2type=N'COLUMN',@level2name=N'YCYY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A02_YCSQXGJL', @level2type=N'COLUMN',@level2name=N'WCRS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʼʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A02_YCSQXGJL', @level2type=N'COLUMN',@level2name=N'KSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ʹ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A02_YCSQXGJL', @level2type=N'COLUMN',@level2name=N'SYTS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A02_YCSQXGJL', @level2type=N'COLUMN',@level2name=N'SQSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A02_YCSQXGJL', @level2type=N'COLUMN',@level2name=N'SQRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A02_YCSQXGJL', @level2type=N'COLUMN',@level2name=N'SQZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A02_YCSQXGJL', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʵ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A02_YCSQXGJL', @level2type=N'COLUMN',@level2name=N'LCSLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʵ��״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A02_YCSQXGJL', @level2type=N'COLUMN',@level2name=N'LCSLZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ģ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A02_YCSQXGJL', @level2type=N'COLUMN',@level2name=N'LCMBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ģ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A02_YCSQXGJL', @level2type=N'COLUMN',@level2name=N'LCMBMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ǰ����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A02_YCSQXGJL', @level2type=N'COLUMN',@level2name=N'DQBZID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ǰ��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A02_YCSQXGJL', @level2type=N'COLUMN',@level2name=N'DQBZMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ǰ�������״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A02_YCSQXGJL', @level2type=N'COLUMN',@level2name=N'DQBZSHZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����˲���ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A02_YCSQXGJL', @level2type=N'COLUMN',@level2name=N'SQRBMID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���복��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A02_YCSQXGJL', @level2type=N'COLUMN',@level2name=N'SQCLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A02_YCSQXGJL', @level2type=N'COLUMN',@level2name=N'JSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������ݱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A03_CLSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A03_CLSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A03_CLSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A03_CLSJ', @level2type=N'COLUMN',@level2name=N'CLMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����Ʒ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A03_CLSJ', @level2type=N'COLUMN',@level2name=N'CLPP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������ƺ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A03_CLSJ', @level2type=N'COLUMN',@level2name=N'CLCPH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A03_CLSJ', @level2type=N'COLUMN',@level2name=N'ZDRNRS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A03_CLSJ', @level2type=N'COLUMN',@level2name=N'CLZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_24_A03_CLSJ', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ɹ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_25_A01_CGSQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_25_A01_CGSQ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_25_A01_CGSQ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʵ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_25_A01_CGSQ', @level2type=N'COLUMN',@level2name=N'LCSLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ɹ�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_25_A01_CGSQ', @level2type=N'COLUMN',@level2name=N'CGDMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ɹ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_25_A01_CGSQ', @level2type=N'COLUMN',@level2name=N'CGNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_25_A01_CGSQ', @level2type=N'COLUMN',@level2name=N'FJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_25_A01_CGSQ', @level2type=N'COLUMN',@level2name=N'SQSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_25_A01_CGSQ', @level2type=N'COLUMN',@level2name=N'SQRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ɹ�״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_25_A01_CGSQ', @level2type=N'COLUMN',@level2name=N'CGZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_25_A01_CGSQ', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ɹ������޸ļ�¼��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_25_A02_CGSQXGJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_25_A02_CGSQXGJL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_25_A02_CGSQXGJL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ɹ������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_25_A02_CGSQXGJL', @level2type=N'COLUMN',@level2name=N'SQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�޸��û�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_25_A02_CGSQXGJL', @level2type=N'COLUMN',@level2name=N'XGYHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�޸��û�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_25_A02_CGSQXGJL', @level2type=N'COLUMN',@level2name=N'XGYHXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ɹ�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_25_A02_CGSQXGJL', @level2type=N'COLUMN',@level2name=N'CGDMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ɹ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_25_A02_CGSQXGJL', @level2type=N'COLUMN',@level2name=N'CGNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_25_A02_CGSQXGJL', @level2type=N'COLUMN',@level2name=N'FJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_25_A02_CGSQXGJL', @level2type=N'COLUMN',@level2name=N'SQSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_25_A02_CGSQXGJL', @level2type=N'COLUMN',@level2name=N'SQRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ɹ�״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_25_A02_CGSQXGJL', @level2type=N'COLUMN',@level2name=N'CGZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_25_A02_CGSQXGJL', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʵ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_25_A02_CGSQXGJL', @level2type=N'COLUMN',@level2name=N'LCSLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʵ��״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_25_A02_CGSQXGJL', @level2type=N'COLUMN',@level2name=N'LCSLZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ģ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_25_A02_CGSQXGJL', @level2type=N'COLUMN',@level2name=N'LCMBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ģ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_25_A02_CGSQXGJL', @level2type=N'COLUMN',@level2name=N'LCMBMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ǰ����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_25_A02_CGSQXGJL', @level2type=N'COLUMN',@level2name=N'DQBZID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ǰ��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_25_A02_CGSQXGJL', @level2type=N'COLUMN',@level2name=N'DQBZMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ǰ�������״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_25_A02_CGSQXGJL', @level2type=N'COLUMN',@level2name=N'DQBZSHZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����˲���ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_25_A02_CGSQXGJL', @level2type=N'COLUMN',@level2name=N'SQRBMID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ʵ�������ݱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_26_A01_SYSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_26_A01_SYSSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_26_A01_SYSSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_26_A01_SYSSJ', @level2type=N'COLUMN',@level2name=N'MC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ص�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_26_A01_SYSSJ', @level2type=N'COLUMN',@level2name=N'DD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_26_A01_SYSSJ', @level2type=N'COLUMN',@level2name=N'FZR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ʵ�������ı�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_26_A02_SYSQC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_26_A02_SYSQC', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_26_A02_SYSQC', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_26_A02_SYSQC', @level2type=N'COLUMN',@level2name=N'QCMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ʵ���������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_26_A03_SYSSQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_26_A03_SYSSQ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_26_A03_SYSSQ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ʵ����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_26_A03_SYSSQ', @level2type=N'COLUMN',@level2name=N'SYSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʵ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_26_A03_SYSSQ', @level2type=N'COLUMN',@level2name=N'LCSLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ʵ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_26_A03_SYSSQ', @level2type=N'COLUMN',@level2name=N'SYQC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ʵ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_26_A03_SYSSQ', @level2type=N'COLUMN',@level2name=N'SYMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ŀ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_26_A03_SYSSQ', @level2type=N'COLUMN',@level2name=N'KM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�༶' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_26_A03_SYSSQ', @level2type=N'COLUMN',@level2name=N'BJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʼʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_26_A03_SYSSQ', @level2type=N'COLUMN',@level2name=N'KSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_26_A03_SYSSQ', @level2type=N'COLUMN',@level2name=N'JSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_26_A03_SYSSQ', @level2type=N'COLUMN',@level2name=N'SQSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_26_A03_SYSSQ', @level2type=N'COLUMN',@level2name=N'SQZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_26_A03_SYSSQ', @level2type=N'COLUMN',@level2name=N'SQRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_26_A03_SYSSQ', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ʵ���������޸ļ�¼��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_26_A04_SYSSQXGJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_26_A04_SYSSQXGJL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_26_A04_SYSSQXGJL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ʵ���������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_26_A04_SYSSQXGJL', @level2type=N'COLUMN',@level2name=N'SQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�޸��û�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_26_A04_SYSSQXGJL', @level2type=N'COLUMN',@level2name=N'XGYHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�޸��û�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_26_A04_SYSSQXGJL', @level2type=N'COLUMN',@level2name=N'XGYHXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�޸�ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_26_A04_SYSSQXGJL', @level2type=N'COLUMN',@level2name=N'XGSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���¼Ǳ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_30_A01_DSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_30_A01_DSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_30_A01_DSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_30_A01_DSJ', @level2type=N'COLUMN',@level2name=N'BT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_30_A01_DSJ', @level2type=N'COLUMN',@level2name=N'NR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ͨѶ¼��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_31_A01_GRTXL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_31_A01_GRTXL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_31_A01_GRTXL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_31_A01_GRTXL', @level2type=N'COLUMN',@level2name=N'GRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ϵ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_31_A01_GRTXL', @level2type=N'COLUMN',@level2name=N'LXRXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ϵ�˵绰' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_31_A01_GRTXL', @level2type=N'COLUMN',@level2name=N'LXRDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����ʾ����ݱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_32_A01_DCWJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_32_A01_DCWJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_32_A01_DCWJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ʾ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_32_A01_DCWJ', @level2type=N'COLUMN',@level2name=N'Title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ѡ��Ա' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_32_A01_DCWJ', @level2type=N'COLUMN',@level2name=N'Users'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʼʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_32_A01_DCWJ', @level2type=N'COLUMN',@level2name=N'StartTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_32_A01_DCWJ', @level2type=N'COLUMN',@level2name=N'EndTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_32_A01_DCWJ', @level2type=N'COLUMN',@level2name=N'IsStart'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_32_A01_DCWJ', @level2type=N'COLUMN',@level2name=N'JJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����ʾ���Ŀ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_32_A02_DCWJTM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_32_A02_DCWJTM', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_32_A02_DCWJTM', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����ʾ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_32_A02_DCWJTM', @level2type=N'COLUMN',@level2name=N'WJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ŀ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_32_A02_DCWJTM', @level2type=N'COLUMN',@level2name=N'TypeID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ŀ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_32_A02_DCWJTM', @level2type=N'COLUMN',@level2name=N'Title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_32_A02_DCWJTM', @level2type=N'COLUMN',@level2name=N'SSDL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ʾ���Ŀѡ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_32_A03_DCWJTMXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_32_A03_DCWJTMXX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_32_A03_DCWJTMXX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������Ŀ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_32_A03_DCWJTMXX', @level2type=N'COLUMN',@level2name=N'TMID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����ʾ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_32_A03_DCWJTMXX', @level2type=N'COLUMN',@level2name=N'WJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѡ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_32_A03_DCWJTMXX', @level2type=N'COLUMN',@level2name=N'SelectItem'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѡ���ֵ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_32_A03_DCWJTMXX', @level2type=N'COLUMN',@level2name=N'XXFZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ʾ�����¼��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_32_A04_DCWJJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_32_A04_DCWJJL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_32_A04_DCWJJL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�û�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_32_A04_DCWJJL', @level2type=N'COLUMN',@level2name=N'YHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����ʾ�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_32_A04_DCWJJL', @level2type=N'COLUMN',@level2name=N'WJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ĿID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_32_A04_DCWJJL', @level2type=N'COLUMN',@level2name=N'TMID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѡ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_32_A04_DCWJJL', @level2type=N'COLUMN',@level2name=N'XXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѡ���ֵ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_32_A04_DCWJJL', @level2type=N'COLUMN',@level2name=N'XXFZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ύ״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_32_A04_DCWJJL', @level2type=N'COLUMN',@level2name=N'TJZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���Ļ�����Ϣ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A01_GWJCXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A01_GWJCXX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A01_GWJCXX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ͷ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A01_GWJCXX', @level2type=N'COLUMN',@level2name=N'HTWZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ı���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A01_GWJCXX', @level2type=N'COLUMN',@level2name=N'GWBT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A01_GWJCXX', @level2type=N'COLUMN',@level2name=N'SJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A01_GWJCXX', @level2type=N'COLUMN',@level2name=N'ZW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A01_GWJCXX', @level2type=N'COLUMN',@level2name=N'BH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������Ϣ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A02_GZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A02_GZ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A02_GZ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ǩ��ͼƬ·��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A02_GZ', @level2type=N'COLUMN',@level2name=N'QZTPLJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ı�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A03_FW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A03_FW', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A03_FW', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A03_FW', @level2type=N'COLUMN',@level2name=N'GWID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A03_FW', @level2type=N'COLUMN',@level2name=N'FZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A03_FW', @level2type=N'COLUMN',@level2name=N'SHRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����֪ͨ״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A03_FW', @level2type=N'COLUMN',@level2name=N'DXTZZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A03_FW', @level2type=N'COLUMN',@level2name=N'SHPZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A03_FW', @level2type=N'COLUMN',@level2name=N'GZID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ҫ�̶�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A03_FW', @level2type=N'COLUMN',@level2name=N'ZYCD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ���Ҫ�ظ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A03_FW', @level2type=N'COLUMN',@level2name=N'SFHF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���͵�λ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A03_FW', @level2type=N'COLUMN',@level2name=N'FSDW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A03_FW', @level2type=N'COLUMN',@level2name=N'FSZLY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A03_FW', @level2type=N'COLUMN',@level2name=N'FSRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A03_FW', @level2type=N'COLUMN',@level2name=N'BSZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A03_FW', @level2type=N'COLUMN',@level2name=N'SHZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A03_FW', @level2type=N'COLUMN',@level2name=N'FSZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A03_FW', @level2type=N'COLUMN',@level2name=N'BJZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ı�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A04_SW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A04_SW', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A04_SW', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A04_SW', @level2type=N'COLUMN',@level2name=N'GWID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�·���ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A04_SW', @level2type=N'COLUMN',@level2name=N'XFRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A04_SW', @level2type=N'COLUMN',@level2name=N'JSRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�·�ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A04_SW', @level2type=N'COLUMN',@level2name=N'XFSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ǩ��״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A04_SW', @level2type=N'COLUMN',@level2name=N'QSZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����֪ͨ״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A04_SW', @level2type=N'COLUMN',@level2name=N'DXTZZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ظ�״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A04_SW', @level2type=N'COLUMN',@level2name=N'HFZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ظ���Ϣ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A04_SW', @level2type=N'COLUMN',@level2name=N'HFXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ظ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A04_SW', @level2type=N'COLUMN',@level2name=N'HFFJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A04_SW', @level2type=N'COLUMN',@level2name=N'CLZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ɾ��״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A04_SW', @level2type=N'COLUMN',@level2name=N'SCZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ͷ���ֱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A05_HTWZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A05_HTWZ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A05_HTWZ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ͷ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_33_A05_HTWZ', @level2type=N'COLUMN',@level2name=N'HTWZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ӡ���̼�¼' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_34_A01_WYLCJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_34_A01_WYLCJL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_34_A01_WYLCJL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ӡ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_34_A01_WYLCJL', @level2type=N'COLUMN',@level2name=N'WYBT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_34_A01_WYLCJL', @level2type=N'COLUMN',@level2name=N'NR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_34_A01_WYLCJL', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_34_A01_WYLCJL', @level2type=N'COLUMN',@level2name=N'SQRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_34_A01_WYLCJL', @level2type=N'COLUMN',@level2name=N'SQSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_34_A01_WYLCJL', @level2type=N'COLUMN',@level2name=N'SHZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_34_A01_WYLCJL', @level2type=N'COLUMN',@level2name=N'SHRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_34_A01_WYLCJL', @level2type=N'COLUMN',@level2name=N'SHSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��˱�ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_34_A01_WYLCJL', @level2type=N'COLUMN',@level2name=N'SHBZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����б��Ƿ���ʾ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_34_A01_WYLCJL', @level2type=N'COLUMN',@level2name=N'SHLBSFXS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ӡ״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_34_A01_WYLCJL', @level2type=N'COLUMN',@level2name=N'DYZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ӡʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_34_A01_WYLCJL', @level2type=N'COLUMN',@level2name=N'DYSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ӡ��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_34_A01_WYLCJL', @level2type=N'COLUMN',@level2name=N'DYBZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ӡ�б��Ƿ���ʾ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_34_A01_WYLCJL', @level2type=N'COLUMN',@level2name=N'DYLBSFXS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_35_A01_RW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_35_A01_RW', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_35_A01_RW', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_35_A01_RW', @level2type=N'COLUMN',@level2name=N'RWBT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����û�ID�б�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_35_A01_RW', @level2type=N'COLUMN',@level2name=N'JSYHIDLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����û������б�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_35_A01_RW', @level2type=N'COLUMN',@level2name=N'JSYHXMLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ֹ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_35_A01_RW', @level2type=N'COLUMN',@level2name=N'JZRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_35_A01_RW', @level2type=N'COLUMN',@level2name=N'NR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_35_A01_RW', @level2type=N'COLUMN',@level2name=N'FBRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_35_A01_RW', @level2type=N'COLUMN',@level2name=N'FBRXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_35_A01_RW', @level2type=N'COLUMN',@level2name=N'FBBMMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_35_A01_RW', @level2type=N'COLUMN',@level2name=N'FBSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_35_A01_RW', @level2type=N'COLUMN',@level2name=N'RWZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������˱�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_35_A02_RWJSR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_35_A02_RWJSR', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_35_A02_RWJSR', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_35_A02_RWJSR', @level2type=N'COLUMN',@level2name=N'RWID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_35_A02_RWJSR', @level2type=N'COLUMN',@level2name=N'JSRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ķ�״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_35_A02_RWJSR', @level2type=N'COLUMN',@level2name=N'YDZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_35_A02_RWJSR', @level2type=N'COLUMN',@level2name=N'WCZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ɾ��״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_35_A02_RWJSR', @level2type=N'COLUMN',@level2name=N'SCZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ύ״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_35_A02_RWJSR', @level2type=N'COLUMN',@level2name=N'TJZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_35_A02_RWJSR', @level2type=N'COLUMN',@level2name=N'FJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_35_A02_RWJSR', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ظ���¼��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_35_A03_HFJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_35_A03_HFJL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_35_A03_HFJL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_35_A03_HFJL', @level2type=N'COLUMN',@level2name=N'RWID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ظ���ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_35_A03_HFJL', @level2type=N'COLUMN',@level2name=N'HFRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ظ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_35_A03_HFJL', @level2type=N'COLUMN',@level2name=N'HFNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ظ�ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_35_A03_HFJL', @level2type=N'COLUMN',@level2name=N'HSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�༶��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_36_A01_BJGZLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_36_A01_BJGZLB', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_36_A01_BJGZLB', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_36_A01_BJGZLB', @level2type=N'COLUMN',@level2name=N'GZLBMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ǽ���ԱID�б�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_36_A01_BJGZLB', @level2type=N'COLUMN',@level2name=N'DJRYIDLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ǽ���Ա�����б�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_36_A01_BJGZLB', @level2type=N'COLUMN',@level2name=N'DJRYXMLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�༶��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_36_A02_BJGZJC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_36_A02_BJGZJC', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_36_A02_BJGZJC', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_36_A02_BJGZJC', @level2type=N'COLUMN',@level2name=N'GZLBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�༶' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_36_A02_BJGZJC', @level2type=N'COLUMN',@level2name=N'BJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_36_A02_BJGZJC', @level2type=N'COLUMN',@level2name=N'RQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_36_A02_BJGZJC', @level2type=N'COLUMN',@level2name=N'JG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�༶����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_36_A02_BJGZJC', @level2type=N'COLUMN',@level2name=N'BJMC'
GO
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

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZDGL_22_FHR')
            and   type = 'U')
   drop table EDU_ZDGL_22_FHR
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZDGL_23_QRR')
            and   type = 'U')
   drop table EDU_ZDGL_23_QRR
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
	[XTLX]  int  NOT NULL,--ϵͳ����
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
	[XTLX]  int  NOT NULL,--ϵͳ����
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
	[FHRID]  int  NOT NULL,--������ID
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
	[SFQR]  nvarchar(1)  NOT NULL,--�Ƿ�ȷ��
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
	[SXDWID]  int  NOT NULL,--���޵�λID
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

--�����˱�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZDGL_22_FHR]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZDGL_22_FHR](
	[ID]  int  NOT NULL,--���
	[GH]  nvarchar(200)  NOT NULL,--����
	[XM]  nvarchar(200)  NOT NULL,--����
	[LXDH]  nvarchar(200)  NOT NULL,--��ϵ�绰
CONSTRAINT [PK_EDU_ZDGL_22_FHR] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ȷ���˱�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZDGL_23_QRR]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZDGL_23_QRR](
	[ID]  int  NOT NULL,--���
	[GSMC]  nvarchar(200)  NOT NULL,--��˾����
	[XM]  nvarchar(200)  NOT NULL,--����
	[LXDH]  nvarchar(200)  NOT NULL,--��ϵ�绰
CONSTRAINT [PK_EDU_ZDGL_23_QRR] PRIMARY KEY CLUSTERED
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
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ϵͳ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_05_SBXH', @level2type=N'COLUMN',@level2name=N'XTLX'
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
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ϵͳ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_08_KH', @level2type=N'COLUMN',@level2name=N'XTLX'
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
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_13_FHPC', @level2type=N'COLUMN',@level2name=N'FHRID'
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
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ�ȷ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_16_JSD', @level2type=N'COLUMN',@level2name=N'SFQR'
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
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���޵�λID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_18_JFD', @level2type=N'COLUMN',@level2name=N'SXDWID'
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
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����˱�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_22_FHR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_22_FHR', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_22_FHR', @level2type=N'COLUMN',@level2name=N'GH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_22_FHR', @level2type=N'COLUMN',@level2name=N'XM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ϵ�绰' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_22_FHR', @level2type=N'COLUMN',@level2name=N'LXDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ȷ���˱�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_23_QRR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_23_QRR', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��˾����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_23_QRR', @level2type=N'COLUMN',@level2name=N'GSMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_23_QRR', @level2type=N'COLUMN',@level2name=N'XM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ϵ�绰' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZDGL_23_QRR', @level2type=N'COLUMN',@level2name=N'LXDH'
GO
