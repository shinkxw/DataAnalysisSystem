--�ռ�����EDU_ZX  ��������SqlBuilder0.1

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZX_01_A01_HDGL')
            and   type = 'U')
   drop table EDU_ZX_01_A01_HDGL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZX_01_A02_BMGL')
            and   type = 'U')
   drop table EDU_ZX_01_A02_BMGL
go
--�����
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZX_01_A01_HDGL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZX_01_A01_HDGL](
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[HDBMBBT]  nvarchar(200)  NOT NULL,--����������
	[HDBMTZ]  text  NOT NULL,--�����֪ͨ
	[HDQTZT]  nvarchar(200)  NOT NULL,--���ͣ״̬
CONSTRAINT [PK_EDU_ZX_01_A01_HDGL] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--��������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZX_01_A02_BMGL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZX_01_A02_BMGL](
	[BMM]  nvarchar(32)  NOT NULL,--������
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[XM]  nvarchar(200)  NOT NULL,--����
	[XB]  nvarchar(200)  NOT NULL,--�Ա�
	[BXCZ]  nvarchar(200)  NOT NULL,--��ҵ����
	[FQXM]  nvarchar(200)  NOT NULL,--��������
	[FQLXFS]  nvarchar(200)  NOT NULL,--������ϵ��ʽ
	[MQXM]  nvarchar(200)  NOT NULL,--ĸ������
	[MQLXFS]  nvarchar(200)  NOT NULL,--ĸ����ϵ��ʽ
	[SFZX]  nvarchar(200)  NOT NULL,--�Ƿ�סУ
	[YLZD]  nvarchar(200)  NOT NULL,--Ԥ���ֶ�1
CONSTRAINT [PK_EDU_ZX_01_A02_BMGL] PRIMARY KEY CLUSTERED
(
	[BMM] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--����Ϊ���ע�����
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZX_01_A01_HDGL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZX_01_A01_HDGL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZX_01_A01_HDGL', @level2type=N'COLUMN',@level2name=N'HDBMBBT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����֪ͨ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZX_01_A01_HDGL', @level2type=N'COLUMN',@level2name=N'HDBMTZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ͣ״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZX_01_A01_HDGL', @level2type=N'COLUMN',@level2name=N'HDQTZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZX_01_A02_BMGL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZX_01_A02_BMGL', @level2type=N'COLUMN',@level2name=N'BMM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZX_01_A02_BMGL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZX_01_A02_BMGL', @level2type=N'COLUMN',@level2name=N'XM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ա�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZX_01_A02_BMGL', @level2type=N'COLUMN',@level2name=N'XB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ҵ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZX_01_A02_BMGL', @level2type=N'COLUMN',@level2name=N'BXCZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZX_01_A02_BMGL', @level2type=N'COLUMN',@level2name=N'FQXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ϵ��ʽ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZX_01_A02_BMGL', @level2type=N'COLUMN',@level2name=N'FQLXFS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ĸ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZX_01_A02_BMGL', @level2type=N'COLUMN',@level2name=N'MQXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ĸ����ϵ��ʽ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZX_01_A02_BMGL', @level2type=N'COLUMN',@level2name=N'MQLXFS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ�סУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZX_01_A02_BMGL', @level2type=N'COLUMN',@level2name=N'SFZX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ԥ���ֶ�1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZX_01_A02_BMGL', @level2type=N'COLUMN',@level2name=N'YLZD'
GO
