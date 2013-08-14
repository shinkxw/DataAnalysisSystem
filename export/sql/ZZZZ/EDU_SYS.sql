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

INSERT INTO [EDU_SYS_01_XN]([ID] ,[SCHOOLID] ,[XN]) VALUES('2012', '0', '2012ѧ��')
INSERT INTO [EDU_SYS_01_XN]([ID] ,[SCHOOLID] ,[XN]) VALUES('2013', '0', '2013ѧ��')
INSERT INTO [EDU_SYS_01_XN]([ID] ,[SCHOOLID] ,[XN]) VALUES('2014', '0', '2014ѧ��')
INSERT INTO [EDU_SYS_01_XN]([ID] ,[SCHOOLID] ,[XN]) VALUES('2015', '0', '2015ѧ��')
INSERT INTO [EDU_SYS_01_XN]([ID] ,[SCHOOLID] ,[XN]) VALUES('2016', '0', '2016ѧ��')
INSERT INTO [EDU_SYS_01_XN]([ID] ,[SCHOOLID] ,[XN]) VALUES('2017', '0', '2017ѧ��')
INSERT INTO [EDU_SYS_01_XN]([ID] ,[SCHOOLID] ,[XN]) VALUES('2018', '0', '2018ѧ��')
INSERT INTO [EDU_SYS_01_XN]([ID] ,[SCHOOLID] ,[XN]) VALUES('2019', '0', '2019ѧ��')
INSERT INTO [EDU_SYS_01_XN]([ID] ,[SCHOOLID] ,[XN]) VALUES('2020', '0', '2020ѧ��')
INSERT INTO [EDU_SYS_01_XN]([ID] ,[SCHOOLID] ,[XN]) VALUES('2021', '0', '2021ѧ��')
INSERT INTO [EDU_SYS_01_XN]([ID] ,[SCHOOLID] ,[XN]) VALUES('2022', '0', '2022ѧ��')
INSERT INTO [EDU_SYS_01_XN]([ID] ,[SCHOOLID] ,[XN]) VALUES('2023', '0', '2023ѧ��')
INSERT INTO [EDU_SYS_01_XN]([ID] ,[SCHOOLID] ,[XN]) VALUES('2024', '0', '2024ѧ��')
INSERT INTO [EDU_SYS_01_XN]([ID] ,[SCHOOLID] ,[XN]) VALUES('2025', '0', '2025ѧ��')
INSERT INTO [EDU_SYS_01_XN]([ID] ,[SCHOOLID] ,[XN]) VALUES('2026', '0', '2026ѧ��')
INSERT INTO [EDU_SYS_01_XN]([ID] ,[SCHOOLID] ,[XN]) VALUES('2027', '0', '2027ѧ��')
INSERT INTO [EDU_SYS_01_XN]([ID] ,[SCHOOLID] ,[XN]) VALUES('2028', '0', '2028ѧ��')
INSERT INTO [EDU_SYS_01_XN]([ID] ,[SCHOOLID] ,[XN]) VALUES('2029', '0', '2029ѧ��')

--
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
CONSTRAINT [PK_EDU_SYS_01_MODULE] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('150000', '1', '��������', '1', '0', '1', '0', '')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('150000', '2', '�ڲ��ʼ�', '1', '0', '1', '0', '')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('150000', '3', '�̹�����', '1', '0', '1', '0', '')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('150000', '4', '����ӭ��', '1', '0', '1', '0', '')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('150000', '5', '�Ż���վ', '1', '0', '1', '0', '')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('150001', '5', '��Ŀ����', '2', '150000', '1', '0', '/admin/wzlm/index?webid=1')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('150002', '5', '���¹���', '2', '150000', '1', '0', '/admin/wzwz/index?webid=1')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('150003', '5', '���ӹ���', '2', '150000', '1', '0', '/admin/yqlj/index?webid=1')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('150004', '5', '��������', '2', '150000', '1', '0', '/admin/yqljlx/index?webid=1')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('150005', '5', '��Ա����', '2', '150000', '1', '0', '/admin/vip/index?webid=1')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('150006', '5', '����Ȩ��', '2', '150000', '1', '0', '/admin/fbqx/index?webid=1')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('150007', '5', '��������', '2', '150000', '1', '0', '/admin/fwll/index?webid=1')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('150008', '5', '������', '2', '150000', '1', '0', '/admin/wzgg/index?webid=1')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('150009', '5', 'ͶƱ����', '2', '150000', '1', '0', '/tpgl/tpsz/index?webid=1')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('150010', '5', '�������', '2', '150000', '1', '0', '/admin/wzwz/auditindex?webid=1')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('150200', '5', 'ר����վ', '1', '0', '1', '0', '')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('150201', '5', '��Ŀ����', '2', '150200', '1', '0', '/admin/wzlm/index?webid=2')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('150202', '5', '���¹���', '2', '150200', '1', '0', '/admin/wzwz/index?webid=2')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('150203', '5', '���ӹ���', '2', '150200', '1', '0', '/admin/yqlj/index?webid=2')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('150204', '5', '��������', '2', '150200', '1', '0', '/admin/yqljlx/index?webid=2')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('150205', '5', '��Ա����', '2', '150200', '1', '0', '/admin/vip/index?webid=2')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('150206', '5', '����Ȩ��', '2', '150200', '1', '0', '/admin/fbqx/index?webid=2')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('150207', '5', '��������', '2', '150200', '1', '0', '/admin/fwll/index?webid=2')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('150208', '5', '������', '2', '150200', '1', '0', '/admin/wzgg/index?webid=2')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('150209', '5', 'ͶƱ����', '2', '150200', '1', '0', '/tpgl/tpsz/index?webid=2')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('150210', '5', '�������', '2', '150200', '1', '0', '/admin/wzwz/auditindex?webid=2')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('150600', '1', '�����Ǽ�', '2', '150000', '1', '0', '/zsgl/xsdj/index')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('150601', '1', '�������', '2', '150000', '0', '0', '/zsgl/xsdj/create')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('150601', '3', '�̹��б�', '2', '150000', '1', '0', '/rsgl/jggl/index')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('150601', '4', '�����ƻ�', '2', '150000', '1', '0', '/zsgl/zsjh/index')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('150602', '1', '�����༭', '2', '150000', '0', '0', '/zsgl/xsdj/edit')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('150602', '4', '�����Ǽ�', '2', '150000', '1', '0', '/zsgl/xsdj/index')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('150603', '1', '����ɾ��', '2', '150000', '0', '0', '/zsgl/xsdj/delete')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('150603', '4', '�������', '2', '150000', '0', '0', '/zsgl/xsdj/create')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('150604', '1', '��������', '2', '150000', '0', '0', '/zsgl/xsdj/importdata')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('150604', '4', '�����༭', '2', '150000', '0', '0', '/zsgl/xsdj/edit')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('150605', '4', '����ɾ��', '2', '150000', '0', '0', '/zsgl/xsdj/delete')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('150606', '4', '��������', '2', '150000', '0', '0', '/zsgl/xsdj/importdata')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('150607', '4', 'ӭ������', '2', '150000', '1', '0', '/xtgl/xtsz/yxsz')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('150608', '4', '�Զ��ְ�', '2', '150000', '1', '0', '/zsgl/zdfb/AytomaticClass')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('150609', '4', '��������', '2', '150000', '1', '0', '/zsgl/xsdj/IndexReport')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('150610', '4', '�Զ���ѧ��', '2', '150000', '1', '0', '/zsgl/zdfb/AutomaticNumber')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('200000', '2', '֪ͨ����', '1', '0', '1', '0', '')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('200000', '4', 'ѧ������', '1', '0', '1', '0', '')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('200601', '4', 'ѧ��ע��', '2', '200000', '1', '0', '/xjgl/xszcxx/index')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('200602', '4', 'ѧ������', '2', '200000', '1', '0', '/xtgl/xjgl/Index')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('200603', '4', 'ѧ���춯', '2', '200000', '1', '0', '/xjgl/xjyd/index')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('200604', '4', 'ѧ��ͳ��', '2', '200000', '1', '0', '/xjgl/xjtj/index')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('250000', '2', '�칫����', '1', '0', '1', '0', '')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('250000', '4', '��ѧ�ƻ�', '1', '0', '1', '0', '')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('250600', '4', '��ѧ���', '2', '250000', '1', '0', '/jxjh/jsrk/jxdgindex')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('250601', '4', '��ѧ�ƻ�', '2', '250000', '1', '0', '/jxjh/ztjxjh/index')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('250603', '4', '�γ̿�', '2', '250000', '1', '0', '/jxjh/kc/index')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('250604', '4', 'ѧ��ѧ��', '2', '250000', '1', '0', '/jxjh/xqxfgl/index')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('250606', '4', '��ʦ�ο�', '2', '250000', '1', '0', '/jxjh/jsrk/index')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('950000', '1', 'ϵͳ����', '1', '0', '1', '0', '')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('950000', '2', 'ϵͳ����', '1', '0', '1', '0', '')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('950000', '3', 'ϵͳ����', '1', '0', '1', '0', '')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('950000', '4', 'ϵͳ����', '1', '0', '1', '0', '')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('950000', '5', 'ϵͳ����', '1', '0', '1', '0', '')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('950601', '1', 'ӭ������', '2', '950000', '1', '0', '/xtgl/xtsz/yxsz')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('950602', '1', '�޸�����', '2', '950000', '1', '0', '/xtgl/user/changepwd')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('950602', '2', '�޸�����', '2', '950000', '1', '0', '/xtgl/user/changepwd')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('950602', '3', '�޸�����', '2', '950000', '1', '0', '/xtgl/user/changepwd')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('950602', '4', '�޸�����', '2', '950000', '1', '0', '/xtgl/user/changepwd')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('950602', '5', '�޸�����', '2', '950000', '1', '0', '/xtgl/user/changepwd')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('950603', '1', '��������', '2', '950000', '1', '0', '/xtgl/yxsz/index')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('950603', '4', '��������', '2', '950000', '1', '0', '/xtgl/yxsz/index')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('950604', '1', 'רҵ����', '2', '950000', '1', '0', '/xtgl/zysz/index')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('950604', '4', 'רҵ����', '2', '950000', '1', '0', '/xtgl/zysz/index')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('950605', '1', '�����ƻ�', '2', '950000', '1', '0', '/zsgl/zsjh/index')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('950606', '1', '�Զ��ְ�', '2', '950000', '1', '0', '/xtgl/zdfb/Create')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('950607', '1', 'ѧ������', '2', '950000', '1', '0', '/xtgl/xjgl/Index')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('950608', '1', '��ɫ����', '2', '950000', '1', '0', '/xtgl/role/index')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('950608', '2', '��ɫ����', '2', '950000', '1', '0', '/xtgl/role/index')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('950608', '3', '��ɫ����', '2', '950000', '1', '0', '/xtgl/role/index')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('950608', '4', '��ɫ����', '2', '950000', '1', '0', '/xtgl/role/index')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('950608', '5', '��ɫ����', '2', '950000', '1', '0', '/xtgl/role/index')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('950609', '1', 'Ȩ�޷���', '2', '950000', '1', '0', '/xtgl/role/RoleManage')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('950609', '2', 'Ȩ�޷���', '2', '950000', '1', '0', '/xtgl/role/RoleManage')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('950609', '3', 'Ȩ�޷���', '2', '950000', '1', '0', '/xtgl/role/RoleManage')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('950609', '4', 'Ȩ�޷���', '2', '950000', '1', '0', '/xtgl/role/RoleManage')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('950609', '5', 'Ȩ�޷���', '2', '950000', '1', '0', '/xtgl/role/RoleManage')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('950610', '1', '�û�����', '2', '950000', '1', '0', '/xtgl/user/index')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('950610', '2', '�û�����', '2', '950000', '1', '0', '/xtgl/user/index')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('950610', '3', '�û�����', '2', '950000', '1', '0', '/xtgl/user/index')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('950610', '4', '�û�����', '2', '950000', '1', '0', '/xtgl/user/index')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('950610', '5', '�û�����', '2', '950000', '1', '0', '/xtgl/user/index')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('950611', '1', '��ǰѧ��ѧ������', '2', '950000', '1', '0', '/xtgl/xtsz/xnsz')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('950611', '2', '��ǰѧ��ѧ������', '2', '950000', '1', '0', '/xtgl/xtsz/xnsz')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('950611', '3', '��ǰѧ��ѧ������', '2', '950000', '1', '0', '/xtgl/xtsz/xnsz')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('950611', '4', '��ǰѧ��ѧ������', '2', '950000', '1', '0', '/xtgl/xtsz/xnsz')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('950611', '5', '��ǰѧ��ѧ������', '2', '950000', '1', '0', '/xtgl/xtsz/xnsz')
INSERT INTO [EDU_SYS_01_MODULE]([ID] ,[APPID] ,[NAME] ,[Depth] ,[PID] ,[MenuDisp] ,[MenuUserType] ,[Link]) VALUES('950612', '5', '��վ����', '2', '950000', '1', '0', '/admin/wzpz/index')

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
