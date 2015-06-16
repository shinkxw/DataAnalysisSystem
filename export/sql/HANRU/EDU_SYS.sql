--�ռ�����EDU_SYS  ��������SqlBuilder0.1

if exists (select 1 from  sysobjects where  id = object_id('EDU_SYS_01_CONFIG')
            and   type = 'U')
   drop table EDU_SYS_01_CONFIG
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_SYS_01_XN')
            and   type = 'U')
   drop table EDU_SYS_01_XN
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_SYS_01_MODULE')
            and   type = 'U')
   drop table EDU_SYS_01_MODULE
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_SYS_01_MICROMODULE')
            and   type = 'U')
   drop table EDU_SYS_01_MICROMODULE
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_SYS_19_BZSJLX')
            and   type = 'U')
   drop table EDU_SYS_19_BZSJLX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_SYS_19_BZSJ')
            and   type = 'U')
   drop table EDU_SYS_19_BZSJ
go
--ȫ�����ñ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_SYS_01_CONFIG]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_SYS_01_CONFIG](
	[ID]  int  NOT NULL,--����ID
	[VALUE]  nvarchar(200)  NOT NULL,--����ֵ
CONSTRAINT [PK_EDU_SYS_01_CONFIG] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

INSERT INTO [EDU_SYS_01_CONFIG]([ID] ,[VALUE]) VALUES('1001', 'http://www.114school.com/yxt/index.html')
INSERT INTO [EDU_SYS_01_CONFIG]([ID] ,[VALUE]) VALUES('1002', 'http://sso.114school.com/cas/')
INSERT INTO [EDU_SYS_01_CONFIG]([ID] ,[VALUE]) VALUES('1003', 'http://www2.114school.com/203S/api4LoginUser.do')
INSERT INTO [EDU_SYS_01_CONFIG]([ID] ,[VALUE]) VALUES('1004', 'http://122.229.30.151:8888/MsgService/SiServer')
INSERT INTO [EDU_SYS_01_CONFIG]([ID] ,[VALUE]) VALUES('1005', '0573')
INSERT INTO [EDU_SYS_01_CONFIG]([ID] ,[VALUE]) VALUES('1006', '83572000')
INSERT INTO [EDU_SYS_01_CONFIG]([ID] ,[VALUE]) VALUES('1007', '83572499')
INSERT INTO [EDU_SYS_01_CONFIG]([ID] ,[VALUE]) VALUES('2001', '600')
INSERT INTO [EDU_SYS_01_CONFIG]([ID] ,[VALUE]) VALUES('9001', '�ر����ܼ��')
INSERT INTO [EDU_SYS_01_CONFIG]([ID] ,[VALUE]) VALUES('9002', '�������ܼ��')

--ѧ���
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_SYS_01_XN]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_SYS_01_XN](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[XN]  nvarchar(9)  NOT NULL,--ѧ��
CONSTRAINT [PK_EDU_SYS_01_XN] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO


--������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_SYS_01_MODULE]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_SYS_01_MODULE](
	[ID]  int  NOT NULL,--
	[APPID]  int  NOT NULL,--
	[NAME]  nvarchar(20)  NOT NULL,--
	[Depth]  int  NOT NULL,--
	[PID]  int  NOT NULL,--
	[MenuDisp]  int  NOT NULL,--
	[MenuUserType]  int  NOT NULL,--
	[Link]  nvarchar(100)  NOT NULL,--
	[OrderIndex]  int  NOT NULL,--
CONSTRAINT [PK_EDU_SYS_01_MODULE] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO


--΢������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_SYS_01_MICROMODULE]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_SYS_01_MICROMODULE](
	[ID]  int  NOT NULL,--���
	[MODULEID]  int  NOT NULL,--ģ��ID
	[NAME]  nvarchar(20)  NOT NULL,--����
	[URL]  nvarchar(300)  NOT NULL,--��ַ
	[PICTYPE]  int  NOT NULL,--ͼƬ����
	[PIC1]  nvarchar(300)  NOT NULL,--ͼƬһ
	[PIC2]  nvarchar(300)  NOT NULL,--ͼƬ��
CONSTRAINT [PK_EDU_SYS_01_MICROMODULE] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO


--��׼�������ͱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_SYS_19_BZSJLX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_SYS_19_BZSJLX](
	[ID]  int  NOT NULL,--���
	[SJLXMC]  nvarchar(50)  NOT NULL,--������������
CONSTRAINT [PK_EDU_SYS_19_BZSJLX] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

INSERT INTO [EDU_SYS_19_BZSJLX]([ID] ,[SJLXMC]) VALUES('1', '���ұ�׼')
INSERT INTO [EDU_SYS_19_BZSJLX]([ID] ,[SJLXMC]) VALUES('2', '������׼')
INSERT INTO [EDU_SYS_19_BZSJLX]([ID] ,[SJLXMC]) VALUES('3', '��ְ��׼')
INSERT INTO [EDU_SYS_19_BZSJLX]([ID] ,[SJLXMC]) VALUES('4', '�Խ���׼')

--��׼���ݱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_SYS_19_BZSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_SYS_19_BZSJ](
	[ID]  int  NOT NULL,--���
	[BZSJMC]  nvarchar(50)  NOT NULL,--��׼��������
	[SJLXID]  int  NOT NULL,--��������ID
	[GLLJ]  nvarchar(200)  NOT NULL,--��������
CONSTRAINT [PK_EDU_SYS_19_BZSJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('1', '������ò����', '1', '/gb/zzmm/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('2', 'רҵ����ְ�����', '1', '/gb/zyjszw/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('3', 'ְҵ���������', '1', '/gb/zyfl/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('4', 'ְ�񼶱����', '1', '/gb/zwjbdm/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('5', '�ڽ���������', '1', '/gb/zjxy/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('6', '�л����񹲺͹�������������', '1', '/gb/zhrmghgxzqh/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('7', '�й����ִ���', '1', '/gb/zgyz/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('8', '�й����������Ƶ�������ĸƴд���ʹ���', '1', '/gb/zggmzmcdlmzmpxf/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('9', '�������ƴ���2��ĸ����', '1', '/gb/yzmcezm/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('10', 'ѧ������', '1', '/gb/xl/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('11', '���ױ��ܵȼ��������ʶ', '1', '/gb/wxbmzj/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('12', '��������͵������ƴ���', '1', '/gb/sjgghdqmc/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('13', '�˵��Ա����', '1', '/gb/rdxb/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('14', '������ѵ�������', '1', '/gb/jypxjg/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('15', '��ͥ��ϵ����', '1', '/gb/jtgx/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('16', '����״��1λ���ִ���', '1', '/gb/jkzkywsz/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('17', '����״������', '1', '/gb/hyzz/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('18', '����������', '1', '/gb/hklb/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('19', '��λ�ߵ�ѧУ����ʵ�������', '1', '/gb/lwgdxxdastfl/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('20', '��ҵ״����������ݣ�����', '1', '/gb/cyzk/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('21', '����ר��Ͷ�ʲ������ƴ���', '2', '/jy/zyzxtzbzmc/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('22', '��Сѧ�γ̵ȼ�����', '2', '/jy/zxxkcdj/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('23', '��Сѧ�γ̴���', '2', '/jy/zxxkc/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('24', '��Сѧ����������', '2', '/jy/zxxbzlb/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('25', '��Сѧ�༶���ʹ���', '2', '/jy/zxxbjlx/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('26', 'ע��״������', '2', '/jy/zczk/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('27', '�İ�������', '2', '/jy/yblb/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('28', 'ѧУ�������������ٰ��ߴ���', '2', '/jy/xxjyjgjbz/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('29', 'ѧУ��λ��δ���', '2', '/jy/xxdwcc/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('30', 'ѧУ������', '2', '/jy/xxbb/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('31', 'Ѫ�ʹ���', '2', '/jy/xx/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('32', 'ѧ��������', '2', '/jy/xslb/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('33', 'ѧ����ǰ״̬����', '2', '/jy/xsdqzt/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('34', 'ѧ�ڴ���', '2', '/jy/xq/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('35', 'ѧ���춯ԭ�����', '2', '/jy/xjydyy/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('36', 'ѧ���춯������', '2', '/jy/xjydlb/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('37', '���ｨ���ȼ�����', '2', '/jy/wwjzdj/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('38', '�ļ��������', '2', '/jy/wjfl/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('39', '���ڵ����������Դ���', '2', '/jy/szdqjjsx/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('40', '���ڵس������ʹ���', '2', '/jy/szdcxlx/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('41', 'ʹ��״������', '2', '/jy/syzk/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('42', '��������˫���ѧģʽ����', '2', '/jy/ssmzsyjxms/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('43', '�ڿη�ʽ����', '2', '/jy/skfs/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('44', '���֤�����ʹ���', '2', '/jy/sfzjlx/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('45', '�Ƿ��־����', '2', '/jy/sfbz/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('46', '�ο�ѧ�δ���', '2', '/jy/rkxd/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('47', '�ον�ɫ����', '2', '/jy/rkjs/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('48', '��������Ҷȴ���', '2', '/jy/kzsfld/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('49', '���������׼����', '2', '/jy/kzsfbz/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('50', '�������ʴ���', '2', '/jy/ksxz/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('51', '������ʽ����', '2', '/jy/ksxs/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('52', '���Է�ʽ����', '2', '/jy/ksfs/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('53', '����ԭ�����', '2', '/jy/knyy/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('54', '���ѳ̶ȴ���', '2', '/jy/kncd/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('55', '�γ����Դ���', '2', '/jy/kcsx/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('56', '������״������', '2', '/jy/jzwzk/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('57', '��������;����', '2', '/jy/jzwyt/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('58', '������ƽ����ʽ����', '2', '/jy/jzwpmxs/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('59', '������¥����ʽ����', '2', '/jy/jzwlbxs/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('60', '������ṹ����', '2', '/jy/jzwjg/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('61', '�����������ʽ����', '2', '/jy/jzwjcxs/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('62', '������������', '2', '/jy/jzwfl/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('63', '��ְ��������', '2', '/jy/jzglb/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('64', '��ְ����ǰ״̬����', '2', '/jy/jzgdqzt/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('65', '��ѧ�����ʹ���', '2', '/jy/jxjlx/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('66', '��ͥ������', '2', '/jy/jtlb/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('67', '���������ʽ���Դ����', '2', '/jy/jlzzzjly/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('68', '�����̶ȴ���', '2', '/jy/jjcd/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('69', '������Դ����', '2', '/jy/jfly/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('70', '��λְҵ����', '2', '/jy/gwzy/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('71', '��λ������', '2', '/jy/gwlb/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('72', '���ķ�װ��ʽ����', '2', '/jy/gwfzfs/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('73', '��ů��ʽ����', '2', '/jy/gnfs/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('74', '�۰�̨�������', '2', '/jy/gatqw/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('75', '���ͷ�ʽ����', '2', '/jy/fsfs/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('76', '���ӷ�������', '2', '/jy/fjflb/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('77', 'һλ�����������޴���', '2', '/jy/ywdabgqx/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('78', '��Ȩ����', '2', '/jy/cq/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('79', '����������', '2', '/jy/bzlb/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('80', '��ѧ���ʹ���', '2', '/jy/bxlx/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('81', '�����������', '4', '/zj/kpzt/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('82', '�������ʹ���', '4', '/zj/tklx/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('83', 'רҵĿ¼����', '4', '/zj/zyml/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('84', '�Խ�רҵ����', '4', '/zj/zjzy/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('85', '�������ʴ���', '4', '/zj/hjxz/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('86', '��ҵ�����ʹ���', '4', '/zj/byslx/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('87', '�Ӱ����ʹ���', '4', '/zj/jblx/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('88', '��ѧ��������', '3', '/zz/zxjfl/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('89', '�����������', '3', '/zz/pgqk/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('90', '�γ̷������', '3', '/zz/kcfl/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('91', '�ݿ���Ŀ����', '3', '/zz/jkkm/index')

--����Ϊ���ע�����
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ȫ�����ñ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_SYS_01_CONFIG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_SYS_01_CONFIG', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ֵ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_SYS_01_CONFIG', @level2type=N'COLUMN',@level2name=N'VALUE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_SYS_01_XN'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_SYS_01_XN', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_SYS_01_XN', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_SYS_01_XN', @level2type=N'COLUMN',@level2name=N'XN'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_SYS_01_MODULE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'΢������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_SYS_01_MICROMODULE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_SYS_01_MICROMODULE', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ģ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_SYS_01_MICROMODULE', @level2type=N'COLUMN',@level2name=N'MODULEID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_SYS_01_MICROMODULE', @level2type=N'COLUMN',@level2name=N'NAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ַ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_SYS_01_MICROMODULE', @level2type=N'COLUMN',@level2name=N'URL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ͼƬ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_SYS_01_MICROMODULE', @level2type=N'COLUMN',@level2name=N'PICTYPE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ͼƬһ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_SYS_01_MICROMODULE', @level2type=N'COLUMN',@level2name=N'PIC1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ͼƬ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_SYS_01_MICROMODULE', @level2type=N'COLUMN',@level2name=N'PIC2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��׼�������ͱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_SYS_19_BZSJLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_SYS_19_BZSJLX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_SYS_19_BZSJLX', @level2type=N'COLUMN',@level2name=N'SJLXMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��׼���ݱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_SYS_19_BZSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_SYS_19_BZSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��׼��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_SYS_19_BZSJ', @level2type=N'COLUMN',@level2name=N'BZSJMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_SYS_19_BZSJ', @level2type=N'COLUMN',@level2name=N'SJLXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_SYS_19_BZSJ', @level2type=N'COLUMN',@level2name=N'GLLJ'
GO
