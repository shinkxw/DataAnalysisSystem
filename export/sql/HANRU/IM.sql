--空间名：IM  生成器：SqlBuilder0.1

if exists (select 1 from  sysobjects where  id = object_id('IM_Msg')
            and   type = 'U')
   drop table IM_Msg
go
--IM消息
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[IM_Msg]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[IM_Msg](
	[ID]  int  identity,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[UserForm]  nvarchar(50)  NULL,--发出用户
	[UserTo]  nvarchar(50)  NOT NULL,--发往用户
	[Title]  nvarchar(500)  NOT NULL,--标题
	[Contents]  text  NULL,--内容
	[MsgType]  int  NOT NULL,--消息类型
	[AddTime]  datetime  NOT NULL,--添加时间
	[SendTime]  datetime  NOT NULL,--送出时间
	[Statu]  int  NOT NULL,--状态
	[golink]  text  NOT NULL,--链接
	[showtext]  text  NOT NULL,--显示内容
CONSTRAINT [PK_IM_Msg] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--以下为添加注释语句
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'IM消息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IM_Msg'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IM_Msg', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IM_Msg', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发出用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IM_Msg', @level2type=N'COLUMN',@level2name=N'UserForm'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发往用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IM_Msg', @level2type=N'COLUMN',@level2name=N'UserTo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IM_Msg', @level2type=N'COLUMN',@level2name=N'Title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IM_Msg', @level2type=N'COLUMN',@level2name=N'Contents'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'消息类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IM_Msg', @level2type=N'COLUMN',@level2name=N'MsgType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IM_Msg', @level2type=N'COLUMN',@level2name=N'AddTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'送出时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IM_Msg', @level2type=N'COLUMN',@level2name=N'SendTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IM_Msg', @level2type=N'COLUMN',@level2name=N'Statu'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'链接' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IM_Msg', @level2type=N'COLUMN',@level2name=N'golink'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'显示内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IM_Msg', @level2type=N'COLUMN',@level2name=N'showtext'
GO
