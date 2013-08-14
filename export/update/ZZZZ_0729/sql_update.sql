
if exists (select 1 from  sysobjects where  id = object_id('EDU_ELE_02_YHFZ')
            and   type = 'U')
   drop table EDU_ELE_02_YHFZ
go
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
CONSTRAINT [PK_EDU_ELE_02_YHFZ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
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


if exists (select 1 from  sysobjects where  id = object_id('EDU_ELE_02_FZYH')
            and   type = 'U')
   drop table EDU_ELE_02_FZYH
go
--�����û���
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ELE_02_FZYH]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ELE_02_FZYH](
	[ID]  int  NOT NULL,--�����ʦID
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[APPID]  int  NOT NULL,--Ӧ��ID
	[FZID]  int  NOT NULL,--����ID
	[FZYHID]  nvarchar(20)  NOT NULL,--�����û�ID
CONSTRAINT [PK_EDU_ELE_02_FZYH] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����û���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_02_FZYH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����ʦID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_02_FZYH', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_02_FZYH', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ӧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_02_FZYH', @level2type=N'COLUMN',@level2name=N'APPID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_02_FZYH', @level2type=N'COLUMN',@level2name=N'FZID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����û�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ELE_02_FZYH', @level2type=N'COLUMN',@level2name=N'FZYHID'
GO

