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
