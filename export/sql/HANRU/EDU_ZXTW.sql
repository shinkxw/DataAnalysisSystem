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
