--�ռ�����IM  ��������SqlBuilder0.1

if exists (select 1 from  sysobjects where  id = object_id('IM_Msg')
            and   type = 'U')
   drop table IM_Msg
go
--IM��Ϣ
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[IM_Msg]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[IM_Msg](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[UserForm]  nvarchar(50)  NULL,--�����û�
	[UserTo]  nvarchar(50)  NOT NULL,--�����û�
	[Title]  nvarchar(500)  NOT NULL,--����
	[Contents]  text  NULL,--����
	[MsgType]  int  NOT NULL,--��Ϣ����
	[AddTime]  datetime  NOT NULL,--���ʱ��
	[SendTime]  datetime  NOT NULL,--�ͳ�ʱ��
	[Statu]  int  NOT NULL,--״̬
	[golink]  text  NOT NULL,--����
	[showtext]  text  NOT NULL,--��ʾ����
CONSTRAINT [PK_IM_Msg] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--����Ϊ���ע�����
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'IM��Ϣ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IM_Msg'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IM_Msg', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IM_Msg', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����û�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IM_Msg', @level2type=N'COLUMN',@level2name=N'UserForm'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����û�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IM_Msg', @level2type=N'COLUMN',@level2name=N'UserTo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IM_Msg', @level2type=N'COLUMN',@level2name=N'Title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IM_Msg', @level2type=N'COLUMN',@level2name=N'Contents'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ϣ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IM_Msg', @level2type=N'COLUMN',@level2name=N'MsgType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IM_Msg', @level2type=N'COLUMN',@level2name=N'AddTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ͳ�ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IM_Msg', @level2type=N'COLUMN',@level2name=N'SendTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IM_Msg', @level2type=N'COLUMN',@level2name=N'Statu'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IM_Msg', @level2type=N'COLUMN',@level2name=N'golink'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʾ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IM_Msg', @level2type=N'COLUMN',@level2name=N'showtext'
GO
