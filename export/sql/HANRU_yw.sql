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

if exists (select 1 from  sysobjects where  id = object_id('EDU_ELE_02_YHFZ')
            and   type = 'U')
   drop table EDU_ELE_02_YHFZ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ELE_03_APPRZ')
            and   type = 'U')
   drop table EDU_ELE_03_APPRZ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ELE_03_APPLL')
            and   type = 'U')
   drop table EDU_ELE_03_APPLL
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

--�û������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ELE_02_YHFZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ELE_02_YHFZ](
	[ID]  int  NOT NULL,--����ID
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[APPID]  int  NOT NULL,--Ӧ��ID
	[YHID]  nvarchar(20)  NOT NULL,--�û�ID
	[SJFZID]  int  NOT NULL,--�ϼ�����ID
	[FZMC]  nvarchar(100)  NOT NULL,--��������
	[FZYHID]  text  NOT NULL,--�����û�ID�б�
CONSTRAINT [PK_EDU_ELE_02_YHFZ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC,
	[APPID] ASC
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
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�û������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_02_YHFZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_02_YHFZ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_02_YHFZ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ӧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_02_YHFZ', @level2type=N'COLUMN',@level2name=N'APPID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�û�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_02_YHFZ', @level2type=N'COLUMN',@level2name=N'YHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ϼ�����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_02_YHFZ', @level2type=N'COLUMN',@level2name=N'SJFZID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_02_YHFZ', @level2type=N'COLUMN',@level2name=N'FZMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����û�ID�б�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_02_YHFZ', @level2type=N'COLUMN',@level2name=N'FZYHID'
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
	[XHQK]  decimal(8, 2)  NOT NULL,--���Ľ��
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
	[SSJLYID]  int  NOT NULL,--��������ԱID
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
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���Ľ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_06_JLCCLXH', @level2type=N'COLUMN',@level2name=N'XHQK'
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
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������ԱID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_03_01_XYSJ', @level2type=N'COLUMN',@level2name=N'SSJLYID'
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

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_30_A01_DSJ')
            and   type = 'U')
   drop table EDU_OAXT_30_A01_DSJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_OAXT_31_A01_GRTXL')
            and   type = 'U')
   drop table EDU_OAXT_31_A01_GRTXL
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
	[Name]  nvarchar(100)  NOT NULL,--�ʲ�Ŀ¼����
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
	[Name]  nvarchar(100)  NOT NULL,--�ʲ���������
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
	[Name]  nvarchar(200)  NOT NULL,--�ʲ�����
	[Info]  nvarchar(200)  NOT NULL,--�ʲ����
	[Productdate]  datetime  NOT NULL,--����ʱ��
	[Price]  decimal(10, 2)  NOT NULL,--����
	[SumCount]  decimal(8, 2)  NOT NULL,--����
	[Merchant]  nvarchar(200)  NOT NULL,--��Ӧ��
	[Vender]  nvarchar(200)  NOT NULL,--����
	[Registdate]  datetime  NOT NULL,--�Ǽ�ʱ��
	[Remark]  nvarchar(100)  NOT NULL,--��ע
	[Status]  int  NOT NULL,--���״̬
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
	[Applicant]  nvarchar(50)  NOT NULL,--������
	[Approver]  nvarchar(50)  NULL,--������
	[Evaluate]  nvarchar(200)  NOT NULL,--����
	[StartDate]  datetime  NOT NULL,--��ʼʱ��
	[Status]  int  NOT NULL,--״̬
	[Remark]  nvarchar(300)  NOT NULL,--��ע
	[SumCount]  decimal(8, 2)  NOT NULL,--����
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
CONSTRAINT [PK_EDU_OAXT_15_A12_ZCPDMX] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
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

--������ͱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_OAXT_21_A01_QJLX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_OAXT_21_A01_QJLX](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[LXMC]  nvarchar(50)  NOT NULL,--��������
	[BZ]  text  NOT NULL,--��ע
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
	[QJTS]  decimal(5, 2)  NOT NULL,--�������
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
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ʲ�Ŀ¼����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A01_ZCML', @level2type=N'COLUMN',@level2name=N'Name'
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
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ʲ���������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A02_ZCDL', @level2type=N'COLUMN',@level2name=N'Name'
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
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ʲ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_OAXT_15_A04_ZCRK', @level2type=N'COLUMN',@level2name=N'Name'
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
--�ռ�����EDU_WZXT  ��������SqlBuilder0.1

if exists (select 1 from  sysobjects where  id = object_id('EDU_WZXT_VIP')
            and   type = 'U')
   drop table EDU_WZXT_VIP
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_WZXT_TPXT_TPYS')
            and   type = 'U')
   drop table EDU_WZXT_TPXT_TPYS
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_WZXT_TPXT_TPXX')
            and   type = 'U')
   drop table EDU_WZXT_TPXT_TPXX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_WZXT_TPXT_TPTM')
            and   type = 'U')
   drop table EDU_WZXT_TPXT_TPTM
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_WZXT_TPXT_TPSZ')
            and   type = 'U')
   drop table EDU_WZXT_TPXT_TPSZ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_WZXT_TPXT_TPJL')
            and   type = 'U')
   drop table EDU_WZXT_TPXT_TPJL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_WZXT_MHXT_YQLJLX')
            and   type = 'U')
   drop table EDU_WZXT_MHXT_YQLJLX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_WZXT_MHXT_YQLJ')
            and   type = 'U')
   drop table EDU_WZXT_MHXT_YQLJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_WZXT_MHXT_WZYS')
            and   type = 'U')
   drop table EDU_WZXT_MHXT_WZYS
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_WZXT_MHXT_WZWZ')
            and   type = 'U')
   drop table EDU_WZXT_MHXT_WZWZ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_WZXT_MHXT_WZPJ')
            and   type = 'U')
   drop table EDU_WZXT_MHXT_WZPJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_WZXT_MHXT_WZPZ')
            and   type = 'U')
   drop table EDU_WZXT_MHXT_WZPZ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_WZXT_MHXT_NWIP')
            and   type = 'U')
   drop table EDU_WZXT_MHXT_NWIP
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_WZXT_MHXT_WZLM')
            and   type = 'U')
   drop table EDU_WZXT_MHXT_WZLM
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_WZXT_MHXT_WZGG')
            and   type = 'U')
   drop table EDU_WZXT_MHXT_WZGG
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_WZXT_MHXT_FWLL')
            and   type = 'U')
   drop table EDU_WZXT_MHXT_FWLL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_WZXT_MHXT_FBQX')
            and   type = 'U')
   drop table EDU_WZXT_MHXT_FBQX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_WZXT_MHXT_FBJS')
            and   type = 'U')
   drop table EDU_WZXT_MHXT_FBJS
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_WZXT_MHXT_YHFBQX')
            and   type = 'U')
   drop table EDU_WZXT_MHXT_YHFBQX
go
--��վ��Ա
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_WZXT_VIP]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_WZXT_VIP](
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[WEBID]  int  NOT NULL,--��վID
	[LOGINNAME]  nvarchar(50)  NOT NULL,--�û���
	[LOGINPWD]  nvarchar(64)  NOT NULL,--����
	[REALNAME]  nvarchar(50)  NOT NULL,--����
	[EMAIL]  nvarchar(50)  NOT NULL,--��������
	[MOBILE]  nvarchar(20)  NOT NULL,--��ϵ�绰
	[QQ]  nvarchar(20)  NULL,--QQ����
	[AUDITSTATU]  int  NOT NULL,--���״̬
	[AUDITOR]  nvarchar(50)  NULL,--�����ID
	[AUDITORNAME]  nvarchar(50)  NULL,--�����
CONSTRAINT [PK_EDU_WZXT_VIP] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[WEBID] ASC,
	[LOGINNAME] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ͶƱ��ʽ��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_WZXT_TPXT_TPYS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_WZXT_TPXT_TPYS](
	[ID]  int  NOT NULL,--��ʽID
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[WEBID]  int  NOT NULL,--��վID
	[NAME]  nvarchar(50)  NOT NULL,--��ʽ��
	[SHOWIMG]  nvarchar(500)  NULL,--Ч��ͼ
CONSTRAINT [PK_EDU_WZXT_TPXT_TPYS] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC,
	[WEBID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ͶƱ��Ŀѡ��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_WZXT_TPXT_TPXX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_WZXT_TPXT_TPXX](
	[ID]  int  NOT NULL,--ͶƱ��Ŀѡ��ID
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[WEBID]  int  NOT NULL,--��վID
	[TPID]  int  NOT NULL,--ͶƱ
	[TMID]  int  NOT NULL,--ͶƱ��Ŀ
	[TITLE]  nvarchar(500)  NULL,--����
	[SUMTP]  int  NOT NULL,--��ѡ����
CONSTRAINT [PK_EDU_WZXT_TPXT_TPXX] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC,
	[WEBID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ͶƱ��Ŀ
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_WZXT_TPXT_TPTM]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_WZXT_TPXT_TPTM](
	[ID]  int  NOT NULL,--ͶƱ��ĿID
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[WEBID]  int  NOT NULL,--��վID
	[TPID]  int  NOT NULL,--ͶƱ
	[TYPEID]  int  NOT NULL,--ͶƱ��ʽ
	[TITLE]  nvarchar(500)  NULL,--����
	[CONTENT]  text  NULL,--����
CONSTRAINT [PK_EDU_WZXT_TPXT_TPTM] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC,
	[WEBID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ͶƱ����
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_WZXT_TPXT_TPSZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_WZXT_TPXT_TPSZ](
	[ID]  int  NOT NULL,--ͶƱ����ID
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[WEBID]  int  NOT NULL,--��վID
	[TITLE]  nvarchar(500)  NULL,--����
	[CONTENT]  text  NULL,--����
	[SHOWSTYLEID]  int  NULL,--��ʾ��ʽ
	[CSSID]  int  NOT NULL,--��ʾ��ʽ
	[LOGINNAMELIST]  text  NULL,--ͶƱ��
	[STARTSTATU]  int  NOT NULL,--�Ƿ���
CONSTRAINT [PK_EDU_WZXT_TPXT_TPSZ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC,
	[WEBID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ͶƱ��¼
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_WZXT_TPXT_TPJL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_WZXT_TPXT_TPJL](
	[ID]  int  NOT NULL,--ͶƱ��¼ID
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[WEBID]  int  NOT NULL,--��վID
	[TPID]  int  NOT NULL,--ͶƱ
	[TPIP]  nvarchar(128)  NOT NULL,--ͶƱ��
	[TPTIME]  datetime  NOT NULL,--ͶƱʱ��
CONSTRAINT [PK_EDU_WZXT_TPXT_TPJL] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC,
	[WEBID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--������������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_WZXT_MHXT_YQLJLX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_WZXT_MHXT_YQLJLX](
	[ID]  int  NOT NULL,--������������ID
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[WEBID]  int  NOT NULL,--��վID
	[NAME]  nvarchar(50)  NOT NULL,--������
	[SHOWSTYLE]  int  NOT NULL,--��ʾ��ʽ
CONSTRAINT [PK_EDU_WZXT_MHXT_YQLJLX] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC,
	[WEBID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--��������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_WZXT_MHXT_YQLJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_WZXT_MHXT_YQLJ](
	[ID]  int  NOT NULL,--��������ID
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[WEBID]  int  NOT NULL,--��վID
	[TITLE]  nvarchar(50)  NOT NULL,--����
	[TYPEID]  int  NOT NULL,--����
	[IMAGEURL]  nvarchar(500)  NULL,--ͼƬ
	[URL]  nvarchar(300)  NOT NULL,--����
CONSTRAINT [PK_EDU_WZXT_MHXT_YQLJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC,
	[WEBID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--��ʽ��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_WZXT_MHXT_WZYS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_WZXT_MHXT_WZYS](
	[ID]  int  NOT NULL,--��ʽ��ID
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[WEBID]  int  NOT NULL,--��վID
	[NAME]  nvarchar(50)  NOT NULL,--��ʽ��
	[SHOWIMG]  nvarchar(500)  NULL,--Ч��ͼ
CONSTRAINT [PK_EDU_WZXT_MHXT_WZYS] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC,
	[WEBID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--��վ����
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_WZXT_MHXT_WZWZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_WZXT_MHXT_WZWZ](
	[ID]  int  NOT NULL,--��վ����ID
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[WEBID]  int  NOT NULL,--��վID
	[TYPENAME]  nvarchar(20)  NULL,--��������
	[LMID]  int  NOT NULL,--��Ŀ
	[TITLE]  nvarchar(100)  NOT NULL,--����
	[PUBLISHERNAME]  nvarchar(50)  NOT NULL,--������
	[AUTHOR]  nvarchar(50)  NOT NULL,--����
	[AUTHORDEPART]  nvarchar(50)  NULL,--���߲���
	[PUBLISHDATE]  datetime  NOT NULL,--����ʱ��
	[CONTENT]  text  NULL,--����
	[URL]  nvarchar(300)  NULL,--����
	[IMAGEURL]  nvarchar(300)  NULL,--ͼƬ
	[ATTACHMENTNAME]  nvarchar(100)  NULL,--������
	[ATTACHMENT]  nvarchar(300)  NULL,--����
	[CHICKNUB]  int  NULL,--�����
	[AUDITSTATU]  int  NOT NULL,--���״̬
	[AUDITOR]  nvarchar(50)  NULL,--�����ID
	[AUDITORNAME]  nvarchar(50)  NULL,--�����
	[AUDITTIME]  datetime  NOT NULL,--���ʱ��
	[REMARK]  nvarchar(300)  NULL,--��ע
	[SUMMARY]  text  NULL,--ժҪ
	[DISPLAYTYPE]  int  NOT NULL,--������
	[OPENFLAG]  int  NOT NULL,--����״̬
	[LLQX]  nvarchar(50)  NULL,--���Ȩ��
CONSTRAINT [PK_EDU_WZXT_MHXT_WZWZ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC,
	[WEBID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�������۱�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_WZXT_MHXT_WZPJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_WZXT_MHXT_WZPJ](
	[ID]  int  NOT NULL,--����ID
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[WEBID]  int  NOT NULL,--��վID
	[WZID]  int  NOT NULL,--��վ����ID
	[PJR]  nvarchar(50)  NOT NULL,--������
	[YJDZ]  nvarchar(40)  NOT NULL,--�ʼ���ַ
	[PJSJ]  datetime  NOT NULL,--����ʱ��
	[PJNR]  text  NOT NULL,--��������
	[PJZT]  int  NOT NULL,--����״̬
	[SHR]  nvarchar(50)  NULL,--�����
	[HF]  text  NOT NULL,--�ظ�
CONSTRAINT [PK_EDU_WZXT_MHXT_WZPJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--��վ����
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_WZXT_MHXT_WZPZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_WZXT_MHXT_WZPZ](
	[WEBID]  int  NOT NULL,--��վID
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[WEBNAME]  nvarchar(500)  NOT NULL,--��վ��
	[STATUID]  int  NOT NULL,--�Ƿ���
	[WEBURL]  nvarchar(500)  NOT NULL,--��ַ
	[CSSID]  int  NOT NULL,--��վ��ʽ
	[URL]  nvarchar(500)  NOT NULL,--������ַ
CONSTRAINT [PK_EDU_WZXT_MHXT_WZPZ] PRIMARY KEY CLUSTERED
(
	[WEBID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--����IP����
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_WZXT_MHXT_NWIP]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_WZXT_MHXT_NWIP](
	[ID]  int  NOT NULL,--����IP����ID
	[WEBID]  int  NOT NULL,--��վID
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[IP]  nvarchar(40)  NOT NULL,--IP��ַ
CONSTRAINT [PK_EDU_WZXT_MHXT_NWIP] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[WEBID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--��վ��Ŀ��������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_WZXT_MHXT_WZLM]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_WZXT_MHXT_WZLM](
	[ID]  int  NOT NULL,--��վ��Ŀ��������ID
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[WEBID]  int  NOT NULL,--��վID
	[LMSHOWSTYLE]  int  NOT NULL,--��Ŀʹ������
	[NAME]  nvarchar(50)  NOT NULL,--��Ŀ����
	[URL]  nvarchar(300)  NULL,--��Ŀ����
	[IMAGEURL]  nvarchar(300)  NULL,--ͼƬ����
	[DEPTH]  int  NOT NULL,--�㼶
	[PID]  int  NOT NULL,--��Ŀ¼
	[LISTSHOWSTYLE]  int  NULL,--�б���ʾ��ʽ
	[ORDERTYPE]  int  NOT NULL,--����ʽ
	[SHOWNUMBER]  int  NOT NULL,--��ʾ����
	[OPENFLAG]  int  NOT NULL,--����״̬
	[LLQX]  nvarchar(50)  NULL,--���Ȩ��
	[PLSX]  int  NOT NULL,--����˳��
CONSTRAINT [PK_EDU_WZXT_MHXT_WZLM] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC,
	[WEBID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--��վ���
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_WZXT_MHXT_WZGG]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_WZXT_MHXT_WZGG](
	[ID]  int  NOT NULL,--��վ���ID
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[WEBID]  int  NOT NULL,--��վID
	[SHOWTYPE]  int  NOT NULL,--��ʾ��ʽ
	[ADCONTENT]  text  NULL,--�������
	[GGLJ]  nvarchar(150)  NULL,--�������
	[SHOWSTATU]  int  NOT NULL,--�Ƿ���ʾ
CONSTRAINT [PK_EDU_WZXT_MHXT_WZGG] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC,
	[WEBID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--��������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_WZXT_MHXT_FWLL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_WZXT_MHXT_FWLL](
	[ID]  int  NOT NULL,--��������ID
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[WEBID]  int  NOT NULL,--��վID
	[ACCESSIP]  nvarchar(150)  NOT NULL,--����IP
	[ACCESSURL]  nvarchar(500)  NOT NULL,--��������
	[ACCESSTIME]  datetime  NOT NULL,--����ʱ��
CONSTRAINT [PK_EDU_WZXT_MHXT_FWLL] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC,
	[WEBID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--����Ȩ��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_WZXT_MHXT_FBQX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_WZXT_MHXT_FBQX](
	[ID]  int  NOT NULL,--����Ȩ��ID
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[WEBID]  int  NOT NULL,--��վID
	[LOGINNAME]  nvarchar(50)  NOT NULL,--�û���
	[LMLIST]  text  NOT NULL,--��Ŀ
	[LMNAMELIST]  text  NULL,--��Ŀ����
CONSTRAINT [PK_EDU_WZXT_MHXT_FBQX] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC,
	[WEBID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--������ɫ��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_WZXT_MHXT_FBJS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_WZXT_MHXT_FBJS](
	[ID]  int  NOT NULL,--����Ȩ��ID
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[WEBID]  int  NOT NULL,--��վID
	[JSMC]  nvarchar(50)  NOT NULL,--��ɫ����
	[LMIDLB]  text  NOT NULL,--��ĿID�б�
	[LMMCLB]  text  NULL,--��Ŀ�����б�
CONSTRAINT [PK_EDU_WZXT_MHXT_FBJS] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC,
	[WEBID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�û�����Ȩ�ޱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_WZXT_MHXT_YHFBQX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_WZXT_MHXT_YHFBQX](
	[ID]  int  NOT NULL,--����Ȩ��ID
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[WEBID]  int  NOT NULL,--��վID
	[LOGINNAME]  nvarchar(20)  NOT NULL,--�û���
	[JSIDLB]  text  NOT NULL,--��ɫID�б�
	[SFXYSH]  nvarchar(1)  NULL,--�Ƿ���Ҫ���
CONSTRAINT [PK_EDU_WZXT_MHXT_YHFBQX] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC,
	[WEBID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--����Ϊ���ע�����
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��վ��Ա' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_VIP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_VIP', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��վID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_VIP', @level2type=N'COLUMN',@level2name=N'WEBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�û���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_VIP', @level2type=N'COLUMN',@level2name=N'LOGINNAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_VIP', @level2type=N'COLUMN',@level2name=N'LOGINPWD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_VIP', @level2type=N'COLUMN',@level2name=N'REALNAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_VIP', @level2type=N'COLUMN',@level2name=N'EMAIL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ϵ�绰' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_VIP', @level2type=N'COLUMN',@level2name=N'MOBILE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'QQ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_VIP', @level2type=N'COLUMN',@level2name=N'QQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_VIP', @level2type=N'COLUMN',@level2name=N'AUDITSTATU'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_VIP', @level2type=N'COLUMN',@level2name=N'AUDITOR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_VIP', @level2type=N'COLUMN',@level2name=N'AUDITORNAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ͶƱ��ʽ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_TPXT_TPYS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʽID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_TPXT_TPYS', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_TPXT_TPYS', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��վID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_TPXT_TPYS', @level2type=N'COLUMN',@level2name=N'WEBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʽ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_TPXT_TPYS', @level2type=N'COLUMN',@level2name=N'NAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ч��ͼ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_TPXT_TPYS', @level2type=N'COLUMN',@level2name=N'SHOWIMG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ͶƱ��Ŀѡ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_TPXT_TPXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ͶƱ��Ŀѡ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_TPXT_TPXX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_TPXT_TPXX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��վID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_TPXT_TPXX', @level2type=N'COLUMN',@level2name=N'WEBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ͶƱ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_TPXT_TPXX', @level2type=N'COLUMN',@level2name=N'TPID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ͶƱ��Ŀ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_TPXT_TPXX', @level2type=N'COLUMN',@level2name=N'TMID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_TPXT_TPXX', @level2type=N'COLUMN',@level2name=N'TITLE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ѡ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_TPXT_TPXX', @level2type=N'COLUMN',@level2name=N'SUMTP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ͶƱ��Ŀ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_TPXT_TPTM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ͶƱ��ĿID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_TPXT_TPTM', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_TPXT_TPTM', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��վID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_TPXT_TPTM', @level2type=N'COLUMN',@level2name=N'WEBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ͶƱ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_TPXT_TPTM', @level2type=N'COLUMN',@level2name=N'TPID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ͶƱ��ʽ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_TPXT_TPTM', @level2type=N'COLUMN',@level2name=N'TYPEID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_TPXT_TPTM', @level2type=N'COLUMN',@level2name=N'TITLE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_TPXT_TPTM', @level2type=N'COLUMN',@level2name=N'CONTENT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ͶƱ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_TPXT_TPSZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ͶƱ����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_TPXT_TPSZ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_TPXT_TPSZ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��վID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_TPXT_TPSZ', @level2type=N'COLUMN',@level2name=N'WEBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_TPXT_TPSZ', @level2type=N'COLUMN',@level2name=N'TITLE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_TPXT_TPSZ', @level2type=N'COLUMN',@level2name=N'CONTENT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʾ��ʽ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_TPXT_TPSZ', @level2type=N'COLUMN',@level2name=N'SHOWSTYLEID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʾ��ʽ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_TPXT_TPSZ', @level2type=N'COLUMN',@level2name=N'CSSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ͶƱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_TPXT_TPSZ', @level2type=N'COLUMN',@level2name=N'LOGINNAMELIST'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_TPXT_TPSZ', @level2type=N'COLUMN',@level2name=N'STARTSTATU'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ͶƱ��¼' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_TPXT_TPJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ͶƱ��¼ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_TPXT_TPJL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_TPXT_TPJL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��վID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_TPXT_TPJL', @level2type=N'COLUMN',@level2name=N'WEBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ͶƱ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_TPXT_TPJL', @level2type=N'COLUMN',@level2name=N'TPID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ͶƱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_TPXT_TPJL', @level2type=N'COLUMN',@level2name=N'TPIP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ͶƱʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_TPXT_TPJL', @level2type=N'COLUMN',@level2name=N'TPTIME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_YQLJLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_YQLJLX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_YQLJLX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��վID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_YQLJLX', @level2type=N'COLUMN',@level2name=N'WEBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_YQLJLX', @level2type=N'COLUMN',@level2name=N'NAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʾ��ʽ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_YQLJLX', @level2type=N'COLUMN',@level2name=N'SHOWSTYLE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_YQLJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_YQLJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_YQLJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��վID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_YQLJ', @level2type=N'COLUMN',@level2name=N'WEBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_YQLJ', @level2type=N'COLUMN',@level2name=N'TITLE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_YQLJ', @level2type=N'COLUMN',@level2name=N'TYPEID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ͼƬ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_YQLJ', @level2type=N'COLUMN',@level2name=N'IMAGEURL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_YQLJ', @level2type=N'COLUMN',@level2name=N'URL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʽ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZYS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʽ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZYS', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZYS', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��վID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZYS', @level2type=N'COLUMN',@level2name=N'WEBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʽ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZYS', @level2type=N'COLUMN',@level2name=N'NAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ч��ͼ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZYS', @level2type=N'COLUMN',@level2name=N'SHOWIMG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��վ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZWZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��վ����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZWZ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZWZ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��վID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZWZ', @level2type=N'COLUMN',@level2name=N'WEBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZWZ', @level2type=N'COLUMN',@level2name=N'TYPENAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ŀ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZWZ', @level2type=N'COLUMN',@level2name=N'LMID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZWZ', @level2type=N'COLUMN',@level2name=N'TITLE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZWZ', @level2type=N'COLUMN',@level2name=N'PUBLISHERNAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZWZ', @level2type=N'COLUMN',@level2name=N'AUTHOR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���߲���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZWZ', @level2type=N'COLUMN',@level2name=N'AUTHORDEPART'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZWZ', @level2type=N'COLUMN',@level2name=N'PUBLISHDATE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZWZ', @level2type=N'COLUMN',@level2name=N'CONTENT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZWZ', @level2type=N'COLUMN',@level2name=N'URL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ͼƬ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZWZ', @level2type=N'COLUMN',@level2name=N'IMAGEURL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZWZ', @level2type=N'COLUMN',@level2name=N'ATTACHMENTNAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZWZ', @level2type=N'COLUMN',@level2name=N'ATTACHMENT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZWZ', @level2type=N'COLUMN',@level2name=N'CHICKNUB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZWZ', @level2type=N'COLUMN',@level2name=N'AUDITSTATU'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZWZ', @level2type=N'COLUMN',@level2name=N'AUDITOR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZWZ', @level2type=N'COLUMN',@level2name=N'AUDITORNAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZWZ', @level2type=N'COLUMN',@level2name=N'AUDITTIME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZWZ', @level2type=N'COLUMN',@level2name=N'REMARK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ժҪ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZWZ', @level2type=N'COLUMN',@level2name=N'SUMMARY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZWZ', @level2type=N'COLUMN',@level2name=N'DISPLAYTYPE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZWZ', @level2type=N'COLUMN',@level2name=N'OPENFLAG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���Ȩ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZWZ', @level2type=N'COLUMN',@level2name=N'LLQX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������۱�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZPJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZPJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZPJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��վID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZPJ', @level2type=N'COLUMN',@level2name=N'WEBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��վ����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZPJ', @level2type=N'COLUMN',@level2name=N'WZID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZPJ', @level2type=N'COLUMN',@level2name=N'PJR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ʼ���ַ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZPJ', @level2type=N'COLUMN',@level2name=N'YJDZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZPJ', @level2type=N'COLUMN',@level2name=N'PJSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZPJ', @level2type=N'COLUMN',@level2name=N'PJNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZPJ', @level2type=N'COLUMN',@level2name=N'PJZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZPJ', @level2type=N'COLUMN',@level2name=N'SHR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ظ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZPJ', @level2type=N'COLUMN',@level2name=N'HF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��վ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZPZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��վID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZPZ', @level2type=N'COLUMN',@level2name=N'WEBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZPZ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��վ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZPZ', @level2type=N'COLUMN',@level2name=N'WEBNAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZPZ', @level2type=N'COLUMN',@level2name=N'STATUID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ַ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZPZ', @level2type=N'COLUMN',@level2name=N'WEBURL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��վ��ʽ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZPZ', @level2type=N'COLUMN',@level2name=N'CSSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ַ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZPZ', @level2type=N'COLUMN',@level2name=N'URL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����IP����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_NWIP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����IP����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_NWIP', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��վID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_NWIP', @level2type=N'COLUMN',@level2name=N'WEBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_NWIP', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'IP��ַ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_NWIP', @level2type=N'COLUMN',@level2name=N'IP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��վ��Ŀ��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZLM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��վ��Ŀ��������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZLM', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZLM', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��վID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZLM', @level2type=N'COLUMN',@level2name=N'WEBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ŀʹ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZLM', @level2type=N'COLUMN',@level2name=N'LMSHOWSTYLE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ŀ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZLM', @level2type=N'COLUMN',@level2name=N'NAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ŀ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZLM', @level2type=N'COLUMN',@level2name=N'URL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ͼƬ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZLM', @level2type=N'COLUMN',@level2name=N'IMAGEURL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�㼶' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZLM', @level2type=N'COLUMN',@level2name=N'DEPTH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ŀ¼' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZLM', @level2type=N'COLUMN',@level2name=N'PID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�б���ʾ��ʽ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZLM', @level2type=N'COLUMN',@level2name=N'LISTSHOWSTYLE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʽ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZLM', @level2type=N'COLUMN',@level2name=N'ORDERTYPE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʾ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZLM', @level2type=N'COLUMN',@level2name=N'SHOWNUMBER'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZLM', @level2type=N'COLUMN',@level2name=N'OPENFLAG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���Ȩ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZLM', @level2type=N'COLUMN',@level2name=N'LLQX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����˳��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZLM', @level2type=N'COLUMN',@level2name=N'PLSX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��վ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZGG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��վ���ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZGG', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZGG', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��վID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZGG', @level2type=N'COLUMN',@level2name=N'WEBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʾ��ʽ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZGG', @level2type=N'COLUMN',@level2name=N'SHOWTYPE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZGG', @level2type=N'COLUMN',@level2name=N'ADCONTENT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZGG', @level2type=N'COLUMN',@level2name=N'GGLJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ���ʾ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_WZGG', @level2type=N'COLUMN',@level2name=N'SHOWSTATU'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_FWLL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_FWLL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_FWLL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��վID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_FWLL', @level2type=N'COLUMN',@level2name=N'WEBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����IP' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_FWLL', @level2type=N'COLUMN',@level2name=N'ACCESSIP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_FWLL', @level2type=N'COLUMN',@level2name=N'ACCESSURL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_FWLL', @level2type=N'COLUMN',@level2name=N'ACCESSTIME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����Ȩ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_FBQX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����Ȩ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_FBQX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_FBQX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��վID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_FBQX', @level2type=N'COLUMN',@level2name=N'WEBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�û���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_FBQX', @level2type=N'COLUMN',@level2name=N'LOGINNAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ŀ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_FBQX', @level2type=N'COLUMN',@level2name=N'LMLIST'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ŀ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_FBQX', @level2type=N'COLUMN',@level2name=N'LMNAMELIST'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ɫ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_FBJS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����Ȩ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_FBJS', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_FBJS', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��վID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_FBJS', @level2type=N'COLUMN',@level2name=N'WEBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ɫ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_FBJS', @level2type=N'COLUMN',@level2name=N'JSMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ĿID�б�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_FBJS', @level2type=N'COLUMN',@level2name=N'LMIDLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ŀ�����б�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_FBJS', @level2type=N'COLUMN',@level2name=N'LMMCLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�û�����Ȩ�ޱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_YHFBQX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����Ȩ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_YHFBQX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_YHFBQX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��վID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_YHFBQX', @level2type=N'COLUMN',@level2name=N'WEBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�û���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_YHFBQX', @level2type=N'COLUMN',@level2name=N'LOGINNAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ɫID�б�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_YHFBQX', @level2type=N'COLUMN',@level2name=N'JSIDLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ���Ҫ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_WZXT_MHXT_YHFBQX', @level2type=N'COLUMN',@level2name=N'SFXYSH'
GO
--�ռ�����EDU_ZXDY  ��������SqlBuilder0.1

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXDY_04_A01_ZZGW')
            and   type = 'U')
   drop table EDU_ZXDY_04_A01_ZZGW
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXDY_04_A02_ZZRYAP')
            and   type = 'U')
   drop table EDU_ZXDY_04_A02_ZZRYAP
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXDY_04_A03_ZZGWFP')
            and   type = 'U')
   drop table EDU_ZXDY_04_A03_ZZGWFP
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXDY_04_A04_GWFPMB')
            and   type = 'U')
   drop table EDU_ZXDY_04_A04_GWFPMB
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXDY_04_A05_TBZZJS')
            and   type = 'U')
   drop table EDU_ZXDY_04_A05_TBZZJS
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXDY_04_A06_ZZZC')
            and   type = 'U')
   drop table EDU_ZXDY_04_A06_ZZZC
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXDY_04_A07_MBFPNR')
            and   type = 'U')
   drop table EDU_ZXDY_04_A07_MBFPNR
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXDY_05_A01_ZZDFDL')
            and   type = 'U')
   drop table EDU_ZXDY_05_A01_ZZDFDL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXDY_05_A02_ZZDFXZ')
            and   type = 'U')
   drop table EDU_ZXDY_05_A02_ZZDFXZ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXDY_05_A03_ZZDFD')
            and   type = 'U')
   drop table EDU_ZXDY_05_A03_ZZDFD
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXDY_06_A01_ZZXJ')
            and   type = 'U')
   drop table EDU_ZXDY_06_A01_ZZXJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXDY_06_A02_GQXJH')
            and   type = 'U')
   drop table EDU_ZXDY_06_A02_GQXJH
go
--ֵ�ܸ�λ���ݱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXDY_04_A01_ZZGW]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXDY_04_A01_ZZGW](
	[ID]  int  NOT NULL,--ֵ�ܸ�λ��ID
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[XQID]  int  NOT NULL,--ѧ��ID
	[GWGZNR]  nvarchar(200)  NOT NULL,--��λ��������
CONSTRAINT [PK_EDU_ZXDY_04_A01_ZZGW] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ֵ����Ա���ű�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXDY_04_A02_ZZRYAP]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXDY_04_A02_ZZRYAP](
	[ID]  int  NOT NULL,--ֵ����Ա���ű�ID
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[XQID]  int  NOT NULL,--ѧ��ID
	[ZCID]  int  NOT NULL,--�ܴ�ID
	[KSRQ]  datetime  NULL,--��ʼ����
	[JSRQ]  datetime  NULL,--��������
	[ZZBJ]  nvarchar(10)  NOT NULL,--ֵ�ܰ༶���
	[ZZID]  nvarchar(20)  NOT NULL,--�鳤ID
	[ZYIDLB]  text  NOT NULL,--��ԱID�б�
	[ZYMCLB]  text  NOT NULL,--��Ա�����б�
CONSTRAINT [PK_EDU_ZXDY_04_A02_ZZRYAP] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ֵ�ܸ�λ�����
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXDY_04_A03_ZZGWFP]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXDY_04_A03_ZZGWFP](
	[ID]  int  NOT NULL,--ֵ�ܸ�λ�����ID
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[XQID]  int  NOT NULL,--ѧ��ID
	[ZCID]  int  NOT NULL,--�ܴ�ID
	[GZR]  int  NULL,--������
	[GWID]  int  NULL,--��λID
	[JSID]  nvarchar(20)  NOT NULL,--��ʦID
CONSTRAINT [PK_EDU_ZXDY_04_A03_ZZGWFP] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--��λ����ģ���
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXDY_04_A04_GWFPMB]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXDY_04_A04_GWFPMB](
	[ID]  int  NOT NULL,--��λ����ģ���ID
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[MBMC]  nvarchar(20)  NOT NULL,--ģ������
CONSTRAINT [PK_EDU_ZXDY_04_A04_GWFPMB] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�ر�ֵ�ܽ�ʦ��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXDY_04_A05_TBZZJS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXDY_04_A05_TBZZJS](
	[ID]  int  NOT NULL,--�ر�ֵ�ܽ�ʦ��ID
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[XQID]  int  NOT NULL,--ѧ��ID
	[JSLX]  nvarchar(20)  NOT NULL,--��ʦ����
	[JSID]  nvarchar(20)  NOT NULL,--��ʦID
	[YXRQ]  datetime  NULL,--��Ч����
CONSTRAINT [PK_EDU_ZXDY_04_A05_TBZZJS] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ֵ���ܴα�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXDY_04_A06_ZZZC]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXDY_04_A06_ZZZC](
	[ID]  int  NOT NULL,--�ܴα�ID
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[XQID]  int  NOT NULL,--ѧ��ID
	[ZCM]  nvarchar(20)  NOT NULL,--�ܴ���
	[XQKSRQ]  datetime  NULL,--��ʼ����
	[XQJSRQ]  datetime  NULL,--��������
CONSTRAINT [PK_EDU_ZXDY_04_A06_ZZZC] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ģ��������ݱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXDY_04_A07_MBFPNR]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXDY_04_A07_MBFPNR](
	[ID]  int  NOT NULL,--ģ�����ݱ�ID
	[MBID]  int  NOT NULL,--ģ���ID
	[GZR]  int  NULL,--������
	[GWID]  int  NULL,--��λID
	[DYRYH]  int  NOT NULL,--��Ӧ��Ա��
CONSTRAINT [PK_EDU_ZXDY_04_A07_MBFPNR] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ֵ�ܴ�ִ����
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXDY_05_A01_ZZDFDL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXDY_05_A01_ZZDFDL](
	[ID]  int  NOT NULL,--ֵ�ܴ�ִ����ID
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[XQID]  int  NOT NULL,--ѧ��ID
	[DLMC]  nvarchar(20)  NOT NULL,--��������
CONSTRAINT [PK_EDU_ZXDY_05_A01_ZZDFDL] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ֵ�ܴ��ϸ���
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXDY_05_A02_ZZDFXZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXDY_05_A02_ZZDFXZ](
	[ID]  int  NOT NULL,--ֵ�ܴ��ϸ���ID
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[SSDLID]  int  NOT NULL,--��������ID
	[XZNR]  nvarchar(200)  NOT NULL,--ϸ������
	[XZFZ]  decimal(6, 2)  NOT NULL,--ϸ���ֵ
CONSTRAINT [PK_EDU_ZXDY_05_A02_ZZDFXZ] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ֵ�ܴ�ֵ���
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXDY_05_A03_ZZDFD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXDY_05_A03_ZZDFD](
	[ID]  int  NOT NULL,--ֵ�ܴ�ֵ���ID
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[XQID]  int  NOT NULL,--ѧ��ID
	[ZCID]  int  NOT NULL,--�ܴ�ID
	[BJ]  nvarchar(10)  NULL,--�༶
	[XSIDLB]  text  NULL,--ѧ��ID�б�
	[XSMCLB]  text  NULL,--ѧ�������б�
	[SSXZID]  int  NOT NULL,--����ϸ��
	[DFFZ]  decimal(6, 2)  NOT NULL,--��ַ�ֵ
	[FSSJ]  datetime  NOT NULL,--����ʱ��
	[DFSJ]  datetime  NOT NULL,--���ʱ��
	[DFJSID]  nvarchar(20)  NOT NULL,--��ֽ�ʦID
	[BZ]  text  NOT NULL,--��ע
CONSTRAINT [PK_EDU_ZXDY_05_A03_ZZDFD] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ֵ��С���
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXDY_06_A01_ZZXJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXDY_06_A01_ZZXJ](
	[ID]  int  NOT NULL,--ֵ��С���ID
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[XQID]  int  NOT NULL,--ѧ��ID
	[ZCID]  int  NOT NULL,--�ܴ�ID
	[SZDS]  text  NULL,--���ܴ���
	[ZZJCQKFK]  text  NULL,--ֵ�ܼ���������
CONSTRAINT [PK_EDU_ZXDY_06_A01_ZZXJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�����½�����
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXDY_06_A02_GQXJH]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXDY_06_A02_GQXJH](
	[ID]  int  NOT NULL,--�����½�����ID
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[XQID]  int  NOT NULL,--ѧ��ID
	[ZCID]  int  NOT NULL,--�ܴ�ID
	[JHZT]  text  NULL,--��������
	[JHNR]  text  NULL,--��������
CONSTRAINT [PK_EDU_ZXDY_06_A02_GQXJH] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--����Ϊ���ע�����
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ֵ�ܸ�λ���ݱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A01_ZZGW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ֵ�ܸ�λ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A01_ZZGW', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A01_ZZGW', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A01_ZZGW', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��λ��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A01_ZZGW', @level2type=N'COLUMN',@level2name=N'GWGZNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ֵ����Ա���ű�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A02_ZZRYAP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ֵ����Ա���ű�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A02_ZZRYAP', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A02_ZZRYAP', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A02_ZZRYAP', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ܴ�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A02_ZZRYAP', @level2type=N'COLUMN',@level2name=N'ZCID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʼ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A02_ZZRYAP', @level2type=N'COLUMN',@level2name=N'KSRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A02_ZZRYAP', @level2type=N'COLUMN',@level2name=N'JSRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ֵ�ܰ༶���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A02_ZZRYAP', @level2type=N'COLUMN',@level2name=N'ZZBJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�鳤ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A02_ZZRYAP', @level2type=N'COLUMN',@level2name=N'ZZID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ԱID�б�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A02_ZZRYAP', @level2type=N'COLUMN',@level2name=N'ZYIDLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ա�����б�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A02_ZZRYAP', @level2type=N'COLUMN',@level2name=N'ZYMCLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ֵ�ܸ�λ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A03_ZZGWFP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ֵ�ܸ�λ�����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A03_ZZGWFP', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A03_ZZGWFP', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A03_ZZGWFP', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ܴ�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A03_ZZGWFP', @level2type=N'COLUMN',@level2name=N'ZCID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A03_ZZGWFP', @level2type=N'COLUMN',@level2name=N'GZR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��λID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A03_ZZGWFP', @level2type=N'COLUMN',@level2name=N'GWID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʦID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A03_ZZGWFP', @level2type=N'COLUMN',@level2name=N'JSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��λ����ģ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A04_GWFPMB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��λ����ģ���ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A04_GWFPMB', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A04_GWFPMB', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ģ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A04_GWFPMB', @level2type=N'COLUMN',@level2name=N'MBMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ر�ֵ�ܽ�ʦ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A05_TBZZJS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ر�ֵ�ܽ�ʦ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A05_TBZZJS', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A05_TBZZJS', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A05_TBZZJS', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʦ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A05_TBZZJS', @level2type=N'COLUMN',@level2name=N'JSLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʦID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A05_TBZZJS', @level2type=N'COLUMN',@level2name=N'JSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ч����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A05_TBZZJS', @level2type=N'COLUMN',@level2name=N'YXRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ֵ���ܴα�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A06_ZZZC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ܴα�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A06_ZZZC', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A06_ZZZC', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A06_ZZZC', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ܴ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A06_ZZZC', @level2type=N'COLUMN',@level2name=N'ZCM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʼ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A06_ZZZC', @level2type=N'COLUMN',@level2name=N'XQKSRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A06_ZZZC', @level2type=N'COLUMN',@level2name=N'XQJSRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ģ��������ݱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A07_MBFPNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ģ�����ݱ�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A07_MBFPNR', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ģ���ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A07_MBFPNR', @level2type=N'COLUMN',@level2name=N'MBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A07_MBFPNR', @level2type=N'COLUMN',@level2name=N'GZR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��λID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A07_MBFPNR', @level2type=N'COLUMN',@level2name=N'GWID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ӧ��Ա��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_04_A07_MBFPNR', @level2type=N'COLUMN',@level2name=N'DYRYH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ֵ�ܴ�ִ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_05_A01_ZZDFDL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ֵ�ܴ�ִ����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_05_A01_ZZDFDL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_05_A01_ZZDFDL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_05_A01_ZZDFDL', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_05_A01_ZZDFDL', @level2type=N'COLUMN',@level2name=N'DLMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ֵ�ܴ��ϸ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_05_A02_ZZDFXZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ֵ�ܴ��ϸ���ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_05_A02_ZZDFXZ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_05_A02_ZZDFXZ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_05_A02_ZZDFXZ', @level2type=N'COLUMN',@level2name=N'SSDLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ϸ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_05_A02_ZZDFXZ', @level2type=N'COLUMN',@level2name=N'XZNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ϸ���ֵ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_05_A02_ZZDFXZ', @level2type=N'COLUMN',@level2name=N'XZFZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ֵ�ܴ�ֵ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_05_A03_ZZDFD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ֵ�ܴ�ֵ���ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_05_A03_ZZDFD', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_05_A03_ZZDFD', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_05_A03_ZZDFD', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ܴ�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_05_A03_ZZDFD', @level2type=N'COLUMN',@level2name=N'ZCID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�༶' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_05_A03_ZZDFD', @level2type=N'COLUMN',@level2name=N'BJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID�б�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_05_A03_ZZDFD', @level2type=N'COLUMN',@level2name=N'XSIDLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ�������б�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_05_A03_ZZDFD', @level2type=N'COLUMN',@level2name=N'XSMCLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ϸ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_05_A03_ZZDFD', @level2type=N'COLUMN',@level2name=N'SSXZID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ַ�ֵ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_05_A03_ZZDFD', @level2type=N'COLUMN',@level2name=N'DFFZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_05_A03_ZZDFD', @level2type=N'COLUMN',@level2name=N'FSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_05_A03_ZZDFD', @level2type=N'COLUMN',@level2name=N'DFSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ֽ�ʦID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_05_A03_ZZDFD', @level2type=N'COLUMN',@level2name=N'DFJSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_05_A03_ZZDFD', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ֵ��С���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_06_A01_ZZXJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ֵ��С���ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_06_A01_ZZXJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_06_A01_ZZXJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_06_A01_ZZXJ', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ܴ�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_06_A01_ZZXJ', @level2type=N'COLUMN',@level2name=N'ZCID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ܴ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_06_A01_ZZXJ', @level2type=N'COLUMN',@level2name=N'SZDS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ֵ�ܼ���������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_06_A01_ZZXJ', @level2type=N'COLUMN',@level2name=N'ZZJCQKFK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����½�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_06_A02_GQXJH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����½�����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_06_A02_GQXJH', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_06_A02_GQXJH', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_06_A02_GQXJH', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ܴ�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_06_A02_GQXJH', @level2type=N'COLUMN',@level2name=N'ZCID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_06_A02_GQXJH', @level2type=N'COLUMN',@level2name=N'JHZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXDY_06_A02_GQXJH', @level2type=N'COLUMN',@level2name=N'JHNR'
GO
--�ռ�����EDU_ZXJX  ��������SqlBuilder0.1

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJX_01_01_KC')
            and   type = 'U')
   drop table EDU_ZXJX_01_01_KC
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
CONSTRAINT [PK_EDU_ZXJX_01_01_KC] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[KCH] ASC
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
	[SX]  int  NOT NULL,--����
	[XX]  int  NOT NULL,--����
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
--�ռ�����EDU_ZXJZ  ��������SqlBuilder0.1

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJZ_01_01_JZGJBSJ')
            and   type = 'U')
   drop table EDU_ZXJZ_01_01_JZGJBSJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJZ_02_A01_XNGWSJ')
            and   type = 'U')
   drop table EDU_ZXJZ_02_A01_XNGWSJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJZ_07_02_RKSJ')
            and   type = 'U')
   drop table EDU_ZXJZ_07_02_RKSJ
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

--У�ڸ�λ���������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJZ_02_A01_XNGWSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJZ_02_A01_XNGWSJ](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[GWID]  int  NOT NULL,--��λ��ID
	[JZGJBSJID]  int  NOT NULL,--��ְ���������������
	[GWQSNY]  nvarchar(6)  NOT NULL,--��λ��ʼ����
	[GWJSNY]  nvarchar(6)  NOT NULL,--��λ��������
	[SFZG]  nvarchar(1)  NOT NULL,--�Ƿ��ڸ�
	[ZWMC]  nvarchar(10)  NOT NULL,--ְ������
	[JGH]  nvarchar(10)  NOT NULL,--������
CONSTRAINT [PK_EDU_ZXJZ_02_A01_XNGWSJ] PRIMARY KEY CLUSTERED
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
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'У�ڸ�λ���������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_02_A01_XNGWSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_02_A01_XNGWSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_02_A01_XNGWSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��λ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_02_A01_XNGWSJ', @level2type=N'COLUMN',@level2name=N'GWID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ְ���������������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_02_A01_XNGWSJ', @level2type=N'COLUMN',@level2name=N'JZGJBSJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��λ��ʼ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_02_A01_XNGWSJ', @level2type=N'COLUMN',@level2name=N'GWQSNY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��λ��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_02_A01_XNGWSJ', @level2type=N'COLUMN',@level2name=N'GWJSNY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ��ڸ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_02_A01_XNGWSJ', @level2type=N'COLUMN',@level2name=N'SFZG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ְ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_02_A01_XNGWSJ', @level2type=N'COLUMN',@level2name=N'ZWMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_02_A01_XNGWSJ', @level2type=N'COLUMN',@level2name=N'JGH'
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
--�ռ�����EDU_ZXTW  ��������SqlBuilder0.1

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXTW_03_A01_XSMZJL')
            and   type = 'U')
   drop table EDU_ZXTW_03_A01_XSMZJL
go
--ѧ�������¼
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXTW_03_A01_XSMZJL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXTW_03_A01_XSMZJL](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[XSXXID]  int  NOT NULL,--ѧ��ID
	[BJID]  nvarchar(10)  NOT NULL,--�༶
	[JZKSSJ]  datetime  NOT NULL,--���￪ʼʱ��
	[JZJSSJ]  datetime  NOT NULL,--�������ʱ��
	[JZYY]  text  NOT NULL,--����ԭ��
	[ZDJG]  text  NOT NULL,--��Ͻ��
	[FY]  decimal(8, 3)  NOT NULL,--����
CONSTRAINT [PK_EDU_ZXTW_03_A01_XSMZJL] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--����Ϊ���ע�����
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ�������¼' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXTW_03_A01_XSMZJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXTW_03_A01_XSMZJL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXTW_03_A01_XSMZJL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXTW_03_A01_XSMZJL', @level2type=N'COLUMN',@level2name=N'XSXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�༶' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXTW_03_A01_XSMZJL', @level2type=N'COLUMN',@level2name=N'BJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���￪ʼʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXTW_03_A01_XSMZJL', @level2type=N'COLUMN',@level2name=N'JZKSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXTW_03_A01_XSMZJL', @level2type=N'COLUMN',@level2name=N'JZJSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ԭ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXTW_03_A01_XSMZJL', @level2type=N'COLUMN',@level2name=N'JZYY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ͻ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXTW_03_A01_XSMZJL', @level2type=N'COLUMN',@level2name=N'ZDJG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXTW_03_A01_XSMZJL', @level2type=N'COLUMN',@level2name=N'FY'
GO
--�ռ�����EDU_ZXXS  ��������SqlBuilder0.1

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXXS_01_01_XSXX')
            and   type = 'U')
   drop table EDU_ZXXS_01_01_XSXX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXXS_01_06_XSJTCY')
            and   type = 'U')
   drop table EDU_ZXXS_01_06_XSJTCY
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXXS_02_A01_XSJTXX')
            and   type = 'U')
   drop table EDU_ZXXS_02_A01_XSJTXX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXXS_02_06_ZXKSCJ')
            and   type = 'U')
   drop table EDU_ZXXS_02_06_ZXKSCJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXXS_07_A02_XJYD')
            and   type = 'U')
   drop table EDU_ZXXS_07_A02_XJYD
go
--ѧ���������������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXXS_01_01_XSXX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXXS_01_01_XSXX](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[XH]  nvarchar(20)  NOT NULL,--ѧ��
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
	[SFZJLXM]  nvarchar(1)  NULL,--���֤��������
	[SFZJH]  nvarchar(20)  NULL,--���֤����
	[HYZKM]  nvarchar(2)  NULL,--����״����
	[GATQWM]  nvarchar(2)  NULL,--�۰�̨������
	[ZZMMM]  nvarchar(2)  NOT NULL,--������ò��
	[JKZKM]  nvarchar(1)  NOT NULL,--����״����
	[XYZJM]  nvarchar(2)  NULL,--�����ڽ���
	[XXM]  nvarchar(1)  NULL,--Ѫ����
	[ZP]  nvarchar(200)  NULL,--��Ƭ
	[SFZJYXQ]  nvarchar(17)  NULL,--���֤����Ч��
	[DSZYBZ]  nvarchar(1)  NULL,--������Ů��־
	[RXNY]  nvarchar(6)  NOT NULL,--��ѧ����
	[NJ]  nvarchar(10)  NOT NULL,--�꼶
	[BH]  nvarchar(10)  NOT NULL,--���
	[XSLBM]  nvarchar(5)  NOT NULL,--ѧ�������
	[XZZ]  nvarchar(180)  NULL,--��סַ
	[HKSZD]  nvarchar(180)  NULL,--�������ڵ�
	[HKXZM]  nvarchar(1)  NULL,--����������
	[SFLDRK]  nvarchar(1)  NOT NULL,--�Ƿ������˿�
	[TC]  text  NULL,--�س�
	[LXDH]  nvarchar(30)  NULL,--��ϵ�绰
	[TXDZ]  nvarchar(180)  NULL,--ͨ�ŵ�ַ
	[YZBM]  nvarchar(6)  NULL,--��������
	[DZXX]  nvarchar(40)  NULL,--��������
	[ZYDZ]  nvarchar(60)  NULL,--��ҳ��ַ
	[XJH]  nvarchar(30)  NULL,--ѧ����
CONSTRAINT [PK_EDU_ZXXS_01_01_XSXX] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ѧ����ͥ��Ա���ݱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXXS_01_06_XSJTCY]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXXS_01_06_XSJTCY](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[XSXXID]  int  NOT NULL,--ѧ����Ϣ���ݱ�
	[GXM]  nvarchar(2)  NOT NULL,--��ϵ��
	[CYXM]  nvarchar(36)  NOT NULL,--��Ա����
	[CSNY]  nvarchar(6)  NULL,--��������
	[MZM]  nvarchar(2)  NULL,--������
	[GJDQM]  nvarchar(3)  NULL,--����/������
	[JKZKM]  nvarchar(1)  NULL,--����״����
	[CYGZDW]  nvarchar(60)  NULL,--��Ա������λ
	[CYM]  nvarchar(2)  NULL,--��ҵ��
	[ZYJSZWM]  nvarchar(3)  NULL,--רҵ����ְ����
	[ZWJBM]  nvarchar(3)  NULL,--ְ�񼶱���
	[DH]  nvarchar(30)  NULL,--�绰
	[DZXX]  nvarchar(40)  NULL,--��������
	[SFJHR]  nvarchar(1)  NOT NULL,--�Ƿ�໤��
	[XBM]  nvarchar(1)  NULL,--�Ա���
	[XLM]  nvarchar(2)  NOT NULL,--ѧ����
	[LXDZ]  nvarchar(180)  NULL,--��ϵ��ַ
	[SJHM]  nvarchar(30)  NULL,--�ֻ�����
CONSTRAINT [PK_EDU_ZXXS_01_06_XSJTCY] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ѧ����ͥ��Ϣ���ݱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXXS_02_A01_XSJTXX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXXS_02_A01_XSJTXX](
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
CONSTRAINT [PK_EDU_ZXXS_02_A01_XSJTXX] PRIMARY KEY CLUSTERED
(
	[XSXXID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--��У���Գɼ����������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXXS_02_06_ZXKSCJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXXS_02_06_ZXKSCJ](
	[ID]  int  NOT NULL,--���Գɼ���
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[XSXXID]  int  NOT NULL,--ѧ��ID
	[XN]  nvarchar(9)  NOT NULL,--ѧ�꣨�ȣ�
	[XQM]  nvarchar(1)  NOT NULL,--ѧ����
	[KSRQ]  nvarchar(8)  NOT NULL,--��������
	[KCH]  nvarchar(10)  NOT NULL,--�γ̺�
	[RKJSID]  int  NOT NULL,--�ον�ʦID
	[CJLRRID]  int  NOT NULL,--�ɼ�¼����ID
	[KSFSM]  nvarchar(1)  NULL,--���Է�ʽ��
	[KSXZM]  nvarchar(2)  NULL,--����������
	[KSXSM]  nvarchar(1)  NULL,--������ʽ��
	[FSLKSCJ]  decimal(5, 1)  NULL,--�����࿼�Գɼ�
	[DJLKSCJ]  nvarchar(1)  NULL,--�ȼ��࿼�Գɼ�
	[KCCJ]  decimal(5, 1)  NULL,--�γ̳ɼ�
	[KCDJCJM]  nvarchar(1)  NULL,--�γ̵ȼ��ɼ���
	[RKJSGH]  nvarchar(20)  NULL,--�ον�ʦ����
	[CJLRRH]  nvarchar(20)  NULL,--�ɼ�¼���˺�
	[CJLRRQ]  nvarchar(8)  NULL,--�ɼ�¼������
	[CJLRSJ]  nvarchar(6)  NULL,--�ɼ�¼��ʱ��
	[XQID]  int  NOT NULL,--ѧ��
	[XNID]  int  NOT NULL,--ѧ��
	[NJID]  nvarchar(10)  NOT NULL,--�꼶
	[BJID]  nvarchar(10)  NOT NULL,--�༶
	[SSKSID]  int  NOT NULL,--��������ID
	[SSKSKMID]  int  NOT NULL,--�������Կ�ĿID
	[SJID]  int  NOT NULL,--�Ծ�ID
CONSTRAINT [PK_EDU_ZXXS_02_06_ZXKSCJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ѧ���춯���������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXXS_07_A02_XJYD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXXS_07_A02_XJYD](
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
	[YBH]  nvarchar(10)  NOT NULL,--ԭ���
	[YNJ]  nvarchar(10)  NOT NULL,--ԭ�꼶
	[XBH]  nvarchar(10)  NOT NULL,--�ְ��
	[XNJ]  nvarchar(10)  NOT NULL,--���꼶
CONSTRAINT [PK_EDU_ZXXS_07_A02_XJYD] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--����Ϊ���ע�����
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ���������������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_01_XSXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'XH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'XM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ӣ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'YWXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ƴ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'XMPY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'CYM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ա���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'XBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'CSRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'CSDM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'JG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'MZM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����/������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'GJDQM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���֤��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'SFZJLXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���֤����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'SFZJH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����״����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'HYZKM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�۰�̨������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'GATQWM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ò��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'ZZMMM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����״����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'JKZKM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����ڽ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'XYZJM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ѫ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'XXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ƭ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'ZP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���֤����Ч��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'SFZJYXQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������Ů��־' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'DSZYBZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ѧ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'RXNY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�꼶' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'NJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'BH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'XSLBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��סַ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'XZZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������ڵ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'HKSZD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'HKXZM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ������˿�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'SFLDRK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�س�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'TC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ϵ�绰' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'LXDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ͨ�ŵ�ַ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'TXDZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'YZBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'DZXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ҳ��ַ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'ZYDZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'XJH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ����ͥ��Ա���ݱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_06_XSJTCY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_06_XSJTCY', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_06_XSJTCY', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ����Ϣ���ݱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_06_XSJTCY', @level2type=N'COLUMN',@level2name=N'XSXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ϵ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_06_XSJTCY', @level2type=N'COLUMN',@level2name=N'GXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ա����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_06_XSJTCY', @level2type=N'COLUMN',@level2name=N'CYXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_06_XSJTCY', @level2type=N'COLUMN',@level2name=N'CSNY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_06_XSJTCY', @level2type=N'COLUMN',@level2name=N'MZM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����/������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_06_XSJTCY', @level2type=N'COLUMN',@level2name=N'GJDQM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����״����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_06_XSJTCY', @level2type=N'COLUMN',@level2name=N'JKZKM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ա������λ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_06_XSJTCY', @level2type=N'COLUMN',@level2name=N'CYGZDW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ҵ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_06_XSJTCY', @level2type=N'COLUMN',@level2name=N'CYM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'רҵ����ְ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_06_XSJTCY', @level2type=N'COLUMN',@level2name=N'ZYJSZWM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ְ�񼶱���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_06_XSJTCY', @level2type=N'COLUMN',@level2name=N'ZWJBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�绰' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_06_XSJTCY', @level2type=N'COLUMN',@level2name=N'DH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_06_XSJTCY', @level2type=N'COLUMN',@level2name=N'DZXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ�໤��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_06_XSJTCY', @level2type=N'COLUMN',@level2name=N'SFJHR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ա���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_06_XSJTCY', @level2type=N'COLUMN',@level2name=N'XBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_06_XSJTCY', @level2type=N'COLUMN',@level2name=N'XLM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ϵ��ַ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_06_XSJTCY', @level2type=N'COLUMN',@level2name=N'LXDZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ֻ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_06_XSJTCY', @level2type=N'COLUMN',@level2name=N'SJHM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ����ͥ��Ϣ���ݱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_02_A01_XSJTXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ����Ϣ���ݱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_02_A01_XSJTXX', @level2type=N'COLUMN',@level2name=N'XSXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_02_A01_XSJTXX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ͥסַ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_02_A01_XSJTXX', @level2type=N'COLUMN',@level2name=N'JTZZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ͥ��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_02_A01_XSJTXX', @level2type=N'COLUMN',@level2name=N'JTYZBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ͥ�绰' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_02_A01_XSJTXX', @level2type=N'COLUMN',@level2name=N'JTDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ͥ��ϵ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_02_A01_XSJTXX', @level2type=N'COLUMN',@level2name=N'JTLXR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ͥ��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_02_A01_XSJTXX', @level2type=N'COLUMN',@level2name=N'JTDZXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ͥ�˿�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_02_A01_XSJTXX', @level2type=N'COLUMN',@level2name=N'JTRK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ͥ��Ҫ������Դ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_02_A01_XSJTXX', @level2type=N'COLUMN',@level2name=N'JTZYSRLY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ͥ��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_02_A01_XSJTXX', @level2type=N'COLUMN',@level2name=N'JTYSRJE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ͥ��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_02_A01_XSJTXX', @level2type=N'COLUMN',@level2name=N'JTNSRJE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������վ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_02_A01_XSJTXX', @level2type=N'COLUMN',@level2name=N'LJZJHCZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��У���Գɼ����������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_02_06_ZXKSCJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���Գɼ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_02_06_ZXKSCJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_02_06_ZXKSCJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_02_06_ZXKSCJ', @level2type=N'COLUMN',@level2name=N'XSXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ�꣨�ȣ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_02_06_ZXKSCJ', @level2type=N'COLUMN',@level2name=N'XN'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_02_06_ZXKSCJ', @level2type=N'COLUMN',@level2name=N'XQM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_02_06_ZXKSCJ', @level2type=N'COLUMN',@level2name=N'KSRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�γ̺�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_02_06_ZXKSCJ', @level2type=N'COLUMN',@level2name=N'KCH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ον�ʦID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_02_06_ZXKSCJ', @level2type=N'COLUMN',@level2name=N'RKJSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ɼ�¼����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_02_06_ZXKSCJ', @level2type=N'COLUMN',@level2name=N'CJLRRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���Է�ʽ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_02_06_ZXKSCJ', @level2type=N'COLUMN',@level2name=N'KSFSM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_02_06_ZXKSCJ', @level2type=N'COLUMN',@level2name=N'KSXZM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ʽ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_02_06_ZXKSCJ', @level2type=N'COLUMN',@level2name=N'KSXSM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����࿼�Գɼ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_02_06_ZXKSCJ', @level2type=N'COLUMN',@level2name=N'FSLKSCJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ȼ��࿼�Գɼ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_02_06_ZXKSCJ', @level2type=N'COLUMN',@level2name=N'DJLKSCJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�γ̳ɼ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_02_06_ZXKSCJ', @level2type=N'COLUMN',@level2name=N'KCCJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�γ̵ȼ��ɼ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_02_06_ZXKSCJ', @level2type=N'COLUMN',@level2name=N'KCDJCJM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ον�ʦ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_02_06_ZXKSCJ', @level2type=N'COLUMN',@level2name=N'RKJSGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ɼ�¼���˺�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_02_06_ZXKSCJ', @level2type=N'COLUMN',@level2name=N'CJLRRH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ɼ�¼������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_02_06_ZXKSCJ', @level2type=N'COLUMN',@level2name=N'CJLRRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ɼ�¼��ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_02_06_ZXKSCJ', @level2type=N'COLUMN',@level2name=N'CJLRSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_02_06_ZXKSCJ', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_02_06_ZXKSCJ', @level2type=N'COLUMN',@level2name=N'XNID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�꼶' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_02_06_ZXKSCJ', @level2type=N'COLUMN',@level2name=N'NJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�༶' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_02_06_ZXKSCJ', @level2type=N'COLUMN',@level2name=N'BJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_02_06_ZXKSCJ', @level2type=N'COLUMN',@level2name=N'SSKSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������Կ�ĿID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_02_06_ZXKSCJ', @level2type=N'COLUMN',@level2name=N'SSKSKMID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ծ�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_02_06_ZXKSCJ', @level2type=N'COLUMN',@level2name=N'SJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ���춯���������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_07_A02_XJYD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ���춯����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_07_A02_XJYD', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_07_A02_XJYD', @level2type=N'COLUMN',@level2name=N'XSXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_07_A02_XJYD', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�춯�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_07_A02_XJYD', @level2type=N'COLUMN',@level2name=N'YDLBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�춯����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_07_A02_XJYD', @level2type=N'COLUMN',@level2name=N'YDRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�춯ԭ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_07_A02_XJYD', @level2type=N'COLUMN',@level2name=N'YDYYM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_07_A02_XJYD', @level2type=N'COLUMN',@level2name=N'SPRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����ĺ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_07_A02_XJYD', @level2type=N'COLUMN',@level2name=N'SPWH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_07_A02_XJYD', @level2type=N'COLUMN',@level2name=N'JBRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����˹���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_07_A02_XJYD', @level2type=N'COLUMN',@level2name=N'JBRGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�춯��ԴѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_07_A02_XJYD', @level2type=N'COLUMN',@level2name=N'YDLYXXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�춯ȥ��ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_07_A02_XJYD', @level2type=N'COLUMN',@level2name=N'YDQXXXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�춯˵��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_07_A02_XJYD', @level2type=N'COLUMN',@level2name=N'YDSM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ԭ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_07_A02_XJYD', @level2type=N'COLUMN',@level2name=N'YBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ԭ�꼶' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_07_A02_XJYD', @level2type=N'COLUMN',@level2name=N'YNJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ְ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_07_A02_XJYD', @level2type=N'COLUMN',@level2name=N'XBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���꼶' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_07_A02_XJYD', @level2type=N'COLUMN',@level2name=N'XNJ'
GO
--�ռ�����EDU_ZXXX  ��������SqlBuilder0.1

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXXX_01_01_ZXXX')
            and   type = 'U')
   drop table EDU_ZXXX_01_01_ZXXX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXXX_02_01_NJ')
            and   type = 'U')
   drop table EDU_ZXXX_02_01_NJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXXX_03_01_BJ')
            and   type = 'U')
   drop table EDU_ZXXX_03_01_BJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXXX_04_01_JG')
            and   type = 'U')
   drop table EDU_ZXXX_04_01_JG
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXXX_04_A01_JGGW')
            and   type = 'U')
   drop table EDU_ZXXX_04_A01_JGGW
go
--ѧУ�������������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXXX_01_01_ZXXX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXXX_01_01_ZXXX](
	[ID]  int  NOT NULL,--ѧУID
	[XXDM]  nvarchar(10)  NOT NULL,--ѧУ����
	[XXMC]  nvarchar(60)  NOT NULL,--ѧУ����
	[XXYWMC]  nvarchar(60)  NULL,--ѧУӢ������
	[XXDZ]  nvarchar(180)  NOT NULL,--ѧУ��ַ
	[XXYZBM]  nvarchar(6)  NOT NULL,--ѧУ��������
	[XZQHM]  nvarchar(6)  NOT NULL,--����������
	[JXNY]  nvarchar(6)  NOT NULL,--��У����
	[XQR]  nvarchar(60)  NOT NULL,--У����
	[XXBXLXM]  nvarchar(3)  NOT NULL,--ѧУ��ѧ������
	[XXZGBMM]  nvarchar(3)  NOT NULL,--ѧУ���ܲ�����
	[FDDBRH]  nvarchar(20)  NULL,--���������˺�
	[FRZSH]  nvarchar(20)  NOT NULL,--����֤���
	[XZGH]  nvarchar(20)  NULL,--У������
	[XZXM]  nvarchar(36)  NOT NULL,--У������
	[DWFZRH]  nvarchar(20)  NULL,--��ί�����˺�
	[ZZJGM]  nvarchar(10)  NULL,--��֯������
	[LXDH]  nvarchar(30)  NOT NULL,--��ϵ�绰
	[CZDH]  nvarchar(30)  NOT NULL,--����绰
	[DZXX]  nvarchar(40)  NOT NULL,--��������
	[ZYDZ]  nvarchar(60)  NOT NULL,--��ҳ��ַ
	[LSYG]  text  NOT NULL,--��ʷ�ظ�
	[XXBBM]  nvarchar(2)  NOT NULL,--ѧУ�����
	[SSZGDWM]  nvarchar(3)  NOT NULL,--�������ܵ�λ��
	[SZDCXLXM]  nvarchar(3)  NOT NULL,--���ڵس���������
	[SZDJJSXM]  nvarchar(1)  NOT NULL,--���ڵؾ���������
	[SZDMZSX]  nvarchar(1)  NOT NULL,--���ڵ���������
	[XXXZ]  decimal(3, 1)  NOT NULL,--Сѧѧ��
	[XXRXNL]  decimal(1, 0)  NOT NULL,--Сѧ��ѧ����
	[CZXZ]  decimal(3, 1)  NOT NULL,--����ѧ��
	[CZRXNL]  decimal(2, 0)  NOT NULL,--������ѧ����
	[GZXZ]  decimal(3, 1)  NOT NULL,--����ѧ��
	[ZJXYYM]  nvarchar(3)  NOT NULL,--����ѧ������
	[FJXYYM]  nvarchar(3)  NOT NULL,--����ѧ������
	[ZSBJ]  nvarchar(30)  NULL,--�����뾶
CONSTRAINT [PK_EDU_ZXXX_01_01_ZXXX] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�꼶�������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXXX_02_01_NJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXXX_02_01_NJ](
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[NJ]  nvarchar(10)  NOT NULL,--�꼶��
	[NJMC]  nvarchar(30)  NOT NULL,--�꼶����
CONSTRAINT [PK_EDU_ZXXX_02_01_NJ] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[NJ] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�༶�������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXXX_03_01_BJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXXX_03_01_BJ](
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[BH]  nvarchar(10)  NOT NULL,--���
	[NJ]  nvarchar(10)  NOT NULL,--�꼶��
	[BJ]  nvarchar(20)  NULL,--�༶����
	[JBNY]  nvarchar(6)  NULL,--��������
	[BZRGH]  nvarchar(20)  NULL,--�����ι���
	[BZXH]  nvarchar(20)  NULL,--�೤ѧ��
	[BJRYCH]  nvarchar(40)  NULL,--�༶�����ƺ�
	[XZ]  decimal(3, 1)  NULL,--ѧ��
	[BJLXM]  nvarchar(2)  NULL,--�༶������
	[WLLX]  nvarchar(2)  NULL,--��������
	[BYRQ]  nvarchar(8)  NULL,--��ҵ����
	[SFSSMZSYJXB]  nvarchar(1)  NOT NULL,--�Ƿ���������˫���ѧ��
	[SYJXMSM]  nvarchar(1)  NOT NULL,--˫���ѧģʽ��
	[BZRID]  int  NOT NULL,--������ID
CONSTRAINT [PK_EDU_ZXXX_03_01_BJ] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[BH] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�����������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXXX_04_01_JG]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXXX_04_01_JG](
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[JGH]  nvarchar(10)  NOT NULL,--������
	[LSJGH]  nvarchar(10)  NOT NULL,--����������
	[JGMC]  nvarchar(60)  NOT NULL,--��������
	[JGJC]  nvarchar(10)  NOT NULL,--�������
	[FZRGH]  nvarchar(20)  NULL,--�����˹���
CONSTRAINT [PK_EDU_ZXXX_04_01_JG] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[JGH] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--������λ��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXXX_04_A01_JGGW]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXXX_04_A01_JGGW](
	[ID]  int  NOT NULL,--��λ��ID
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[JGH]  nvarchar(10)  NOT NULL,--������
	[GWBH]  nvarchar(50)  NOT NULL,--��λ���
	[GWMC]  nvarchar(50)  NULL,--��λ����
	[GWSM]  text  NOT NULL,--��λ˵��
CONSTRAINT [PK_EDU_ZXXX_04_A01_JGGW] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--����Ϊ���ע�����
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ�������������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'XXDM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'XXMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУӢ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'XXYWMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��ַ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'XXDZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'XXYZBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'XZQHM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��У����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'JXNY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'У����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'XQR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��ѧ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'XXBXLXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ���ܲ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'XXZGBMM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���������˺�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'FDDBRH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����֤���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'FRZSH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'У������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'XZGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'У������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'XZXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ί�����˺�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'DWFZRH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��֯������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'ZZJGM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ϵ�绰' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'LXDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����绰' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'CZDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'DZXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ҳ��ַ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'ZYDZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʷ�ظ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'LSYG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'XXBBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������ܵ�λ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'SSZGDWM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ڵس���������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'SZDCXLXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ڵؾ���������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'SZDJJSXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ڵ���������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'SZDMZSX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Сѧѧ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'XXXZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Сѧ��ѧ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'XXRXNL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ѧ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'CZXZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ѧ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'CZRXNL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ѧ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'GZXZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ѧ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'ZJXYYM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ѧ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'FJXYYM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����뾶' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'ZSBJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�꼶�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_02_01_NJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_02_01_NJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�꼶��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_02_01_NJ', @level2type=N'COLUMN',@level2name=N'NJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�꼶����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_02_01_NJ', @level2type=N'COLUMN',@level2name=N'NJMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�༶�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_03_01_BJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_03_01_BJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_03_01_BJ', @level2type=N'COLUMN',@level2name=N'BH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�꼶��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_03_01_BJ', @level2type=N'COLUMN',@level2name=N'NJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�༶����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_03_01_BJ', @level2type=N'COLUMN',@level2name=N'BJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_03_01_BJ', @level2type=N'COLUMN',@level2name=N'JBNY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����ι���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_03_01_BJ', @level2type=N'COLUMN',@level2name=N'BZRGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�೤ѧ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_03_01_BJ', @level2type=N'COLUMN',@level2name=N'BZXH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�༶�����ƺ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_03_01_BJ', @level2type=N'COLUMN',@level2name=N'BJRYCH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_03_01_BJ', @level2type=N'COLUMN',@level2name=N'XZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�༶������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_03_01_BJ', @level2type=N'COLUMN',@level2name=N'BJLXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_03_01_BJ', @level2type=N'COLUMN',@level2name=N'WLLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ҵ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_03_01_BJ', @level2type=N'COLUMN',@level2name=N'BYRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ���������˫���ѧ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_03_01_BJ', @level2type=N'COLUMN',@level2name=N'SFSSMZSYJXB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'˫���ѧģʽ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_03_01_BJ', @level2type=N'COLUMN',@level2name=N'SYJXMSM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_03_01_BJ', @level2type=N'COLUMN',@level2name=N'BZRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_04_01_JG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_04_01_JG', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_04_01_JG', @level2type=N'COLUMN',@level2name=N'JGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_04_01_JG', @level2type=N'COLUMN',@level2name=N'LSJGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_04_01_JG', @level2type=N'COLUMN',@level2name=N'JGMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_04_01_JG', @level2type=N'COLUMN',@level2name=N'JGJC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����˹���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_04_01_JG', @level2type=N'COLUMN',@level2name=N'FZRGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������λ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_04_A01_JGGW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��λ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_04_A01_JGGW', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_04_A01_JGGW', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_04_A01_JGGW', @level2type=N'COLUMN',@level2name=N'JGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��λ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_04_A01_JGGW', @level2type=N'COLUMN',@level2name=N'GWBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��λ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_04_A01_JGGW', @level2type=N'COLUMN',@level2name=N'GWMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��λ˵��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_04_A01_JGGW', @level2type=N'COLUMN',@level2name=N'GWSM'
GO
--�ռ�����EDU_ZYZX  ��������SqlBuilder0.1

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZYZX_VIP')
            and   type = 'U')
   drop table EDU_ZYZX_VIP
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZYZX_TPXT_TPYS')
            and   type = 'U')
   drop table EDU_ZYZX_TPXT_TPYS
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZYZX_TPXT_TPXX')
            and   type = 'U')
   drop table EDU_ZYZX_TPXT_TPXX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZYZX_TPXT_TPTM')
            and   type = 'U')
   drop table EDU_ZYZX_TPXT_TPTM
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZYZX_TPXT_TPSZ')
            and   type = 'U')
   drop table EDU_ZYZX_TPXT_TPSZ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZYZX_TPXT_TPJL')
            and   type = 'U')
   drop table EDU_ZYZX_TPXT_TPJL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZYZX_MHXT_YQLJLX')
            and   type = 'U')
   drop table EDU_ZYZX_MHXT_YQLJLX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZYZX_MHXT_YQLJ')
            and   type = 'U')
   drop table EDU_ZYZX_MHXT_YQLJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZYZX_MHXT_WZYS')
            and   type = 'U')
   drop table EDU_ZYZX_MHXT_WZYS
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZYZX_MHXT_WZWZ')
            and   type = 'U')
   drop table EDU_ZYZX_MHXT_WZWZ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZYZX_MHXT_WZPJ')
            and   type = 'U')
   drop table EDU_ZYZX_MHXT_WZPJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZYZX_MHXT_WZPZ')
            and   type = 'U')
   drop table EDU_ZYZX_MHXT_WZPZ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZYZX_MHXT_NWIP')
            and   type = 'U')
   drop table EDU_ZYZX_MHXT_NWIP
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZYZX_MHXT_WZLM')
            and   type = 'U')
   drop table EDU_ZYZX_MHXT_WZLM
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZYZX_MHXT_WZGG')
            and   type = 'U')
   drop table EDU_ZYZX_MHXT_WZGG
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZYZX_MHXT_FWLL')
            and   type = 'U')
   drop table EDU_ZYZX_MHXT_FWLL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZYZX_MHXT_FBQX')
            and   type = 'U')
   drop table EDU_ZYZX_MHXT_FBQX
go
--��վ��Ա
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZYZX_VIP]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZYZX_VIP](
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[WEBID]  int  NOT NULL,--��վID
	[LOGINNAME]  nvarchar(50)  NOT NULL,--�û���
	[LOGINPWD]  nvarchar(64)  NOT NULL,--����
	[REALNAME]  nvarchar(50)  NOT NULL,--����
	[EMAIL]  nvarchar(50)  NOT NULL,--��������
	[MOBILE]  nvarchar(20)  NOT NULL,--��ϵ�绰
	[QQ]  nvarchar(20)  NULL,--QQ����
	[AUDITSTATU]  int  NOT NULL,--���״̬
	[AUDITOR]  nvarchar(50)  NULL,--�����ID
	[AUDITORNAME]  nvarchar(50)  NULL,--�����
CONSTRAINT [PK_EDU_ZYZX_VIP] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[WEBID] ASC,
	[LOGINNAME] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ͶƱ��ʽ��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZYZX_TPXT_TPYS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZYZX_TPXT_TPYS](
	[ID]  int  NOT NULL,--��ʽID
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[WEBID]  int  NOT NULL,--��վID
	[NAME]  nvarchar(50)  NOT NULL,--��ʽ��
	[SHOWIMG]  nvarchar(500)  NULL,--Ч��ͼ
CONSTRAINT [PK_EDU_ZYZX_TPXT_TPYS] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC,
	[WEBID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ͶƱ��Ŀѡ��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZYZX_TPXT_TPXX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZYZX_TPXT_TPXX](
	[ID]  int  NOT NULL,--ͶƱ��Ŀѡ��ID
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[WEBID]  int  NOT NULL,--��վID
	[TPID]  int  NOT NULL,--ͶƱ
	[TMID]  int  NOT NULL,--ͶƱ��Ŀ
	[TITLE]  nvarchar(500)  NULL,--����
	[SUMTP]  int  NOT NULL,--��ѡ����
CONSTRAINT [PK_EDU_ZYZX_TPXT_TPXX] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC,
	[WEBID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ͶƱ��Ŀ
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZYZX_TPXT_TPTM]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZYZX_TPXT_TPTM](
	[ID]  int  NOT NULL,--ͶƱ��ĿID
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[WEBID]  int  NOT NULL,--��վID
	[TPID]  int  NOT NULL,--ͶƱ
	[TYPEID]  int  NOT NULL,--ͶƱ��ʽ
	[TITLE]  nvarchar(500)  NULL,--����
	[CONTENT]  text  NULL,--����
CONSTRAINT [PK_EDU_ZYZX_TPXT_TPTM] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC,
	[WEBID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ͶƱ����
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZYZX_TPXT_TPSZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZYZX_TPXT_TPSZ](
	[ID]  int  NOT NULL,--ͶƱ����ID
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[WEBID]  int  NOT NULL,--��վID
	[TITLE]  nvarchar(500)  NULL,--����
	[CONTENT]  text  NULL,--����
	[SHOWSTYLEID]  int  NULL,--��ʾ��ʽ
	[CSSID]  int  NOT NULL,--��ʾ��ʽ
	[LOGINNAMELIST]  text  NULL,--ͶƱ��
	[STARTSTATU]  int  NOT NULL,--�Ƿ���
CONSTRAINT [PK_EDU_ZYZX_TPXT_TPSZ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC,
	[WEBID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ͶƱ��¼
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZYZX_TPXT_TPJL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZYZX_TPXT_TPJL](
	[ID]  int  NOT NULL,--ͶƱ��¼ID
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[WEBID]  int  NOT NULL,--��վID
	[TPID]  int  NOT NULL,--ͶƱ
	[TPIP]  nvarchar(128)  NOT NULL,--ͶƱ��
	[TPTIME]  datetime  NOT NULL,--ͶƱʱ��
CONSTRAINT [PK_EDU_ZYZX_TPXT_TPJL] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC,
	[WEBID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--������������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZYZX_MHXT_YQLJLX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZYZX_MHXT_YQLJLX](
	[ID]  int  NOT NULL,--������������ID
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[WEBID]  int  NOT NULL,--��վID
	[NAME]  nvarchar(50)  NOT NULL,--������
	[SHOWSTYLE]  int  NOT NULL,--��ʾ��ʽ
CONSTRAINT [PK_EDU_ZYZX_MHXT_YQLJLX] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC,
	[WEBID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--��������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZYZX_MHXT_YQLJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZYZX_MHXT_YQLJ](
	[ID]  int  NOT NULL,--��������ID
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[WEBID]  int  NOT NULL,--��վID
	[TITLE]  nvarchar(50)  NOT NULL,--����
	[TYPEID]  int  NOT NULL,--����
	[IMAGEURL]  nvarchar(500)  NULL,--ͼƬ
	[URL]  nvarchar(300)  NOT NULL,--����
CONSTRAINT [PK_EDU_ZYZX_MHXT_YQLJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC,
	[WEBID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--��ʽ��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZYZX_MHXT_WZYS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZYZX_MHXT_WZYS](
	[ID]  int  NOT NULL,--��ʽ��ID
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[WEBID]  int  NOT NULL,--��վID
	[NAME]  nvarchar(50)  NOT NULL,--��ʽ��
	[SHOWIMG]  nvarchar(500)  NULL,--Ч��ͼ
CONSTRAINT [PK_EDU_ZYZX_MHXT_WZYS] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC,
	[WEBID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--��վ����
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZYZX_MHXT_WZWZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZYZX_MHXT_WZWZ](
	[ID]  int  NOT NULL,--��վ����ID
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[WEBID]  int  NOT NULL,--��վID
	[TYPENAME]  nvarchar(20)  NULL,--��������
	[LMID]  int  NOT NULL,--��Ŀ
	[TITLE]  nvarchar(100)  NOT NULL,--����
	[PUBLISHERNAME]  nvarchar(50)  NOT NULL,--������
	[AUTHOR]  nvarchar(50)  NOT NULL,--����
	[AUTHORDEPART]  nvarchar(50)  NULL,--���߲���
	[PUBLISHDATE]  datetime  NOT NULL,--����ʱ��
	[CONTENT]  text  NULL,--����
	[URL]  nvarchar(300)  NULL,--����
	[IMAGEURL]  nvarchar(300)  NULL,--ͼƬ
	[ATTACHMENTNAME]  nvarchar(100)  NULL,--������
	[ATTACHMENT]  nvarchar(300)  NULL,--����
	[CHICKNUB]  int  NULL,--�����
	[AUDITSTATU]  int  NOT NULL,--���״̬
	[AUDITOR]  nvarchar(50)  NULL,--�����ID
	[AUDITORNAME]  nvarchar(50)  NULL,--�����
	[AUDITTIME]  datetime  NOT NULL,--���ʱ��
	[REMARK]  nvarchar(300)  NULL,--��ע
	[SUMMARY]  text  NULL,--ժҪ
	[DISPLAYTYPE]  int  NOT NULL,--������
	[OPENFLAG]  int  NOT NULL,--����״̬
	[LLQX]  nvarchar(50)  NULL,--���Ȩ��
CONSTRAINT [PK_EDU_ZYZX_MHXT_WZWZ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC,
	[WEBID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�������۱�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZYZX_MHXT_WZPJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZYZX_MHXT_WZPJ](
	[ID]  int  NOT NULL,--����ID
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[WEBID]  int  NOT NULL,--��վID
	[WZID]  int  NOT NULL,--��վ����ID
	[PJR]  nvarchar(50)  NOT NULL,--������
	[YJDZ]  nvarchar(40)  NOT NULL,--�ʼ���ַ
	[PJSJ]  datetime  NOT NULL,--����ʱ��
	[PJNR]  text  NOT NULL,--��������
	[PJZT]  int  NOT NULL,--����״̬
	[SHR]  nvarchar(50)  NULL,--�����
	[HF]  text  NOT NULL,--�ظ�
CONSTRAINT [PK_EDU_ZYZX_MHXT_WZPJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--��վ����
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZYZX_MHXT_WZPZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZYZX_MHXT_WZPZ](
	[WEBID]  int  NOT NULL,--��վID
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[WEBNAME]  nvarchar(500)  NOT NULL,--��վ��
	[STATUID]  int  NOT NULL,--�Ƿ���
	[WEBURL]  nvarchar(500)  NOT NULL,--��ַ
	[CSSID]  int  NOT NULL,--��վ��ʽ
CONSTRAINT [PK_EDU_ZYZX_MHXT_WZPZ] PRIMARY KEY CLUSTERED
(
	[WEBID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--����IP����
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZYZX_MHXT_NWIP]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZYZX_MHXT_NWIP](
	[ID]  int  NOT NULL,--����IP����ID
	[WEBID]  int  NOT NULL,--��վID
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[IP]  nvarchar(40)  NOT NULL,--IP��ַ
CONSTRAINT [PK_EDU_ZYZX_MHXT_NWIP] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[WEBID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--��վ��Ŀ��������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZYZX_MHXT_WZLM]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZYZX_MHXT_WZLM](
	[ID]  int  NOT NULL,--��վ��Ŀ��������ID
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[WEBID]  int  NOT NULL,--��վID
	[LMSHOWSTYLE]  int  NOT NULL,--��Ŀʹ������
	[NAME]  nvarchar(50)  NOT NULL,--��Ŀ����
	[URL]  nvarchar(300)  NULL,--��Ŀ����
	[IMAGEURL]  nvarchar(300)  NULL,--ͼƬ����
	[DEPTH]  int  NOT NULL,--�㼶
	[PID]  int  NOT NULL,--��Ŀ¼
	[LISTSHOWSTYLE]  int  NULL,--�б���ʾ��ʽ
	[ORDERTYPE]  int  NOT NULL,--����ʽ
	[SHOWNUMBER]  int  NOT NULL,--��ʾ����
	[OPENFLAG]  int  NOT NULL,--����״̬
	[LLQX]  nvarchar(50)  NULL,--���Ȩ��
CONSTRAINT [PK_EDU_ZYZX_MHXT_WZLM] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC,
	[WEBID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--��վ���
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZYZX_MHXT_WZGG]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZYZX_MHXT_WZGG](
	[ID]  int  NOT NULL,--��վ���ID
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[WEBID]  int  NOT NULL,--��վID
	[SHOWTYPE]  int  NOT NULL,--��ʾ��ʽ
	[ADCONTENT]  text  NULL,--�������
	[GGLJ]  nvarchar(150)  NULL,--�������
	[SHOWSTATU]  int  NOT NULL,--�Ƿ���ʾ
CONSTRAINT [PK_EDU_ZYZX_MHXT_WZGG] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC,
	[WEBID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--��������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZYZX_MHXT_FWLL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZYZX_MHXT_FWLL](
	[ID]  int  NOT NULL,--��������ID
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[WEBID]  int  NOT NULL,--��վID
	[ACCESSIP]  nvarchar(150)  NOT NULL,--����IP
	[ACCESSURL]  nvarchar(500)  NOT NULL,--��������
	[ACCESSTIME]  datetime  NOT NULL,--����ʱ��
CONSTRAINT [PK_EDU_ZYZX_MHXT_FWLL] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC,
	[WEBID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--����Ȩ��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZYZX_MHXT_FBQX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZYZX_MHXT_FBQX](
	[ID]  int  NOT NULL,--����Ȩ��ID
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[WEBID]  int  NOT NULL,--��վID
	[LOGINNAME]  nvarchar(50)  NOT NULL,--�û���
	[LMLIST]  text  NOT NULL,--��Ŀ
	[LMNAMELIST]  text  NULL,--��Ŀ����
CONSTRAINT [PK_EDU_ZYZX_MHXT_FBQX] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC,
	[WEBID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--����Ϊ���ע�����
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��վ��Ա' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_VIP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_VIP', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��վID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_VIP', @level2type=N'COLUMN',@level2name=N'WEBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�û���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_VIP', @level2type=N'COLUMN',@level2name=N'LOGINNAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_VIP', @level2type=N'COLUMN',@level2name=N'LOGINPWD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_VIP', @level2type=N'COLUMN',@level2name=N'REALNAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_VIP', @level2type=N'COLUMN',@level2name=N'EMAIL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ϵ�绰' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_VIP', @level2type=N'COLUMN',@level2name=N'MOBILE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'QQ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_VIP', @level2type=N'COLUMN',@level2name=N'QQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_VIP', @level2type=N'COLUMN',@level2name=N'AUDITSTATU'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_VIP', @level2type=N'COLUMN',@level2name=N'AUDITOR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_VIP', @level2type=N'COLUMN',@level2name=N'AUDITORNAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ͶƱ��ʽ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_TPXT_TPYS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʽID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_TPXT_TPYS', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_TPXT_TPYS', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��վID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_TPXT_TPYS', @level2type=N'COLUMN',@level2name=N'WEBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʽ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_TPXT_TPYS', @level2type=N'COLUMN',@level2name=N'NAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ч��ͼ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_TPXT_TPYS', @level2type=N'COLUMN',@level2name=N'SHOWIMG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ͶƱ��Ŀѡ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_TPXT_TPXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ͶƱ��Ŀѡ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_TPXT_TPXX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_TPXT_TPXX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��վID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_TPXT_TPXX', @level2type=N'COLUMN',@level2name=N'WEBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ͶƱ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_TPXT_TPXX', @level2type=N'COLUMN',@level2name=N'TPID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ͶƱ��Ŀ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_TPXT_TPXX', @level2type=N'COLUMN',@level2name=N'TMID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_TPXT_TPXX', @level2type=N'COLUMN',@level2name=N'TITLE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ѡ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_TPXT_TPXX', @level2type=N'COLUMN',@level2name=N'SUMTP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ͶƱ��Ŀ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_TPXT_TPTM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ͶƱ��ĿID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_TPXT_TPTM', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_TPXT_TPTM', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��վID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_TPXT_TPTM', @level2type=N'COLUMN',@level2name=N'WEBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ͶƱ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_TPXT_TPTM', @level2type=N'COLUMN',@level2name=N'TPID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ͶƱ��ʽ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_TPXT_TPTM', @level2type=N'COLUMN',@level2name=N'TYPEID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_TPXT_TPTM', @level2type=N'COLUMN',@level2name=N'TITLE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_TPXT_TPTM', @level2type=N'COLUMN',@level2name=N'CONTENT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ͶƱ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_TPXT_TPSZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ͶƱ����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_TPXT_TPSZ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_TPXT_TPSZ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��վID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_TPXT_TPSZ', @level2type=N'COLUMN',@level2name=N'WEBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_TPXT_TPSZ', @level2type=N'COLUMN',@level2name=N'TITLE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_TPXT_TPSZ', @level2type=N'COLUMN',@level2name=N'CONTENT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʾ��ʽ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_TPXT_TPSZ', @level2type=N'COLUMN',@level2name=N'SHOWSTYLEID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʾ��ʽ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_TPXT_TPSZ', @level2type=N'COLUMN',@level2name=N'CSSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ͶƱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_TPXT_TPSZ', @level2type=N'COLUMN',@level2name=N'LOGINNAMELIST'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_TPXT_TPSZ', @level2type=N'COLUMN',@level2name=N'STARTSTATU'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ͶƱ��¼' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_TPXT_TPJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ͶƱ��¼ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_TPXT_TPJL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_TPXT_TPJL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��վID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_TPXT_TPJL', @level2type=N'COLUMN',@level2name=N'WEBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ͶƱ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_TPXT_TPJL', @level2type=N'COLUMN',@level2name=N'TPID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ͶƱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_TPXT_TPJL', @level2type=N'COLUMN',@level2name=N'TPIP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ͶƱʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_TPXT_TPJL', @level2type=N'COLUMN',@level2name=N'TPTIME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_YQLJLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_YQLJLX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_YQLJLX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��վID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_YQLJLX', @level2type=N'COLUMN',@level2name=N'WEBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_YQLJLX', @level2type=N'COLUMN',@level2name=N'NAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʾ��ʽ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_YQLJLX', @level2type=N'COLUMN',@level2name=N'SHOWSTYLE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_YQLJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_YQLJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_YQLJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��վID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_YQLJ', @level2type=N'COLUMN',@level2name=N'WEBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_YQLJ', @level2type=N'COLUMN',@level2name=N'TITLE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_YQLJ', @level2type=N'COLUMN',@level2name=N'TYPEID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ͼƬ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_YQLJ', @level2type=N'COLUMN',@level2name=N'IMAGEURL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_YQLJ', @level2type=N'COLUMN',@level2name=N'URL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʽ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZYS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʽ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZYS', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZYS', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��վID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZYS', @level2type=N'COLUMN',@level2name=N'WEBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʽ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZYS', @level2type=N'COLUMN',@level2name=N'NAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ч��ͼ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZYS', @level2type=N'COLUMN',@level2name=N'SHOWIMG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��վ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZWZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��վ����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZWZ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZWZ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��վID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZWZ', @level2type=N'COLUMN',@level2name=N'WEBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZWZ', @level2type=N'COLUMN',@level2name=N'TYPENAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ŀ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZWZ', @level2type=N'COLUMN',@level2name=N'LMID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZWZ', @level2type=N'COLUMN',@level2name=N'TITLE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZWZ', @level2type=N'COLUMN',@level2name=N'PUBLISHERNAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZWZ', @level2type=N'COLUMN',@level2name=N'AUTHOR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���߲���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZWZ', @level2type=N'COLUMN',@level2name=N'AUTHORDEPART'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZWZ', @level2type=N'COLUMN',@level2name=N'PUBLISHDATE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZWZ', @level2type=N'COLUMN',@level2name=N'CONTENT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZWZ', @level2type=N'COLUMN',@level2name=N'URL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ͼƬ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZWZ', @level2type=N'COLUMN',@level2name=N'IMAGEURL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZWZ', @level2type=N'COLUMN',@level2name=N'ATTACHMENTNAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZWZ', @level2type=N'COLUMN',@level2name=N'ATTACHMENT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZWZ', @level2type=N'COLUMN',@level2name=N'CHICKNUB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZWZ', @level2type=N'COLUMN',@level2name=N'AUDITSTATU'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZWZ', @level2type=N'COLUMN',@level2name=N'AUDITOR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZWZ', @level2type=N'COLUMN',@level2name=N'AUDITORNAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZWZ', @level2type=N'COLUMN',@level2name=N'AUDITTIME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZWZ', @level2type=N'COLUMN',@level2name=N'REMARK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ժҪ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZWZ', @level2type=N'COLUMN',@level2name=N'SUMMARY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZWZ', @level2type=N'COLUMN',@level2name=N'DISPLAYTYPE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZWZ', @level2type=N'COLUMN',@level2name=N'OPENFLAG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���Ȩ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZWZ', @level2type=N'COLUMN',@level2name=N'LLQX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������۱�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZPJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZPJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZPJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��վID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZPJ', @level2type=N'COLUMN',@level2name=N'WEBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��վ����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZPJ', @level2type=N'COLUMN',@level2name=N'WZID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZPJ', @level2type=N'COLUMN',@level2name=N'PJR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ʼ���ַ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZPJ', @level2type=N'COLUMN',@level2name=N'YJDZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZPJ', @level2type=N'COLUMN',@level2name=N'PJSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZPJ', @level2type=N'COLUMN',@level2name=N'PJNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZPJ', @level2type=N'COLUMN',@level2name=N'PJZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZPJ', @level2type=N'COLUMN',@level2name=N'SHR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ظ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZPJ', @level2type=N'COLUMN',@level2name=N'HF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��վ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZPZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��վID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZPZ', @level2type=N'COLUMN',@level2name=N'WEBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZPZ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��վ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZPZ', @level2type=N'COLUMN',@level2name=N'WEBNAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZPZ', @level2type=N'COLUMN',@level2name=N'STATUID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ַ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZPZ', @level2type=N'COLUMN',@level2name=N'WEBURL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��վ��ʽ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZPZ', @level2type=N'COLUMN',@level2name=N'CSSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����IP����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_NWIP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����IP����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_NWIP', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��վID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_NWIP', @level2type=N'COLUMN',@level2name=N'WEBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_NWIP', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'IP��ַ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_NWIP', @level2type=N'COLUMN',@level2name=N'IP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��վ��Ŀ��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZLM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��վ��Ŀ��������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZLM', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZLM', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��վID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZLM', @level2type=N'COLUMN',@level2name=N'WEBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ŀʹ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZLM', @level2type=N'COLUMN',@level2name=N'LMSHOWSTYLE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ŀ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZLM', @level2type=N'COLUMN',@level2name=N'NAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ŀ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZLM', @level2type=N'COLUMN',@level2name=N'URL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ͼƬ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZLM', @level2type=N'COLUMN',@level2name=N'IMAGEURL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�㼶' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZLM', @level2type=N'COLUMN',@level2name=N'DEPTH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ŀ¼' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZLM', @level2type=N'COLUMN',@level2name=N'PID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�б���ʾ��ʽ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZLM', @level2type=N'COLUMN',@level2name=N'LISTSHOWSTYLE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʽ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZLM', @level2type=N'COLUMN',@level2name=N'ORDERTYPE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʾ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZLM', @level2type=N'COLUMN',@level2name=N'SHOWNUMBER'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZLM', @level2type=N'COLUMN',@level2name=N'OPENFLAG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���Ȩ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZLM', @level2type=N'COLUMN',@level2name=N'LLQX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��վ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZGG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��վ���ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZGG', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZGG', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��վID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZGG', @level2type=N'COLUMN',@level2name=N'WEBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʾ��ʽ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZGG', @level2type=N'COLUMN',@level2name=N'SHOWTYPE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZGG', @level2type=N'COLUMN',@level2name=N'ADCONTENT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZGG', @level2type=N'COLUMN',@level2name=N'GGLJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ���ʾ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_WZGG', @level2type=N'COLUMN',@level2name=N'SHOWSTATU'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_FWLL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_FWLL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_FWLL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��վID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_FWLL', @level2type=N'COLUMN',@level2name=N'WEBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����IP' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_FWLL', @level2type=N'COLUMN',@level2name=N'ACCESSIP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_FWLL', @level2type=N'COLUMN',@level2name=N'ACCESSURL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_FWLL', @level2type=N'COLUMN',@level2name=N'ACCESSTIME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����Ȩ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_FBQX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����Ȩ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_FBQX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_FBQX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��վID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_FBQX', @level2type=N'COLUMN',@level2name=N'WEBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�û���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_FBQX', @level2type=N'COLUMN',@level2name=N'LOGINNAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ŀ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_FBQX', @level2type=N'COLUMN',@level2name=N'LMLIST'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ŀ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZYZX_MHXT_FBQX', @level2type=N'COLUMN',@level2name=N'LMNAMELIST'
GO
--�ռ�����EDU_ZZFC  ��������SqlBuilder0.1

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZFC_02_01_JZWJBSJ')
            and   type = 'U')
   drop table EDU_ZZFC_02_01_JZWJBSJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZFC_08_01_XSSS')
            and   type = 'U')
   drop table EDU_ZZFC_08_01_XSSS
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZFC_08_A01_SSCW')
            and   type = 'U')
   drop table EDU_ZZFC_08_A01_SSCW
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZFC_08_A02_YHZSJL')
            and   type = 'U')
   drop table EDU_ZZFC_08_A02_YHZSJL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZFC_08_A03_ZWHCY')
            and   type = 'U')
   drop table EDU_ZZFC_08_A03_ZWHCY
go
--����������������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZFC_02_01_JZWJBSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZFC_02_01_JZWJBSJ](
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[ID]  int  NOT NULL,--������ID
	[JZWH]  nvarchar(6)  NOT NULL,--�������
	[JZWMC]  nvarchar(30)  NOT NULL,--����������
	[SYZKM]  nvarchar(1)  NOT NULL,--ʹ��״����
	[FWCQ]  nvarchar(1)  NOT NULL,--���ݲ�Ȩ
	[XQH]  nvarchar(2)  NULL,--У����
	[JZWFLM]  nvarchar(1)  NOT NULL,--�����������
	[JZWJGM]  nvarchar(1)  NOT NULL,--������ṹ��
	[JZWCS]  decimal(2, 0)  NOT NULL,--���������
	[JCNY]  nvarchar(6)  NULL,--��������
	[JZWTZZE]  money  NULL,--������Ͷ���ܶ�
	[JFLYM]  nvarchar(1)  NULL,--������Դ��
	[ZJZMJ]  decimal(10, 2)  NOT NULL,--�ܽ������
	[ZSYMJ]  decimal(10, 2)  NOT NULL,--��ʹ�����
	[KZSFLDM]  nvarchar(1)  NULL,--��������Ҷ���
	[KZSFBZM]  nvarchar(1)  NOT NULL,--���������׼��
	[JZWDZ]  nvarchar(180)  NOT NULL,--�������ַ
	[JZWZKM]  nvarchar(2)  NOT NULL,--������״����
	[JZWTP]  nvarchar(200)  NULL,--������ͼƬ
	[JZWPMT]  nvarchar(200)  NULL,--������ƽ��ͼ
	[XXDWCCM]  nvarchar(1)  NULL,--ѧУ��λ�����
	[JZWWZZK]  nvarchar(1)  NOT NULL,--������λ��״��
	[GHSPWH]  nvarchar(24)  NOT NULL,--�滮�����ĺ�
	[ZHFZNL]  nvarchar(60)  NULL,--�ۺϷ�������
	[GHSYNX]  decimal(3, 0)  NULL,--�滮ʹ������
	[SFYYJBXCS]  nvarchar(1)  NULL,--�Ƿ���Ԥ�����մ�ʩ
	[SFKYYYJBNCS]  nvarchar(1)  NULL,--�Ƿ������Ӧ�����ѳ���
	[CQZH]  nvarchar(20)  NOT NULL,--��Ȩ֤��
	[JZWYTM]  nvarchar(2)  NULL,--��������;��
	[JZWZGD]  decimal(3, 0)  NULL,--�������ܸ߶�
	[WFJDBM]  nvarchar(60)  NULL,--Σ����������
	[WFJDWH]  nvarchar(20)  NULL,--Σ�������ĺ�
	[WFJDRQ]  nvarchar(8)  NULL,--Σ����������
	[GNFSM]  nvarchar(1)  NULL,--��ů��ʽ��
	[JZWJCXSM]  nvarchar(2)  NULL,--�����������ʽ��
	[JZWPMXSM]  nvarchar(1)  NULL,--������ƽ����ʽ��
	[JZWLBXSM]  nvarchar(1)  NULL,--������¥����ʽ��
	[SFYGZZ]  nvarchar(1)  NOT NULL,--�Ƿ��й�����
	[QL]  nvarchar(1)  NOT NULL,--Ȧ��
	[ZJAQGZWCRQ]  nvarchar(8)  NULL,--�����ȫ�����������
	[ZJAQGZHYJSYNX]  decimal(2, 0)  NULL,--�����ȫ�����Ԥ��ʹ������
	[ZXLXM]  nvarchar(1)  NULL,--ר������
	[ZYZXTZBZMCM]  nvarchar(1)  NULL,--����ר��Ͷ�ʲ���������
	[WWJZDJM]  nvarchar(1)  NULL,--���ｨ���ȼ���
	[JXJFZYF]  decimal(8, 0)  NOT NULL,--��ѧ�������÷�
	[QZJS]  decimal(8, 0)  NOT NULL,--���н���
	[QZSYS]  decimal(8, 0)  NOT NULL,--����ʵ����
	[QZTSS]  decimal(8, 0)  NOT NULL,--����ͼ����
	[QZWJS]  decimal(8, 0)  NOT NULL,--����΢����
	[QZYYS]  decimal(8, 0)  NOT NULL,--����������
	[QZTYHDS]  decimal(8, 0)  NOT NULL,--�����������
	[QZQTJFYF]  decimal(8, 0)  NOT NULL,--���������̸��÷�
	[SHYF]  decimal(8, 0)  NOT NULL,--�����÷�
	[QZXSSS]  decimal(8, 0)  NOT NULL,--����ѧ������
	[QZST]  decimal(8, 0)  NOT NULL,--����ʳ��
	[QZCS]  decimal(8, 0)  NOT NULL,--���в���
	[QZGLF]  decimal(8, 0)  NOT NULL,--���й�¯��(��ˮ��)
	[QZYS]  decimal(8, 0)  NOT NULL,--����ԡ��
	[QZJGSS]  decimal(8, 0)  NOT NULL,--���н̹�����
	[QZQTSHYF]  decimal(8, 0)  NOT NULL,--�������������÷�
	[XZBGYF]  decimal(8, 0)  NOT NULL,--�����칫�÷�
	[QZJSBGS]  decimal(8, 0)  NOT NULL,--���н�ְ���칫��
	[QZWSBJS]  decimal(8, 0)  NOT NULL,--��������������
	[QZQTXZBGYF]  decimal(8, 0)  NOT NULL,--�������������칫�÷�
	[QTYF]  decimal(8, 0)  NOT NULL,--�����÷�
	[GLY]  nvarchar(20)  NOT NULL,--����Ա
CONSTRAINT [PK_EDU_ZZFC_02_01_JZWJBSJ] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ѧ�������������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZFC_08_01_XSSS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZFC_08_01_XSSS](
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[ID]  int  NOT NULL,--����ID
	[SSLID]  int  NOT NULL,--����¥ID
	[SSLBM]  nvarchar(6)  NOT NULL,--����¥���
	[FJBM]  nvarchar(10)  NOT NULL,--������
	[RZXB]  nvarchar(1)  NOT NULL,--��ס�Ա�
	[SFKY]  nvarchar(1)  NOT NULL,--�Ƿ����
	[KZRS]  decimal(2, 0)  NOT NULL,--��ס����
	[WLDK]  nvarchar(20)  NULL,--����˿�
	[AZDSJ]  nvarchar(1)  NULL,--��װ���ӻ�
	[DHDK]  nvarchar(20)  NULL,--�绰�˿�
	[DHHM]  nvarchar(20)  NULL,--�绰����
	[SBDS]  decimal(10, 0)  NULL,--ˮ�����
	[DBDS]  decimal(10, 0)  NULL,--������
	[SSBZ]  text  NULL,--���ᱸע
	[SZLZ]  int  NOT NULL,--����¥��
	[SSM]  nvarchar(128)  NOT NULL,--������
CONSTRAINT [PK_EDU_ZZFC_08_01_XSSS] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--���ᴲλ��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZFC_08_A01_SSCW]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZFC_08_A01_SSCW](
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[ID]  int  NOT NULL,--��λID
	[SSLID]  int  NOT NULL,--����¥ID
	[SSID]  int  NOT NULL,--����ID
	[CWM]  nvarchar(128)  NOT NULL,--��λ��
	[BZ]  text  NOT NULL,--��ע
	[SFRZ]  nvarchar(1)  NOT NULL,--�Ƿ���ס
CONSTRAINT [PK_EDU_ZZFC_08_A01_SSCW] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�û�ס�޼�¼��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZFC_08_A02_YHZSJL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZFC_08_A02_YHZSJL](
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[ID]  int  NOT NULL,--ס�޼�¼ID
	[YHID]  int  NOT NULL,--�û�ID
	[SSLID]  int  NOT NULL,--����¥ID
	[SSID]  int  NOT NULL,--����ID
	[CWID]  int  NOT NULL,--��λID
	[YHXM]  nvarchar(128)  NULL,--�û�����
	[RZRLX]  int  NOT NULL,--��ס������
	[RZSJ]  datetime  NOT NULL,--��סʱ��
	[SHZT]  int  NOT NULL,--���״̬
	[SHSJ]  datetime  NOT NULL,--���ʱ��
	[SHR]  nvarchar(128)  NOT NULL,--�����
CONSTRAINT [PK_EDU_ZZFC_08_A02_YHZSJL] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--סί���Ա��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZFC_08_A03_ZWHCY]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZFC_08_A03_ZWHCY](
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[ID]  int  NOT NULL,--��ԱID
	[YHID]  int  NOT NULL,--�û�ID
	[YHLX]  int  NOT NULL,--�û�����
	[CYXM]  nvarchar(128)  NULL,--��Ա����
	[TJSJ]  datetime  NOT NULL,--���ʱ��
	[ZWMC]  nvarchar(128)  NOT NULL,--ְλ����
	[GZNR]  nvarchar(500)  NOT NULL,--��������
CONSTRAINT [PK_EDU_ZZFC_08_A03_ZWHCY] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--����Ϊ���ע�����
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����������������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'JZWH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'JZWMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ʹ��״����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'SYZKM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ݲ�Ȩ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'FWCQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'У����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'XQH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'JZWFLM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ṹ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'JZWJGM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'JZWCS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'JCNY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������Ͷ���ܶ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'JZWTZZE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������Դ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'JFLYM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ܽ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'ZJZMJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʹ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'ZSYMJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������Ҷ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'KZSFLDM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���������׼��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'KZSFBZM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������ַ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'JZWDZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������״����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'JZWZKM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ͼƬ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'JZWTP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ƽ��ͼ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'JZWPMT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��λ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'XXDWCCM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������λ��״��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'JZWWZZK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�滮�����ĺ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'GHSPWH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ۺϷ�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'ZHFZNL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�滮ʹ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'GHSYNX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ���Ԥ�����մ�ʩ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'SFYYJBXCS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ������Ӧ�����ѳ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'SFKYYYJBNCS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ȩ֤��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'CQZH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������;��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'JZWYTM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������ܸ߶�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'JZWZGD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Σ����������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'WFJDBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Σ�������ĺ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'WFJDWH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Σ����������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'WFJDRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ů��ʽ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'GNFSM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����������ʽ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'JZWJCXSM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ƽ����ʽ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'JZWPMXSM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������¥����ʽ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'JZWLBXSM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ��й�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'SFYGZZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ȧ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'QL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����ȫ�����������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'ZJAQGZWCRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����ȫ�����Ԥ��ʹ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'ZJAQGZHYJSYNX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ר������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'ZXLXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ר��Ͷ�ʲ���������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'ZYZXTZBZMCM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ｨ���ȼ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'WWJZDJM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ѧ�������÷�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'JXJFZYF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���н���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'QZJS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʵ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'QZSYS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ͼ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'QZTSS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����΢����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'QZWJS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'QZYYS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'QZTYHDS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���������̸��÷�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'QZQTJFYF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����÷�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'SHYF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ѧ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'QZXSSS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʳ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'QZST'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���в���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'QZCS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���й�¯��(��ˮ��)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'QZGLF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ԡ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'QZYS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���н̹�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'QZJGSS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������������÷�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'QZQTSHYF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����칫�÷�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'XZBGYF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���н�ְ���칫��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'QZJSBGS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'QZWSBJS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������������칫�÷�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'QZQTXZBGYF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����÷�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'QTYF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����Ա' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'GLY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ�������������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_01_XSSS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_01_XSSS', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_01_XSSS', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����¥ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_01_XSSS', @level2type=N'COLUMN',@level2name=N'SSLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����¥���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_01_XSSS', @level2type=N'COLUMN',@level2name=N'SSLBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_01_XSSS', @level2type=N'COLUMN',@level2name=N'FJBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ס�Ա�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_01_XSSS', @level2type=N'COLUMN',@level2name=N'RZXB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_01_XSSS', @level2type=N'COLUMN',@level2name=N'SFKY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ס����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_01_XSSS', @level2type=N'COLUMN',@level2name=N'KZRS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����˿�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_01_XSSS', @level2type=N'COLUMN',@level2name=N'WLDK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��װ���ӻ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_01_XSSS', @level2type=N'COLUMN',@level2name=N'AZDSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�绰�˿�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_01_XSSS', @level2type=N'COLUMN',@level2name=N'DHDK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�绰����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_01_XSSS', @level2type=N'COLUMN',@level2name=N'DHHM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ˮ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_01_XSSS', @level2type=N'COLUMN',@level2name=N'SBDS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_01_XSSS', @level2type=N'COLUMN',@level2name=N'DBDS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ᱸע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_01_XSSS', @level2type=N'COLUMN',@level2name=N'SSBZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����¥��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_01_XSSS', @level2type=N'COLUMN',@level2name=N'SZLZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_01_XSSS', @level2type=N'COLUMN',@level2name=N'SSM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ᴲλ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_A01_SSCW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_A01_SSCW', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��λID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_A01_SSCW', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����¥ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_A01_SSCW', @level2type=N'COLUMN',@level2name=N'SSLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_A01_SSCW', @level2type=N'COLUMN',@level2name=N'SSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��λ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_A01_SSCW', @level2type=N'COLUMN',@level2name=N'CWM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_A01_SSCW', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ���ס' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_A01_SSCW', @level2type=N'COLUMN',@level2name=N'SFRZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�û�ס�޼�¼��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_A02_YHZSJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_A02_YHZSJL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ס�޼�¼ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_A02_YHZSJL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�û�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_A02_YHZSJL', @level2type=N'COLUMN',@level2name=N'YHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����¥ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_A02_YHZSJL', @level2type=N'COLUMN',@level2name=N'SSLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_A02_YHZSJL', @level2type=N'COLUMN',@level2name=N'SSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��λID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_A02_YHZSJL', @level2type=N'COLUMN',@level2name=N'CWID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�û�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_A02_YHZSJL', @level2type=N'COLUMN',@level2name=N'YHXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ס������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_A02_YHZSJL', @level2type=N'COLUMN',@level2name=N'RZRLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��סʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_A02_YHZSJL', @level2type=N'COLUMN',@level2name=N'RZSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_A02_YHZSJL', @level2type=N'COLUMN',@level2name=N'SHZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_A02_YHZSJL', @level2type=N'COLUMN',@level2name=N'SHSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_A02_YHZSJL', @level2type=N'COLUMN',@level2name=N'SHR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'סί���Ա��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_A03_ZWHCY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_A03_ZWHCY', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ԱID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_A03_ZWHCY', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�û�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_A03_ZWHCY', @level2type=N'COLUMN',@level2name=N'YHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�û�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_A03_ZWHCY', @level2type=N'COLUMN',@level2name=N'YHLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ա����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_A03_ZWHCY', @level2type=N'COLUMN',@level2name=N'CYXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_A03_ZWHCY', @level2type=N'COLUMN',@level2name=N'TJSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ְλ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_A03_ZWHCY', @level2type=N'COLUMN',@level2name=N'ZWMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_A03_ZWHCY', @level2type=N'COLUMN',@level2name=N'GZNR'
GO
--�ռ�����EDU_ZZJG  ��������SqlBuilder0.1

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJG_01_01_JZGJBSJ')
            and   type = 'U')
   drop table EDU_ZZJG_01_01_JZGJBSJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJG_01_A01_JZGKZ')
            and   type = 'U')
   drop table EDU_ZZJG_01_A01_JZGKZ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJG_02_02_XNGWSJ')
            and   type = 'U')
   drop table EDU_ZZJG_02_02_XNGWSJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJG_04_A01_JBDJ')
            and   type = 'U')
   drop table EDU_ZZJG_04_A01_JBDJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJG_07_01_JZGZYNL')
            and   type = 'U')
   drop table EDU_ZZJG_07_01_JZGZYNL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJG_11_A01_KPFZ')
            and   type = 'U')
   drop table EDU_ZZJG_11_A01_KPFZ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJG_11_A02_KPXX')
            and   type = 'U')
   drop table EDU_ZZJG_11_A02_KPXX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJG_11_A03_KPFS')
            and   type = 'U')
   drop table EDU_ZZJG_11_A03_KPFS
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJG_11_A04_KPSJ')
            and   type = 'U')
   drop table EDU_ZZJG_11_A04_KPSJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJG_11_A05_KPNRSJ')
            and   type = 'U')
   drop table EDU_ZZJG_11_A05_KPNRSJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJG_11_A06_KPNRXM')
            and   type = 'U')
   drop table EDU_ZZJG_11_A06_KPNRXM
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJG_11_A07_KPBHNR')
            and   type = 'U')
   drop table EDU_ZZJG_11_A07_KPBHNR
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJG_11_A08_KPRY')
            and   type = 'U')
   drop table EDU_ZZJG_11_A08_KPRY
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJG_11_A09_KPJG')
            and   type = 'U')
   drop table EDU_ZZJG_11_A09_KPJG
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJG_12_A01_XCLX')
            and   type = 'U')
   drop table EDU_ZZJG_12_A01_XCLX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJG_12_A02_XC')
            and   type = 'U')
   drop table EDU_ZZJG_12_A02_XC
go
--��ְ���������������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJG_01_01_JZGJBSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJG_01_01_JZGJBSJ](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[GH]  nvarchar(20)  NULL,--����
	[XM]  nvarchar(36)  NOT NULL,--����
	[YWXM]  nvarchar(60)  NULL,--Ӣ������
	[XMPY]  nvarchar(60)  NOT NULL,--����ƴ��
	[CYM]  nvarchar(36)  NULL,--������
	[SFZJLXM]  nvarchar(1)  NOT NULL,--���֤��������
	[SFZJH]  nvarchar(20)  NOT NULL,--���֤����
	[CSRQ]  nvarchar(8)  NOT NULL,--��������
	[XBM]  nvarchar(1)  NOT NULL,--�Ա���
	[MZM]  nvarchar(2)  NOT NULL,--������
	[XXM]  nvarchar(1)  NULL,--Ѫ����
	[JKZKM]  nvarchar(1)  NULL,--����״����
	[HYZTM]  nvarchar(2)  NOT NULL,--����״̬��
	[ZZMMM]  nvarchar(2)  NOT NULL,--������ò��
	[GATQWM]  nvarchar(2)  NULL,--�۰�̨������
	[JG]  nvarchar(20)  NOT NULL,--����
	[GJDQM]  nvarchar(3)  NULL,--����/������
	[CSDXZQHM]  nvarchar(6)  NOT NULL,--����������������
	[XYZJM]  nvarchar(2)  NULL,--�����ڽ���
	[JZGHKSZDXZQHM]  nvarchar(6)  NOT NULL,--��ְ���������ڵ�����������
	[HKLBM]  nvarchar(1)  NOT NULL,--���������
	[DQZZ]  nvarchar(180)  NOT NULL,--��ǰסַ
	[DQZZYZBM]  nvarchar(6)  NOT NULL,--��ǰסַ��������
	[CJGZNY]  nvarchar(6)  NOT NULL,--�μӹ�������
	[CJNY]  nvarchar(6)  NOT NULL,--�ӽ�����
	[LXNY]  nvarchar(6)  NOT NULL,--��У����
	[BZLBM]  nvarchar(2)  NOT NULL,--���������
	[JZGLBM]  nvarchar(2)  NOT NULL,--��ְ�������
	[GWLBM]  nvarchar(1)  NOT NULL,--��λ�����
	[SFJZJS]  nvarchar(1)  NOT NULL,--�Ƿ��ְ��ʦ
	[SFSSXJS]  nvarchar(1)  NOT NULL,--�Ƿ�˫ʦ�ͽ�ʦ
	[ZP]  nvarchar(100)  NULL,--��Ƭ(·��)
	[DQZTM]  nvarchar(2)  NOT NULL,--��ǰ״̬��
	[YDDH]  nvarchar(30)  NOT NULL,--�ƶ��绰
	[GDDH]  nvarchar(30)  NULL,--�̶��绰
	[TXDZYZBM]  nvarchar(6)  NULL,--ͨ�ŵ�ַ��������
	[TXDZ]  nvarchar(180)  NULL,--ͨ�ŵ�ַ
	[DZXX]  nvarchar(40)  NOT NULL,--��������
	[WLDZ]  nvarchar(60)  NULL,--�����ַ
	[JSTXH]  nvarchar(40)  NULL,--��ʱͨѶ��
CONSTRAINT [PK_EDU_ZZJG_01_01_JZGJBSJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--��ְ����չ��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJG_01_A01_JZGKZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJG_01_A01_JZGKZ](
	[JZGJBSJID]  int  NOT NULL,--�̹�������ϢID
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[JL]  int  NOT NULL,--����
	[GL]  int  NOT NULL,--����
	[GZJY]  text  NOT NULL,--��������
	[LDJN]  text  NOT NULL,--�Ͷ�����
	[XXJL]  text  NOT NULL,--ѧϰ����
CONSTRAINT [PK_EDU_ZZJG_01_A01_JZGKZ] PRIMARY KEY CLUSTERED
(
	[JZGJBSJID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--У�ڸ�λ���������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJG_02_02_XNGWSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJG_02_02_XNGWSJ](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[GWID]  int  NOT NULL,--��λ��ID
	[JZGJBSJID]  int  NOT NULL,--��ְ���������������
	[GWQSNY]  nvarchar(6)  NOT NULL,--��λ��ʼ����
	[GWJSNY]  nvarchar(6)  NOT NULL,--��λ��������
	[SFZG]  nvarchar(1)  NOT NULL,--�Ƿ��ڸ�
	[ZWMC]  nvarchar(10)  NOT NULL,--ְ������
	[JGH]  nvarchar(6)  NOT NULL,--������
CONSTRAINT [PK_EDU_ZZJG_02_02_XNGWSJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�Ӱ�ǼǱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJG_04_A01_JBDJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJG_04_A01_JBDJ](
	[ID]  int  NOT NULL,--�Ӱ�ǼǱ�ID
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[JZGJBSJID]  int  NOT NULL,--��ְ��ID
	[KSSJ]  datetime  NOT NULL,--��ʼʱ��
	[JSSJ]  datetime  NOT NULL,--����ʱ��
	[JBLX]  int  NOT NULL,--�Ӱ�����
CONSTRAINT [PK_EDU_ZZJG_04_A01_JBDJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--��ְ��רҵ�������ʸ�֤���������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJG_07_01_JZGZYNL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJG_07_01_JZGZYNL](
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[JZGJBSJID]  int  NOT NULL,--��ְ��ID
	[ZSMC]  nvarchar(40)  NOT NULL,--֤������
	[ZSBH]  nvarchar(20)  NULL,--֤����
	[ZSBFDW]  nvarchar(60)  NULL,--֤��䷢��λ
	[ZSBFRQ]  nvarchar(8)  NOT NULL,--֤��䷢����
	[ZSBZ]  text  NULL,--֤�鱸ע
	[SFSZYZGZS]  nvarchar(1)  NOT NULL,--�Ƿ���ְҵ�ʸ�֤��
CONSTRAINT [PK_EDU_ZZJG_07_01_JZGZYNL] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[JZGJBSJID] ASC,
	[ZSMC] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--������ֵ��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJG_11_A01_KPFZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJG_11_A01_KPFZ](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[FZMC]  nvarchar(20)  NOT NULL,--��ֵ����
	[FSZ]  int  NOT NULL,--����ֵ
CONSTRAINT [PK_EDU_ZZJG_11_A01_KPFZ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--����ѡ���
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJG_11_A02_KPXX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJG_11_A02_KPXX](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[XXMC]  nvarchar(20)  NOT NULL,--ѡ������
	[KPFSID]  int  NOT NULL,--������ʽID
	[KPFZID]  int  NOT NULL,--������ֵID
CONSTRAINT [PK_EDU_ZZJG_11_A02_KPXX] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--������ʽ��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJG_11_A03_KPFS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJG_11_A03_KPFS](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[KPFSMC]  nvarchar(20)  NOT NULL,--������ʽ����
CONSTRAINT [PK_EDU_ZZJG_11_A03_KPFS] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�������ݱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJG_11_A04_KPSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJG_11_A04_KPSJ](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[XNID]  int  NOT NULL,--ѧ��ID
	[XQID]  int  NOT NULL,--ѧ��ID
	[KPMC]  nvarchar(20)  NOT NULL,--��������
	[BPRIDLB]  text  NOT NULL,--������ID�б�
	[KSSJ]  datetime  NOT NULL,--��ʼʱ��
	[JSSJ]  datetime  NOT NULL,--����ʱ��
	[ZT]  int  NOT NULL,--״̬
CONSTRAINT [PK_EDU_ZZJG_11_A04_KPSJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�����������ݱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJG_11_A05_KPNRSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJG_11_A05_KPNRSJ](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[KPNRMC]  nvarchar(20)  NOT NULL,--������������
	[KPNRLX]  int  NOT NULL,--������������
	[KPZTID]  int  NOT NULL,--��������ID
CONSTRAINT [PK_EDU_ZZJG_11_A05_KPNRSJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--����������Ŀ��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJG_11_A06_KPNRXM]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJG_11_A06_KPNRXM](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[XMMC]  nvarchar(20)  NOT NULL,--��Ŀ����
	[XMXX]  text  NOT NULL,--��Ŀ��Ϣ
	[KPNRID]  int  NOT NULL,--��������ID
	[KPFSID]  int  NOT NULL,--������ʽID
	[QZ]  int  NOT NULL,--Ȩ��
CONSTRAINT [PK_EDU_ZZJG_11_A06_KPNRXM] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�����������ݱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJG_11_A07_KPBHNR]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJG_11_A07_KPBHNR](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[KPID]  int  NOT NULL,--����ID
	[KPNRID]  int  NOT NULL,--��������ID
	[QZ]  int  NOT NULL,--Ȩ��
	[XSFS]  int  NOT NULL,--��ʾ��ʽ
CONSTRAINT [PK_EDU_ZZJG_11_A07_KPBHNR] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--������Ա��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJG_11_A08_KPRY]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJG_11_A08_KPRY](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[KPBHNRID]  int  NOT NULL,--�����������ݱ�ID
	[KPRIDLB]  text  NOT NULL,--������ID�б�
	[BPRIDLB]  text  NOT NULL,--������ID�б�
	[KPZTID]  int  NOT NULL,--��������ID
CONSTRAINT [PK_EDU_ZZJG_11_A08_KPRY] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--���������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJG_11_A09_KPJG]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJG_11_A09_KPJG](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[KPBHNRID]  int  NOT NULL,--�����������ݱ�ID
	[KPNRXMID]  int  NOT NULL,--����������ĿID
	[KPFSID]  int  NOT NULL,--������ʽID
	[KPRID]  int  NOT NULL,--������ID
	[BPRID]  int  NOT NULL,--������ID
	[KPZTID]  int  NOT NULL,--��������ID
	[KPFZ]  int  NOT NULL,--������ֵ
CONSTRAINT [PK_EDU_ZZJG_11_A09_KPJG] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--н�����ͱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJG_12_A01_XCLX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJG_12_A01_XCLX](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[XCLXMC]  nvarchar(30)  NOT NULL,--��������
CONSTRAINT [PK_EDU_ZZJG_12_A01_XCLX] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--н���
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJG_12_A02_XC]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJG_12_A02_XC](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[JZGJBSJID]  int  NOT NULL,--�̹�������ϢID
	[KSSJ]  datetime  NOT NULL,--��ʼʱ��
	[JSSJ]  datetime  NOT NULL,--����ʱ��
	[XCLXID]  int  NOT NULL,--н������ID
	[JE]  decimal(8, 2)  NOT NULL,--���
	[FFSJ]  datetime  NOT NULL,--����ʱ��
CONSTRAINT [PK_EDU_ZZJG_12_A02_XC] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--����Ϊ���ע�����
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ְ���������������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'GH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'XM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ӣ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'YWXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ƴ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'XMPY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'CYM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���֤��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'SFZJLXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���֤����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'SFZJH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'CSRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ա���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'XBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'MZM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ѫ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'XXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����״����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'JKZKM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����״̬��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'HYZTM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ò��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'ZZMMM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�۰�̨������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'GATQWM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'JG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����/������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'GJDQM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����������������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'CSDXZQHM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����ڽ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'XYZJM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ְ���������ڵ�����������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'JZGHKSZDXZQHM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'HKLBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ǰסַ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'DQZZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ǰסַ��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'DQZZYZBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�μӹ�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'CJGZNY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ӽ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'CJNY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��У����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'LXNY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'BZLBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ְ�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'JZGLBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��λ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'GWLBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ��ְ��ʦ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'SFJZJS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ�˫ʦ�ͽ�ʦ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'SFSSXJS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ƭ(·��)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'ZP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ǰ״̬��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'DQZTM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ƶ��绰' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'YDDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�̶��绰' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'GDDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ͨ�ŵ�ַ��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'TXDZYZBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ͨ�ŵ�ַ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'TXDZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'DZXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����ַ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'WLDZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʱͨѶ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'JSTXH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ְ����չ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_A01_JZGKZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�̹�������ϢID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_A01_JZGKZ', @level2type=N'COLUMN',@level2name=N'JZGJBSJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_A01_JZGKZ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_A01_JZGKZ', @level2type=N'COLUMN',@level2name=N'JL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_A01_JZGKZ', @level2type=N'COLUMN',@level2name=N'GL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_A01_JZGKZ', @level2type=N'COLUMN',@level2name=N'GZJY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ͷ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_A01_JZGKZ', @level2type=N'COLUMN',@level2name=N'LDJN'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧϰ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_A01_JZGKZ', @level2type=N'COLUMN',@level2name=N'XXJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'У�ڸ�λ���������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_02_02_XNGWSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_02_02_XNGWSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_02_02_XNGWSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��λ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_02_02_XNGWSJ', @level2type=N'COLUMN',@level2name=N'GWID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ְ���������������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_02_02_XNGWSJ', @level2type=N'COLUMN',@level2name=N'JZGJBSJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��λ��ʼ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_02_02_XNGWSJ', @level2type=N'COLUMN',@level2name=N'GWQSNY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��λ��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_02_02_XNGWSJ', @level2type=N'COLUMN',@level2name=N'GWJSNY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ��ڸ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_02_02_XNGWSJ', @level2type=N'COLUMN',@level2name=N'SFZG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ְ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_02_02_XNGWSJ', @level2type=N'COLUMN',@level2name=N'ZWMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_02_02_XNGWSJ', @level2type=N'COLUMN',@level2name=N'JGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ӱ�ǼǱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_04_A01_JBDJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ӱ�ǼǱ�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_04_A01_JBDJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_04_A01_JBDJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ְ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_04_A01_JBDJ', @level2type=N'COLUMN',@level2name=N'JZGJBSJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʼʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_04_A01_JBDJ', @level2type=N'COLUMN',@level2name=N'KSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_04_A01_JBDJ', @level2type=N'COLUMN',@level2name=N'JSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ӱ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_04_A01_JBDJ', @level2type=N'COLUMN',@level2name=N'JBLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ְ��רҵ�������ʸ�֤���������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_07_01_JZGZYNL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_07_01_JZGZYNL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ְ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_07_01_JZGZYNL', @level2type=N'COLUMN',@level2name=N'JZGJBSJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'֤������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_07_01_JZGZYNL', @level2type=N'COLUMN',@level2name=N'ZSMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'֤����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_07_01_JZGZYNL', @level2type=N'COLUMN',@level2name=N'ZSBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'֤��䷢��λ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_07_01_JZGZYNL', @level2type=N'COLUMN',@level2name=N'ZSBFDW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'֤��䷢����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_07_01_JZGZYNL', @level2type=N'COLUMN',@level2name=N'ZSBFRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'֤�鱸ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_07_01_JZGZYNL', @level2type=N'COLUMN',@level2name=N'ZSBZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ���ְҵ�ʸ�֤��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_07_01_JZGZYNL', @level2type=N'COLUMN',@level2name=N'SFSZYZGZS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ֵ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_11_A01_KPFZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_11_A01_KPFZ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_11_A01_KPFZ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ֵ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_11_A01_KPFZ', @level2type=N'COLUMN',@level2name=N'FZMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ֵ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_11_A01_KPFZ', @level2type=N'COLUMN',@level2name=N'FSZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ѡ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_11_A02_KPXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_11_A02_KPXX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_11_A02_KPXX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѡ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_11_A02_KPXX', @level2type=N'COLUMN',@level2name=N'XXMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ʽID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_11_A02_KPXX', @level2type=N'COLUMN',@level2name=N'KPFSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ֵID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_11_A02_KPXX', @level2type=N'COLUMN',@level2name=N'KPFZID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ʽ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_11_A03_KPFS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_11_A03_KPFS', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_11_A03_KPFS', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ʽ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_11_A03_KPFS', @level2type=N'COLUMN',@level2name=N'KPFSMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������ݱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_11_A04_KPSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_11_A04_KPSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_11_A04_KPSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_11_A04_KPSJ', @level2type=N'COLUMN',@level2name=N'XNID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_11_A04_KPSJ', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_11_A04_KPSJ', @level2type=N'COLUMN',@level2name=N'KPMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ID�б�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_11_A04_KPSJ', @level2type=N'COLUMN',@level2name=N'BPRIDLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʼʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_11_A04_KPSJ', @level2type=N'COLUMN',@level2name=N'KSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_11_A04_KPSJ', @level2type=N'COLUMN',@level2name=N'JSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_11_A04_KPSJ', @level2type=N'COLUMN',@level2name=N'ZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����������ݱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_11_A05_KPNRSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_11_A05_KPNRSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_11_A05_KPNRSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_11_A05_KPNRSJ', @level2type=N'COLUMN',@level2name=N'KPNRMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_11_A05_KPNRSJ', @level2type=N'COLUMN',@level2name=N'KPNRLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_11_A05_KPNRSJ', @level2type=N'COLUMN',@level2name=N'KPZTID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����������Ŀ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_11_A06_KPNRXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_11_A06_KPNRXM', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_11_A06_KPNRXM', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ŀ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_11_A06_KPNRXM', @level2type=N'COLUMN',@level2name=N'XMMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ŀ��Ϣ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_11_A06_KPNRXM', @level2type=N'COLUMN',@level2name=N'XMXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_11_A06_KPNRXM', @level2type=N'COLUMN',@level2name=N'KPNRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ʽID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_11_A06_KPNRXM', @level2type=N'COLUMN',@level2name=N'KPFSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ȩ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_11_A06_KPNRXM', @level2type=N'COLUMN',@level2name=N'QZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����������ݱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_11_A07_KPBHNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_11_A07_KPBHNR', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_11_A07_KPBHNR', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_11_A07_KPBHNR', @level2type=N'COLUMN',@level2name=N'KPID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_11_A07_KPBHNR', @level2type=N'COLUMN',@level2name=N'KPNRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ȩ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_11_A07_KPBHNR', @level2type=N'COLUMN',@level2name=N'QZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʾ��ʽ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_11_A07_KPBHNR', @level2type=N'COLUMN',@level2name=N'XSFS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������Ա��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_11_A08_KPRY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_11_A08_KPRY', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_11_A08_KPRY', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����������ݱ�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_11_A08_KPRY', @level2type=N'COLUMN',@level2name=N'KPBHNRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ID�б�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_11_A08_KPRY', @level2type=N'COLUMN',@level2name=N'KPRIDLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ID�б�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_11_A08_KPRY', @level2type=N'COLUMN',@level2name=N'BPRIDLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_11_A08_KPRY', @level2type=N'COLUMN',@level2name=N'KPZTID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_11_A09_KPJG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_11_A09_KPJG', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_11_A09_KPJG', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����������ݱ�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_11_A09_KPJG', @level2type=N'COLUMN',@level2name=N'KPBHNRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����������ĿID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_11_A09_KPJG', @level2type=N'COLUMN',@level2name=N'KPNRXMID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ʽID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_11_A09_KPJG', @level2type=N'COLUMN',@level2name=N'KPFSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_11_A09_KPJG', @level2type=N'COLUMN',@level2name=N'KPRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_11_A09_KPJG', @level2type=N'COLUMN',@level2name=N'BPRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_11_A09_KPJG', @level2type=N'COLUMN',@level2name=N'KPZTID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ֵ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_11_A09_KPJG', @level2type=N'COLUMN',@level2name=N'KPFZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'н�����ͱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_12_A01_XCLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_12_A01_XCLX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_12_A01_XCLX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_12_A01_XCLX', @level2type=N'COLUMN',@level2name=N'XCLXMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'н���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_12_A02_XC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_12_A02_XC', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_12_A02_XC', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�̹�������ϢID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_12_A02_XC', @level2type=N'COLUMN',@level2name=N'JZGJBSJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʼʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_12_A02_XC', @level2type=N'COLUMN',@level2name=N'KSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_12_A02_XC', @level2type=N'COLUMN',@level2name=N'JSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'н������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_12_A02_XC', @level2type=N'COLUMN',@level2name=N'XCLXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_12_A02_XC', @level2type=N'COLUMN',@level2name=N'JE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_12_A02_XC', @level2type=N'COLUMN',@level2name=N'FFSJ'
GO
--�ռ�����EDU_ZZJX  ��������SqlBuilder0.1

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_01_01_ZYXX')
            and   type = 'U')
   drop table EDU_ZZJX_01_01_ZYXX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_01_A01_KCPJ')
            and   type = 'U')
   drop table EDU_ZZJX_01_A01_KCPJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_01_02_KC')
            and   type = 'U')
   drop table EDU_ZZJX_01_02_KC
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_01_A02_JSRK')
            and   type = 'U')
   drop table EDU_ZZJX_01_A02_JSRK
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_02_01_ZZNJ')
            and   type = 'U')
   drop table EDU_ZZJX_02_01_ZZNJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_02_02_ZZBJ')
            and   type = 'U')
   drop table EDU_ZZJX_02_02_ZZBJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_03_01_ZTJXJH')
            and   type = 'U')
   drop table EDU_ZZJX_03_01_ZTJXJH
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_03_A01_XQXFGL')
            and   type = 'U')
   drop table EDU_ZZJX_03_A01_XQXFGL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_03_02_JXJHFLXFYQ')
            and   type = 'U')
   drop table EDU_ZZJX_03_02_JXJHFLXFYQ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_03_03_JXJHKCQD')
            and   type = 'U')
   drop table EDU_ZZJX_03_03_JXJHKCQD
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_05_02_JSJXGZLTJ')
            and   type = 'U')
   drop table EDU_ZZJX_05_02_JSJXGZLTJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_07_01_XWSXJDXX')
            and   type = 'U')
   drop table EDU_ZZJX_07_01_XWSXJDXX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_07_A01_XXSXJH')
            and   type = 'U')
   drop table EDU_ZZJX_07_A01_XXSXJH
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_07_A02_XXSXJD')
            and   type = 'U')
   drop table EDU_ZZJX_07_A02_XXSXJD
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_07_03_XSXWSXQK')
            and   type = 'U')
   drop table EDU_ZZJX_07_03_XSXWSXQK
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_07_A03_XXSXZY')
            and   type = 'U')
   drop table EDU_ZZJX_07_A03_XXSXZY
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_07_A04_SXGW')
            and   type = 'U')
   drop table EDU_ZZJX_07_A04_SXGW
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_07_A05_XSYP')
            and   type = 'U')
   drop table EDU_ZZJX_07_A05_XSYP
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_07_A06_XQHD')
            and   type = 'U')
   drop table EDU_ZZJX_07_A06_XQHD
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_07_A07_SXZG')
            and   type = 'U')
   drop table EDU_ZZJX_07_A07_SXZG
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_07_A08_SXTS')
            and   type = 'U')
   drop table EDU_ZZJX_07_A08_SXTS
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_07_A09_SXRZ')
            and   type = 'U')
   drop table EDU_ZZJX_07_A09_SXRZ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_07_A10_SXJD')
            and   type = 'U')
   drop table EDU_ZZJX_07_A10_SXJD
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_07_A11_SXJC')
            and   type = 'U')
   drop table EDU_ZZJX_07_A11_SXJC
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_08_A01_DGFSQ')
            and   type = 'U')
   drop table EDU_ZZJX_08_A01_DGFSQ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_09_A01_TKSQSJ')
            and   type = 'U')
   drop table EDU_ZZJX_09_A01_TKSQSJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_10_A01_LWSJ')
            and   type = 'U')
   drop table EDU_ZZJX_10_A01_LWSJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_10_A02_KYHDSJ')
            and   type = 'U')
   drop table EDU_ZZJX_10_A02_KYHDSJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_10_A03_CPXXSJ')
            and   type = 'U')
   drop table EDU_ZZJX_10_A03_CPXXSJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_10_A04_KTSJ')
            and   type = 'U')
   drop table EDU_ZZJX_10_A04_KTSJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_10_A05_KTJDSJ')
            and   type = 'U')
   drop table EDU_ZZJX_10_A05_KTJDSJ
go
--רҵ������Ϣ���ݱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_01_01_ZYXX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_01_01_ZYXX](
	[ZYBH]  int  NOT NULL,--רҵ���
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[ZYDM]  nvarchar(6)  NULL,--רҵ����
	[ZYMC]  nvarchar(50)  NOT NULL,--רҵ����
	[ZYYWMC]  nvarchar(100)  NULL,--רҵӢ������
	[XZ]  nvarchar(20)  NOT NULL,--ѧ��
	[ZYFXMC]  nvarchar(100)  NOT NULL,--רҵ��������
	[ZYJC]  nvarchar(100)  NOT NULL,--רҵ���
	[JLNY]  nvarchar(6)  NOT NULL,--��������
	[ZYJSS]  decimal(2, 0)  NULL,--רҵ��ʦ��
	[KSJGH]  nvarchar(6)  NOT NULL,--���������
	[ZXF]  nvarchar(10)  NOT NULL,--��ѧ��
	[SSZYML]  nvarchar(1)  NULL,--����רҵĿ¼
	[ZYLB]  nvarchar(50)  NOT NULL,--רҵ�������
CONSTRAINT [PK_EDU_ZZJX_01_01_ZYXX] PRIMARY KEY CLUSTERED
(
	[ZYBH] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�γ����۱�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_01_A01_KCPJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_01_A01_KCPJ](
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[PJID]  int  NOT NULL,--����ID
	[KXH]  int  NOT NULL,--�����
	[PJR]  nvarchar(20)  NOT NULL,--������
	[PJSJ]  datetime  NOT NULL,--����ʱ��
	[PJNR]  text  NOT NULL,--��������
	[HF]  text  NOT NULL,--�ظ�
CONSTRAINT [PK_EDU_ZZJX_01_A01_KCPJ] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[PJID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�γ����������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_01_02_KC]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_01_02_KC](
	[KCH]  nvarchar(6)  NOT NULL,--�γ̺�
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[KCMC]  nvarchar(100)  NOT NULL,--�γ�����
	[KCYWM]  nvarchar(100)  NULL,--�γ�Ӣ����
	[KCBM]  nvarchar(100)  NULL,--�γ̱���
	[KCJS]  nvarchar(200)  NULL,--�γ̽���
	[XF]  decimal(2, 1)  NOT NULL,--ѧ��
	[ZXS]  decimal(2, 0)  NOT NULL,--��ѧʱ
	[LLXS]  decimal(2, 0)  NOT NULL,--����ѧʱ
	[SJXS]  decimal(2, 0)  NOT NULL,--ʵ��ѧʱ
	[QTXS]  decimal(2, 0)  NOT NULL,--����ѧʱ
	[CKSM]  text  NULL,--�ο���Ŀ
	[KKDW]  nvarchar(6)  NULL,--���ε�λ
	[KSXS]  nvarchar(1)  NOT NULL,--������ʽ
	[SKFSM]  nvarchar(1)  NOT NULL,--�ڿη�ʽ��
	[KCFY]  money  NULL,--�γ̷���
CONSTRAINT [PK_EDU_ZZJX_01_02_KC] PRIMARY KEY CLUSTERED
(
	[KCH] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--��ʦ�οα�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_01_A02_JSRK]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_01_A02_JSRK](
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[KXH]  int  NOT NULL,--�����
	[JSID]  int  NOT NULL,--��ʦ��ID
	[KCH]  nvarchar(6)  NOT NULL,--�γ̺�
	[JHBH]  nvarchar(5)  NOT NULL,--�ƻ����
	[XQID]  int  NOT NULL,--ѧ��ID
	[JXDG]  text  NOT NULL,--��ѧ���
CONSTRAINT [PK_EDU_ZZJX_01_A02_JSRK] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[KXH] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ѧУ�꼶���ݱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_02_01_ZZNJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_02_01_ZZNJ](
	[NJDM]  nvarchar(4)  NOT NULL,--�꼶����
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[NJMC]  nvarchar(10)  NOT NULL,--�꼶����
	[SSNF]  nvarchar(4)  NOT NULL,--�������
	[NJZT]  nvarchar(1)  NOT NULL,--�꼶״̬
CONSTRAINT [PK_EDU_ZZJX_02_01_ZZNJ] PRIMARY KEY CLUSTERED
(
	[NJDM] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ѧУ�༶���ݱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_02_02_ZZBJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_02_02_ZZBJ](
	[XZBDM]  nvarchar(10)  NOT NULL,--���������
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[ZYXXID]  int  NOT NULL,--רҵ������Ϣ
	[ZZNJID]  nvarchar(4)  NOT NULL,--ѧУ�꼶���ݱ�
	[XZBMC]  nvarchar(50)  NOT NULL,--����������
	[JBNY]  nvarchar(6)  NOT NULL,--��������
	[BZRGH]  nvarchar(20)  NULL,--�����ι���
	[JSBH]  nvarchar(10)  NULL,--���ұ��
	[NANSRS]  decimal(4, 0)  NULL,--��������
	[NVSRS]  decimal(4, 0)  NULL,--Ů������
	[ZRS]  decimal(4, 0)  NULL,--������
	[BZXH]  nvarchar(20)  NULL,--�೤ѧ��
	[JXJH]  text  NOT NULL,--��ѧ�ƻ�
	[JGH]  nvarchar(6)  NOT NULL,--������
	[XQDM]  nvarchar(2)  NOT NULL,--У������
CONSTRAINT [PK_EDU_ZZJX_02_02_ZZBJ] PRIMARY KEY CLUSTERED
(
	[XZBDM] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�����ѧ�ƻ����������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_03_01_ZTJXJH]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_03_01_ZTJXJH](
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[JHBH]  nvarchar(5)  NOT NULL,--�ƻ����
	[JHNJ]  nvarchar(4)  NOT NULL,--�ƻ��꼶
	[ZYXXID]  int  NOT NULL,--רҵ���
	[JHZYMC]  nvarchar(50)  NULL,--�ƻ�רҵ����
	[ZXFYQ]  decimal(3, 0)  NOT NULL,--��ѧ��Ҫ��
	[JLNY]  nvarchar(6)  NULL,--��������
	[SYXZ]  decimal(3, 1)  NULL,--����ѧ��
	[PYMB]  text  NULL,--����Ŀ��
	[SFKY]  nvarchar(1)  NOT NULL,--�Ƿ����
	[FJ]  text  NULL,--����
CONSTRAINT [PK_EDU_ZZJX_03_01_ZTJXJH] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[JHBH] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ѧ��ѧ�ֹ����
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_03_A01_XQXFGL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_03_A01_XQXFGL](
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[XQID]  int  NOT NULL,--ѧ��ID
	[JHBH]  nvarchar(5)  NOT NULL,--�ƻ����
	[ZDXF]  decimal(3, 1)  NULL,--���ѧ��
	[ZGXF]  decimal(3, 1)  NOT NULL,--���ѧ��
CONSTRAINT [PK_EDU_ZZJX_03_A01_XQXFGL] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[XQID] ASC,
	[JHBH] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--��ѧ�ƻ�����ѧ��Ҫ����������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_03_02_JXJHFLXFYQ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_03_02_JXJHFLXFYQ](
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[KCFLM]  nvarchar(1)  NOT NULL,--�γ̷�����
	[XFYQ]  decimal(2, 1)  NOT NULL,--ѧ��Ҫ��
	[JHBH]  nvarchar(5)  NOT NULL,--�ƻ����
CONSTRAINT [PK_EDU_ZZJX_03_02_JXJHFLXFYQ] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[KCFLM] ASC,
	[JHBH] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--��ѧ�ƻ��γ��嵥���������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_03_03_JXJHKCQD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_03_03_JXJHKCQD](
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[KCH]  nvarchar(6)  NOT NULL,--�γ̺�
	[JHBH]  nvarchar(5)  NOT NULL,--�ƻ����
	[XQID]  int  NOT NULL,--ѧ��ID
	[KCMC]  nvarchar(100)  NOT NULL,--�γ�����
	[YXKC]  nvarchar(200)  NULL,--Ԥ�޿γ�
	[SFHXKC]  nvarchar(1)  NULL,--�Ƿ���ģ��Ǹɣ�
	[KCFLM]  nvarchar(1)  NOT NULL,--�γ̷�����
	[KCSXM]  nvarchar(1)  NOT NULL,--�γ�������
	[ZXXQ]  decimal(2, 0)  NOT NULL,--ִ��ѧ��
CONSTRAINT [PK_EDU_ZZJX_03_03_JXJHKCQD] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[KCH] ASC,
	[JHBH] ASC,
	[XQID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--��ʦ��ѧ������ͳ�����������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_05_02_JSJXGZLTJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_05_02_JSJXGZLTJ](
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[JSID]  int  NOT NULL,--��ʦID
	[XQID]  int  NOT NULL,--ѧ��ID
	[XQMC]  nvarchar(10)  NOT NULL,--ѧ������
	[JSXM]  nvarchar(36)  NOT NULL,--��ʦ����
	[RJKCMS]  decimal(4, 0)  NOT NULL,--�ν̿γ�����
	[LLZXS]  decimal(4, 0)  NOT NULL,--������ѧʱ
	[SJZXS]  decimal(4, 0)  NOT NULL,--ʵ����ѧʱ
	[QTZXS]  decimal(4, 0)  NOT NULL,--������ѧʱ
	[XSZS]  decimal(4, 0)  NOT NULL,--ѧ������
	[ZXFS]  decimal(5, 1)  NOT NULL,--��ѧ����
CONSTRAINT [PK_EDU_ZZJX_05_02_JSJXGZLTJ] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[JSID] ASC,
	[XQID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--У��ʵϰ������Ϣ���������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_07_01_XWSXJDXX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_07_01_XWSXJDXX](
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[ID]  int  NOT NULL,--��ҵ��ID
	[QYBH]  nvarchar(20)  NOT NULL,--��ҵ���
	[JDHZHTBH]  nvarchar(20)  NOT NULL,--���غ�����ͬ���
	[JDHZHTMC]  nvarchar(50)  NOT NULL,--���غ�����ͬ����
	[JDLBM]  nvarchar(1)  NOT NULL,--���������
	[DWMC]  nvarchar(50)  NOT NULL,--��λ����
	[QYXZQ]  nvarchar(6)  NOT NULL,--��ҵ������
	[QYDZ]  nvarchar(180)  NULL,--��ҵ��ַ
	[QYXZ]  nvarchar(3)  NULL,--��ҵ����
	[FRDB]  nvarchar(36)  NULL,--���˴���
	[QYLXR]  nvarchar(36)  NULL,--��ҵ��ϵ��
	[QYYZBM]  nvarchar(6)  NULL,--��ҵ��������
	[QYLXDH]  nvarchar(30)  NULL,--��ҵ��ϵ�绰
	[QYYYZZ]  nvarchar(50)  NOT NULL,--��ҵӪҵִ��
	[QYLX]  nvarchar(1)  NOT NULL,--��ҵ����
	[QYRS]  int  NOT NULL,--��ҵ����
	[QYZCZJ]  nvarchar(50)  NOT NULL,--��ҵע���ʽ�
	[QYCZ]  nvarchar(50)  NOT NULL,--��ҵ����
	[QYFZR]  nvarchar(36)  NOT NULL,--��ҵ������
	[FZRZW]  nvarchar(50)  NOT NULL,--������ְλ
	[FZRLXDH]  nvarchar(30)  NOT NULL,--��������ϵ�绰
	[QYYXDZ]  nvarchar(50)  NOT NULL,--��ҵ�����ַ
	[QYQQ]  nvarchar(50)  NOT NULL,--��ҵQQ
	[QYMSN]  nvarchar(50)  NOT NULL,--��ҵMSN
	[QYWZ]  nvarchar(50)  NOT NULL,--��ҵ��ַ
	[QYJJ]  text  NOT NULL,--��ҵ���
	[SHZT]  int  NOT NULL,--���״̬
CONSTRAINT [PK_EDU_ZZJX_07_01_XWSXJDXX] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ѧУʵϰ�ƻ���
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_07_A01_XXSXJH]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_07_A01_XXSXJH](
	[ID]  int  NOT NULL,--ʵϰ�ƻ�ID
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[JHBT]  nvarchar(30)  NOT NULL,--�ƻ�����
	[NJ]  nvarchar(10)  NOT NULL,--�꼶
	[BGXS]  int  NOT NULL,--������ʽ
	[SFSX]  nvarchar(1)  NOT NULL,--�ƻ��Ƿ���Ч
CONSTRAINT [PK_EDU_ZZJX_07_A01_XXSXJH] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ѧУʵϰ�׶α�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_07_A02_XXSXJD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_07_A02_XXSXJD](
	[ID]  int  NOT NULL,--ʵϰ�׶�ID
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[SXJHID]  int  NOT NULL,--ʵϰ�ƻ�ID
	[JDM]  nvarchar(30)  NOT NULL,--�׶���
	[JDKSSJ]  datetime  NOT NULL,--�׶ο�ʼʱ��
	[JDJSSJ]  datetime  NOT NULL,--�׶ν���ʱ��
CONSTRAINT [PK_EDU_ZZJX_07_A02_XXSXJD] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ѧ��У��ʵϰ������������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_07_03_XSXWSXQK]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_07_03_XSXWSXQK](
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[ID]  int  NOT NULL,--ʵϰ�����ID
	[XSXXID]  int  NOT NULL,--ѧ����ϢID
	[QYID]  int  NOT NULL,--��ҵ��ID
	[GWID]  int  NOT NULL,--��λ��ID
	[SXQSRQ]  nvarchar(8)  NOT NULL,--��ѵ��ʼ����
	[SXJSRQ]  nvarchar(8)  NULL,--��ѵ��������
	[QYBH]  nvarchar(20)  NOT NULL,--��ҵ���
	[SXGWMC]  nvarchar(50)  NULL,--��ѵ��λ����
	[SXDS]  nvarchar(36)  NULL,--ʵѵ��ʦ
	[SFGMSXZRBX]  nvarchar(1)  NOT NULL,--�Ƿ���ʵϰ���α���
	[BXFZFZ]  nvarchar(50)  NULL,--���շ�֧����
	[SXXC]  money  NULL,--ʵϰн��
	[SFSDGSX]  nvarchar(1)  NOT NULL,--�Ƿ��Ƕ���ʵϰ
	[XSHJXZM]  nvarchar(1)  NOT NULL,--ѧ������������
CONSTRAINT [PK_EDU_ZZJX_07_03_XSXWSXQK] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[ID] ASC,
	[SXQSRQ] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ѧУʵϰ��/�±�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_07_A03_XXSXZY]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_07_A03_XXSXZY](
	[ID]  int  NOT NULL,--ʵϰ��/��ID
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[SXJHID]  int  NOT NULL,--ʵϰ�ƻ�ID
	[SXJDID]  int  NOT NULL,--ʵϰ�׶�ID
	[MC]  nvarchar(30)  NOT NULL,--����
	[KSSJ]  datetime  NOT NULL,--��ʼʱ��
	[JSSJ]  datetime  NOT NULL,--����ʱ��
	[LX]  int  NOT NULL,--����
CONSTRAINT [PK_EDU_ZZJX_07_A03_XXSXZY] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ʵϰ��λ��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_07_A04_SXGW]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_07_A04_SXGW](
	[ID]  int  NOT NULL,--ʵϰ��λID
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[QYID]  int  NOT NULL,--��ҵID
	[GWMC]  nvarchar(50)  NOT NULL,--��λ����
	[QYMC]  int  NOT NULL,--��ҵ����
	[ZPKSSJ]  datetime  NOT NULL,--��Ƹ��ʼʱ��
	[ZPJSSJ]  datetime  NOT NULL,--��Ƹ����ʱ��
	[GZXS]  int  NOT NULL,--������ʽ
	[XBYQ]  nvarchar(50)  NOT NULL,--�Ա�Ҫ��
	[GWXC]  nvarchar(50)  NOT NULL,--��λн��
	[WYYQ]  nvarchar(50)  NOT NULL,--����Ҫ��
	[GZDD]  nvarchar(50)  NOT NULL,--�����ص�
	[JSJSP]  nvarchar(50)  NOT NULL,--�����ˮƽ
	[ZPRS]  int  NOT NULL,--��Ƹ����
	[XLYQ]  nvarchar(50)  NOT NULL,--ѧ��Ҫ��
	[ZYYQ]  nvarchar(50)  NOT NULL,--רҵҪ��
	[NLYQ]  int  NOT NULL,--����Ҫ��
	[GWJJ]  nvarchar(50)  NOT NULL,--��λ���
	[JBQK]  nvarchar(50)  NOT NULL,--�������
	[GZJY]  nvarchar(50)  NOT NULL,--��������
	[SHZT]  int  NOT NULL,--���״̬
	[GWZT]  int  NOT NULL,--��λ״̬
CONSTRAINT [PK_EDU_ZZJX_07_A04_SXGW] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ѧ��ӦƸ��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_07_A05_XSYP]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_07_A05_XSYP](
	[ID]  int  NOT NULL,--ѧ��ӦƸ��ϢID
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[XSXXID]  int  NOT NULL,--ѧ����ϢID
	[QYID]  int  NOT NULL,--��ҵID
	[GWID]  int  NOT NULL,--ʵϰ��λID
	[XXSH]  int  NOT NULL,--ѧУ���
	[QYSH]  int  NOT NULL,--��ҵ���
CONSTRAINT [PK_EDU_ZZJX_07_A05_XSYP] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--У�󻥶���
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_07_A06_XQHD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_07_A06_XQHD](
	[ID]  int  NOT NULL,--У�󻥶���ϢID
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[QYID]  int  NOT NULL,--��ҵID
	[XXJY]  nvarchar(300)  NOT NULL,--��ҵ��ѧУ��������
	[XSJY]  nvarchar(300)  NOT NULL,--��ҵ��ѧ��ְҵ���ܽ���
	[GLJY]  nvarchar(300)  NOT NULL,--ʵϰ���������Ľ���
	[QTJY]  nvarchar(300)  NOT NULL,--��������
	[FKNR]  nvarchar(300)  NOT NULL,--��������
	[FKSJ]  datetime  NOT NULL,--����ʱ��
CONSTRAINT [PK_EDU_ZZJX_07_A06_XQHD] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ʵϰת�ڱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_07_A07_SXZG]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_07_A07_SXZG](
	[ID]  int  NOT NULL,--ʵϰת��ID
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[XSXXID]  int  NOT NULL,--����ѧ��ID
	[ZCGW]  int  NOT NULL,--ת����λID
	[ZCGWQY]  int  NOT NULL,--ת����λ��ҵID
	[ZRGW]  int  NOT NULL,--ת���λID
	[ZRGWQY]  int  NOT NULL,--ת���λ��ҵID
	[BZRSH]  int  NOT NULL,--���������
	[ZCQYSH]  int  NOT NULL,--ת����ҵ���
	[ZRQYSH]  int  NOT NULL,--ת����ҵ���
	[JYCSH]  int  NOT NULL,--��ҵ�����
CONSTRAINT [PK_EDU_ZZJX_07_A07_SXZG] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ʵϰͶ�߱�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_07_A08_SXTS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_07_A08_SXTS](
	[ID]  int  NOT NULL,--ʵϰͶ��ID
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[QYID]  int  NOT NULL,--��ҵID
	[SXJHID]  int  NOT NULL,--ʵϰ�ƻ�ID
	[XSXXID]  int  NOT NULL,--Ͷ��ѧ��ID
	[TSSJ]  datetime  NOT NULL,--Ͷ��ʱ��
	[TSYY]  nvarchar(300)  NOT NULL,--Ͷ��ԭ��
	[TSJG]  nvarchar(300)  NOT NULL,--Ͷ�߽��
	[QYJY]  nvarchar(300)  NOT NULL,--��ҵ����
CONSTRAINT [PK_EDU_ZZJX_07_A08_SXTS] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ʵϰ��־��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_07_A09_SXRZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_07_A09_SXRZ](
	[ID]  int  NOT NULL,--ʵϰ��־ID
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[XSXXID]  int  NOT NULL,--ѧ����ϢID
	[SXJHID]  int  NOT NULL,--ʵϰ�ƻ�ID
	[SXJDID]  int  NOT NULL,--ʵϰ�׶�ID
	[SXZYID]  int  NOT NULL,--ʵϰ��/�±�ID
	[RZBT]  nvarchar(50)  NOT NULL,--��־����
	[NR]  text  NOT NULL,--����
CONSTRAINT [PK_EDU_ZZJX_07_A09_SXRZ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ʵϰ������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_07_A10_SXJD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_07_A10_SXJD](
	[ID]  int  NOT NULL,--ʵϰ������ϢID
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[SXJHID]  int  NOT NULL,--ʵϰ�ƻ�ID
	[XSXXID]  int  NOT NULL,--ѧ����ϢID
	[JDNR]  text  NOT NULL,--��������
	[SXDWYJ]  text  NOT NULL,--ʵϰ��λ���
	[BJYJ]  text  NOT NULL,--�༶���
	[XXYJ]  text  NOT NULL,--ѧУ���
CONSTRAINT [PK_EDU_ZZJX_07_A10_SXJD] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ʵϰ���ͱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_07_A11_SXJC]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_07_A11_SXJC](
	[ID]  int  NOT NULL,--������ϢID
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[SXJHID]  int  NOT NULL,--ʵϰ�ƻ�ID
	[XSXXID]  int  NOT NULL,--ѧ����ϢID
	[JCLX]  int  NOT NULL,--��������
	[JCRQ]  datetime  NOT NULL,--��������
	[CLJG]  nvarchar(300)  NOT NULL,--������
	[BZ]  nvarchar(300)  NOT NULL,--��ע
	[TJR]  int  NOT NULL,--�����
CONSTRAINT [PK_EDU_ZZJX_07_A11_SXJC] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--���ܷ���ȡ��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_08_A01_DGFSQ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_08_A01_DGFSQ](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[XSXXID]  int  NOT NULL,--ѧ��ID
	[XNID]  int  NOT NULL,--ѧ��ID
	[XQID]  int  NOT NULL,--ѧ��ID
	[YJJE]  decimal(10, 3)  NOT NULL,--�ѽɽ��
	[JFRQ]  datetime  NULL,--�ɷ�����
	[SFYSH]  nvarchar(1)  NOT NULL,--�Ƿ������
	[SHRID]  int  NOT NULL,--�����ԱID
CONSTRAINT [PK_EDU_ZZJX_08_A01_DGFSQ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�����������ݱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_09_A01_TKSQSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_09_A01_TKSQSJ](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[JSID]  int  NOT NULL,--��ʦ
	[KCID]  nvarchar(6)  NOT NULL,--�γ�
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
CONSTRAINT [PK_EDU_ZZJX_09_A01_TKSQSJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�������ݱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_10_A01_LWSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_10_A01_LWSJ](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[XNID]  int  NOT NULL,--ѧ��ID
	[XQID]  int  NOT NULL,--ѧ��ID
	[LWMC]  nvarchar(100)  NOT NULL,--��������
	[LWZY]  nvarchar(100)  NOT NULL,--����ժҪ
	[LWNR]  text  NOT NULL,--��������
	[SCJSID]  int  NOT NULL,--�ϴ���ʦID
	[SCSJ]  datetime  NOT NULL,--�ϴ�ʱ��
CONSTRAINT [PK_EDU_ZZJX_10_A01_LWSJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--���л���ݱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_10_A02_KYHDSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_10_A02_KYHDSJ](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[XNID]  int  NOT NULL,--ѧ��ID
	[XQID]  int  NOT NULL,--ѧ��ID
	[HDMC]  nvarchar(50)  NOT NULL,--�����
	[HDNR]  text  NOT NULL,--�����
	[SFFB]  nvarchar(1)  NOT NULL,--�Ƿ񷢲�
	[SCJSID]  int  NOT NULL,--�ϴ���ʦID
	[SCSJ]  datetime  NOT NULL,--�ϴ�ʱ��
CONSTRAINT [PK_EDU_ZZJX_10_A02_KYHDSJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--������Ϣ���ݱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_10_A03_CPXXSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_10_A03_CPXXSJ](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[XNID]  int  NOT NULL,--ѧ��ID
	[XQID]  int  NOT NULL,--ѧ��ID
	[XXMC]  nvarchar(50)  NOT NULL,--��Ϣ����
	[XXNR]  text  NOT NULL,--��Ϣ����
	[SFFB]  nvarchar(1)  NOT NULL,--�Ƿ񷢲�
	[SCJSID]  int  NOT NULL,--�ϴ���ʦID
	[SCSJ]  datetime  NOT NULL,--�ϴ�ʱ��
CONSTRAINT [PK_EDU_ZZJX_10_A03_CPXXSJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�������ݱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_10_A04_KTSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_10_A04_KTSJ](
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
CONSTRAINT [PK_EDU_ZZJX_10_A04_KTSJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--����׶����ݱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_10_A05_KTJDSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_10_A05_KTJDSJ](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[KTID]  int  NOT NULL,--����ID
	[JDMC]  nvarchar(50)  NOT NULL,--�׶�����
	[JDGZNR]  text  NOT NULL,--�׶ι�������
	[SCSJ]  datetime  NOT NULL,--�ϴ�ʱ��
CONSTRAINT [PK_EDU_ZZJX_10_A05_KTJDSJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--����Ϊ���ע�����
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'רҵ������Ϣ���ݱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_01_ZYXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'רҵ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_01_ZYXX', @level2type=N'COLUMN',@level2name=N'ZYBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_01_ZYXX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'רҵ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_01_ZYXX', @level2type=N'COLUMN',@level2name=N'ZYDM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'רҵ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_01_ZYXX', @level2type=N'COLUMN',@level2name=N'ZYMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'רҵӢ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_01_ZYXX', @level2type=N'COLUMN',@level2name=N'ZYYWMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_01_ZYXX', @level2type=N'COLUMN',@level2name=N'XZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'רҵ��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_01_ZYXX', @level2type=N'COLUMN',@level2name=N'ZYFXMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'רҵ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_01_ZYXX', @level2type=N'COLUMN',@level2name=N'ZYJC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_01_ZYXX', @level2type=N'COLUMN',@level2name=N'JLNY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'רҵ��ʦ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_01_ZYXX', @level2type=N'COLUMN',@level2name=N'ZYJSS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_01_ZYXX', @level2type=N'COLUMN',@level2name=N'KSJGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ѧ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_01_ZYXX', @level2type=N'COLUMN',@level2name=N'ZXF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����רҵĿ¼' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_01_ZYXX', @level2type=N'COLUMN',@level2name=N'SSZYML'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'רҵ�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_01_ZYXX', @level2type=N'COLUMN',@level2name=N'ZYLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�γ����۱�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_A01_KCPJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_A01_KCPJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_A01_KCPJ', @level2type=N'COLUMN',@level2name=N'PJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_A01_KCPJ', @level2type=N'COLUMN',@level2name=N'KXH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_A01_KCPJ', @level2type=N'COLUMN',@level2name=N'PJR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_A01_KCPJ', @level2type=N'COLUMN',@level2name=N'PJSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_A01_KCPJ', @level2type=N'COLUMN',@level2name=N'PJNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ظ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_A01_KCPJ', @level2type=N'COLUMN',@level2name=N'HF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�γ����������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_02_KC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�γ̺�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_02_KC', @level2type=N'COLUMN',@level2name=N'KCH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_02_KC', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�γ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_02_KC', @level2type=N'COLUMN',@level2name=N'KCMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�γ�Ӣ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_02_KC', @level2type=N'COLUMN',@level2name=N'KCYWM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�γ̱���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_02_KC', @level2type=N'COLUMN',@level2name=N'KCBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�γ̽���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_02_KC', @level2type=N'COLUMN',@level2name=N'KCJS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_02_KC', @level2type=N'COLUMN',@level2name=N'XF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ѧʱ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_02_KC', @level2type=N'COLUMN',@level2name=N'ZXS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ѧʱ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_02_KC', @level2type=N'COLUMN',@level2name=N'LLXS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ʵ��ѧʱ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_02_KC', @level2type=N'COLUMN',@level2name=N'SJXS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ѧʱ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_02_KC', @level2type=N'COLUMN',@level2name=N'QTXS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ο���Ŀ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_02_KC', @level2type=N'COLUMN',@level2name=N'CKSM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ε�λ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_02_KC', @level2type=N'COLUMN',@level2name=N'KKDW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ʽ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_02_KC', @level2type=N'COLUMN',@level2name=N'KSXS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ڿη�ʽ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_02_KC', @level2type=N'COLUMN',@level2name=N'SKFSM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�γ̷���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_02_KC', @level2type=N'COLUMN',@level2name=N'KCFY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʦ�οα�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_A02_JSRK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_A02_JSRK', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_A02_JSRK', @level2type=N'COLUMN',@level2name=N'KXH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʦ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_A02_JSRK', @level2type=N'COLUMN',@level2name=N'JSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�γ̺�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_A02_JSRK', @level2type=N'COLUMN',@level2name=N'KCH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ƻ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_A02_JSRK', @level2type=N'COLUMN',@level2name=N'JHBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_A02_JSRK', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ѧ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_A02_JSRK', @level2type=N'COLUMN',@level2name=N'JXDG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ�꼶���ݱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_02_01_ZZNJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�꼶����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_02_01_ZZNJ', @level2type=N'COLUMN',@level2name=N'NJDM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_02_01_ZZNJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�꼶����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_02_01_ZZNJ', @level2type=N'COLUMN',@level2name=N'NJMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_02_01_ZZNJ', @level2type=N'COLUMN',@level2name=N'SSNF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�꼶״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_02_01_ZZNJ', @level2type=N'COLUMN',@level2name=N'NJZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ�༶���ݱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_02_02_ZZBJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_02_02_ZZBJ', @level2type=N'COLUMN',@level2name=N'XZBDM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_02_02_ZZBJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'רҵ������Ϣ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_02_02_ZZBJ', @level2type=N'COLUMN',@level2name=N'ZYXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ�꼶���ݱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_02_02_ZZBJ', @level2type=N'COLUMN',@level2name=N'ZZNJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_02_02_ZZBJ', @level2type=N'COLUMN',@level2name=N'XZBMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_02_02_ZZBJ', @level2type=N'COLUMN',@level2name=N'JBNY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����ι���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_02_02_ZZBJ', @level2type=N'COLUMN',@level2name=N'BZRGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ұ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_02_02_ZZBJ', @level2type=N'COLUMN',@level2name=N'JSBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_02_02_ZZBJ', @level2type=N'COLUMN',@level2name=N'NANSRS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ů������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_02_02_ZZBJ', @level2type=N'COLUMN',@level2name=N'NVSRS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_02_02_ZZBJ', @level2type=N'COLUMN',@level2name=N'ZRS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�೤ѧ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_02_02_ZZBJ', @level2type=N'COLUMN',@level2name=N'BZXH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ѧ�ƻ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_02_02_ZZBJ', @level2type=N'COLUMN',@level2name=N'JXJH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_02_02_ZZBJ', @level2type=N'COLUMN',@level2name=N'JGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'У������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_02_02_ZZBJ', @level2type=N'COLUMN',@level2name=N'XQDM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����ѧ�ƻ����������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_01_ZTJXJH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_01_ZTJXJH', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ƻ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_01_ZTJXJH', @level2type=N'COLUMN',@level2name=N'JHBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ƻ��꼶' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_01_ZTJXJH', @level2type=N'COLUMN',@level2name=N'JHNJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'רҵ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_01_ZTJXJH', @level2type=N'COLUMN',@level2name=N'ZYXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ƻ�רҵ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_01_ZTJXJH', @level2type=N'COLUMN',@level2name=N'JHZYMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ѧ��Ҫ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_01_ZTJXJH', @level2type=N'COLUMN',@level2name=N'ZXFYQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_01_ZTJXJH', @level2type=N'COLUMN',@level2name=N'JLNY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ѧ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_01_ZTJXJH', @level2type=N'COLUMN',@level2name=N'SYXZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����Ŀ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_01_ZTJXJH', @level2type=N'COLUMN',@level2name=N'PYMB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_01_ZTJXJH', @level2type=N'COLUMN',@level2name=N'SFKY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_01_ZTJXJH', @level2type=N'COLUMN',@level2name=N'FJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ѧ�ֹ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_A01_XQXFGL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_A01_XQXFGL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_A01_XQXFGL', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ƻ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_A01_XQXFGL', @level2type=N'COLUMN',@level2name=N'JHBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ѧ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_A01_XQXFGL', @level2type=N'COLUMN',@level2name=N'ZDXF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ѧ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_A01_XQXFGL', @level2type=N'COLUMN',@level2name=N'ZGXF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ѧ�ƻ�����ѧ��Ҫ����������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_02_JXJHFLXFYQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_02_JXJHFLXFYQ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�γ̷�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_02_JXJHFLXFYQ', @level2type=N'COLUMN',@level2name=N'KCFLM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��Ҫ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_02_JXJHFLXFYQ', @level2type=N'COLUMN',@level2name=N'XFYQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ƻ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_02_JXJHFLXFYQ', @level2type=N'COLUMN',@level2name=N'JHBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ѧ�ƻ��γ��嵥���������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_03_JXJHKCQD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_03_JXJHKCQD', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�γ̺�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_03_JXJHKCQD', @level2type=N'COLUMN',@level2name=N'KCH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ƻ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_03_JXJHKCQD', @level2type=N'COLUMN',@level2name=N'JHBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_03_JXJHKCQD', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�γ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_03_JXJHKCQD', @level2type=N'COLUMN',@level2name=N'KCMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ԥ�޿γ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_03_JXJHKCQD', @level2type=N'COLUMN',@level2name=N'YXKC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ���ģ��Ǹɣ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_03_JXJHKCQD', @level2type=N'COLUMN',@level2name=N'SFHXKC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�γ̷�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_03_JXJHKCQD', @level2type=N'COLUMN',@level2name=N'KCFLM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�γ�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_03_JXJHKCQD', @level2type=N'COLUMN',@level2name=N'KCSXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ִ��ѧ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_03_JXJHKCQD', @level2type=N'COLUMN',@level2name=N'ZXXQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʦ��ѧ������ͳ�����������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_05_02_JSJXGZLTJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_05_02_JSJXGZLTJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʦID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_05_02_JSJXGZLTJ', @level2type=N'COLUMN',@level2name=N'JSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_05_02_JSJXGZLTJ', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_05_02_JSJXGZLTJ', @level2type=N'COLUMN',@level2name=N'XQMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʦ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_05_02_JSJXGZLTJ', @level2type=N'COLUMN',@level2name=N'JSXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ν̿γ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_05_02_JSJXGZLTJ', @level2type=N'COLUMN',@level2name=N'RJKCMS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ѧʱ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_05_02_JSJXGZLTJ', @level2type=N'COLUMN',@level2name=N'LLZXS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ʵ����ѧʱ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_05_02_JSJXGZLTJ', @level2type=N'COLUMN',@level2name=N'SJZXS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ѧʱ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_05_02_JSJXGZLTJ', @level2type=N'COLUMN',@level2name=N'QTZXS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_05_02_JSJXGZLTJ', @level2type=N'COLUMN',@level2name=N'XSZS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ѧ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_05_02_JSJXGZLTJ', @level2type=N'COLUMN',@level2name=N'ZXFS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'У��ʵϰ������Ϣ���������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_01_XWSXJDXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_01_XWSXJDXX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ҵ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_01_XWSXJDXX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ҵ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_01_XWSXJDXX', @level2type=N'COLUMN',@level2name=N'QYBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���غ�����ͬ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_01_XWSXJDXX', @level2type=N'COLUMN',@level2name=N'JDHZHTBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���غ�����ͬ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_01_XWSXJDXX', @level2type=N'COLUMN',@level2name=N'JDHZHTMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_01_XWSXJDXX', @level2type=N'COLUMN',@level2name=N'JDLBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��λ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_01_XWSXJDXX', @level2type=N'COLUMN',@level2name=N'DWMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ҵ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_01_XWSXJDXX', @level2type=N'COLUMN',@level2name=N'QYXZQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ҵ��ַ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_01_XWSXJDXX', @level2type=N'COLUMN',@level2name=N'QYDZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ҵ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_01_XWSXJDXX', @level2type=N'COLUMN',@level2name=N'QYXZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���˴���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_01_XWSXJDXX', @level2type=N'COLUMN',@level2name=N'FRDB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ҵ��ϵ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_01_XWSXJDXX', @level2type=N'COLUMN',@level2name=N'QYLXR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ҵ��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_01_XWSXJDXX', @level2type=N'COLUMN',@level2name=N'QYYZBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ҵ��ϵ�绰' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_01_XWSXJDXX', @level2type=N'COLUMN',@level2name=N'QYLXDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ҵӪҵִ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_01_XWSXJDXX', @level2type=N'COLUMN',@level2name=N'QYYYZZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ҵ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_01_XWSXJDXX', @level2type=N'COLUMN',@level2name=N'QYLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ҵ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_01_XWSXJDXX', @level2type=N'COLUMN',@level2name=N'QYRS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ҵע���ʽ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_01_XWSXJDXX', @level2type=N'COLUMN',@level2name=N'QYZCZJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ҵ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_01_XWSXJDXX', @level2type=N'COLUMN',@level2name=N'QYCZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ҵ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_01_XWSXJDXX', @level2type=N'COLUMN',@level2name=N'QYFZR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ְλ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_01_XWSXJDXX', @level2type=N'COLUMN',@level2name=N'FZRZW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������ϵ�绰' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_01_XWSXJDXX', @level2type=N'COLUMN',@level2name=N'FZRLXDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ҵ�����ַ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_01_XWSXJDXX', @level2type=N'COLUMN',@level2name=N'QYYXDZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ҵQQ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_01_XWSXJDXX', @level2type=N'COLUMN',@level2name=N'QYQQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ҵMSN' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_01_XWSXJDXX', @level2type=N'COLUMN',@level2name=N'QYMSN'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ҵ��ַ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_01_XWSXJDXX', @level2type=N'COLUMN',@level2name=N'QYWZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ҵ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_01_XWSXJDXX', @level2type=N'COLUMN',@level2name=N'QYJJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_01_XWSXJDXX', @level2type=N'COLUMN',@level2name=N'SHZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУʵϰ�ƻ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A01_XXSXJH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ʵϰ�ƻ�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A01_XXSXJH', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A01_XXSXJH', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ƻ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A01_XXSXJH', @level2type=N'COLUMN',@level2name=N'JHBT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�꼶' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A01_XXSXJH', @level2type=N'COLUMN',@level2name=N'NJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ʽ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A01_XXSXJH', @level2type=N'COLUMN',@level2name=N'BGXS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ƻ��Ƿ���Ч' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A01_XXSXJH', @level2type=N'COLUMN',@level2name=N'SFSX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУʵϰ�׶α�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A02_XXSXJD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ʵϰ�׶�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A02_XXSXJD', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A02_XXSXJD', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ʵϰ�ƻ�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A02_XXSXJD', @level2type=N'COLUMN',@level2name=N'SXJHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�׶���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A02_XXSXJD', @level2type=N'COLUMN',@level2name=N'JDM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�׶ο�ʼʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A02_XXSXJD', @level2type=N'COLUMN',@level2name=N'JDKSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�׶ν���ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A02_XXSXJD', @level2type=N'COLUMN',@level2name=N'JDJSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��У��ʵϰ������������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_03_XSXWSXQK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_03_XSXWSXQK', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ʵϰ�����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_03_XSXWSXQK', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ����ϢID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_03_XSXWSXQK', @level2type=N'COLUMN',@level2name=N'XSXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ҵ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_03_XSXWSXQK', @level2type=N'COLUMN',@level2name=N'QYID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��λ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_03_XSXWSXQK', @level2type=N'COLUMN',@level2name=N'GWID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ѵ��ʼ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_03_XSXWSXQK', @level2type=N'COLUMN',@level2name=N'SXQSRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ѵ��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_03_XSXWSXQK', @level2type=N'COLUMN',@level2name=N'SXJSRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ҵ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_03_XSXWSXQK', @level2type=N'COLUMN',@level2name=N'QYBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ѵ��λ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_03_XSXWSXQK', @level2type=N'COLUMN',@level2name=N'SXGWMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ʵѵ��ʦ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_03_XSXWSXQK', @level2type=N'COLUMN',@level2name=N'SXDS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ���ʵϰ���α���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_03_XSXWSXQK', @level2type=N'COLUMN',@level2name=N'SFGMSXZRBX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���շ�֧����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_03_XSXWSXQK', @level2type=N'COLUMN',@level2name=N'BXFZFZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ʵϰн��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_03_XSXWSXQK', @level2type=N'COLUMN',@level2name=N'SXXC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ��Ƕ���ʵϰ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_03_XSXWSXQK', @level2type=N'COLUMN',@level2name=N'SFSDGSX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ������������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_03_XSXWSXQK', @level2type=N'COLUMN',@level2name=N'XSHJXZM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУʵϰ��/�±�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A03_XXSXZY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ʵϰ��/��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A03_XXSXZY', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A03_XXSXZY', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ʵϰ�ƻ�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A03_XXSXZY', @level2type=N'COLUMN',@level2name=N'SXJHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ʵϰ�׶�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A03_XXSXZY', @level2type=N'COLUMN',@level2name=N'SXJDID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A03_XXSXZY', @level2type=N'COLUMN',@level2name=N'MC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʼʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A03_XXSXZY', @level2type=N'COLUMN',@level2name=N'KSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A03_XXSXZY', @level2type=N'COLUMN',@level2name=N'JSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A03_XXSXZY', @level2type=N'COLUMN',@level2name=N'LX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ʵϰ��λ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A04_SXGW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ʵϰ��λID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A04_SXGW', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A04_SXGW', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ҵID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A04_SXGW', @level2type=N'COLUMN',@level2name=N'QYID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��λ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A04_SXGW', @level2type=N'COLUMN',@level2name=N'GWMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ҵ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A04_SXGW', @level2type=N'COLUMN',@level2name=N'QYMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ƹ��ʼʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A04_SXGW', @level2type=N'COLUMN',@level2name=N'ZPKSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ƹ����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A04_SXGW', @level2type=N'COLUMN',@level2name=N'ZPJSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ʽ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A04_SXGW', @level2type=N'COLUMN',@level2name=N'GZXS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ա�Ҫ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A04_SXGW', @level2type=N'COLUMN',@level2name=N'XBYQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��λн��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A04_SXGW', @level2type=N'COLUMN',@level2name=N'GWXC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����Ҫ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A04_SXGW', @level2type=N'COLUMN',@level2name=N'WYYQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����ص�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A04_SXGW', @level2type=N'COLUMN',@level2name=N'GZDD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����ˮƽ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A04_SXGW', @level2type=N'COLUMN',@level2name=N'JSJSP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ƹ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A04_SXGW', @level2type=N'COLUMN',@level2name=N'ZPRS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��Ҫ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A04_SXGW', @level2type=N'COLUMN',@level2name=N'XLYQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'רҵҪ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A04_SXGW', @level2type=N'COLUMN',@level2name=N'ZYYQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����Ҫ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A04_SXGW', @level2type=N'COLUMN',@level2name=N'NLYQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��λ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A04_SXGW', @level2type=N'COLUMN',@level2name=N'GWJJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A04_SXGW', @level2type=N'COLUMN',@level2name=N'JBQK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A04_SXGW', @level2type=N'COLUMN',@level2name=N'GZJY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A04_SXGW', @level2type=N'COLUMN',@level2name=N'SHZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��λ״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A04_SXGW', @level2type=N'COLUMN',@level2name=N'GWZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ӦƸ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A05_XSYP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ӦƸ��ϢID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A05_XSYP', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A05_XSYP', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ����ϢID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A05_XSYP', @level2type=N'COLUMN',@level2name=N'XSXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ҵID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A05_XSYP', @level2type=N'COLUMN',@level2name=N'QYID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ʵϰ��λID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A05_XSYP', @level2type=N'COLUMN',@level2name=N'GWID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A05_XSYP', @level2type=N'COLUMN',@level2name=N'XXSH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ҵ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A05_XSYP', @level2type=N'COLUMN',@level2name=N'QYSH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'У�󻥶���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A06_XQHD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'У�󻥶���ϢID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A06_XQHD', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A06_XQHD', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ҵID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A06_XQHD', @level2type=N'COLUMN',@level2name=N'QYID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ҵ��ѧУ��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A06_XQHD', @level2type=N'COLUMN',@level2name=N'XXJY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ҵ��ѧ��ְҵ���ܽ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A06_XQHD', @level2type=N'COLUMN',@level2name=N'XSJY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ʵϰ���������Ľ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A06_XQHD', @level2type=N'COLUMN',@level2name=N'GLJY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A06_XQHD', @level2type=N'COLUMN',@level2name=N'QTJY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A06_XQHD', @level2type=N'COLUMN',@level2name=N'FKNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A06_XQHD', @level2type=N'COLUMN',@level2name=N'FKSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ʵϰת�ڱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A07_SXZG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ʵϰת��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A07_SXZG', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A07_SXZG', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A07_SXZG', @level2type=N'COLUMN',@level2name=N'XSXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ת����λID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A07_SXZG', @level2type=N'COLUMN',@level2name=N'ZCGW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ת����λ��ҵID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A07_SXZG', @level2type=N'COLUMN',@level2name=N'ZCGWQY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ת���λID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A07_SXZG', @level2type=N'COLUMN',@level2name=N'ZRGW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ת���λ��ҵID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A07_SXZG', @level2type=N'COLUMN',@level2name=N'ZRGWQY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A07_SXZG', @level2type=N'COLUMN',@level2name=N'BZRSH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ת����ҵ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A07_SXZG', @level2type=N'COLUMN',@level2name=N'ZCQYSH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ת����ҵ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A07_SXZG', @level2type=N'COLUMN',@level2name=N'ZRQYSH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ҵ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A07_SXZG', @level2type=N'COLUMN',@level2name=N'JYCSH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ʵϰͶ�߱�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A08_SXTS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ʵϰͶ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A08_SXTS', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A08_SXTS', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ҵID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A08_SXTS', @level2type=N'COLUMN',@level2name=N'QYID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ʵϰ�ƻ�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A08_SXTS', @level2type=N'COLUMN',@level2name=N'SXJHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ͷ��ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A08_SXTS', @level2type=N'COLUMN',@level2name=N'XSXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ͷ��ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A08_SXTS', @level2type=N'COLUMN',@level2name=N'TSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ͷ��ԭ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A08_SXTS', @level2type=N'COLUMN',@level2name=N'TSYY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ͷ�߽��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A08_SXTS', @level2type=N'COLUMN',@level2name=N'TSJG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ҵ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A08_SXTS', @level2type=N'COLUMN',@level2name=N'QYJY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ʵϰ��־��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A09_SXRZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ʵϰ��־ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A09_SXRZ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A09_SXRZ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ����ϢID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A09_SXRZ', @level2type=N'COLUMN',@level2name=N'XSXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ʵϰ�ƻ�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A09_SXRZ', @level2type=N'COLUMN',@level2name=N'SXJHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ʵϰ�׶�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A09_SXRZ', @level2type=N'COLUMN',@level2name=N'SXJDID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ʵϰ��/�±�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A09_SXRZ', @level2type=N'COLUMN',@level2name=N'SXZYID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��־����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A09_SXRZ', @level2type=N'COLUMN',@level2name=N'RZBT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A09_SXRZ', @level2type=N'COLUMN',@level2name=N'NR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ʵϰ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A10_SXJD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ʵϰ������ϢID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A10_SXJD', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A10_SXJD', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ʵϰ�ƻ�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A10_SXJD', @level2type=N'COLUMN',@level2name=N'SXJHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ����ϢID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A10_SXJD', @level2type=N'COLUMN',@level2name=N'XSXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A10_SXJD', @level2type=N'COLUMN',@level2name=N'JDNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ʵϰ��λ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A10_SXJD', @level2type=N'COLUMN',@level2name=N'SXDWYJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�༶���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A10_SXJD', @level2type=N'COLUMN',@level2name=N'BJYJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A10_SXJD', @level2type=N'COLUMN',@level2name=N'XXYJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ʵϰ���ͱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A11_SXJC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ϢID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A11_SXJC', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A11_SXJC', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ʵϰ�ƻ�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A11_SXJC', @level2type=N'COLUMN',@level2name=N'SXJHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ����ϢID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A11_SXJC', @level2type=N'COLUMN',@level2name=N'XSXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A11_SXJC', @level2type=N'COLUMN',@level2name=N'JCLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A11_SXJC', @level2type=N'COLUMN',@level2name=N'JCRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A11_SXJC', @level2type=N'COLUMN',@level2name=N'CLJG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A11_SXJC', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_07_A11_SXJC', @level2type=N'COLUMN',@level2name=N'TJR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ܷ���ȡ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_08_A01_DGFSQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_08_A01_DGFSQ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_08_A01_DGFSQ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_08_A01_DGFSQ', @level2type=N'COLUMN',@level2name=N'XSXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_08_A01_DGFSQ', @level2type=N'COLUMN',@level2name=N'XNID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_08_A01_DGFSQ', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ѽɽ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_08_A01_DGFSQ', @level2type=N'COLUMN',@level2name=N'YJJE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ɷ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_08_A01_DGFSQ', @level2type=N'COLUMN',@level2name=N'JFRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_08_A01_DGFSQ', @level2type=N'COLUMN',@level2name=N'SFYSH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����ԱID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_08_A01_DGFSQ', @level2type=N'COLUMN',@level2name=N'SHRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����������ݱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_09_A01_TKSQSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_09_A01_TKSQSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_09_A01_TKSQSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʦ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_09_A01_TKSQSJ', @level2type=N'COLUMN',@level2name=N'JSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�γ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_09_A01_TKSQSJ', @level2type=N'COLUMN',@level2name=N'KCID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_09_A01_TKSQSJ', @level2type=N'COLUMN',@level2name=N'TKLXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ǰ��ʼ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_09_A01_TKSQSJ', @level2type=N'COLUMN',@level2name=N'TKQQSZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ǰ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_09_A01_TKSQSJ', @level2type=N'COLUMN',@level2name=N'TKQJSZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ǰ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_09_A01_TKSQSJ', @level2type=N'COLUMN',@level2name=N'TKQXQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ǰʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_09_A01_TKSQSJ', @level2type=N'COLUMN',@level2name=N'TKQSD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ǰ�ڴ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_09_A01_TKSQSJ', @level2type=N'COLUMN',@level2name=N'TKQJC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���κ���ʼ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_09_A01_TKSQSJ', @level2type=N'COLUMN',@level2name=N'TKHQSZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���κ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_09_A01_TKSQSJ', @level2type=N'COLUMN',@level2name=N'TKHJSZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���κ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_09_A01_TKSQSJ', @level2type=N'COLUMN',@level2name=N'TKHXQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���κ�ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_09_A01_TKSQSJ', @level2type=N'COLUMN',@level2name=N'TKHSD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���κ�ڴ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_09_A01_TKSQSJ', @level2type=N'COLUMN',@level2name=N'TKHJC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ǰ״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_09_A01_TKSQSJ', @level2type=N'COLUMN',@level2name=N'ZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_09_A01_TKSQSJ', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������ݱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A01_LWSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A01_LWSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A01_LWSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A01_LWSJ', @level2type=N'COLUMN',@level2name=N'XNID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A01_LWSJ', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A01_LWSJ', @level2type=N'COLUMN',@level2name=N'LWMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ժҪ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A01_LWSJ', @level2type=N'COLUMN',@level2name=N'LWZY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A01_LWSJ', @level2type=N'COLUMN',@level2name=N'LWNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ϴ���ʦID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A01_LWSJ', @level2type=N'COLUMN',@level2name=N'SCJSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ϴ�ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A01_LWSJ', @level2type=N'COLUMN',@level2name=N'SCSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���л���ݱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A02_KYHDSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A02_KYHDSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A02_KYHDSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A02_KYHDSJ', @level2type=N'COLUMN',@level2name=N'XNID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A02_KYHDSJ', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A02_KYHDSJ', @level2type=N'COLUMN',@level2name=N'HDMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A02_KYHDSJ', @level2type=N'COLUMN',@level2name=N'HDNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ񷢲�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A02_KYHDSJ', @level2type=N'COLUMN',@level2name=N'SFFB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ϴ���ʦID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A02_KYHDSJ', @level2type=N'COLUMN',@level2name=N'SCJSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ϴ�ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A02_KYHDSJ', @level2type=N'COLUMN',@level2name=N'SCSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������Ϣ���ݱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A03_CPXXSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A03_CPXXSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A03_CPXXSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A03_CPXXSJ', @level2type=N'COLUMN',@level2name=N'XNID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A03_CPXXSJ', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ϣ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A03_CPXXSJ', @level2type=N'COLUMN',@level2name=N'XXMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ϣ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A03_CPXXSJ', @level2type=N'COLUMN',@level2name=N'XXNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ񷢲�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A03_CPXXSJ', @level2type=N'COLUMN',@level2name=N'SFFB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ϴ���ʦID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A03_CPXXSJ', @level2type=N'COLUMN',@level2name=N'SCJSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ϴ�ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A03_CPXXSJ', @level2type=N'COLUMN',@level2name=N'SCSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������ݱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A04_KTSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A04_KTSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A04_KTSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A04_KTSJ', @level2type=N'COLUMN',@level2name=N'XNID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A04_KTSJ', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A04_KTSJ', @level2type=N'COLUMN',@level2name=N'KTMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A04_KTSJ', @level2type=N'COLUMN',@level2name=N'KTZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A04_KTSJ', @level2type=N'COLUMN',@level2name=N'KTNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����ʦID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A04_KTSJ', @level2type=N'COLUMN',@level2name=N'SQJSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A04_KTSJ', @level2type=N'COLUMN',@level2name=N'SQSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A04_KTSJ', @level2type=N'COLUMN',@level2name=N'SHZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��˽�ʦID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A04_KTSJ', @level2type=N'COLUMN',@level2name=N'SHJSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A04_KTSJ', @level2type=N'COLUMN',@level2name=N'SHSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A04_KTSJ', @level2type=N'COLUMN',@level2name=N'JXZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A04_KTSJ', @level2type=N'COLUMN',@level2name=N'JXSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����׶����ݱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A05_KTJDSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A05_KTJDSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A05_KTJDSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A05_KTJDSJ', @level2type=N'COLUMN',@level2name=N'KTID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�׶�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A05_KTJDSJ', @level2type=N'COLUMN',@level2name=N'JDMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�׶ι�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A05_KTJDSJ', @level2type=N'COLUMN',@level2name=N'JDGZNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ϴ�ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A05_KTJDSJ', @level2type=N'COLUMN',@level2name=N'SCSJ'
GO
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

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZXS_13_A01_XSJL')
            and   type = 'U')
   drop table EDU_ZZXS_13_A01_XSJL
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
	[XSXXID]  int  NOT NULL,--ѧ��ID
	[SCHOOLID]  int  NOT NULL,--ѧУID
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
CONSTRAINT [PK_EDU_ZZXS_06_01_XSCJ] PRIMARY KEY CLUSTERED
(
	[XSXXID] ASC,
	[SCHOOLID] ASC,
	[KCH] ASC,
	[XQID] ASC
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

--ѧ��������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZXS_13_A01_XSJL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZXS_13_A01_XSJL](
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[XSXXID]  int  NOT NULL,--ѧ����ϢID
	[YYNL]  nvarchar(50)  NOT NULL,--Ӣ������
	[GZNX]  int  NOT NULL,--��������
	[ZWPJ]  nvarchar(300)  NOT NULL,--��������
	[JYJL]  nvarchar(200)  NOT NULL,--��������
	[SHZS]  nvarchar(200)  NOT NULL,--����֤��
	[GZJY]  nvarchar(500)  NOT NULL,--��������
	[QZYX]  nvarchar(200)  NOT NULL,--��ְ����
	[JNZC]  nvarchar(300)  NOT NULL,--����ר��
	[XMJY]  nvarchar(600)  NOT NULL,--��Ŀ����
CONSTRAINT [PK_EDU_ZZXS_13_A01_XSJL] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[XSXXID] ASC
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
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_06_01_XSCJ', @level2type=N'COLUMN',@level2name=N'XSXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_06_01_XSCJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
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
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_13_A01_XSJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_13_A01_XSJL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ����ϢID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_13_A01_XSJL', @level2type=N'COLUMN',@level2name=N'XSXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ӣ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_13_A01_XSJL', @level2type=N'COLUMN',@level2name=N'YYNL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_13_A01_XSJL', @level2type=N'COLUMN',@level2name=N'GZNX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_13_A01_XSJL', @level2type=N'COLUMN',@level2name=N'ZWPJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_13_A01_XSJL', @level2type=N'COLUMN',@level2name=N'JYJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����֤��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_13_A01_XSJL', @level2type=N'COLUMN',@level2name=N'SHZS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_13_A01_XSJL', @level2type=N'COLUMN',@level2name=N'GZJY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ְ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_13_A01_XSJL', @level2type=N'COLUMN',@level2name=N'QZYX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ר��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_13_A01_XSJL', @level2type=N'COLUMN',@level2name=N'JNZC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ŀ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_13_A01_XSJL', @level2type=N'COLUMN',@level2name=N'XMJY'
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
--�ռ�����EDU_ZZXX  ��������SqlBuilder0.1

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZXX_01_01_ZZXX')
            and   type = 'U')
   drop table EDU_ZZXX_01_01_ZZXX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZXX_03_01_XNJG')
            and   type = 'U')
   drop table EDU_ZZXX_03_01_XNJG
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZXX_03_A01_JGGW')
            and   type = 'U')
   drop table EDU_ZZXX_03_A01_JGGW
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZXX_10_A01_XYAQSJ')
            and   type = 'U')
   drop table EDU_ZZXX_10_A01_XYAQSJ
go
--ѧУ�������ݱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZXX_01_01_ZZXX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZXX_01_01_ZZXX](
	[ID]  int  NOT NULL,--���
	[XXDM]  nvarchar(10)  NOT NULL,--ѧУ����
	[XXMC]  nvarchar(60)  NOT NULL,--ѧУ����
	[XXYWMC]  nvarchar(60)  NULL,--ѧУӢ������
	[XXJBZM]  nvarchar(3)  NOT NULL,--ѧУ�ٰ�����
	[XXZGBMM]  nvarchar(3)  NOT NULL,--ѧУ���ܲ�����
	[XXDZ]  nvarchar(180)  NOT NULL,--ѧУ��ַ
	[XXYZBM]  nvarchar(6)  NOT NULL,--ѧУ��������
	[XZQHM]  nvarchar(6)  NOT NULL,--����������
	[JXNY]  nvarchar(6)  NOT NULL,--��У����
	[XQR]  nvarchar(60)  NOT NULL,--У����
	[CLBJ]  text  NULL,--��������
	[LSYG]  text  NULL,--��ʷ�ظ�
	[XXXQS]  decimal(2, 0)  NOT NULL,--ѧУУ����
	[XXPGLX]  nvarchar(1)  NULL,--ѧУ��������
	[XXPGQKSM]  text  NOT NULL,--ѧУ�������˵��
	[ZYDZ]  nvarchar(60)  NOT NULL,--��ҳ��ַ
	[FDDBRH]  nvarchar(30)  NOT NULL,--���������˺�
	[FRZSH]  nvarchar(20)  NOT NULL,--����֤���
	[LXDH]  nvarchar(30)  NOT NULL,--��ϵ�绰
	[CZDH]  nvarchar(30)  NOT NULL,--����绰
	[DZXX]  nvarchar(40)  NOT NULL,--��������
CONSTRAINT [PK_EDU_ZZXX_01_01_ZZXX] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--У�ڻ����������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZXX_03_01_XNJG]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZXX_03_01_XNJG](
	[JGH]  nvarchar(6)  NOT NULL,--������
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[JGMC]  nvarchar(100)  NOT NULL,--��������
	[JGYWMC]  nvarchar(100)  NULL,--����Ӣ������
	[JGJC]  nvarchar(50)  NOT NULL,--�������
	[JGJP]  nvarchar(20)  NOT NULL,--������ƴ
	[JGDZ]  nvarchar(180)  NOT NULL,--������ַ
	[LSSJJGH]  nvarchar(6)  NOT NULL,--�����ϼ�������
	[LSXQH]  nvarchar(2)  NOT NULL,--����У����
	[JGYXBS]  nvarchar(1)  NOT NULL,--������Ч��ʶ
	[SFST]  nvarchar(1)  NOT NULL,--�Ƿ�ʵ��
	[JLNY]  nvarchar(6)  NULL,--��������
	[JGYZBM]  nvarchar(6)  NULL,--������������
	[FZRH]  nvarchar(20)  NOT NULL,--�����˺�
CONSTRAINT [PK_EDU_ZZXX_03_01_XNJG] PRIMARY KEY CLUSTERED
(
	[JGH] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--������λ��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZXX_03_A01_JGGW]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZXX_03_A01_JGGW](
	[ID]  int  NOT NULL,--��λ��ID
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[JGH]  nvarchar(6)  NOT NULL,--������
	[GWBH]  nvarchar(50)  NOT NULL,--��λ���
	[GWMC]  nvarchar(50)  NULL,--��λ����
	[GWSM]  text  NOT NULL,--��λ˵��
CONSTRAINT [PK_EDU_ZZXX_03_A01_JGGW] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--У԰��ȫ���ݱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZXX_10_A01_XYAQSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZXX_10_A01_XYAQSJ](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[BT]  nvarchar(100)  NOT NULL,--����
	[NR]  text  NOT NULL,--����
	[FBSJ]  datetime  NULL,--����ʱ��
	[FBRID]  nvarchar(20)  NOT NULL,--������ID
	[FBDW]  nvarchar(100)  NOT NULL,--������λ
	[SFXS]  nvarchar(1)  NOT NULL,--�Ƿ���ʾ
CONSTRAINT [PK_EDU_ZZXX_10_A01_XYAQSJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--����Ϊ���ע�����
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ�������ݱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_01_01_ZZXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_01_01_ZZXX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_01_01_ZZXX', @level2type=N'COLUMN',@level2name=N'XXDM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_01_01_ZZXX', @level2type=N'COLUMN',@level2name=N'XXMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУӢ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_01_01_ZZXX', @level2type=N'COLUMN',@level2name=N'XXYWMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ�ٰ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_01_01_ZZXX', @level2type=N'COLUMN',@level2name=N'XXJBZM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ���ܲ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_01_01_ZZXX', @level2type=N'COLUMN',@level2name=N'XXZGBMM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��ַ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_01_01_ZZXX', @level2type=N'COLUMN',@level2name=N'XXDZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_01_01_ZZXX', @level2type=N'COLUMN',@level2name=N'XXYZBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_01_01_ZZXX', @level2type=N'COLUMN',@level2name=N'XZQHM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��У����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_01_01_ZZXX', @level2type=N'COLUMN',@level2name=N'JXNY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'У����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_01_01_ZZXX', @level2type=N'COLUMN',@level2name=N'XQR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_01_01_ZZXX', @level2type=N'COLUMN',@level2name=N'CLBJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʷ�ظ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_01_01_ZZXX', @level2type=N'COLUMN',@level2name=N'LSYG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУУ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_01_01_ZZXX', @level2type=N'COLUMN',@level2name=N'XXXQS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_01_01_ZZXX', @level2type=N'COLUMN',@level2name=N'XXPGLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ�������˵��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_01_01_ZZXX', @level2type=N'COLUMN',@level2name=N'XXPGQKSM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ҳ��ַ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_01_01_ZZXX', @level2type=N'COLUMN',@level2name=N'ZYDZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���������˺�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_01_01_ZZXX', @level2type=N'COLUMN',@level2name=N'FDDBRH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����֤���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_01_01_ZZXX', @level2type=N'COLUMN',@level2name=N'FRZSH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ϵ�绰' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_01_01_ZZXX', @level2type=N'COLUMN',@level2name=N'LXDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����绰' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_01_01_ZZXX', @level2type=N'COLUMN',@level2name=N'CZDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_01_01_ZZXX', @level2type=N'COLUMN',@level2name=N'DZXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'У�ڻ����������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_03_01_XNJG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_03_01_XNJG', @level2type=N'COLUMN',@level2name=N'JGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_03_01_XNJG', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_03_01_XNJG', @level2type=N'COLUMN',@level2name=N'JGMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����Ӣ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_03_01_XNJG', @level2type=N'COLUMN',@level2name=N'JGYWMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_03_01_XNJG', @level2type=N'COLUMN',@level2name=N'JGJC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ƴ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_03_01_XNJG', @level2type=N'COLUMN',@level2name=N'JGJP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ַ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_03_01_XNJG', @level2type=N'COLUMN',@level2name=N'JGDZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����ϼ�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_03_01_XNJG', @level2type=N'COLUMN',@level2name=N'LSSJJGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����У����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_03_01_XNJG', @level2type=N'COLUMN',@level2name=N'LSXQH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������Ч��ʶ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_03_01_XNJG', @level2type=N'COLUMN',@level2name=N'JGYXBS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ�ʵ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_03_01_XNJG', @level2type=N'COLUMN',@level2name=N'SFST'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_03_01_XNJG', @level2type=N'COLUMN',@level2name=N'JLNY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_03_01_XNJG', @level2type=N'COLUMN',@level2name=N'JGYZBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����˺�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_03_01_XNJG', @level2type=N'COLUMN',@level2name=N'FZRH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������λ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_03_A01_JGGW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��λ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_03_A01_JGGW', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_03_A01_JGGW', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_03_A01_JGGW', @level2type=N'COLUMN',@level2name=N'JGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��λ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_03_A01_JGGW', @level2type=N'COLUMN',@level2name=N'GWBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��λ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_03_A01_JGGW', @level2type=N'COLUMN',@level2name=N'GWMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��λ˵��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_03_A01_JGGW', @level2type=N'COLUMN',@level2name=N'GWSM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'У԰��ȫ���ݱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_10_A01_XYAQSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_10_A01_XYAQSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_10_A01_XYAQSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_10_A01_XYAQSJ', @level2type=N'COLUMN',@level2name=N'BT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_10_A01_XYAQSJ', @level2type=N'COLUMN',@level2name=N'NR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_10_A01_XYAQSJ', @level2type=N'COLUMN',@level2name=N'FBSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_10_A01_XYAQSJ', @level2type=N'COLUMN',@level2name=N'FBRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������λ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_10_A01_XYAQSJ', @level2type=N'COLUMN',@level2name=N'FBDW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ���ʾ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_10_A01_XYAQSJ', @level2type=N'COLUMN',@level2name=N'SFXS'
GO
--�ռ�����EDU_ZZZS  ��������SqlBuilder0.1

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZZS_01_01_ZSXX')
            and   type = 'U')
   drop table EDU_ZZZS_01_01_ZSXX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZZS_01_A01_ZSJH')
            and   type = 'U')
   drop table EDU_ZZZS_01_A01_ZSJH
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZZS_02_01_RXCJ')
            and   type = 'U')
   drop table EDU_ZZZS_02_01_RXCJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZZS_03_01_KSKMCJ')
            and   type = 'U')
   drop table EDU_ZZZS_03_01_KSKMCJ
go
--�������ݱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZZS_01_01_ZSXX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZZS_01_01_ZSXX](
	[XSXXID]  int  NOT NULL,--ѧ����Ϣ���ݱ�
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[ZKZH]  nvarchar(15)  NOT NULL,--׼��֤��
	[KSH]  nvarchar(20)  NOT NULL,--������
	[KQXZQHM]  nvarchar(6)  NULL,--��������������
	[RXNY]  nvarchar(6)  NOT NULL,--��ѧ����
	[YSWGYZM]  nvarchar(2)  NOT NULL,--Ӧ�����������
	[BKZYM1]  nvarchar(6)  NULL,--����רҵ��1
	[BKZYM2]  nvarchar(6)  NULL,--����רҵ��2
	[BKZYM3]  nvarchar(6)  NULL,--����רҵ��3
	[BKZYM4]  nvarchar(6)  NULL,--����רҵ��4
	[BKZYM5]  nvarchar(6)  NULL,--����רҵ��5
	[BKZYM6]  nvarchar(6)  NULL,--����רҵ��6
	[KSFSM]  nvarchar(1)  NOT NULL,--���Է�ʽ��
	[BYZX]  nvarchar(50)  NOT NULL,--��ҵ��ѧ
	[BYZXYZBM]  nvarchar(6)  NOT NULL,--��ҵ��ѧ��������
	[KSTC]  nvarchar(100)  NULL,--�����س�
	[JLYCC]  nvarchar(200)  NULL,--������ʹ�
	[JSHJ]  nvarchar(200)  NULL,--������
	[SHGZ]  nvarchar(200)  NULL,--��Ṥ��
	[TJJL]  nvarchar(20)  NULL,--������
	[JZBS]  nvarchar(20)  NULL,--���岡ʷ
	[KSJWBS]  nvarchar(200)  NULL,--����������ʷ
	[SG]  decimal(5, 1)  NULL,--���
	[KSSL]  decimal(3, 1)  NULL,--��������
CONSTRAINT [PK_EDU_ZZZS_01_01_ZSXX] PRIMARY KEY CLUSTERED
(
	[XSXXID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�����ƻ����ݱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZZS_01_A01_ZSJH]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZZS_01_A01_ZSJH](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[ZYXXID]  int  NOT NULL,--רҵ������Ϣ
	[XNID]  int  NOT NULL,--ѧ��
	[ZSJHRS]  int  NOT NULL,--�����ƻ�
	[BZ]  text  NULL,--��ע
CONSTRAINT [PK_EDU_ZZZS_01_A01_ZSJH] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--��ѧ�ɼ����ݱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZZS_02_01_RXCJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZZS_02_01_RXCJ](
	[XSXXID]  int  NOT NULL,--ѧ����Ϣ���ݱ�
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[RXZF]  decimal(5, 1)  NULL,--��ѧ�ܷ�
	[GKZF]  decimal(5, 1)  NULL,--�п��ܷ�
	[FJF]  decimal(5, 1)  NULL,--���ӷ�
	[FJFLBM]  nvarchar(1)  NULL,--���ӷ������
CONSTRAINT [PK_EDU_ZZZS_02_01_RXCJ] PRIMARY KEY CLUSTERED
(
	[XSXXID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--������Ŀ�ɼ��������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZZS_03_01_KSKMCJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZZS_03_01_KSKMCJ](
	[XSXXID]  int  NOT NULL,--����ID
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[KMM]  nvarchar(2)  NOT NULL,--��Ŀ��
	[ZKFS]  decimal(5, 1)  NOT NULL,--�п�����
CONSTRAINT [PK_EDU_ZZZS_03_01_KSKMCJ] PRIMARY KEY CLUSTERED
(
	[XSXXID] ASC,
	[SCHOOLID] ASC,
	[KMM] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--����Ϊ���ע�����
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������ݱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_01_ZSXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ����Ϣ���ݱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_01_ZSXX', @level2type=N'COLUMN',@level2name=N'XSXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_01_ZSXX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'׼��֤��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_01_ZSXX', @level2type=N'COLUMN',@level2name=N'ZKZH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_01_ZSXX', @level2type=N'COLUMN',@level2name=N'KSH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_01_ZSXX', @level2type=N'COLUMN',@level2name=N'KQXZQHM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ѧ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_01_ZSXX', @level2type=N'COLUMN',@level2name=N'RXNY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ӧ�����������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_01_ZSXX', @level2type=N'COLUMN',@level2name=N'YSWGYZM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����רҵ��1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_01_ZSXX', @level2type=N'COLUMN',@level2name=N'BKZYM1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����רҵ��2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_01_ZSXX', @level2type=N'COLUMN',@level2name=N'BKZYM2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����רҵ��3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_01_ZSXX', @level2type=N'COLUMN',@level2name=N'BKZYM3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����רҵ��4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_01_ZSXX', @level2type=N'COLUMN',@level2name=N'BKZYM4'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����רҵ��5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_01_ZSXX', @level2type=N'COLUMN',@level2name=N'BKZYM5'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����רҵ��6' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_01_ZSXX', @level2type=N'COLUMN',@level2name=N'BKZYM6'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���Է�ʽ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_01_ZSXX', @level2type=N'COLUMN',@level2name=N'KSFSM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ҵ��ѧ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_01_ZSXX', @level2type=N'COLUMN',@level2name=N'BYZX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ҵ��ѧ��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_01_ZSXX', @level2type=N'COLUMN',@level2name=N'BYZXYZBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����س�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_01_ZSXX', @level2type=N'COLUMN',@level2name=N'KSTC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ʹ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_01_ZSXX', @level2type=N'COLUMN',@level2name=N'JLYCC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_01_ZSXX', @level2type=N'COLUMN',@level2name=N'JSHJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ṥ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_01_ZSXX', @level2type=N'COLUMN',@level2name=N'SHGZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_01_ZSXX', @level2type=N'COLUMN',@level2name=N'TJJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���岡ʷ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_01_ZSXX', @level2type=N'COLUMN',@level2name=N'JZBS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����������ʷ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_01_ZSXX', @level2type=N'COLUMN',@level2name=N'KSJWBS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_01_ZSXX', @level2type=N'COLUMN',@level2name=N'SG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_01_ZSXX', @level2type=N'COLUMN',@level2name=N'KSSL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����ƻ����ݱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_A01_ZSJH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_A01_ZSJH', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_A01_ZSJH', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'רҵ������Ϣ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_A01_ZSJH', @level2type=N'COLUMN',@level2name=N'ZYXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_A01_ZSJH', @level2type=N'COLUMN',@level2name=N'XNID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����ƻ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_A01_ZSJH', @level2type=N'COLUMN',@level2name=N'ZSJHRS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_01_A01_ZSJH', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ѧ�ɼ����ݱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_02_01_RXCJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ����Ϣ���ݱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_02_01_RXCJ', @level2type=N'COLUMN',@level2name=N'XSXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_02_01_RXCJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ѧ�ܷ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_02_01_RXCJ', @level2type=N'COLUMN',@level2name=N'RXZF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�п��ܷ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_02_01_RXCJ', @level2type=N'COLUMN',@level2name=N'GKZF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ӷ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_02_01_RXCJ', @level2type=N'COLUMN',@level2name=N'FJF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ӷ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_02_01_RXCJ', @level2type=N'COLUMN',@level2name=N'FJFLBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������Ŀ�ɼ��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_03_01_KSKMCJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_03_01_KSKMCJ', @level2type=N'COLUMN',@level2name=N'XSXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_03_01_KSKMCJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ŀ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_03_01_KSKMCJ', @level2type=N'COLUMN',@level2name=N'KMM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�п�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZZS_03_01_KSKMCJ', @level2type=N'COLUMN',@level2name=N'ZKFS'
GO
