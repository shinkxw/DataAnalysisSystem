--�ռ�����STAnalyzer  ��������SqlBuilder0.1
--ͨ��ͨѶ���������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCTB0101]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCTB0101](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[YZBM]  [nvarchar(6)]  NULL,--�������� ��ţ�JCTB010101 
	[TXDZ]  [nvarchar(180)]  NULL,--ͨ�ŵ�ַ ��ţ�JCTB010102 ����/������ָ����ʡ����������ֱϽ�У�/�أ��С��ݣ�/�أ������죩/�磨��/�֣��壩/���ƺŵ���ϸ��ַ 
	[DH]  [nvarchar(30)]  NULL,--�绰 ��ţ�JCTB010103 ����/���������绰���� 
	[YDDH]  [nvarchar(30)]  NULL,--�ƶ��绰 ��ţ�JCTB010104 
	[CZDH]  [nvarchar(30)]  NULL,--����绰 ��ţ�JCTB010105 
	[DZXX]  [nvarchar(40)]  NULL,--�������� ��ţ�JCTB010106 ����/�����������ʼ���ַ 
	[WLDZ]  [nvarchar(60)]  NULL,--�����ַ ��ţ�JCTB010107 ����/����������ҳ�����͡�΢����ַ 
	[JSTXH]  [nvarchar(40)]  NULL,--��ʱͨѶ�� ��ţ�JCTB010108 ����/��������MSN/QQ�Ⱥ��� 
CONSTRAINT [PK_JCTB0101] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--ͨ��ʱ�����������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCTB0102]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCTB0102](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[ND]  [nvarchar(4)]  NULL,--��ȣ���ݡ��꣩ ��ţ�JCTB010201 ֵ�ռ䣺GB/T7408 ����/��������ʽ��YYYY���磺2008 
	[NY]  [nvarchar(6)]  NULL,--���� ��ţ�JCTB010202 ֵ�ռ䣺GB/T7408 ����/��������ʽ��YYYYMM���磺200604��ʾ2006��4�� 
	[RQ]  [nvarchar(8)]  NULL,--���� ��ţ�JCTB010203 ֵ�ռ䣺GB/T7408 ����/��������ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� 
	[SJ]  [nvarchar(6)]  NULL,--ʱ�� ��ţ�JCTB010204 ֵ�ռ䣺GB/T7408 ����/��������ʽ��hhmmss���磺141503��ʾ����2ʱ15��3�� 
	[XN]  [nvarchar(9)]  NULL,--ѧ�꣨�ȣ� ��ţ�JCTB010205 ����/��������ʽ��YYYY-YYYY���磺2001-2002 
	[XQM]  [nvarchar(1)]  NULL,--ѧ���� ��ţ�JCTB010206 ֵ�ռ䣺JY/T1001XQѧ�ڴ��� 
	[YXQ]  [nvarchar(17)]  NULL,--��Ч�� ��ţ�JCTB010207 ����/��������ʽ��YYYYMMDD-YYYYMMDD 
CONSTRAINT [PK_JCTB0102] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--��λ�������������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCTB0103]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCTB0103](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[DWH]  [nvarchar(10)]  NULL,--��λ�� ��ţ�JCTB010301 ����/���������б��� 
	[DWMC]  [nvarchar(60)]  NULL,--��λ���� ��ţ�JCTB010302 
	[DWYWMC]  [nvarchar(180)]  NULL,--��λӢ������ ��ţ�JCTB010303 
	[DWJC]  [nvarchar(12)]  NULL,--��λ��� ��ţ�JCTB010304 
	[DWYWJC]  [nvarchar(8)]  NULL,--��λӢ�ļ�� ��ţ�JCTB010305 
	[DWJP]  [nvarchar(6)]  NULL,--��λ��ƴ ��ţ�JCTB010306 
	[DWDZ]  [nvarchar(180)]  NULL,--��λ��ַ ��ţ�JCTB010307 ������JCTB010102 TXDZ ͨ�ŵ�ַ C 180 NULL NULL ָ����ʡ����������ֱϽ�У�/�أ��С��ݣ�/�أ������죩/�磨��/�֣��壩/���ƺŵ���ϸ��ַ NULL
	[LSDWH]  [nvarchar(10)]  NULL,--������λ�� ��ţ�JCTB010308 ������JCTB010301 DWH ��λ�� C 10 NULL NULL ���б��� NULL
	[DWLBM]  [nvarchar(1)]  NULL,--��λ����� ��ţ�JCTB010309 ֵ�ռ䣺JY/T1001DWLB��λ������ 
	[DWBBM]  [nvarchar(1)]  NULL,--��λ����� ��ţ�JCTB010310 ֵ�ռ䣺JY/T1001DWBB��λ������ 
	[DWYXBS]  [nvarchar(1)]  NULL,--��λ��Ч��ʶ ��ţ�JCTB010311 ֵ�ռ䣺JY/T1001SFBZ�Ƿ��־���� ����/������1��(��Ч)0��(ʧЧ) 
	[SXRQ]  [nvarchar(8)]  NULL,--ʧЧ���� ��ţ�JCTB010312 ����/������ָ��λʧЧ���� ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[SFST]  [nvarchar(1)]  NULL,--�Ƿ�ʵ�� ��ţ�JCTB010313 ֵ�ռ䣺JY/T1001SFBZ�Ƿ��־���� ����/������1��0�񣨼����壩 
	[JLNY]  [nvarchar(6)]  NULL,--�������� ��ţ�JCTB010314 ����/��������ʽ��YYYYMMָ��λ������������� ������JCTB010202 NY ���� C 6 NULL GB/T7408 ��ʽ��YYYYMM���磺200604��ʾ2006��4�� NULL
	[DWFZRH]  [nvarchar(20)]  NULL,--��λ�����˺� ��ţ�JCTB010315 ����/��������λ�����˹��� ������JCTB020120 RYH ��Ա�� C 20 NULL NULL ѧ�Ż򹤺� NULL
CONSTRAINT [PK_JCTB0103] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--ͨ�ý�ѧ���������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCTB0104]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCTB0104](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[NJ]  [nvarchar(10)]  NULL,--�꼶 ��ţ�JCTB010401 
	[XZ]  [decimal(3,1)]  NULL,--ѧ�� ��ţ�JCTB010402 ����/����������Ϊ��λ 
	[KCH]  [nvarchar(10)]  NULL,--�γ̺� ��ţ�JCTB010403 ����/������ѧУ�Ա� 
	[KCMC]  [nvarchar(60)]  NULL,--�γ����� ��ţ�JCTB010404 
	[KCYWMC]  [nvarchar(180)]  NULL,--�γ�Ӣ������ ��ţ�JCTB010405 
	[KSFSM]  [nvarchar(1)]  NULL,--���Է�ʽ�� ��ţ�JCTB010406 ֵ�ռ䣺JY/T1001KSFS���Է�ʽ���� 
	[ZYM]  [nvarchar(6)]  NULL,--רҵ�� ��ţ�JCTB010407 ֵ�ռ䣺ѧλ������˲�����ѧ��Ŀ¼רҵѧλ������˲�����Ŀ¼��ͨ�ߵ�ѧУ����רҵĿ¼��ͨ�ߵ�ѧУ��ְ��ר����ָ����רҵĿ¼�����У��е�ְҵѧУרҵĿ¼ 
	[ZYMC]  [nvarchar(60)]  NULL,--רҵ���� ��ţ�JCTB010408 
CONSTRAINT [PK_JCTB0104] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--��Ա�������������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCTB0201]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCTB0201](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[XM]  [nvarchar(36)]  NULL,--���� ��ţ�JCTB020101 ����/�������������񻪣������ᡤ����������ľ 
	[YWXM]  [nvarchar(60)]  NULL,--Ӣ������ ��ţ�JCTB020102 ����/����������ChristopherFrancisPatten 
	[XMPY]  [nvarchar(60)]  NULL,--����ƴ�� ��ţ�JCTB020103 ����/����������ZHANGZhenhua�� 
	[CYM]  [nvarchar(36)]  NULL,--������ ��ţ�JCTB020104 ����/������ָ������ʽʹ�ù������� 
	[XBM]  [nvarchar(1)]  NULL,--�Ա��� ��ţ�JCTB020105 ֵ�ռ䣺GB/T2261.1 
	[CSRQ]  [nvarchar(8)]  NULL,--�������� ��ţ�JCTB020106 ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[CSDM]  [nvarchar(6)]  NULL,--�������� ��ţ�JCTB020107 ֵ�ռ䣺GB/T2260 
	[JG]  [nvarchar(20)]  NULL,--���� ��ţ�JCTB020108 
	[MZM]  [nvarchar(2)]  NULL,--������ ��ţ�JCTB020109 ֵ�ռ䣺GB/T3304 ����/������ȡ��2λ���ִ��룬�磺01���壬02�ɹ��� 
	[GJDQM]  [nvarchar(3)]  NULL,--����/������ ��ţ�JCTB020110 ֵ�ռ䣺GB/T2659 ����/��������������ĸ���룬�磺CHN�й���USA���� 
	[SFZJLXM]  [nvarchar(1)]  NULL,--���֤�������� ��ţ�JCTB020111 ֵ�ռ䣺JY/T1001SFZJLX���֤�����ʹ��� 
	[SFZJH]  [nvarchar(20)]  NULL,--���֤���� ��ţ�JCTB020112 ����/�������磺������ݺ��� 
	[HYZKM]  [nvarchar(2)]  NULL,--����״���� ��ţ�JCTB020113 ֵ�ռ䣺GB/T2261.2 
	[GATQWM]  [nvarchar(2)]  NULL,--�۰�̨������ ��ţ�JCTB020114 ֵ�ռ䣺JY/T1001GATQW�۰�̨������� 
	[ZZMMM]  [nvarchar(2)]  NULL,--������ò�� ��ţ�JCTB020115 ֵ�ռ䣺GB/T4762 ����/�������ɲ��ü�ƣ��磺01�й���Ա��04����Ա 
	[JKZKM]  [nvarchar(1)]  NULL,--����״���� ��ţ�JCTB020116 ֵ�ռ䣺GB/T2261.3 ����/����������1λ���ִ��� 
	[XYZJM]  [nvarchar(2)]  NULL,--�����ڽ��� ��ţ�JCTB020117 ֵ�ռ䣺GA214.12 
	[XXM]  [nvarchar(1)]  NULL,--Ѫ���� ��ţ�JCTB020118 ֵ�ռ䣺JY/T1001XXѪ�ʹ��� 
	[ZP]  [nvarchar(200)]  NULL,--��Ƭ ��ţ�JCTB020119 ����/�����������������֤����Ƭ 
	[RYH]  [nvarchar(20)]  NULL,--��Ա�� ��ţ�JCTB020120 ����/������ѧ�Ż򹤺� 
	[SFZJYXQ]  [nvarchar(17)]  NULL,--���֤����Ч�� ��ţ�JCTB020121 ������JCTB010207 YXQ ��Ч�� C 17 NULL NULL ��ʽ��YYYYMMDD-YYYYMMDD NULL
	[SFDSZN]  [nvarchar(1)]  NULL,--�Ƿ������Ů ��ţ�JCTB020122 ֵ�ռ䣺JY/T1001SFBZ�Ƿ��־���� ����/������1�Ƕ�����Ů0���Ƕ�����Ů 
CONSTRAINT [PK_JCTB0201] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--ѧϰ�������������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCTB0202]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCTB0202](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[XXQSRQ]  [nvarchar(8)]  NOT NULL,--ѧϰ��ʼ���� ��ţ�JCTB020201 ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[XXZZRQ]  [nvarchar(8)]  NOT NULL,--ѧϰ��ֹ���� ��ţ�JCTB020202 ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[XXDW]  [nvarchar(60)]  NOT NULL,--ѧϰ��λ ��ţ�JCTB020203 ����/������ѧϰ��λ���� ������JCTB010302 DWMC ��λ���� C 60 NULL NULL NULL NULL
	[XXNR]  [nvarchar(80)]  NULL,--ѧϰ���� ��ţ�JCTB020204 
	[SXZYMC]  [nvarchar(60)]  NULL,--��ѧרҵ���� ��ţ�JCTB020205 ������JCTB010408 ZYMC רҵ���� C 60 NULL NULL NULL NULL
	[SHXWM]  [nvarchar(3)]  NULL,--����ѧλ�� ��ţ�JCTB020206 ֵ�ռ䣺GB/T6864 
	[XXZMR]  [nvarchar(36)]  NULL,--ѧϰ֤���� ��ţ�JCTB020207 ����/�������ܹ�֤�����˸ý׶�ѧϰ��������Ա���� ������JCTB020101 XM ���� C 36 NULL NULL �������񻪣������ᡤ����������ľ NULL
	[XXJLBZ]  [text]  NULL,--ѧϰ������ע ��ţ�JCTB020208 ����/������������صĲ������� 
CONSTRAINT [PK_JCTB0202] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[XXQSRQ] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--�����������������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCTB0203]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCTB0203](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[GZQSRQ]  [nvarchar(8)]  NOT NULL,--������ʼ���� ��ţ�JCTB020301 ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[GZZZRQ]  [nvarchar(8)]  NOT NULL,--������ֹ���� ��ţ�JCTB020302 ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[GZDW]  [nvarchar(60)]  NOT NULL,--������λ ��ţ�JCTB020303 ����/���������ڵ�λ���� ������JCTB010302 DWMC ��λ���� C 60 NULL NULL NULL NULL
	[GZNR]  [nvarchar(80)]  NULL,--�������� ��ţ�JCTB020304 
	[CRDZZW]  [nvarchar(40)]  NULL,--���ε���ְ�� ��ţ�JCTB020305 
	[CRZYJSZWM]  [nvarchar(3)]  NULL,--����רҵ����ְ���� ��ţ�JCTB020306 ֵ�ռ䣺GB/T8561 ����/����������011���� 
	[GZZMR]  [nvarchar(36)]  NULL,--����֤���� ��ţ�JCTB020307 ����/�������ܹ�֤�����˸ý׶ι�����������Ա���� ������JCTB020101 XM ���� C 36 NULL NULL �������񻪣������ᡤ����������ľ NULL
	[GZJLBZ]  [text]  NULL,--����������ע ��ţ�JCTB020308 ����/������������صĲ������� 
CONSTRAINT [PK_JCTB0203] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[GZQSRQ] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--������ò���������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCTB0204]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCTB0204](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[ZZMMM]  [nvarchar(2)]  NOT NULL,--������ò�� ��ţ�JCTB020115 ������JCTB020115 ZZMMM ������ò�� C 2 NULL GB/T4762 �ɲ��ü�ƣ��磺01�й���Ա��04����Ա NULL
	[CJRQ]  [nvarchar(8)]  NOT NULL,--�μ����� ��ţ�JCTB020401 ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[CJSZDW]  [nvarchar(60)]  NULL,--�μ����ڵ�λ ��ţ�JCTB020402 ����/�������μӵ���ʱ���ڵ�λ ������JCTB010302 DWMC ��λ���� C 60 NULL NULL NULL NULL
	[JSR]  [nvarchar(36)]  NULL,--������ ��ţ�JCTB020403 ����/���������������� ������JCTB020101 XM ���� C 36 NULL NULL �������񻪣������ᡤ����������ľ NULL
	[ZZRQ]  [nvarchar(8)]  NULL,--ת������ ��ţ�JCTB020404 ����/������ָ���ոõ����³̹涨��׼��ת������ ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[YCLBM]  [nvarchar(2)]  NULL,--�쳣����� ��ţ�JCTB020405 ֵ�ռ䣺GB/T14946.1��2009��¼A.17 
	[YCYY]  [nvarchar(80)]  NULL,--�쳣ԭ�� ��ţ�JCTB020406 ����/�������쳣��ԭ��˵�� 
	[YCRQ]  [nvarchar(8)]  NULL,--�쳣���� ��ţ�JCTB020407 ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[ZRRQ]  [nvarchar(8)]  NULL,--ת������ ��ţ�JCTB020408 ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[ZRQDW]  [nvarchar(60)]  NULL,--ת��ǰ��λ ��ţ�JCTB020409 ������JCTB010302 DWMC ��λ���� C 60 NULL NULL NULL NULL
	[ZCRQ]  [nvarchar(8)]  NULL,--ת������ ��ţ�JCTB020410 ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[ZCDW]  [nvarchar(60)]  NULL,--ת����λ ��ţ�JCTB020411 ����/������ת���󵽵ĵ�λ�� ������JCTB010302 DWMC ��λ���� C 60 NULL NULL NULL NULL
CONSTRAINT [PK_JCTB0204] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[ZZMMM] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--ѧ��ѧλ���������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCTB0205]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCTB0205](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[RXNY]  [nvarchar(6)]  NOT NULL,--��ѧ���� ��ţ�JCTB020501 ������JCTB010202 NY ���� C 6 NULL GB/T7408 ��ʽ��YYYYMM���磺200604��ʾ2006��4�� NULL
	[XZ]  [decimal(3,1)]  NOT NULL,--ѧ�� ��ţ�JCTB010402 ������JCTB010402 XZ ѧ�� N 31 NULL NULL ����Ϊ��λ NULL
	[XXFSM]  [nvarchar(1)]  NOT NULL,--ѧϰ��ʽ�� ��ţ�JCTB020502 ֵ�ռ䣺GB/T14946.1��2009��¼A.25 
	[XXXSM]  [nvarchar(2)]  NULL,--ѧϰ��ʽ�� ��ţ�JCTB020503 ֵ�ռ䣺GB/T14946.1��2009��¼A.3 
	[XLM]  [nvarchar(2)]  NOT NULL,--ѧ���� ��ţ�JCTB020504 ֵ�ռ䣺GB/T4658 
	[SXZYM]  [nvarchar(6)]  NULL,--��ѧרҵ�� ��ţ�JCTB020505 ����/������ȡ��ѧ����ѧϰ��רҵ�� ������JCTB010407 ZYM רҵ�� C 6 NULL ѧλ������˲�����ѧ��Ŀ¼רҵѧλ������˲�����Ŀ¼��ͨ�ߵ�ѧУ����רҵĿ¼��ͨ�ߵ�ѧУ��ְ��ר����ָ����רҵĿ¼�����У��е�ְҵѧУרҵĿ¼ NULL NULL
	[JSXYNY]  [nvarchar(6)]  NOT NULL,--����ѧҵ���� ��ţ�JCTB020506 ������JCTB010202 NY ���� C 6 NULL GB/T7408 ��ʽ��YYYYMM���磺200604��ʾ2006��4�� NULL
	[BYYXXHDW]  [nvarchar(60)]  NOT NULL,--����ҵѧУ��λ ��ţ�JCTB020507 ����/����������ѧ�����������֤��ı���ҵѧУ����е�λ���� ������JCTB010302 DWMC ��λ���� C 60 NULL NULL NULL NULL
	[XLZSH]  [nvarchar(20)]  NULL,--ѧ��֤��� ��ţ�JCTB020508 
	[HDXWM]  [nvarchar(3)]  NULL,--���ѧλ�� ��ţ�JCTB020509 ֵ�ռ䣺GB/T6864 
	[SXWDWMC]  [nvarchar(60)]  NULL,--��ѧλ��λ���� ��ţ�JCTB020510 ����/�������䷢ѧλ֤��ĵ�λ���� ������JCTB010302 DWMC ��λ���� C 60 NULL NULL NULL NULL
	[SXWGJDQM]  [nvarchar(3)]  NULL,--��ѧλ����/������ ��ţ�JCTB020511 ֵ�ռ䣺GB/T2659 
	[HXWZYM]  [nvarchar(6)]  NULL,--��ѧλרҵ�� ��ţ�JCTB020512 ����/������ȡ��ѧ����ѧϰ��רҵ�� ������JCTB010407 ZYM רҵ�� C 6 NULL ѧλ������˲�����ѧ��Ŀ¼רҵѧλ������˲�����Ŀ¼��ͨ�ߵ�ѧУ����רҵĿ¼��ͨ�ߵ�ѧУ��ְ��ר����ָ����רҵĿ¼�����У��е�ְҵѧУרҵĿ¼ NULL NULL
	[HXWRQ]  [nvarchar(8)]  NULL,--��ѧλ���� ��ţ�JCTB020513 ����/��������ѧλ֤���ǩ������Ϊ׼ ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[XWZSH]  [nvarchar(20)]  NULL,--ѧλ֤��� ��ţ�JCTB020514 
CONSTRAINT [PK_JCTB0205] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[RXNY] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--��ͥͨѶ��ʽ���������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCTB0206]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCTB0206](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[JTZZ]  [nvarchar(180)]  NOT NULL,--��ͥסַ ��ţ�JCTB020601 ������JCTB010102 TXDZ ͨ�ŵ�ַ C 180 NULL NULL ָ����ʡ����������ֱϽ�У�/�أ��С��ݣ�/�أ������죩/�磨��/�֣��壩/���ƺŵ���ϸ��ַ NULL
	[JTYZBM]  [nvarchar(6)]  NULL,--��ͥ�������� ��ţ�JCTB020602 ������JCTB010101 YZBM �������� C 6 NULL NULL NULL NULL
	[JTDH]  [nvarchar(30)]  NULL,--��ͥ�绰 ��ţ�JCTB020603 ������JCTB010103 DH �绰 C 30 NULL NULL ���绰���� NULL
	[JTDZXX]  [nvarchar(40)]  NULL,--��ͥ�������� ��ţ�JCTB020604 ������JCTB010106 DZXX �������� C 40 NULL NULL �����ʼ���ַ NULL
CONSTRAINT [PK_JCTB0206] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[JTZZ] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--��ͥ��Ա���������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCTB0207]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCTB0207](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[GXM]  [nvarchar(2)]  NOT NULL,--��ϵ�� ��ţ�JCTB020701 
	[CYXM]  [nvarchar(36)]  NOT NULL,--��Ա���� ��ţ�JCTB020702 ������JCTB020101 XM ���� C 36 NULL NULL �������񻪣������ᡤ����������ľ NULL
	[CSNY]  [nvarchar(6)]  NULL,--�������� ��ţ�JCTB020703 ������JCTB010202 NY ���� C 6 NULL GB/T7408 ��ʽ��YYYYMM���磺200604��ʾ2006��4�� NULL
	[MZM]  [nvarchar(2)]  NULL,--������ ��ţ�JCTB020109 ������JCTB020109 MZM ������ C 2 NULL GB/T3304 ȡ��2λ���ִ��룬�磺01���壬02�ɹ��� NULL
	[GJDQM]  [nvarchar(3)]  NULL,--����/������ ��ţ�JCTB020110 ������JCTB020110 GJDQM ����/������ C 3 NULL GB/T2659 ��������ĸ���룬�磺CHN�й���USA���� NULL
	[JKZKM]  [nvarchar(1)]  NULL,--����״���� ��ţ�JCTB020116 ������JCTB020116 JKZKM ����״���� C 1 NULL GB/T2261.3 ����1λ���ִ��� NULL
	[CYGZDW]  [nvarchar(60)]  NULL,--��Ա������λ ��ţ�JCTB020704 ����/��������ͥ��Ա�����ĵ�λ���� ������JCTB010302 DWMC ��λ���� C 60 NULL NULL NULL NULL
	[CYEM]  [nvarchar(2)]  NULL,--��ҵ�� ��ţ�JCTB020705 ֵ�ռ䣺GB/T2261.4 
	[ZYJSZWM]  [nvarchar(3)]  NULL,--רҵ����ְ���� ��ţ�JCTB020706 ֵ�ռ䣺GB/T8561 
	[ZWJBM]  [nvarchar(2)]  NULL,--ְ�񼶱��� ��ţ�JCTB020707 ֵ�ռ䣺GB/T12407 
	[DH]  [nvarchar(30)]  NULL,--�绰 ��ţ�JCTB010103 ������JCTB010103 DH �绰 C 30 NULL NULL ���绰���� NULL
	[DZXX]  [nvarchar(40)]  NULL,--�������� ��ţ�JCTB010106 ������JCTB010106 DZXX �������� C 40 NULL NULL �����ʼ���ַ NULL
CONSTRAINT [PK_JCTB0207] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[GXM] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--��ϵ�����������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCTB0208]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCTB0208](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[GXM]  [nvarchar(2)]  NOT NULL,--��ϵ�� ��ţ�JCTB020701 ������JCTB020701 GXM ��ϵ�� C 2 M NULL NULL NULL
	[LXRXM]  [nvarchar(36)]  NOT NULL,--��ϵ������ ��ţ�JCTB020801 ������JCTB020101 XM ���� C 36 NULL NULL �������񻪣������ᡤ����������ľ NULL
	[YZBM]  [nvarchar(6)]  NULL,--�������� ��ţ�JCTB010101 ������JCTB010101 YZBM �������� C 6 NULL NULL NULL NULL
	[TXDZ]  [nvarchar(180)]  NULL,--ͨ�ŵ�ַ ��ţ�JCTB010102 ������JCTB010102 TXDZ ͨ�ŵ�ַ C 180 NULL NULL ָ����ʡ����������ֱϽ�У�/�أ��С��ݣ�/�أ������죩/�磨��/�֣��壩/���ƺŵ���ϸ��ַ NULL
	[DH]  [nvarchar(30)]  NOT NULL,--�绰 ��ţ�JCTB010103 ������JCTB010103 DH �绰 C 30 NULL NULL ���绰���� NULL
	[YDDH]  [nvarchar(30)]  NULL,--�ƶ��绰 ��ţ�JCTB010104 ������JCTB010104 YDDH �ƶ��绰 C 30 NULL NULL NULL NULL
	[CZDH]  [nvarchar(30)]  NULL,--����绰 ��ţ�JCTB010105 ������JCTB010105 CZDH ����绰 C 30 NULL NULL NULL NULL
	[DZXX]  [nvarchar(40)]  NULL,--�������� ��ţ�JCTB010106 ������JCTB010106 DZXX �������� C 40 NULL NULL �����ʼ���ַ NULL
	[WLDZ]  [nvarchar(60)]  NULL,--�����ַ ��ţ�JCTB010107 ������JCTB010107 WLDZ �����ַ C 60 NULL NULL ����ҳ�����͡�΢����ַ NULL
	[JSTXH]  [nvarchar(40)]  NULL,--��ʱͨѶ�� ��ţ�JCTB010108 ������JCTB010108 JSTXH ��ʱͨѶ�� C 40 NULL NULL ��MSN/QQ�Ⱥ��� NULL
CONSTRAINT [PK_JCTB0208] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[GXM] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--��ͥ����������������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCTB0209]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCTB0209](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[JTRK]  [decimal(2)]  NULL,--��ͥ�˿� ��ţ�JCTB020901 ����/������ָ���˼�ͥ�����˿��� 
	[SYRK]  [decimal(2)]  NULL,--�����˿� ��ţ�JCTB020902 ����/������ָ����(��ͥ)�����ϸ����������˿��� 
	[LDLRK]  [decimal(2)]  NULL,--�Ͷ����˿� ��ţ�JCTB020903 ����/������ָ��ͥ�Ͷ����˿��� 
	[JTRJYSR]  [money]  NOT NULL,--��ͥ�˾������� ��ţ�JCTB020904 ����/��������ͥ�¾������� 
	[JTZYSRLY]  [nvarchar(100)]  NOT NULL,--��ͥ��Ҫ������Դ ��ţ�JCTB020905 ����/��������ͥ��Ҫ������Դ 
	[JTLBM]  [nvarchar(1)]  NULL,--��ͥ����� ��ţ�JCTB020906 ֵ�ռ䣺JY/T1001JTLB��ͥ������ 
	[KNYYM]  [nvarchar(1)]  NULL,--����ԭ���� ��ţ�JCTB020907 ֵ�ռ䣺JY/T1001KNYY����ԭ����� 
	[KNCDM]  [nvarchar(2)]  NULL,--���ѳ̶��� ��ţ�JCTB020908 ֵ�ռ䣺JY/T1001KNCD���ѳ̶ȴ��� 
	[SFDB]  [nvarchar(1)]  NULL,--�Ƿ�ͱ� ��ţ�JCTB020909 ֵ�ռ䣺JY/T1001SFBZ�Ƿ��־���� 
	[RXQHKLBM]  [nvarchar(1)]  NULL,--��ѧǰ��������� ��ţ�JCTB020910 ֵ�ռ䣺GA324.1 
	[JXDDBX]  [money]  NULL,--��ѧ�صͱ��� ��ţ�JCTB020911 ����/��������λ��Ԫ/�� 
CONSTRAINT [PK_JCTB0209] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--ѧУ�������������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCXX0101]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCXX0101](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[XXDM]  [nvarchar(10)]  NOT NULL,--ѧУ���� ��ţ�JCXX010101 ֵ�ռ䣺ѧУ����������ʶ�� 
	[XXMC]  [nvarchar(60)]  NOT NULL,--ѧУ���� ��ţ�JCXX010102 ����/��������׼�������ƣ��빫��һ�� ������JCTB010302 DWMC ��λ���� C 60 NULL NULL NULL NULL
	[XXYWMC]  [nvarchar(180)]  NULL,--ѧУӢ������ ��ţ�JCXX010103 ������JCTB010303 DWYWMC ��λӢ������ C 180 NULL NULL NULL NULL
	[XXDZ]  [nvarchar(180)]  NOT NULL,--ѧУ��ַ ��ţ�JCXX010104 ����/��������ϸ�����ƺ� ������JCTB010102 TXDZ ͨ�ŵ�ַ C 180 NULL NULL ָ����ʡ����������ֱϽ�У�/�أ��С��ݣ�/�أ������죩/�磨��/�֣��壩/���ƺŵ���ϸ��ַ NULL
	[XXYZBM]  [nvarchar(6)]  NOT NULL,--ѧУ�������� ��ţ�JCXX010105 ������JCTB010101 YZBM �������� C 6 NULL NULL NULL NULL
	[XZQHM]  [nvarchar(6)]  NOT NULL,--���������� ��ţ�JCXX010106 ֵ�ռ䣺GB/T2260 ����/������ѧУ���ڵ����������� 
	[JXNY]  [nvarchar(6)]  NOT NULL,--��У���� ��ţ�JCXX010107 ������JCTB010202 NY ���� C 6 NULL GB/T7408 ��ʽ��YYYYMM���磺200604��ʾ2006��4�� NULL
	[XQR]  [nvarchar(60)]  NULL,--У���� ��ţ�JCXX010108 ����/������ָѧУ��У���ջ�У���ʱ��� 
	[XXBXLXM]  [nvarchar(3)]  NOT NULL,--ѧУ��ѧ������ ��ţ�JCXX010109 ֵ�ռ䣺JY/T1001BXLX��ѧ���ʹ��� 
	[XXJBZM]  [nvarchar(3)]  NOT NULL,--ѧУ�ٰ����� ��ţ�JCXX010110 ֵ�ռ䣺JY/T1001XXJYJGJBZѧУ�������������ٰ��ߴ��� 
	[XXZGBMM]  [nvarchar(3)]  NOT NULL,--ѧУ���ܲ����� ��ţ�JCXX010111 ֵ�ռ䣺JY/T1001XXJYJGJBZѧУ�������������ٰ��ߴ��� 
	[FDDBRH]  [nvarchar(20)]  NULL,--���������˺� ��ţ�JCXX010112 ����/���������������˵Ĺ��� ������JCTB020120 RYH ��Ա�� C 20 NULL NULL ѧ�Ż򹤺� NULL
	[FRZSH]  [nvarchar(20)]  NOT NULL,--����֤��� ��ţ�JCXX010113 
	[XZGH]  [nvarchar(20)]  NULL,--У������ ��ţ�JCXX010114 ������JCTB020120 RYH ��Ա�� C 20 NULL NULL ѧ�Ż򹤺� NULL
	[XZXM]  [nvarchar(36)]  NOT NULL,--У������ ��ţ�JCXX010115 ������JCTB020101 XM ���� C 36 NULL NULL �������񻪣������ᡤ����������ľ NULL
	[DWFZRH]  [nvarchar(20)]  NULL,--��ί�����˺� ��ţ�JCXX010116 ����/������ѧУ�й�����֯�����˵Ĺ��� ������JCTB020120 RYH ��Ա�� C 20 NULL NULL ѧ�Ż򹤺� NULL
	[ZZJGM]  [nvarchar(10)]  NULL,--��֯������ ��ţ�JCXX010117 ����/������ѧУ��֯��������(�л����񹲺͹���ҵ���˴���)���ɰ�λ��������һλУ������� 
	[LXDH]  [nvarchar(30)]  NOT NULL,--��ϵ�绰 ��ţ�JCXX010118 ������JCTB010103 DH �绰 C 30 NULL NULL ���绰���� NULL
	[CZDH]  [nvarchar(30)]  NOT NULL,--����绰 ��ţ�JCXX010119 ������JCTB010105 CZDH ����绰 C 30 NULL NULL NULL NULL
	[DZXX]  [nvarchar(40)]  NOT NULL,--�������� ��ţ�JCXX010120 ������JCTB010106 DZXX �������� C 40 NULL NULL �����ʼ���ַ NULL
	[ZYDZ]  [nvarchar(60)]  NULL,--��ҳ��ַ ��ţ�JCXX010121 ������JCTB010107 WLDZ �����ַ C 60 NULL NULL ����ҳ�����͡�΢����ַ NULL
	[LSYG]  [text]  NULL,--��ʷ�ظ� ��ţ�JCXX010122 ����/������ָѧУ��չ�����е��ش�仯���¼� 
CONSTRAINT [PK_JCXX0101] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[XXDM] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--У���������������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCXX0102]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCXX0102](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[XQH]  [nvarchar(2)]  NOT NULL,--У���� ��ţ�JCXX010201 ����/������ѧУ�Ա� 
	[XQMC]  [nvarchar(30)]  NOT NULL,--У������ ��ţ�JCXX010202 
	[XQDZ]  [nvarchar(180)]  NULL,--У����ַ ��ţ�JCXX010203 ������JCTB010102 TXDZ ͨ�ŵ�ַ C 180 NULL NULL ָ����ʡ����������ֱϽ�У�/�أ��С��ݣ�/�أ������죩/�磨��/�֣��壩/���ƺŵ���ϸ��ַ NULL
	[XQYZBM]  [nvarchar(6)]  NOT NULL,--У���������� ��ţ�JCXX010204 ������JCTB010101 YZBM �������� C 6 NULL NULL NULL NULL
	[XQLXDH]  [nvarchar(30)]  NOT NULL,--У����ϵ�绰 ��ţ�JCXX010205 ������JCTB010103 DH �绰 C 30 NULL NULL ���绰���� NULL
	[XQCZDH]  [nvarchar(30)]  NULL,--У������绰 ��ţ�JCXX010206 ������JCTB010105 CZDH ����绰 C 30 NULL NULL NULL NULL
	[XQFZRH]  [nvarchar(20)]  NULL,--У�������˺� ��ţ�JCXX010207 ����/������У�������˵Ĺ��� ������JCTB020120 RYH ��Ա�� C 20 NULL NULL ѧ�Ż򹤺� NULL
CONSTRAINT [PK_JCXX0102] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[XQH] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--�༶�������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCXX02]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCXX02](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[BH]  [nvarchar(10)]  NOT NULL,--��� ��ţ�JCXX020001 ����/������ѧУ�Ա� 
	[BJMC]  [nvarchar(20)]  NOT NULL,--�༶���� ��ţ�JCXX020002 ����/������ѧУ�Ա� 
	[JBNY]  [nvarchar(6)]  NULL,--�������� ��ţ�JCXX020003 ������JCTB010202 NY ���� C 6 NULL GB/T7408 ��ʽ��YYYYMM���磺200604��ʾ2006��4�� NULL
	[SSNJ]  [nvarchar(10)]  NULL,--�����꼶 ��ţ�JCXX020004 ������JCTB010401 NJ �꼶 C 10 NULL NULL NULL NULL
	[BZRGH]  [nvarchar(20)]  NULL,--�����ι��� ��ţ�JCXX020005 ������JCTB020120 RYH ��Ա�� C 20 NULL NULL ѧ�Ż򹤺� NULL
	[BZXH]  [nvarchar(20)]  NULL,--�೤ѧ�� ��ţ�JCXX020006 ������JCTB020120 RYH ��Ա�� C 20 NULL NULL ѧ�Ż򹤺� NULL
CONSTRAINT [PK_JCXX02] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[BH] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--ѧ���������������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCXS0101]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCXS0101](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[XH]  [nvarchar(20)]  NOT NULL,--ѧ�� ��ţ�JCXS010101 ����/������ѧУ�Ա� ������JCTB020120 RYH ��Ա�� C 20 NULL NULL ѧ�Ż򹤺� NULL
	[XM]  [nvarchar(36)]  NOT NULL,--���� ��ţ�JCTB020101 ������JCTB020101 XM ���� C 36 NULL NULL �������񻪣������ᡤ����������ľ NULL
	[YWXM]  [nvarchar(60)]  NULL,--Ӣ������ ��ţ�JCTB020102 ������JCTB020102 YWXM Ӣ������ C 60 NULL NULL ����ChristopherFrancisPatten NULL
	[XMPY]  [nvarchar(60)]  NULL,--����ƴ�� ��ţ�JCTB020103 ������JCTB020103 XMPY ����ƴ�� C 60 NULL NULL ����ZHANGZhenhua�� NULL
	[CYM]  [nvarchar(36)]  NULL,--������ ��ţ�JCTB020104 ������JCTB020104 CYM ������ C 36 NULL NULL ָ������ʽʹ�ù������� NULL
	[XBM]  [nvarchar(1)]  NOT NULL,--�Ա��� ��ţ�JCTB020105 ������JCTB020105 XBM �Ա��� C 1 NULL GB/T2261.1 NULL NULL
	[CSRQ]  [nvarchar(8)]  NOT NULL,--�������� ��ţ�JCTB020106 ������JCTB020106 CSRQ �������� C 8 NULL NULL NULL JCTB010203
	[CSDM]  [nvarchar(6)]  NOT NULL,--�������� ��ţ�JCTB020107 ������JCTB020107 CSDM �������� C 6 NULL GB/T2260 NULL NULL
	[JG]  [nvarchar(20)]  NULL,--���� ��ţ�JCTB020108 ������JCTB020108 JG ���� C 20 NULL NULL NULL NULL
	[MZM]  [nvarchar(2)]  NULL,--������ ��ţ�JCTB020109 ������JCTB020109 MZM ������ C 2 NULL GB/T3304 ȡ��2λ���ִ��룬�磺01���壬02�ɹ��� NULL
	[GJDQM]  [nvarchar(3)]  NOT NULL,--����/������ ��ţ�JCTB020110 ������JCTB020110 GJDQM ����/������ C 3 NULL GB/T2659 ��������ĸ���룬�磺CHN�й���USA���� NULL
	[SFZJLXM]  [nvarchar(1)]  NULL,--���֤�������� ��ţ�JCTB020111 ������JCTB020111 SFZJLXM ���֤�������� C 1 NULL JY/T1001SFZJLX���֤�����ʹ��� NULL NULL
	[SFZJH]  [nvarchar(20)]  NULL,--���֤���� ��ţ�JCTB020112 ������JCTB020112 SFZJH ���֤���� C 20 NULL NULL �磺������ݺ��� NULL
	[HYZKM]  [nvarchar(2)]  NULL,--����״���� ��ţ�JCTB020113 ������JCTB020113 HYZKM ����״���� C 2 NULL GB/T2261.2 NULL NULL
	[GATQWM]  [nvarchar(2)]  NULL,--�۰�̨������ ��ţ�JCTB020114 ������JCTB020114 GATQWM �۰�̨������ C 2 NULL JY/T1001GATQW�۰�̨������� NULL NULL
	[ZZMMM]  [nvarchar(2)]  NOT NULL,--������ò�� ��ţ�JCTB020115 ������JCTB020115 ZZMMM ������ò�� C 2 NULL GB/T4762 �ɲ��ü�ƣ��磺01�й���Ա��04����Ա NULL
	[JKZKM]  [nvarchar(1)]  NOT NULL,--����״���� ��ţ�JCTB020116 ������JCTB020116 JKZKM ����״���� C 1 NULL GB/T2261.3 ����1λ���ִ��� NULL
	[XYZJM]  [nvarchar(2)]  NULL,--�����ڽ��� ��ţ�JCTB020117 ������JCTB020117 XYZJM �����ڽ��� C 2 NULL GA214.12 NULL NULL
	[XXM]  [nvarchar(1)]  NULL,--Ѫ���� ��ţ�JCTB020118 ������JCTB020118 XXM Ѫ���� C 1 NULL JY/T1001XXѪ�ʹ��� NULL NULL
	[ZP]  [nvarchar(200)]  NULL,--��Ƭ ��ţ�JCTB020119 ������JCTB020119 ZP ��Ƭ B NULL NULL NULL �����������֤����Ƭ NULL
	[SFZJYXQ]  [nvarchar(17)]  NULL,--���֤����Ч�� ��ţ�JCTB020121 ������JCTB020121 SFZJYXQ ���֤����Ч�� C 17 NULL NULL NULL JCTB010207
	[SFDSZN]  [nvarchar(1)]  NULL,--�Ƿ������Ů ��ţ�JCTB020122 ������JCTB020122 SFDSZN �Ƿ������Ů C 1 NULL JY/T1001SFBZ�Ƿ��־���� 1�Ƕ�����Ů0���Ƕ�����Ů NULL
CONSTRAINT [PK_JCXS0101] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[XH] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--ѧ����Դ���������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCXS0110]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCXS0110](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[YXXMC]  [nvarchar(60)]  NULL,--ԭѧУ���� ��ţ�JCXS011001 ����/��������ѧǰ����ѧУ���� ������JCTB010302 DWMC ��λ���� C 60 NULL NULL NULL NULL
	[YXH]  [nvarchar(20)]  NULL,--ԭѧ�� ��ţ�JCXS011002 ������JCTB020120 RYH ��Ա�� C 20 NULL NULL ѧ�Ż򹤺� NULL
	[RXFSM]  [nvarchar(2)]  NOT NULL,--��ѧ��ʽ�� ��ţ�JCXS011003 ֵ�ռ䣺JY/T1001RXFS��ѧ��ʽ����JY/T1001YJSRXFS�о�����ѧ��ʽ���� 
	[LYDQM]  [nvarchar(6)]  NOT NULL,--��Դ������ ��ţ�JCXS011004 ֵ�ռ䣺GB/T2260 
	[XSLYM]  [nvarchar(3)]  NOT NULL,--ѧ����Դ�� ��ţ�JCXS011005 ֵ�ռ䣺JY/T1001XSLYѧ����Դ����JY/T1001ZXXXSLY��Сѧѧ����Դ���� 
	[JDFSM]  [nvarchar(1)]  NOT NULL,--�Ͷ���ʽ�� ��ţ�JCXS011006 ֵ�ռ䣺JY/T1001JDFS�Ͷ���ʽ���� 
CONSTRAINT [PK_JCXS0110] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--ѧ���������������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCXS0201]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCXS0201](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[RXNY]  [nvarchar(6)]  NOT NULL,--��ѧ���� ��ţ�JCXS020101 ������JCTB010202 NY ���� C 6 NULL GB/T7408 ��ʽ��YYYYMM���磺200604��ʾ2006��4�� NULL
	[XSLBM]  [nvarchar(5)]  NOT NULL,--ѧ������� ��ţ�JCXS020102 ֵ�ռ䣺JY/T1001XSLBѧ�������� 
	[XZ]  [decimal(3,1)]  NOT NULL,--ѧ�� ��ţ�JCTB010402 ������JCTB010402 XZ ѧ�� N 31 NULL NULL ����Ϊ��λ NULL
	[ZYM]  [nvarchar(6)]  NULL,--רҵ�� ��ţ�JCTB010407 ������JCTB010407 ZYM רҵ�� C 6 NULL ѧλ������˲�����ѧ��Ŀ¼רҵѧλ������˲�����Ŀ¼��ͨ�ߵ�ѧУ����רҵĿ¼��ͨ�ߵ�ѧУ��ְ��ר����ָ����רҵĿ¼�����У��е�ְҵѧУרҵĿ¼ NULL NULL
	[SZBH]  [nvarchar(10)]  NULL,--���ڰ�� ��ţ�JCXS020103 ������JCXX020001 BH ��� C 10 M NULL ѧУ�Ա� NULL
	[SZNJ]  [nvarchar(10)]  NULL,--�����꼶 ��ţ�JCXS020104 ������JCTB010401 NJ �꼶 C 10 NULL NULL NULL NULL
	[XSDQZTM]  [nvarchar(2)]  NOT NULL,--ѧ����ǰ״̬�� ��ţ�JCXS020105 ֵ�ռ䣺JY/T1001XSDQZTѧ����ǰ״̬���� 
CONSTRAINT [PK_JCXS0201] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[RXNY] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--ѧ���춯���������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCXS0202]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCXS0202](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[YDLBM]  [nvarchar(2)]  NOT NULL,--�춯����� ��ţ�JCXS020201 ֵ�ռ䣺JY/T1001XJYDLBѧ���춯������ 
	[YDRQ]  [nvarchar(8)]  NOT NULL,--�춯���� ��ţ�JCXS020202 ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[YDYYM]  [nvarchar(2)]  NOT NULL,--�춯ԭ���� ��ţ�JCXS020203 ֵ�ռ䣺JY/T1001XJYDYYѧ���춯ԭ����� 
	[SPRQ]  [nvarchar(8)]  NULL,--�������� ��ţ�JCXS020204 ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[SPWH]  [nvarchar(24)]  NULL,--�����ĺ� ��ţ�JCXS020205 ����/��������������ʽ�ĺţ�����ʽ�ĺŲ��� 
	[YDLYXXM]  [nvarchar(10)]  NULL,--�춯��ԴѧУ�� ��ţ�JCXS020206 ������JCXX010101 XXDM ѧУ���� C 10 M ѧУ����������ʶ�� NULL NULL
	[YDQXXXM]  [nvarchar(10)]  NULL,--�춯ȥ��ѧУ�� ��ţ�JCXS020207 ������JCXX010101 XXDM ѧУ���� C 10 M ѧУ����������ʶ�� NULL NULL
	[YDSM]  [text]  NULL,--�춯˵�� ��ţ�JCXS020208 
	[YYXSH]  [nvarchar(10)]  NULL,--ԭԺϵ���� ��ţ�JCXS020209 ������JCTB010301 DWH ��λ�� C 10 NULL NULL ���б��� NULL
	[YZYM]  [nvarchar(6)]  NULL,--ԭרҵ�� ��ţ�JCXS020210 ������JCTB010407 ZYM רҵ�� C 6 NULL ѧλ������˲�����ѧ��Ŀ¼רҵѧλ������˲�����Ŀ¼��ͨ�ߵ�ѧУ����רҵĿ¼��ͨ�ߵ�ѧУ��ְ��ר����ָ����רҵĿ¼�����У��е�ְҵѧУרҵĿ¼ NULL NULL
	[YBH]  [nvarchar(10)]  NULL,--ԭ��� ��ţ�JCXS020211 ������JCXX020001 BH ��� C 10 M NULL ѧУ�Ա� NULL
	[YNJ]  [nvarchar(10)]  NULL,--ԭ�꼶 ��ţ�JCXS020212 ������JCTB010401 NJ �꼶 C 10 NULL NULL NULL NULL
	[YXZ]  [decimal(3,1)]  NULL,--ԭѧ�� ��ţ�JCXS020213 ������JCTB010402 XZ ѧ�� N 31 NULL NULL ����Ϊ��λ NULL
	[XYXSH]  [nvarchar(10)]  NULL,--��Ժϵ���� ��ţ�JCXS020214 ������JCTB010301 DWH ��λ�� C 10 NULL NULL ���б��� NULL
	[XZYM]  [nvarchar(6)]  NULL,--��רҵ�� ��ţ�JCXS020215 ������JCTB010407 ZYM רҵ�� C 6 NULL ѧλ������˲�����ѧ��Ŀ¼רҵѧλ������˲�����Ŀ¼��ͨ�ߵ�ѧУ����רҵĿ¼��ͨ�ߵ�ѧУ��ְ��ר����ָ����רҵĿ¼�����У��е�ְҵѧУרҵĿ¼ NULL NULL
	[XBH]  [nvarchar(10)]  NULL,--�ְ�� ��ţ�JCXS020216 ������JCXX020001 BH ��� C 10 M NULL ѧУ�Ա� NULL
	[XNJ]  [nvarchar(10)]  NULL,--���꼶 ��ţ�JCXS020217 ������JCTB010401 NJ �꼶 C 10 NULL NULL NULL NULL
	[XXZ]  [decimal(3,1)]  NULL,--��ѧ�� ��ţ�JCXS020218 ������JCTB010402 XZ ѧ�� N 31 NULL NULL ����Ϊ��λ NULL
CONSTRAINT [PK_JCXS0202] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[YDLBM] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--�ɼ����������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCXS0203]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCXS0203](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[XN]  [nvarchar(9)]  NOT NULL,--ѧ�꣨�ȣ� ��ţ�JCTB010205 ������JCTB010205 XN ѧ�꣨�ȣ� C 9 NULL NULL ��ʽ��YYYY-YYYY���磺2001-2002 NULL
	[XQM]  [nvarchar(1)]  NOT NULL,--ѧ���� ��ţ�JCTB010206 ������JCTB010206 XQM ѧ���� C 1 NULL JY/T1001XQѧ�ڴ��� NULL NULL
	[KSRQ]  [nvarchar(8)]  NOT NULL,--�������� ��ţ�JCXS020301 ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[KCH]  [nvarchar(10)]  NOT NULL,--�γ̺� ��ţ�JCTB010403 ������JCTB010403 KCH �γ̺� C 10 NULL NULL ѧУ�Ա� NULL
	[PSCJ]  [decimal(5,1)]  NULL,--ƽʱ�ɼ� ��ţ�JCXS020302 
	[KSFSM]  [nvarchar(1)]  NULL,--���Է�ʽ�� ��ţ�JCTB010406 ������JCTB010406 KSFSM ���Է�ʽ�� C 1 NULL JY/T1001KSFS���Է�ʽ���� NULL NULL
	[KSXZM]  [nvarchar(2)]  NULL,--���������� ��ţ�JCXS020303 ֵ�ռ䣺JY/T1001KSXZ�������ʴ��� 
	[KSXSM]  [nvarchar(1)]  NULL,--������ʽ�� ��ţ�JCXS020304 ֵ�ռ䣺JY/T1001KSXS������ʽ���� 
	[FSLKSCJ]  [decimal(5,1)]  NULL,--�����࿼�Գɼ� ��ţ�JCXS020305 
	[DJLKSCJ]  [nvarchar(1)]  NULL,--�ȼ��࿼�Գɼ� ��ţ�JCXS020306 ����/������ѧУ�Ա� 
	[KCCJ]  [decimal(5,1)]  NOT NULL,--�γ̳ɼ� ��ţ�JCXS020307 ����/������ָ�γ��ۺϳɼ� 
	[KCDJCJM]  [nvarchar(1)]  NULL,--�γ̵ȼ��ɼ��� ��ţ�JCXS020308 ����/������ѧУ�Ա� 
	[RKJSGH]  [nvarchar(20)]  NULL,--�ον�ʦ���� ��ţ�JCXS020309 ������JCTB020120 RYH ��Ա�� C 20 NULL NULL ѧ�Ż򹤺� NULL
	[CJLRRH]  [nvarchar(20)]  NULL,--�ɼ�¼���˺� ��ţ�JCXS020310 ����/������¼���˵Ĺ��� ������JCTB020120 RYH ��Ա�� C 20 NULL NULL ѧ�Ż򹤺� NULL
	[CJLRRQ]  [nvarchar(8)]  NULL,--�ɼ�¼������ ��ţ�JCXS020311 ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[CJLRSJ]  [nvarchar(6)]  NULL,--�ɼ�¼��ʱ�� ��ţ�JCXS020312 ������JCTB010204 SJ ʱ�� C 6 NULL GB/T7408 ��ʽ��hhmmss���磺141503��ʾ����2ʱ15��3�� NULL
CONSTRAINT [PK_JCXS0203] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[XN] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--�������������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCXS0204]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCXS0204](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[JLMC]  [nvarchar(60)]  NOT NULL,--�������� ��ţ�JCXS020401 
	[JLJBM]  [nvarchar(2)]  NOT NULL,--���������� ��ţ�JCXS020402 ֵ�ռ䣺JY/T1001JB������� 
	[JLDJM]  [nvarchar(1)]  NOT NULL,--�����ȼ��� ��ţ�JCXS020403 ֵ�ռ䣺JY/T1001JLDJ�����ȼ����� 
	[HJLBM]  [nvarchar(1)]  NOT NULL,--������� ��ţ�JCXS020404 ֵ�ռ䣺JY/T1001XSHJLBѧ���������� 
	[JLYY]  [nvarchar(100)]  NULL,--����ԭ�� ��ţ�JCXS020405 
	[JLJE]  [money]  NULL,--������� ��ţ�JCXS020406 ����/��������λ��Ԫ 
	[JLWH]  [nvarchar(24)]  NULL,--�����ĺ� ��ţ�JCXS020407 ����/������ָ�񽱵���ʽ�ĺţ�����ʽ�ĺŲ��� 
	[JLXND]  [nvarchar(9)]  NOT NULL,--����ѧ��� ��ţ�JCXS020408 ������JCTB010205 XN ѧ�꣨�ȣ� C 9 NULL NULL ��ʽ��YYYY-YYYY���磺2001-2002 NULL
	[BJDW]  [nvarchar(60)]  NOT NULL,--�佱��λ ��ţ�JCXS020409 ����/���������轱���ĵ�λ���� ������JCTB010302 DWMC ��λ���� C 60 NULL NULL NULL NULL
	[JLLXM]  [nvarchar(1)]  NULL,--���������� ��ţ�JCXS020410 ֵ�ռ䣺JY/T1001HJLX�����ʹ��� 
	[JLFSM]  [nvarchar(1)]  NULL,--������ʽ�� ��ţ�JCXS020411 ֵ�ռ䣺JY/T1001JLFS������ʽ���� 
CONSTRAINT [PK_JCXS0204] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[JLMC] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--�ʹ����������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCXS0205]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCXS0205](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[WJRQ]  [nvarchar(8)]  NULL,--Υ������ ��ţ�JCXS020501 ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[WJJK]  [nvarchar(100)]  NULL,--Υ�ͼ�� ��ţ�JCXS020502 
	[WJLBM]  [nvarchar(2)]  NOT NULL,--Υ������� ��ţ�JCXS020503 ֵ�ռ䣺JY/T1001WJLBΥ�������� 
	[CFMCM]  [nvarchar(1)]  NOT NULL,--���������� ��ţ�JCXS020504 ֵ�ռ䣺JY/T1001CFMC�������ƴ��� 
	[CFYY]  [nvarchar(100)]  NULL,--����ԭ�� ��ţ�JCXS020505 
	[CFRQ]  [nvarchar(8)]  NULL,--�������� ��ţ�JCXS020506 ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[CFWH]  [nvarchar(24)]  NULL,--�����ĺ� ��ţ�JCXS020507 ����/���������ֵ���ʽ�ĺţ�����ʽ�ĺŲ��� 
	[CFCXRQ]  [nvarchar(8)]  NULL,--���ֳ������� ��ţ�JCXS020508 ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[CFCXWH]  [nvarchar(24)]  NULL,--���ֳ����ĺ� ��ţ�JCXS020509 ����/��������������ʽ�ĺţ�����ʽ�ĺŲ��� 
CONSTRAINT [PK_JCXS0205] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--��ҵ���������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCXS0301]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCXS0301](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[JSXYNY]  [nvarchar(6)]  NOT NULL,--����ѧҵ���� ��ţ�JCXS030101 ������JCTB010202 NY ���� C 6 NULL GB/T7408 ��ʽ��YYYYMM���磺200604��ʾ2006��4�� NULL
	[JSXYM]  [nvarchar(1)]  NOT NULL,--����ѧҵ�� ��ţ�JCXS030102 ֵ�ռ䣺GB/T14946.1��2009��¼A.27 
	[JSXYYYSM]  [nvarchar(100)]  NULL,--����ѧҵԭ��˵�� ��ţ�JCXS030103 
	[BYZSH]  [nvarchar(20)]  NULL,--��ҵ֤��� ��ţ�JCXS030104 ������JCTB020508 XLZSH ѧ��֤��� C 20 O NULL NULL NULL
	[XWZSH]  [nvarchar(20)]  NULL,--ѧλ֤��� ��ţ�JCXS030105 ������JCTB020514 XWZSH ѧλ֤��� C 20 O NULL NULL NULL
	[JYZSH]  [nvarchar(20)]  NULL,--��ҵ֤��� ��ţ�JCXS030106 
	[HBYZSRQ]  [nvarchar(8)]  NULL,--���ҵ֤������ ��ţ�JCXS030107 ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[HXWZSRQ]  [nvarchar(8)]  NULL,--��ѧλ֤������ ��ţ�JCXS030108 ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[HJYZSRQ]  [nvarchar(8)]  NULL,--���ҵ֤������ ��ţ�JCXS030109 ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
CONSTRAINT [PK_JCXS0301] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[JSXYNY] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--��ҵ���������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCXS0302]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCXS0302](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[XYSBH]  [nvarchar(10)]  NULL,--Э������ ��ţ�JCXS030201 ����/������ѧУ�Ա� 
	[XYQDRQ]  [nvarchar(8)]  NULL,--Э��ǩ������ ��ţ�JCXS030202 ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[XYNX]  [nvarchar(1)]  NULL,--Э������ ��ţ�JCXS030203 
	[BDRQ]  [nvarchar(8)]  NULL,--�������� ��ţ�JCXS030204 ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[JYLSFSM]  [nvarchar(1)]  NULL,--��ҵ��ʵ��ʽ�� ��ţ�JCXS030205 ֵ�ռ䣺JY/T1001JYLSFS��ҵ��ʵ��ʽ���� 
	[BYQXM]  [nvarchar(2)]  NOT NULL,--��ҵȥ���� ��ţ�JCXS030206 ֵ�ռ䣺JY/T1001BYQX��ҵȥ�����JY/T1001GXBYQX��У��ҵȥ����� ����/��������Сѧ����ְѧ������BYQX��ҵȥ����룬��У��ҵ������GXBYQX��У��ҵȥ����� 
	[JSDW]  [nvarchar(60)]  NOT NULL,--���յ�λ ��ţ�JCXS030207 ������JCTB010302 DWMC ��λ���� C 60 NULL NULL NULL NULL
	[DWSZDQHM]  [nvarchar(6)]  NULL,--��λ���ڵ������� ��ţ�JCXS030208 ֵ�ռ䣺GB/T2260 ����/���������յ�λ���ڵ������� 
	[DWZGBM]  [nvarchar(60)]  NULL,--��λ���ܲ��� ��ţ�JCXS030209 ������JCTB010302 DWMC ��λ���� C 60 NULL NULL NULL NULL
	[SHDWXZM]  [nvarchar(2)]  NULL,--��ᵥλ������ ��ţ�JCXS030210 ֵ�ռ䣺JY/T1001SHDWXZ��ᵥλ���ʴ��� 
	[DWJJXZM]  [nvarchar(3)]  NULL,--��λ���������� ��ţ�JCXS030211 ֵ�ռ䣺GB/T12402 
	[DWTGDDY]  [text]  NULL,--��λ�ṩ�Ĵ��� ��ţ�JCXS030212 
	[DAJSDZ]  [nvarchar(60)]  NULL,--�������յ�ַ ��ţ�JCXS030213 
	[JSDYZBM]  [nvarchar(6)]  NULL,--���յ��������� ��ţ�JCXS030214 ������JCTB010101 YZBM �������� C 6 NULL NULL NULL NULL
	[GZGWXZM]  [nvarchar(1)]  NULL,--������λ������ ��ţ�JCXS030215 ֵ�ռ䣺JY/T1001GZGWXZ������λ���ʴ��� 
	[DWHYM]  [nvarchar(4)]  NULL,--��λ��ҵ�� ��ţ�JCXS030216 ֵ�ռ䣺GB/T4754 
	[BDZH]  [nvarchar(11)]  NULL,--����֤�� ��ţ�JCXS030217 
	[YRDWYRXSM]  [nvarchar(2)]  NULL,--���˵�λ������ʽ�� ��ţ�JCXS030218 ֵ�ռ䣺GB/T16502 
	[PQF]  [money]  NULL,--��ǲ�� ��ţ�JCXS030219 
CONSTRAINT [PK_JCXS0302] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--��ְ���������������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCJG0101]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCJG0101](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[GH]  [nvarchar(20)]  NOT NULL,--���� ��ţ�JCJG010101 ������JCTB020120 RYH ��Ա�� C 20 NULL NULL ѧ�Ż򹤺� NULL
	[XM]  [nvarchar(36)]  NOT NULL,--���� ��ţ�JCTB020101 ������JCTB020101 XM ���� C 36 NULL NULL �������񻪣������ᡤ����������ľ NULL
	[YWXM]  [nvarchar(60)]  NULL,--Ӣ������ ��ţ�JCTB020102 ������JCTB020102 YWXM Ӣ������ C 60 NULL NULL ����ChristopherFrancisPatten NULL
	[XMPY]  [nvarchar(60)]  NULL,--����ƴ�� ��ţ�JCTB020103 ������JCTB020103 XMPY ����ƴ�� C 60 NULL NULL ����ZHANGZhenhua�� NULL
	[CYM]  [nvarchar(36)]  NULL,--������ ��ţ�JCTB020104 ������JCTB020104 CYM ������ C 36 NULL NULL ָ������ʽʹ�ù������� NULL
	[XBM]  [nvarchar(1)]  NOT NULL,--�Ա��� ��ţ�JCTB020105 ������JCTB020105 XBM �Ա��� C 1 NULL GB/T2261.1 NULL NULL
	[CSRQ]  [nvarchar(8)]  NOT NULL,--�������� ��ţ�JCTB020106 ������JCTB020106 CSRQ �������� C 8 NULL NULL NULL JCTB010203
	[CSDM]  [nvarchar(6)]  NOT NULL,--�������� ��ţ�JCTB020107 ������JCTB020107 CSDM �������� C 6 NULL GB/T2260 NULL NULL
	[JG]  [nvarchar(20)]  NULL,--���� ��ţ�JCTB020108 ������JCTB020108 JG ���� C 20 NULL NULL NULL NULL
	[MZM]  [nvarchar(2)]  NULL,--������ ��ţ�JCTB020109 ������JCTB020109 MZM ������ C 2 NULL GB/T3304 ȡ��2λ���ִ��룬�磺01���壬02�ɹ��� NULL
	[GJDQM]  [nvarchar(3)]  NOT NULL,--����/������ ��ţ�JCTB020110 ������JCTB020110 GJDQM ����/������ C 3 NULL GB/T2659 ��������ĸ���룬�磺CHN�й���USA���� NULL
	[SFZJLXM]  [nvarchar(1)]  NOT NULL,--���֤�������� ��ţ�JCTB020111 ������JCTB020111 SFZJLXM ���֤�������� C 1 NULL JY/T1001SFZJLX���֤�����ʹ��� NULL NULL
	[SFZJH]  [nvarchar(20)]  NOT NULL,--���֤���� ��ţ�JCTB020112 ������JCTB020112 SFZJH ���֤���� C 20 NULL NULL �磺������ݺ��� NULL
	[HYZKM]  [nvarchar(2)]  NULL,--����״���� ��ţ�JCTB020113 ������JCTB020113 HYZKM ����״���� C 2 NULL GB/T2261.2 NULL NULL
	[GATQWM]  [nvarchar(2)]  NULL,--�۰�̨������ ��ţ�JCTB020114 ������JCTB020114 GATQWM �۰�̨������ C 2 NULL JY/T1001GATQW�۰�̨������� NULL NULL
	[ZZMMM]  [nvarchar(2)]  NOT NULL,--������ò�� ��ţ�JCTB020115 ������JCTB020115 ZZMMM ������ò�� C 2 NULL GB/T4762 �ɲ��ü�ƣ��磺01�й���Ա��04����Ա NULL
	[JKZKM]  [nvarchar(1)]  NULL,--����״���� ��ţ�JCTB020116 ������JCTB020116 JKZKM ����״���� C 1 NULL GB/T2261.3 ����1λ���ִ��� NULL
	[XYZJM]  [nvarchar(2)]  NULL,--�����ڽ��� ��ţ�JCTB020117 ������JCTB020117 XYZJM �����ڽ��� C 2 NULL GA214.12 NULL NULL
	[XXM]  [nvarchar(1)]  NULL,--Ѫ���� ��ţ�JCTB020118 ������JCTB020118 XXM Ѫ���� C 1 NULL JY/T1001XXѪ�ʹ��� NULL NULL
	[ZP]  [nvarchar(200)]  NULL,--��Ƭ ��ţ�JCTB020119 ������JCTB020119 ZP ��Ƭ B NULL NULL NULL �����������֤����Ƭ NULL
	[SFZJYXQ]  [nvarchar(17)]  NULL,--���֤����Ч�� ��ţ�JCTB020121 ������JCTB020121 SFZJYXQ ���֤����Ч�� C 17 NULL NULL NULL JCTB010207
CONSTRAINT [PK_JCJG0101] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[GH] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--�������������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCJG0110]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCJG0110](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[HJXM]  [nvarchar(60)]  NULL,--����Ŀ ��ţ�JCJG011001 ����/��������ý�������Ŀ���� 
	[JLJBM]  [nvarchar(2)]  NOT NULL,--���������� ��ţ�JCJG011002 ֵ�ռ䣺JY/T1001JB������� 
	[JLDJM]  [nvarchar(1)]  NOT NULL,--�����ȼ��� ��ţ�JCJG011003 ֵ�ռ䣺JY/T1001JLDJ�����ȼ����� 
	[HJLBM]  [nvarchar(1)]  NULL,--������� ��ţ�JCJG011004 ֵ�ռ䣺JY/T1001JSHJLB��ʦ�������� 
	[JLFSM]  [nvarchar(1)]  NULL,--������ʽ�� ��ţ�JCJG011005 ֵ�ռ䣺JY/T1001JLFS������ʽ���� ����/�������������������ʽ�������ʽ 
	[JLMC]  [nvarchar(60)]  NOT NULL,--�������� ��ţ�JCJG011006 
	[JLMCM]  [nvarchar(4)]  NULL,--���������� ��ţ�JCJG011007 ֵ�ռ䣺GB/T8563.1 
	[HJYY]  [text]  NULL,--��ԭ�� ��ţ�JCJG011008 
	[JLNR]  [text]  NULL,--�������� ��ţ�JCJG011009 ����/��������ý����ľ����������� 
	[BJDW]  [nvarchar(60)]  NULL,--�佱��λ ��ţ�JCJG011010 ����/���������轱���ĵ�λ���� ������JCTB010302 DWMC ��λ���� C 60 NULL NULL NULL NULL
	[HJRQ]  [nvarchar(8)]  NULL,--������ ��ţ�JCJG011011 ����/�������䲼���������� ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[RYCHM]  [nvarchar(3)]  NULL,--�����ƺ��� ��ţ�JCJG011012 ֵ�ռ䣺GB/T8563.2 
	[HJJSM]  [nvarchar(3)]  NOT NULL,--�񽱽�ɫ�� ��ţ�JCJG011013 ֵ�ռ䣺JY/T1001JS��ɫ���� ����/�����������ڻ���Ŀ�еĽ�ɫ 
CONSTRAINT [PK_JCJG0110] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--�ʹ����������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCJG0111]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCJG0111](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[CCMC]  [nvarchar(20)]  NOT NULL,--�ʹ����� ��ţ�JCJG011101 ����/������ָ�ܵ����͹���ĳ����֯��˾���������Ÿ��账�ֵ����� 
	[JLCFM]  [nvarchar(2)]  NULL,--���ɴ����� ��ţ�JCJG011102 ֵ�ռ䣺GB/T8563.3 
	[CCYY]  [nvarchar(80)]  NULL,--�ʹ�ԭ�� ��ţ�JCJG011103 
	[CCNR]  [nvarchar(80)]  NULL,--�ʹ����� ��ţ�JCJG011104 ����/���������ְ����ľ������� 
	[CCDW]  [nvarchar(60)]  NOT NULL,--�ʹ���λ ��ţ�JCJG011105 ����/���������账�ֵ���֯�������� ������JCTB010302 DWMC ��λ���� C 60 NULL NULL NULL NULL
	[CCWH]  [nvarchar(24)]  NULL,--�ʹ��ĺ� ��ţ�JCJG011106 ����/���������账�ֵķ����ĺ� 
	[CCRQ]  [nvarchar(8)]  NOT NULL,--�ʹ����� ��ţ�JCJG011107 ����/���������账�ֵ����� ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[CCCXRQ]  [nvarchar(8)]  NOT NULL,--�ʹ��������� ��ţ�JCJG011108 ����/���������ֵĳ������� ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[CCCXWH]  [nvarchar(24)]  NULL,--�ʹ������ĺ� ��ţ�JCJG011109 ����/�������������ֵķ����ĺ� 
	[CCCXYY]  [nvarchar(80)]  NULL,--�ʹ�����ԭ�� ��ţ�JCJG011110 
CONSTRAINT [PK_JCJG0111] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[CCMC] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--�����������������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCJG0201]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCJG0201](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[WGYZM]  [nvarchar(2)]  NULL,--��������� ��ţ�JCJG020101 ֵ�ռ䣺GB/T4880.1 ����/����������enӢ�de���� 
	[WGYZSLCDM]  [nvarchar(1)]  NULL,--������������̶��� ��ţ�JCJG020102 ֵ�ռ䣺GB/T6865 
	[ZGYZM]  [nvarchar(3)]  NULL,--�й������� ��ţ�JCJG020103 ֵ�ռ䣺GB/T4881 ����/����������λ���ִ��� 
	[ZGYZSLCDM]  [nvarchar(1)]  NULL,--�й����������̶��� ��ţ�JCJG020104 ֵ�ռ䣺GB/T6865 
	[PTHSPDJM]  [nvarchar(30)]  NULL,--��ͨ��ˮƽ�ȼ��� ��ţ�JCJG020105 ֵ�ռ䣺JY/T1001PTHSPDJ��ͨ��ˮƽ�ȼ����� ����/�������μ���ͨ��ˮƽ�������ﵽ�ĵȼ� 
CONSTRAINT [PK_JCJG0201] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--רҵ����ְ�����������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCJG0202]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCJG0202](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[RZZGMCM]  [nvarchar(3)]  NULL,--��ְ�ʸ������� ��ţ�JCJG020201 ֵ�ռ䣺GB/T8561 ����/����������011���� 
	[QDZGTJM]  [nvarchar(1)]  NULL,--ȡ���ʸ�;���� ��ţ�JCJG020202 ֵ�ռ䣺GB/T14946.1��2009��¼A.11 ����/������ָͨ��רҵ����ְ����ְ�ʸ�����ίԱ�������μӹ���ͳһרҵ�����ʸ��� 
	[PSDW]  [nvarchar(60)]  NULL,--����λ ��ţ�JCJG020203 ����/������רҵ����ְ����ְ�ʸ�����ίԱ�������Ȩ����֯�������� ������JCTB010302 DWMC ��λ���� C 60 NULL NULL NULL NULL
	[PDRQ]  [nvarchar(8)]  NULL,--�������� ��ţ�JCJG020204 ����/��������רҵ����ְ����ְ�ʸ�����ίԱ�������μӹ���ͳһרҵ�����ʸ��Ժϸ��ȡ�õ�רҵ�����ʸ������ ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[PRZWM]  [nvarchar(3)]  NOT NULL,--Ƹ��ְ���� ��ţ�JCJG020205 ֵ�ռ䣺GB/T8561 ����/�������հ�Ϊδ���κ�רҵ����ְ�� 
	[PRDW]  [nvarchar(60)]  NULL,--Ƹ�ε�λ ��ţ�JCJG020206 ����/������Ƹ��רҵ����ְ��ľ��嵥λ���� ������JCTB010302 DWMC ��λ���� C 60 NULL NULL NULL NULL
	[PRQSRQ]  [nvarchar(8)]  NOT NULL,--Ƹ����ʼ���� ��ţ�JCJG020207 ����/������רҵ����ְ��Ƹ��֪ͨ��Ƹ�����϶���Ƹ�ο�ʼ���� ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[PRZZRQ]  [nvarchar(8)]  NOT NULL,--Ƹ����ֹ���� ��ţ�JCJG020208 ����/������רҵ����ְ��Ƹ��֪ͨ��Ƹ�����϶���Ƹ����ֹ���� ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[PRQKM]  [nvarchar(1)]  NULL,--Ƹ������� ��ţ�JCJG020209 ֵ�ռ䣺JY/T1001PRQKƸ��������� ����/��������ǰרҵ����ְ���Ƹ����� 
	[JPRQ]  [nvarchar(8)]  NULL,--��Ƹ���� ��ţ�JCJG020210 ����/������ָ�����������ֹƸ�ε����� ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[JPYY]  [nvarchar(80)]  NULL,--��Ƹԭ�� ��ţ�JCJG020211 ����/���������Ƹ��רҵ����ְ���ԭ�� 
CONSTRAINT [PK_JCJG0202] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--��λ֤�����������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCJG0203]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCJG0203](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[GWZSMC]  [nvarchar(40)]  NOT NULL,--��λ֤������ ��ţ�JCJG020301 ����/�������ɾ��и�λ�����ʸ�λ���˲���׼�ĸ�λ֤������ 
	[GWZSBH]  [nvarchar(20)]  NULL,--��λ֤���� ��ţ�JCJG020302 
	[BFDW]  [nvarchar(60)]  NOT NULL,--�䷢��λ ��ţ�JCJG020303 ����/��������׼��ǩ����λ֤�����֯�������� ������JCTB010302 DWMC ��λ���� C 60 NULL NULL NULL NULL
	[BFRQ]  [nvarchar(8)]  NULL,--�䷢���� ��ţ�JCJG020304 ����/��������׼��ǩ����λ֤������� ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
CONSTRAINT [PK_JCJG0203] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[GWZSMC] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--���˼����ȼ���ְ�����������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCJG0204]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCJG0204](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[GRJSDJM]  [nvarchar(1)]  NOT NULL,--���˼����ȼ��� ��ţ�JCJG020401 ֵ�ռ䣺GB/T14946.1��2009��¼A.13 ����/������ָ�����˼���������֯������ʽ��׼�򾭹���ͳһ��ְҵ���ܼ����������˺ϸ�ȡ�õļ����ȼ����� 
	[GRJSZWM]  [nvarchar(1)]  NULL,--���˼���ְ���� ��ţ�JCJG020402 ֵ�ռ䣺GB/T14946.1��2009��¼A.13 ����/������ָ��ʽƸ�εĹ��˼���ְ������ 
	[GRGZM]  [nvarchar(2)]  NULL,--���˹����� ��ţ�JCJG020403 ֵ�ռ䣺JY/T1001HYGZLB��ҵ���������� 
	[DJFZJG]  [nvarchar(60)]  NULL,--�ȼ���֤���� ��ţ�JCJG020404 ������JCTB010302 DWMC ��λ���� C 60 NULL NULL NULL NULL
	[DJPDRQ]  [nvarchar(8)]  NULL,--�ȼ��������� ��ţ�JCJG020405 ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
CONSTRAINT [PK_JCJG0204] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[GRJSDJM] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--����ְ�����������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCJG0205]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCJG0205](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[ZWMC]  [nvarchar(60)]  NOT NULL,--ְ������ ��ţ�JCJG020501 
	[ZWMCM]  [nvarchar(4)]  NULL,--ְ�������� ��ţ�JCJG020502 ֵ�ռ䣺GB/T12403 
	[ZWLBM]  [nvarchar(2)]  NULL,--ְ������� ��ţ�JCJG020503 ֵ�ռ䣺JY/T1001ZWLBְ�������� 
	[ZWFLM]  [nvarchar(4)]  NULL,--ְλ������ ��ţ�JCJG020504 ֵ�ռ䣺GB/T14946.1��2009��¼A.6 
	[ZWJBM]  [nvarchar(2)]  NOT NULL,--ְ�񼶱��� ��ţ�JCJG020505 ֵ�ռ䣺GB/T12407 
	[RZRQ]  [nvarchar(8)]  NOT NULL,--��ְ���� ��ţ�JCJG020506 ����/��������ĳ����ί�������������ؼ�����֯�����¹�������ʽ����֪ͨʱ�䣬����ĳ����������ᣨ���˴�ί�ᣩ��ĳ����Э�������������ѡ��ͨ��������ְ�����Ч���� ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[RZBM]  [nvarchar(60)]  NULL,--��ְ���� ��ţ�JCJG020507 
	[RZFSM]  [nvarchar(1)]  NULL,--��ְ��ʽ�� ��ţ�JCJG020508 ֵ�ռ䣺GB/T14946.1-2009��¼A.4 
	[RZYY]  [nvarchar(80)]  NULL,--��ְԭ�� ��ţ�JCJG020509 
	[RZWH]  [nvarchar(24)]  NULL,--��ְ�ĺ� ��ţ�JCJG020510 ����/���������ɲ�����Ȩ�ޣ���ĳ����ί�������������ؼ�����֯�����¹����š��˴�ί������������������䷢��ְ��������򹫸���ļ���� 
	[RZPZDW]  [nvarchar(60)]  NULL,--��ְ��׼��λ ��ţ�JCJG020511 ����/��������׼��ְ��ǩ����ְ֪ͨ����֯�������� ������JCTB010302 DWMC ��λ���� C 60 NULL NULL NULL NULL
	[ZWBDLBM]  [nvarchar(1)]  NULL,--ְ��䶯����� ��ţ�JCJG020512 ֵ�ռ䣺GB/T14946.1��2009��¼A.7 
	[DQRZZK]  [nvarchar(1)]  NOT NULL,--��ǰ��ְ״�� ��ţ�JCJG020513 ֵ�ռ䣺GB/T14946.1��2009��¼A.8 
	[ZWPX]  [nvarchar(2)]  NULL,--ְ������ ��ţ�JCJG020514 ����/������ָ�쵼�ɲ����쵼���������е�˳��� 
	[ZGHCSDGZ]  [nvarchar(40)]  NULL,--���ܻ���µĹ��� ��ţ�JCJG020515 
	[MZRQ]  [nvarchar(8)]  NULL,--��ְ���� ��ţ�JCJG020516 ����/���������ɲ�����Ȩ�ޣ���ĳ����ί�������������ؼ�����֯�����¹����š��˴�ί����������������׼��ȥְ����Ч���� ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[MZFSM]  [nvarchar(1)]  NULL,--��ְ��ʽ�� ��ţ�JCJG020517 ֵ�ռ䣺GB/T14946.1��2009��¼A.9 
	[MZYYM]  [nvarchar(2)]  NULL,--��ְԭ���� ��ţ�JCJG020518 ֵ�ռ䣺GB/T14946.1��2009��¼A.10 
	[MZWH]  [nvarchar(24)]  NULL,--��ְ�ĺ� ��ţ�JCJG020519 ����/���������ɲ�����Ȩ�ޣ���ĳ����ί�������������ؼ�����֯�����¹����š��˴�ί������������������䷢��ְ����ְ��򹫸���ļ���� 
	[MZPZDW]  [nvarchar(60)]  NULL,--��ְ��׼��λ ��ţ�JCJG020520 ����/��������׼��ְ��ǩ����ְ֪ͨ����֯�������� ������JCTB010302 DWMC ��λ���� C 60 NULL NULL NULL NULL
CONSTRAINT [PK_JCJG0205] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[ZWMC] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--����ְְ�����������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCJG0301]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCJG0301](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[SHJZM]  [nvarchar(4)]  NOT NULL,--����ְ�� ��ţ�JCJG030101 ֵ�ռ䣺GB/T12408 ����/������ָ�ؼ������˴���Э���������ɡ����ᡢ�����š���������������Э���й���ѧԺ���й�����ԺԺʿ�ļ�ְְ�� 
	[SHJZQSRQ]  [nvarchar(8)]  NOT NULL,--����ְ��ʼ���� ��ţ�JCJG030102 ����/��������ְְ����������׼���� ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[SHJZZZRQ]  [nvarchar(8)]  NULL,--����ְ��ֹ���� ��ţ�JCJG030103 ����/��������ְְ�����ֹ���� ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[SHJZCZYYM]  [nvarchar(1)]  NULL,--����ְ��ְԭ���� ��ţ�JCJG030104 ֵ�ռ䣺JY/T1001CQSHJZHXSTTZWYY��ȥ����ְ��ѧ������ְ��ԭ����� 
CONSTRAINT [PK_JCJG0301] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[SHJZM] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--ѧ�������ְ���������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCJG0302]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCJG0302](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[XSTTMC]  [nvarchar(60)]  NOT NULL,--ѧ���������� ��ţ�JCJG030201 ����/��������ְ��ѧ���������� 
	[XSTTJBM]  [nvarchar(1)]  NULL,--ѧ�����弶���� ��ţ�JCJG030202 ֵ�ռ䣺JY/T1001XSTTJBѧ�����弶����� 
	[XXTTLSHZGDW]  [nvarchar(60)]  NULL,--ѧ���������������ܵ�λ ��ţ�JCJG030203 ����/������ѧ���������������ܵ�λ������ ������JCTB010302 DWMC ��λ���� C 60 NULL NULL NULL NULL
	[XSJZZW]  [nvarchar(20)]  NOT NULL,--ѧ����ְְ�� ��ţ�JCJG030204 ����/������������ѧ�������ڼ��ε�ְ�� 
	[XSJZQSRQ]  [nvarchar(8)]  NULL,--ѧ����ְ��ʼ���� ��ţ�JCJG030205 ����/����������ְ�����׼���� ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[XSJZZZRQ]  [nvarchar(8)]  NULL,--ѧ����ְ��ֹ���� ��ţ�JCJG030206 ����/����������ְ�����ֹ���� ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[XSJZCZYYM]  [nvarchar(1)]  NULL,--ѧ����ְ��ְԭ���� ��ţ�JCJG030207 ֵ�ռ䣺JY/T1001CQSHJZHXSTTZWYY��ȥ����ְ��ѧ������ְ��ԭ����� 
CONSTRAINT [PK_JCJG0302] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[XSTTMC] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--���ڽ���ѧϰ���������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCJG0401]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCJG0401](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[JXXZM]  [nvarchar(1)]  NOT NULL,--���������� ��ţ�JCJG040101 ֵ�ռ䣺GB/T14946.1��2009��¼A.24 
	[XXFSM]  [nvarchar(1)]  NOT NULL,--ѧϰ��ʽ�� ��ţ�JCJG040102 ֵ�ռ䣺GB/T14946.1��2009��¼A.25 
	[XXQSNY]  [nvarchar(6)]  NOT NULL,--ѧϰ��ʼ���� ��ţ�JCJG040103 ������JCTB010202 NY ���� C 6 NULL GB/T7408 ��ʽ��YYYYMM���磺200604��ʾ2006��4�� NULL
	[XXZZNY]  [nvarchar(6)]  NULL,--ѧϰ��ֹ���� ��ţ�JCJG040104 ������JCTB010202 NY ���� C 6 NULL GB/T7408 ��ʽ��YYYYMM���磺200604��ʾ2006��4�� NULL
	[ZXS]  [decimal(3)]  NULL,--��ѧʱ ��ţ�JCJG040105 ����/������ָʵ��ѧϰ���ۼ�ʱ�� 
	[XXNR]  [nvarchar(80)]  NULL,--ѧϰ���� ��ţ�JCJG040106 
	[JXBMC]  [nvarchar(40)]  NOT NULL,--���ް����� ��ţ�JCJG040107 
	[ZBDW]  [nvarchar(60)]  NOT NULL,--���쵥λ ��ţ�JCJG040108 ����/�������������֯ѧϰ�ĵ�λ���� ������JCTB010302 DWMC ��λ���� C 60 NULL NULL NULL NULL
	[ZBDWXZM]  [nvarchar(1)]  NULL,--���쵥λ������ ��ţ�JCJG040109 ֵ�ռ䣺JY/T1001SHDWXZ��ᵥλ���ʴ��� 
	[ZXDW]  [nvarchar(60)]  NULL,--��ѧ��λ ��ţ�JCJG040110 ������JCTB010302 DWMC ��λ���� C 60 NULL NULL NULL NULL
	[ZXDWLBM]  [nvarchar(1)]  NULL,--��ѧ��λ����� ��ţ�JCJG040111 ֵ�ռ䣺GB/T14946.1��2009��¼A.26 
	[JXJGM]  [nvarchar(1)]  NULL,--���޽���� ��ţ�JCJG040112 ֵ�ռ䣺GB/T14946.1��2009��¼A.27 
CONSTRAINT [PK_JCJG0401] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[JXXZM] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--��������������ѧϰ���������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCJG0402]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCJG0402](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[CGRQ]  [nvarchar(8)]  NOT NULL,--�������������� ��ţ�JCJG040201 ����/�������������������� ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[CGMDM]  [nvarchar(3)]  NULL,--����������Ŀ���� ��ţ�JCJG040202 ֵ�ռ䣺JY/T1001CGMD����Ŀ�Ĵ��� 
	[CGGBM]  [nvarchar(3)]  NOT NULL,--���������������� ��ţ�JCJG040203 ֵ�ռ䣺GB/T2659 ����/������������ĸ������룬��CHN�й� 
	[SQDWYWMC]  [nvarchar(180)]  NOT NULL,--��ȥ��λӢ������ ��ţ�JCJG040204 ������JCTB010303 DWYWMC ��λӢ������ C 180 NULL NULL NULL NULL
	[SQDWZWMC]  [nvarchar(60)]  NULL,--��ȥ��λ�������� ��ţ�JCJG040205 ������JCTB010302 DWMC ��λ���� C 60 NULL NULL NULL NULL
	[PCDW]  [nvarchar(60)]  NULL,--�ɳ���λ ��ţ�JCJG040206 ����/��������ǲ���˳���������ѧϰ�������ĵ�λ���� ������JCTB010302 DWMC ��λ���� C 60 NULL NULL NULL NULL
	[TZMC]  [nvarchar(40)]  NULL,--�������� ��ţ�JCJG040207 ����/����������������������ѧϰ�ɳ�����ľ������� 
	[CGJFLYM]  [nvarchar(1)]  NULL,--����������������Դ�� ��ţ�JCJG040208 ֵ�ռ䣺GB/T14946.1��2009��¼A.28 
	[SPDW]  [nvarchar(60)]  NULL,--������λ ��ţ�JCJG040209 ����/��������׼������������ǩ�������ļ����ϼ����ܲ������� ������JCTB010302 DWMC ��λ���� C 60 NULL NULL NULL NULL
	[SPRQ]  [nvarchar(8)]  NULL,--�������� ��ţ�JCJG040210 ����/��������׼������������ǩ�������ļ��ľ������� ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[SPWH]  [nvarchar(24)]  NULL,--�����ĺ� ��ţ�JCJG040211 ����/��������׼����������ѧϰ�����ĵ�λǩ������׼�ļ���� 
	[PZQX]  [nvarchar(3)]  NULL,--��׼���� ��ţ�JCJG040212 ����/��������׼�ڹ������������������ޣ���λ���� 
	[XXGZNR]  [nvarchar(80)]  NULL,--ѧϰ�������� ��ţ�JCJG040213 ����/����������������ѧϰ��������Ҫ���� 
	[XXGZCJ]  [text]  NULL,--ѧϰ�����ɼ� ��ţ�JCJG040214 ����/����������������ѧϰ����������������Ҫ�ɼ� 
	[YHGRQ]  [nvarchar(8)]  NULL,--Ӧ�ع����� ��ţ�JCJG040215 ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[SHGRQ]  [nvarchar(8)]  NULL,--ʵ�ع����� ��ţ�JCJG040216 ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[HZHTXZH]  [nvarchar(20)]  NULL,--���պ�/ͨ��֤�� ��ţ�JCJG040217 ����/������ͨ��֤���������۰�ͨ��֤�� 
	[ZJYXQ]  [nvarchar(17)]  NULL,--֤����Ч�� ��ţ�JCJG040218 ������JCTB010207 YXQ ��Ч�� C 17 NULL NULL ��ʽ��YYYYMMDD-YYYYMMDD NULL
CONSTRAINT [PK_JCJG0402] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[CGRQ] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--��֯�������������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCJG0501]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCJG0501](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[KCLBM]  [nvarchar(1)]  NULL,--���죨���ˣ������ ��ţ�JCJG050101 ֵ�ռ䣺GB/T14946.1��2009��¼A.18 
	[KCRQ]  [nvarchar(8)]  NOT NULL,--���죨���ˣ����� ��ţ�JCJG050102 ����/��������֯���ɲ������²������ɵĿ�������п��죨���ˣ������� ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[KCYJ]  [text]  NOT NULL,--���죨���ˣ���� ��ţ�JCJG050103 ����/��������֯���ɲ������²������ɵĿ�����Ե¡��š��ڡ�������������� 
	[KCJGM]  [nvarchar(1)]  NOT NULL,--���죨���ˣ������ ��ţ�JCJG050104 ֵ�ռ䣺GB/T14946.1��2009��¼A.19 ����/������������ίԱ��򿼲�С����˺��ɲ��Ÿ�����ȷ���Ŀ��˽��� 
	[KCZZJKCR]  [nvarchar(120)]  NOT NULL,--���죨���ˣ���֯�������� ��ţ�JCJG050105 ����/��������֯���ɲ������²������ɵĿ��������Ƽ�ֱ�Ӳ��뿼�˵Ŀ������Ա�������Լ�ȷ��������۵Ĳ��Ÿ��������� 
CONSTRAINT [PK_JCJG0501] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--��ְ���������������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCJG0502]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCJG0502](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[KHLBM]  [nvarchar(1)]  NULL,--��������� ��ţ�JCJG050201 ֵ�ռ䣺GB/T14946.1��2009��¼A.18 
	[KHRQ]  [nvarchar(8)]  NOT NULL,--�������� ��ţ�JCJG050202 ����/������ҵ�񿼺˵ľ������� ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[KHNR]  [nvarchar(80)]  NULL,--�������� ��ţ�JCJG050203 ����/������ҵ�񿼺˵���Ҫ���� 
	[KHJGM]  [nvarchar(1)]  NOT NULL,--���˽���� ��ţ�JCJG050204 ֵ�ռ䣺GB/T14946.1��2009��¼A.19 
	[KHFZRGH]  [nvarchar(20)]  NULL,--���˸����˹��� ��ţ�JCJG050205 ����/����������ҵ�񿼺˵���Ա���� ������JCTB020120 RYH ��Ա�� C 20 NULL NULL ѧ�Ż򹤺� NULL
	[KHPY]  [text]  NULL,--�������� ��ţ�JCJG050206 ����/������ҵ�񿼺˵Ľ��ۺ����� 
	[KHBM]  [nvarchar(60)]  NULL,--���˲��� ��ţ�JCJG050207 ����/���������𿼺˵Ĳ������� 
CONSTRAINT [PK_JCJG0502] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--���˿����������������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCJG0503]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCJG0503](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[KGNY]  [nvarchar(6)]  NOT NULL,--�������� ��ţ�JCJG050301 ����/�������μ��й����������Ե����� ������JCTB010202 NY ���� C 6 NULL GB/T7408 ��ʽ��YYYYMM���磺200604��ʾ2006��4�� NULL
	[KHGZM]  [nvarchar(2)]  NOT NULL,--���˹����� ��ţ�JCJG050302 ֵ�ռ䣺JY/T1001HYGZLB��ҵ���������� 
	[KGBM]  [nvarchar(60)]  NOT NULL,--�������� ��ţ�JCJG050303 ����/���������ܿ��ԵĲ��� 
	[JSJB]  [nvarchar(20)]  NULL,--�������� ��ţ�JCJG050304 ����/�����������ļ������� 
	[KGZSH]  [nvarchar(20)]  NULL,--����֤��� ��ţ�JCJG050305 ����/����������������õ�֤��� 
	[KGPY]  [text]  NULL,--�������� ��ţ�JCJG050306 ����/�������������������� 
	[KGCJ]  [nvarchar(20)]  NULL,--�����ɼ� ��ţ�JCJG050307 ����/�������������ȼ���ɼ� 
CONSTRAINT [PK_JCJG0503] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[KGNY] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--��Դ���������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCJG0601]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCJG0601](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[LDWRQ]  [nvarchar(8)]  NOT NULL,--����λ���� ��ţ�JCJG060101 ����/����������λ������ʵ�ʱ������£������²��ż���Ϊ׼ ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[LYM]  [nvarchar(2)]  NOT NULL,--��Դ�� ��ţ�JCJG060102 ֵ�ռ䣺JY/T1001JZGLY��ְ����Դ����JY/T1001GXJZGLY��У��ְ����Դ���� ����/��������Сѧ����ְ���׶�԰����JZGLY��ְ����Դ���룬��У����GXJZGLY��У��ְ����Դ���� 
	[LYDQM]  [nvarchar(6)]  NOT NULL,--��Դ������ ��ţ�JCJG060103 ֵ�ռ䣺GB/T2260 
	[LDWYY]  [nvarchar(80)]  NULL,--����λԭ�� ��ţ�JCJG060104 
	[YDWMC]  [nvarchar(60)]  NULL,--ԭ��λ���� ��ţ�JCJG060105 ������JCTB010302 DWMC ��λ���� C 60 NULL NULL NULL NULL
	[YDZZWM]  [nvarchar(4)]  NULL,--ԭ����ְ���� ��ţ�JCJG060106 ֵ�ռ䣺GB/T12403 
	[YJSZWM]  [nvarchar(3)]  NULL,--ԭ����ְ���� ��ţ�JCJG060107 ֵ�ռ䣺GB/T8561 ����/�������հ�Ϊδ���κ�רҵ����ְ�� 
	[YCSXKM]  [nvarchar(5)]  NULL,--ԭ����ѧ���� ��ţ�JCJG060108 ֵ�ռ䣺GB/T13745 ����/����������һ������������� 
	[YGZZE]  [money]  NOT NULL,--ԭ�����ܶ� ��ţ�JCJG060109 
	[YJHLJT]  [money]  NULL,--ԭ�̻������ ��ţ�JCJG060110 
CONSTRAINT [PK_JCJG0601] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[LDWRQ] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--���ŵ������������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCJG0602]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCJG0602](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[BMDDRQ]  [nvarchar(8)]  NOT NULL,--���ŵ������� ��ţ�JCJG060201 ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[BMDDYY]  [nvarchar(80)]  NULL,--���ŵ���ԭ�� ��ţ�JCJG060202 
	[ZZNDCBMH]  [nvarchar(10)]  NOT NULL,--��֯�ڵ������ź� ��ţ�JCJG060203 ����/��������֯���б�ţ���֯�ڲ�������ԭԺϵ�������ĺ� 
	[ZZNDRBMH]  [nvarchar(10)]  NOT NULL,--��֯�ڵ��벿�ź� ��ţ�JCJG060204 ����/��������֯���б�ţ���֯�ڲ���������Ժϵ�������ĺ� 
	[GZZYRQ]  [nvarchar(8)]  NULL,--����ת������ ��ţ�JCJG060205 ����/��������������ת������ ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[WSDAH]  [nvarchar(10)]  NULL,--���鵵���� ��ţ�JCJG060206 ����/�����������˱䶯�йص��ļ�������� 
CONSTRAINT [PK_JCJG0602] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[BMDDRQ] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--������������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCJG0603]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCJG0603](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[LGRQ]  [nvarchar(8)]  NULL,--������� ��ţ�JCJG060301 ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[LGYYM]  [nvarchar(1)]  NULL,--���ԭ���� ��ţ�JCJG060302 ֵ�ռ䣺JY/T1001LGYY���ԭ����� 
	[FGRQ]  [nvarchar(8)]  NULL,--�������� ��ţ�JCJG060303 ����/���������ع�����λ������ ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[GZZYRQ]  [nvarchar(8)]  NULL,--����ת������ ��ţ�JCJG060205 ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[WSDAH]  [nvarchar(10)]  NULL,--���鵵���� ��ţ�JCJG060206 ������JCJG060206 WSDAH ���鵵���� C 10 O NULL �����˱䶯�йص��ļ�������� NULL
CONSTRAINT [PK_JCJG0603] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--�������������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCJG0604]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCJG0604](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[BXQSRQ]  [nvarchar(8)]  NOT NULL,--������ʼ���� ��ţ�JCJG060401 ����/���������ݼٵ���ʼ���� ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[BXZDYY]  [nvarchar(60)]  NULL,--�������ҽԺ ��ţ�JCJG060402 ����/������������ϵ�ҽԺ���� ������JCTB010302 DWMC ��λ���� C 60 NULL NULL NULL NULL
	[BXZDZM]  [text]  NULL,--�������֤�� ��ţ�JCJG060403 ����/������ҽԺ���ݵĲ������֤�� 
	[HFGZRQ]  [nvarchar(8)]  NOT NULL,--�ָ��������� ��ţ�JCJG060404 ����/���������ݻָ����������� ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[KFZDYY]  [nvarchar(60)]  NULL,--�������ҽԺ ��ţ�JCJG060405 ����/���������п�����ϵ�ҽԺ���� ������JCTB010302 DWMC ��λ���� C 60 NULL NULL NULL NULL
	[KFZDZM]  [text]  NULL,--�������֤�� ��ţ�JCJG060406 ����/������ҽԺ���ߵĿ������֤�� 
	[GZZYRQ]  [nvarchar(8)]  NULL,--����ת������ ��ţ�JCJG060205 ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[WSDAH]  [nvarchar(10)]  NULL,--���鵵���� ��ţ�JCJG060206 ������JCJG060206 WSDAH ���鵵���� C 10 O NULL �����˱䶯�йص��ļ�������� NULL
CONSTRAINT [PK_JCJG0604] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[BXQSRQ] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--��ְ���������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCJG0701]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCJG0701](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[LZRQ]  [nvarchar(8)]  NOT NULL,--��ְ���� ��ţ�JCJG070101 ����/�������뿪����λ������ ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[LZYYM]  [nvarchar(2)]  NOT NULL,--��ְԭ���� ��ţ�JCJG070102 ֵ�ռ䣺GB/T14946.1��2009��¼A.10 
	[LZQX]  [nvarchar(60)]  NULL,--��ְȥ�� ��ţ�JCJG070103 ����/�������뿪����λ������λ���ȥ�� 
CONSTRAINT [PK_JCJG0701] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[LZRQ] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--���������������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCJG0702]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCJG0702](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[LTLBM]  [nvarchar(1)]  NOT NULL,--��������� ��ţ�JCJG070201 ֵ�ռ䣺GB/T14946.1-2009��¼A.62 
	[LTQSRQ]  [nvarchar(8)]  NOT NULL,--������ʼ���� ��ţ�JCJG070202 ����/����������֯�����²�����׼������������ ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[LTHXSJBM]  [nvarchar(3)]  NOT NULL,--���˺����ܼ����� ��ţ�JCJG070203 ֵ�ռ䣺GB/T12407 
	[LTXFZFDW]  [nvarchar(60)]  NULL,--�����ݷ�֧����λ ��ţ�JCJG070204 ����/�����������ݺ�֧�������ݷѵĵ�λ���� ������JCTB010302 DWMC ��λ���� C 60 NULL NULL NULL NULL
	[LTHGLDW]  [nvarchar(60)]  NULL,--���˺����λ ��ţ�JCJG070205 ����/���������˺�ľ������λ���� 
	[YDAZDD]  [nvarchar(60)]  NULL,--��ذ��õص� ��ţ�JCJG070206 ����/���������˺��õ��������ĵص� 
CONSTRAINT [PK_JCJG0702] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[LTLBM] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--��Ƹ���������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCJG0703]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCJG0703](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[FPQSRQ]  [nvarchar(8)]  NULL,--��Ƹ��ʼ���� ��ţ�JCJG070301 ����/�����������ݺ�����Ƹ�ι�������ʼ���� ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[FPZZRQ]  [nvarchar(8)]  NULL,--��Ƹ��ֹ���� ��ţ�JCJG070302 ����/�����������ݺ�����Ƹ�ι�������ֹ���� ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[FPDWH]  [nvarchar(10)]  NOT NULL,--��Ƹ��λ�� ��ţ�JCJG070303 ����/����������Ƹ�εĹ�����λ�ţ�ѧУ�Ա� ������JCTB010301 DWH ��λ�� C 10 NULL NULL ���б��� NULL
	[FPGW]  [nvarchar(20)]  NULL,--��Ƹ��λ ��ţ�JCJG070304 ����/����������Ƹ�εĹ�����λ 
	[FPCJ]  [money]  NULL,--��Ƹ��� ��ţ�JCJG070305 ����/����������Ƹ�ι������Ͷ����꣬��λ��Ԫ/�� 
	[FPJLY]  [nvarchar(20)]  NULL,--��Ƹ����Դ ��ţ�JCJG070306 ����/��������Ƹ�ʽ�ľ�����Դ 
	[FPGZL]  [decimal(4)]  NULL,--��Ƹ������ ��ţ�JCJG070307 ����/��������λ��Сʱ/�� 
CONSTRAINT [PK_JCJG0703] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--�������������������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCBX0101]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCBX0101](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[JYSYFBK]  [money]  NULL,--������ҵ�Ѳ��� ��ţ�JCBX010101 ����/��������λ��Ԫ 
	[QTBK]  [money]  NULL,--�������� ��ţ�JCBX010102 ����/��������λ��Ԫ 
	[JYFFJ]  [money]  NULL,--�����Ѹ��� ��ţ�JCBX010103 ����/��������λ��Ԫ 
	[DFJYFFJ]  [money]  NULL,--�ط������Ѹ��� ��ţ�JCBX010104 ����/��������λ��Ԫ 
	[DFJJ]  [money]  NULL,--�ط����� ��ţ�JCBX010105 ����/��������λ��Ԫ 
	[JBJSBK]  [money]  NULL,--�������貦�� ��ţ�JCBX010106 ����/��������λ��Ԫ 
CONSTRAINT [PK_JCBX0101] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--��Ӫ���������������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCBX0102]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCBX0102](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[XZFSR]  [money]  NULL,--ѧ�ӷ����� ��ţ�JCBX010201 ����/��������λ��Ԫ 
	[JYSR]  [money]  NULL,--��Ӫ���� ��ţ�JCBX010202 ����/��������λ��Ԫ 
	[FSDWSJSR]  [money]  NULL,--������λ�Ͻ����� ��ţ�JCBX010203 ����/��������λ��Ԫ 
CONSTRAINT [PK_JCBX0102] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--�����������������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCBX0103]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCBX0103](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[GATJHWJKSR]  [money]  NULL,--�۰�̨������������ ��ţ�JCBX010301 ����/��������λ��Ԫ 
	[QTJKSR]  [money]  NULL,--����������� ��ţ�JCBX010302 ����/��������λ��Ԫ 
	[ZCCZSR]  [money]  NULL,--�ʲ��������� ��ţ�JCBX010303 ����/��������λ��Ԫ 
	[LHBXSR]  [money]  NULL,--���ϰ�ѧ���ࣩ���� ��ţ�JCBX010304 ����/��������λ��Ԫ 
	[QTPXBKSR]  [money]  NULL,--������ѵ�������� ��ţ�JCBX010305 ����/������ָ�ӷǱ���������������������ȡ�õ�����ũ����ѵ����ת������ѵ����ǰ��ѵ�ȵĲ��������λ��Ԫ 
CONSTRAINT [PK_JCBX0103] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--���ʸ���֧�����������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCBX0104]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCBX0104](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[JBGZ]  [money]  NULL,--�������� ��ţ�JCBX010401 ����/��������λ��Ԫ 
	[JTBT]  [money]  NULL,--�������� ��ţ�JCBX010402 ����/��������λ��Ԫ 
	[JJJXGZ]  [money]  NULL,--���𼰼�Ч���� ��ţ�JCBX010403 ����/��������λ��Ԫ 
	[SHBZJF]  [money]  NULL,--��ᱣ�Ͻɷ� ��ţ�JCBX010404 ����/��������λ��Ԫ 
	[QTGZFLXZC]  [money]  NULL,--�������ʸ�����֧�� ��ţ�JCBX010405 ����/��������λ��Ԫ 
CONSTRAINT [PK_JCBX0104] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--�Ը��˺ͼ�ͥ�Ĳ�����֧�����������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCBX0105]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCBX0105](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[LTXF]  [money]  NULL,--�����ݷ� ��ţ�JCBX010501 ����/��������λ��Ԫ 
	[YLF]  [money]  NULL,--ҽ�Ʒ� ��ţ�JCBX010502 ����/��������λ��Ԫ 
	[ZXJ]  [money]  NULL,--��ѧ�� ��ţ�JCBX010503 ����/��������λ��Ԫ 
	[QTBZXZC]  [money]  NULL,--����������֧�� ��ţ�JCBX010504 ����/�����������Ը��˺ͼ�ͥ�Ĳ�����֧������λ��Ԫ 
CONSTRAINT [PK_JCBX0105] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--��Ʒ�ͷ�����֧�����������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCBX0106]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCBX0106](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[BGF]  [money]  NULL,--�칫�� ��ţ�JCBX010601 ����/��������λ��Ԫ 
	[SF]  [money]  NULL,--ˮ�� ��ţ�JCBX010602 ����/��������λ��Ԫ 
	[DF]  [money]  NULL,--��� ��ţ�JCBX010603 ����/��������λ��Ԫ 
	[YDF]  [money]  NULL,--�ʵ�� ��ţ�JCBX010604 ����/��������λ��Ԫ 
	[QNF]  [money]  NULL,--ȡů�� ��ţ�JCBX010605 ����/��������λ��Ԫ 
	[CLF]  [money]  NULL,--���÷� ��ţ�JCBX010606 ����/��������λ��Ԫ 
	[WXF]  [money]  NULL,--ά�ޣ������� ��ţ�JCBX010607 ����/��������λ��Ԫ 
	[PXF]  [money]  NULL,--��ѵ�� ��ţ�JCBX010608 ����/��������λ��Ԫ 
	[ZYCLF]  [money]  NULL,--ר�ò��Ϸ� ��ţ�JCBX010609 ����/��������λ��Ԫ 
	[LWF]  [money]  NULL,--����� ��ţ�JCBX010610 ����/��������λ��Ԫ 
	[FLF]  [money]  NULL,--������ ��ţ�JCBX010611 ����/��������λ��Ԫ 
	[QTSPHFWXFY]  [money]  NULL,--������Ʒ�ͷ����Է��� ��ţ�JCBX010612 ����/��������λ��Ԫ 
CONSTRAINT [PK_JCBX0106] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--ծ����Ϣ֧�����������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCBX0107]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCBX0107](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[XGJYHJKFX]  [money]  NULL,--��������н�Ϣ ��ţ�JCBX010701 ����/��������λ��Ԫ 
	[QTGNJKFX]  [money]  NULL,--�������ڽ�Ϣ ��ţ�JCBX010702 ����/��������λ��Ԫ 
	[XGWZFJKFX]  [money]  NULL,--�����������Ϣ ��ţ�JCBX010703 ����/��������λ��Ԫ 
	[XGJZZJKFX]  [money]  NULL,--�������֯��Ϣ ��ţ�JCBX010704 ����/��������λ��Ԫ 
	[QTGWJKFX]  [money]  NULL,--���������Ϣ ��ţ�JCBX010705 ����/��������λ��Ԫ 
CONSTRAINT [PK_JCBX0107] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--�����ʱ���֧�����������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCBX0108]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCBX0108](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[BGSBGZF]  [money]  NULL,--�칫�豸���÷� ��ţ�JCBX010801 ����/��������λ��Ԫ 
	[ZYSBGZF]  [money]  NULL,--ר���豸���÷� ��ţ�JCBX010802 ����/��������λ��Ԫ 
	[JTGJGZF]  [money]  NULL,--��ͨ���߹��÷� ��ţ�JCBX010803 ����/��������λ��Ԫ 
	[XXWLGJF]  [money]  NULL,--��Ϣ���繺���� ��ţ�JCBX010804 ����/��������λ��Ԫ 
	[FWJZGJF]  [money]  NULL,--���ݽ����ﹺ���� ��ţ�JCBX010805 ����/��������λ��Ԫ 
	[DXXSF]  [money]  NULL,--�������ɷ� ��ţ�JCBX010806 ����/��������λ��Ԫ 
	[JBJSZCF]  [money]  NULL,--��������֧���� ��ţ�JCBX010807 ����/��������λ��Ԫ 
CONSTRAINT [PK_JCBX0108] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--ծ���ʽ���Դ���������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCBX0109]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCBX0109](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[GWJRJGDK]  [money]  NULL,--������ڻ������� ��ţ�JCBX010901 ����/�����������������д����λ��Ԫ 
	[GNJRJGDK]  [money]  NULL,--���ڽ��ڻ������� ��ţ�JCBX010902 ����/��������λ��Ԫ 
	[QSGDWGCK]  [money]  NULL,--Ƿʩ����λ���̿� ��ţ�JCBX010903 ����/��������λ��Ԫ 
	[JGRK]  [money]  NULL,--�裨Ƿ�����˿� ��ţ�JCBX010904 ����/��������λ��Ԫ 
	[JQTDWK]  [money]  NULL,--�裨Ƿ��������λ�� ��ţ�JCBX010905 ����/��������λ��Ԫ 
	[QQTLYK]  [money]  NULL,--Ƿ������Դ�� ��ţ�JCBX010906 ����/��������λ��Ԫ 
CONSTRAINT [PK_JCBX0109] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--ѧУ�õ����������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCBX0201]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCBX0201](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[FWJZWGJHDXXSZW]  [money]  NULL,--���ݽ����ﹺ���ʹ�������ծ�� ��ţ�JCBX011001 ����/��������λ��Ԫ 
	[TDZYFZW]  [money]  NULL,--�������÷�ծ�� ��ţ�JCBX011002 ����/��������λ��Ԫ 
	[SBGZZW]  [money]  NULL,--�豸����ծ�� ��ţ�JCBX011003 ����/��������λ��Ԫ 
	[QTYTZW]  [money]  NULL,--������;ծ�� ��ţ�JCBX011004 ����/��������λ��Ԫ 
	[YDBH]  [nvarchar(2)]  NOT NULL,--�õر�� ��ţ�JCBX020101 ����/������ѧУ�Ա� 
	[TDCQM]  [nvarchar(1)]  NOT NULL,--���ز�Ȩ�� ��ţ�JCBX020102 ֵ�ռ䣺JY/T1001CQ��Ȩ���� 
	[TDSYZKM]  [nvarchar(1)]  NOT NULL,--����ʹ��״���� ��ţ�JCBX020103 ֵ�ռ䣺JY/T1001SYZKʹ��״������ 
	[XQH]  [nvarchar(2)]  NULL,--У���� ��ţ�JCXX010201 ������JCXX010201 XQH У���� C 2 M NULL ѧУ�Ա� NULL
	[ZDYTM]  [nvarchar(2)]  NOT NULL,--ռ����;�� ��ţ�JCBX020104 ֵ�ռ䣺JY/T1001ZDYTռ����;���� 
	[ZDMJ]  [decimal(8)]  NOT NULL,--ռ����� ��ţ�JCBX020105 ����/��������λ��ƽ���� 
	[YDDZ]  [text]  NULL,--�õص�ַ ��ţ�JCBX020106 ����/���������õص�ַ�ȵ�˵�� 
	[YDBZ]  [text]  NULL,--�õر�ע ��ţ�JCBX020106 ����/�������й�ѧУ�õص�����˵�� 
	[TDZH]  [nvarchar(60)]  NULL,--����֤�� ��ţ�JCBX020107 
CONSTRAINT [PK_JCBX0201] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--ѧУ������������������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCBX0202]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCBX0202](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[JZWH]  [nvarchar(6)]  NOT NULL,--������� ��ţ�JCBX020201 ����/������ѧУ�Ա� 
	[JZWMC]  [nvarchar(30)]  NOT NULL,--���������� ��ţ�JCBX020202 ����/������ָ������ĺ������� 
	[FWCQM]  [nvarchar(1)]  NOT NULL,--���ݲ�Ȩ�� ��ţ�JCBX020203 ֵ�ռ䣺JY/T1001CQ��Ȩ���� 
	[SYZKM]  [nvarchar(1)]  NOT NULL,--ʹ��״���� ��ţ�JCBX020204 ֵ�ռ䣺JY/T1001SYZKʹ��״������ 
	[XQH]  [nvarchar(2)]  NULL,--У���� ��ţ�JCXX010201 ������JCXX010201 XQH У���� C 2 M NULL ѧУ�Ա� NULL
	[JZWFLM]  [nvarchar(1)]  NOT NULL,--����������� ��ţ�JCBX020205 ֵ�ռ䣺JY/T1001JZWFL������������ 
	[JZWJGM]  [nvarchar(1)]  NULL,--������ṹ�� ��ţ�JCBX020206 ֵ�ռ䣺JY/T1001JZWJG������ṹ���� 
	[JZWCS]  [decimal(2)]  NULL,--��������� ��ţ�JCBX020207 ����/�������������ң���λ���� 
	[JCNY]  [nvarchar(6)]  NULL,--�������� ��ţ�JCBX020208 ������JCTB010202 NY ���� C 6 NULL GB/T7408 ��ʽ��YYYYMM���磺200604��ʾ2006��4�� NULL
	[JZWTZZE]  [money]  NOT NULL,--������Ͷ���ܶ� ��ţ�JCBX020209 ����/��������λ��Ԫ 
	[JFLYM]  [nvarchar(1)]  NOT NULL,--������Դ�� ��ţ�JCBX020210 ֵ�ռ䣺JY/T1001JFLY������Դ���� 
	[ZJZMJ]  [decimal(102)]  NOT NULL,--�ܽ������ ��ţ�JCBX020211 ����/��������λ��ƽ���� 
	[ZSYMJ]  [decimal(102)]  NULL,--��ʹ����� ��ţ�JCBX020212 ����/��������λ��ƽ���� 
	[KZSFLDM]  [nvarchar(1)]  NOT NULL,--��������Ҷ��� ��ţ�JCBX020213 ֵ�ռ䣺JY/T1001KZSFLD��������Ҷȴ��� 
	[KZSFBZM]  [nvarchar(1)]  NOT NULL,--���������׼�� ��ţ�JCBX020214 ֵ�ռ䣺JY/T1001KZSFBZ���������׼���� 
	[JZWDZ]  [nvarchar(180)]  NULL,--�������ַ ��ţ�JCBX020215 ����/������ָ���������ϸ��ַ ������JCTB010102 TXDZ ͨ�ŵ�ַ C 180 NULL NULL ָ����ʡ����������ֱϽ�У�/�أ��С��ݣ�/�أ������죩/�磨��/�֣��壩/���ƺŵ���ϸ��ַ NULL
	[JZWZKM]  [nvarchar(2)]  NOT NULL,--������״���� ��ţ�JCBX020216 ֵ�ռ䣺JY/T1001JZWZK������״������ 
	[JZWTP]  [nvarchar(200)]  NULL,--������ͼƬ ��ţ�JCBX020217 ����/������ָ���������Ƭ 
	[JZWPMT]  [nvarchar(200)]  NULL,--������ƽ��ͼ ��ţ�JCBX020218 ����/������ָ������Ľ���ƽ��ͼ 
	[QSZH]  [nvarchar(60)]  NULL,--Ȩ��֤�� ��ţ�JCBX020219 
	[JZWZDMJ]  [decimal(8)]  NULL,--������ռ����� ��ţ�JCBX020220 ����/��������λ��ƽ���� 
	[SJSYNX]  [decimal(3)]  NULL,--���ʹ������ ��ţ�JCBX020221 ����/��������λ���� 
CONSTRAINT [PK_JCBX0202] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[JZWH] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--�����﷿�������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCBX0203]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCBX0203](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[FJH]  [nvarchar(12)]  NOT NULL,--����� ��ţ�JCBX020301 ����/������ѧУ�Ա࣬����ǰ6λΪ�������ţ���6λΪ�����ڸý������ڵı�� 
	[FJMC]  [nvarchar(30)]  NOT NULL,--�������� ��ţ�JCBX020302 ����/������ָ����ĺ������� 
	[FJYTM]  [nvarchar(2)]  NOT NULL,--������;�� ��ţ�JCBX020303 ֵ�ռ䣺JY/T1001FJYT������;���� 
	[FJLC]  [nvarchar(3)]  NULL,--����¥�� ��ţ�JCBX020304 ����/������ָ�������ڵ�¥�㣬����¥��ֱ���ð��������ֱ�ʾ������¥���ڰ���������ǰ�ӡ�B�����硰2����ʾ����2�㣬��B2����ʾ����2�� 
	[FJJZMJ]  [decimal(82)]  NOT NULL,--���佨����� ��ţ�JCBX020305 ֵ�ռ䣺ȡ��λС�� ����/��������λ��ƽ���� 
	[FJSYMJ]  [decimal(82)]  NULL,--����ʹ����� ��ţ�JCBX020306 ֵ�ռ䣺ȡ��λС�� ����/��������λ��ƽ���� 
CONSTRAINT [PK_JCBX0203] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[FJH] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--���������������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCBX0204]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCBX0204](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[JZWH]  [nvarchar(6)]  NOT NULL,--������� ��ţ�JCBX020201 ������JCBX020201 JZWH ������� C 6 M NULL ѧУ�Ա� NULL
	[FJH]  [nvarchar(12)]  NULL,--����� ��ţ�JCBX020301 ������JCBX020301 FJH ����� C 12 M NULL ѧУ�Ա࣬����ǰ6λΪ�������ţ���6λΪ�����ڸý������ڵı�� NULL
	[XSKSRQ]  [nvarchar(8)]  NULL,--���ɿ�ʼ���� ��ţ�JCBX020401 ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[XSJSRQ]  [nvarchar(8)]  NULL,--���ɽ������� ��ţ�JCBX020402 ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[XSNR]  [text]  NULL,--�������� ��ţ�JCBX020403 ����/���������ɵ���Ҫ�������� 
	[XSJF]  [money]  NOT NULL,--���ɾ��� ��ţ�JCBX020404 ����/������ָ�����漰�ľ����ܶ��λ��Ԫ 
	[XSDW]  [nvarchar(60)]  NULL,--���ɵ�λ ��ţ�JCBX020405 ����/�������е���������ĵ�λ���� 
	[JFLYM]  [nvarchar(1)]  NULL,--������Դ�� ��ţ�JCBX020210 ������JCBX020210 JFLYM ������Դ�� C 1 M JY/T1001JFLY������Դ���� NULL NULL
	[JBRH]  [nvarchar(20)]  NULL,--�����˺� ��ţ�JCBX020406 ����/��������������������������˵���Ա�Ĺ��� ������JCTB020120 RYH ��Ա�� C 20 NULL NULL ѧ�Ż򹤺� NULL
	[XSSM]  [text]  NULL,--����˵�� ��ţ�JCBX020407 ����/��������������ص����˵�� 
CONSTRAINT [PK_JCBX0204] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[JZWH] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--ѧУ��ʩ���������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCBX0205]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCBX0205](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[SSH]  [nvarchar(6)]  NULL,--��ʩ�� ��ţ�JCBX020501 ����/������ѧУ�Ա� 
	[SSCQM]  [nvarchar(1)]  NOT NULL,--��ʩ��Ȩ�� ��ţ�JCBX020502 ֵ�ռ䣺JY/T1001CQ��Ȩ���� 
	[SSSYZKM]  [nvarchar(1)]  NOT NULL,--��ʩʹ��״���� ��ţ�JCBX020503 ֵ�ռ䣺JY/T1001SYZKʹ��״������ 
	[SSXXDWCCM]  [nvarchar(1)]  NULL,--����ѧУ��λ����� ��ţ�JCBX020504 ֵ�ռ䣺JY/T1001XXDWCCѧУ��λ��δ��� 
	[SSMC]  [nvarchar(60)]  NULL,--��ʩ���� ��ţ�JCBX020505 
	[JSNY]  [nvarchar(6)]  NULL,--�������� ��ţ�JCBX020506 ������JCTB010202 NY ���� C 6 NULL GB/T7408 ��ʽ��YYYYMM���磺200604��ʾ2006��4�� NULL
	[JSFY]  [money]  NULL,--������� ��ţ�JCBX020507 ����/������ָ������ʩ���ܾ��ѣ���λ��Ԫ 
	[XSNY]  [nvarchar(6)]  NULL,--�������� ��ţ�JCBX020508 ������JCTB010202 NY ���� C 6 NULL GB/T7408 ��ʽ��YYYYMM���磺200604��ʾ2006��4�� NULL
	[XSFY]  [money]  NULL,--���ɷ��� ��ţ�JCBX020509 ����/������ָ������ʩ���ܾ��ѣ���λ��Ԫ 
	[SYSFZC]  [nvarchar(1)]  NULL,--ʹ���Ƿ����� ��ţ�JCBX020510 ֵ�ռ䣺JY/T1001SFBZ�Ƿ��־���� ����/������0������1���� 
CONSTRAINT [PK_JCBX0205] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--�����豸�������������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCBX0301]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCBX0301](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[YQH]  [nvarchar(10)]  NOT NULL,--������ ��ţ�JCBX030101 ����/������ѧУ�Ա� 
	[YQMC]  [nvarchar(60)]  NOT NULL,--�������� ��ţ�JCBX030102 ����/��������Ʒ�����ϵĺ������ƣ����ڲ�Ʒ��Ӣ�뺺���ƣ������������豸���̾ߺ���ߵ� 
	[YQYWMC]  [nvarchar(180)]  NOT NULL,--����Ӣ������ ��ţ�JCBX030103 
	[XXDWCCM]  [nvarchar(1)]  NULL,--ѧУ��λ����� ��ţ�JCBX030104 ֵ�ռ䣺JY/T1001XXDWCCѧУ��λ��δ��� 
	[CQM]  [nvarchar(1)]  NOT NULL,--��Ȩ�� ��ţ�JCBX030105 ֵ�ռ䣺JY/T1001CQ��Ȩ���� 
	[SYZKM]  [nvarchar(1)]  NULL,--ʹ��״���� ��ţ�JCBX020204 ������JCBX020204 SYZKM ʹ��״���� C 1 M JY/T1001SYZKʹ��״������ NULL NULL
	[FLM]  [nvarchar(8)]  NOT NULL,--������ ��ţ�JCBX030106 ֵ�ռ䣺�ߵ�ѧУ�̶��ʲ����༰�����ѧ�����豸��Ʒ�����ʣ���������� ����/�������ߵ�ѧУ���øߵ�ѧУ�̶��ʲ����༰���룬����ѧУ���ý�ѧ�����豸��Ʒ�����ʣ���������� 
	[YQXH]  [nvarchar(40)]  NOT NULL,--�����ͺ� ��ţ�JCBX030107 
	[CCRQ]  [nvarchar(8)]  NOT NULL,--�������� ��ţ�JCBX030108 
	[SCGBDQM]  [nvarchar(3)]  NOT NULL,--��������/������ ��ţ�JCBX030109 ֵ�ռ䣺GB/T2659 ����/������ָ������������������λ��ĸ���� 
	[JFKMM]  [nvarchar(1)]  NOT NULL,--���ѿ�Ŀ�� ��ţ�JCBX030110 ֵ�ռ䣺JY/T1001JFKM���ѿ�Ŀ���� 
	[GZRQ]  [nvarchar(8)]  NOT NULL,--�������� ��ţ�JCBX030111 ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[SCCJ]  [nvarchar(180)]  NOT NULL,--�������� ��ţ�JCBX030112 ����/������ָ�������ҵĺ����������ڲ�Ʒ��Ӣ�뺺���������� 
	[CCH]  [nvarchar(30)]  NOT NULL,--������ ��ţ�JCBX030113 ����/���������ұ�ע�ڲ�Ʒ�ϵ�Ψһ�� 
	[DJH]  [nvarchar(16)]  NOT NULL,--���ݺ� ��ţ�JCBX030114 ����/�������ɹ�ƾ֤���ݺŻ���ڲ�Ʒ������ͬ�� 
	[TP]  [nvarchar(200)]  NOT NULL,--ͼƬ ��ţ�JCBX030115 ����/������ָ�����豸��ͼƬ 
	[YQDD]  [nvarchar(60)]  NOT NULL,--�����ص� ��ţ�JCBX030116 
	[SBFZRH]  [nvarchar(20)]  NOT NULL,--�豸�����˺� ��ţ�JCBX030117 ����/�������豸�����˵Ĺ��� ������JCTB020120 RYH ��Ա�� C 20 NULL NULL ѧ�Ż򹤺� NULL
	[JSZB]  [text]  NOT NULL,--����ָ�� ��ţ�JCBX030118 
	[YQPZ]  [text]  NOT NULL,--�������� ��ţ�JCBX030119 
	[JGBZ]  [nvarchar(3)]  NULL,--�۸���� ��ţ�JCBX030120 ֵ�ռ䣺GB/T12406 
	[YQJG]  [money]  NULL,--�����۸� ��ţ�JCBX030121 
	[YQSM]  [text]  NULL,--����˵�� ��ţ�JCBX030122 
	[CWZH]  [nvarchar(20)]  NULL,--�����ʺ� ��ţ�JCBX030123 ����/������ָУ�ڲ����ʺ� 
	[GHS]  [nvarchar(60)]  NULL,--������ ��ţ�JCBX030124 ����/�����������̵����� 
	[BXJZRQ]  [nvarchar(8)]  NOT NULL,--���޽�ֹ���� ��ţ�JCBX030125 ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[SBLY]  [nvarchar(4)]  NOT NULL,--�豸��Դ ��ţ�JCBX030126 ����/�������磺��ӯ���⹺�����롢ת�롢�����������Խ������� 
	[SFJMGZYQ]  [nvarchar(1)]  NOT NULL,--�Ƿ��ܹ������� ��ţ�JCBX030127 ֵ�ռ䣺JY/T1001SFBZ�Ƿ��־���� 
CONSTRAINT [PK_JCBX0301] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[YQH] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--�����豸�������������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCBX0302]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCBX0302](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[FJBH]  [nvarchar(6)]  NOT NULL,--������� ��ţ�JCBX030201 ����/������ѧУ�Ա� 
	[FJSL]  [decimal(3)]  NOT NULL,--�������� ��ţ�JCBX030202 ����/������ĳ�����豸����������������λ���� 
	[FUJMC]  [nvarchar(60)]  NOT NULL,--�������� ��ţ�JCBX030203 ����/����������ȫ�ƻ�����д 
	[FJXHGG]  [nvarchar(100)]  NOT NULL,--�����ͺŹ�� ��ţ�JCBX030204 
	[FJJG]  [money]  NULL,--�����۸� ��ţ�JCBX030205 
	[FJYWMC]  [nvarchar(180)]  NULL,--����Ӣ������ ��ţ�JCBX030206 
	[RMBZJ]  [money]  NULL,--������ܼ� ��ţ�JCBX030207 
	[CCRQ]  [nvarchar(8)]  NOT NULL,--�������� ��ţ�JCBX030108 ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[SCGBDQM]  [nvarchar(3)]  NOT NULL,--��������/������ ��ţ�JCBX030109 ������JCBX030109 SCGBDQM ��������/������ C 3 M GB/T2659 ָ������������������λ��ĸ���� NULL
	[GZRQ]  [nvarchar(8)]  NOT NULL,--�������� ��ţ�JCBX030111 ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[SCCJ]  [nvarchar(180)]  NOT NULL,--�������� ��ţ�JCBX030112 ������JCBX030112 SCCJ �������� C 180 M NULL ָ�������ҵĺ����������ڲ�Ʒ��Ӣ�뺺���������� NULL
	[CCH]  [nvarchar(30)]  NOT NULL,--������ ��ţ�JCBX030113 ������JCBX030113 CCH ������ C 30 M NULL ���ұ�ע�ڲ�Ʒ�ϵ�Ψһ�� NULL
	[GHS]  [nvarchar(60)]  NULL,--������ ��ţ�JCBX030124 ������JCBX030124 GHS ������ C 60 O NULL �����̵����� NULL
CONSTRAINT [PK_JCBX0302] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[FJBH] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--�����豸�������������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCBX0303]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCBX0303](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[XZM]  [nvarchar(1)]  NOT NULL,--��״�� ��ţ�JCBX030301 ֵ�ռ䣺JY/T1001YQXZ������״���� 
	[SYFXM]  [nvarchar(1)]  NOT NULL,--ʹ�÷����� ��ţ�JCBX030302 ֵ�ռ䣺JY/T1001YQSYFX����ʹ�÷������ 
	[SYDWH]  [nvarchar(10)]  NULL,--ʹ�õ�λ�� ��ţ�JCBX030303 ����/������ѧУ�Ա� ������JCTB010301 DWH ��λ�� C 10 NULL NULL ���б��� NULL
	[JSRH]  [nvarchar(20)]  NULL,--�����˺� ��ţ�JCBX030304 ����/������У���״ΰ���ʹ�������˵Ĺ��� ������JCTB020120 RYH ��Ա�� C 20 NULL NULL ѧ�Ż򹤺� NULL
	[LYDW]  [nvarchar(10)]  NULL,--���õ�λ ��ţ�JCBX030305 ����/�����������豸У�ڵ�������ʹ�õ�λ���� ������JCTB010301 DWH ��λ�� C 10 NULL NULL ���б��� NULL
	[LYRH]  [nvarchar(20)]  NULL,--�����˺� ��ţ�JCBX030306 ����/�����������豸У�ڵ�������ʹ�õ�λ�������������˵Ĺ��� ������JCTB020120 RYH ��Ա�� C 20 NULL NULL ѧ�Ż򹤺� NULL
	[WHRS]  [decimal(2)]  NULL,--ά������ ��ţ�JCBX030307 ����/�����������豸רְ����ά����Ա��������ְ������������Ϊȫʱ��Ա��ʱֻȡ��������λ���� 
	[SYRSS]  [decimal(8)]  NULL,--ʹ����ʱ�� ��ţ�JCBX030308 ����/��������λ����ʱ 
	[KSSYGS]  [decimal(6)]  NULL,--����ʵ����� ��ţ�JCBX030309 ����/��������λ���� 
	[KSSYSS]  [decimal(8)]  NULL,--����ʵ��ʱ�� ��ţ�JCBX030310 ����/��������λ��Сʱ 
	[JXSS]  [decimal(8)]  NULL,--��ѧʱ�� ��ţ�JCBX030311 ����/��������λ��Сʱ 
	[KYSS]  [decimal(8)]  NULL,--����ʱ�� ��ţ�JCBX030312 ����/��������λ��Сʱ 
	[SHXMSS]  [decimal(8)]  NULL,--�����Ŀʱ�� ��ţ�JCBX030313 ����/��������λ��Сʱ 
	[BGRH]  [nvarchar(20)]  NULL,--�����˺� ��ţ�JCBX030314 ����/�������ճ������˹��� ������JCTB020120 RYH ��Ա�� C 20 NULL NULL ѧ�Ż򹤺� NULL
CONSTRAINT [PK_JCBX0303] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[XZM] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--�����豸���𡢱������������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCBX0304]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCBX0304](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[BSBFRQ]  [nvarchar(8)]  NOT NULL,--���𱨷����� ��ţ�JCBX030401 ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[BSBFYY]  [nvarchar(80)]  NOT NULL,--���𱨷�ԭ�� ��ţ�JCBX030402 
	[CLJG]  [text]  NOT NULL,--������ ��ţ�JCBX030403 ����/������ָ���������𱨷ϴ���Ľ�� 
	[JBRH]  [nvarchar(20)]  NOT NULL,--�����˺� ��ţ�JCBX020406 ����/������ָ�����������𱨷������˵Ĺ��� ������JCTB020120 RYH ��Ա�� C 20 NULL NULL ѧ�Ż򹤺� NULL
	[SFSM]  [text]  NOT NULL,--���˵�� ��ţ�JCBX030404 ����/���������������𱨷��йص����˵�� 
CONSTRAINT [PK_JCBX0304] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[BSBFRQ] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--�����Դ���������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCBX0305]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCBX0305](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[RJBH]  [nvarchar(16)]  NOT NULL,--������ ��ţ�JCBX030501 ����/������ѧУ�Ա� 
	[RJMC]  [nvarchar(60)]  NOT NULL,--������� ��ţ�JCBX030502 
	[RJFLM]  [nvarchar(8)]  NOT NULL,--��������� ��ţ�JCBX030503 ֵ�ռ䣺��ѧ�����豸��Ʒ�����ʣ���������� 
	[BBH]  [nvarchar(40)]  NOT NULL,--�汾�� ��ţ�JCBX030504 
	[JZLX]  [nvarchar(20)]  NULL,--�������� ��ţ�JCBX030505 
	[JZSL]  [decimal(3)]  NULL,--�������� ��ţ�JCBX030506 
	[SQFW]  [nvarchar(200)]  NULL,--��Ȩ��Χ ��ţ�JCBX030507 ����/���������Ȩ֤������������ 
	[SCGBDQM]  [nvarchar(3)]  NOT NULL,--��������/������ ��ţ�JCBX030109 ������JCBX030109 SCGBDQM ��������/������ C 3 M GB/T2659 ָ������������������λ��ĸ���� NULL
	[JFKMM]  [nvarchar(1)]  NOT NULL,--���ѿ�Ŀ�� ��ţ�JCBX030110 ������JCBX030110 JFKMM ���ѿ�Ŀ�� C 1 M JY/T1001JFKM���ѿ�Ŀ���� NULL NULL
	[GZRQ]  [nvarchar(8)]  NOT NULL,--�������� ��ţ�JCBX030111 ������JCBX030111 GZRQ �������� C 8 M NULL NULL JCTB010203
	[SCCJ]  [nvarchar(180)]  NOT NULL,--�������� ��ţ�JCBX030112 ������JCBX030112 SCCJ �������� C 180 M NULL ָ�������ҵĺ����������ڲ�Ʒ��Ӣ�뺺���������� NULL
	[CCH]  [nvarchar(30)]  NOT NULL,--������ ��ţ�JCBX030113 ������JCBX030113 CCH ������ C 30 M NULL ���ұ�ע�ڲ�Ʒ�ϵ�Ψһ�� NULL
	[DJH]  [nvarchar(16)]  NOT NULL,--���ݺ� ��ţ�JCBX030114 ������JCBX030114 DJH ���ݺ� C 16 M NULL �ɹ�ƾ֤���ݺŻ���ڲ�Ʒ������ͬ�� NULL
	[DJ]  [money]  NOT NULL,--���� ��ţ�JCBX030508 ����/���������������������ר�ù��ߡ����ݿ�ѡ����������շ��õȣ����õ�����Ҽ۸�ԭֵ����ȡ��λС�������������豸����ʱ������������Ҽۣ���λ��Ԫ 
	[AZTSF]  [money]  NOT NULL,--��װ���Է� ��ţ�JCBX030509 ����/��������װ��������ԭϵͳ���ɺ����շ��� 
	[PXJJSZCF]  [money]  NOT NULL,--��ѵ������֧�ַ� ��ţ�JCBX030510 ����/��������ѵ���ʱ����ڷ���ͼ���֧�ַ� 
CONSTRAINT [PK_JCBX0305] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[RJBH] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--ʵ���һ������������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCBX0307]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCBX0307](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[SYSH]  [nvarchar(10)]  NOT NULL,--ʵ���Һ� ��ţ�JCBX030701 ����/������У��ʵ����Ψһ��ţ�������Ժϵ����λͳһ��� ������JCTB010301 DWH ��λ�� C 10 NULL NULL ���б��� NULL
	[SYSMC]  [nvarchar(60)]  NOT NULL,--ʵ�������� ��ţ�JCBX030702 
	[JLRQ]  [nvarchar(8)]  NOT NULL,--�������� ��ţ�JCBX030703 ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[JZMJ]  [decimal(82)]  NULL,--������� ��ţ�JCBX030704 ����/��������λ��ƽ���� 
	[SYMJ]  [decimal(82)]  NULL,--ʹ����� ��ţ�JCBX030705 ����/��������λ��ƽ���� 
	[SYSWZ]  [nvarchar(60)]  NULL,--ʵ����λ�� ��ţ�JCBX030706 ����/������ָʵ�������ڵľ���¥�źͷ���� 
	[FZRH]  [nvarchar(20)]  NOT NULL,--�����˺� ��ţ�JCBX030707 ������JCTB020120 RYH ��Ա�� C 20 NULL NULL ѧ�Ż򹤺� NULL
	[SYSLBM]  [nvarchar(1)]  NOT NULL,--ʵ��������� ��ţ�JCBX030708 ֵ�ռ䣺JY/T1001SYSLBʵ���������� 
	[SYSDH]  [nvarchar(30)]  NULL,--ʵ���ҵ绰 ��ţ�JCBX030709 ������JCTB010103 DH �绰 C 30 NULL NULL ���绰���� NULL
	[SYSJS]  [text]  NULL,--ʵ���ҽ��� ��ţ�JCBX030710 ����/������ʵ���ҵ�������� 
CONSTRAINT [PK_JCBX0307] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[SYSH] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--ʵ����Ŀ���������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCBX0308]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCBX0308](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[SYXH]  [nvarchar(15)]  NULL,--ʵ����� ��ţ�JCBX030801 ����/������ѧУ�Ա� 
	[SYMC]  [nvarchar(60)]  NULL,--ʵ������ ��ţ�JCBX030802 
	[LSKCH]  [nvarchar(10)]  NULL,--�����γ̺� ��ţ�JCBX030803 ����/�������ǽ�ѧʵ�鲻�� ������JCTB010403 KCH �γ̺� C 10 NULL NULL ѧУ�Ա� NULL
	[SYLBM]  [nvarchar(1)]  NULL,--ʵ������� ��ţ�JCBX030804 ֵ�ռ䣺JY/T1001SYLBʵ��������JY/T1001ZXXSYLB��Сѧʵ�������� 
	[ZYFLM]  [nvarchar(6)]  NULL,--רҵ������ ��ţ�JCBX030805 ����/��������ʵ����Ŀ������רҵ�� ������JCTB010407 ZYM רҵ�� C 6 NULL ѧλ������˲�����ѧ��Ŀ¼רҵѧλ������˲�����Ŀ¼��ͨ�ߵ�ѧУ����רҵĿ¼��ͨ�ߵ�ѧУ��ְ��ר����ָ����רҵĿ¼�����У��е�ְҵѧУרҵĿ¼ NULL NULL
	[SYYQM]  [nvarchar(1)]  NULL,--ʵ��Ҫ���� ��ţ�JCBX030806 ֵ�ռ䣺JY/T1001SYYQʵ��Ҫ����� 
	[SYZLBM]  [nvarchar(1)]  NULL,--ʵ��������� ��ţ�JCBX030807 ֵ�ռ䣺JY/T1001SYZLBʵ���������� 
	[SYZRS]  [decimal(4)]  NULL,--ʵ�������� ��ţ�JCBX030808 ����/�������μ�ʵ�������������λ���� 
	[MZRS]  [decimal(3)]  NULL,--ÿ������ ��ţ�JCBX030809 ����/������ָÿ�������豸����ʵ����������ǽ�ѧʵ�鲻���λ���� 
	[SYSS]  [decimal(3)]  NULL,--ʵ��ʱ�� ��ţ�JCBX030810 ����/������ָ��ɱ�ʵ���ʱ������λ��Сʱ 
	[HJJBM]  [nvarchar(2)]  NULL,--�񽱼����� ��ţ�JCBX030811 ֵ�ռ䣺JY/T1001JB������� 
	[DKJSH]  [nvarchar(20)]  NULL,--���ν�ʦ�� ��ţ�JCBX030812 ������JCTB020120 RYH ��Ա�� C 20 NULL NULL ѧ�Ż򹤺� NULL
	[SYDD]  [nvarchar(60)]  NULL,--ʵ��ص� ��ţ�JCBX030813 
CONSTRAINT [PK_JCBX0308] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--ͼ��������������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCBX0401]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCBX0401](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[TSBH]  [nvarchar(10)]  NOT NULL,--ͼ���� ��ţ�JCBX040101 ����/������ָУ��ͼ�����ϵı�ţ�����ͼ�顢�Ŵ���¼��������̡����̵ȣ�ѧУ�Ա� 
	[TSTXM]  [nvarchar(14)]  NOT NULL,--ͼ�������� ��ţ�JCBX040102 ����/������ͼ���Ӧ�������� 
	[ZBT]  [nvarchar(180)]  NOT NULL,--������ ��ţ�JCBX040103 ����/��������д���Ļ�Ӣ�� 
	[BLBT]  [nvarchar(180)]  NULL,--���б��� ��ţ�JCBX040104 ����/��������д���Ļ�Ӣ�� 
	[FBT]  [nvarchar(180)]  NULL,--������ ��ţ�JCBX040105 ����/��������д���Ļ�Ӣ�� 
	[JSGJZ]  [nvarchar(60)]  NULL,--�����ؼ��� ��ţ�JCBX040106 ����/������ͼ������Ĺؼ��� 
	[TSCBH]  [nvarchar(30)]  NOT NULL,--ͼ������ ��ţ�JCBX040107 ����/������ͼ����Ӧ��ISBN�ȱ�׼����� 
	[DYZZ]  [nvarchar(30)]  NOT NULL,--��һ���� ��ţ�JCBX040108 ����/������ͼ���һ�������� 
	[QTZZ]  [nvarchar(90)]  NULL,--�������� ��ţ�JCBX040109 ����/������ͼ�������������� 
	[JG]  [money]  NULL,--�۸� ��ţ�JCBX040110 ����/������ͼ��ĵ��ۣ���Ұ�������������ң�ȡ��λС������λ��Ԫ 
	[WXLXM]  [nvarchar(2)]  NULL,--���������� ��ţ�JCBX040111 ֵ�ռ䣺GB/T3469 
	[ZDM]  [nvarchar(1)]  NULL,--װ���� ��ţ�JCBX040112 ֵ�ռ䣺JY/T1001KWZD����װ������ 
	[FLH]  [nvarchar(20)]  NULL,--����� ��ţ�JCBX040113 ����/�����������й�ͼ��ݷ��෨�����з���ı�� 
	[ZGYZM]  [nvarchar(3)]  NULL,--�й������� ��ţ�JCBX040114 ֵ�ռ䣺GB/T4881 
	[YZM]  [nvarchar(2)]  NULL,--������ ��ţ�JCBX040115 ֵ�ռ䣺GB/T4880.1 
	[KB]  [nvarchar(30)]  NULL,--���� ��ţ�JCBX040116 
	[YS]  [decimal(6)]  NULL,--ҳ�� ��ţ�JCBX040117 ����/������ͼ�����ҳ������λ��ҳ 
	[BC]  [nvarchar(30)]  NULL,--��� ��ţ�JCBX040118 
	[TSFJMC]  [nvarchar(180)]  NULL,--ͼ�鸽������ ��ţ�JCBX040119 ����/������ͼ����صĸ������� 
	[CSMC]  [nvarchar(180)]  NULL,--�������� ��ţ�JCBX040120 ����/������ָϵ�д�������� 
	[CSBZ]  [nvarchar(180)]  NULL,--������� ��ţ�JCBX040121 ����/������ָϵ�д���ı������� 
	[CBS]  [nvarchar(180)]  NULL,--������ ��ţ�JCBX040122 ����/���������������ƣ����������ɲ��� 
	[CBSJBM]  [nvarchar(1)]  NULL,--�����缶���� ��ţ�JCBX040123 ֵ�ռ䣺JY/T1001CBSJB�����缶����� ����/����������������Ե�һ��������Ϊ׼ 
	[CBD]  [nvarchar(60)]  NULL,--����� ��ţ�JCBX040124 
	[CBRQ]  [nvarchar(8)]  NULL,--�������� ��ţ�JCBX040125 ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[FXDW]  [nvarchar(60)]  NULL,--���е�λ ��ţ�JCBX040126 ������JCTB010302 DWMC ��λ���� C 60 NULL NULL NULL NULL
	[BZ]  [text]  NULL,--��ע ��ţ�JCBX040127 ����/��������ͼ����ص��������˵�� 
	[TSZTM]  [nvarchar(1)]  NULL,--ͼ��״̬�� ��ţ�JCBX040128 ֵ�ռ䣺JY/T1001TSQKZTͼ���ڿ�״̬���� 
CONSTRAINT [PK_JCBX0401] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[TSBH] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--�ڿ��������������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCBX0402]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCBX0402](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[QKBH]  [nvarchar(10)]  NOT NULL,--�ڿ���� ��ţ�JCBX040201 ����/������ָУ���ڿ��ı�ţ�ѧУ�Ա� 
	[QKTXM]  [nvarchar(14)]  NULL,--�ڿ������� ��ţ�JCBX040202 ����/�������ڿ���Ӧ�������� 
	[QKZWMC]  [nvarchar(60)]  NOT NULL,--�ڿ��������� ��ţ�JCBX040203 
	[QKYWMC]  [nvarchar(180)]  NULL,--�ڿ�Ӣ������ ��ţ�JCBX040204 
	[QKCBH]  [nvarchar(30)]  NOT NULL,--�ڿ������ ��ţ�JCBX040205 ����/�������ڿ���Ӧ��ISSN�ȱ�׼����� 
	[BJB]  [nvarchar(60)]  NULL,--�༭�� ��ţ�JCBX040206 ����/�������༭�ڿ��ı༭������ 
	[ZB]  [nvarchar(36)]  NULL,--���� ��ţ�JCBX040207 ����/�������ڿ��������� ������JCTB020101 XM ���� C 36 NULL NULL �������񻪣������ᡤ����������ľ NULL
	[MQDJ]  [money]  NULL,--ÿ�ڵ��� ��ţ�JCBX040208 ����/������ÿ���ڿ��ĵ��ۣ���Ұ�������������ң�ȡһλС������λ��Ԫ 
	[CKNY]  [nvarchar(6)]  NULL,--�������� ��ţ�JCBX040209 ������JCTB010202 NY ���� C 6 NULL GB/T7408 ��ʽ��YYYYMM���磺200604��ʾ2006��4�� NULL
	[NH]  [nvarchar(4)]  NULL,--��� ��ţ�JCBX040210 ������JCTB010201 ND ��ȣ���ݡ��꣩ C 4 NULL GB/T7408 ��ʽ��YYYY���磺2008 NULL
	[JH]  [nvarchar(10)]  NULL,--��� ��ţ�JCBX040211 
	[QH]  [nvarchar(10)]  NULL,--�ں� ��ţ�JCBX040212 
	[ZQH]  [nvarchar(10)]  NULL,--���ں� ��ţ�JCBX040213 
	[FLH]  [nvarchar(20)]  NULL,--����� ��ţ�JCBX040113 ����/�����������й�ͼ��ݷ��෨�����з���ı�� 
	[ZGYZM]  [nvarchar(3)]  NULL,--�й������� ��ţ�JCBX040114 ֵ�ռ䣺GB/T4881 ������JCBX040114 ZGYZM �й������� C 3 O GB/T4881 NULL NULL
	[YZM]  [nvarchar(2)]  NULL,--������ ��ţ�JCBX040115 ֵ�ռ䣺GB/T4880.1 ������JCBX040115 YZM ������ C 2 O GB/T4880.1 NULL NULL
	[QKLBM]  [nvarchar(5)]  NULL,--�ڿ������ ��ţ�JCBX040214 ֵ�ռ䣺GB/T13745 
	[QKZTM]  [nvarchar(1)]  NULL,--�ڿ�״̬�� ��ţ�JCBX040215 ֵ�ռ䣺JY/T1001TSQKZTͼ���ڿ�״̬���� 
CONSTRAINT [PK_JCBX0402] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[QKBH] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

