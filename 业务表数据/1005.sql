--�ռ�����STAnalyzer  ��������SqlBuilder0.1
--ѧУ�������������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZXX0101]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZXX0101](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[XXDM]  [nvarchar(10)]  NOT NULL,--ѧУ���� ��ţ�JCXX010101 ������JCXX010101 XXDM ѧУ���� C 10 M ѧУ����������ʶ�� NULL NULL
	[XXMC]  [nvarchar(60)]  NOT NULL,--ѧУ���� ��ţ�JCXX010102 ������JCTB010302 DWMC ��λ���� C 60 NULL NULL NULL NULL
	[XXYWMC]  [nvarchar(180)]  NULL,--ѧУӢ������ ��ţ�JCXX010103 ������JCTB010303 DWYWMC ��λӢ������ C 180 NULL NULL NULL NULL
	[XXJBZM]  [nvarchar(3)]  NOT NULL,--ѧУ�ٰ����� ��ţ�JCXX010110 ������JCXX010110 XXJBZM ѧУ�ٰ����� C 3 M JY/T1001XXJYJGJBZѧУ�������������ٰ��ߴ��� NULL NULL
	[XXZGBMM]  [nvarchar(3)]  NOT NULL,--ѧУ���ܲ����� ��ţ�JCXX010111 ������JCXX010111 XXZGBMM ѧУ���ܲ����� C 3 M JY/T1001XXJYJGJBZѧУ�������������ٰ��ߴ��� NULL NULL
	[XXDZ]  [nvarchar(180)]  NOT NULL,--ѧУ��ַ ��ţ�JCXX010104 ������JCTB010102 TXDZ ͨ�ŵ�ַ C 180 NULL NULL ָ����ʡ����������ֱϽ�У�/�أ��С��ݣ�/�أ������죩/�磨��/�֣��壩/���ƺŵ���ϸ��ַ NULL
	[XXYZBM]  [nvarchar(6)]  NOT NULL,--ѧУ�������� ��ţ�JCXX010105 ������JCTB010101 YZBM �������� C 6 NULL NULL NULL NULL
	[XZQHM]  [nvarchar(6)]  NOT NULL,--���������� ��ţ�JCXX010106 ������JCXX010106 XZQHM ���������� C 6 M GB/T2260 ѧУ���ڵ����������� NULL
	[JXNY]  [nvarchar(6)]  NOT NULL,--��У���� ��ţ�JCXX010107 ������JCTB010202 NY ���� C 6 NULL GB/T7408 ��ʽ��YYYYMM���磺200604��ʾ2006��4�� NULL
	[XQR]  [nvarchar(60)]  NOT NULL,--У���� ��ţ�JCXX010108 ������JCXX010108 XQR У���� C 60 O NULL ָѧУ��У���ջ�У���ʱ��� NULL
	[CLBJ]  [text]  NULL,--�������� ��ţ�ZZXX010101 ����/������ѧУ�����ı��� 
	[LSYG]  [text]  NULL,--��ʷ�ظ� ��ţ�JCXX010122 ������JCXX010122 LSYG ��ʷ�ظ� T NULL O NULL ָѧУ��չ�����е��ش�仯���¼� NULL
	[XXXQS]  [decimal(2)]  NOT NULL,--ѧУУ���� ��ţ�ZZXX010102 
	[XXPGLX]  [nvarchar(1)]  NOT NULL,--ѧУ�������� ��ţ�ZZXX010103 ֵ�ռ䣺PGQK����������� 
	[XXPGQKSM]  [text]  NULL,--ѧУ�������˵�� ��ţ�ZZXX010104 
	[ZYDZ]  [nvarchar(60)]  NOT NULL,--��ҳ��ַ ��ţ�JCXX010121 ������JCTB010107 WLDZ �����ַ C 60 NULL NULL ����ҳ�����͡�΢����ַ NULL
	[FDDBRH]  [nvarchar(20)]  NOT NULL,--���������˺� ��ţ�JCXX010112 ������JCTB020120 RYH ��Ա�� C 20 NULL NULL ѧ�Ż򹤺� NULL
	[FRZSH]  [nvarchar(20)]  NOT NULL,--����֤��� ��ţ�JCXX010113 ������JCXX010113 FRZSH ����֤��� C 20 M NULL NULL NULL
	[LXDH]  [nvarchar(30)]  NOT NULL,--��ϵ�绰 ��ţ�JCXX010118 ������JCTB010103 DH �绰 C 30 NULL NULL ���绰���� NULL
	[CZDH]  [nvarchar(30)]  NOT NULL,--����绰 ��ţ�JCXX010119 ������JCTB010105 CZDH ����绰 C 30 NULL NULL NULL NULL
	[DZXX]  [nvarchar(40)]  NOT NULL,--�������� ��ţ�JCXX010120 ������JCTB010106 DZXX �������� C 40 NULL NULL �����ʼ���ַ NULL
CONSTRAINT [PK_ZZXX0101] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[XXDM] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--ѧУ��Ҫ�쵼��ְ��Ϣ���������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZXX0102]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZXX0102](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[LDXM]  [nvarchar(36)]  NOT NULL,--�쵼���� ��ţ�ZZXX010201 ������JCTB020101 XM ���� C 36 NULL NULL �������񻪣������ᡤ����������ľ NULL
	[ZYLDZW]  [nvarchar(1)]  NOT NULL,--��Ҫ�쵼ְ�� ��ţ�ZZXX010202 ֵ�ռ䣺ZYZWLB��Ҫְ�������� 
	[RZKSRQ]  [nvarchar(8)]  NOT NULL,--��ְ��ʼ���� ��ţ�ZZXX010203 ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[RZJSRQ]  [nvarchar(8)]  NOT NULL,--��ְ�������� ��ţ�ZZXX010204 ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[GZNR]  [text]  NULL,--�������� ��ţ�ZZXX010205 ����/����������ְ�������ݵ����� 
	[RZZTM]  [nvarchar(10)]  NOT NULL,--��ְ״̬�� ��ţ�ZZXX010206 ֵ�ռ䣺GB/T14946.1 
	[RZPJ]  [text]  NULL,--��ְ���� ��ţ�ZZXX010207 
	[FGGZ]  [nvarchar(30)]  NOT NULL,--�ֹܹ��� ��ţ�ZZXX010208 
CONSTRAINT [PK_ZZXX0102] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[LDXM] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--У���������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZXX02]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZXX02](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[XQDM]  [nvarchar(2)]  NOT NULL,--У������ ��ţ�ZZXX020001 ������JCXX010201 XQH У���� C 2 M NULL ѧУ�Ա� NULL
	[XQMC]  [nvarchar(30)]  NOT NULL,--У������ ��ţ�JCXX010202 ������JCXX010202 XQMC У������ C 30 M NULL NULL NULL
	[XQDZ]  [nvarchar(180)]  NOT NULL,--У����ַ ��ţ�JCXX010203 ������JCTB010102 TXDZ ͨ�ŵ�ַ C 180 NULL NULL ָ����ʡ����������ֱϽ�У�/�أ��С��ݣ�/�أ������죩/�磨��/�֣��壩/���ƺŵ���ϸ��ַ NULL
	[XQLXDH]  [nvarchar(30)]  NOT NULL,--У����ϵ�绰 ��ţ�JCXX010205 ������JCTB010103 DH �绰 C 30 NULL NULL ���绰���� NULL
	[XQFZRH]  [nvarchar(20)]  NOT NULL,--У�������˺� ��ţ�JCXX010207 ������JCTB020120 RYH ��Ա�� C 20 NULL NULL ѧ�Ż򹤺� NULL
	[DZYJ]  [nvarchar(40)]  NOT NULL,--�����ʼ� ��ţ�ZZXX020002 ������JCTB010106 DZXX �������� C 40 NULL NULL �����ʼ���ַ NULL
	[XQYZBM]  [nvarchar(6)]  NOT NULL,--У���������� ��ţ�JCXX010204 ������JCTB010101 YZBM �������� C 6 NULL NULL NULL NULL
	[XQSZDXZQHM]  [nvarchar(6)]  NULL,--У�����ڵ����������� ��ţ�ZZXX020003 ֵ�ռ䣺GB/T2260 
	[XQMJ]  [decimal(20)]  NOT NULL,--У����� ��ţ�ZZXX020004 
	[XQJZMJ]  [decimal(20)]  NULL,--У��������� ��ţ�ZZXX020005 
	[XQJXKYSBZZ]  [money]  NULL,--У����ѧ���������豸��ֵ ��ţ�ZZXX020006 
	[XQGDZCZZ]  [money]  NULL,--У���̶��ʲ���ֵ ��ţ�ZZXX020007 
CONSTRAINT [PK_ZZXX02] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[XQDM] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--У�ڻ����������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZXX03]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZXX03](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[JGH]  [nvarchar(6)]  NOT NULL,--������ ��ţ�ZZXX030001 ����/������ѧУ�Ա� 
	[JGMC]  [nvarchar(100)]  NOT NULL,--�������� ��ţ�ZZXX030002 
	[JGYWMC]  [nvarchar(100)]  NULL,--����Ӣ������ ��ţ�ZZXX030003 
	[JGJC]  [nvarchar(50)]  NULL,--������� ��ţ�ZZXX030004 
	[JGJP]  [nvarchar(20)]  NULL,--������ƴ ��ţ�ZZXX030005 
	[JGDZ]  [nvarchar(180)]  NULL,--������ַ ��ţ�ZZXX030006 ������JCTB010102 TXDZ ͨ�ŵ�ַ C 180 NULL NULL ָ����ʡ����������ֱϽ�У�/�أ��С��ݣ�/�أ������죩/�磨��/�֣��壩/���ƺŵ���ϸ��ַ NULL
	[DSSJJGH]  [nvarchar(6)]  NOT NULL,--�����ϼ������� ��ţ�ZZXX030007 ����/�������������ڹ���λ�ţ�һ�����ŵ��ϼ�������Ϊ000000 
	[LSXQH]  [nvarchar(2)]  NULL,--����У���� ��ţ�ZZXX030008 ����/������ѧУ�����У������Ҫ˵������������У�� ������ZZXX020001 XQDM У������ C 2 M NULL NULL JCXX010201
	[JGYXBS]  [nvarchar(1)]  NOT NULL,--������Ч��ʶ ��ţ�ZZXX030009 ֵ�ռ䣺JY/T1001SFBZ�Ƿ��־���� 
	[SFST]  [nvarchar(1)]  NOT NULL,--�Ƿ�ʵ�� ��ţ�ZZXX030010 ֵ�ռ䣺JY/T1001SFBZ�Ƿ��־���� 
	[JLNY]  [nvarchar(6)]  NULL,--�������� ��ţ�ZZXX030011 ������JCTB010202 NY ���� C 6 NULL GB/T7408 ��ʽ��YYYYMM���磺200604��ʾ2006��4�� NULL
	[JGYZBM]  [nvarchar(6)]  NULL,--������������ ��ţ�ZZXX030012 ������JCTB010101 YZBM �������� C 6 NULL NULL NULL NULL
	[FZRH]  [nvarchar(20)]  NOT NULL,--�����˺� ��ţ�ZZXX030013 ������JCTB020120 RYH ��Ա�� C 20 NULL NULL ѧ�Ż򹤺� NULL
CONSTRAINT [PK_ZZXX03] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[JGH] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--ѧУ�����ƶ��������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZXX04]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZXX04](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[ZDBH]  [nvarchar(10)]  NOT NULL,--�ƶȱ�� ��ţ�ZZXX040001 
	[ZDMC]  [nvarchar(80)]  NOT NULL,--�ƶ����� ��ţ�ZZXX040002 
	[FJMC]  [nvarchar(80)]  NOT NULL,--�������� ��ţ�ZZXX040003 
	[BBJG]  [nvarchar(6)]  NOT NULL,--�䲼���� ��ţ�ZZXX040004 ����/�������䲼�����ƶȵ�У�ڻ��������ţ�000000��ʾѧУ ������ZZXX030001 JGH ������ C 6 M NULL ѧУ�Ա� NULL
	[BBRQ]  [nvarchar(8)]  NOT NULL,--�䲼���� ��ţ�ZZXX040005 ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[YSDX]  [nvarchar(40)]  NOT NULL,--Լ������ ��ţ�ZZXX040006 ����/��������ѧ������ʦ 
	[ZDGJC]  [nvarchar(20)]  NULL,--�ƶȹؼ��� ��ţ�ZZXX040007 ����/�������á������ָ��Ķ�ؼ��� 
CONSTRAINT [PK_ZZXX04] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[ZDBH] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--ѧ���������������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZXS0101]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZXS0101](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[XH]  [nvarchar(20)]  NOT NULL,--ѧ�� ��ţ�JCXS010101 ������JCTB020120 RYH ��Ա�� C 20 NULL NULL ѧ�Ż򹤺� NULL
	[XM]  [nvarchar(36)]  NOT NULL,--���� ��ţ�JCTB020101 ������JCTB020101 XM ���� C 36 NULL NULL �������񻪣������ᡤ����������ľ NULL
	[YWXM]  [nvarchar(60)]  NULL,--Ӣ������ ��ţ�JCTB020102 ������JCTB020102 YWXM Ӣ������ C 60 NULL NULL ����ChristopherFrancisPatten NULL
	[XMPY]  [nvarchar(60)]  NOT NULL,--����ƴ�� ��ţ�JCTB020103 ������JCTB020103 XMPY ����ƴ�� C 60 NULL NULL ����ZHANGZhenhua�� NULL
	[CYM]  [nvarchar(36)]  NULL,--������ ��ţ�JCTB020104 ������JCTB020104 CYM ������ C 36 NULL NULL ָ������ʽʹ�ù������� NULL
	[SFZJLXM]  [nvarchar(1)]  NOT NULL,--���֤�������� ��ţ�JCTB020111 ������JCTB020111 SFZJLXM ���֤�������� C 1 NULL JY/T1001SFZJLX���֤�����ʹ��� NULL NULL
	[SFZJH]  [nvarchar(20)]  NOT NULL,--���֤���� ��ţ�JCTB020112 ������JCTB020112 SFZJH ���֤���� C 20 NULL NULL �磺������ݺ��� NULL
	[XBM]  [nvarchar(1)]  NOT NULL,--�Ա��� ��ţ�JCTB020105 ������JCTB020105 XBM �Ա��� C 1 NULL GB/T2261.1 NULL NULL
	[XXM]  [nvarchar(1)]  NULL,--Ѫ���� ��ţ�JCTB020118 ������JCTB020118 XXM Ѫ���� C 1 NULL JY/T1001XXѪ�ʹ��� NULL NULL
	[CSRQ]  [nvarchar(8)]  NOT NULL,--�������� ��ţ�JCTB020106 ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[CSDM]  [nvarchar(6)]  NOT NULL,--�������� ��ţ�JCTB020107 ������JCTB020107 CSDM �������� C 6 NULL GB/T2260 NULL NULL
	[JG]  [nvarchar(20)]  NOT NULL,--���� ��ţ�JCTB020108 ������JCTB020108 JG ���� C 20 NULL NULL NULL NULL
	[MZM]  [nvarchar(2)]  NOT NULL,--������ ��ţ�JCTB020109 ������JCTB020109 MZM ������ C 2 NULL GB/T3304 ȡ��2λ���ִ��룬�磺01���壬02�ɹ��� NULL
	[HYZKM]  [nvarchar(2)]  NOT NULL,--����״���� ��ţ�JCTB020113 ������JCTB020113 HYZKM ����״���� C 2 NULL GB/T2261.2 NULL NULL
	[XYZJM]  [nvarchar(2)]  NULL,--�����ڽ��� ��ţ�JCTB020117 ������JCTB020117 XYZJM �����ڽ��� C 2 NULL GA214.12 NULL NULL
	[GATQWM]  [nvarchar(2)]  NULL,--�۰�̨������ ��ţ�JCTB020114 ������JCTB020114 GATQWM �۰�̨������ C 2 NULL JY/T1001GATQW�۰�̨������� NULL NULL
	[JKZKM]  [nvarchar(1)]  NULL,--����״���� ��ţ�JCTB020116 ������JCTB020116 JKZKM ����״���� C 1 NULL GB/T2261.3 ����1λ���ִ��� NULL
	[ZZMMM]  [nvarchar(2)]  NOT NULL,--������ò�� ��ţ�JCTB020115 ������JCTB020115 ZZMMM ������ò�� C 2 NULL GB/T4762 �ɲ��ü�ƣ��磺01�й���Ա��04����Ա NULL
	[HKSZDXZQHM]  [nvarchar(6)]  NOT NULL,--�������ڵ����������� ��ţ�ZZXS010101 ֵ�ռ䣺GB/T2260 
	[HKLBM]  [nvarchar(1)]  NOT NULL,--��������� ��ţ�ZZXS010102 ֵ�ռ䣺GA324.1 ����/�������磺0δ�䳣ס��1��ũҵ��ͥ2ũҵ��ͥ���� 
	[SFSLDRK]  [nvarchar(1)]  NOT NULL,--�Ƿ��������˿� ��ţ�ZZXS010103 ֵ�ռ䣺JY/T1001SFBZ�Ƿ��־���� 
	[GJDQM]  [nvarchar(3)]  NULL,--����/������ ��ţ�JCTB020110 ������JCTB020110 GJDQM ����/������ C 3 NULL GB/T2659 ��������ĸ���룬�磺CHN�й���USA���� NULL
	[TC]  [text]  NULL,--�س� ��ţ�ZZXS010104 ����/������ָĳһ����������������� 
	[XSLXDH]  [nvarchar(30)]  NULL,--ѧ����ϵ�绰 ��ţ�ZZXS010105 ����/���������˵���ϵ�绰���� ������JCTB010104 YDDH �ƶ��绰 C 30 NULL NULL NULL NULL
	[WLDZ]  [nvarchar(60)]  NULL,--�����ַ ��ţ�JCTB010107 ������JCTB010107 WLDZ �����ַ C 60 NULL NULL ����ҳ�����͡�΢����ַ NULL
	[JSTXH]  [nvarchar(40)]  NULL,--��ʱͨѶ�� ��ţ�JCTB010108 ������JCTB010108 JSTXH ��ʱͨѶ�� C 40 NULL NULL ��MSN/QQ�Ⱥ��� NULL
	[DZXX]  [nvarchar(40)]  NULL,--�������� ��ţ�JCTB010106 ������JCTB010106 DZXX �������� C 40 NULL NULL �����ʼ���ַ NULL
	[ZP]  [nvarchar(200)]  NULL,--��Ƭ ��ţ�JCTB020119 ������JCTB020119 ZP ��Ƭ B NULL NULL NULL �����������֤����Ƭ NULL
CONSTRAINT [PK_ZZXS0101] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[XH] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--ѧ��ָ�ƴ���Ϣ���������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZXS0102]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZXS0102](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[DYZWXX]  [nvarchar(15)]  NOT NULL,--��һָ����Ϣ ��ţ�ZZXS010201 ֵ�ռ䣺GA426.7 
	[DEZWXX]  [nvarchar(15)]  NULL,--�ڶ�ָ����Ϣ ��ţ�ZZXS010202 ������ZZXS010201 DYZWXX ��һָ����Ϣ C 15 M GA426.7 NULL NULL
	[DSZWXX]  [nvarchar(15)]  NULL,--����ָ����Ϣ ��ţ�ZZXS010203 ������ZZXS010201 DYZWXX ��һָ����Ϣ C 15 M GA426.7 NULL NULL
	[CJRQ]  [nvarchar(8)]  NULL,--�ɼ����� ��ţ�ZZXS010204 ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[CJBZ]  [text]  NULL,--�ɼ���ע ��ţ�ZZXS010205 
CONSTRAINT [PK_ZZXS0102] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[DYZWXX] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--��ͥ�������������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZXS0201]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZXS0201](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[JTZZ]  [nvarchar(180)]  NOT NULL,--��ͥסַ ��ţ�JCTB020601 ������JCTB010102 TXDZ ͨ�ŵ�ַ C 180 NULL NULL ָ����ʡ����������ֱϽ�У�/�أ��С��ݣ�/�أ������죩/�磨��/�֣��壩/���ƺŵ���ϸ��ַ NULL
	[JTYZBM]  [nvarchar(6)]  NOT NULL,--��ͥ�������� ��ţ�JCTB020602 ������JCTB010101 YZBM �������� C 6 NULL NULL NULL NULL
	[JTDH]  [nvarchar(30)]  NULL,--��ͥ�绰 ��ţ�JCTB020603 ������JCTB010103 DH �绰 C 30 NULL NULL ���绰���� NULL
	[JTLXR]  [nvarchar(36)]  NOT NULL,--��ͥ��ϵ�� ��ţ�ZZXS020101 ������JCTB020101 XM ���� C 36 NULL NULL �������񻪣������ᡤ����������ľ NULL
	[JTDZXX]  [nvarchar(40)]  NULL,--��ͥ�������� ��ţ�JCTB020604 ������JCTB010106 DZXX �������� C 40 NULL NULL �����ʼ���ַ NULL
	[JTRK]  [decimal(2)]  NULL,--��ͥ�˿� ��ţ�JCTB020901 ������JCTB020901 JTRK ��ͥ�˿� N 2 O NULL ָ���˼�ͥ�����˿��� NULL
	[JTZYSRLY]  [nvarchar]  NULL,--��ͥ��Ҫ������Դ ��ţ�ZZXS020102 
	[JTYSRJE]  [money]  NULL,--��ͥ�������� ��ţ�ZZXS020103 
	[JTNSRJE]  [money]  NULL,--��ͥ�������� ��ţ�ZZXS020104 
	[LJZJHCZ]  [nvarchar(30)]  NULL,--��������վ ��ţ�ZZXS020105 
CONSTRAINT [PK_ZZXS0201] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[JTZZ] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--��ͥ��Ա��Ϣ���������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZXS0202]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZXS0202](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[XM]  [nvarchar(36)]  NOT NULL,--���� ��ţ�JCTB020101 ������JCTB020101 XM ���� C 36 NULL NULL �������񻪣������ᡤ����������ľ NULL
	[GXM]  [nvarchar(2)]  NOT NULL,--��ϵ�� ��ţ�JCTB020701 ������JCTB020701 GXM ��ϵ�� C 2 M NULL NULL NULL
	[JTCYZYM]  [nvarchar(3)]  NOT NULL,--��ͥ��Աְҵ�� ��ţ�ZZXS020201 ֵ�ռ䣺GB/T6565 ����/������0���һ��ء���Ⱥ��֯����ҵ����ҵ��λ�����ˣ�01�й�����������ίԱ��͵ط�������֯�����ˣ�021����Ȩ�����ؼ��乤������������ 
	[SZDW]  [nvarchar(60)]  NULL,--���ڵ�λ ��ţ�ZZXS020202 ������JCTB010302 DWMC ��λ���� C 60 NULL NULL NULL NULL
	[ZZMMM]  [nvarchar(2)]  NULL,--������ò�� ��ţ�JCTB020115 ������JCTB020115 ZZMMM ������ò�� C 2 NULL GB/T4762 �ɲ��ü�ƣ��磺01�й���Ա��04����Ա NULL
	[DH]  [nvarchar(30)]  NULL,--�绰 ��ţ�JCTB010103 ������JCTB010103 DH �绰 C 30 NULL NULL ���绰���� NULL
	[YDDH]  [nvarchar(30)]  NULL,--�ƶ��绰 ��ţ�JCTB010104 ������JCTB010104 YDDH �ƶ��绰 C 30 NULL NULL NULL NULL
CONSTRAINT [PK_ZZXS0202] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[XM] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--ѧ���ɼ��������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZXS06]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZXS06](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[KCH]  [nvarchar(6)]  NOT NULL,--�γ̺� ��ţ�ZZJX010201 ������ZZJX010201 KCH �γ̺� C 6 M NULL ѧУ�Ա� NULL
	[KCMC]  [nvarchar(100)]  NOT NULL,--�γ����� ��ţ�ZZJX010202 ������ZZJX010202 KCMC �γ����� C 100 M NULL NULL NULL
	[XF]  [decimal(2,1)]  NOT NULL,--ѧ�� ��ţ�ZZJX010206 ������ZZJX010206 XF ѧ�� N 21 M NULL �磺2.5 NULL
	[XQMC]  [nvarchar(10)]  NOT NULL,--ѧ������ ��ţ�ZZJX010301 ������ZZJX010301 XQMC ѧ������ C 10 M NULL ѧУ�Աࡣ���磺2010�괺��ѧ�ڣ�2009���＾ѧ�� NULL
	[PSCJ]  [decimal(5,1)]  NULL,--ƽʱ�ɼ� ��ţ�ZZXS060101 
	[CJ]  [decimal(5,1)]  NOT NULL,--�ɼ� ��ţ�ZZXS060102 
	[KSXZ]  [nvarchar(2)]  NULL,--�������� ��ţ�ZZXS060103 ֵ�ռ䣺JY/T1001KSXZ�������ʴ���� 
	[RKJGH]  [nvarchar(20)]  NULL,--�ον̹��� ��ţ�ZZXS060104 ������JCTB020120 RYH ��Ա�� C 20 NULL NULL ѧ�Ż򹤺� NULL
	[CJLRJGH]  [nvarchar(20)]  NULL,--�ɼ�¼��̹��� ��ţ�ZZXS060105 ������JCTB020120 RYH ��Ա�� C 20 NULL NULL ѧ�Ż򹤺� NULL
	[CJLRRQ]  [nvarchar(8)]  NOT NULL,--�ɼ�¼������ ��ţ�ZZXS060106 ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
CONSTRAINT [PK_ZZXS06] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[KCH] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--ѧ���춯���������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZXS0702]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZXS0702](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[YDLBM]  [nvarchar(2)]  NOT NULL,--�춯����� ��ţ�JCXS020201 ������JCXS020201 YDLBM �춯����� C 2 M JY/T1001XJYDLBѧ���춯������ NULL NULL
	[YDRQ]  [nvarchar(8)]  NOT NULL,--�춯���� ��ţ�JCXS020202 ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[YDYYM]  [nvarchar(2)]  NOT NULL,--�춯ԭ���� ��ţ�JCXS020203 ������JCXS020203 YDYYM �춯ԭ���� C 2 M JY/T1001XJYDYYѧ���춯ԭ����� NULL NULL
	[SPRQ]  [nvarchar(8)]  NULL,--�������� ��ţ�JCXS020204 ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[SPWH]  [nvarchar(24)]  NULL,--�����ĺ� ��ţ�JCXS020205 ������JCXS020205 SPWH �����ĺ� C 24 O NULL ��������ʽ�ĺţ�����ʽ�ĺŲ��� NULL
	[JBRGH]  [nvarchar(20)]  NULL,--�����˹��� ��ţ�ZZXS070201 ������JCTB020120 RYH ��Ա�� C 20 NULL NULL ѧ�Ż򹤺� NULL
	[YDLYXXM]  [nvarchar(10)]  NULL,--�춯��ԴѧУ�� ��ţ�JCXS020206 ������JCXX010101 XXDM ѧУ���� C 10 M ѧУ����������ʶ�� NULL NULL
	[YDQXXXM]  [nvarchar(10)]  NULL,--�춯ȥ��ѧУ�� ��ţ�JCXS020207 ������JCXX010101 XXDM ѧУ���� C 10 M ѧУ����������ʶ�� NULL NULL
	[YDSM]  [text]  NULL,--�춯˵�� ��ţ�JCXS020208 ������JCXS020208 YDSM �춯˵�� T NULL O NULL NULL NULL
	[YZYM]  [nvarchar(6)]  NOT NULL,--ԭרҵ�� ��ţ�JCXS020210 ������JCTB010407 ZYM רҵ�� C 6 NULL ѧλ������˲�����ѧ��Ŀ¼רҵѧλ������˲�����Ŀ¼��ͨ�ߵ�ѧУ����רҵĿ¼��ͨ�ߵ�ѧУ��ְ��ר����ָ����רҵĿ¼�����У��е�ְҵѧУרҵĿ¼ NULL NULL
	[YBH]  [nvarchar(10)]  NOT NULL,--ԭ��� ��ţ�JCXS020211 ������JCXX020001 BH ��� C 10 M NULL ѧУ�Ա� NULL
	[YNJ]  [nvarchar(10)]  NOT NULL,--ԭ�꼶 ��ţ�JCXS020212 ������JCTB010401 NJ �꼶 C 10 NULL NULL NULL NULL
	[XZYM]  [nvarchar(6)]  NOT NULL,--��רҵ�� ��ţ�JCXS020215 ������JCTB010407 ZYM רҵ�� C 6 NULL ѧλ������˲�����ѧ��Ŀ¼רҵѧλ������˲�����Ŀ¼��ͨ�ߵ�ѧУ����רҵĿ¼��ͨ�ߵ�ѧУ��ְ��ר����ָ����רҵĿ¼�����У��е�ְҵѧУרҵĿ¼ NULL NULL
	[XBH]  [nvarchar(10)]  NOT NULL,--�ְ�� ��ţ�JCXS020216 ������JCXX020001 BH ��� C 10 M NULL ѧУ�Ա� NULL
	[XNJ]  [nvarchar(10)]  NOT NULL,--���꼶 ��ţ�JCXS020217 ������JCTB010401 NJ �꼶 C 10 NULL NULL NULL NULL
CONSTRAINT [PK_ZZXS0702] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[YDLBM] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--ѧ��ע����Ϣ���������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZXS0703]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZXS0703](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[ZCZKM]  [nvarchar(1)]  NOT NULL,--ע��״���� ��ţ�ZZXS070301 ֵ�ռ䣺JY/T1001ZCZKע��״������ ����/������1ע��2����3δ���� 
	[ZCRQ]  [nvarchar(8)]  NOT NULL,--ע������ ��ţ�ZZXS070302 
	[BDRQ]  [nvarchar(8)]  NOT NULL,--�������� ��ţ�ZZXS070303 
	[WZCYY]  [nvarchar(100)]  NOT NULL,--δע��ԭ�� ��ţ�ZZXS070304 
	[WZCWBDQX]  [nvarchar(40)]  NOT NULL,--δע��/δ����ȥ�� ��ţ�ZZXS070305 
	[SFQJ]  [nvarchar(1)]  NOT NULL,--�Ƿ���� ��ţ�ZZXS070306 ֵ�ռ䣺JY/T1001SFBZ�Ƿ��־���� 
	[WASZCXQM]  [nvarchar(1)]  NOT NULL,--δ��ʱע��ѧ���� ��ţ�ZZXS070307 ������JCTB010206 XQM ѧ���� C 1 NULL JY/T1001XQѧ�ڴ��� NULL NULL
CONSTRAINT [PK_ZZXS0703] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[ZCZKM] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--ѧ���������ѷ��Ź������������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZXS1001]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZXS1001](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[SFZJH]  [nvarchar(20)]  NOT NULL,--���֤���� ��ţ�JCTB020112 ������JCTB020112 SFZJH ���֤���� C 20 NULL NULL �磺������ݺ��� NULL
	[SZRQ]  [nvarchar(8)]  NOT NULL,--�������� ��ţ�ZZXS100101 ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[SZLX]  [nvarchar(1)]  NOT NULL,--�������� ��ţ�ZZXS100102 ֵ�ռ䣺XSSZLXѧ�������������� 
	[ZZJFLYM]  [nvarchar(1)]  NOT NULL,--����������Դ�� ��ţ�ZZXS100103 ֵ�ռ䣺JY/T1001JLZZZJLY���������ʽ���Դ���� 
	[ZZJE]  [money]  NULL,--������� ��ţ�ZZXS100104 
	[ZZDWHGR]  [nvarchar(60)]  NULL,--������λ����� ��ţ�ZZXS100105 
	[YHKH]  [nvarchar(30)]  NULL,--���п��� ��ţ�ZZXS100106 
	[FFFSSM]  [nvarchar(200)]  NULL,--���ŷ�ʽ˵�� ��ţ�ZZXS100107 ����/���������ûʹ�����п�����Ҫ˵�����ŷ�ʽ 
CONSTRAINT [PK_ZZXS1001] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[SFZJH] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--��ѧ�����������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZXS1002]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZXS1002](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[JXJMC]  [nvarchar(30)]  NOT NULL,--��ѧ������ ��ţ�ZZXS100201 
	[JXJBH]  [nvarchar(2)]  NOT NULL,--��ѧ���� ��ţ�ZZXS100202 
	[JXJDJ]  [nvarchar(20)]  NOT NULL,--��ѧ��ȼ� ��ţ�ZZXS100203 
	[JXJLXM]  [nvarchar(2)]  NOT NULL,--��ѧ�������� ��ţ�ZZXS100204 ֵ�ռ䣺JY/T1001JXJLX��ѧ�����ʹ��� 
	[JXJE]  [money]  NOT NULL,--��ѧ��� ��ţ�ZZXS100205 ����/��������λ��Ԫ 
	[HJNY]  [nvarchar(6)]  NOT NULL,--������ ��ţ�ZZXS100206 ������JCTB010202 NY ���� C 6 NULL GB/T7408 ��ʽ��YYYYMM���磺200604��ʾ2006��4�� NULL
	[ZZDWHGR]  [nvarchar(60)]  NULL,--������λ����� ��ţ�ZZXS100105 ����/���������轱ѧ��ĵ�λ������ ������ZZXS100105 ZZDWHGR ������λ����� C 60 O NULL NULL NULL
	[JXJLYM]  [nvarchar(1)]  NULL,--��ѧ����Դ�� ��ţ�ZZXS100207 ֵ�ռ䣺JY/T1001JLZZZJLY���������ʽ���Դ���� 
CONSTRAINT [PK_ZZXS1002] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[JXJMC] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--��ѧ�����������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZXS1003]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZXS1003](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[ZKBMH]  [nvarchar(10)]  NULL,--�п������� ��ţ�ZZXS100301 
	[YHKH]  [nvarchar(30)]  NOT NULL,--���п��� ��ţ�ZZXS100106 ������ZZXS100106 YHKH ���п��� C 30 O NULL NULL NULL
	[ZXJE]  [money]  NOT NULL,--��ѧ��� ��ţ�ZZXS100302 ����/��������λ��Ԫ 
	[SFNY]  [nvarchar(6)]  NOT NULL,--ʼ������ ��ţ�ZZXS100303 ������JCTB010202 NY ���� C 6 NULL GB/T7408 ��ʽ��YYYYMM���磺200604��ʾ2006��4�� NULL
	[TFNY]  [nvarchar(6)]  NOT NULL,--ͣ������ ��ţ�ZZXS100304 ������JCTB010202 NY ���� C 6 NULL GB/T7408 ��ʽ��YYYYMM���磺200604��ʾ2006��4�� NULL
	[TFYY]  [nvarchar(80)]  NOT NULL,--ͣ��ԭ�� ��ţ�ZZXS100305 ����/������ͣ��ԭ��˵�� 
	[ZXJMC]  [nvarchar(60)]  NOT NULL,--��ѧ������ ��ţ�ZZXS100306 
	[ZZDWHGR]  [nvarchar(60)]  NULL,--������λ����� ��ţ�ZZXS100105 ������ZZXS100105 ZZDWHGR ������λ����� C 60 O NULL NULL NULL
	[ZXJLX]  [nvarchar(1)]  NOT NULL,--��ѧ������ ��ţ�ZZXS100307 ֵ�ռ䣺ZXJFL��ѧ�������� 
CONSTRAINT [PK_ZZXS1003] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--��ѧ������Ϣ���������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZXS1004]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZXS1004](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[DKSQNY]  [nvarchar(6)]  NOT NULL,--������������ ��ţ�ZZXS100401 ������JCTB010202 NY ���� C 6 NULL GB/T7408 ��ʽ��YYYYMM���磺200604��ʾ2006��4�� NULL
	[DKHTH]  [nvarchar(12)]  NOT NULL,--�����ͬ�� ��ţ�ZZXS100402 
	[DKZJE]  [money]  NOT NULL,--�����ܽ�� ��ţ�ZZXS100403 ����/��������λ��Ԫ 
	[DKNS]  [decimal(3,1)]  NOT NULL,--�������� ��ţ�ZZXS100404 
	[SQHKR]  [nvarchar(8)]  NOT NULL,--���ڻ����� ��ţ�ZZXS100405 ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[HKZZR]  [nvarchar(8)]  NOT NULL,--������ֹ�� ��ţ�ZZXS100406 ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[JKYTM]  [nvarchar(1)]  NOT NULL,--�����;�� ��ţ�ZZXS100407 ����/������ѧУ���б���ѧ��/�����/ѧ������� 
	[DKYH]  [nvarchar(60)]  NOT NULL,--�������� ��ţ�ZZXS100408 
	[QYR]  [nvarchar(8)]  NOT NULL,--ǩԼ�� ��ţ�ZZXS100409 ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[SFYCXCH]  [nvarchar(1)]  NOT NULL,--�Ƿ�һ���Գ��� ��ţ�ZZXS100410 ֵ�ռ䣺JY/T1001SFBZ�Ƿ��־���� ����/������1һ���Գ���0���ڳ��� 
	[DBFS]  [nvarchar(10)]  NOT NULL,--������ʽ ��ţ�ZZXS100411 ֵ�ռ䣺����/���� 
	[SFYQ]  [nvarchar(1)]  NOT NULL,--�Ƿ����� ��ţ�ZZXS100412 ֵ�ռ䣺JY/T1001SFBZ�Ƿ��־���� 
	[YQNX]  [decimal(2)]  NOT NULL,--�������� ��ţ�ZZXS100413 
	[HDRQ]  [nvarchar(8)]  NOT NULL,--������� ��ţ�ZZXS100414 ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
CONSTRAINT [PK_ZZXS1004] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[DKSQNY] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--��ѧ�����������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZXS1005]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZXS1005](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[MXFXSSFZHM]  [nvarchar(20)]  NOT NULL,--��ѧ��ѧ�����֤���� ��ţ�ZZXS100501 ������JCTB020112 SFZJH ���֤���� C 20 NULL NULL �磺������ݺ��� NULL
	[JMYY]  [nvarchar(60)]  NOT NULL,--����ԭ�� ��ţ�ZZXS100502 
	[JMJE]  [money]  NOT NULL,--������ ��ţ�ZZXS100503 
	[MXFSFNY]  [nvarchar(6)]  NOT NULL,--��ѧ��ʼ������ ��ţ�ZZXS100504 ������JCTB010202 NY ���� C 6 NULL GB/T7408 ��ʽ��YYYYMM���磺200604��ʾ2006��4�� NULL
	[MXFTFNY]  [nvarchar(6)]  NULL,--��ѧ��ͣ������ ��ţ�ZZXS100505 ������JCTB010202 NY ���� C 6 NULL GB/T7408 ��ʽ��YYYYMM���磺200604��ʾ2006��4�� NULL
	[JFLYM]  [nvarchar(1)]  NOT NULL,--������Դ�� ��ţ�ZZXS100506 ֵ�ռ䣺JY/T1001JLZZZJLY���������ʽ���Դ����� 
CONSTRAINT [PK_ZZXS1005] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[MXFXSSFZHM] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--��ʱ���Ѳ������������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZXS1006]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZXS1006](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[BZSQRQ]  [nvarchar(8)]  NOT NULL,--������������ ��ţ�ZZXS100601 ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[SQYY]  [nvarchar(200)]  NOT NULL,--����ԭ�� ��ţ�ZZXS100602 
	[BZJE]  [money]  NOT NULL,--������� ��ţ�ZZXS100603 
	[BZRQ]  [nvarchar(8)]  NOT NULL,--�������� ��ţ�ZZXS100604 ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
CONSTRAINT [PK_ZZXS1006] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[BZSQRQ] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--��ҵ���������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZXS1101]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZXS1101](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[SHRQ]  [nvarchar(8)]  NOT NULL,--������� ��ţ�ZZXS110101 ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[CZZGH]  [nvarchar(20)]  NOT NULL,--�����߹��� ��ţ�ZZXS110102 ������JCTB020120 RYH ��Ա�� C 20 NULL NULL ѧ�Ż򹤺� NULL
	[JSXYNY]  [nvarchar(6)]  NOT NULL,--����ѧҵ���� ��ţ�JCXS030101 ������JCTB010202 NY ���� C 6 NULL GB/T7408 ��ʽ��YYYYMM���磺200604��ʾ2006��4�� NULL
	[JSXYM]  [nvarchar(1)]  NOT NULL,--����ѧҵ�� ��ţ�JCXS030102 ������JCXS030102 JSXYM ����ѧҵ�� C 1 M GB/T14946.1��2009��¼A.27 NULL NULL
	[BYZSH]  [nvarchar(20)]  NULL,--��ҵ֤��� ��ţ�JCXS030104 ������JCTB020508 XLZSH ѧ��֤��� C 20 O NULL NULL NULL
	[FFRQ]  [nvarchar(8)]  NULL,--�������� ��ţ�ZZXS110103 ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[SFZSLQ]  [nvarchar(1)]  NULL,--�Ƿ�֤����ȡ ��ţ�ZZXS110104 ֵ�ռ䣺JY/T1001SFBZ�Ƿ��־���� ����/����������ȡ��δ��ȡ 
CONSTRAINT [PK_ZZXS1101] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[SHRQ] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--��ҵ���������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZXS1102]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZXS1102](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[XYSBH]  [nvarchar(10)]  NULL,--Э������ ��ţ�JCXS030201 ������JCXS030201 XYSBH Э������ C 10 O NULL ѧУ�Ա� NULL
	[XYQDRQ]  [nvarchar(8)]  NOT NULL,--Э��ǩ������ ��ţ�JCXS030202 ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[XYNX]  [nvarchar(1)]  NOT NULL,--Э������ ��ţ�JCXS030203 ������JCXS030203 XYNX Э������ C 1 O NULL NULL NULL
	[BDRQ]  [nvarchar(8)]  NULL,--�������� ��ţ�JCXS030204 ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[BYQXM]  [nvarchar(2)]  NOT NULL,--��ҵȥ���� ��ţ�JCXS030206 ������JCXS030206 BYQXM ��ҵȥ���� C 2 M JY/T1001BYQX��ҵȥ�����JY/T1001GXBYQX��У��ҵȥ����� ��Сѧ����ְѧ������BYQX��ҵȥ����룬��У��ҵ������GXBYQX��У��ҵȥ����� NULL
	[JSDW]  [nvarchar(60)]  NULL,--���յ�λ ��ţ�JCXS030207 ������JCTB010302 DWMC ��λ���� C 60 NULL NULL NULL NULL
	[DWSZDQHM]  [nvarchar(6)]  NULL,--��λ���ڵ������� ��ţ�JCXS030208 ������JCXS030208 DWSZDQHM ��λ���ڵ������� C 6 O GB/T2260 ���յ�λ���ڵ������� NULL
	[DWZGBM]  [nvarchar(60)]  NULL,--��λ���ܲ��� ��ţ�JCXS030209 ������JCTB010302 DWMC ��λ���� C 60 NULL NULL NULL NULL
	[DWLXDH]  [nvarchar(30)]  NULL,--��λ��ϵ�绰 ��ţ�ZZXS110201 ������JCTB010103 DH �绰 C 30 NULL NULL ���绰���� NULL
	[SHDWXZM]  [nvarchar(2)]  NULL,--��ᵥλ������ ��ţ�JCXS030210 ������JCXS030210 SHDWXZM ��ᵥλ������ C 2 O JY/T1001SHDWXZ��ᵥλ���ʴ��� NULL NULL
	[DWJJXZM]  [nvarchar(3)]  NULL,--��λ���������� ��ţ�JCXS030211 ������JCXS030211 DWJJXZM ��λ���������� C 3 O GB/T12402 NULL NULL
	[DWTGDDY]  [text]  NULL,--��λ�ṩ�Ĵ��� ��ţ�JCXS030212 ������JCXS030212 DWTGDDY ��λ�ṩ�Ĵ��� T NULL O NULL NULL NULL
	[DAJSDZ]  [nvarchar(60)]  NOT NULL,--�������յ�ַ ��ţ�JCXS030213 ������JCXS030213 DAJSDZ �������յ�ַ C 60 O NULL NULL NULL
	[JSDYM]  [nvarchar(6)]  NOT NULL,--���յ����� ��ţ�JCXS030214 ������JCTB010101 YZBM �������� C 6 NULL NULL NULL NULL
	[GZGWXZM]  [nvarchar(1)]  NULL,--������λ������ ��ţ�JCXS030215 ������JCXS030215 GZGWXZM ������λ������ C 1 O JY/T1001GZGWXZ������λ���ʴ��� NULL NULL
	[DWHYM]  [nvarchar(4)]  NULL,--��λ��ҵ�� ��ţ�JCXS030216 ������JCXS030216 DWHYM ��λ��ҵ�� C 4 O GB/T4754 NULL NULL
	[BDZH]  [nvarchar(11)]  NULL,--����֤�� ��ţ�JCXS030217 ������JCXS030217 BDZH ����֤�� C 11 O NULL NULL NULL
CONSTRAINT [PK_ZZXS1102] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--���Ż������������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZXS1201]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZXS1201](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[STMC]  [nvarchar(30)]  NOT NULL,--�������� ��ţ�ZZXS120101 
	[STBH]  [nvarchar(4)]  NOT NULL,--���ű�� ��ţ�ZZXS120102 ����/������ѧУ�Ա� 
	[CLRQ]  [nvarchar(8)]  NOT NULL,--�������� ��ţ�ZZXS120103 ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[CLMD]  [nvarchar(60)]  NULL,--����Ŀ�� ��ţ�ZZXS120104 
	[ZYHDXS]  [nvarchar(60)]  NOT NULL,--��Ҫ���ʽ ��ţ�ZZXS120105 
	[CSR]  [nvarchar(36)]  NOT NULL,--��ʼ�� ��ţ�ZZXS120106 ������JCTB020101 XM ���� C 36 NULL NULL �������񻪣������ᡤ����������ľ NULL
	[PZBM]  [nvarchar(30)]  NOT NULL,--��׼���� ��ţ�ZZXS120107 
	[STXZ]  [nvarchar(30)]  NOT NULL,--�������� ��ţ�ZZXS120108 
	[RS]  [decimal(3)]  NOT NULL,--���� ��ţ�ZZXS120109 
	[DQFZR]  [nvarchar(36)]  NOT NULL,--��ǰ������ ��ţ�ZZXS120110 ������JCTB020101 XM ���� C 36 NULL NULL �������񻪣������ᡤ����������ľ NULL
	[FZRDH]  [nvarchar(30)]  NOT NULL,--�����˵绰 ��ţ�ZZXS120111 ������JCTB010104 YDDH �ƶ��绰 C 30 NULL NULL NULL NULL
CONSTRAINT [PK_ZZXS1201] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[STMC] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--ѧ����������������������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZXS1202]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZXS1202](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[STBH]  [nvarchar(4)]  NULL,--���ű�� ��ţ�ZZXS120102 ������ZZXS120102 STBH ���ű�� C 4 M NULL ѧУ�Ա� NULL
	[XM]  [nvarchar(36)]  NOT NULL,--���� ��ţ�JCTB020101 ������JCTB020101 XM ���� C 36 NULL NULL �������񻪣������ᡤ����������ľ NULL
	[CDRQ]  [nvarchar(8)]  NOT NULL,--�������� ��ţ�ZZXS120201 ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[STZW]  [nvarchar(50)]  NOT NULL,--����ְ�� ��ţ�ZZXS120202 
	[GZNR]  [text]  NOT NULL,--�������� ��ţ�ZZXS120203 
	[STPJ]  [text]  NOT NULL,--�������� ��ţ�ZZXS120204 
	[DQZT]  [nvarchar(1)]  NOT NULL,--��ǰ״̬ ��ţ�ZZXS120205 ֵ�ռ䣺JY/T1001SFBZ�Ƿ��־���� ����/������1��ְ0��ְ 
CONSTRAINT [PK_ZZXS1202] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--�����������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZZS01]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZZS01](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[ZKZH]  [nvarchar(15)]  NOT NULL,--׼��֤�� ��ţ�ZZZS010001 ����/������Ŀǰ���õ���9λ�� 
	[KSH]  [nvarchar(20)]  NOT NULL,--������ ��ţ�ZZZS010002 ����/������Ŀǰ���õ���14λ�� 
	[KQXZQHM]  [nvarchar(6)]  NULL,--�������������� ��ţ�ZZZS010003 ֵ�ռ䣺GB/T2260 
	[RXNY]  [nvarchar(6)]  NOT NULL,--��ѧ���� ��ţ�ZZZS010004 ������JCTB010202 NY ���� C 6 NULL GB/T7408 ��ʽ��YYYYMM���磺200604��ʾ2006��4�� NULL
	[YSWGYZM]  [nvarchar(2)]  NOT NULL,--Ӧ����������� ��ţ�ZZZS010005 ֵ�ռ䣺GB/T4880.1 ����/���������ô����1���֣�2��ĸ���룻enӢ�de���� 
	[BKZYM1]  [nvarchar(6)]  NULL,--����רҵ��1 ��ţ�ZZZS010006 ֵ�ռ䣺�е�ְҵѧУרҵĿ¼ 
	[BKZYM2]  [nvarchar(6)]  NULL,--����רҵ��2 ��ţ�ZZZS010007 ֵ�ռ䣺�е�ְҵѧУרҵĿ¼ 
	[BKZYM3]  [nvarchar(6)]  NULL,--����רҵ��3 ��ţ�ZZZS010008 ֵ�ռ䣺�е�ְҵѧУרҵĿ¼ 
	[BKZYM4]  [nvarchar(6)]  NULL,--����רҵ��4 ��ţ�ZZZS010009 ֵ�ռ䣺�е�ְҵѧУרҵĿ¼ 
	[BKZYM5]  [nvarchar(6)]  NULL,--����רҵ��5 ��ţ�ZZZS010010 ֵ�ռ䣺�е�ְҵѧУרҵĿ¼ 
	[BKZYM6]  [nvarchar(6)]  NULL,--����רҵ��6 ��ţ�ZZZS010011 ֵ�ռ䣺�е�ְҵѧУרҵĿ¼ 
	[KSFSM]  [nvarchar(2)]  NOT NULL,--���Է�ʽ�� ��ţ�ZZZS010012 ֵ�ռ䣺JY/T1001KSFS���Է�ʽ���� 
	[BYZX]  [nvarchar(10)]  NOT NULL,--��ҵ��ѧ ��ţ�ZZZS010013 ����/������ѧУ���б�� 
	[BYZXYZBM]  [nvarchar(6)]  NOT NULL,--��ҵ��ѧ�������� ��ţ�ZZZS010014 ������JCTB010101 YZBM �������� C 6 NULL NULL NULL NULL
	[KSTC]  [nvarchar(100)]  NULL,--�����س� ��ţ�ZZZS010015 
	[JLYCC]  [nvarchar(200)]  NULL,--������ʹ� ��ţ�ZZZS010016 
	[JSHJ]  [nvarchar(200)]  NULL,--������ ��ţ�ZZZS010017 ����/���������ྺ������Ϣ 
	[SHGZ]  [nvarchar(200)]  NULL,--��Ṥ�� ��ţ�ZZZS010018 ����/��������Ṥ������Ϣ 
	[TJJL]  [nvarchar(20)]  NULL,--������ ��ţ�ZZZS010019 ����/�������ϸ�/רҵ���� 
	[JZBS]  [nvarchar(20)]  NULL,--���岡ʷ ��ţ�ZZZS010020 ����/����������/���/����/���ಡ 
	[KSJWBS]  [nvarchar(100)]  NULL,--����������ʷ ��ţ�ZZZS010021 
	[SG]  [decimal(5,1)]  NULL,--��� ��ţ�ZZZS010022 ����/��������λ������ 
	[KSSL]  [decimal(3,1)]  NULL,--�������� ��ţ�ZZZS010023 
CONSTRAINT [PK_ZZZS01] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[ZKZH] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--�����ܷ��������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZZS02]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZZS02](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[RXZF]  [decimal(5,1)]  NULL,--��ѧ�ܷ� ��ţ�ZZZS020001 ����/�������п��ܷ֣����ӷ� 
	[GKZF]  [decimal(5,1)]  NULL,--�п��ܷ� ��ţ�ZZZS020002 
	[FJF]  [decimal(5,1)]  NULL,--���ӷ� ��ţ�ZZZS020003 
	[FJFLBM]  [nvarchar(1)]  NULL,--���ӷ������ ��ţ�ZZZS020004 ֵ�ռ䣺JY/T1001FJFLB���ӷ������� ����/������ָ��������ѧ�����������ѧ���������س�������� 
CONSTRAINT [PK_ZZZS02] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--������Ŀ�ɼ��������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZZS03]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZZS03](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[KMM]  [decimal(2)]  NOT NULL,--��Ŀ�� ��ţ�ZZZS030001 ֵ�ռ䣺ZKKM�п���Ŀ���� 
	[ZKFS]  [decimal(5,1)]  NOT NULL,--�п����� ��ţ�ZZZS030002 
CONSTRAINT [PK_ZZZS03] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[KMM] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--����¼ȡ�������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZZS04]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZZS04](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[TZSH]  [nvarchar(30)]  NOT NULL,--֪ͨ��� ��ţ�ZZZS040001 
	[LQZY]  [nvarchar(1)]  NULL,--¼ȡ־Ը ��ţ�ZZZS040002 ����/�������ڼ�־Ըרҵ¼ȡ��1��1־Ը¼ȡ9����רҵ¼ȡ 
	[SYDXZQHM]  [nvarchar(6)]  NULL,--��Դ������������ ��ţ�ZZZS040003 ֵ�ռ䣺GB/T2260 
	[BXZYH]  [decimal(4)]  NOT NULL,--��Уרҵ�� ��ţ�ZZZS040004 ����/������ѧУ���б�� ������ZZJX010101 ZYBH רҵ��� N 4 M NULL ѧУ�Ա� NULL
	[XZ]  [decimal(3,1)]  NOT NULL,--ѧ�� ��ţ�JCTB010402 ������JCTB010402 XZ ѧ�� N 31 NULL NULL ����Ϊ��λ NULL
	[SFGFYL]  [nvarchar(1)]  NOT NULL,--�Ƿ񹫷�ҽ�� ��ţ�ZZZS040005 ֵ�ռ䣺JY/T1001SFBZ�Ƿ��־���� ����/������ѧ���������ṩ 
	[XZBDM]  [nvarchar(10)]  NOT NULL,--��������� ��ţ�ZZJX020201 ������JCXX020001 BH ��� C 10 M NULL ѧУ�Ա� NULL
	[ZSDX]  [nvarchar(3)]  NULL,--�������� ��ţ�ZZZS040006 ֵ�ռ䣺JY/T1001ZSDX����������� 
CONSTRAINT [PK_ZZZS04] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[TZSH] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--��ְ���������������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZJG0101]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZJG0101](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[GH]  [nvarchar(20)]  NOT NULL,--���� ��ţ�JCJG010101 ������JCTB020120 RYH ��Ա�� C 20 NULL NULL ѧ�Ż򹤺� NULL
	[XM]  [nvarchar(36)]  NOT NULL,--���� ��ţ�JCTB020101 ������JCTB020101 XM ���� C 36 NULL NULL �������񻪣������ᡤ����������ľ NULL
	[YWXM]  [nvarchar(60)]  NULL,--Ӣ������ ��ţ�JCTB020102 ������JCTB020102 YWXM Ӣ������ C 60 NULL NULL ����ChristopherFrancisPatten NULL
	[XMPY]  [nvarchar(60)]  NOT NULL,--����ƴ�� ��ţ�JCTB020103 ������JCTB020103 XMPY ����ƴ�� C 60 NULL NULL ����ZHANGZhenhua�� NULL
	[CYM]  [nvarchar(36)]  NULL,--������ ��ţ�JCTB020104 ������JCTB020104 CYM ������ C 36 NULL NULL ָ������ʽʹ�ù������� NULL
	[SFZJLXM]  [nvarchar(1)]  NOT NULL,--���֤�������� ��ţ�JCTB020111 ������JCTB020111 SFZJLXM ���֤�������� C 1 NULL JY/T1001SFZJLX���֤�����ʹ��� NULL NULL
	[SFZJH]  [nvarchar(20)]  NOT NULL,--���֤���� ��ţ�JCTB020112 ������JCTB020112 SFZJH ���֤���� C 20 NULL NULL �磺������ݺ��� NULL
	[CSRQ]  [nvarchar(8)]  NOT NULL,--�������� ��ţ�JCTB020106 ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[XBM]  [nvarchar(1)]  NOT NULL,--�Ա��� ��ţ�JCTB020105 ������JCTB020105 XBM �Ա��� C 1 NULL GB/T2261.1 NULL NULL
	[MZM]  [nvarchar(2)]  NOT NULL,--������ ��ţ�JCTB020109 ������JCTB020109 MZM ������ C 2 NULL GB/T3304 ȡ��2λ���ִ��룬�磺01���壬02�ɹ��� NULL
	[XXM]  [nvarchar(1)]  NULL,--Ѫ���� ��ţ�JCTB020118 ������JCTB020118 XXM Ѫ���� C 1 NULL JY/T1001XXѪ�ʹ��� NULL NULL
	[JKZKM]  [nvarchar(1)]  NULL,--����״���� ��ţ�JCTB020116 ������JCTB020116 JKZKM ����״���� C 1 NULL GB/T2261.3 ����1λ���ִ��� NULL
	[HYZTM]  [nvarchar(2)]  NOT NULL,--����״̬�� ��ţ�JCTB020113 ������JCTB020113 HYZKM ����״���� C 2 NULL GB/T2261.2 NULL NULL
	[ZZMMM]  [nvarchar(2)]  NOT NULL,--������ò�� ��ţ�JCTB020115 ������JCTB020115 ZZMMM ������ò�� C 2 NULL GB/T4762 �ɲ��ü�ƣ��磺01�й���Ա��04����Ա NULL
	[GATQWM]  [nvarchar(2)]  NULL,--�۰�̨������ ��ţ�JCTB020114 ������JCTB020114 GATQWM �۰�̨������ C 2 NULL JY/T1001GATQW�۰�̨������� NULL NULL
	[JG]  [nvarchar(20)]  NOT NULL,--���� ��ţ�JCTB020108 ������JCTB020108 JG ���� C 20 NULL NULL NULL NULL
	[GJDQM]  [nvarchar(3)]  NULL,--����/������ ��ţ�JCTB020110 ������JCTB020110 GJDQM ����/������ C 3 NULL GB/T2659 ��������ĸ���룬�磺CHN�й���USA���� NULL
	[CSDXZQHM]  [nvarchar(6)]  NOT NULL,--���������������� ��ţ�ZZJG010101 ������JCXX010106 XZQHM ���������� C 6 M GB/T2260 ѧУ���ڵ����������� NULL
	[XYZJM]  [nvarchar(2)]  NULL,--�����ڽ��� ��ţ�JCTB020117 ������JCTB020117 XYZJM �����ڽ��� C 2 NULL GA214.12 NULL NULL
	[JZGHKSZDXZQHM]  [nvarchar(6)]  NOT NULL,--��ְ���������ڵ����������� ��ţ�ZZJG010102 ������ZZXS010101 HKSZDXZQHM �������ڵ����������� C 6 M GB/T2260 NULL NULL
	[HKLBM]  [nvarchar(1)]  NOT NULL,--��������� ��ţ�ZZJG010103 ֵ�ռ䣺GA324.1 
	[DQZZ]  [nvarchar(180)]  NOT NULL,--��ǰסַ ��ţ�ZZJG010104 ������JCTB010102 TXDZ ͨ�ŵ�ַ C 180 NULL NULL ָ����ʡ����������ֱϽ�У�/�أ��С��ݣ�/�أ������죩/�磨��/�֣��壩/���ƺŵ���ϸ��ַ NULL
	[DQZZYZBM]  [nvarchar(6)]  NOT NULL,--��ǰסַ�������� ��ţ�ZZJG010105 ������JCTB010101 YZBM �������� C 6 NULL NULL NULL NULL
	[CJGZNY]  [nvarchar(6)]  NOT NULL,--�μӹ������� ��ţ�ZZJG010106 ������JCTB010202 NY ���� C 6 NULL GB/T7408 ��ʽ��YYYYMM���磺200604��ʾ2006��4�� NULL
	[CJNY]  [nvarchar(6)]  NULL,--�ӽ����� ��ţ�ZZJG010107 ������JCTB010202 NY ���� C 6 NULL GB/T7408 ��ʽ��YYYYMM���磺200604��ʾ2006��4�� NULL
	[LXNY]  [nvarchar(6)]  NOT NULL,--��У���� ��ţ�ZZJG010108 ������JCTB010202 NY ���� C 6 NULL GB/T7408 ��ʽ��YYYYMM���磺200604��ʾ2006��4�� NULL
	[BZLBM]  [nvarchar(2)]  NOT NULL,--��������� ��ţ�ZZJG010109 ֵ�ռ䣺JY/T1001BZLB���������� ����/��������:10��ѧ��20������30�̸��� 
	[JZGLBM]  [nvarchar(2)]  NOT NULL,--��ְ������� ��ţ�ZZJG010110 ֵ�ռ䣺JY/T1001JZGLB��ְ�������� ����/�������磺10У������ְ��11ר�ν�ʦ12�̸���Ա 
	[GWLBM]  [nvarchar(1)]  NOT NULL,--��λ����� ��ţ�ZZJG010111 ֵ�ռ䣺JY/T1001GWLB��λ������ ����/�������磺1������2רҵ��3ʵ������ָ��9���� 
	[SFJZJS]  [nvarchar(1)]  NOT NULL,--�Ƿ��ְ��ʦ ��ţ�ZZJG010112 ֵ�ռ䣺JY/T1001SFBZ�Ƿ��־���� ����/������0��1�� 
	[SFSSXJS]  [nvarchar(1)]  NOT NULL,--�Ƿ�˫ʦ�ͽ�ʦ ��ţ�ZZJG010113 ֵ�ռ䣺JY/T1001SFBZ�Ƿ��־���� ����/������0��1�� 
	[ZP]  [nvarchar(200)]  NULL,--��Ƭ ��ţ�JCTB020119 ������JCTB020119 ZP ��Ƭ B NULL NULL NULL �����������֤����Ƭ NULL
	[DQZTM]  [nvarchar(2)]  NOT NULL,--��ǰ״̬�� ��ţ�ZZJG010114 ֵ�ռ䣺JY/T1001JZGDQZT��ְ����ǰ״̬���� ����/�������磺11��ְ01���� 
CONSTRAINT [PK_ZZJG0101] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[GH] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--��ְ����ϵ��ʽ���������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZJG0201]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZJG0201](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[GH]  [nvarchar(20)]  NOT NULL,--���� ��ţ�JCJG010101 ������JCTB020120 RYH ��Ա�� C 20 NULL NULL ѧ�Ż򹤺� NULL
	[XM]  [nvarchar(36)]  NOT NULL,--���� ��ţ�JCTB020101 ������JCTB020101 XM ���� C 36 NULL NULL �������񻪣������ᡤ����������ľ NULL
	[YDDH]  [nvarchar(30)]  NOT NULL,--�ƶ��绰 ��ţ�JCTB010104 ������JCTB010104 YDDH �ƶ��绰 C 30 NULL NULL NULL NULL
	[GDDH]  [nvarchar(30)]  NULL,--�̶��绰 ��ţ�ZZJG020101 ������JCTB010103 DH �绰 C 30 NULL NULL ���绰���� NULL
	[YZBM]  [nvarchar(6)]  NULL,--�������� ��ţ�JCTB010101 ������JCTB010101 YZBM �������� C 6 NULL NULL NULL NULL
	[TXDZ]  [nvarchar(180)]  NULL,--ͨ�ŵ�ַ ��ţ�JCTB010102 ������JCTB010102 TXDZ ͨ�ŵ�ַ C 180 NULL NULL ָ����ʡ����������ֱϽ�У�/�أ��С��ݣ�/�أ������죩/�磨��/�֣��壩/���ƺŵ���ϸ��ַ NULL
	[DZXX]  [nvarchar(40)]  NOT NULL,--�������� ��ţ�JCTB010106 ������JCTB010106 DZXX �������� C 40 NULL NULL �����ʼ���ַ NULL
	[WLDZ]  [nvarchar(60)]  NULL,--�����ַ ��ţ�JCTB010107 ������JCTB010107 WLDZ �����ַ C 60 NULL NULL ����ҳ�����͡�΢����ַ NULL
	[JSTXH]  [nvarchar(40)]  NULL,--��ʱͨѶ�� ��ţ�JCTB010108 ������JCTB010108 JSTXH ��ʱͨѶ�� C 40 NULL NULL ��MSN/QQ�Ⱥ��� NULL
CONSTRAINT [PK_ZZJG0201] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[GH] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--У�ڸ�λ���������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZJG0202]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZJG0202](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[GWQSNY]  [nvarchar(6)]  NOT NULL,--��λ��ʼ���� ��ţ�ZZJG020201 ������JCTB010202 NY ���� C 6 NULL GB/T7408 ��ʽ��YYYYMM���磺200604��ʾ2006��4�� NULL
	[GWJSNY]  [nvarchar(6)]  NOT NULL,--��λ�������� ��ţ�ZZJG020202 ������JCTB010202 NY ���� C 6 NULL GB/T7408 ��ʽ��YYYYMM���磺200604��ʾ2006��4�� NULL
	[SFZG]  [nvarchar(1)]  NOT NULL,--�Ƿ��ڸ� ��ţ�ZZJG020203 ֵ�ռ䣺JY/T1001SFBZ�Ƿ��־���� ����/������0�񣨲��ڸڣ�1�ǣ��ڸڣ� 
	[ZWMC]  [nvarchar(10)]  NOT NULL,--ְ������ ��ţ�ZZJG020204 
	[JGH]  [nvarchar(6)]  NOT NULL,--������ ��ţ�ZZXX030001 ������ZZXX030001 JGH ������ C 6 M NULL ѧУ�Ա� NULL
CONSTRAINT [PK_ZZJG0202] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[GWQSNY] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--��ְ��ָ����Ϣ���������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZJG0203]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZJG0203](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[XM]  [nvarchar(36)]  NOT NULL,--���� ��ţ�JCTB020101 ������JCTB020101 XM ���� C 36 NULL NULL �������񻪣������ᡤ����������ľ NULL
	[GH]  [nvarchar(20)]  NOT NULL,--���� ��ţ�JCJG010101 ������JCTB020120 RYH ��Ա�� C 20 NULL NULL ѧ�Ż򹤺� NULL
	[DYZWXX]  [nvarchar(15)]  NOT NULL,--��һָ����Ϣ ��ţ�ZZXS010201 ������ZZXS010201 DYZWXX ��һָ����Ϣ C 15 M GA426.7 NULL NULL
	[DEZWXX]  [nvarchar(15)]  NULL,--�ڶ�ָ����Ϣ ��ţ�ZZXS010201 ������ZZXS010201 DYZWXX ��һָ����Ϣ C 15 M GA426.7 NULL NULL
	[DSZWXX]  [nvarchar(15)]  NULL,--����ָ����Ϣ ��ţ�ZZXS010201 ������ZZXS010201 DYZWXX ��һָ����Ϣ C 15 M GA426.7 NULL NULL
	[CJRQ]  [nvarchar(8)]  NULL,--�ɼ����� ��ţ�ZZJG020304 ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[CJBZ]  [text]  NULL,--�ɼ���ע ��ţ�ZZXS010205 ������ZZXS010205 CJBZ �ɼ���ע T NULL O NULL NULL NULL
CONSTRAINT [PK_ZZJG0203] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[XM] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--��ͥ������������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZJG0301]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZJG0301](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[JTZZ]  [nvarchar(180)]  NOT NULL,--��ͥסַ ��ţ�JCTB020601 ������JCTB010102 TXDZ ͨ�ŵ�ַ C 180 NULL NULL ָ����ʡ����������ֱϽ�У�/�أ��С��ݣ�/�أ������죩/�磨��/�֣��壩/���ƺŵ���ϸ��ַ NULL
	[JTYZBM]  [nvarchar(6)]  NOT NULL,--��ͥ�������� ��ţ�JCTB020602 ������JCTB010101 YZBM �������� C 6 NULL NULL NULL NULL
	[JTDH]  [nvarchar(30)]  NULL,--��ͥ�绰 ��ţ�JCTB020603 ������JCTB010103 DH �绰 C 30 NULL NULL ���绰���� NULL
	[JTLXR]  [nvarchar(36)]  NOT NULL,--��ͥ��ϵ�� ��ţ�ZZJG030101 ������ZZXS020101 JTLXR ��ͥ��ϵ�� C 36 M NULL NULL JCTB020101
	[JTRK]  [decimal(2)]  NOT NULL,--��ͥ�˿� ��ţ�JCTB020901 ������JCTB020901 JTRK ��ͥ�˿� N 2 O NULL ָ���˼�ͥ�����˿��� NULL
	[JTZYSRLY]  [nvarchar]  NULL,--��ͥ��Ҫ������Դ ��ţ�ZZXS020102 ������ZZXS020102 JTZYSRLY ��ͥ��Ҫ������Դ C NULL O NULL NULL NULL
	[JTYSRJE]  [money]  NULL,--��ͥ�������� ��ţ�ZZXS020103 ������ZZXS020103 JTYSRJE ��ͥ�������� M NULL 0.0 NULL NULL NULL
	[JTNSRJE]  [money]  NULL,--��ͥ�������� ��ţ�ZZXS020104 ������ZZXS020104 JTNSRJE ��ͥ�������� M NULL 0.0 NULL NULL NULL
CONSTRAINT [PK_ZZJG0301] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[JTZZ] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--��ְ��רҵ�������ʸ�֤���������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZJG07]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZJG07](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[ZSMC]  [nvarchar(40)]  NOT NULL,--֤������ ��ţ�ZZJG070001 ������JCJG020301 GWZSMC ��λ֤������ C 40 M NULL �ɾ��и�λ�����ʸ�λ���˲���׼�ĸ�λ֤������ NULL
	[ZSBH]  [nvarchar(20)]  NULL,--֤���� ��ţ�ZZJG070002 ������JCJG020302 GWZSBH ��λ֤���� C 20 O NULL NULL NULL
	[ZSBFDW]  [nvarchar(60)]  NULL,--֤��䷢��λ ��ţ�ZZJG070003 ������JCTB010302 DWMC ��λ���� C 60 NULL NULL NULL NULL
	[ZSBFRQ]  [nvarchar(8)]  NOT NULL,--֤��䷢���� ��ţ�ZZJG070004 ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[ZSBZ]  [text]  NULL,--֤�鱸ע ��ţ�ZZJG070005 
	[SFSZYZGZS]  [nvarchar(1)]  NOT NULL,--�Ƿ���ְҵ�ʸ�֤�� ��ţ�ZZJG070006 ֵ�ռ䣺JY/T1001SFBZ�Ƿ��־���� 
CONSTRAINT [PK_ZZJG07] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[ZSMC] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--�⼮��ʦƸ���������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZJG17]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZJG17](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[GNTJH]  [nvarchar(20)]  NOT NULL,--�������� ��ţ�ZZJG170001 
	[GWTJH]  [nvarchar(20)]  NOT NULL,--�������� ��ţ�ZZJG170002 
	[GNTJRQ]  [nvarchar(8)]  NOT NULL,--����������� ��ţ�ZZJG170003 ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[GWTJRQ]  [nvarchar(8)]  NOT NULL,--����������� ��ţ�ZZJG170004 ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[QZZLM]  [nvarchar(1)]  NOT NULL,--ǩ֤������ ��ţ�ZZJG170005 ֵ�ռ䣺GA/T704.8 
	[LSZSDJ]  [nvarchar(20)]  NOT NULL,--��ʱס�޵Ǽ� ��ţ�ZZJG170006 
	[ZSDZ]  [nvarchar(180)]  NOT NULL,--ס�޵�ַ ��ţ�ZZJG170007 ������JCTB010102 TXDZ ͨ�ŵ�ַ C 180 NULL NULL ָ����ʡ����������ֱϽ�У�/�أ��С��ݣ�/�أ������죩/�磨��/�֣��壩/���ƺŵ���ϸ��ַ NULL
	[ZJZH]  [nvarchar(20)]  NOT NULL,--ר��֤�� ��ţ�ZZJG170008 
	[JLXKH]  [nvarchar(20)]  NOT NULL,--������ɺ� ��ţ�ZZJG170009 
	[JLKSRQ]  [nvarchar(8)]  NOT NULL,--������ʼ���� ��ţ�ZZJG170010 ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
CONSTRAINT [PK_ZZJG17] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[GNTJH] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--��˫ʦ�͡���ʦƸ���������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZJG18]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZJG18](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[SSLX]  [nvarchar(20)]  NOT NULL,--˫ʦ���� ��ţ�ZZJG180001 
	[HDSSRQ]  [nvarchar(8)]  NOT NULL,--���˫ʦ���� ��ţ�ZZJG180002 ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[ZSBFJG]  [nvarchar(30)]  NOT NULL,--֤��䷢���� ��ţ�ZZJG180003 
	[ZYZGZS]  [nvarchar(40)]  NOT NULL,--ְҵ�ʸ�֤�� ��ţ�ZZJG180004 
	[ZYJSZWM]  [nvarchar(3)]  NOT NULL,--רҵ����ְ���� ��ţ�ZZJG180005 ������JCTB020306 CRZYJSZWM ����רҵ����ְ���� C 3 O GB/T8561 ����011���� NULL
	[ZYZGZSBH]  [nvarchar(30)]  NOT NULL,--ְҵ�ʸ�֤���� ��ţ�ZZJG180006 
	[ZYJSZCQDRQ]  [nvarchar(8)]  NOT NULL,--רҵ����ְ��ȡ������ ��ţ�ZZJG180007 ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[ZYZSMC]  [nvarchar(40)]  NOT NULL,--רҵ֤������ ��ţ�ZZJG180008 
	[ZYZSBH]  [nvarchar(30)]  NOT NULL,--רҵ֤���� ��ţ�ZZJG180009 
	[ZYZSQDRQ]  [nvarchar(8)]  NOT NULL,--רҵ֤��ȡ������ ��ţ�ZZJG180010 ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[ZYYJFX]  [nvarchar(30)]  NOT NULL,--��Ҫ�о����� ��ţ�ZZJG180011 
CONSTRAINT [PK_ZZJG18] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[SSLX] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--��ְ��ʦƸ���������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZJG19]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZJG19](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[QZGZDW]  [nvarchar(60)]  NULL,--ȫְ������λ ��ţ�ZZJG190001 ������JCTB010302 DWMC ��λ���� C 60 NULL NULL NULL NULL
	[PYQSRQ]  [nvarchar(8)]  NOT NULL,--Ƹ����ʼ���� ��ţ�ZZJG190002 ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[PYZZRQ]  [nvarchar(8)]  NOT NULL,--Ƹ����ֹ���� ��ţ�ZZJG190003 ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[JZGWM]  [nvarchar(1)]  NOT NULL,--��ְ��λ�� ��ţ�ZZJG190004 ֵ�ռ䣺JZJSGW��ְ��ʦ��λ���� 
	[HTBH]  [nvarchar(10)]  NOT NULL,--��ͬ��� ��ţ�ZZJG190005 
CONSTRAINT [PK_ZZJG19] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--��ѧ���гɹ����������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZJG2001]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZJG2001](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[KYXMBH]  [nvarchar(10)]  NOT NULL,--������Ŀ��� ��ţ�ZZJG200201 
	[KYXMMC]  [nvarchar(60)]  NOT NULL,--������Ŀ���� ��ţ�ZZJG200202 
	[XMFZR]  [nvarchar(36)]  NOT NULL,--��Ŀ������ ��ţ�ZZJG200203 ������JCTB020101 XM ���� C 36 NULL NULL �������񻪣������ᡤ����������ľ NULL
	[ZXBH]  [nvarchar(10)]  NOT NULL,--ר���� ��ţ�ZZJG200204 
	[HJRY]  [nvarchar(150)]  NOT NULL,--����Ա ��ţ�ZZJG200205 
	[BFJG]  [nvarchar(30)]  NOT NULL,--�䷢���� ��ţ�ZZJG200206 
	[HJRQ]  [nvarchar(8)]  NOT NULL,--������ ��ţ�ZZJG200207 ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[LXRQ]  [nvarchar(8)]  NOT NULL,--�������� ��ţ�ZZJG200208 ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[JTRQ]  [nvarchar(8)]  NOT NULL,--�������� ��ţ�ZZJG200209 ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[HJDJM]  [nvarchar(10)]  NULL,--�񽱵ȼ��� ��ţ�ZZJG200210 ֵ�ռ䣺JY/T1001JSHJLB��ʦ��������� 
CONSTRAINT [PK_ZZJG2001] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[KYXMBH] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--�����������������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZJG2002]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZJG2002](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[FBLWMC]  [nvarchar(80)]  NOT NULL,--������������ ��ţ�ZZJG200301 
	[FBRQ]  [nvarchar(8)]  NOT NULL,--�������� ��ţ�ZZJG200302 ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[FBR]  [nvarchar(36)]  NOT NULL,--������ ��ţ�ZZJG200303 ������JCTB020101 XM ���� C 36 NULL NULL �������񻪣������ᡤ����������ľ NULL
	[KWMC]  [nvarchar(50)]  NOT NULL,--�������� ��ţ�ZZJG200304 
	[KWDJ]  [nvarchar(2)]  NULL,--����ȼ� ��ţ�ZZJG200305 ֵ�ռ䣺JY/T1001KWJB���Ｖ����� ����/������10����ѧ�����20ȫ����ѧ������ 
	[ZS]  [decimal(6)]  NOT NULL,--���� ��ţ�ZZJG200306 
	[SMCX]  [decimal(1)]  NOT NULL,--�������� ��ţ�ZZJG200307 
CONSTRAINT [PK_ZZJG2002] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[FBLWMC] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--ר�����̲ġ��̲����������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZJG2003]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZJG2003](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[LZLBM]  [nvarchar(2)]  NOT NULL,--��������� ��ţ�ZZJG200401 ֵ�ռ䣺JY/T1001LZLB���������� ����/������10����11ר�� 
	[ZZZWM]  [nvarchar(60)]  NOT NULL,--���������� ��ţ�ZZJG200402 
	[ISBN]  [nvarchar(21)]  NOT NULL,--ISBN�� ��ţ�ZZJG200403 
	[CBRQ]  [nvarchar(8)]  NOT NULL,--�������� ��ţ�ZZJG200404 ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[SJZZ]  [nvarchar(36)]  NOT NULL,--�鼮���� ��ţ�ZZJG200405 ������JCTB020101 XM ���� C 36 NULL NULL �������񻪣������ᡤ����������ľ NULL
	[SJZZS]  [decimal(8)]  NULL,--�鼮������ ��ţ�ZZJG200406 
	[CBS]  [nvarchar(40)]  NOT NULL,--������ ��ţ�ZZJG200407 
	[ZZYWM]  [nvarchar(100)]  NULL,--����Ӣ���� ��ţ�ZZJG200408 
	[BRFZBFZS]  [decimal(8)]  NULL,--���˸��𲿷����� ��ţ�ZZJG200409 
	[BRJS]  [nvarchar(20)]  NULL,--���˽�ɫ ��ţ�ZZJG200409 ����/���������ࡢ�α�� 
CONSTRAINT [PK_ZZJG2003] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[LZLBM] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--ר���ɹ����������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZJG2004]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZJG2004](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[ZLCGBH]  [nvarchar(8)]  NOT NULL,--ר���ɹ���� ��ţ�ZZJG200501 
	[ZLCGMC]  [nvarchar(60)]  NOT NULL,--ר���ɹ����� ��ţ�ZZJG200502 
	[PZRQ]  [nvarchar(8)]  NOT NULL,--��׼���� ��ţ�ZZJG200503 ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[ZLFMR]  [nvarchar(36)]  NOT NULL,--ר�������� ��ţ�ZZJG200504 ������JCTB020101 XM ���� C 36 NULL NULL �������񻪣������ᡤ����������ľ NULL
	[ZLZSBH]  [nvarchar(20)]  NOT NULL,--ר��֤���� ��ţ�ZZJG200505 
CONSTRAINT [PK_ZZJG2004] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[ZLCGBH] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--רҵ������Ϣ���������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZJX0101]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZJX0101](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[ZYBH]  [decimal(4)]  NOT NULL,--רҵ��� ��ţ�ZZJX010101 ����/������ѧУ�Ա� 
	[ZYDM]  [nvarchar(6)]  NOT NULL,--רҵ���� ��ţ�ZZJX010102 ֵ�ռ䣺�е�ְҵѧУרҵĿ¼ 
	[ZYMC]  [nvarchar(50)]  NOT NULL,--רҵ���� ��ţ�ZZJX010103 
	[ZYYWMC]  [nvarchar(100)]  NULL,--רҵӢ������ ��ţ�ZZJX010104 
	[XZ]  [decimal(3,1)]  NOT NULL,--ѧ�� ��ţ�JCTB010402 ������JCTB010402 XZ ѧ�� N 31 NULL NULL ����Ϊ��λ NULL
	[ZYFXMC]  [nvarchar(100)]  NOT NULL,--רҵ�������� ��ţ�ZZJX010105 
	[ZYJC]  [nvarchar(100)]  NOT NULL,--רҵ��� ��ţ�ZZJX010106 
	[JLNY]  [nvarchar(6)]  NOT NULL,--�������� ��ţ�ZZJX010107 ����/������רҵ�������� ������JCTB010202 NY ���� C 6 NULL GB/T7408 ��ʽ��YYYYMM���磺200604��ʾ2006��4�� NULL
	[ZYJSS]  [decimal(2)]  NULL,--רҵ��ʦ�� ��ţ�ZZJX010108 
	[KSJGH]  [nvarchar(6)]  NOT NULL,--��������� ��ţ�ZZJX010109 ����/������ѧУ����֯�������ű�� ������ZZXX030001 JGH ������ C 6 M NULL ѧУ�Ա� NULL
	[ZXF]  [nvarchar(10)]  NOT NULL,--��ѧ�� ��ţ�ZZJX010110 ����/��������רҵ��ҵʱ�������ѧ�� 
CONSTRAINT [PK_ZZJX0101] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[ZYBH] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--�γ����������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZJX0102]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZJX0102](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[KCH]  [nvarchar(6)]  NOT NULL,--�γ̺� ��ţ�ZZJX010201 ����/������ѧУ�Ա� 
	[KCMC]  [nvarchar(100)]  NOT NULL,--�γ����� ��ţ�ZZJX010202 
	[KCYWM]  [nvarchar(100)]  NULL,--�γ�Ӣ���� ��ţ�ZZJX010203 
	[KCBM]  [nvarchar(100)]  NULL,--�γ̱��� ��ţ�ZZJX010204 
	[KCJS]  [nvarchar(200)]  NULL,--�γ̽��� ��ţ�ZZJX010205 
	[XF]  [decimal(2,1)]  NOT NULL,--ѧ�� ��ţ�ZZJX010206 ����/�������磺2.5 
	[ZXS]  [decimal(2)]  NOT NULL,--��ѧʱ ��ţ�ZZJX010207 ����/��������λ��ѧʱ 
	[LLXS]  [decimal(2)]  NOT NULL,--����ѧʱ ��ţ�ZZJX010208 
	[SJXS]  [decimal(2)]  NOT NULL,--ʵ��ѧʱ ��ţ�ZZJX010209 
	[QTXS]  [decimal(2)]  NOT NULL,--����ѧʱ ��ţ�ZZJX010210 
	[CKSM]  [text]  NULL,--�ο���Ŀ ��ţ�ZZJX010211 
	[KKDW]  [nvarchar(6)]  NULL,--���ε�λ ��ţ�ZZJX010212 ����/������У�ڻ����� ������ZZXX030001 JGH ������ C 6 M NULL ѧУ�Ա� NULL
	[KSXS]  [nvarchar(1)]  NOT NULL,--������ʽ ��ţ�ZZJX010213 ֵ�ռ䣺JY/T1001KSXS������ʽ���� ����/������1����2���� 
	[SKFSM]  [nvarchar(1)]  NOT NULL,--�ڿη�ʽ�� ��ţ�ZZJX010214 ֵ�ռ䣺JY/T1001SKFS�ڿη�ʽ���� 
	[KCFY]  [money]  NULL,--�γ̷��� ��ţ�ZZJX010215 ����/������ѧϰ�γ�������� 
CONSTRAINT [PK_ZZJX0102] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[KCH] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--ѧ�����������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZJX0103]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZJX0103](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[XN]  [nvarchar(9)]  NOT NULL,--ѧ�꣨�ȣ� ��ţ�JCTB010205 ������JCTB010205 XN ѧ�꣨�ȣ� C 9 NULL NULL ��ʽ��YYYY-YYYY���磺2001-2002 NULL
	[XQM]  [nvarchar(1)]  NOT NULL,--ѧ���� ��ţ�JCTB010206 ������JCTB010206 XQM ѧ���� C 1 NULL JY/T1001XQѧ�ڴ��� NULL NULL
	[XQMC]  [nvarchar(10)]  NOT NULL,--ѧ������ ��ţ�ZZJX010301 ����/������ѧУ�Աࡣ���磺2010�괺��ѧ�ڣ�2009���＾ѧ�� 
	[XQKSRQ]  [nvarchar(8)]  NULL,--ѧ�ڿ�ʼ���� ��ţ�ZZJX010302 ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[XQJSRQ]  [nvarchar(8)]  NULL,--ѧ�ڽ������� ��ţ�ZZJX010303 ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
CONSTRAINT [PK_ZZJX0103] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[XN] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--ѧУ�꼶���������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZJX0201]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZJX0201](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[NJDM]  [nvarchar(4)]  NOT NULL,--�꼶���� ��ţ�ZZJX020101 ����/������������������ 
	[NJMC]  [nvarchar(10)]  NOT NULL,--�꼶���� ��ţ�ZZJX020102 
	[SSNF]  [nvarchar(4)]  NOT NULL,--������� ��ţ�ZZJX020103 ������JCTB010201 ND ��ȣ���ݡ��꣩ C 4 NULL GB/T7408 ��ʽ��YYYY���磺2008 NULL
	[NJZT]  [nvarchar(1)]  NOT NULL,--�꼶״̬ ��ţ�ZZJX020104 ֵ�ռ䣺JY/T1001SFBZ�Ƿ��־���� ����/������0����1δ���� 
CONSTRAINT [PK_ZZJX0201] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[NJDM] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--ѧУ�༶���������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZJX0202]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZJX0202](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[XZBDM]  [nvarchar(10)]  NOT NULL,--��������� ��ţ�ZZJX020201 ������JCXX020001 BH ��� C 10 M NULL ѧУ�Ա� NULL
	[NJDM]  [nvarchar(4)]  NOT NULL,--�꼶���� ��ţ�ZZJX020101 ������ZZJX020101 NJDM �꼶���� C 4 M NULL ������������ NULL
	[XZBMC]  [nvarchar(50)]  NOT NULL,--���������� ��ţ�ZZJX020202 
	[ZYDM]  [nvarchar(6)]  NOT NULL,--רҵ���� ��ţ�ZZJX020203 ֵ�ռ䣺�е�ְҵѧУרҵĿ¼ 
	[JBNY]  [nvarchar(6)]  NOT NULL,--�������� ��ţ�ZZJX020204 ������JCTB010202 NY ���� C 6 NULL GB/T7408 ��ʽ��YYYYMM���磺200604��ʾ2006��4�� NULL
	[BZRGH]  [nvarchar(20)]  NULL,--�����ι��� ��ţ�ZZJX020205 ������JCTB020120 RYH ��Ա�� C 20 NULL NULL ѧ�Ż򹤺� NULL
	[JSBH]  [nvarchar(10)]  NULL,--���ұ�� ��ţ�ZZFC090002 ������ZZFC090002 JSBH ���ұ�� C 10 M NULL ѧУ�Ա� NULL
	[NANSRS]  [decimal(4)]  NULL,--�������� ��ţ�ZZJX020206 
	[NVSRS]  [decimal(4)]  NULL,--Ů������ ��ţ�ZZJX020207 
	[ZRS]  [decimal(4)]  NULL,--������ ��ţ�ZZJX020208 
	[BZXH]  [nvarchar(20)]  NULL,--�೤ѧ�� ��ţ�ZZJX020209 ������JCTB020120 RYH ��Ա�� C 20 NULL NULL ѧ�Ż򹤺� NULL
	[JXJH]  [nvarchar(5)]  NOT NULL,--��ѧ�ƻ� ��ţ�ZZJX020210 ������ZZJX030101 JHBH �ƻ���� C 5 M NULL ѧУ���б�� NULL
	[JGH]  [nvarchar(6)]  NOT NULL,--������ ��ţ�ZZXX030001 ����/������ѧ���༶������ѧУ������ ������ZZXX030001 JGH ������ C 6 M NULL ѧУ�Ա� NULL
	[XQDM]  [nvarchar(2)]  NOT NULL,--У������ ��ţ�ZZXX020001 ����/������ѧ���༶����У������ ������ZZXX020001 XQDM У������ C 2 M NULL NULL JCXX010201
CONSTRAINT [PK_ZZJX0202] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[XZBDM] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--�����ѧ�ƻ����������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZJX0301]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZJX0301](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[JHBH]  [nvarchar(5)]  NOT NULL,--�ƻ���� ��ţ�ZZJX030101 ����/������ѧУ���б�� 
	[JHNJ]  [nvarchar(4)]  NOT NULL,--�ƻ��꼶 ��ţ�ZZJX030102 ������JCTB010201 ND ��ȣ���ݡ��꣩ C 4 NULL GB/T7408 ��ʽ��YYYY���磺2008 NULL
	[JHZYMC]  [nvarchar(50)]  NOT NULL,--�ƻ�רҵ���� ��ţ�ZZJX030103 ������ZZJX010103 ZYMC רҵ���� C 50 M NULL NULL NULL
	[ZXFYQ]  [decimal(3)]  NOT NULL,--��ѧ��Ҫ�� ��ţ�ZZJX030104 
	[JLNY]  [nvarchar(6)]  NULL,--�������� ��ţ�ZZJX030105 ������JCTB010202 NY ���� C 6 NULL GB/T7408 ��ʽ��YYYYMM���磺200604��ʾ2006��4�� NULL
	[SYXZ]  [decimal(3,1)]  NULL,--����ѧ�� ��ţ�ZZJX030106 ������JCTB010402 XZ ѧ�� N 31 NULL NULL ����Ϊ��λ NULL
	[PYMB]  [text]  NULL,--����Ŀ�� ��ţ�ZZJX030107 ����/�������Լƻ������� 
	[SFKY]  [nvarchar(3)]  NOT NULL,--�Ƿ���� ��ţ�ZZJX030108 ֵ�ռ䣺JY/T1001SFBZ�Ƿ��־���� 
	[FJ]  [text]  NULL,--���� ��ţ�ZZJX030109 ����/��������ź͸üƻ���ص��ļ� 
CONSTRAINT [PK_ZZJX0301] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[JHBH] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--��ѧ�ƻ�����ѧ��Ҫ����������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZJX0302]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZJX0302](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[KCFLM]  [nvarchar(1)]  NOT NULL,--�γ̷����� ��ţ�ZZJX030201 ֵ�ռ䣺KCFL�γ̷������ 
	[XFYQ]  [decimal(21)]  NOT NULL,--ѧ��Ҫ�� ��ţ�ZZJX030202 ������ZZJX010206 XF ѧ�� N 21 M NULL �磺2.5 NULL
	[JHBH]  [nvarchar(5)]  NOT NULL,--�ƻ���� ��ţ�ZZJX030101 ������ZZJX030101 JHBH �ƻ���� C 5 M NULL ѧУ���б�� NULL
CONSTRAINT [PK_ZZJX0302] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[KCFLM] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--��ѧ�ƻ��γ��嵥���������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZJX0303]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZJX0303](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[KCH]  [nvarchar(6)]  NOT NULL,--�γ̺� ��ţ�ZZJX010201 ������ZZJX010201 KCH �γ̺� C 6 M NULL ѧУ�Ա� NULL
	[KCMC]  [nvarchar(100)]  NOT NULL,--�γ����� ��ţ�ZZJX010202 ������ZZJX010202 KCMC �γ����� C 100 M NULL NULL NULL
	[YXKC]  [nvarchar(200)]  NULL,--Ԥ�޿γ� ��ţ�ZZJX030301 ����/��������Ԥ�޵Ŀγ����ƣ�����γ��ö��Ÿ��� 
	[SFHXKC]  [nvarchar(1)]  NULL,--�Ƿ���ģ��Ǹɣ��γ� ��ţ�ZZJX030302 ֵ�ռ䣺JY/T1001SFBZ�Ƿ��־���� 
	[KCFLM]  [nvarchar(1)]  NOT NULL,--�γ̷����� ��ţ�ZZJX030201 ֵ�ռ䣺KCFL�γ̷������ 
	[KCSXM]  [nvarchar(1)]  NOT NULL,--�γ������� ��ţ�ZZJX030203 ֵ�ռ䣺JY/T1001KCSX�γ����Դ��� 
	[ZXXQ]  [decimal(2)]  NOT NULL,--ִ��ѧ�� ��ţ�ZZJX030304 ����/��������Χ��1-14 
CONSTRAINT [PK_ZZJX0303] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[KCH] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--�ſ�������Ϣ���������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZJX0304]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZJX0304](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[KXH]  [nvarchar(10)]  NOT NULL,--����� ��ţ�ZZJX030401 ����/������������š�--Ϊ�����ֶ����ʦ��ͬһ�ſΣ���ĳ��ʦ����ĳ�ſγ̶Բ�ͬרҵѧ���ڲ�ͬʱ���Ͽζ����ŵĿγ�˳��š� 
	[KKDW]  [nvarchar(6)]  NOT NULL,--���ε�λ ��ţ�ZZJX010212 ������ZZJX010212 KKDW ���ε�λ C 6 O NULL У�ڻ����� ZZXX030001
	[XQMC]  [nvarchar(10)]  NOT NULL,--ѧ������ ��ţ�ZZJX010301 ������ZZJX010301 XQMC ѧ������ C 10 M NULL ѧУ�Աࡣ���磺2010�괺��ѧ�ڣ�2009���＾ѧ�� NULL
	[SKSJ]  [nvarchar(50)]  NULL,--�Ͽ�ʱ�� ��ţ�ZZJX030402 ����/���������Ͽεľ���ʱ�䣬ÿ�ڿ���һ��д 
	[JXDD]  [nvarchar(30)]  NULL,--��ѧ�ص� ��ţ�ZZJX030403 ����/��������ѧ����ŵص� 
	[JXZY]  [nvarchar(200)]  NULL,--��ѧ��Դ ��ţ�ZZJX030404 ����/��������ѧ�ĸ������ߡ��豸����Դ 
	[JHRS]  [decimal(4)]  NOT NULL,--�ƻ����� ��ţ�ZZJX030405 ����/������ָ�ÿγ̵ļƻ�������� 
	[YXRS]  [decimal(4)]  NOT NULL,--��ѡ���� ��ţ�ZZJX030406 
	[JXBSZXQ]  [nvarchar(2)]  NULL,--��ѧ������У�� ��ţ�ZZJX030407 ����/������ָ��ѡ�ε�У�����룬��������У���á������ָ� ������ZZXX020001 XQDM У������ C 2 M NULL NULL JCXX010201
	[XKNJ]  [nvarchar(4)]  NULL,--ѡ���꼶 ��ţ�ZZJX030408 ������ZZJX020101 NJDM �꼶���� C 4 M NULL ������������ NULL
	[QSZ]  [decimal(2)]  NULL,--��ʼ�� ��ţ�ZZJX030409 
	[ZZZ]  [decimal(2)]  NULL,--��ֹ�� ��ţ�ZZJX030410 
	[JSJGH]  [nvarchar(20)]  NULL,--��ʦ�̹��� ��ţ�ZZJX030411 ������JCTB020120 RYH ��Ա�� C 20 NULL NULL ѧ�Ż򹤺� NULL
	[JSXM]  [nvarchar(36)]  NULL,--��ʦ���� ��ţ�ZZJX030412 ������JCTB020101 XM ���� C 36 NULL NULL �������񻪣������ᡤ����������ľ NULL
	[ZXS]  [decimal(2)]  NOT NULL,--��ѧʱ ��ţ�ZZJX030413 
	[SKXZBDM]  [nvarchar(10)]  NOT NULL,--�Ͽ���������� ��ţ�ZZJX030414 ����/����������༶�á������ָ� ������JCXX020001 BH ��� C 10 M NULL ѧУ�Ա� NULL
	[JXBMC]  [nvarchar(30)]  NOT NULL,--��ѧ������ ��ţ�ZZJX030415 ����/��������ߵ���ѧ-2�� 
	[KCSM]  [text]  NULL,--����˵�� ��ţ�ZZJX030416 
CONSTRAINT [PK_ZZJX0304] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[KXH] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--�̲Ļ�����Ϣ���������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZJX0401]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZJX0401](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[JCDM]  [nvarchar(13)]  NOT NULL,--�̲Ĵ��� ��ţ�ZZJX040101 
	[JCMC]  [nvarchar(60)]  NOT NULL,--�̲����� ��ţ�ZZJX040102 
	[CBH]  [nvarchar(30)]  NULL,--����� ��ţ�ZZJX040103 ������JCBX040107 TSCBH ͼ������ C 30 M NULL ͼ����Ӧ��ISBN�ȱ�׼����� NULL
	[DYZZ]  [nvarchar(30)]  NOT NULL,--��һ���� ��ţ�JCBX040108 ������JCBX040108 DYZZ ��һ���� C 30 M NULL ͼ���һ�������� NULL
	[QTZZ]  [nvarchar(90)]  NULL,--�������� ��ţ�JCBX040109 ������JCBX040109 QTZZ �������� C 90 O NULL ͼ�������������� NULL
	[BC]  [nvarchar(30)]  NOT NULL,--��� ��ţ�JCBX040118 ������JCBX040118 BC ��� C 30 O NULL NULL NULL
	[YC]  [nvarchar(2)]  NULL,--ӡ�� ��ţ�ZZJX040104 
	[JG]  [money]  NULL,--�۸� ��ţ�JCBX040110 ������JCBX040110 JG �۸� M NULL O NULL ͼ��ĵ��ۣ���Ұ�������������ң�ȡ��λС������λ��Ԫ NULL
	[CBS]  [nvarchar(180)]  NULL,--������ ��ţ�JCBX040122 ������JCBX040122 CBS ������ C 180 O NULL ���������ƣ����������ɲ��� NULL
	[CBRQ]  [nvarchar(8)]  NULL,--�������� ��ţ�JCBX040125 ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[SFYLXC]  [nvarchar(1)]  NULL,--�Ƿ�����ϰ�� ��ţ�ZZJX040105 ֵ�ռ䣺JY/T1001SFBZ�Ƿ��־���� 
	[SFYJCJF]  [nvarchar(1)]  NULL,--�Ƿ��н̲ν̸� ��ţ�ZZJX040106 ֵ�ռ䣺JY/T1001SFBZ�Ƿ��־���� 
	[NRJJ]  [text]  NULL,--���ݼ�� ��ţ�ZZJX040107 
CONSTRAINT [PK_ZZJX0401] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[JCDM] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--�̲�ѡ����Ϣ���������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZJX0402]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZJX0402](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[XQM]  [nvarchar(1)]  NOT NULL,--ѧ���� ��ţ�JCTB010206 ������JCTB010206 XQM ѧ���� C 1 NULL JY/T1001XQѧ�ڴ��� NULL NULL
	[ZYMC]  [nvarchar(50)]  NOT NULL,--רҵ���� ��ţ�ZZJX010103 ������ZZJX010103 ZYMC רҵ���� C 50 M NULL NULL NULL
	[NJDM]  [nvarchar(4)]  NOT NULL,--�꼶���� ��ţ�ZZJX020101 ������ZZJX020101 NJDM �꼶���� C 4 M NULL ������������ NULL
	[KCMC]  [nvarchar(100)]  NOT NULL,--�γ����� ��ţ�ZZJX010202 ������ZZJX010202 KCMC �γ����� C 100 M NULL NULL NULL
	[JCDM]  [nvarchar(13)]  NULL,--�̲Ĵ��� ��ţ�ZZJX040101 ������ZZJX040101 JCDM �̲Ĵ��� C 13 M NULL NULL NULL
	[XYSL]  [decimal(5)]  NOT NULL,--ѡ������ ��ţ�ZZJX040201 
CONSTRAINT [PK_ZZJX0402] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[XQM] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--ѧ��ѡ��������������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZJX0501]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZJX0501](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[XH]  [nvarchar(20)]  NOT NULL,--ѧ�� ��ţ�JCXS010101 ������JCTB020120 RYH ��Ա�� C 20 NULL NULL ѧ�Ż򹤺� NULL
	[KXH]  [nvarchar(10)]  NOT NULL,--����� ��ţ�ZZJX030401 ������ZZJX030401 KXH ����� C 10 M NULL ������š�--Ϊ�����ֶ����ʦ��ͬһ�ſΣ���ĳ��ʦ����ĳ�ſγ̶Բ�ͬרҵѧ���ڲ�ͬʱ���Ͽζ����ŵĿγ�˳��š� NULL
	[SFDX]  [nvarchar(1)]  NOT NULL,--�Ƿ��ѡ ��ţ�ZZJX050101 ֵ�ռ䣺JY/T1001SFBZ�Ƿ��־���� 
	[XKSHZT]  [nvarchar(1)]  NOT NULL,--ѡ�����״̬ ��ţ�ZZJX050102 ֵ�ռ䣺XKSHѧ��ѡ�����״̬���� ����/��������ְѧУ��Ϣ����׼�Ա࣬�磺1�����2���ͨ��3���δͨ�� 
	[XKSJ]  [nvarchar(6)]  NOT NULL,--ѡ��ʱ�� ��ţ�ZZJX050103 ������JCTB010204 SJ ʱ�� C 6 NULL GB/T7408 ��ʽ��hhmmss���磺141503��ʾ����2ʱ15��3�� NULL
	[SHRQ]  [nvarchar(8)]  NOT NULL,--������� ��ţ�ZZJX050104 ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[SHR]  [nvarchar(20)]  NOT NULL,--����� ��ţ�ZZJX050105 ������JCTB020120 RYH ��Ա�� C 20 NULL NULL ѧ�Ż򹤺� NULL
CONSTRAINT [PK_ZZJX0501] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[XH] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--��ʦ��ѧ������ͳ�����������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZJX0502]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZJX0502](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[XQMC]  [nvarchar(10)]  NOT NULL,--ѧ������ ��ţ�ZZJX010301 ������ZZJX010301 XQMC ѧ������ C 10 M NULL ѧУ�Աࡣ���磺2010�괺��ѧ�ڣ�2009���＾ѧ�� NULL
	[JSXM]  [nvarchar(36)]  NOT NULL,--��ʦ���� ��ţ�ZZJX020412 ������JCTB020101 XM ���� C 36 NULL NULL �������񻪣������ᡤ����������ľ NULL
	[RJKCMS]  [decimal(4)]  NOT NULL,--�ν̿γ����� ��ţ�ZZJX050201 
	[LLZXS]  [decimal(4)]  NOT NULL,--������ѧʱ ��ţ�ZZJX050202 
	[SJZXS]  [decimal(4)]  NOT NULL,--ʵ����ѧʱ ��ţ�ZZJX050203 
	[QTZXS]  [decimal(4)]  NOT NULL,--������ѧʱ ��ţ�ZZJX050204 
	[XSZS]  [decimal(4)]  NOT NULL,--ѧ������ ��ţ�ZZJX050205 
	[ZXFS]  [decimal(5,1)]  NOT NULL,--��ѧ���� ��ţ�ZZJX050206 
CONSTRAINT [PK_ZZJX0502] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[XQMC] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--��ʦ����������������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZJX0601]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZJX0601](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[XQMC]  [nvarchar(10)]  NOT NULL,--ѧ������ ��ţ�ZZJX010301 ������ZZJX010301 XQMC ѧ������ C 10 M NULL ѧУ�Աࡣ���磺2010�괺��ѧ�ڣ�2009���＾ѧ�� NULL
	[JSXM]  [nvarchar(36)]  NOT NULL,--��ʦ���� ��ţ�ZZJX020412 ������JCTB020101 XM ���� C 36 NULL NULL �������񻪣������ᡤ����������ľ NULL
	[CQCS]  [decimal(3)]  NULL,--���ڴ��� ��ţ�ZZJX060101 
	[KKCS]  [decimal(3)]  NULL,--���δ��� ��ţ�ZZJX060102 
	[CDCS]  [decimal(3)]  NULL,--�ٵ����� ��ţ�ZZJX060103 
	[ZTCS]  [decimal(3)]  NULL,--���˴��� ��ţ�ZZJX060104 
	[QJCS]  [decimal(3)]  NULL,--��ٴ��� ��ţ�ZZJX060105 
	[JQCS]  [decimal(3)]  NULL,--���ڴ��� ��ţ�ZZJX060106 
CONSTRAINT [PK_ZZJX0601] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[XQMC] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--ѧ������������������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZJX0602]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZJX0602](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[XQMC]  [nvarchar(10)]  NOT NULL,--ѧ������ ��ţ�ZZJX010301 ������ZZJX010301 XQMC ѧ������ C 10 M NULL ѧУ�Աࡣ���磺2010�괺��ѧ�ڣ�2009���＾ѧ�� NULL
	[XZBMC]  [nvarchar(50)]  NOT NULL,--���������� ��ţ�ZZJX020202 ������ZZJX020202 XZBMC ���������� C 50 M NULL NULL NULL
	[XH]  [nvarchar(20)]  NOT NULL,--ѧ�� ��ţ�JCXS010101 ������JCTB020120 RYH ��Ա�� C 20 NULL NULL ѧ�Ż򹤺� NULL
	[KKCS]  [decimal(3)]  NULL,--���δ��� ��ţ�ZZJX060102 ������ZZJX060102 KKCS ���δ��� N 3 O NULL NULL NULL
	[CDCS]  [decimal(3)]  NULL,--�ٵ����� ��ţ�ZZJX060103 ������ZZJX060103 CDCS �ٵ����� N 3 O NULL NULL NULL
	[ZTCS]  [decimal(3)]  NULL,--���˴��� ��ţ�ZZJX060104 ������ZZJX060104 ZTCS ���˴��� N 3 O NULL NULL NULL
	[QJCS]  [decimal(3)]  NULL,--��ٴ��� ��ţ�ZZJX060105 ������ZZJX060105 QJCS ��ٴ��� N 3 O NULL NULL NULL
CONSTRAINT [PK_ZZJX0602] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[XQMC] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--У��ʵϰ������Ϣ���������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZJX0701]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZJX0701](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[QYBH]  [nvarchar(20)]  NOT NULL,--��ҵ��� ��ţ�ZZJX070101 ����/��������ҵע��ʱ�ı�� 
	[JDHZHTBH]  [nvarchar(20)]  NOT NULL,--���غ�����ͬ��� ��ţ�ZZJX070102 
	[JDHZHTMC]  [nvarchar(50)]  NOT NULL,--���غ�����ͬ���� ��ţ�ZZJX070103 
	[JDLBM]  [nvarchar(1)]  NOT NULL,--��������� ��ţ�ZZJX070104 ֵ�ռ䣺SXJDLBʵϰ���������� 
	[DWMC]  [nvarchar(50)]  NOT NULL,--��λ���� ��ţ�ZZJX070105 ����/��������ҵע��ʱ��ȫ�� 
	[QYXZQ]  [nvarchar(6)]  NOT NULL,--��ҵ������ ��ţ�ZZJX070106 ������JCXX010106 XZQHM ���������� C 6 M GB/T2260 ѧУ���ڵ����������� NULL
	[QYDZ]  [nvarchar(180)]  NULL,--��ҵ��ַ ��ţ�ZZJX070107 ������JCTB010102 TXDZ ͨ�ŵ�ַ C 180 NULL NULL ָ����ʡ����������ֱϽ�У�/�أ��С��ݣ�/�أ������죩/�磨��/�֣��壩/���ƺŵ���ϸ��ַ NULL
	[QYXZ]  [nvarchar(2)]  NULL,--��ҵ���� ��ţ�ZZJX070108 ֵ�ռ䣺GB/T12402 
	[FRDB]  [nvarchar(36)]  NULL,--���˴��� ��ţ�ZZJX070109 ������JCTB020101 XM ���� C 36 NULL NULL �������񻪣������ᡤ����������ľ NULL
	[QYLXR]  [nvarchar(36)]  NULL,--��ҵ��ϵ�� ��ţ�ZZJX070110 ������JCTB020101 XM ���� C 36 NULL NULL �������񻪣������ᡤ����������ľ NULL
	[QYYZBM]  [nvarchar(6)]  NULL,--��ҵ�������� ��ţ�ZZJX070111 ������JCTB010101 YZBM �������� C 6 NULL NULL NULL NULL
	[QYLXDH]  [nvarchar(30)]  NULL,--��ҵ��ϵ�绰 ��ţ�ZZJX070112 ������JCTB010103 DH �绰 C 30 NULL NULL ���绰���� NULL
CONSTRAINT [PK_ZZJX0701] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[QYBH] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--У��ʵϰ���ؽ���������������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZJX0702]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZJX0702](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[QYBH]  [nvarchar(20)]  NOT NULL,--��ҵ��� ��ţ�ZZJX070101 ������ZZJX070101 QYBH ��ҵ��� C 20 M NULL ��ҵע��ʱ�ı�� NULL
	[JNRQ]  [nvarchar(8)]  NOT NULL,--�������� ��ţ�ZZJX070201 ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[ZDJNSXSRS]  [nvarchar(1)]  NOT NULL,--������ʵϰ������ ��ţ�ZZJX070202 ֵ�ռ䣺SXJDJNSXSSLʵϰ���ؽ���ʵϰ���������� 
	[SJJNSXSRS]  [decimal(5)]  NOT NULL,--ʵ�ʽ���ʵϰ������ ��ţ�ZZJX070203 
	[SXSLJDJYRS]  [decimal(5)]  NULL,--ʵϰ�������ؾ�ҵ���� ��ţ�ZZJX070204 
	[SXSDY]  [nvarchar(100)]  NULL,--ʵϰ������ ��ţ�ZZJX070205 
CONSTRAINT [PK_ZZJX0702] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[QYBH] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--ѧ��У��ʵϰ������������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZJX0703]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZJX0703](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[SXQSRQ]  [nvarchar(8)]  NOT NULL,--��ѵ��ʼ���� ��ţ�ZZJX070301 ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[SXJSRQ]  [nvarchar(8)]  NULL,--��ѵ�������� ��ţ�ZZJX070302 ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[QYBH]  [nvarchar(20)]  NOT NULL,--��ҵ��� ��ţ�ZZJX070101 ������ZZJX070101 QYBH ��ҵ��� C 20 M NULL ��ҵע��ʱ�ı�� NULL
	[SXGWMC]  [nvarchar(50)]  NULL,--��ѵ��λ���� ��ţ�ZZJX070303 
	[SXDS]  [nvarchar(36)]  NULL,--ʵѵ��ʦ ��ţ�ZZJX070304 ������JCTB020101 XM ���� C 36 NULL NULL �������񻪣������ᡤ����������ľ NULL
	[SFGMSXZRBX]  [nvarchar(1)]  NOT NULL,--�Ƿ���ʵϰ���α��� ��ţ�ZZJX070305 ֵ�ռ䣺JY/T1001SFBZ�Ƿ��־���� 
	[BXFZFZ]  [nvarchar(50)]  NULL,--���շ�֧���� ��ţ�ZZJX070306 
	[SXXC]  [money]  NULL,--ʵϰн�� ��ţ�ZZJX070307 
	[SFSDGSX]  [nvarchar(1)]  NOT NULL,--�Ƿ��Ƕ���ʵϰ ��ţ�ZZJX070308 ֵ�ռ䣺JY/T1001SFBZ�Ƿ��־���� 
	[XSHJXZM]  [nvarchar(1)]  NOT NULL,--ѧ������������ ��ţ�ZZJX070309 ֵ�ռ䣺HJXZ�������ʴ��� 
CONSTRAINT [PK_ZZJX0703] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[SXQSRQ] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--У��ʵϰ�������������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZJX0704]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZJX0704](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[XNJDMC]  [nvarchar(50)]  NOT NULL,--У�ڻ������� ��ţ�ZZJX070401 
	[JDDZ]  [nvarchar(180)]  NOT NULL,--���ص�ַ ��ţ�ZZJX070402 ������JCTB010102 TXDZ ͨ�ŵ�ַ C 180 NULL NULL ָ����ʡ����������ֱϽ�У�/�أ��С��ݣ�/�أ������죩/�磨��/�֣��壩/���ƺŵ���ϸ��ַ NULL
	[JDYZBM]  [nvarchar(6)]  NOT NULL,--������������ ��ţ�ZZJX070403 ������JCTB010101 YZBM �������� C 6 NULL NULL NULL NULL
	[JDDH]  [nvarchar(30)]  NOT NULL,--���ص绰 ��ţ�ZZJX070404 ������JCTB010103 DH �绰 C 30 NULL NULL ���绰���� NULL
	[JDFZR]  [nvarchar(36)]  NOT NULL,--���ظ����� ��ţ�ZZJX070405 ������JCTB020101 XM ���� C 36 NULL NULL �������񻪣������ᡤ����������ľ NULL
	[LJJNRS]  [decimal(5)]  NULL,--�ۼƽ������� ��ţ�ZZJX070406 
CONSTRAINT [PK_ZZJX0704] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[XNJDMC] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--ѧ��У��ʵϰ������������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZJX0705]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZJX0705](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[XH]  [nvarchar(20)]  NOT NULL,--ѧ�� ��ţ�JCXS010101 ������JCTB020120 RYH ��Ա�� C 20 NULL NULL ѧ�Ż򹤺� NULL
	[XM]  [nvarchar(36)]  NOT NULL,--���� ��ţ�JCTB020101 ������JCTB020101 XM ���� C 36 NULL NULL �������񻪣������ᡤ����������ľ NULL
	[SXIKSRQ]  [nvarchar(8)]  NOT NULL,--ʵϰ��ʼ���� ��ţ�ZZJX070501 ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[SXIJSRQ]  [nvarchar(8)]  NOT NULL,--ʵϰ�������� ��ţ�ZZJX070502 ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[XNJDMC]  [nvarchar(6)]  NOT NULL,--У�ڻ������� ��ţ�ZZJX070403 ������ZZJX070403 JDYZBM ������������ C 6 M NULL NULL JCTB010101
	[SXNR]  [text]  NULL,--ʵϰ���� ��ţ�ZZJX070504 
	[SXIGWMC]  [nvarchar(50)]  NULL,--ʵϰ��λ���� ��ţ�ZZJX070505 ������ZZJX070303 SXGWMC ��ѵ��λ���� C 50 O NULL NULL NULL
	[SXIDSXM]  [nvarchar(36)]  NULL,--ʵϰ��ʦ���� ��ţ�ZZJX070506 ������JCTB020101 XM ���� C 36 NULL NULL �������񻪣������ᡤ����������ľ NULL
	[SXCJ]  [decimal(5,1)]  NULL,--ʵϰ�ɼ� ��ţ�ZZJX070507 
CONSTRAINT [PK_ZZJX0705] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[XH] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--����������������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZFC02]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZFC02](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[JZWH]  [nvarchar(6)]  NOT NULL,--������� ��ţ�JCBX020201 ������JCBX020201 JZWH ������� C 6 M NULL ѧУ�Ա� NULL
	[JZWMC]  [nvarchar(30)]  NOT NULL,--���������� ��ţ�JCBX020202 ������JCBX020202 JZWMC ���������� C 30 M NULL ָ������ĺ������� NULL
	[SYZKM]  [nvarchar(1)]  NOT NULL,--ʹ��״���� ��ţ�JCBX020204 ������JCBX020204 SYZKM ʹ��״���� C 1 M JY/T1001SYZKʹ��״������ NULL NULL
	[FWCQ]  [nvarchar(1)]  NOT NULL,--���ݲ�Ȩ ��ţ�JCBX020203 ������JCBX020203 FWCQM ���ݲ�Ȩ�� C 1 M JY/T1001CQ��Ȩ���� NULL NULL
	[XQH]  [nvarchar(2)]  NULL,--У���� ��ţ�JCXX010201 ������JCXX010201 XQH У���� C 2 M NULL ѧУ�Ա� NULL
	[JZWFLM]  [nvarchar(1)]  NOT NULL,--����������� ��ţ�JCBX020205 ������JCBX020205 JZWFLM ����������� C 1 M JY/T1001JZWFL������������ NULL NULL
	[JZWJGM]  [nvarchar(1)]  NOT NULL,--������ṹ�� ��ţ�JCBX020206 ������JCBX020206 JZWJGM ������ṹ�� C 1 O JY/T1001JZWJG������ṹ���� NULL NULL
	[JZWCS]  [decimal(2)]  NOT NULL,--��������� ��ţ�JCBX020207 ������JCBX020207 JZWCS ��������� N 2 O NULL �������ң���λ���� NULL
	[JCNY]  [nvarchar(6)]  NULL,--�������� ��ţ�JCBX020208 ������JCTB010202 NY ���� C 6 NULL GB/T7408 ��ʽ��YYYYMM���磺200604��ʾ2006��4�� NULL
	[JZWTZZE]  [money]  NULL,--������Ͷ���ܶ� ��ţ�JCBX020209 ������JCBX020209 JZWTZZE ������Ͷ���ܶ� M NULL M NULL ��λ��Ԫ NULL
	[JFLYM]  [nvarchar(1)]  NULL,--������Դ�� ��ţ�JCBX020210 ������JCBX020210 JFLYM ������Դ�� C 1 M JY/T1001JFLY������Դ���� NULL NULL
	[ZJZMJ]  [decimal(102)]  NOT NULL,--�ܽ������ ��ţ�JCBX020211 ������JCBX020211 ZJZMJ �ܽ������ N 102 M NULL ��λ��ƽ���� NULL
	[ZSYMJ]  [decimal(102)]  NOT NULL,--��ʹ����� ��ţ�JCBX020212 ������JCBX020212 ZSYMJ ��ʹ����� N 102 O NULL ��λ��ƽ���� NULL
	[KZSFLDM]  [nvarchar(1)]  NOT NULL,--��������Ҷ��� ��ţ�JCBX020213 ������JCBX020213 KZSFLDM ��������Ҷ��� C 1 M JY/T1001KZSFLD��������Ҷȴ��� NULL NULL
	[KZSFBZM]  [nvarchar(1)]  NOT NULL,--���������׼�� ��ţ�JCBX020214 ������JCBX020214 KZSFBZM ���������׼�� C 1 M JY/T1001KZSFBZ���������׼���� NULL NULL
	[JZWDZ]  [nvarchar(180)]  NOT NULL,--�������ַ ��ţ�JCBX020215 ������JCTB010102 TXDZ ͨ�ŵ�ַ C 180 NULL NULL ָ����ʡ����������ֱϽ�У�/�أ��С��ݣ�/�أ������죩/�磨��/�֣��壩/���ƺŵ���ϸ��ַ NULL
	[JZWZKM]  [nvarchar(2)]  NOT NULL,--������״���� ��ţ�JCBX020216 ������JCBX020216 JZWZKM ������״���� C 2 M JY/T1001JZWZK������״������ NULL NULL
	[JZWTP]  [nvarchar(200)]  NULL,--������ͼƬ ��ţ�JCBX020217 ������JCBX020217 JZWTP ������ͼƬ B NULL O NULL ָ���������Ƭ NULL
	[JZWPMT]  [nvarchar(200)]  NULL,--������ƽ��ͼ ��ţ�JCBX020218 ������JCBX020218 JZWPMT ������ƽ��ͼ B NULL O NULL ָ������Ľ���ƽ��ͼ NULL
	[XXDWCCM]  [nvarchar(1)]  NULL,--ѧУ��λ����� ��ţ�ZZFC020001 ֵ�ռ䣺JY/T1001XXDWCCѧУ��λ��δ��� 
	[JZWWZZK]  [nvarchar(1)]  NOT NULL,--������λ��״�� ��ţ�ZZFC020002 ֵ�ռ䣺JY/T1001SFBZ�Ƿ��־���� ����/������1У��0У�� 
	[GHSPWH]  [nvarchar(24)]  NOT NULL,--�滮�����ĺ� ��ţ�ZZFC020003 
	[ZHFZNL]  [nvarchar(60)]  NULL,--�ۺϷ������� ��ţ�ZZFC020004 
	[GHSYNX]  [decimal(3)]  NULL,--�滮ʹ������ ��ţ�ZZFC020005 
	[SFYYJBXCS]  [nvarchar(1)]  NULL,--�Ƿ���Ԥ�����մ�ʩ ��ţ�ZZFC020006 ֵ�ռ䣺JY/T1001SFBZ�Ƿ��־���� 
	[SFKYYYJBNCS]  [nvarchar(1)]  NULL,--�Ƿ������Ӧ�����ѳ��� ��ţ�ZZFC020007 ֵ�ռ䣺JY/T1001SFBZ�Ƿ��־���� 
	[CQZH]  [nvarchar(20)]  NOT NULL,--��Ȩ֤�� ��ţ�ZZFC020008 
	[JZWYTM]  [nvarchar(2)]  NULL,--��������;�� ��ţ�ZZFC020009 ֵ�ռ䣺JY/T1001JZWYT��������;���� 
	[JZWZGD]  [decimal(3)]  NULL,--�������ܸ߶� ��ţ�ZZFC020010 ����/��������λ���� 
	[WFJDBM]  [nvarchar(60)]  NULL,--Σ���������� ��ţ�ZZFC020012 ������JCTB010302 DWMC ��λ���� C 60 NULL NULL NULL NULL
	[WFJDWH]  [nvarchar(20)]  NULL,--Σ�������ĺ� ��ţ�ZZFC020013 
	[WFJDRQ]  [nvarchar(8)]  NULL,--Σ���������� ��ţ�ZZFC020014 ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[GNFSM]  [nvarchar(1)]  NULL,--��ů��ʽ�� ��ţ�ZZFC020015 ֵ�ռ䣺JY/T1001GNFS��ů��ʽ���� 
	[JZWJCXSM]  [nvarchar(1)]  NULL,--�����������ʽ�� ��ţ�ZZFC020016 ֵ�ռ䣺JY/T1001JZWJCXS�����������ʽ���� 
	[JZWPMXSM]  [nvarchar(1)]  NULL,--������ƽ����ʽ�� ��ţ�ZZFC020017 ֵ�ռ䣺JY/T1001JZWPMXS������ƽ����ʽ���� 
	[JZWLBXSM]  [nvarchar(1)]  NULL,--������¥����ʽ�� ��ţ�ZZFC020018 ֵ�ռ䣺JY/T1001JZWLBXS������¥����ʽ���� 
	[SFYGZZ]  [nvarchar(1)]  NOT NULL,--�Ƿ��й����� ��ţ�ZZFC020019 ֵ�ռ䣺JY/T1001SFBZ�Ƿ��־���� 
	[QL]  [nvarchar(1)]  NOT NULL,--Ȧ�� ��ţ�ZZFC020020 ֵ�ռ䣺JY/T1001SFBZ�Ƿ��־���� 
	[ZJAQGZWCRQ]  [nvarchar(8)]  NULL,--�����ȫ����������� ��ţ�ZZFC020021 ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[ZJAQGZHYJSYNX]  [decimal(2)]  NULL,--�����ȫ�����Ԥ��ʹ������ ��ţ�ZZFC020022 ����/��������λ���� 
	[ZXLXM]  [nvarchar(1)]  NULL,--ר������ ��ţ�ZZFC020023 ֵ�ռ䣺JY/T1001SFBZ�Ƿ��־���� ����/������1����ר����Ŀ0������ר����Ŀ 
	[ZYZXTZBZMCM]  [nvarchar(2)]  NULL,--����ר��Ͷ�ʲ��������� ��ţ�ZZFC020024 ֵ�ռ䣺JY/T1001ZYZXTZBZMC����ר��Ͷ�ʲ������ƴ��� 
	[WWJZDJM]  [nvarchar(1)]  NULL,--���ｨ���ȼ��� ��ţ�ZZFC020025 ֵ�ռ䣺JY/T1001WWJZDJ���ｨ���ȼ����� 
	[JXJFZYF]  [decimal(8)]  NOT NULL,--��ѧ�������÷� ��ţ�ZZFC020026 ����/��������������Ϊ���ҡ�ʵ���ҡ�ͼ���ҡ�΢���ҡ������ҡ�������Ҽ������̸��÷����ܺͣ���λ��ƽ���� 
	[QZJS]  [decimal(8)]  NOT NULL,--���н��� ��ţ�ZZFC020027 ����/��������λ��ƽ���� 
	[QZSYS]  [decimal(8)]  NOT NULL,--����ʵ���� ��ţ�ZZFC020028 ����/��������λ��ƽ���� 
	[QZTSS]  [decimal(8)]  NOT NULL,--����ͼ���� ��ţ�ZZFC020029 ����/��������λ��ƽ���� 
	[QZWJS]  [decimal(8)]  NOT NULL,--����΢���� ��ţ�ZZFC020030 ����/��������λ��ƽ���� 
	[QZYYS]  [decimal(8)]  NOT NULL,--���������� ��ţ�ZZFC020031 ����/��������λ��ƽ���� 
	[QZTYHDS]  [decimal(8)]  NOT NULL,--����������� ��ţ�ZZFC020032 ����/��������λ��ƽ���� 
	[QZQTJFYF]  [decimal(8)]  NOT NULL,--���������̸��÷� ��ţ�ZZFC020033 ����/��������λ��ƽ���� 
	[SHYF]  [decimal(8)]  NOT NULL,--�����÷� ��ţ�ZZFC020034 ����/��������������Ϊѧ�����ᡢʳ�á���������¯������ˮ������ԡ�ҡ��̹����ἰ���������÷����ܺͣ���λ��ƽ���� 
	[QZXSSS]  [decimal(8)]  NOT NULL,--����ѧ������ ��ţ�ZZFC020035 ����/��������λ��ƽ���� 
	[QZST]  [decimal(8)]  NOT NULL,--����ʳ�� ��ţ�ZZFC020036 ����/��������λ��ƽ���� 
	[QZCS]  [decimal(8)]  NOT NULL,--���в��� ��ţ�ZZFC020037 ����/��������λ��ƽ���� 
	[QZGLF]  [decimal(8)]  NOT NULL,--���й�¯��(��ˮ��) ��ţ�ZZFC020038 ����/��������λ��ƽ���� 
	[QZYS]  [decimal(8)]  NOT NULL,--����ԡ�� ��ţ�ZZFC020039 ����/��������λ��ƽ���� 
	[QZJGSS]  [decimal(8)]  NOT NULL,--���н̹����� ��ţ�ZZFC020040 ����/��������λ��ƽ���� 
	[QZQTSHYF]  [decimal(8)]  NOT NULL,--�������������÷� ��ţ�ZZFC020041 ����/��������λ��ƽ���� 
	[XZBGYF]  [decimal(8)]  NOT NULL,--�����칫�÷� ��ţ�ZZFC020042 ����/��������������Ϊ��ְ���칫�ҡ����������Ҽ����������칫�÷����ܺͣ���λ��ƽ���� 
	[QZJSBGS]  [decimal(8)]  NOT NULL,--���н�ְ���칫�� ��ţ�ZZFC020043 ����/��������λ��ƽ���� 
	[QZWSBJS]  [decimal(8)]  NOT NULL,--�������������� ��ţ�ZZFC020044 ����/��������λ��ƽ���� 
	[QZQTXZBGYF]  [decimal(8)]  NOT NULL,--�������������칫�÷� ��ţ�ZZFC020045 ����/��������λ��ƽ���� 
	[QTYF]  [decimal(8)]  NOT NULL,--�����÷� ��ţ�ZZFC020046 ����/�������ǽ�ѧ�������÷��������÷��������칫�÷����÷��ܺͣ���λ��ƽ���� 
CONSTRAINT [PK_ZZFC02] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[JZWH] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--�����ﵵ���������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZFC03]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZFC03](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[TZJHSPDW]  [nvarchar(60)]  NULL,--Ͷ�ʼƻ�������λ ��ţ�ZZFC030001 ������JCTB010302 DWMC ��λ���� C 60 NULL NULL NULL NULL
	[TZJHSPWH]  [nvarchar(30)]  NULL,--Ͷ�ʼƻ������ĺ� ��ţ�ZZFC030002 
	[LXPFDW]  [nvarchar(60)]  NULL,--����������λ ��ţ�ZZFC030003 ������JCTB010302 DWMC ��λ���� C 60 NULL NULL NULL NULL
	[LXPFWH]  [nvarchar(30)]  NULL,--���������ĺ� ��ţ�ZZFC030004 
	[KXXYJBGPFDW]  [nvarchar(60)]  NULL,--�������о�����������λ ��ţ�ZZFC030005 ������JCTB010302 DWMC ��λ���� C 60 NULL NULL NULL NULL
	[KXXYJBGPFWH]  [nvarchar(30)]  NULL,--�������о����������ĺ� ��ţ�ZZFC030006 
	[GHXKZH]  [nvarchar(30)]  NULL,--�滮(����)���֤�� ��ţ�ZZFC030007 
	[JSDW]  [nvarchar(60)]  NULL,--���赥λ ��ţ�ZZFC030008 ������JCTB010302 DWMC ��λ���� C 60 NULL NULL NULL NULL
	[JSDWFZR]  [nvarchar(36)]  NULL,--���赥λ������ ��ţ�ZZFC030009 ������JCTB020101 XM ���� C 36 NULL NULL �������񻪣������ᡤ����������ľ NULL
	[DKDWMC]  [nvarchar(60)]  NULL,--�ؿ���λ���� ��ţ�ZZFC030010 ������JCTB010302 DWMC ��λ���� C 60 NULL NULL NULL NULL
	[DKDWFRDB]  [nvarchar(36)]  NULL,--�ؿ���λ���˴��� ��ţ�ZZFC030011 ������JCTB020101 XM ���� C 36 NULL NULL �������񻪣������ᡤ����������ľ NULL
	[DKDWZZM]  [nvarchar(1)]  NULL,--�ؿ���λ������ ��ţ�ZZFC030012 ֵ�ռ䣺JY/T1001DKDWZZ�ؿ���λ���ʴ��� 
	[DKDWKCHTH]  [nvarchar(30)]  NULL,--�ؿ���λ�����ͬ�� ��ţ�ZZFC030013 
	[SJDWMC]  [nvarchar(60)]  NULL,--��Ƶ�λ���� ��ţ�ZZFC030014 ������JCTB010302 DWMC ��λ���� C 60 NULL NULL NULL NULL
	[SJDWFRDB]  [nvarchar(36)]  NULL,--��Ƶ�λ���˴��� ��ţ�ZZFC030015 ������JCTB020101 XM ���� C 36 NULL NULL �������񻪣������ᡤ����������ľ NULL
	[SJDWZZM]  [nvarchar(1)]  NULL,--��Ƶ�λ������ ��ţ�ZZFC030016 ֵ�ռ䣺JY/T1001SJDWZZ��Ƶ�λ���ʴ��� 
	[SJDWTZSJHTH]  [nvarchar(30)]  NULL,--��Ƶ�λͼֽ��ƺ�ͬ�� ��ţ�ZZFC030017 
	[SGTZSCDWMC]  [nvarchar(60)]  NULL,--ʩ��ͼֽ��鵥λ���� ��ţ�ZZFC030018 ������JCTB010302 DWMC ��λ���� C 60 NULL NULL NULL NULL
	[SGTZSCDWFRDB]  [nvarchar(36)]  NULL,--ʩ��ͼֽ��鵥λ���˴��� ��ţ�ZZFC030019 ������JCTB020101 XM ���� C 36 NULL NULL �������񻪣������ᡤ����������ľ NULL
	[SGTZSCDWZZM]  [nvarchar(1)]  NULL,--ʩ��ͼֽ��鵥λ������ ��ţ�ZZFC030020 ֵ�ռ䣺JY/T1001SGTZSCZZʩ��ͼֽ������ʴ��� 
	[SGTZSCHTH]  [nvarchar(30)]  NULL,--ʩ��ͼֽ����ͬ�� ��ţ�ZZFC030021 
	[ZTBXSM]  [nvarchar(1)]  NULL,--��Ͷ����ʽ�� ��ţ�ZZFC030022 ֵ�ռ䣺JY/T1001ZTBXS��Ͷ����ʽ���� 
	[GCJLDWMC]  [nvarchar(60)]  NULL,--���̼���λ���� ��ţ�ZZFC030023 ������JCTB010302 DWMC ��λ���� C 60 NULL NULL NULL NULL
	[GCJLDWFRDB]  [nvarchar(36)]  NULL,--���̼���λ���˴��� ��ţ�ZZFC030024 ������JCTB020101 XM ���� C 36 NULL NULL �������񻪣������ᡤ����������ľ NULL
	[GCJLDWZZM]  [nvarchar(1)]  NULL,--���̼���λ������ ��ţ�ZZFC030025 ֵ�ռ䣺JY/T1001JLDWZZ����λ���ʴ��� 
	[GCJLDWJLHTH]  [nvarchar(30)]  NULL,--���̼���λ�����ͬ�� ��ţ�ZZFC030026 
	[SGDWMC]  [nvarchar(60)]  NULL,--ʩ����λ���� ��ţ�ZZFC030027 ������JCTB010302 DWMC ��λ���� C 60 NULL NULL NULL NULL
	[SGDWFRDB]  [nvarchar(36)]  NULL,--ʩ����λ���˴��� ��ţ�ZZFC030028 ������JCTB020101 XM ���� C 36 NULL NULL �������񻪣������ᡤ����������ľ NULL
	[SGDWZZDJM]  [nvarchar(1)]  NULL,--ʩ����λ���ʵȼ��� ��ţ�ZZFC030029 ֵ�ռ䣺JY/T1001SGDWZZDJʩ����λ���ʵȼ����� 
	[SGDWSGHTH]  [nvarchar(30)]  NULL,--ʩ����λʩ����ͬ�� ��ţ�ZZFC030030 
	[ZJDWMC]  [nvarchar(60)]  NULL,--�ʼ൥λ���� ��ţ�ZZFC030031 ������JCTB010302 DWMC ��λ���� C 60 NULL NULL NULL NULL
	[ZJDWFRDB]  [nvarchar(36)]  NULL,--�ʼ൥λ���˴��� ��ţ�ZZFC030032 ������JCTB020101 XM ���� C 36 NULL NULL �������񻪣������ᡤ����������ľ NULL
	[SGXKZH]  [nvarchar(30)]  NULL,--ʩ�����֤�� ��ţ�ZZFC030033 
	[JGYSJG]  [nvarchar(1)]  NULL,--�������ս�� ��ţ�ZZFC030034 ֵ�ռ䣺JY/T1001SFBZ�Ƿ��־���� ����/������1����ͨ��0���ղ�ͨ�� 
	[JGYSBAH]  [nvarchar(30)]  NULL,--�������ձ����� ��ţ�ZZFC030035 
	[SJDWMC]  [nvarchar(60)]  NULL,--��Ƶ�λ���� ��ţ�ZZFC030036 ������JCTB010302 DWMC ��λ���� C 60 NULL NULL NULL NULL
	[SJDWFRDB]  [nvarchar(36)]  NULL,--��Ƶ�λ���˴��� ��ţ�ZZFC030037 ������JCTB020101 XM ���� C 36 NULL NULL �������񻪣������ᡤ����������ľ NULL
	[SJDWZZ]  [nvarchar(50)]  NULL,--��Ƶ�λ���� ��ţ�ZZFC030038 
	[SJDWSJBGH]  [nvarchar(36)]  NULL,--��Ƶ�λ��Ʊ���� ��ţ�ZZFC030039 ������JCTB020101 XM ���� C 36 NULL NULL �������񻪣������ᡤ����������ľ NULL
	[SJJSGJSZLSFWZCD]  [nvarchar(1)]  NULL,--��Ƽ�ʩ�����������Ƿ������浵 ��ţ�ZZFC030040 ֵ�ռ䣺JY/T1001SFBZ�Ƿ��־���� 
	[BZ]  [text]  NULL,--��ע ��ţ�ZZFC030041 
CONSTRAINT [PK_ZZFC03] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--�����ﰲȫ�Ų��������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZFC04]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZFC04](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[PCRQ]  [nvarchar(8)]  NOT NULL,--�Ų����� ��ţ�ZZFC040001 ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[WJQKKCZL]  [nvarchar(1)]  NULL,--�ļ������������ ��ţ�ZZFC040002 ֵ�ռ䣺JY/T1001SFBZ�Ƿ��־���� ����/�������ļ�������Ƿ����� 
	[WJQKSJWJ]  [nvarchar(1)]  NULL,--�ļ��������ļ� ��ţ�ZZFC040003 ֵ�ռ䣺JY/T1001SFBZ�Ƿ��־���� ����/�������ļ�������Ƿ����� 
	[WJQKSGZL]  [nvarchar(1)]  NULL,--�ļ����ʩ������ ��ţ�ZZFC040004 ֵ�ռ䣺JY/T1001SFBZ�Ƿ��־���� ����/�������ļ�������Ƿ����� 
	[WJQKJCWJ]  [nvarchar(1)]  NULL,--�ļ��������ļ� ��ţ�ZZFC040005 ֵ�ռ䣺JY/T1001SFBZ�Ƿ��־���� ����/�������ļ����:�Ƿ����� 
	[WJQKJGZL]  [nvarchar(1)]  NULL,--�ļ������������ ��ţ�ZZFC040006 ֵ�ռ䣺JY/T1001SFBZ�Ƿ��־���� ����/�������ļ����:�Ƿ����� 
	[XFNHDJM]  [nvarchar(1)]  NULL,--�����ͻ�ȼ��� ��ţ�ZZFC040007 ֵ�ռ䣺JY/T1001XFNHDJ�����ͻ�ȼ����� 
	[XFNHDJSFFHGFYQ]  [nvarchar(1)]  NULL,--�����ͻ�ȼ��Ƿ���Ϲ淶Ҫ�� ��ţ�ZZFC040008 ֵ�ռ䣺JY/T1001SFBZ�Ƿ��־���� 
	[XFPTSSSFWHYX]  [nvarchar(1)]  NULL,--����������ʩ�Ƿ������Ч ��ţ�ZZFC040009 ֵ�ռ䣺JY/T1001SFBZ�Ƿ��־���� 
	[XFAQSSSFFHGFYQ]  [nvarchar(1)]  NULL,--������ȫ��ɢ�Ƿ���Ϲ淶Ҫ�� ��ţ�ZZFC040010 ֵ�ռ䣺JY/T1001SFBZ�Ƿ��־���� 
	[SFYDZWX]  [nvarchar(1)]  NULL,--�Ƿ��е�����в ��ţ�ZZFC040011 ֵ�ռ䣺JY/T1001SFBZ�Ƿ��־���� 
	[DZWXFZBZ]  [nvarchar(200)]  NULL,--������в���ֱ�׼ ��ţ�ZZFC040012 
	[DZLSSZQK]  [nvarchar(200)]  NULL,--������ʷ������� ��ţ�ZZFC040013 
	[SFYHSWX]  [nvarchar(1)]  NULL,--�Ƿ��к�ˮ��в ��ţ�ZZFC040014 ֵ�ռ䣺JY/T1001SFBZ�Ƿ��־���� 
	[HSWXFZBZ]  [nvarchar(200)]  NULL,--��ˮ��в���ֱ�׼ ��ţ�ZZFC040015 
	[HSLSSZQK]  [nvarchar(200)]  NULL,--��ˮ��ʷ������� ��ţ�ZZFC040016 
	[SFYTFWX]  [nvarchar(1)]  NULL,--�Ƿ���̨����в ��ţ�ZZFC040017 ֵ�ռ䣺JY/T1001SFBZ�Ƿ��־���� 
	[TFWXFZBZ]  [nvarchar(200)]  NULL,--̨����в���ֱ�׼ ��ţ�ZZFC040018 
	[TFLSSZQK]  [nvarchar(200)]  NULL,--̨����ʷ������� ��ţ�ZZFC040019 
	[SFYLJWX]  [nvarchar(1)]  NULL,--�Ƿ����׻���в ��ţ�ZZFC040020 ֵ�ռ䣺JY/T1001SFBZ�Ƿ��־���� 
	[LJWXFYBZ]  [nvarchar(200)]  NULL,--�׻���в������׼ ��ţ�ZZFC040021 
	[LJLSSZQK]  [nvarchar(200)]  NULL,--�׻���ʷ������� ��ţ�ZZFC040022 
	[SFYKBHCWX]  [nvarchar(1)]  NULL,--�Ƿ��п�Ӻ�����в ��ţ�ZZFC040023 ֵ�ռ䣺JY/T1001SFBZ�Ƿ��־���� 
	[KBHCWXFZBZ]  [nvarchar(200)]  NULL,--��Ӻ�����в���ֱ�׼ ��ţ�ZZFC040024 
	[KBHCLSSZQK]  [nvarchar(200)]  NULL,--��Ӻ�����ʷ������� ��ţ�ZZFC040025 
	[SFYQTYDAQWX]  [nvarchar(1)]  NULL,--�Ƿ��������õذ�ȫ��в ��ţ�ZZFC040026 ֵ�ռ䣺JY/T1001SFBZ�Ƿ��־���� 
	[QTYDAQWXQKHLSSZQK]  [nvarchar(200)]  NULL,--�����õذ�ȫ��в�������ʷ������� ��ţ�ZZFC040027 
	[LSSYHWXGZQK]  [nvarchar(200)]  NULL,--��ʷʹ�ú�ά�޸������ ��ţ�ZZFC040028 
	[XCJCQK]  [nvarchar(200)]  NULL,--�ֳ������� ��ţ�ZZFC040029 
	[CZDZYWTHAQYH]  [nvarchar(200)]  NULL,--���ڵ���Ҫ����Ͱ�ȫ���� ��ţ�ZZFC040030 
	[JZWAQPCJLM]  [nvarchar(1)]  NULL,--�����ﰲȫ�Ų������ ��ţ�ZZFC040031 ֵ�ռ䣺JY/T1001JZWAQPCJL�����ﰲȫ�Ų���۴��� 
	[PCDW]  [nvarchar(60)]  NULL,--�Ų鵥λ ��ţ�ZZFC040032 ������JCTB010302 DWMC ��λ���� C 60 NULL NULL NULL NULL
	[PCR]  [nvarchar(36)]  NULL,--�Ų��� ��ţ�ZZFC040033 ������JCTB020101 XM ���� C 36 NULL NULL �������񻪣������ᡤ����������ľ NULL
CONSTRAINT [PK_ZZFC04] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[PCRQ] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--����������������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZFC05]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZFC05](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[JZWJDNRM]  [nvarchar(1)]  NULL,--��������������� ��ţ�ZZFC050001 ֵ�ռ䣺JY/T1001JZWJDNR������������ݴ��� 
	[KZJDDW]  [nvarchar(60)]  NULL,--���������λ ��ţ�ZZFC050002 ������JCTB010302 DWMC ��λ���� C 60 NULL NULL NULL NULL
	[KZJDDWZZ]  [nvarchar(50)]  NULL,--���������λ���� ��ţ�ZZFC050003 
	[KZJDKZSFLDM]  [nvarchar(1)]  NULL,--���������������Ҷ��� ��ţ�ZZFC050004 ֵ�ռ䣺JY/T1001KZSFLD��������Ҷȴ��� 
	[KZJDJL]  [nvarchar(1)]  NULL,--����������� ��ţ�ZZFC050005 ֵ�ռ䣺JY/T1001SFBZ�Ƿ��־���� ����/������1���Ͽ���Ҫ��0�����Ͽ���Ҫ�� 
	[KZJDJZDC]  [nvarchar(200)]  NULL,--����������ֶԲߺʹ������ ��ţ�ZZFC050006 
	[KZJDBGBH]  [nvarchar(200)]  NULL,--������������� ��ţ�ZZFC050007 
	[KZJDBGRQ]  [nvarchar(8)]  NULL,--��������������� ��ţ�ZZFC050008 ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[KZJDZCY]  [nvarchar(200)]  NULL,--����������Ա ��ţ�ZZFC050009 
	[KZJDZRR]  [nvarchar(36)]  NULL,--������������� ��ţ�ZZFC050010 ������JCTB020101 XM ���� C 36 NULL NULL �������񻪣������ᡤ����������ľ NULL
	[KZJDFY]  [decimal(82)]  NULL,--����������� ��ţ�ZZFC050011 ����/��������λ��Ԫ 
	[JZWAQJDDW]  [nvarchar(60)]  NULL,--�����ﰲȫ������λ ��ţ�ZZFC050012 ������JCTB010302 DWMC ��λ���� C 60 NULL NULL NULL NULL
	[JZWAQJDDWZZ]  [nvarchar(50)]  NULL,--�����ﰲȫ������λ���� ��ţ�ZZFC050013 
	[JZWAQJDJL]  [nvarchar(50)]  NULL,--�����ﰲȫ�������� ��ţ�ZZFC050014 
	[JZWAQJDBGBH]  [nvarchar(30)]  NULL,--�����ﰲȫ���������� ��ţ�ZZFC050015 
	[XSAQJDBGRQ]  [nvarchar(8)]  NULL,--У�ᰲȫ������������ ��ţ�ZZFC050016 ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[XSAQJDZCY]  [nvarchar(200)]  NULL,--У�ᰲȫ�������Ա ��ţ�ZZFC050017 
	[XSAQJDZRR]  [nvarchar(36)]  NULL,--У�ᰲȫ���������� ��ţ�ZZFC050018 ������JCTB020101 XM ���� C 36 NULL NULL �������񻪣������ᡤ����������ľ NULL
	[XSAQJDFY]  [decimal(82)]  NULL,--У�ᰲȫ�������� ��ţ�ZZFC050019 ����/��������λ��Ԫ 
	[KHKYJDDW]  [nvarchar(60)]  NULL,--���鿹�ͼ�����λ ��ţ�ZZFC050020 ������JCTB010302 DWMC ��λ���� C 60 NULL NULL NULL NULL
	[KHKYJDDWZZ]  [nvarchar(50)]  NULL,--���鿹�ͼ�����λ���� ��ţ�ZZFC050021 
	[KHKYJDYWZBCS]  [nvarchar(1)]  NULL,--���鿹�ͼ��������Ա���ʩ ��ţ�ZZFC050022 ֵ�ռ䣺JY/T1001SFBZ�Ƿ��־���� 
	[KHKYJDYWBXCS]  [nvarchar(1)]  NULL,--���鿹�ͼ������ޱ��մ�ʩ ��ţ�ZZFC050023 ֵ�ռ䣺JY/T1001SFBZ�Ƿ��־���� 
	[KHKYJDJL]  [nvarchar(1)]  NULL,--���鿹�ͼ������� ��ţ�ZZFC050024 ֵ�ռ䣺JY/T1001SFBZ�Ƿ��־���� ����/������1����0������ 
	[KHKYJDBGBH]  [nvarchar(30)]  NULL,--���鿹�ͼ��������� ��ţ�ZZFC050025 
	[KHKYJDBGRQ]  [nvarchar(8)]  NULL,--���鿹�ͼ����������� ��ţ�ZZFC050026 ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[KHKYJDZCY]  [nvarchar(200)]  NULL,--���鿹�ͼ������Ա ��ţ�ZZFC050027 
	[KHKYJDZRR]  [nvarchar(36)]  NULL,--���鿹�ͼ��������� ��ţ�ZZFC050028 ������JCTB020101 XM ���� C 36 NULL NULL �������񻪣������ᡤ����������ľ NULL
	[KHKYJDFY]  [decimal(82)]  NULL,--���鿹�ͼ������� ��ţ�ZZFC050029 ����/��������λ��Ԫ 
	[KFYSDW]  [nvarchar(60)]  NULL,--�������㵥λ ��ţ�ZZFC050030 ������JCTB010302 DWMC ��λ���� C 60 NULL NULL NULL NULL
	[KFYSDWZZ]  [nvarchar(50)]  NULL,--�������㵥λ���� ��ţ�ZZFC050031 
	[KFYSJL]  [nvarchar(1)]  NULL,--����������� ��ţ�ZZFC050032 ֵ�ռ䣺JY/T1001SFBZ�Ƿ��־���� ����/������1����0������ 
	[KFYSBGBH]  [nvarchar(30)]  NULL,--�������㱨���� ��ţ�ZZFC050033 
	[KFYSBGRQ]  [nvarchar(8)]  NULL,--�������㱨������ ��ţ�ZZFC050034 ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[KFYSZCY]  [nvarchar(200)]  NULL,--�����������Ա ��ţ�ZZFC050035 
	[KFYSZRR]  [nvarchar(36)]  NULL,--�������������� ��ţ�ZZFC050036 ������JCTB020101 XM ���� C 36 NULL NULL �������񻪣������ᡤ����������ľ NULL
	[KFYSFY]  [decimal(82)]  NULL,--����������� ��ţ�ZZFC050037 ����/��������λ��Ԫ 
	[QTJDMC]  [nvarchar(60)]  NULL,--������������ ��ţ�ZZFC050038 
	[QTJDDW]  [nvarchar(60)]  NULL,--����������λ ��ţ�ZZFC050039 ������JCTB010302 DWMC ��λ���� C 60 NULL NULL NULL NULL
	[QTJDDWZZ]  [nvarchar(50)]  NULL,--����������λ���� ��ţ�ZZFC050040 
	[QTJDJL]  [nvarchar(1)]  NULL,--������������ ��ţ�ZZFC050041 ֵ�ռ䣺JY/T1001SFBZ�Ƿ��־���� ����/������1����0������ 
	[QTJDBGBH]  [nvarchar(30)]  NULL,--�������������� ��ţ�ZZFC050042 
	[QTJDBGRQ]  [nvarchar(8)]  NULL,--���������������� ��ţ�ZZFC050043 ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[QTJDZCY]  [nvarchar(200)]  NULL,--�����������Ա ��ţ�ZZFC050044 
	[QTJDZRR]  [nvarchar(36)]  NULL,--�������������� ��ţ�ZZFC050045 ������JCTB020101 XM ���� C 36 NULL NULL �������񻪣������ᡤ����������ľ NULL
	[QTJDFY]  [decimal(82)]  NULL,--������������ ��ţ�ZZFC050046 ����/��������λ��Ԫ 
	[ZHFZPJ]  [nvarchar(200)]  NULL,--�ۺϷ������� ��ţ�ZZFC050047 
	[ZHJDJL]  [nvarchar(1)]  NULL,--�ۺϼ������� ��ţ�ZZFC050048 ֵ�ռ䣺JY/T1001SFBZ�Ƿ��־���� ����/������1��ȫ0����ȫ 
	[HXSYNX]  [decimal(2)]  NULL,--����ʹ������ ��ţ�ZZFC050049 
	[CLYJ]  [nvarchar(1)]  NULL,--������� ��ţ�ZZFC050050 ����/������1�ӹ̸���2��� 
	[QTJY]  [nvarchar(200)]  NULL,--�������� ��ţ�ZZFC050051 
	[QBJDFY]  [decimal(82)]  NULL,--ȫ���������� ��ţ�ZZFC050052 ����/��������λ��Ԫ 
CONSTRAINT [PK_ZZFC05] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--ѧ�������������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZFC08]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZFC08](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[SSLBM]  [nvarchar(6)]  NOT NULL,--����¥��� ��ţ�ZZFC080001 ������JCBX020201 JZWH ������� C 6 M NULL ѧУ�Ա� NULL
	[FJBM]  [nvarchar(10)]  NOT NULL,--������ ��ţ�ZZFC080002 
	[RZXB]  [nvarchar(1)]  NOT NULL,--��ס�Ա� ��ţ�ZZFC080003 ֵ�ռ䣺GB/T2261.1 ����/������1����2Ů�� 
	[SFKY]  [nvarchar(1)]  NOT NULL,--�Ƿ���� ��ţ�ZZFC080004 ֵ�ռ䣺JY/T1001SFBZ�Ƿ��־���� ����/������1����0������ 
	[KZRS]  [decimal(2)]  NOT NULL,--��ס���� ��ţ�ZZFC080005 
	[WLDK]  [nvarchar(20)]  NULL,--����˿� ��ţ�ZZFC080006 
	[AZDSJ]  [nvarchar(1)]  NULL,--��װ���ӻ� ��ţ�ZZFC080007 ֵ�ռ䣺JY/T1001SFBZ�Ƿ��־���� ����/������1�Ѱ�װ0δ��װ 
	[DHDK]  [nvarchar(20)]  NULL,--�绰�˿� ��ţ�ZZFC080008 
	[DHHM]  [nvarchar(20)]  NULL,--�绰���� ��ţ�ZZFC080009 
	[SBDS]  [decimal(10)]  NULL,--ˮ����� ��ţ�ZZFC080010 
	[DBDS]  [decimal(10)]  NULL,--������ ��ţ�ZZFC080011 
	[SSBZ]  [text]  NULL,--���ᱸע ��ţ�ZZFC080012 
CONSTRAINT [PK_ZZFC08] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[SSLBM] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--�����������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZFC09]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZFC09](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[XQDM]  [nvarchar(2)]  NOT NULL,--У������ ��ţ�ZZXX020001 ������ZZXX020001 XQDM У������ C 2 M NULL NULL JCXX010201
	[JZWH]  [nvarchar(6)]  NOT NULL,--������� ��ţ�ZZFC090001 ������JCBX020201 JZWH ������� C 6 M NULL ѧУ�Ա� NULL
	[JSBH]  [nvarchar(10)]  NOT NULL,--���ұ�� ��ţ�ZZFC090002 ����/������ѧУ�Ա� 
	[JSLXDM]  [nvarchar(1)]  NOT NULL,--�������ʹ��� ��ţ�ZZFC090003 ֵ�ռ䣺JY/T1001JSLX�������ʹ��� 
	[SJRL]  [decimal(4)]  NOT NULL,--ʵ������ ��ţ�ZZFC090004 ����/���������ҵ�ʵ������ 
	[ZDPKRL]  [decimal(4)]  NOT NULL,--����ſ����� ��ţ�ZZFC090005 ����/�������ſ�ʱ�Ľ��ҵ�������� 
	[WLZT]  [nvarchar(1)]  NOT NULL,--����״̬ ��ţ�ZZFC090006 ֵ�ռ䣺JY/T1001SFBZ�Ƿ��־���� ����/������0��ͨ1ͨ 
	[SFDMTJS]  [nvarchar(1)]  NOT NULL,--�Ƿ��ý����� ��ţ�ZZFC090007 ֵ�ռ䣺JY/T1001SFBZ�Ƿ��־���� 
	[PMT]  [nvarchar(200)]  NULL,--ƽ��ͼ ��ţ�ZZFC090008 
	[TP]  [nvarchar(200)]  NULL,--ͼƬ ��ţ�ZZFC090009 
	[SFKY]  [nvarchar(1)]  NOT NULL,--�Ƿ���� ��ţ�ZZFC090010 ֵ�ռ䣺JY/T1001SFBZ�Ƿ��־���� ����/������1����0������ 
	[JSBZ]  [text]  NULL,--���ұ�ע ��ţ�ZZFC090011 
CONSTRAINT [PK_ZZFC09] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[XQDM] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--�����豸�������������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZBX0101]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZBX0101](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[XQDM]  [nvarchar(2)]  NOT NULL,--У������ ��ţ�ZZXX020001 ������ZZXX020001 XQDM У������ C 2 M NULL NULL JCXX010201
	[YQBH]  [nvarchar(80)]  NOT NULL,--�����豸��� ��ţ�ZZBX010101 
	[YQZWMC]  [nvarchar(100)]  NOT NULL,--�����豸�������� ��ţ�ZZBX010102 ����/��������Ʒ�����ϵĺ������ƣ����ڲ�Ʒ��Ӣ�뺺���ƣ������������豸���̾ߺ���ߵ� 
	[YQYWMC]  [nvarchar(100)]  NOT NULL,--�����豸Ӣ������ ��ţ�ZZBX010103 
	[CQM]  [nvarchar(1)]  NOT NULL,--��Ȩ�� ��ţ�JCBX030105 ������JCBX030105 CQM ��Ȩ�� C 1 M JY/T1001CQ��Ȩ���� NULL NULL
	[YQXH]  [nvarchar(80)]  NOT NULL,--�����豸�ͺ� ��ţ�ZZBX010104 
	[SCCJ]  [nvarchar(180)]  NOT NULL,--�������� ��ţ�JCBX030112 ������JCBX030112 SCCJ �������� C 180 M NULL ָ�������ҵĺ����������ڲ�Ʒ��Ӣ�뺺���������� NULL
	[CCH]  [nvarchar(30)]  NULL,--������ ��ţ�JCBX030113 ������JCBX030113 CCH ������ C 30 M NULL ���ұ�ע�ڲ�Ʒ�ϵ�Ψһ�� NULL
	[CCRQ]  [nvarchar(8)]  NULL,--�������� ��ţ�JCBX030108 ������JCBX030108 CCRQ �������� C 8 M NULL NULL JCTB010203
	[SCGBDQM]  [nvarchar(3)]  NULL,--��������/������ ��ţ�JCBX030109 ������JCBX030109 SCGBDQM ��������/������ C 3 M GB/T2659 ָ������������������λ��ĸ���� NULL
	[JFKMM]  [nvarchar(1)]  NULL,--���ѿ�Ŀ�� ��ţ�JCBX030110 ������JCBX030110 JFKMM ���ѿ�Ŀ�� C 1 M JY/T1001JFKM���ѿ�Ŀ���� NULL NULL
	[JGBZ]  [nvarchar(3)]  NULL,--�۸���� ��ţ�JCBX030120 ������JCBX030120 JGBZ �۸���� C 3 O GB/T12406 NULL NULL
	[YQJG]  [money]  NULL,--�����۸� ��ţ�JCBX030121 ������JCBX030121 YQJG �����۸� M NULL O NULL NULL NULL
	[GZRQ]  [nvarchar(8)]  NOT NULL,--�������� ��ţ�ZZBX010105 ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[BFNX]  [decimal(2)]  NULL,--�������� ��ţ�ZZBX010106 
	[DJH]  [nvarchar(16)]  NULL,--���ݺ� ��ţ�JCBX030114 ������JCBX030114 DJH ���ݺ� C 16 M NULL �ɹ�ƾ֤���ݺŻ���ڲ�Ʒ������ͬ�� NULL
	[TP]  [nvarchar(200)]  NULL,--ͼƬ ��ţ�JCBX030115 ������JCBX030115 TP ͼƬ B NULL M NULL ָ�����豸��ͼƬ NULL
	[YQDD]  [nvarchar(60)]  NULL,--�����ص� ��ţ�JCBX030116 ������JCBX030116 YQDD �����ص� C 60 M NULL NULL NULL
	[SBFZRH]  [nvarchar(20)]  NULL,--�豸�����˺� ��ţ�JCBX030117 ������JCTB020120 RYH ��Ա�� C 20 NULL NULL ѧ�Ż򹤺� NULL
	[JSZB]  [text]  NULL,--����ָ�� ��ţ�JCBX030118 ������JCBX030118 JSZB ����ָ�� T NULL M NULL NULL NULL
	[YQPZ]  [text]  NULL,--�������� ��ţ�JCBX030119 ������JCBX030119 YQPZ �������� T NULL M NULL NULL NULL
	[YQSM]  [text]  NULL,--����˵�� ��ţ�JCBX030122 ������JCBX030122 YQSM ����˵�� T NULL O NULL NULL NULL
	[CWZH]  [nvarchar(20)]  NULL,--�����ʺ� ��ţ�JCBX030123 ������JCBX030123 CWZH �����ʺ� C 20 O NULL ָУ�ڲ����ʺ� NULL
	[GHS]  [nvarchar(60)]  NULL,--������ ��ţ�JCBX030124 ������JCBX030124 GHS ������ C 60 O NULL �����̵����� NULL
	[SYZT]  [nvarchar(1)]  NOT NULL,--ʹ��״̬ ��ţ�ZZBX010107 ֵ�ռ䣺JY/T1001SFBZ�Ƿ��־���� ����/������1����2������ 
	[BFZT��]  [nvarchar(1)]  NOT NULL,--����״̬�� ��ţ�ZZBX010108 ֵ�ռ䣺JY/T1001YQXZ������״���� 
CONSTRAINT [PK_ZZBX0101] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[XQDM] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--�����豸ʹ����Ϣ���������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZBX0102]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZBX0102](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[XQDM]  [nvarchar(2)]  NULL,--У������ ��ţ�ZZXX020001 ������ZZXX020001 XQDM У������ C 2 M NULL NULL JCXX010201
	[YQBH]  [nvarchar(80)]  NOT NULL,--�����豸��� ��ţ�ZZBX010101 ������ZZBX010101 YQBH �����豸��� C 80 M NULL NULL JCBX030001
	[YQXZDM]  [nvarchar(1)]  NOT NULL,--������״���� ��ţ�ZZBX010201 ֵ�ռ䣺JY/T1001YQXZ������״���� 
	[YQSYFXDM]  [nvarchar(1)]  NOT NULL,--����ʹ�÷������ ��ţ�ZZBX010202 ֵ�ռ䣺JY/T1001YQSYFX����ʹ�÷������ 
	[SYJGH]  [nvarchar(6)]  NOT NULL,--ʹ�û����� ��ţ�ZZBX010203 
	[JSRGH]  [nvarchar(20)]  NULL,--�����˹��� ��ţ�ZZBX010204 ����/������У���״ΰ���ʹ�������˹��� ������JCTB020120 RYH ��Ա�� C 20 NULL NULL ѧ�Ż򹤺� NULL
	[LYDW]  [nvarchar(60)]  NULL,--���õ�λ ��ţ�ZZBX010205 ����/�����������豸У�ڵ�������ʹ�õ�λ���� 
	[LYRGH]  [nvarchar(20)]  NULL,--�����˹��� ��ţ�ZZBX010206 ����/�����������豸У�ڵ�������ʹ�õ�λ�������������˹��� ������JCTB020120 RYH ��Ա�� C 20 NULL NULL ѧ�Ż򹤺� NULL
	[WHRS]  [decimal(2)]  NULL,--ά������ ��ţ�ZZBX010207 ����/�����������豸רְ����ά����Ա��������ְ������������Ϊȫʱ��Ա��ʱֻȡ��������λ���� 
	[SYRSS]  [decimal(8)]  NULL,--ʹ����ʱ�� ��ţ�ZZBX010208 ����/��������λ����ʱ 
	[KSSYGS]  [decimal(6)]  NULL,--����ʵ����� ��ţ�ZZBX010209 ����/��������λ���� 
	[KSSYSS]  [decimal(8)]  NULL,--����ʵ��ʱ�� ��ţ�ZZBX010210 ����/��������λ��Сʱ 
	[JXSS]  [decimal(8)]  NULL,--��ѧʱ�� ��ţ�ZZBX010211 ����/��������λ��Сʱ 
	[KYSS]  [decimal(8)]  NULL,--����ʱ�� ��ţ�ZZBX010212 ����/��������λ��Сʱ 
	[SHXMSS]  [decimal(8)]  NULL,--�����Ŀʱ�� ��ţ�ZZBX010213 ����/��������λ��Сʱ 
	[BGRGH]  [nvarchar(20)]  NULL,--�����˹��� ��ţ�ZZBX010214 ����/������ָ�ճ������˹��� ������JCTB020120 RYH ��Ա�� C 20 NULL NULL ѧ�Ż򹤺� NULL
CONSTRAINT [PK_ZZBX0102] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--ͼ���������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZBX02]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZBX02](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[TSBH]  [nvarchar(10)]  NOT NULL,--ͼ���� ��ţ�JCBX040101 ������JCBX040101 TSBH ͼ���� C 10 M NULL ָУ��ͼ�����ϵı�ţ�����ͼ�顢�Ŵ���¼��������̡����̵ȣ�ѧУ�Ա� NULL
	[ZBT]  [nvarchar(180)]  NOT NULL,--������ ��ţ�JCBX040103 ������JCBX040103 ZBT ������ C 180 M NULL ��д���Ļ�Ӣ�� NULL
	[BLBT]  [nvarchar(180)]  NULL,--���б��� ��ţ�JCBX040104 ������JCBX040104 BLBT ���б��� C 180 O NULL ��д���Ļ�Ӣ�� NULL
	[FBT]  [nvarchar(180)]  NULL,--������ ��ţ�JCBX040105 ������JCBX040105 FBT ������ C 180 O NULL ��д���Ļ�Ӣ�� NULL
	[TSCBH]  [nvarchar(30)]  NULL,--ͼ������ ��ţ�JCBX040107 ������JCBX040107 TSCBH ͼ������ C 30 M NULL ͼ����Ӧ��ISBN�ȱ�׼����� NULL
	[DYZZ]  [nvarchar(30)]  NOT NULL,--��һ���� ��ţ�JCBX040108 ������JCBX040108 DYZZ ��һ���� C 30 M NULL ͼ���һ�������� NULL
	[QTZZ]  [nvarchar(90)]  NULL,--�������� ��ţ�JCBX040109 ������JCBX040109 QTZZ �������� C 90 O NULL ͼ�������������� NULL
	[RGRQ]  [nvarchar(8)]  NOT NULL,--������� ��ţ�ZZBX020001 ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[RGRYGH]  [nvarchar(20)]  NOT NULL,--�����Ա���� ��ţ�ZZBX020002 ������JCTB020120 RYH ��Ա�� C 20 NULL NULL ѧ�Ż򹤺� NULL
	[WXLXM]  [nvarchar(2)]  NOT NULL,--���������� ��ţ�JCBX040111 ������JCBX040111 WXLXM ���������� C 2 O GB/T3469 NULL NULL
	[FLH]  [nvarchar(20)]  NOT NULL,--����� ��ţ�JCBX040113 ������JCBX040113 FLH ����� C 20 O NULL �����й�ͼ��ݷ��෨�����з���ı�� NULL
	[ZGYZM]  [nvarchar(3)]  NULL,--�й������� ��ţ�JCBX040114 ������JCBX040114 ZGYZM �й������� C 3 O GB/T4881 NULL NULL
	[YZM]  [nvarchar(2)]  NULL,--������ ��ţ�JCBX040115 ������JCBX040115 YZM ������ C 2 O GB/T4880.1 NULL NULL
	[BC]  [nvarchar(30)]  NULL,--��� ��ţ�JCBX040118 ������JCBX040118 BC ��� C 30 O NULL NULL NULL
	[CSMC]  [nvarchar(180)]  NULL,--�������� ��ţ�JCBX040120 ������JCBX040120 CSMC �������� C 180 O NULL ָϵ�д�������� NULL
	[CSBZ]  [nvarchar(180)]  NULL,--������� ��ţ�JCBX040121 ������JCBX040121 CSBZ ������� C 180 O NULL ָϵ�д���ı������� NULL
	[CBS]  [nvarchar(180)]  NOT NULL,--������ ��ţ�JCBX040122 ������JCBX040122 CBS ������ C 180 O NULL ���������ƣ����������ɲ��� NULL
	[CBSJBM]  [nvarchar(1)]  NULL,--�����缶���� ��ţ�JCBX040123 ������JCBX040123 CBSJBM �����缶���� C 1 O JY/T1001CBSJB�����缶����� ����������Ե�һ��������Ϊ׼ NULL
	[CBD]  [nvarchar(60)]  NULL,--����� ��ţ�JCBX040124 ������JCBX040124 CBD ����� C 60 O NULL NULL NULL
	[CBRQ]  [nvarchar(8)]  NOT NULL,--�������� ��ţ�JCBX040125 ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[FXDW]  [nvarchar(60)]  NULL,--���е�λ ��ţ�JCBX040126 ������JCTB010302 DWMC ��λ���� C 60 NULL NULL NULL NULL
CONSTRAINT [PK_ZZBX02] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[TSBH] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--�ļ������������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZBG01]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZBG01](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[WJBH]  [nvarchar(10)]  NOT NULL,--�ļ���� ��ţ�ZZBG010001 ����/������ѧУ�Ա���ļ���� 
	[WJWH]  [nvarchar(24)]  NOT NULL,--�ļ��ĺ� ��ţ�ZZBG010002 ����/�������ա����ĵ��ĺ� 
	[BT]  [nvarchar(60)]  NOT NULL,--���� ��ţ�ZZBG010003 ����/�������ļ��ı������� 
	[ZTC]  [text]  NOT NULL,--����� ��ţ�ZZBG010004 ����/�������ļ�������ʣ����������ö��Ÿ��� 
	[MJM]  [nvarchar(1)]  NOT NULL,--�ܼ��� ��ţ�ZZBG010005 ֵ�ռ䣺GB/T7156 
	[JJCDM]  [nvarchar(1)]  NOT NULL,--�����̶��� ��ţ�ZZBG010006 ֵ�ռ䣺JY/T1001JJCD�����̶ȴ��� 
	[YS]  [decimal(6)]  NULL,--ҳ�� ��ţ�ZZBG010007 ����/�������ļ�����ҳ������λ��ҳ 
	[WJFLM]  [nvarchar(2)]  NOT NULL,--�ļ������� ��ţ�ZZBG010008 ֵ�ռ䣺JY/T1001WJFL�ļ�������� 
	[ZW]  [text]  NOT NULL,--���� ��ţ�ZZBG010009 ����/�������ļ��ľ������� 
	[FJ]  [text]  NOT NULL,--���� ��ţ�ZZBG010010 ����/�������ļ����������ľ������� 
	[FWRQ]  [nvarchar(8)]  NOT NULL,--�������� ��ţ�ZZBG010011 ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[CSDW]  [text]  NOT NULL,--���͵�λ ��ţ�ZZBG010012 ����/�����������λ�ö��Ÿ��� 
CONSTRAINT [PK_ZZBG01] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[WJBH] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--���Ĵ��������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZBG0201]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZBG0201](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[QSRGH]  [nvarchar(20)]  NOT NULL,--ǩ���˹��� ��ţ�ZZBG020101 ������JCTB020120 RYH ��Ա�� C 20 NULL NULL ѧ�Ż򹤺� NULL
	[CFRGH]  [nvarchar(20)]  NOT NULL,--����˹��� ��ţ�ZZBG020102 ������JCTB020120 RYH ��Ա�� C 20 NULL NULL ѧ�Ż򹤺� NULL
	[DJRGH]  [nvarchar(20)]  NOT NULL,--�Ǽ��˹��� ��ţ�ZZBG020103 ������JCTB020120 RYH ��Ա�� C 20 NULL NULL ѧ�Ż򹤺� NULL
	[SWRQ]  [nvarchar(8)]  NOT NULL,--�������� ��ţ�ZZBG020104 ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[LWDW]  [nvarchar(60)]  NOT NULL,--���ĵ�λ ��ţ�ZZBG020105 ������JCTB010302 DWMC ��λ���� C 60 NULL NULL NULL NULL
	[FS]  [decimal(3)]  NOT NULL,--���� ��ţ�ZZBG020106 ����/�������յ��ļ��ķ�������λ���� 
	[CLQK]  [text]  NOT NULL,--������� ��ţ�ZZBG020107 ����/��������д�ļ���Ҫ���������ͽ���������쵼��ʾ���а첿�ŵ� 
	[FYFS]  [decimal(4)]  NULL,--��ӡ���� ��ţ�ZZBG020108 ����/��������ӡ��ӡ�ļ��ķ�������λ���� 
CONSTRAINT [PK_ZZBG0201] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[QSRGH] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--�ļ��İ������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZBG0202]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZBG0202](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[YBLBM]  [nvarchar(1)]  NULL,--�İ������ ��ţ�ZZBG020201 ֵ�ռ䣺JY/T1001YBLB�İ������� 
	[YBJB]  [nvarchar(30)]  NULL,--�İ켶�� ��ţ�ZZBG020202 ����/������ָ�ļ��İ�ָ���ļ���ͷ�Χ 
	[YBDW]  [nvarchar(60)]  NULL,--�İ쵥λ ��ţ�ZZBG020203 ������JCTB010302 DWMC ��λ���� C 60 NULL NULL NULL NULL
	[YBDWBH]  [nvarchar(10)]  NULL,--�İ쵥λ��� ��ţ�ZZBG020204 ����/�������İ쵥λ������ ������JCTB010301 DWH ��λ�� C 10 NULL NULL ���б��� NULL
	[YBRGH]  [nvarchar(17)]  NULL,--�İ��˹��� ��ţ�ZZBG020205 ������JCTB010207 YXQ ��Ч�� C 17 NULL NULL ��ʽ��YYYYMMDD-YYYYMMDD NULL
	[YBYJ]  [text]  NOT NULL,--�İ���� ��ţ�ZZBG020206 ����/�������ļ��İ����д�������� 
	[YBRQ]  [nvarchar(8)]  NULL,--�İ����� ��ţ�ZZBG020207 ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
CONSTRAINT [PK_ZZBG0202] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--���Ĵ��������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZBG0301]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZBG0301](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[NGRGH]  [nvarchar(17)]  NOT NULL,--����˹��� ��ţ�ZZBG030101 ������JCTB010207 YXQ ��Ч�� C 17 NULL NULL ��ʽ��YYYYMMDD-YYYYMMDD NULL
	[NGRQ]  [nvarchar(8)]  NULL,--������� ��ţ�ZZBG030102 ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[QFRGH]  [nvarchar(20)]  NOT NULL,--ǩ���˹��� ��ţ�ZZBG030103 ������JCTB020120 RYH ��Ա�� C 20 NULL NULL ѧ�Ż򹤺� NULL
	[QFRQ]  [nvarchar(8)]  NOT NULL,--ǩ������ ��ţ�ZZBG030104 ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[FSFW]  [nvarchar(60)]  NOT NULL,--���ͷ�Χ ��ţ�ZZBG030105 ����/������ǩ���ļ���ָ�����ͷ�Χ 
	[FSFSM]  [nvarchar(1)]  NOT NULL,--���ͷ�ʽ�� ��ţ�ZZBG030106 ֵ�ռ䣺JY/T1001FSFS���ͷ�ʽ���� 
	[DJRGH]  [nvarchar(20)]  NOT NULL,--�Ǽ��˹��� ��ţ�ZZBG030107 ������JCTB020120 RYH ��Ա�� C 20 NULL NULL ѧ�Ż򹤺� NULL
	[DJRQ]  [nvarchar(8)]  NOT NULL,--�Ǽ����� ��ţ�ZZBG030108 ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[FWJS]  [decimal(4)]  NOT NULL,--���ļ��� ��ţ�ZZBG030109 ����/�����������ļ�����������λ���� 
	[GWFWRQ]  [nvarchar(8)]  NOT NULL,--���ķ������� ��ţ�ZZBG030110 ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[CLQK]  [text]  NOT NULL,--������� ��ţ�ZZBG030111 ����/������ָ�����Ʒ����ļ����к���Ĵ��� 
	[DZRGH]  [nvarchar(20)]  NULL,--�����˹��� ��ţ�ZZBG030112 ������JCTB020120 RYH ��Ա�� C 20 NULL NULL ѧ�Ż򹤺� NULL
	[JDRGH]  [nvarchar(20)]  NULL,--У���˹��� ��ţ�ZZBG030113 ������JCTB020120 RYH ��Ա�� C 20 NULL NULL ѧ�Ż򹤺� NULL
	[FZFSM]  [nvarchar(1)]  NOT NULL,--��װ��ʽ�� ��ţ�ZZBG030114 ֵ�ռ䣺JY/T1001GWFZFS��װ��ʽ���� 
CONSTRAINT [PK_ZZBG0301] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[NGRGH] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--�˸������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZBG0302]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZBG0302](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[HGRGH]  [nvarchar(20)]  NOT NULL,--�˸��˹��� ��ţ�ZZBG030201 ������JCTB020120 RYH ��Ա�� C 20 NULL NULL ѧ�Ż򹤺� NULL
	[HGDW]  [nvarchar(60)]  NOT NULL,--�˸嵥λ ��ţ�ZZBG030202 ������JCTB010302 DWMC ��λ���� C 60 NULL NULL NULL NULL
	[HGYJ]  [text]  NOT NULL,--�˸���� ��ţ�ZZBG030203 ����/�������˶��ļ��������� 
	[HGRQ]  [nvarchar(8)]  NOT NULL,--�˸����� ��ţ�ZZBG030204 ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
CONSTRAINT [PK_ZZBG0302] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[HGRGH] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--��ǩ�����
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZBG0303]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZBG0303](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[HQR]  [nvarchar(36)]  NOT NULL,--��ǩ�� ��ţ�ZZBG030301 ����/��������ǩ������ ������JCTB020101 XM ���� C 36 NULL NULL �������񻪣������ᡤ����������ľ NULL
	[HQDW]  [nvarchar(60)]  NOT NULL,--��ǩ��λ ��ţ�ZZBG030302 ����/�����������λ��ǩ�������д ������JCTB010302 DWMC ��λ���� C 60 NULL NULL NULL NULL
	[HQYJ]  [text]  NOT NULL,--��ǩ��� ��ţ�ZZBG030303 ����/��������ǩ�ļ��������� 
	[HQRQ]  [nvarchar(8)]  NOT NULL,--��ǩ���� ��ţ�ZZBG030304 ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
CONSTRAINT [PK_ZZBG0303] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[HQR] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--���������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZBG0304]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZBG0304](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[PFR]  [nvarchar(36)]  NOT NULL,--������ ��ţ�ZZBG030401 ����/���������������� ������JCTB020101 XM ���� C 36 NULL NULL �������񻪣������ᡤ����������ľ NULL
	[PFDW]  [nvarchar(60)]  NOT NULL,--������λ ��ţ�ZZBG030402 ������JCTB010302 DWMC ��λ���� C 60 NULL NULL NULL NULL
	[PFYJ]  [text]  NOT NULL,--������� ��ţ�ZZBG030403 ����/�������ļ������ľ������ 
	[PFRQ]  [nvarchar(8)]  NOT NULL,--�������� ��ţ�ZZBG030404 ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
CONSTRAINT [PK_ZZBG0304] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[PFR] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--�ļ������������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZBG04]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZBG04](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[QTRQ]  [nvarchar(8)]  NOT NULL,--�������� ��ţ�ZZBG040001 ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[QTFW]  [nvarchar(180)]  NOT NULL,--���˷�Χ ��ţ�ZZBG040002 ����/�������ļ�������ָ���ķ�Χ 
	[QTSM]  [text]  NULL,--����˵�� ��ţ�ZZBG040003 ����/�������ļ��������˵������ 
	[JBRGH]  [nvarchar(20)]  NOT NULL,--�����˹��� ��ţ�ZZBG040004 ������JCTB020120 RYH ��Ա�� C 20 NULL NULL ѧ�Ż򹤺� NULL
CONSTRAINT [PK_ZZBG04] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[QTRQ] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--�ļ������������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZBG05]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZBG05](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[XHRQ]  [nvarchar(8)]  NOT NULL,--�������� ��ţ�ZZBG050001 ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[XHSPRGH]  [nvarchar(20)]  NOT NULL,--���������˹��� ��ţ�ZZBG050002 ������JCTB020120 RYH ��Ա�� C 20 NULL NULL ѧ�Ż򹤺� NULL
	[XHSM]  [text]  NULL,--����˵�� ��ţ�ZZBG050003 ����/�����������ļ������˵�� 
	[JBRGH]  [nvarchar(20)]  NOT NULL,--�����˹��� ��ţ�ZZBG050004 ������JCTB020120 RYH ��Ա�� C 20 NULL NULL ѧ�Ż򹤺� NULL
CONSTRAINT [PK_ZZBG05] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[XHRQ] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--�ļ������������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZBG06]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZBG06](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[JYR]  [nvarchar(36)]  NOT NULL,--������ ��ţ�ZZBG060001 ������JCTB020101 XM ���� C 36 NULL NULL �������񻪣������ᡤ����������ľ NULL
	[JYRQ]  [nvarchar(8)]  NOT NULL,--�������� ��ţ�ZZBG060002 ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[JYSPRGH]  [nvarchar(20)]  NOT NULL,--���������˹��� ��ţ�ZZBG060003 ������JCTB020120 RYH ��Ա�� C 20 NULL NULL ѧ�Ż򹤺� NULL
	[JYJBRGH]  [nvarchar(20)]  NOT NULL,--���ľ����˹��� ��ţ�ZZBG060004 ����/�����������ļ��ľ�����Ա�򱣹���Ա�Ĺ��� ������JCTB020120 RYH ��Ա�� C 20 NULL NULL ѧ�Ż򹤺� NULL
	[JYYY]  [nvarchar(80)]  NULL,--����ԭ�� ��ţ�ZZBG060005 
CONSTRAINT [PK_ZZBG06] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[JYR] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--�ļ��鵵�������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZBG07]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZBG07](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[GDRGH]  [nvarchar(20)]  NOT NULL,--�鵵�˹��� ��ţ�ZZBG070001 ������JCTB020120 RYH ��Ա�� C 20 NULL NULL ѧ�Ż򹤺� NULL
	[GDRQ]  [nvarchar(8)]  NOT NULL,--�鵵���� ��ţ�ZZBG070002 ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[BZ]  [text]  NULL,--��ע ��ţ�ZZBG070003 ����/�������ļ��鵵�����˵�� 
	[WJQZH]  [nvarchar(10)]  NOT NULL,--�ļ�ȫ�ں� ��ţ�ZZBG070004 ����/�������ǵ�λ��ȫ�������Ա��ȫ�ڱ�ţ����ڹ̶����� 
	[WJMLH]  [nvarchar(5)]  NOT NULL,--�ļ�Ŀ¼�� ��ţ�ZZBG070005 ����/��������ȫ����ÿһ����Ŀ¼�ı�� 
	[WJAJH]  [nvarchar(5)]  NOT NULL,--�ļ������ ��ţ�ZZBG070006 ����/�������ǰ���Ŀ¼��ÿһ����ı�� 
CONSTRAINT [PK_ZZBG07] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[GDRGH] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--�����Ǽ��������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZBG08]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZBG08](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[QZH]  [nvarchar(10)]  NOT NULL,--ȫ�ں� ��ţ�ZZBG080001 
	[ND]  [nvarchar(4)]  NOT NULL,--��� ��ţ�ZZBG080002 ����/�����������Ǽǵ���� ������JCTB010201 ND ��ȣ���ݡ��꣩ C 4 NULL GB/T7408 ��ʽ��YYYY���磺2008 NULL
	[MLH]  [nvarchar(5)]  NOT NULL,--Ŀ¼�� ��ţ�ZZBG080003 
	[AJH]  [nvarchar(5)]  NOT NULL,--����� ��ţ�ZZBG080004 
	[TM]  [nvarchar(120)]  NOT NULL,--���� ��ţ�ZZBG080005 ����/�������ļ��ı������� 
	[ZTC]  [text]  NOT NULL,--����� ��ţ�ZZBG080006 ����/�������ļ�������ʣ����������ö��Ÿ��� 
	[QSRQ]  [nvarchar(8)]  NULL,--��ʼ���� ��ţ�ZZBG080007 ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[JZRQ]  [nvarchar(8)]  NULL,--��ֹ���� ��ţ�ZZBG080008 ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[BGQXM]  [nvarchar(1)]  NOT NULL,--���������� ��ţ�ZZBG080009 ֵ�ռ䣺JY/T1001BGQX�������޴��� 
	[MJM]  [nvarchar(1)]  NULL,--�ܼ��� ��ţ�ZZBG080010 ֵ�ռ䣺GB/T7156 
	[YS]  [decimal(6)]  NOT NULL,--ҳ�� ��ţ�ZZBG080011 ����/�������ļ�����ҳ������λ��ҳ 
	[FS]  [decimal(8)]  NOT NULL,--���� ��ţ�ZZBG080012 ����/�������ļ��ķ�������λ���� 
	[BZDW]  [nvarchar(60)]  NULL,--���Ƶ�λ ��ţ�ZZBG080013 ����/��������ɵ����Ǽǵĵ�λ���� ������JCTB010302 DWMC ��λ���� C 60 NULL NULL NULL NULL
	[CFWZ]  [nvarchar(60)]  NOT NULL,--���λ�� ��ţ�ZZBG080014 ����/������ָ�ļ���ŵĵص��ܺ� 
	[DAFLM]  [nvarchar(2)]  NOT NULL,--���������� ��ţ�ZZBG080015 ֵ�ռ䣺JY/T1001��¼C�ߵ�ѧУ����ʵ����෨ ����/������ȡǰ��λ 
CONSTRAINT [PK_ZZBG08] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[QZH] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--��������������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZBG09]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZBG09](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[HYBH]  [nvarchar(10)]  NOT NULL,--������ ��ţ�ZZBG090001 ����/�������ɽ������������Ա� 
	[HYMC]  [nvarchar(60)]  NOT NULL,--�������� ��ţ�ZZBG090002 
	[HYFW]  [text]  NOT NULL,--���鷶Χ ��ţ�ZZBG090003 ����/�������Բλ���Ա�ķ�ΧҪ�� 
	[HYZYNR]  [text]  NOT NULL,--������Ҫ���� ��ţ�ZZBG090004 
	[HYZCR]  [nvarchar(30)]  NOT NULL,--���������� ��ţ�ZZBG090005 
	[HYKSSJ]  [nvarchar(12)]  NOT NULL,--���鿪ʼʱ�� ��ţ�ZZBG090006 ����/��������ʽ��CCYYMMDDhhmm 
	[HYJSSJ]  [nvarchar(12)]  NULL,--�������ʱ�� ��ţ�ZZBG090007 ����/��������ʽ��CCYYMMDDhhmm 
	[HYDD]  [nvarchar(60)]  NOT NULL,--����ص� ��ţ�ZZBG090008 
	[HYJY]  [text]  NOT NULL,--�����Ҫ ��ţ�ZZBG090009 
CONSTRAINT [PK_ZZBG09] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[HYBH] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--�������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZBG10]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZBG10](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[GZBH]  [nvarchar(4)]  NOT NULL,--���±�� ��ţ�ZZBG100001 
	[ZZMC]  [nvarchar(60)]  NOT NULL,--�������� ��ţ�ZZBG100002 
	[BGDWMC]  [nvarchar(60)]  NOT NULL,--���ܵ�λ���� ��ţ�ZZBG100003 ������JCTB010302 DWMC ��λ���� C 60 NULL NULL NULL NULL
	[BGRGH]  [nvarchar(20)]  NOT NULL,--�����˹��� ��ţ�ZZBG100004 ������JCTB020120 RYH ��Ա�� C 20 NULL NULL ѧ�Ż򹤺� NULL
	[PZDW]  [nvarchar(60)]  NOT NULL,--��׼��λ ��ţ�ZZBG100005 ������JCTB010302 DWMC ��λ���� C 60 NULL NULL NULL NULL
	[PZRGH]  [nvarchar(20)]  NOT NULL,--��׼�˹��� ��ţ�ZZBG100006 ������JCTB020120 RYH ��Ա�� C 20 NULL NULL ѧ�Ż򹤺� NULL
	[PZWH]  [nvarchar(10)]  NOT NULL,--��׼�ĺ� ��ţ�ZZBG100007 
	[PZRQ]  [nvarchar(8)]  NOT NULL,--��׼���� ��ţ�ZZBG100008 ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[SXRQ]  [nvarchar(8)]  NOT NULL,--��Ч���� ��ţ�ZZBG100009 ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[ZFPZWH]  [nvarchar(10)]  NOT NULL,--������׼�ĺ� ��ţ�ZZBG100010 
	[ZFRQ]  [nvarchar(8)]  NULL,--�������� ��ţ�ZZBG100011 ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[ZFPZRH]  [nvarchar(20)]  NOT NULL,--������׼�˺� ��ţ�ZZBG100012 ������JCTB020120 RYH ��Ա�� C 20 NULL NULL ѧ�Ż򹤺� NULL
	[YZTY]  [nvarchar(200)]  NOT NULL,--ӡ��ͼ�� ��ţ�ZZBG100013 
CONSTRAINT [PK_ZZBG10] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[GZBH] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--��ӡ���
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZBG11]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZBG11](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[YYDJH]  [nvarchar(15)]  NOT NULL,--��ӡ�ǼǺ� ��ţ�ZZBG110001 ����/������YYYY-ZZZZ-LLLLL���-ӡ��-��ˮ�� 
	[GZBH]  [nvarchar(4)]  NOT NULL,--���±�� ��ţ�ZZBG110002 
	[YYSY]  [nvarchar(200)]  NULL,--��ӡ���� ��ţ�ZZBG110003 
	[SYGLH]  [nvarchar(50)]  NULL,--���ɹ����� ��ţ�ZZBG110004 ����/����������,�ŷ��ĺţ��������ŷŽ����źŵȵ� 
	[YYCS]  [decimal(5)]  NULL,--��ӡ���� ��ţ�ZZBG110005 ����/������������ӡ���緢��ҵ֤ʱһ����ӡ���� 
	[YRPZRH]  [nvarchar(20)]  NOT NULL,--��ӡ��׼�˺� ��ţ�ZZBG110006 ������JCTB020120 RYH ��Ա�� C 20 NULL NULL ѧ�Ż򹤺� NULL
	[YYPZRQ]  [nvarchar(8)]  NOT NULL,--��ӡ��׼���� ��ţ�ZZBG110007 ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[YYRQ]  [nvarchar(8)]  NOT NULL,--��ӡ���� ��ţ�ZZBG110008 ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[YYSQRQ]  [nvarchar(8)]  NOT NULL,--��ӡ�������� ��ţ�ZZBG110009 ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[SQRGH]  [nvarchar(20)]  NOT NULL,--�����˹��� ��ţ�ZZBG110010 ������JCTB020120 RYH ��Ա�� C 20 NULL NULL ѧ�Ż򹤺� NULL
	[ZSRGH]  [nvarchar(20)]  NOT NULL,--ִ���˹��� ��ţ�ZZBG110011 ������JCTB020120 RYH ��Ա�� C 20 NULL NULL ѧ�Ż򹤺� NULL
CONSTRAINT [PK_ZZBG11] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[YYDJH] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--ѧУ��ѧ���Ѳ�������������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZJF01]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZJF01](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[JFKMM]  [nvarchar(1)]  NOT NULL,--���ѿ�Ŀ�� ��ţ�ZZJF010001 ֵ�ռ䣺JY/T1001JFKM���ѿ�Ŀ���� 
	[JFLYM]  [nvarchar(1)]  NOT NULL,--������Դ�� ��ţ�ZZJF010002 ֵ�ռ䣺JY/T1001JFLY������Դ���� 
	[JFBRE]  [money]  NOT NULL,--���Ѳ���� ��ţ�ZZJF010003 ����/��������λ����Ԫ 
	[BRRQ]  [nvarchar(8)]  NOT NULL,--�������� ��ţ�ZZJF010004 ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[JFXDYTMS]  [text]  NULL,--�����޶���;���� ��ţ�ZZJF010005 ����/����������ľ�����Ҫ��; 
	[JFBRJBR]  [nvarchar(36)]  NOT NULL,--���Ѳ��뾭���� ��ţ�ZZJF010006 ������JCTB020101 XM ���� C 36 NULL NULL �������񻪣������ᡤ����������ľ NULL
CONSTRAINT [PK_ZZJF01] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[JFKMM] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--ѧУ��ѧ����ʹ������������
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZJF02]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZJF02](
	[SCHOOLID]  [int]  NOT NULL,--ѧУID
	[JFZCXM]  [nvarchar(100)]  NOT NULL,--����֧����Ŀ ��ţ�ZZJF020001 ����/������ѧУ�����������д 
	[JFZCE]  [money]  NOT NULL,--����֧���� ��ţ�ZZJF020002 ����/��������λ����Ԫ 
	[ZCRQ]  [nvarchar(8)]  NOT NULL,--֧������ ��ţ�ZZJF020003 ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
	[JFYTMS]  [text]  NULL,--������;���� ��ţ�ZZJF020004 ����/������ѧУ�Դ˴ξ��ѵ���;�������� 
CONSTRAINT [PK_ZZJF02] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[JFZCXM] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

