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

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZFC_08_A03_ZWHCY')
            and   type = 'U')
   drop table EDU_ZZFC_08_A03_ZWHCY
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZFC_08_A02_YHZSJL')
            and   type = 'U')
   drop table EDU_ZZFC_08_A02_YHZSJL
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
	[JZWCS]  decimal(2)  NOT NULL,--���������
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
	[GHSYNX]  decimal(3)  NULL,--�滮ʹ������
	[SFYYJBXCS]  nvarchar(1)  NULL,--�Ƿ���Ԥ�����մ�ʩ
	[SFKYYYJBNCS]  nvarchar(1)  NULL,--�Ƿ������Ӧ�����ѳ���
	[CQZH]  nvarchar(20)  NOT NULL,--��Ȩ֤��
	[JZWYTM]  nvarchar(2)  NULL,--��������;��
	[JZWZGD]  decimal(3)  NULL,--�������ܸ߶�
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
	[ZJAQGZHYJSYNX]  decimal(2)  NULL,--�����ȫ�����Ԥ��ʹ������
	[ZXLXM]  nvarchar(1)  NULL,--ר������
	[ZYZXTZBZMCM]  nvarchar(1)  NULL,--����ר��Ͷ�ʲ���������
	[WWJZDJM]  nvarchar(1)  NULL,--���ｨ���ȼ���
	[JXJFZYF]  decimal(8)  NOT NULL,--��ѧ�������÷�
	[QZJS]  decimal(8)  NOT NULL,--���н���
	[QZSYS]  decimal(8)  NOT NULL,--����ʵ����
	[QZTSS]  decimal(8)  NOT NULL,--����ͼ����
	[QZWJS]  decimal(8)  NOT NULL,--����΢����
	[QZYYS]  decimal(8)  NOT NULL,--����������
	[QZTYHDS]  decimal(8)  NOT NULL,--�����������
	[QZQTJFYF]  decimal(8)  NOT NULL,--���������̸��÷�
	[SHYF]  decimal(8)  NOT NULL,--�����÷�
	[QZXSSS]  decimal(8)  NOT NULL,--����ѧ������
	[QZST]  decimal(8)  NOT NULL,--����ʳ��
	[QZCS]  decimal(8)  NOT NULL,--���в���
	[QZGLF]  decimal(8)  NOT NULL,--���й�¯��(��ˮ��)
	[QZYS]  decimal(8)  NOT NULL,--����ԡ��
	[QZJGSS]  decimal(8)  NOT NULL,--���н̹�����
	[QZQTSHYF]  decimal(8)  NOT NULL,--�������������÷�
	[XZBGYF]  decimal(8)  NOT NULL,--�����칫�÷�
	[QZJSBGS]  decimal(8)  NOT NULL,--���н�ְ���칫��
	[QZWSBJS]  decimal(8)  NOT NULL,--��������������
	[QZQTXZBGYF]  decimal(8)  NOT NULL,--�������������칫�÷�
	[QTYF]  decimal(8)  NOT NULL,--�����÷�
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
	[KZRS]  decimal(2)  NOT NULL,--��ס����
	[WLDK]  nvarchar(20)  NULL,--����˿�
	[AZDSJ]  nvarchar(1)  NULL,--��װ���ӻ�
	[DHDK]  nvarchar(20)  NULL,--�绰�˿�
	[DHHM]  nvarchar(20)  NULL,--�绰����
	[SBDS]  decimal(10)  NULL,--ˮ�����
	[DBDS]  decimal(10)  NULL,--������
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
