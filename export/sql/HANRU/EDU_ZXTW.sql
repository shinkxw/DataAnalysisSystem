--空间名：EDU_ZXTW  生成器：SqlBuilder0.1

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXTW_03_A01_XSMZJL')
            and   type = 'U')
   drop table EDU_ZXTW_03_A01_XSMZJL
go
--学生门诊记录
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXTW_03_A01_XSMZJL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXTW_03_A01_XSMZJL](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校名
	[XSXXID]  int  NOT NULL,--学生ID
	[BJID]  nvarchar(10)  NOT NULL,--班级
	[JZKSSJ]  datetime  NOT NULL,--就诊开始时间
	[JZJSSJ]  datetime  NOT NULL,--就诊结束时间
	[JZYY]  text  NOT NULL,--就诊原因
	[ZDJG]  text  NOT NULL,--诊断结果
	[FY]  decimal(8, 3)  NOT NULL,--费用
CONSTRAINT [PK_EDU_ZXTW_03_A01_XSMZJL] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--以下为添加注释语句
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生门诊记录' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXTW_03_A01_XSMZJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXTW_03_A01_XSMZJL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXTW_03_A01_XSMZJL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXTW_03_A01_XSMZJL', @level2type=N'COLUMN',@level2name=N'XSXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'班级' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXTW_03_A01_XSMZJL', @level2type=N'COLUMN',@level2name=N'BJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'就诊开始时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXTW_03_A01_XSMZJL', @level2type=N'COLUMN',@level2name=N'JZKSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'就诊结束时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXTW_03_A01_XSMZJL', @level2type=N'COLUMN',@level2name=N'JZJSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'就诊原因' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXTW_03_A01_XSMZJL', @level2type=N'COLUMN',@level2name=N'JZYY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'诊断结果' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXTW_03_A01_XSMZJL', @level2type=N'COLUMN',@level2name=N'ZDJG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'费用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXTW_03_A01_XSMZJL', @level2type=N'COLUMN',@level2name=N'FY'
GO
