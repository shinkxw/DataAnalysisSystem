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
