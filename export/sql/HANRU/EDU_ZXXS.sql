--�ռ�����EDU_ZXXS  ��������SqlBuilder0.1

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXXS_01_01_XSXX')
            and   type = 'U')
   drop table EDU_ZXXS_01_01_XSXX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXXS_01_06_XSJTCY')
            and   type = 'U')
   drop table EDU_ZXXS_01_06_XSJTCY
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXXS_02_A01_XSJTXX')
            and   type = 'U')
   drop table EDU_ZXXS_02_A01_XSJTXX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXXS_02_06_ZXKSCJ')
            and   type = 'U')
   drop table EDU_ZXXS_02_06_ZXKSCJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXXS_07_A02_XJYD')
            and   type = 'U')
   drop table EDU_ZXXS_07_A02_XJYD
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXXS_07_A03_XSHBJL')
            and   type = 'U')
   drop table EDU_ZXXS_07_A03_XSHBJL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXXS_50_A01_QQYY')
            and   type = 'U')
   drop table EDU_ZXXS_50_A01_QQYY
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXXS_50_A02_BJSBJL')
            and   type = 'U')
   drop table EDU_ZXXS_50_A02_BJSBJL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXXS_50_A03_XSSBJL')
            and   type = 'U')
   drop table EDU_ZXXS_50_A03_XSSBJL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXXS_51_A01_KHDL')
            and   type = 'U')
   drop table EDU_ZXXS_51_A01_KHDL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXXS_51_A02_KHDLXM')
            and   type = 'U')
   drop table EDU_ZXXS_51_A02_KHDLXM
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXXS_51_A03_BJKHCJ')
            and   type = 'U')
   drop table EDU_ZXXS_51_A03_BJKHCJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXXS_51_A04_SSKHCJ')
            and   type = 'U')
   drop table EDU_ZXXS_51_A04_SSKHCJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXXS_51_A11_KHHZ')
            and   type = 'U')
   drop table EDU_ZXXS_51_A11_KHHZ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXXS_51_A12_BJHZXSCS')
            and   type = 'U')
   drop table EDU_ZXXS_51_A12_BJHZXSCS
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXXS_51_A13_SSHZXSCS')
            and   type = 'U')
   drop table EDU_ZXXS_51_A13_SSHZXSCS
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXXS_51_A14_KHHZDLPZ')
            and   type = 'U')
   drop table EDU_ZXXS_51_A14_KHHZDLPZ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXXS_51_A15_KHHZDW')
            and   type = 'U')
   drop table EDU_ZXXS_51_A15_KHHZDW
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXXS_52_A01_PXXM')
            and   type = 'U')
   drop table EDU_ZXXS_52_A01_PXXM
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXXS_52_A02_PXMC')
            and   type = 'U')
   drop table EDU_ZXXS_52_A02_PXMC
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXXS_52_A03_XSZL')
            and   type = 'U')
   drop table EDU_ZXXS_52_A03_XSZL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXXS_55_A01_CZDAGN')
            and   type = 'U')
   drop table EDU_ZXXS_55_A01_CZDAGN
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXXS_55_A02_CZDAGNQX')
            and   type = 'U')
   drop table EDU_ZXXS_55_A02_CZDAGNQX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXXS_55_A03_CZDADFFS')
            and   type = 'U')
   drop table EDU_ZXXS_55_A03_CZDADFFS
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXXS_55_A04_CZDADFXX')
            and   type = 'U')
   drop table EDU_ZXXS_55_A04_CZDADFXX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXXS_56_A01_XSXQDS')
            and   type = 'U')
   drop table EDU_ZXXS_56_A01_XSXQDS
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXXS_56_A11_JXLXMRJL')
            and   type = 'U')
   drop table EDU_ZXXS_56_A11_JXLXMRJL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXXS_56_A12_JXLXPJXM')
            and   type = 'U')
   drop table EDU_ZXXS_56_A12_JXLXPJXM
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXXS_56_A13_JXLXXSPJ')
            and   type = 'U')
   drop table EDU_ZXXS_56_A13_JXLXXSPJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXXS_56_A21_XSWHSZPJXM')
            and   type = 'U')
   drop table EDU_ZXXS_56_A21_XSWHSZPJXM
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXXS_56_A22_XSWHSZPJJG')
            and   type = 'U')
   drop table EDU_ZXXS_56_A22_XSWHSZPJJG
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXXS_56_A31_XSZHSZPJXM')
            and   type = 'U')
   drop table EDU_ZXXS_56_A31_XSZHSZPJXM
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXXS_56_A32_XSZHSZPJJG')
            and   type = 'U')
   drop table EDU_ZXXS_56_A32_XSZHSZPJJG
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXXS_56_A41_JKJCJL')
            and   type = 'U')
   drop table EDU_ZXXS_56_A41_JKJCJL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXXS_57_A01_DSZGN')
            and   type = 'U')
   drop table EDU_ZXXS_57_A01_DSZGN
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXXS_57_A02_DSZJS')
            and   type = 'U')
   drop table EDU_ZXXS_57_A02_DSZJS
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXXS_57_A03_DSZDS')
            and   type = 'U')
   drop table EDU_ZXXS_57_A03_DSZDS
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXXS_57_A04_DSZDSXSJD')
            and   type = 'U')
   drop table EDU_ZXXS_57_A04_DSZDSXSJD
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXXS_57_A11_DSZHD')
            and   type = 'U')
   drop table EDU_ZXXS_57_A11_DSZHD
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXXS_57_A12_DSZXSHDBXJL')
            and   type = 'U')
   drop table EDU_ZXXS_57_A12_DSZXSHDBXJL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXXS_57_A14_DSZXSZWDR')
            and   type = 'U')
   drop table EDU_ZXXS_57_A14_DSZXSZWDR
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXXS_57_A15_DSZXSJCJL')
            and   type = 'U')
   drop table EDU_ZXXS_57_A15_DSZXSJCJL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXXS_57_A16_DSZXSQJJL')
            and   type = 'U')
   drop table EDU_ZXXS_57_A16_DSZXSQJJL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXXS_57_A17_DSZXSXQXJ')
            and   type = 'U')
   drop table EDU_ZXXS_57_A17_DSZXSXQXJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXXS_57_A18_DSZXSDD')
            and   type = 'U')
   drop table EDU_ZXXS_57_A18_DSZXSDD
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXXS_57_A21_DSZXSZWGH')
            and   type = 'U')
   drop table EDU_ZXXS_57_A21_DSZXSZWGH
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXXS_57_A22_DSZXSXQGHZJ')
            and   type = 'U')
   drop table EDU_ZXXS_57_A22_DSZXSXQGHZJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXXS_57_A23_DSZXSXQMYGH')
            and   type = 'U')
   drop table EDU_ZXXS_57_A23_DSZXSXQMYGH
go
--ѧ���������������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXXS_01_01_XSXX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXXS_01_01_XSXX](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[XH]  nvarchar(20)  NOT NULL,--ѧ��
	[XM]  nvarchar(36)  NOT NULL,--����
	[YWXM]  nvarchar(60)  NULL,--Ӣ������
	[XMPY]  nvarchar(60)  NULL,--����ƴ��
	[CYM]  nvarchar(36)  NULL,--������
	[XBM]  nvarchar(1)  NOT NULL,--�Ա���
	[CSRQ]  nvarchar(8)  NOT NULL,--��������
	[CSDM]  nvarchar(6)  NOT NULL,--��������
	[JG]  nvarchar(20)  NULL,--����
	[MZM]  nvarchar(2)  NULL,--������
	[GJDQM]  nvarchar(3)  NOT NULL,--����/������
	[SFZJLXM]  nvarchar(1)  NULL,--���֤��������
	[SFZJH]  nvarchar(20)  NULL,--���֤����
	[HYZKM]  nvarchar(2)  NULL,--����״����
	[GATQWM]  nvarchar(2)  NULL,--�۰�̨������
	[ZZMMM]  nvarchar(2)  NOT NULL,--������ò��
	[JKZKM]  nvarchar(1)  NOT NULL,--����״����
	[XYZJM]  nvarchar(2)  NULL,--�����ڽ���
	[XXM]  nvarchar(1)  NULL,--Ѫ����
	[ZP]  nvarchar(200)  NULL,--��Ƭ
	[SFZJYXQ]  nvarchar(17)  NULL,--���֤����Ч��
	[DSZYBZ]  nvarchar(1)  NULL,--������Ů��־
	[RXNY]  nvarchar(6)  NOT NULL,--��ѧ����
	[NJ]  nvarchar(10)  NOT NULL,--�꼶
	[BH]  nvarchar(10)  NOT NULL,--���
	[XSLBM]  nvarchar(5)  NOT NULL,--ѧ�������
	[XZZ]  nvarchar(180)  NULL,--��סַ
	[HKSZD]  nvarchar(180)  NULL,--�������ڵ�
	[HKXZM]  nvarchar(1)  NULL,--����������
	[SFLDRK]  nvarchar(1)  NOT NULL,--�Ƿ������˿�
	[TC]  text  NULL,--�س�
	[LXDH]  nvarchar(30)  NULL,--��ϵ�绰
	[TXDZ]  nvarchar(180)  NULL,--ͨ�ŵ�ַ
	[YZBM]  nvarchar(6)  NULL,--��������
	[DZXX]  nvarchar(40)  NULL,--��������
	[ZYDZ]  nvarchar(60)  NULL,--��ҳ��ַ
	[XJH]  nvarchar(30)  NULL,--ѧ����
	[XSDQZTM]  nvarchar(2)  NOT NULL,--ѧ����ǰ״̬��
CONSTRAINT [PK_EDU_ZXXS_01_01_XSXX] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ѧ����ͥ��Ա���ݱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXXS_01_06_XSJTCY]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXXS_01_06_XSJTCY](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[XSXXID]  int  NOT NULL,--ѧ����Ϣ���ݱ�
	[GXM]  nvarchar(2)  NOT NULL,--��ϵ��
	[CYXM]  nvarchar(36)  NOT NULL,--��Ա����
	[CSNY]  nvarchar(6)  NULL,--��������
	[MZM]  nvarchar(2)  NULL,--������
	[GJDQM]  nvarchar(3)  NULL,--����/������
	[JKZKM]  nvarchar(1)  NULL,--����״����
	[CYGZDW]  nvarchar(60)  NULL,--��Ա������λ
	[CYM]  nvarchar(2)  NULL,--��ҵ��
	[ZYJSZWM]  nvarchar(3)  NULL,--רҵ����ְ����
	[ZWJBM]  nvarchar(3)  NULL,--ְ�񼶱���
	[DH]  nvarchar(30)  NULL,--�绰
	[DZXX]  nvarchar(40)  NULL,--��������
	[SFJHR]  nvarchar(1)  NOT NULL,--�Ƿ�໤��
	[XBM]  nvarchar(1)  NULL,--�Ա���
	[XLM]  nvarchar(2)  NOT NULL,--ѧ����
	[LXDZ]  nvarchar(180)  NULL,--��ϵ��ַ
	[SJHM]  nvarchar(30)  NULL,--�ֻ�����
CONSTRAINT [PK_EDU_ZXXS_01_06_XSJTCY] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ѧ����ͥ��Ϣ���ݱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXXS_02_A01_XSJTXX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXXS_02_A01_XSJTXX](
	[XSXXID]  int  NOT NULL,--ѧ����Ϣ���ݱ�
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[JTZZ]  nvarchar(180)  NOT NULL,--��ͥסַ
	[JTYZBM]  nvarchar(6)  NOT NULL,--��ͥ��������
	[JTDH]  nvarchar(30)  NULL,--��ͥ�绰
	[JTLXR]  nvarchar(36)  NOT NULL,--��ͥ��ϵ��
	[JTDZXX]  nvarchar(40)  NULL,--��ͥ��������
	[JTRK]  int  NULL,--��ͥ�˿�
	[JTZYSRLY]  nvarchar(180)  NULL,--��ͥ��Ҫ������Դ
	[JTYSRJE]  money  NULL,--��ͥ��������
	[JTNSRJE]  money  NULL,--��ͥ��������
	[LJZJHCZ]  nvarchar(30)  NULL,--��������վ
CONSTRAINT [PK_EDU_ZXXS_02_A01_XSJTXX] PRIMARY KEY CLUSTERED
(
	[XSXXID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--��У���Գɼ����������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXXS_02_06_ZXKSCJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXXS_02_06_ZXKSCJ](
	[ID]  int  NOT NULL,--���Գɼ���
	[SCHOOLID]  int  NOT NULL,--ѧУ��
	[XSXXID]  int  NOT NULL,--ѧ��ID
	[XN]  nvarchar(9)  NOT NULL,--ѧ�꣨�ȣ�
	[XQM]  nvarchar(1)  NOT NULL,--ѧ����
	[KSRQ]  nvarchar(8)  NOT NULL,--��������
	[KCH]  nvarchar(10)  NOT NULL,--�γ̺�
	[RKJSID]  int  NOT NULL,--�ον�ʦID
	[CJLRRID]  int  NOT NULL,--�ɼ�¼����ID
	[KSFSM]  nvarchar(1)  NULL,--���Է�ʽ��
	[KSXZM]  nvarchar(2)  NULL,--����������
	[KSXSM]  nvarchar(1)  NULL,--������ʽ��
	[FSLKSCJ]  decimal(5, 1)  NULL,--�����࿼�Գɼ�
	[DJLKSCJ]  nvarchar(1)  NULL,--�ȼ��࿼�Գɼ�
	[KCCJ]  decimal(5, 1)  NULL,--�γ̳ɼ�
	[KCDJCJM]  nvarchar(1)  NULL,--�γ̵ȼ��ɼ���
	[RKJSGH]  nvarchar(20)  NULL,--�ον�ʦ����
	[CJLRRH]  nvarchar(20)  NULL,--�ɼ�¼���˺�
	[CJLRRQ]  nvarchar(8)  NULL,--�ɼ�¼������
	[CJLRSJ]  nvarchar(6)  NULL,--�ɼ�¼��ʱ��
	[XQID]  int  NOT NULL,--ѧ��
	[XNID]  int  NOT NULL,--ѧ��
	[NJID]  nvarchar(10)  NOT NULL,--�꼶
	[BJID]  nvarchar(10)  NOT NULL,--�༶
	[SSKSID]  int  NOT NULL,--��������ID
	[SSKSKMID]  int  NOT NULL,--�������Կ�ĿID
	[SJID]  int  NOT NULL,--�Ծ�ID
CONSTRAINT [PK_EDU_ZXXS_02_06_ZXKSCJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ѧ���춯���������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXXS_07_A02_XJYD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXXS_07_A02_XJYD](
	[ID]  int  NOT NULL,--ѧ���춯����
	[XSXXID]  int  NOT NULL,--ѧ��ID
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[YDLBM]  nvarchar(2)  NOT NULL,--�춯�����
	[YDRQ]  nvarchar(8)  NOT NULL,--�춯����
	[YDYYM]  nvarchar(2)  NOT NULL,--�춯ԭ����
	[SPRQ]  nvarchar(8)  NULL,--��������
	[SPWH]  nvarchar(24)  NULL,--�����ĺ�
	[JBRID]  int  NULL,--������ID
	[JBRGH]  nvarchar(20)  NULL,--�����˹���
	[YDLYXXM]  nvarchar(10)  NULL,--�춯��ԴѧУ��
	[YDQXXXM]  nvarchar(10)  NULL,--�춯ȥ��ѧУ��
	[YDSM]  text  NULL,--�춯˵��
	[YBH]  nvarchar(10)  NOT NULL,--ԭ���
	[YNJ]  nvarchar(10)  NOT NULL,--ԭ�꼶
	[XBH]  nvarchar(10)  NOT NULL,--�ְ��
	[XNJ]  nvarchar(10)  NOT NULL,--���꼶
CONSTRAINT [PK_EDU_ZXXS_07_A02_XJYD] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ѧ�������¼��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXXS_07_A03_XSHBJL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXXS_07_A03_XSHBJL](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУID
	[XSXXID]  int  NOT NULL,--ѧ��ID
	[XQID]  int  NOT NULL,--ѧ��ID
	[YBJID]  nvarchar(10)  NOT NULL,--ԭ�༶ID
	[XBJID]  nvarchar(10)  NOT NULL,--�ְ༶ID
	[CZRY]  nvarchar(20)  NOT NULL,--������Ա
	[HBSJ]  datetime  NOT NULL,--����ʱ��
CONSTRAINT [PK_EDU_ZXXS_07_A03_XSHBJL] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ȱ��ԭ���
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXXS_50_A01_QQYY]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXXS_50_A01_QQYY](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[MC]  nvarchar(100)  NOT NULL,--����
CONSTRAINT [PK_EDU_ZXXS_50_A01_QQYY] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�༶�ϱ���¼��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXXS_50_A02_BJSBJL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXXS_50_A02_BJSBJL](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[BJID]  nvarchar(10)  NOT NULL,--�༶ID
	[ZT]  int  NOT NULL,--״̬
	[RQ]  datetime  NOT NULL,--����
	[QQRS]  int  NOT NULL,--ȱ������
CONSTRAINT [PK_EDU_ZXXS_50_A02_BJSBJL] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ѧ���ϱ���¼��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXXS_50_A03_XSSBJL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXXS_50_A03_XSSBJL](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[BJID]  nvarchar(10)  NOT NULL,--�༶ID
	[XSXXID]  int  NOT NULL,--ѧ��ID
	[QQYYID]  int  NOT NULL,--ȱ��ԭ��ID
	[QQSJ]  nvarchar(20)  NOT NULL,--ȱ��ʱ��
	[JTQK]  nvarchar(500)  NOT NULL,--�������
	[TW]  nvarchar(10)  NOT NULL,--����
	[SFJY]  nvarchar(1)  NULL,--�Ƿ��ҽ
	[SFTZJZ]  nvarchar(1)  NOT NULL,--�Ƿ�֪ͨ�ҳ�
	[JZLXFS]  nvarchar(20)  NULL,--�ҳ���ϵ��ʽ
	[RQ]  datetime  NOT NULL,--����
	[SBJSID]  int  NOT NULL,--�ϱ���ʦID
CONSTRAINT [PK_EDU_ZXXS_50_A03_XSSBJL] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--���˴����
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXXS_51_A01_KHDL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXXS_51_A01_KHDL](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[MC]  nvarchar(100)  NOT NULL,--����
	[KHDX]  int  NOT NULL,--���˶���
	[DJFS]  int  NOT NULL,--�ǼǷ�ʽ
	[KDJYHIDLB]  text  NOT NULL,--�ɵǼ��û�ID�б�
	[KDJYHXMLB]  text  NOT NULL,--�ɵǼ��û������б�
CONSTRAINT [PK_EDU_ZXXS_51_A01_KHDL] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--���˴�����Ŀ��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXXS_51_A02_KHDLXM]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXXS_51_A02_KHDLXM](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[SSDLID]  int  NOT NULL,--��������ID
	[DLXMMC]  nvarchar(10)  NOT NULL,--������Ŀ����
	[FZLX]  int  NOT NULL,--��ֵ����
	[XMZGF]  decimal(5, 2)  NOT NULL,--��Ŀ��߷�
CONSTRAINT [PK_EDU_ZXXS_51_A02_KHDLXM] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�༶���˳ɼ���
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXXS_51_A03_BJKHCJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXXS_51_A03_BJKHCJ](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[SSDLID]  int  NOT NULL,--��������ID
	[SSDLXMID]  int  NOT NULL,--����������ĿID
	[NJID]  nvarchar(10)  NOT NULL,--�꼶ID
	[BJID]  nvarchar(10)  NOT NULL,--�༶ID
	[KHSJ]  datetime  NOT NULL,--����ʱ��
	[FZ]  decimal(5, 2)  NOT NULL,--��ֵ
	[DJRID]  nvarchar(20)  NOT NULL,--�Ǽ���ID
	[DJSJ]  datetime  NOT NULL,--�Ǽ�ʱ��
CONSTRAINT [PK_EDU_ZXXS_51_A03_BJKHCJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--���ῼ�˳ɼ���
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXXS_51_A04_SSKHCJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXXS_51_A04_SSKHCJ](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[SSDLID]  int  NOT NULL,--��������ID
	[SSDLXMID]  int  NOT NULL,--����������ĿID
	[GYID]  int  NOT NULL,--��ԢID
	[SSID]  int  NOT NULL,--����ID
	[KHSJ]  datetime  NOT NULL,--����ʱ��
	[FZ]  decimal(5, 2)  NOT NULL,--��ֵ
	[DJRID]  nvarchar(20)  NOT NULL,--�Ǽ���ID
	[DJSJ]  datetime  NOT NULL,--�Ǽ�ʱ��
CONSTRAINT [PK_EDU_ZXXS_51_A04_SSKHCJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--���˻��ܱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXXS_51_A11_KHHZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXXS_51_A11_KHHZ](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[MC]  nvarchar(50)  NOT NULL,--����
	[HZFS]  int  NOT NULL,--���ܷ�ʽ
	[KHDX]  int  NOT NULL,--���˶���
	[YXDLIDLB]  text  NOT NULL,--���ȴ���ID�б�
	[YXDLMCLB]  text  NOT NULL,--���ȴ��������б�
	[YXPXFS]  int  NOT NULL,--��������ʽ
	[CXDLIDLB]  text  NOT NULL,--���ȴ���ID�б�
	[CXDLMCLB]  text  NOT NULL,--���ȴ��������б�
	[CXPXFS]  int  NOT NULL,--��������ʽ
	[DDPXFS]  int  NOT NULL,--�ȵ���ѡ��ʽ
	[SFXSWDD]  nvarchar(1)  NOT NULL,--�Ƿ���ʾ�޵ȵ�
CONSTRAINT [PK_EDU_ZXXS_51_A11_KHHZ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�༶������ʾ������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXXS_51_A12_BJHZXSCS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXXS_51_A12_BJHZXSCS](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[KHHZID]  int  NOT NULL,--���˻���ID
	[NJ]  int  NOT NULL,--�꼶
	[BJ]  int  NOT NULL,--�༶
	[BZR]  int  NOT NULL,--������
	[FZ]  int  NOT NULL,--��ֵ
	[DD]  int  NOT NULL,--�ȵ�
CONSTRAINT [PK_EDU_ZXXS_51_A12_BJHZXSCS] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--���������ʾ������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXXS_51_A13_SSHZXSCS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXXS_51_A13_SSHZXSCS](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[KHHZID]  int  NOT NULL,--���˻���ID
	[GY]  int  NOT NULL,--��Ԣ
	[LC]  int  NOT NULL,--¥��
	[SS]  int  NOT NULL,--����
	[BJ]  int  NOT NULL,--�༶
	[FZ]  int  NOT NULL,--��ֵ
	[DD]  int  NOT NULL,--�ȵ�
CONSTRAINT [PK_EDU_ZXXS_51_A13_SSHZXSCS] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--���˻��ܴ������ñ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXXS_51_A14_KHHZDLPZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXXS_51_A14_KHHZDLPZ](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[KHHZID]  int  NOT NULL,--���˻���ID
	[DLID]  int  NOT NULL,--����ID
	[ZSL]  int  NOT NULL,--������
	[XYXMIDLB]  text  NOT NULL,--ѡ����ĿID�б�
	[XSXX]  text  NOT NULL,--��ʾ��Ϣ
CONSTRAINT [PK_EDU_ZXXS_51_A14_KHHZDLPZ] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--���˻��ܵ�λ��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXXS_51_A15_KHHZDW]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXXS_51_A15_KHHZDW](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[KHHZID]  int  NOT NULL,--���˻���ID
	[DWMC]  nvarchar(20)  NOT NULL,--��λ����
	[HFSX]  int  NOT NULL,--��������
	[HFXX]  int  NOT NULL,--��������
CONSTRAINT [PK_EDU_ZXXS_51_A15_KHHZDW] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--��ѡ��Ŀ��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXXS_52_A01_PXXM]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXXS_52_A01_PXXM](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[PXXMMC]  nvarchar(50)  NOT NULL,--��ѡ��Ŀ����
	[JJ]  nvarchar(500)  NOT NULL,--���
CONSTRAINT [PK_EDU_ZXXS_52_A01_PXXM] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--��ѡ���Ʊ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXXS_52_A02_PXMC]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXXS_52_A02_PXMC](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[MC]  nvarchar(20)  NOT NULL,--����
	[PXXMIDLB]  text  NOT NULL,--��ѡ��ĿID�б�
	[PXXMMCLB]  text  NOT NULL,--��ѡ��Ŀ�����б�
	[PXXSIDLB]  text  NOT NULL,--��ѡѧ��ID�б�
	[PXXSXMLB]  text  NOT NULL,--��ѡѧ�������б�
	[YQTX]  nvarchar(1000)  NOT NULL,--��������
	[ZT]  int  NOT NULL,--״̬
	[NR]  text  NOT NULL,--����
CONSTRAINT [PK_EDU_ZXXS_52_A02_PXMC] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ѧ�����ϱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXXS_52_A03_XSZL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXXS_52_A03_XSZL](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[PXMCID]  int  NOT NULL,--��ѡ����ID
	[PXXMID]  int  NOT NULL,--��ѡ��ĿID
	[XSID]  int  NOT NULL,--ѧ��ID
	[NR]  text  NOT NULL,--����
	[SCSJ]  datetime  NOT NULL,--�ϴ�ʱ��
CONSTRAINT [PK_EDU_ZXXS_52_A03_XSZL] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�ɳ��������ܱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXXS_55_A01_CZDAGN]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXXS_55_A01_CZDAGN](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[GNMC]  nvarchar(50)  NOT NULL,--��������
	[XSCKWZ]  nvarchar(200)  NOT NULL,--ѧ���鿴��ַ
	[XSBJWZ]  nvarchar(200)  NOT NULL,--ѧ���༭��ַ
	[JSCKWZ]  nvarchar(200)  NOT NULL,--��ʦ�鿴��ַ
	[BZRBJWZ]  nvarchar(200)  NOT NULL,--�����α༭��ַ
	[SFXYDF]  int  NOT NULL,--�Ƿ���Ҫ���
	[DFFSID]  int  NOT NULL,--��ַ�ʽID
	[PLSX]  int  NOT NULL,--����˳��
	[ZT]  int  NOT NULL,--״̬
CONSTRAINT [PK_EDU_ZXXS_55_A01_CZDAGN] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�ɳ���������Ȩ�ޱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXXS_55_A02_CZDAGNQX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXXS_55_A02_CZDAGNQX](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[GNID]  int  NOT NULL,--����ID
	[YHLX]  int  NOT NULL,--�û�����
	[QXMC]  nvarchar(50)  NOT NULL,--Ȩ������
	[ZT]  int  NOT NULL,--״̬
CONSTRAINT [PK_EDU_ZXXS_55_A02_CZDAGNQX] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�ɳ�������ַ�ʽ��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXXS_55_A03_CZDADFFS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXXS_55_A03_CZDADFFS](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[DFFSMC]  nvarchar(50)  NOT NULL,--��ַ�ʽ����
	[DFXMLX]  int  NOT NULL,--�����Ŀ����
	[ZT]  int  NOT NULL,--״̬
CONSTRAINT [PK_EDU_ZXXS_55_A03_CZDADFFS] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--�ɳ��������ѡ���
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXXS_55_A04_CZDADFXX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXXS_55_A04_CZDADFXX](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[DFFSID]  int  NOT NULL,--��ַ�ʽID
	[XXNR]  nvarchar(50)  NOT NULL,--ѡ������
	[TPLJ]  nvarchar(200)  NOT NULL,--ͼƬ·��
CONSTRAINT [PK_EDU_ZXXS_55_A04_CZDADFXX] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ѧ��ѧ�ڴ����
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXXS_56_A01_XSXQDS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXXS_56_A01_XSXQDS](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[XQID]  int  NOT NULL,--ѧ��ID
	[XSID]  int  NOT NULL,--ѧ��ID
	[NR]  text  NOT NULL,--����
CONSTRAINT [PK_EDU_ZXXS_56_A01_XSXQDS] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--��У��ϵÿ�ռ�¼��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXXS_56_A11_JXLXMRJL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXXS_56_A11_JXLXMRJL](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[XSID]  int  NOT NULL,--ѧ��ID
	[DJSJ]  datetime  NOT NULL,--�Ǽ�ʱ��
	[BZRTXJL]  text  NOT NULL,--��������д��¼
	[JTTXJL]  text  NOT NULL,--��ͥ��д��¼
	[BZRGXZT]  int  NOT NULL,--�����θ���״̬
	[JTGXZT]  int  NOT NULL,--��ͥ����״̬
CONSTRAINT [PK_EDU_ZXXS_56_A11_JXLXMRJL] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--��У��ϵ������Ŀ��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXXS_56_A12_JXLXPJXM]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXXS_56_A12_JXLXPJXM](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[PJXMMC]  nvarchar(50)  NOT NULL,--������Ŀ����
	[PLSX]  int  NOT NULL,--����˳��
CONSTRAINT [PK_EDU_ZXXS_56_A12_JXLXPJXM] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--��У��ϵѧ�����۱�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXXS_56_A13_JXLXXSPJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXXS_56_A13_JXLXXSPJ](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[BPXSID]  int  NOT NULL,--����ѧ��ID
	[PJXSID]  int  NOT NULL,--����ѧ��ID
	[PJXMID]  int  NOT NULL,--������ĿID
	[DFLX]  int  NOT NULL,--�������
	[DFNR]  nvarchar(200)  NOT NULL,--�������
	[DJSJ]  datetime  NOT NULL,--�Ǽ�ʱ��
CONSTRAINT [PK_EDU_ZXXS_56_A13_JXLXXSPJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ѧ���Ļ�����������Ŀ��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXXS_56_A21_XSWHSZPJXM]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXXS_56_A21_XSWHSZPJXM](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[KCMC]  nvarchar(50)  NOT NULL,--�γ�����
	[PJXM]  nvarchar(50)  NOT NULL,--������Ŀ
	[CJDFFSID]  int  NOT NULL,--�ɼ���ַ�ʽID
	[PJDFFSID]  int  NOT NULL,--���۴�ַ�ʽID
	[PLSX]  int  NOT NULL,--����˳��
	[ZT]  int  NOT NULL,--״̬
CONSTRAINT [PK_EDU_ZXXS_56_A21_XSWHSZPJXM] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ѧ���Ļ��������۽����
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXXS_56_A22_XSWHSZPJJG]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXXS_56_A22_XSWHSZPJJG](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[XQID]  int  NOT NULL,--ѧ��ID
	[BPXSID]  int  NOT NULL,--����ѧ��ID
	[PJXMID]  int  NOT NULL,--������ĿID
	[PJLX]  int  NOT NULL,--��������
	[DFLX]  int  NOT NULL,--�������
	[DFNR]  nvarchar(200)  NOT NULL,--�������
	[DJYHID]  nvarchar(20)  NOT NULL,--�Ǽ��û�ID
	[DJSJ]  datetime  NOT NULL,--�Ǽ�ʱ��
CONSTRAINT [PK_EDU_ZXXS_56_A22_XSWHSZPJJG] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ѧ���ۺ�����������Ŀ��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXXS_56_A31_XSZHSZPJXM]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXXS_56_A31_XSZHSZPJXM](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[XMMC]  nvarchar(50)  NOT NULL,--��Ŀ����
	[YS]  nvarchar(50)  NOT NULL,--Ҫ��
	[GJBX]  nvarchar(200)  NOT NULL,--�ؼ�����
	[ZWPDDFFSID]  int  NOT NULL,--����������ַ�ʽID
	[XZPDDFFSID]  int  NOT NULL,--С��������ַ�ʽID
	[PLSX]  int  NOT NULL,--����˳��
	[ZT]  int  NOT NULL,--״̬
CONSTRAINT [PK_EDU_ZXXS_56_A31_XSZHSZPJXM] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--ѧ���ۺ��������۽����
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXXS_56_A32_XSZHSZPJJG]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXXS_56_A32_XSZHSZPJJG](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[XQID]  int  NOT NULL,--ѧ��ID
	[BPXSID]  int  NOT NULL,--����ѧ��ID
	[PJXMID]  int  NOT NULL,--������ĿID
	[PJLX]  int  NOT NULL,--��������
	[DFLX]  int  NOT NULL,--�������
	[DFNR]  nvarchar(200)  NOT NULL,--�������
	[DJYHID]  nvarchar(20)  NOT NULL,--�Ǽ��û�ID
	[DJSJ]  datetime  NOT NULL,--�Ǽ�ʱ��
CONSTRAINT [PK_EDU_ZXXS_56_A32_XSZHSZPJJG] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--��������¼��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXXS_56_A41_JKJCJL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXXS_56_A41_JKJCJL](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[XQID]  int  NOT NULL,--ѧ��ID
	[XSID]  int  NOT NULL,--ѧ��ID
	[NJID]  nvarchar(10)  NOT NULL,--�꼶ID
	[BJID]  nvarchar(10)  NOT NULL,--�༶ID
	[TJRQ]  datetime  NOT NULL,--�������
	[ZLYSL]  decimal(2, 1)  NOT NULL,--����������
	[ZJZSL]  decimal(2, 1)  NOT NULL,--���������
	[ZJZDS]  int  NOT NULL,--���������
	[YLYSL]  decimal(2, 1)  NOT NULL,--����������
	[YJZSL]  decimal(2, 1)  NOT NULL,--�ҽ�������
	[YJZDS]  int  NOT NULL,--�ҽ�������
	[TLZ]  nvarchar(30)  NOT NULL,--������
	[TLY]  nvarchar(30)  NOT NULL,--������
	[FYJYYZK]  nvarchar(30)  NOT NULL,--������Ӫ��״��
	[SG]  decimal(5, 2)  NOT NULL,--���
	[TZ]  decimal(5, 2)  NOT NULL,--����
	[FHL]  decimal(7, 2)  NOT NULL,--�λ���
	[XY]  decimal(7, 2)  NOT NULL,--Ѫѹ
	[MB]  int  NOT NULL,--����
	[SY]  nvarchar(30)  NOT NULL,--ɳ��
	[SJ]  nvarchar(30)  NOT NULL,--ɫ��
	[BB]  nvarchar(30)  NOT NULL,--�ǲ�
	[KQ]  nvarchar(30)  NOT NULL,--��ǻ
	[XZF]  nvarchar(30)  NOT NULL,--���ࡢ��
	[GPCW]  nvarchar(30)  NOT NULL,--��Ƣ��θ��
	[JZSZ]  nvarchar(30)  NOT NULL,--��������֫
	[PZ]  nvarchar(30)  NOT NULL,--ƽ��
	[PF]  nvarchar(30)  NOT NULL,--Ƥ��
	[CLB]  nvarchar(30)  NOT NULL,--��Ⱦ��
	[XT]  nvarchar(30)  NOT NULL,--��͸
	[JWBS]  nvarchar(300)  NOT NULL,--������ʷ
	[XYQM]  nvarchar(30)  NOT NULL,--Уҽǩ��
	[JZQM]  nvarchar(30)  NOT NULL,--�ҳ�ǩ��
	[DJYHID]  nvarchar(20)  NOT NULL,--�Ǽ��û�ID
	[BZ]  text  NOT NULL,--��ע
CONSTRAINT [PK_EDU_ZXXS_56_A41_JKJCJL] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--��ʦ�ƹ��ܱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXXS_57_A01_DSZGN]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXXS_57_A01_DSZGN](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[GNMC]  nvarchar(100)  NOT NULL,--��������
	[LJ]  nvarchar(200)  NOT NULL,--����
	[PLSX]  int  NOT NULL,--����˳��
CONSTRAINT [PK_EDU_ZXXS_57_A01_DSZGN] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--��ʦ�ƽ�ɫ��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXXS_57_A02_DSZJS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXXS_57_A02_DSZJS](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[XQID]  int  NOT NULL,--ѧ��ID
	[JSMC]  nvarchar(100)  NOT NULL,--��ɫ����
	[GNIDLB]  text  NOT NULL,--����ID�б�
	[GNMCLB]  text  NOT NULL,--���������б�
CONSTRAINT [PK_EDU_ZXXS_57_A02_DSZJS] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--��ʦ�Ƶ�ʦ��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXXS_57_A03_DSZDS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXXS_57_A03_DSZDS](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[XQID]  int  NOT NULL,--ѧ��ID
	[JSID]  int  NOT NULL,--��ʦID
	[JUESEID]  int  NOT NULL,--��ɫID
	[TJSJ]  datetime  NOT NULL,--���ʱ��
CONSTRAINT [PK_EDU_ZXXS_57_A03_DSZDS] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--��ʦ�Ƶ�ʦѧ����Ա�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXXS_57_A04_DSZDSXSJD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXXS_57_A04_DSZDSXSJD](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[XQID]  int  NOT NULL,--ѧ��ID
	[DSID]  int  NOT NULL,--��ʦID
	[XSID]  int  NOT NULL,--ѧ��ID
	[TJSJ]  datetime  NOT NULL,--���ʱ��
CONSTRAINT [PK_EDU_ZXXS_57_A04_DSZDSXSJD] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--��ʦ�ƻ��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXXS_57_A11_DSZHD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXXS_57_A11_DSZHD](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[XQID]  int  NOT NULL,--ѧ��ID
	[DSID]  int  NOT NULL,--��ʦID
	[HDMC]  nvarchar(100)  NOT NULL,--�����
	[HDNR]  text  NOT NULL,--�����
	[KSSJ]  datetime  NOT NULL,--��ʼʱ��
	[JSSJ]  datetime  NOT NULL,--����ʱ��
	[BZ]  nvarchar(200)  NOT NULL,--��ע
CONSTRAINT [PK_EDU_ZXXS_57_A11_DSZHD] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--��ʦ��ѧ������ּ�¼��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXXS_57_A12_DSZXSHDBXJL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXXS_57_A12_DSZXSHDBXJL](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[XQID]  int  NOT NULL,--ѧ��ID
	[HDID]  int  NOT NULL,--�ID
	[XSID]  int  NOT NULL,--ѧ��ID
	[DSID]  int  NOT NULL,--��ʦID
	[JTBX]  text  NOT NULL,--�������
	[PJNR]  nvarchar(200)  NOT NULL,--��������
	[TJSJ]  datetime  NOT NULL,--���ʱ��
CONSTRAINT [PK_EDU_ZXXS_57_A12_DSZXSHDBXJL] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--��ʦ��ѧ��ְ���α�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXXS_57_A14_DSZXSZWDR]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXXS_57_A14_DSZXSZWDR](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[XQID]  int  NOT NULL,--ѧ��ID
	[XSID]  int  NOT NULL,--ѧ��ID
	[DSID]  int  NOT NULL,--��ʦID
	[ZWMC]  nvarchar(200)  NOT NULL,--ְ������
	[KSSJ]  datetime  NOT NULL,--��ʼʱ��
	[JSSJ]  datetime  NOT NULL,--����ʱ��
	[TJSJ]  datetime  NOT NULL,--���ʱ��
	[BZ]  nvarchar(200)  NOT NULL,--��ע
CONSTRAINT [PK_EDU_ZXXS_57_A14_DSZXSZWDR] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--��ʦ��ѧ�����ͼ�¼��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXXS_57_A15_DSZXSJCJL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXXS_57_A15_DSZXSJCJL](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[XQID]  int  NOT NULL,--ѧ��ID
	[XSID]  int  NOT NULL,--ѧ��ID
	[DSID]  int  NOT NULL,--��ʦID
	[JCLX]  nvarchar(200)  NOT NULL,--��������
	[JCNR]  text  NOT NULL,--��������
	[TJSJ]  datetime  NOT NULL,--���ʱ��
	[BZ]  nvarchar(200)  NOT NULL,--��ע
CONSTRAINT [PK_EDU_ZXXS_57_A15_DSZXSJCJL] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--��ʦ��ѧ����ټ�¼��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXXS_57_A16_DSZXSQJJL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXXS_57_A16_DSZXSQJJL](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[XQID]  int  NOT NULL,--ѧ��ID
	[XSID]  int  NOT NULL,--ѧ��ID
	[DSID]  int  NOT NULL,--��ʦID
	[QJLX]  nvarchar(200)  NOT NULL,--�������
	[QJNR]  text  NOT NULL,--�������
	[TJSJ]  datetime  NOT NULL,--���ʱ��
	[BZ]  nvarchar(200)  NOT NULL,--��ע
CONSTRAINT [PK_EDU_ZXXS_57_A16_DSZXSQJJL] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--��ʦ��ѧ��ѧ��С���
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXXS_57_A17_DSZXSXQXJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXXS_57_A17_DSZXSXQXJ](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[XQID]  int  NOT NULL,--ѧ��ID
	[XSID]  int  NOT NULL,--ѧ��ID
	[DSID]  int  NOT NULL,--��ʦID
	[NR]  text  NOT NULL,--����
	[DDID]  int  NOT NULL,--�ȵ�ID
	[TJSJ]  datetime  NOT NULL,--���ʱ��
	[BZ]  nvarchar(200)  NOT NULL,--��ע
CONSTRAINT [PK_EDU_ZXXS_57_A17_DSZXSXQXJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--��ʦ��ѧ���ȵڱ�
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXXS_57_A18_DSZXSDD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXXS_57_A18_DSZXSDD](
	[ID]  int  NOT NULL,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[DDMC]  nvarchar(200)  NOT NULL,--�ȵ�����
	[PLSX]  int  NOT NULL,--����˳��
CONSTRAINT [PK_EDU_ZXXS_57_A18_DSZXSDD] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--��ʦ��ѧ�����ҹ滮��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXXS_57_A21_DSZXSZWGH]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXXS_57_A21_DSZXSZWGH](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[XSID]  int  NOT NULL,--ѧ��ID
	[RSMB]  text  NOT NULL,--����Ŀ��
	[WLSNDW]  text  NOT NULL,--δ��ʮ�����
	[WGXQDZY]  text  NOT NULL,--�Ҹ���Ȥ��ְҵ
	[WXWDCS]  text  NOT NULL,--�������ĳ���
	[TJSJ]  datetime  NOT NULL,--���ʱ��
CONSTRAINT [PK_EDU_ZXXS_57_A21_DSZXSZWGH] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--��ʦ��ѧ��ѧ�ڹ滮�ܽ��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXXS_57_A22_DSZXSXQGHZJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXXS_57_A22_DSZXSXQGHZJ](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[XQID]  int  NOT NULL,--ѧ��ID
	[XSID]  int  NOT NULL,--ѧ��ID
	[XYSPCSMB]  text  NOT NULL,--ѧҵˮƽ����Ŀ��
	[ZJTSKJZY]  text  NOT NULL,--�Լ������ռ�����
	[BXQDNLMB]  text  NOT NULL,--��ѧ�ڵ�Ŭ��Ŀ��
	[XQHJXX]  text  NOT NULL,--ѧ�ڻ���Ϣ
	[YXZSDXYWHHD]  text  NOT NULL,--ӡ�������У԰�Ļ��
	[HGBXQ]  text  NOT NULL,--�ع˱�ѧ��
	[DSJY]  text  NOT NULL,--��ʦ����
	[SJJH]  text  NOT NULL,--��ټƻ�
	[TJSJ]  datetime  NOT NULL,--���ʱ��
CONSTRAINT [PK_EDU_ZXXS_57_A22_DSZXSXQGHZJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--��ʦ��ѧ��ѧ��ÿ�¹滮��
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXXS_57_A23_DSZXSXQMYGH]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXXS_57_A23_DSZXSXQMYGH](
	[ID]  int  identity,--���
	[SCHOOLID]  int  NOT NULL,--ѧУ
	[XQID]  int  NOT NULL,--ѧ��ID
	[YF]  int  NOT NULL,--�·�
	[XSID]  int  NOT NULL,--ѧ��ID
	[BYMB]  text  NOT NULL,--����Ŀ��
	[BYXXSH]  text  NOT NULL,--����ѧϰ�ջ�
	[XYHDSH]  text  NOT NULL,--У԰��ջ�
	[ZLNXYYYDS]  text  NOT NULL,--������Щ���������
	[DLNXS]  text  NOT NULL,--������Щ��
	[GDDS]  text  NOT NULL,--�ж�����
	[TJSJ]  datetime  NOT NULL,--���ʱ��
CONSTRAINT [PK_EDU_ZXXS_57_A23_DSZXSXQMYGH] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--����Ϊ���ע�����
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ���������������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_01_XSXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'XH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'XM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ӣ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'YWXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ƴ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'XMPY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'CYM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ա���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'XBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'CSRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'CSDM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'JG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'MZM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����/������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'GJDQM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���֤��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'SFZJLXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���֤����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'SFZJH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����״����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'HYZKM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�۰�̨������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'GATQWM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ò��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'ZZMMM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����״����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'JKZKM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����ڽ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'XYZJM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ѫ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'XXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ƭ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'ZP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���֤����Ч��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'SFZJYXQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������Ů��־' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'DSZYBZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ѧ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'RXNY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�꼶' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'NJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'BH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'XSLBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��סַ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'XZZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������ڵ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'HKSZD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'HKXZM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ������˿�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'SFLDRK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�س�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'TC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ϵ�绰' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'LXDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ͨ�ŵ�ַ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'TXDZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'YZBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'DZXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ҳ��ַ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'ZYDZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'XJH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ����ǰ״̬��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'XSDQZTM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ����ͥ��Ա���ݱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_06_XSJTCY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_06_XSJTCY', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_06_XSJTCY', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ����Ϣ���ݱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_06_XSJTCY', @level2type=N'COLUMN',@level2name=N'XSXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ϵ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_06_XSJTCY', @level2type=N'COLUMN',@level2name=N'GXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ա����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_06_XSJTCY', @level2type=N'COLUMN',@level2name=N'CYXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_06_XSJTCY', @level2type=N'COLUMN',@level2name=N'CSNY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_06_XSJTCY', @level2type=N'COLUMN',@level2name=N'MZM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����/������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_06_XSJTCY', @level2type=N'COLUMN',@level2name=N'GJDQM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����״����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_06_XSJTCY', @level2type=N'COLUMN',@level2name=N'JKZKM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ա������λ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_06_XSJTCY', @level2type=N'COLUMN',@level2name=N'CYGZDW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ҵ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_06_XSJTCY', @level2type=N'COLUMN',@level2name=N'CYM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'רҵ����ְ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_06_XSJTCY', @level2type=N'COLUMN',@level2name=N'ZYJSZWM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ְ�񼶱���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_06_XSJTCY', @level2type=N'COLUMN',@level2name=N'ZWJBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�绰' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_06_XSJTCY', @level2type=N'COLUMN',@level2name=N'DH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_06_XSJTCY', @level2type=N'COLUMN',@level2name=N'DZXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ�໤��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_06_XSJTCY', @level2type=N'COLUMN',@level2name=N'SFJHR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ա���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_06_XSJTCY', @level2type=N'COLUMN',@level2name=N'XBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_06_XSJTCY', @level2type=N'COLUMN',@level2name=N'XLM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ϵ��ַ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_06_XSJTCY', @level2type=N'COLUMN',@level2name=N'LXDZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ֻ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_01_06_XSJTCY', @level2type=N'COLUMN',@level2name=N'SJHM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ����ͥ��Ϣ���ݱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_02_A01_XSJTXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ����Ϣ���ݱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_02_A01_XSJTXX', @level2type=N'COLUMN',@level2name=N'XSXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_02_A01_XSJTXX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ͥסַ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_02_A01_XSJTXX', @level2type=N'COLUMN',@level2name=N'JTZZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ͥ��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_02_A01_XSJTXX', @level2type=N'COLUMN',@level2name=N'JTYZBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ͥ�绰' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_02_A01_XSJTXX', @level2type=N'COLUMN',@level2name=N'JTDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ͥ��ϵ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_02_A01_XSJTXX', @level2type=N'COLUMN',@level2name=N'JTLXR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ͥ��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_02_A01_XSJTXX', @level2type=N'COLUMN',@level2name=N'JTDZXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ͥ�˿�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_02_A01_XSJTXX', @level2type=N'COLUMN',@level2name=N'JTRK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ͥ��Ҫ������Դ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_02_A01_XSJTXX', @level2type=N'COLUMN',@level2name=N'JTZYSRLY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ͥ��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_02_A01_XSJTXX', @level2type=N'COLUMN',@level2name=N'JTYSRJE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ͥ��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_02_A01_XSJTXX', @level2type=N'COLUMN',@level2name=N'JTNSRJE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������վ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_02_A01_XSJTXX', @level2type=N'COLUMN',@level2name=N'LJZJHCZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��У���Գɼ����������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_02_06_ZXKSCJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���Գɼ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_02_06_ZXKSCJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_02_06_ZXKSCJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_02_06_ZXKSCJ', @level2type=N'COLUMN',@level2name=N'XSXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ�꣨�ȣ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_02_06_ZXKSCJ', @level2type=N'COLUMN',@level2name=N'XN'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_02_06_ZXKSCJ', @level2type=N'COLUMN',@level2name=N'XQM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_02_06_ZXKSCJ', @level2type=N'COLUMN',@level2name=N'KSRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�γ̺�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_02_06_ZXKSCJ', @level2type=N'COLUMN',@level2name=N'KCH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ον�ʦID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_02_06_ZXKSCJ', @level2type=N'COLUMN',@level2name=N'RKJSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ɼ�¼����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_02_06_ZXKSCJ', @level2type=N'COLUMN',@level2name=N'CJLRRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���Է�ʽ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_02_06_ZXKSCJ', @level2type=N'COLUMN',@level2name=N'KSFSM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_02_06_ZXKSCJ', @level2type=N'COLUMN',@level2name=N'KSXZM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ʽ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_02_06_ZXKSCJ', @level2type=N'COLUMN',@level2name=N'KSXSM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����࿼�Գɼ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_02_06_ZXKSCJ', @level2type=N'COLUMN',@level2name=N'FSLKSCJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ȼ��࿼�Գɼ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_02_06_ZXKSCJ', @level2type=N'COLUMN',@level2name=N'DJLKSCJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�γ̳ɼ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_02_06_ZXKSCJ', @level2type=N'COLUMN',@level2name=N'KCCJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�γ̵ȼ��ɼ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_02_06_ZXKSCJ', @level2type=N'COLUMN',@level2name=N'KCDJCJM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ον�ʦ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_02_06_ZXKSCJ', @level2type=N'COLUMN',@level2name=N'RKJSGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ɼ�¼���˺�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_02_06_ZXKSCJ', @level2type=N'COLUMN',@level2name=N'CJLRRH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ɼ�¼������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_02_06_ZXKSCJ', @level2type=N'COLUMN',@level2name=N'CJLRRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ɼ�¼��ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_02_06_ZXKSCJ', @level2type=N'COLUMN',@level2name=N'CJLRSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_02_06_ZXKSCJ', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_02_06_ZXKSCJ', @level2type=N'COLUMN',@level2name=N'XNID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�꼶' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_02_06_ZXKSCJ', @level2type=N'COLUMN',@level2name=N'NJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�༶' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_02_06_ZXKSCJ', @level2type=N'COLUMN',@level2name=N'BJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_02_06_ZXKSCJ', @level2type=N'COLUMN',@level2name=N'SSKSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������Կ�ĿID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_02_06_ZXKSCJ', @level2type=N'COLUMN',@level2name=N'SSKSKMID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ծ�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_02_06_ZXKSCJ', @level2type=N'COLUMN',@level2name=N'SJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ���춯���������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_07_A02_XJYD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ���춯����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_07_A02_XJYD', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_07_A02_XJYD', @level2type=N'COLUMN',@level2name=N'XSXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_07_A02_XJYD', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�춯�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_07_A02_XJYD', @level2type=N'COLUMN',@level2name=N'YDLBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�춯����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_07_A02_XJYD', @level2type=N'COLUMN',@level2name=N'YDRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�춯ԭ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_07_A02_XJYD', @level2type=N'COLUMN',@level2name=N'YDYYM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_07_A02_XJYD', @level2type=N'COLUMN',@level2name=N'SPRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����ĺ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_07_A02_XJYD', @level2type=N'COLUMN',@level2name=N'SPWH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_07_A02_XJYD', @level2type=N'COLUMN',@level2name=N'JBRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����˹���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_07_A02_XJYD', @level2type=N'COLUMN',@level2name=N'JBRGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�춯��ԴѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_07_A02_XJYD', @level2type=N'COLUMN',@level2name=N'YDLYXXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�춯ȥ��ѧУ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_07_A02_XJYD', @level2type=N'COLUMN',@level2name=N'YDQXXXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�춯˵��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_07_A02_XJYD', @level2type=N'COLUMN',@level2name=N'YDSM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ԭ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_07_A02_XJYD', @level2type=N'COLUMN',@level2name=N'YBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ԭ�꼶' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_07_A02_XJYD', @level2type=N'COLUMN',@level2name=N'YNJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ְ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_07_A02_XJYD', @level2type=N'COLUMN',@level2name=N'XBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���꼶' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_07_A02_XJYD', @level2type=N'COLUMN',@level2name=N'XNJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ�������¼��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_07_A03_XSHBJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_07_A03_XSHBJL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_07_A03_XSHBJL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_07_A03_XSHBJL', @level2type=N'COLUMN',@level2name=N'XSXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_07_A03_XSHBJL', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ԭ�༶ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_07_A03_XSHBJL', @level2type=N'COLUMN',@level2name=N'YBJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ְ༶ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_07_A03_XSHBJL', @level2type=N'COLUMN',@level2name=N'XBJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������Ա' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_07_A03_XSHBJL', @level2type=N'COLUMN',@level2name=N'CZRY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_07_A03_XSHBJL', @level2type=N'COLUMN',@level2name=N'HBSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ȱ��ԭ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_50_A01_QQYY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_50_A01_QQYY', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_50_A01_QQYY', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_50_A01_QQYY', @level2type=N'COLUMN',@level2name=N'MC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�༶�ϱ���¼��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_50_A02_BJSBJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_50_A02_BJSBJL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_50_A02_BJSBJL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�༶ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_50_A02_BJSBJL', @level2type=N'COLUMN',@level2name=N'BJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_50_A02_BJSBJL', @level2type=N'COLUMN',@level2name=N'ZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_50_A02_BJSBJL', @level2type=N'COLUMN',@level2name=N'RQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ȱ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_50_A02_BJSBJL', @level2type=N'COLUMN',@level2name=N'QQRS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ���ϱ���¼��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_50_A03_XSSBJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_50_A03_XSSBJL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_50_A03_XSSBJL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�༶ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_50_A03_XSSBJL', @level2type=N'COLUMN',@level2name=N'BJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_50_A03_XSSBJL', @level2type=N'COLUMN',@level2name=N'XSXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ȱ��ԭ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_50_A03_XSSBJL', @level2type=N'COLUMN',@level2name=N'QQYYID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ȱ��ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_50_A03_XSSBJL', @level2type=N'COLUMN',@level2name=N'QQSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_50_A03_XSSBJL', @level2type=N'COLUMN',@level2name=N'JTQK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_50_A03_XSSBJL', @level2type=N'COLUMN',@level2name=N'TW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ��ҽ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_50_A03_XSSBJL', @level2type=N'COLUMN',@level2name=N'SFJY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ�֪ͨ�ҳ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_50_A03_XSSBJL', @level2type=N'COLUMN',@level2name=N'SFTZJZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ҳ���ϵ��ʽ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_50_A03_XSSBJL', @level2type=N'COLUMN',@level2name=N'JZLXFS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_50_A03_XSSBJL', @level2type=N'COLUMN',@level2name=N'RQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ϱ���ʦID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_50_A03_XSSBJL', @level2type=N'COLUMN',@level2name=N'SBJSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���˴����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_51_A01_KHDL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_51_A01_KHDL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_51_A01_KHDL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_51_A01_KHDL', @level2type=N'COLUMN',@level2name=N'MC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���˶���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_51_A01_KHDL', @level2type=N'COLUMN',@level2name=N'KHDX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ǼǷ�ʽ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_51_A01_KHDL', @level2type=N'COLUMN',@level2name=N'DJFS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ɵǼ��û�ID�б�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_51_A01_KHDL', @level2type=N'COLUMN',@level2name=N'KDJYHIDLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ɵǼ��û������б�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_51_A01_KHDL', @level2type=N'COLUMN',@level2name=N'KDJYHXMLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���˴�����Ŀ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_51_A02_KHDLXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_51_A02_KHDLXM', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_51_A02_KHDLXM', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_51_A02_KHDLXM', @level2type=N'COLUMN',@level2name=N'SSDLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������Ŀ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_51_A02_KHDLXM', @level2type=N'COLUMN',@level2name=N'DLXMMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ֵ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_51_A02_KHDLXM', @level2type=N'COLUMN',@level2name=N'FZLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ŀ��߷�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_51_A02_KHDLXM', @level2type=N'COLUMN',@level2name=N'XMZGF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�༶���˳ɼ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_51_A03_BJKHCJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_51_A03_BJKHCJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_51_A03_BJKHCJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_51_A03_BJKHCJ', @level2type=N'COLUMN',@level2name=N'SSDLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����������ĿID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_51_A03_BJKHCJ', @level2type=N'COLUMN',@level2name=N'SSDLXMID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�꼶ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_51_A03_BJKHCJ', @level2type=N'COLUMN',@level2name=N'NJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�༶ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_51_A03_BJKHCJ', @level2type=N'COLUMN',@level2name=N'BJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_51_A03_BJKHCJ', @level2type=N'COLUMN',@level2name=N'KHSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ֵ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_51_A03_BJKHCJ', @level2type=N'COLUMN',@level2name=N'FZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ǽ���ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_51_A03_BJKHCJ', @level2type=N'COLUMN',@level2name=N'DJRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ǽ�ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_51_A03_BJKHCJ', @level2type=N'COLUMN',@level2name=N'DJSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ῼ�˳ɼ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_51_A04_SSKHCJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_51_A04_SSKHCJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_51_A04_SSKHCJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_51_A04_SSKHCJ', @level2type=N'COLUMN',@level2name=N'SSDLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����������ĿID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_51_A04_SSKHCJ', @level2type=N'COLUMN',@level2name=N'SSDLXMID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ԢID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_51_A04_SSKHCJ', @level2type=N'COLUMN',@level2name=N'GYID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_51_A04_SSKHCJ', @level2type=N'COLUMN',@level2name=N'SSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_51_A04_SSKHCJ', @level2type=N'COLUMN',@level2name=N'KHSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ֵ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_51_A04_SSKHCJ', @level2type=N'COLUMN',@level2name=N'FZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ǽ���ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_51_A04_SSKHCJ', @level2type=N'COLUMN',@level2name=N'DJRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ǽ�ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_51_A04_SSKHCJ', @level2type=N'COLUMN',@level2name=N'DJSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���˻��ܱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_51_A11_KHHZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_51_A11_KHHZ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_51_A11_KHHZ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_51_A11_KHHZ', @level2type=N'COLUMN',@level2name=N'MC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ܷ�ʽ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_51_A11_KHHZ', @level2type=N'COLUMN',@level2name=N'HZFS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���˶���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_51_A11_KHHZ', @level2type=N'COLUMN',@level2name=N'KHDX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ȴ���ID�б�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_51_A11_KHHZ', @level2type=N'COLUMN',@level2name=N'YXDLIDLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ȴ��������б�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_51_A11_KHHZ', @level2type=N'COLUMN',@level2name=N'YXDLMCLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������ʽ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_51_A11_KHHZ', @level2type=N'COLUMN',@level2name=N'YXPXFS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ȴ���ID�б�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_51_A11_KHHZ', @level2type=N'COLUMN',@level2name=N'CXDLIDLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ȴ��������б�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_51_A11_KHHZ', @level2type=N'COLUMN',@level2name=N'CXDLMCLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������ʽ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_51_A11_KHHZ', @level2type=N'COLUMN',@level2name=N'CXPXFS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ȵ���ѡ��ʽ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_51_A11_KHHZ', @level2type=N'COLUMN',@level2name=N'DDPXFS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ���ʾ�޵ȵ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_51_A11_KHHZ', @level2type=N'COLUMN',@level2name=N'SFXSWDD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�༶������ʾ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_51_A12_BJHZXSCS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_51_A12_BJHZXSCS', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_51_A12_BJHZXSCS', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���˻���ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_51_A12_BJHZXSCS', @level2type=N'COLUMN',@level2name=N'KHHZID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�꼶' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_51_A12_BJHZXSCS', @level2type=N'COLUMN',@level2name=N'NJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�༶' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_51_A12_BJHZXSCS', @level2type=N'COLUMN',@level2name=N'BJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_51_A12_BJHZXSCS', @level2type=N'COLUMN',@level2name=N'BZR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ֵ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_51_A12_BJHZXSCS', @level2type=N'COLUMN',@level2name=N'FZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ȵ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_51_A12_BJHZXSCS', @level2type=N'COLUMN',@level2name=N'DD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���������ʾ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_51_A13_SSHZXSCS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_51_A13_SSHZXSCS', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_51_A13_SSHZXSCS', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���˻���ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_51_A13_SSHZXSCS', @level2type=N'COLUMN',@level2name=N'KHHZID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ԣ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_51_A13_SSHZXSCS', @level2type=N'COLUMN',@level2name=N'GY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'¥��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_51_A13_SSHZXSCS', @level2type=N'COLUMN',@level2name=N'LC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_51_A13_SSHZXSCS', @level2type=N'COLUMN',@level2name=N'SS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�༶' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_51_A13_SSHZXSCS', @level2type=N'COLUMN',@level2name=N'BJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ֵ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_51_A13_SSHZXSCS', @level2type=N'COLUMN',@level2name=N'FZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ȵ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_51_A13_SSHZXSCS', @level2type=N'COLUMN',@level2name=N'DD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���˻��ܴ������ñ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_51_A14_KHHZDLPZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_51_A14_KHHZDLPZ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_51_A14_KHHZDLPZ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���˻���ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_51_A14_KHHZDLPZ', @level2type=N'COLUMN',@level2name=N'KHHZID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_51_A14_KHHZDLPZ', @level2type=N'COLUMN',@level2name=N'DLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_51_A14_KHHZDLPZ', @level2type=N'COLUMN',@level2name=N'ZSL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѡ����ĿID�б�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_51_A14_KHHZDLPZ', @level2type=N'COLUMN',@level2name=N'XYXMIDLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʾ��Ϣ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_51_A14_KHHZDLPZ', @level2type=N'COLUMN',@level2name=N'XSXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���˻��ܵ�λ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_51_A15_KHHZDW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_51_A15_KHHZDW', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_51_A15_KHHZDW', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���˻���ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_51_A15_KHHZDW', @level2type=N'COLUMN',@level2name=N'KHHZID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��λ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_51_A15_KHHZDW', @level2type=N'COLUMN',@level2name=N'DWMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_51_A15_KHHZDW', @level2type=N'COLUMN',@level2name=N'HFSX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_51_A15_KHHZDW', @level2type=N'COLUMN',@level2name=N'HFXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ѡ��Ŀ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_52_A01_PXXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_52_A01_PXXM', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_52_A01_PXXM', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ѡ��Ŀ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_52_A01_PXXM', @level2type=N'COLUMN',@level2name=N'PXXMMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_52_A01_PXXM', @level2type=N'COLUMN',@level2name=N'JJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ѡ���Ʊ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_52_A02_PXMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_52_A02_PXMC', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_52_A02_PXMC', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_52_A02_PXMC', @level2type=N'COLUMN',@level2name=N'MC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ѡ��ĿID�б�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_52_A02_PXMC', @level2type=N'COLUMN',@level2name=N'PXXMIDLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ѡ��Ŀ�����б�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_52_A02_PXMC', @level2type=N'COLUMN',@level2name=N'PXXMMCLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ѡѧ��ID�б�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_52_A02_PXMC', @level2type=N'COLUMN',@level2name=N'PXXSIDLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ѡѧ�������б�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_52_A02_PXMC', @level2type=N'COLUMN',@level2name=N'PXXSXMLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_52_A02_PXMC', @level2type=N'COLUMN',@level2name=N'YQTX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_52_A02_PXMC', @level2type=N'COLUMN',@level2name=N'ZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_52_A02_PXMC', @level2type=N'COLUMN',@level2name=N'NR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ�����ϱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_52_A03_XSZL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_52_A03_XSZL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_52_A03_XSZL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ѡ����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_52_A03_XSZL', @level2type=N'COLUMN',@level2name=N'PXMCID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ѡ��ĿID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_52_A03_XSZL', @level2type=N'COLUMN',@level2name=N'PXXMID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_52_A03_XSZL', @level2type=N'COLUMN',@level2name=N'XSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_52_A03_XSZL', @level2type=N'COLUMN',@level2name=N'NR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ϴ�ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_52_A03_XSZL', @level2type=N'COLUMN',@level2name=N'SCSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ɳ��������ܱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_55_A01_CZDAGN'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_55_A01_CZDAGN', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_55_A01_CZDAGN', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_55_A01_CZDAGN', @level2type=N'COLUMN',@level2name=N'GNMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ���鿴��ַ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_55_A01_CZDAGN', @level2type=N'COLUMN',@level2name=N'XSCKWZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ���༭��ַ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_55_A01_CZDAGN', @level2type=N'COLUMN',@level2name=N'XSBJWZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʦ�鿴��ַ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_55_A01_CZDAGN', @level2type=N'COLUMN',@level2name=N'JSCKWZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����α༭��ַ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_55_A01_CZDAGN', @level2type=N'COLUMN',@level2name=N'BZRBJWZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ���Ҫ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_55_A01_CZDAGN', @level2type=N'COLUMN',@level2name=N'SFXYDF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ַ�ʽID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_55_A01_CZDAGN', @level2type=N'COLUMN',@level2name=N'DFFSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����˳��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_55_A01_CZDAGN', @level2type=N'COLUMN',@level2name=N'PLSX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_55_A01_CZDAGN', @level2type=N'COLUMN',@level2name=N'ZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ɳ���������Ȩ�ޱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_55_A02_CZDAGNQX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_55_A02_CZDAGNQX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_55_A02_CZDAGNQX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_55_A02_CZDAGNQX', @level2type=N'COLUMN',@level2name=N'GNID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�û�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_55_A02_CZDAGNQX', @level2type=N'COLUMN',@level2name=N'YHLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ȩ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_55_A02_CZDAGNQX', @level2type=N'COLUMN',@level2name=N'QXMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_55_A02_CZDAGNQX', @level2type=N'COLUMN',@level2name=N'ZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ɳ�������ַ�ʽ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_55_A03_CZDADFFS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_55_A03_CZDADFFS', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_55_A03_CZDADFFS', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ַ�ʽ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_55_A03_CZDADFFS', @level2type=N'COLUMN',@level2name=N'DFFSMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����Ŀ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_55_A03_CZDADFFS', @level2type=N'COLUMN',@level2name=N'DFXMLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_55_A03_CZDADFFS', @level2type=N'COLUMN',@level2name=N'ZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ɳ��������ѡ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_55_A04_CZDADFXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_55_A04_CZDADFXX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_55_A04_CZDADFXX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ַ�ʽID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_55_A04_CZDADFXX', @level2type=N'COLUMN',@level2name=N'DFFSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѡ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_55_A04_CZDADFXX', @level2type=N'COLUMN',@level2name=N'XXNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ͼƬ·��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_55_A04_CZDADFXX', @level2type=N'COLUMN',@level2name=N'TPLJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ѧ�ڴ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_56_A01_XSXQDS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_56_A01_XSXQDS', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_56_A01_XSXQDS', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_56_A01_XSXQDS', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_56_A01_XSXQDS', @level2type=N'COLUMN',@level2name=N'XSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_56_A01_XSXQDS', @level2type=N'COLUMN',@level2name=N'NR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��У��ϵÿ�ռ�¼��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_56_A11_JXLXMRJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_56_A11_JXLXMRJL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_56_A11_JXLXMRJL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_56_A11_JXLXMRJL', @level2type=N'COLUMN',@level2name=N'XSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ǽ�ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_56_A11_JXLXMRJL', @level2type=N'COLUMN',@level2name=N'DJSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������д��¼' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_56_A11_JXLXMRJL', @level2type=N'COLUMN',@level2name=N'BZRTXJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ͥ��д��¼' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_56_A11_JXLXMRJL', @level2type=N'COLUMN',@level2name=N'JTTXJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����θ���״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_56_A11_JXLXMRJL', @level2type=N'COLUMN',@level2name=N'BZRGXZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ͥ����״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_56_A11_JXLXMRJL', @level2type=N'COLUMN',@level2name=N'JTGXZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��У��ϵ������Ŀ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_56_A12_JXLXPJXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_56_A12_JXLXPJXM', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_56_A12_JXLXPJXM', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������Ŀ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_56_A12_JXLXPJXM', @level2type=N'COLUMN',@level2name=N'PJXMMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����˳��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_56_A12_JXLXPJXM', @level2type=N'COLUMN',@level2name=N'PLSX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��У��ϵѧ�����۱�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_56_A13_JXLXXSPJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_56_A13_JXLXXSPJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_56_A13_JXLXXSPJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_56_A13_JXLXXSPJ', @level2type=N'COLUMN',@level2name=N'BPXSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_56_A13_JXLXXSPJ', @level2type=N'COLUMN',@level2name=N'PJXSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ĿID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_56_A13_JXLXXSPJ', @level2type=N'COLUMN',@level2name=N'PJXMID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_56_A13_JXLXXSPJ', @level2type=N'COLUMN',@level2name=N'DFLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_56_A13_JXLXXSPJ', @level2type=N'COLUMN',@level2name=N'DFNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ǽ�ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_56_A13_JXLXXSPJ', @level2type=N'COLUMN',@level2name=N'DJSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ���Ļ�����������Ŀ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_56_A21_XSWHSZPJXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_56_A21_XSWHSZPJXM', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_56_A21_XSWHSZPJXM', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�γ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_56_A21_XSWHSZPJXM', @level2type=N'COLUMN',@level2name=N'KCMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������Ŀ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_56_A21_XSWHSZPJXM', @level2type=N'COLUMN',@level2name=N'PJXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ɼ���ַ�ʽID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_56_A21_XSWHSZPJXM', @level2type=N'COLUMN',@level2name=N'CJDFFSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���۴�ַ�ʽID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_56_A21_XSWHSZPJXM', @level2type=N'COLUMN',@level2name=N'PJDFFSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����˳��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_56_A21_XSWHSZPJXM', @level2type=N'COLUMN',@level2name=N'PLSX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_56_A21_XSWHSZPJXM', @level2type=N'COLUMN',@level2name=N'ZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ���Ļ��������۽����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_56_A22_XSWHSZPJJG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_56_A22_XSWHSZPJJG', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_56_A22_XSWHSZPJJG', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_56_A22_XSWHSZPJJG', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_56_A22_XSWHSZPJJG', @level2type=N'COLUMN',@level2name=N'BPXSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ĿID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_56_A22_XSWHSZPJJG', @level2type=N'COLUMN',@level2name=N'PJXMID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_56_A22_XSWHSZPJJG', @level2type=N'COLUMN',@level2name=N'PJLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_56_A22_XSWHSZPJJG', @level2type=N'COLUMN',@level2name=N'DFLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_56_A22_XSWHSZPJJG', @level2type=N'COLUMN',@level2name=N'DFNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ǽ��û�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_56_A22_XSWHSZPJJG', @level2type=N'COLUMN',@level2name=N'DJYHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ǽ�ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_56_A22_XSWHSZPJJG', @level2type=N'COLUMN',@level2name=N'DJSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ���ۺ�����������Ŀ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_56_A31_XSZHSZPJXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_56_A31_XSZHSZPJXM', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_56_A31_XSZHSZPJXM', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ŀ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_56_A31_XSZHSZPJXM', @level2type=N'COLUMN',@level2name=N'XMMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ҫ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_56_A31_XSZHSZPJXM', @level2type=N'COLUMN',@level2name=N'YS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ؼ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_56_A31_XSZHSZPJXM', @level2type=N'COLUMN',@level2name=N'GJBX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����������ַ�ʽID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_56_A31_XSZHSZPJXM', @level2type=N'COLUMN',@level2name=N'ZWPDDFFSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'С��������ַ�ʽID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_56_A31_XSZHSZPJXM', @level2type=N'COLUMN',@level2name=N'XZPDDFFSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����˳��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_56_A31_XSZHSZPJXM', @level2type=N'COLUMN',@level2name=N'PLSX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_56_A31_XSZHSZPJXM', @level2type=N'COLUMN',@level2name=N'ZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ���ۺ��������۽����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_56_A32_XSZHSZPJJG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_56_A32_XSZHSZPJJG', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_56_A32_XSZHSZPJJG', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_56_A32_XSZHSZPJJG', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_56_A32_XSZHSZPJJG', @level2type=N'COLUMN',@level2name=N'BPXSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ĿID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_56_A32_XSZHSZPJJG', @level2type=N'COLUMN',@level2name=N'PJXMID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_56_A32_XSZHSZPJJG', @level2type=N'COLUMN',@level2name=N'PJLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_56_A32_XSZHSZPJJG', @level2type=N'COLUMN',@level2name=N'DFLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_56_A32_XSZHSZPJJG', @level2type=N'COLUMN',@level2name=N'DFNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ǽ��û�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_56_A32_XSZHSZPJJG', @level2type=N'COLUMN',@level2name=N'DJYHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ǽ�ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_56_A32_XSZHSZPJJG', @level2type=N'COLUMN',@level2name=N'DJSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������¼��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_56_A41_JKJCJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_56_A41_JKJCJL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_56_A41_JKJCJL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_56_A41_JKJCJL', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_56_A41_JKJCJL', @level2type=N'COLUMN',@level2name=N'XSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�꼶ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_56_A41_JKJCJL', @level2type=N'COLUMN',@level2name=N'NJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�༶ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_56_A41_JKJCJL', @level2type=N'COLUMN',@level2name=N'BJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_56_A41_JKJCJL', @level2type=N'COLUMN',@level2name=N'TJRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_56_A41_JKJCJL', @level2type=N'COLUMN',@level2name=N'ZLYSL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_56_A41_JKJCJL', @level2type=N'COLUMN',@level2name=N'ZJZSL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_56_A41_JKJCJL', @level2type=N'COLUMN',@level2name=N'ZJZDS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_56_A41_JKJCJL', @level2type=N'COLUMN',@level2name=N'YLYSL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ҽ�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_56_A41_JKJCJL', @level2type=N'COLUMN',@level2name=N'YJZSL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ҽ�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_56_A41_JKJCJL', @level2type=N'COLUMN',@level2name=N'YJZDS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_56_A41_JKJCJL', @level2type=N'COLUMN',@level2name=N'TLZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_56_A41_JKJCJL', @level2type=N'COLUMN',@level2name=N'TLY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������Ӫ��״��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_56_A41_JKJCJL', @level2type=N'COLUMN',@level2name=N'FYJYYZK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_56_A41_JKJCJL', @level2type=N'COLUMN',@level2name=N'SG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_56_A41_JKJCJL', @level2type=N'COLUMN',@level2name=N'TZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�λ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_56_A41_JKJCJL', @level2type=N'COLUMN',@level2name=N'FHL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ѫѹ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_56_A41_JKJCJL', @level2type=N'COLUMN',@level2name=N'XY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_56_A41_JKJCJL', @level2type=N'COLUMN',@level2name=N'MB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ɳ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_56_A41_JKJCJL', @level2type=N'COLUMN',@level2name=N'SY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ɫ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_56_A41_JKJCJL', @level2type=N'COLUMN',@level2name=N'SJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ǲ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_56_A41_JKJCJL', @level2type=N'COLUMN',@level2name=N'BB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ǻ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_56_A41_JKJCJL', @level2type=N'COLUMN',@level2name=N'KQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ࡢ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_56_A41_JKJCJL', @level2type=N'COLUMN',@level2name=N'XZF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ƣ��θ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_56_A41_JKJCJL', @level2type=N'COLUMN',@level2name=N'GPCW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������֫' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_56_A41_JKJCJL', @level2type=N'COLUMN',@level2name=N'JZSZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ƽ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_56_A41_JKJCJL', @level2type=N'COLUMN',@level2name=N'PZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ƥ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_56_A41_JKJCJL', @level2type=N'COLUMN',@level2name=N'PF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ⱦ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_56_A41_JKJCJL', @level2type=N'COLUMN',@level2name=N'CLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��͸' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_56_A41_JKJCJL', @level2type=N'COLUMN',@level2name=N'XT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ʷ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_56_A41_JKJCJL', @level2type=N'COLUMN',@level2name=N'JWBS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Уҽǩ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_56_A41_JKJCJL', @level2type=N'COLUMN',@level2name=N'XYQM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ҳ�ǩ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_56_A41_JKJCJL', @level2type=N'COLUMN',@level2name=N'JZQM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ǽ��û�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_56_A41_JKJCJL', @level2type=N'COLUMN',@level2name=N'DJYHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_56_A41_JKJCJL', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʦ�ƹ��ܱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A01_DSZGN'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A01_DSZGN', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A01_DSZGN', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A01_DSZGN', @level2type=N'COLUMN',@level2name=N'GNMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A01_DSZGN', @level2type=N'COLUMN',@level2name=N'LJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����˳��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A01_DSZGN', @level2type=N'COLUMN',@level2name=N'PLSX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʦ�ƽ�ɫ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A02_DSZJS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A02_DSZJS', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A02_DSZJS', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A02_DSZJS', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ɫ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A02_DSZJS', @level2type=N'COLUMN',@level2name=N'JSMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ID�б�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A02_DSZJS', @level2type=N'COLUMN',@level2name=N'GNIDLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���������б�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A02_DSZJS', @level2type=N'COLUMN',@level2name=N'GNMCLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʦ�Ƶ�ʦ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A03_DSZDS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A03_DSZDS', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A03_DSZDS', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A03_DSZDS', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʦID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A03_DSZDS', @level2type=N'COLUMN',@level2name=N'JSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ɫID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A03_DSZDS', @level2type=N'COLUMN',@level2name=N'JUESEID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A03_DSZDS', @level2type=N'COLUMN',@level2name=N'TJSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʦ�Ƶ�ʦѧ����Ա�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A04_DSZDSXSJD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A04_DSZDSXSJD', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A04_DSZDSXSJD', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A04_DSZDSXSJD', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʦID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A04_DSZDSXSJD', @level2type=N'COLUMN',@level2name=N'DSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A04_DSZDSXSJD', @level2type=N'COLUMN',@level2name=N'XSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A04_DSZDSXSJD', @level2type=N'COLUMN',@level2name=N'TJSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʦ�ƻ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A11_DSZHD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A11_DSZHD', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A11_DSZHD', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A11_DSZHD', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʦID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A11_DSZHD', @level2type=N'COLUMN',@level2name=N'DSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A11_DSZHD', @level2type=N'COLUMN',@level2name=N'HDMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A11_DSZHD', @level2type=N'COLUMN',@level2name=N'HDNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʼʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A11_DSZHD', @level2type=N'COLUMN',@level2name=N'KSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A11_DSZHD', @level2type=N'COLUMN',@level2name=N'JSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A11_DSZHD', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʦ��ѧ������ּ�¼��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A12_DSZXSHDBXJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A12_DSZXSHDBXJL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A12_DSZXSHDBXJL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A12_DSZXSHDBXJL', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A12_DSZXSHDBXJL', @level2type=N'COLUMN',@level2name=N'HDID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A12_DSZXSHDBXJL', @level2type=N'COLUMN',@level2name=N'XSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʦID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A12_DSZXSHDBXJL', @level2type=N'COLUMN',@level2name=N'DSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A12_DSZXSHDBXJL', @level2type=N'COLUMN',@level2name=N'JTBX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A12_DSZXSHDBXJL', @level2type=N'COLUMN',@level2name=N'PJNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A12_DSZXSHDBXJL', @level2type=N'COLUMN',@level2name=N'TJSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʦ��ѧ��ְ���α�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A14_DSZXSZWDR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A14_DSZXSZWDR', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A14_DSZXSZWDR', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A14_DSZXSZWDR', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A14_DSZXSZWDR', @level2type=N'COLUMN',@level2name=N'XSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʦID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A14_DSZXSZWDR', @level2type=N'COLUMN',@level2name=N'DSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ְ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A14_DSZXSZWDR', @level2type=N'COLUMN',@level2name=N'ZWMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʼʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A14_DSZXSZWDR', @level2type=N'COLUMN',@level2name=N'KSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A14_DSZXSZWDR', @level2type=N'COLUMN',@level2name=N'JSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A14_DSZXSZWDR', @level2type=N'COLUMN',@level2name=N'TJSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A14_DSZXSZWDR', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʦ��ѧ�����ͼ�¼��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A15_DSZXSJCJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A15_DSZXSJCJL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A15_DSZXSJCJL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A15_DSZXSJCJL', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A15_DSZXSJCJL', @level2type=N'COLUMN',@level2name=N'XSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʦID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A15_DSZXSJCJL', @level2type=N'COLUMN',@level2name=N'DSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A15_DSZXSJCJL', @level2type=N'COLUMN',@level2name=N'JCLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A15_DSZXSJCJL', @level2type=N'COLUMN',@level2name=N'JCNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A15_DSZXSJCJL', @level2type=N'COLUMN',@level2name=N'TJSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A15_DSZXSJCJL', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʦ��ѧ����ټ�¼��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A16_DSZXSQJJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A16_DSZXSQJJL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A16_DSZXSQJJL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A16_DSZXSQJJL', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A16_DSZXSQJJL', @level2type=N'COLUMN',@level2name=N'XSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʦID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A16_DSZXSQJJL', @level2type=N'COLUMN',@level2name=N'DSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A16_DSZXSQJJL', @level2type=N'COLUMN',@level2name=N'QJLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A16_DSZXSQJJL', @level2type=N'COLUMN',@level2name=N'QJNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A16_DSZXSQJJL', @level2type=N'COLUMN',@level2name=N'TJSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A16_DSZXSQJJL', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʦ��ѧ��ѧ��С���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A17_DSZXSXQXJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A17_DSZXSXQXJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A17_DSZXSXQXJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A17_DSZXSXQXJ', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A17_DSZXSXQXJ', @level2type=N'COLUMN',@level2name=N'XSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʦID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A17_DSZXSXQXJ', @level2type=N'COLUMN',@level2name=N'DSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A17_DSZXSXQXJ', @level2type=N'COLUMN',@level2name=N'NR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ȵ�ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A17_DSZXSXQXJ', @level2type=N'COLUMN',@level2name=N'DDID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A17_DSZXSXQXJ', @level2type=N'COLUMN',@level2name=N'TJSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A17_DSZXSXQXJ', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʦ��ѧ���ȵڱ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A18_DSZXSDD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A18_DSZXSDD', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A18_DSZXSDD', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ȵ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A18_DSZXSDD', @level2type=N'COLUMN',@level2name=N'DDMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����˳��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A18_DSZXSDD', @level2type=N'COLUMN',@level2name=N'PLSX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʦ��ѧ�����ҹ滮��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A21_DSZXSZWGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A21_DSZXSZWGH', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A21_DSZXSZWGH', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A21_DSZXSZWGH', @level2type=N'COLUMN',@level2name=N'XSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����Ŀ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A21_DSZXSZWGH', @level2type=N'COLUMN',@level2name=N'RSMB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'δ��ʮ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A21_DSZXSZWGH', @level2type=N'COLUMN',@level2name=N'WLSNDW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ҹ���Ȥ��ְҵ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A21_DSZXSZWGH', @level2type=N'COLUMN',@level2name=N'WGXQDZY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������ĳ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A21_DSZXSZWGH', @level2type=N'COLUMN',@level2name=N'WXWDCS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A21_DSZXSZWGH', @level2type=N'COLUMN',@level2name=N'TJSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʦ��ѧ��ѧ�ڹ滮�ܽ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A22_DSZXSXQGHZJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A22_DSZXSXQGHZJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A22_DSZXSXQGHZJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A22_DSZXSXQGHZJ', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A22_DSZXSXQGHZJ', @level2type=N'COLUMN',@level2name=N'XSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧҵˮƽ����Ŀ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A22_DSZXSXQGHZJ', @level2type=N'COLUMN',@level2name=N'XYSPCSMB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Լ������ռ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A22_DSZXSXQGHZJ', @level2type=N'COLUMN',@level2name=N'ZJTSKJZY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ѧ�ڵ�Ŭ��Ŀ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A22_DSZXSXQGHZJ', @level2type=N'COLUMN',@level2name=N'BXQDNLMB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ�ڻ���Ϣ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A22_DSZXSXQGHZJ', @level2type=N'COLUMN',@level2name=N'XQHJXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ӡ�������У԰�Ļ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A22_DSZXSXQGHZJ', @level2type=N'COLUMN',@level2name=N'YXZSDXYWHHD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ع˱�ѧ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A22_DSZXSXQGHZJ', @level2type=N'COLUMN',@level2name=N'HGBXQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʦ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A22_DSZXSXQGHZJ', @level2type=N'COLUMN',@level2name=N'DSJY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ټƻ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A22_DSZXSXQGHZJ', @level2type=N'COLUMN',@level2name=N'SJJH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A22_DSZXSXQGHZJ', @level2type=N'COLUMN',@level2name=N'TJSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʦ��ѧ��ѧ��ÿ�¹滮��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A23_DSZXSXQMYGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A23_DSZXSXQMYGH', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧУ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A23_DSZXSXQMYGH', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A23_DSZXSXQMYGH', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�·�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A23_DSZXSXQMYGH', @level2type=N'COLUMN',@level2name=N'YF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧ��ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A23_DSZXSXQMYGH', @level2type=N'COLUMN',@level2name=N'XSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����Ŀ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A23_DSZXSXQMYGH', @level2type=N'COLUMN',@level2name=N'BYMB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ѧϰ�ջ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A23_DSZXSXQMYGH', @level2type=N'COLUMN',@level2name=N'BYXXSH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'У԰��ջ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A23_DSZXSXQMYGH', @level2type=N'COLUMN',@level2name=N'XYHDSH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������Щ���������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A23_DSZXSXQMYGH', @level2type=N'COLUMN',@level2name=N'ZLNXYYYDS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������Щ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A23_DSZXSXQMYGH', @level2type=N'COLUMN',@level2name=N'DLNXS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ж�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A23_DSZXSXQMYGH', @level2type=N'COLUMN',@level2name=N'GDDS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXS_57_A23_DSZXSXQMYGH', @level2type=N'COLUMN',@level2name=N'TJSJ'
GO
