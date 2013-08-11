--空间名：STAnalyzer  生成器：SqlBuilder0.1
--学校基本数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZXX0101]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZXX0101](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[XXDM]  [nvarchar(10)]  NOT NULL,--学校代码 编号：JCXX010101 引用自JCXX010101 XXDM 学校代码 C 10 M 学校（机构）标识码 NULL NULL
	[XXMC]  [nvarchar(60)]  NOT NULL,--学校名称 编号：JCXX010102 引用自JCTB010302 DWMC 单位名称 C 60 NULL NULL NULL NULL
	[XXYWMC]  [nvarchar(180)]  NULL,--学校英文名称 编号：JCXX010103 引用自JCTB010303 DWYWMC 单位英文名称 C 180 NULL NULL NULL NULL
	[XXJBZM]  [nvarchar(3)]  NOT NULL,--学校举办者码 编号：JCXX010110 引用自JCXX010110 XXJBZM 学校举办者码 C 3 M JY/T1001XXJYJGJBZ学校（教育机构）举办者代码 NULL NULL
	[XXZGBMM]  [nvarchar(3)]  NOT NULL,--学校主管部门码 编号：JCXX010111 引用自JCXX010111 XXZGBMM 学校主管部门码 C 3 M JY/T1001XXJYJGJBZ学校（教育机构）举办者代码 NULL NULL
	[XXDZ]  [nvarchar(180)]  NOT NULL,--学校地址 编号：JCXX010104 引用自JCTB010102 TXDZ 通信地址 C 180 NULL NULL 指包括省（自治区、直辖市）/地（市、州）/县（区、旗）/乡（镇）/街（村）/门牌号的详细地址 NULL
	[XXYZBM]  [nvarchar(6)]  NOT NULL,--学校邮政编码 编号：JCXX010105 引用自JCTB010101 YZBM 邮政编码 C 6 NULL NULL NULL NULL
	[XZQHM]  [nvarchar(6)]  NOT NULL,--行政区划码 编号：JCXX010106 引用自JCXX010106 XZQHM 行政区划码 C 6 M GB/T2260 学校所在地行政区划码 NULL
	[JXNY]  [nvarchar(6)]  NOT NULL,--建校年月 编号：JCXX010107 引用自JCTB010202 NY 年月 C 6 NULL GB/T7408 格式：YYYYMM，如：200604表示2006年4月 NULL
	[XQR]  [nvarchar(60)]  NOT NULL,--校庆日 编号：JCXX010108 引用自JCXX010108 XQR 校庆日 C 60 O NULL 指学校的校庆日或校庆的时间段 NULL
	[CLBJ]  [text]  NULL,--成立背景 编号：ZZXX010101 解释/举例：学校成立的背景 
	[LSYG]  [text]  NULL,--历史沿革 编号：JCXX010122 引用自JCXX010122 LSYG 历史沿革 T NULL O NULL 指学校发展过程中的重大变化或事件 NULL
	[XXXQS]  [decimal(2)]  NOT NULL,--学校校区数 编号：ZZXX010102 
	[XXPGLX]  [nvarchar(1)]  NOT NULL,--学校评估类型 编号：ZZXX010103 值空间：PGQK评估情况代码 
	[XXPGQKSM]  [text]  NULL,--学校评估情况说明 编号：ZZXX010104 
	[ZYDZ]  [nvarchar(60)]  NOT NULL,--主页地址 编号：JCXX010121 引用自JCTB010107 WLDZ 网络地址 C 60 NULL NULL 如主页、博客、微博网址 NULL
	[FDDBRH]  [nvarchar(20)]  NOT NULL,--法定代表人号 编号：JCXX010112 引用自JCTB020120 RYH 人员号 C 20 NULL NULL 学号或工号 NULL
	[FRZSH]  [nvarchar(20)]  NOT NULL,--法人证书号 编号：JCXX010113 引用自JCXX010113 FRZSH 法人证书号 C 20 M NULL NULL NULL
	[LXDH]  [nvarchar(30)]  NOT NULL,--联系电话 编号：JCXX010118 引用自JCTB010103 DH 电话 C 30 NULL NULL 即电话号码 NULL
	[CZDH]  [nvarchar(30)]  NOT NULL,--传真电话 编号：JCXX010119 引用自JCTB010105 CZDH 传真电话 C 30 NULL NULL NULL NULL
	[DZXX]  [nvarchar(40)]  NOT NULL,--电子信箱 编号：JCXX010120 引用自JCTB010106 DZXX 电子信箱 C 40 NULL NULL 电子邮件地址 NULL
CONSTRAINT [PK_ZZXX0101] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[XXDM] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--学校主要领导任职信息数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZXX0102]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZXX0102](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[LDXM]  [nvarchar(36)]  NOT NULL,--领导姓名 编号：ZZXX010201 引用自JCTB020101 XM 姓名 C 36 NULL NULL 例：张振华；买买提·阿不都热依木 NULL
	[ZYLDZW]  [nvarchar(1)]  NOT NULL,--主要领导职务 编号：ZZXX010202 值空间：ZYZWLB主要职务类别代码 
	[RZKSRQ]  [nvarchar(8)]  NOT NULL,--任职开始日期 编号：ZZXX010203 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[RZJSRQ]  [nvarchar(8)]  NOT NULL,--任职结束日期 编号：ZZXX010204 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[GZNR]  [text]  NULL,--工作内容 编号：ZZXX010205 解释/举例：对任职工作内容的描述 
	[RZZTM]  [nvarchar(10)]  NOT NULL,--任职状态码 编号：ZZXX010206 值空间：GB/T14946.1 
	[RZPJ]  [text]  NULL,--任职评价 编号：ZZXX010207 
	[FGGZ]  [nvarchar(30)]  NOT NULL,--分管工作 编号：ZZXX010208 
CONSTRAINT [PK_ZZXX0102] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[LDXM] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--校区数据类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZXX02]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZXX02](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[XQDM]  [nvarchar(2)]  NOT NULL,--校区代码 编号：ZZXX020001 引用自JCXX010201 XQH 校区号 C 2 M NULL 学校自编 NULL
	[XQMC]  [nvarchar(30)]  NOT NULL,--校区名称 编号：JCXX010202 引用自JCXX010202 XQMC 校区名称 C 30 M NULL NULL NULL
	[XQDZ]  [nvarchar(180)]  NOT NULL,--校区地址 编号：JCXX010203 引用自JCTB010102 TXDZ 通信地址 C 180 NULL NULL 指包括省（自治区、直辖市）/地（市、州）/县（区、旗）/乡（镇）/街（村）/门牌号的详细地址 NULL
	[XQLXDH]  [nvarchar(30)]  NOT NULL,--校区联系电话 编号：JCXX010205 引用自JCTB010103 DH 电话 C 30 NULL NULL 即电话号码 NULL
	[XQFZRH]  [nvarchar(20)]  NOT NULL,--校区负责人号 编号：JCXX010207 引用自JCTB020120 RYH 人员号 C 20 NULL NULL 学号或工号 NULL
	[DZYJ]  [nvarchar(40)]  NOT NULL,--电子邮件 编号：ZZXX020002 引用自JCTB010106 DZXX 电子信箱 C 40 NULL NULL 电子邮件地址 NULL
	[XQYZBM]  [nvarchar(6)]  NOT NULL,--校区邮政编码 编号：JCXX010204 引用自JCTB010101 YZBM 邮政编码 C 6 NULL NULL NULL NULL
	[XQSZDXZQHM]  [nvarchar(6)]  NULL,--校区所在地行政区划码 编号：ZZXX020003 值空间：GB/T2260 
	[XQMJ]  [decimal(20)]  NOT NULL,--校区面积 编号：ZZXX020004 
	[XQJZMJ]  [decimal(20)]  NULL,--校区建筑面积 编号：ZZXX020005 
	[XQJXKYSBZZ]  [money]  NULL,--校区教学科研仪器设备总值 编号：ZZXX020006 
	[XQGDZCZZ]  [money]  NULL,--校区固定资产总值 编号：ZZXX020007 
CONSTRAINT [PK_ZZXX02] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[XQDM] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--校内机构数据类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZXX03]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZXX03](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[JGH]  [nvarchar(6)]  NOT NULL,--机构号 编号：ZZXX030001 解释/举例：学校自编 
	[JGMC]  [nvarchar(100)]  NOT NULL,--机构名称 编号：ZZXX030002 
	[JGYWMC]  [nvarchar(100)]  NULL,--机构英文名称 编号：ZZXX030003 
	[JGJC]  [nvarchar(50)]  NULL,--机构简称 编号：ZZXX030004 
	[JGJP]  [nvarchar(20)]  NULL,--机构简拼 编号：ZZXX030005 
	[JGDZ]  [nvarchar(180)]  NULL,--机构地址 编号：ZZXX030006 引用自JCTB010102 TXDZ 通信地址 C 180 NULL NULL 指包括省（自治区、直辖市）/地（市、州）/县（区、旗）/乡（镇）/街（村）/门牌号的详细地址 NULL
	[DSSJJGH]  [nvarchar(6)]  NOT NULL,--隶属上级机构号 编号：ZZXX030007 解释/举例：隶属或归口管理单位号：一级部门的上级机构号为000000 
	[LSXQH]  [nvarchar(2)]  NULL,--隶属校区号 编号：ZZXX030008 解释/举例：学校如果有校区，则要说明机构所属的校区 引用自ZZXX020001 XQDM 校区代码 C 2 M NULL NULL JCXX010201
	[JGYXBS]  [nvarchar(1)]  NOT NULL,--机构有效标识 编号：ZZXX030009 值空间：JY/T1001SFBZ是否标志代码 
	[SFST]  [nvarchar(1)]  NOT NULL,--是否实体 编号：ZZXX030010 值空间：JY/T1001SFBZ是否标志代码 
	[JLNY]  [nvarchar(6)]  NULL,--建立年月 编号：ZZXX030011 引用自JCTB010202 NY 年月 C 6 NULL GB/T7408 格式：YYYYMM，如：200604表示2006年4月 NULL
	[JGYZBM]  [nvarchar(6)]  NULL,--机构邮政编码 编号：ZZXX030012 引用自JCTB010101 YZBM 邮政编码 C 6 NULL NULL NULL NULL
	[FZRH]  [nvarchar(20)]  NOT NULL,--负责人号 编号：ZZXX030013 引用自JCTB020120 RYH 人员号 C 20 NULL NULL 学号或工号 NULL
CONSTRAINT [PK_ZZXX03] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[JGH] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--学校规章制度数据类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZXX04]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZXX04](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[ZDBH]  [nvarchar(10)]  NOT NULL,--制度编号 编号：ZZXX040001 
	[ZDMC]  [nvarchar(80)]  NOT NULL,--制度名称 编号：ZZXX040002 
	[FJMC]  [nvarchar(80)]  NOT NULL,--附件名称 编号：ZZXX040003 
	[BBJG]  [nvarchar(6)]  NOT NULL,--颁布机构 编号：ZZXX040004 解释/举例：颁布规章制度的校内机构机构号，000000表示学校 引用自ZZXX030001 JGH 机构号 C 6 M NULL 学校自编 NULL
	[BBRQ]  [nvarchar(8)]  NOT NULL,--颁布日期 编号：ZZXX040005 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[YSDX]  [nvarchar(40)]  NOT NULL,--约束对象 编号：ZZXX040006 解释/举例：如学生、教师 
	[ZDGJC]  [nvarchar(20)]  NULL,--制度关键词 编号：ZZXX040007 解释/举例：用“，”分隔的多关键词 
CONSTRAINT [PK_ZZXX04] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[ZDBH] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--学生基本数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZXS0101]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZXS0101](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[XH]  [nvarchar(20)]  NOT NULL,--学号 编号：JCXS010101 引用自JCTB020120 RYH 人员号 C 20 NULL NULL 学号或工号 NULL
	[XM]  [nvarchar(36)]  NOT NULL,--姓名 编号：JCTB020101 引用自JCTB020101 XM 姓名 C 36 NULL NULL 例：张振华；买买提·阿不都热依木 NULL
	[YWXM]  [nvarchar(60)]  NULL,--英文姓名 编号：JCTB020102 引用自JCTB020102 YWXM 英文姓名 C 60 NULL NULL 例：ChristopherFrancisPatten NULL
	[XMPY]  [nvarchar(60)]  NOT NULL,--姓名拼音 编号：JCTB020103 引用自JCTB020103 XMPY 姓名拼音 C 60 NULL NULL 例：ZHANGZhenhua， NULL
	[CYM]  [nvarchar(36)]  NULL,--曾用名 编号：JCTB020104 引用自JCTB020104 CYM 曾用名 C 36 NULL NULL 指曾经正式使用过的姓名 NULL
	[SFZJLXM]  [nvarchar(1)]  NOT NULL,--身份证件类型码 编号：JCTB020111 引用自JCTB020111 SFZJLXM 身份证件类型码 C 1 NULL JY/T1001SFZJLX身份证件类型代码 NULL NULL
	[SFZJH]  [nvarchar(20)]  NOT NULL,--身份证件号 编号：JCTB020112 引用自JCTB020112 SFZJH 身份证件号 C 20 NULL NULL 如：公民身份号码 NULL
	[XBM]  [nvarchar(1)]  NOT NULL,--性别码 编号：JCTB020105 引用自JCTB020105 XBM 性别码 C 1 NULL GB/T2261.1 NULL NULL
	[XXM]  [nvarchar(1)]  NULL,--血型码 编号：JCTB020118 引用自JCTB020118 XXM 血型码 C 1 NULL JY/T1001XX血型代码 NULL NULL
	[CSRQ]  [nvarchar(8)]  NOT NULL,--出生日期 编号：JCTB020106 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[CSDM]  [nvarchar(6)]  NOT NULL,--出生地码 编号：JCTB020107 引用自JCTB020107 CSDM 出生地码 C 6 NULL GB/T2260 NULL NULL
	[JG]  [nvarchar(20)]  NOT NULL,--籍贯 编号：JCTB020108 引用自JCTB020108 JG 籍贯 C 20 NULL NULL NULL NULL
	[MZM]  [nvarchar(2)]  NOT NULL,--民族码 编号：JCTB020109 引用自JCTB020109 MZM 民族码 C 2 NULL GB/T3304 取用2位数字代码，如：01汉族，02蒙古族 NULL
	[HYZKM]  [nvarchar(2)]  NOT NULL,--婚姻状况码 编号：JCTB020113 引用自JCTB020113 HYZKM 婚姻状况码 C 2 NULL GB/T2261.2 NULL NULL
	[XYZJM]  [nvarchar(2)]  NULL,--信仰宗教码 编号：JCTB020117 引用自JCTB020117 XYZJM 信仰宗教码 C 2 NULL GA214.12 NULL NULL
	[GATQWM]  [nvarchar(2)]  NULL,--港澳台侨外码 编号：JCTB020114 引用自JCTB020114 GATQWM 港澳台侨外码 C 2 NULL JY/T1001GATQW港澳台侨外代码 NULL NULL
	[JKZKM]  [nvarchar(1)]  NULL,--健康状况码 编号：JCTB020116 引用自JCTB020116 JKZKM 健康状况码 C 1 NULL GB/T2261.3 采用1位数字代码 NULL
	[ZZMMM]  [nvarchar(2)]  NOT NULL,--政治面貌码 编号：JCTB020115 引用自JCTB020115 ZZMMM 政治面貌码 C 2 NULL GB/T4762 可采用简称，如：01中共党员，04民革会员 NULL
	[HKSZDXZQHM]  [nvarchar(6)]  NOT NULL,--户口所在地行政区划码 编号：ZZXS010101 值空间：GB/T2260 
	[HKLBM]  [nvarchar(1)]  NOT NULL,--户口类别码 编号：ZZXS010102 值空间：GA324.1 解释/举例：如：0未落常住户1非农业家庭2农业家庭户口 
	[SFSLDRK]  [nvarchar(1)]  NOT NULL,--是否是流动人口 编号：ZZXS010103 值空间：JY/T1001SFBZ是否标志代码 
	[GJDQM]  [nvarchar(3)]  NULL,--国籍/地区码 编号：JCTB020110 引用自JCTB020110 GJDQM 国籍/地区码 C 3 NULL GB/T2659 采用三字母代码，如：CHN中国，USA美国 NULL
	[TC]  [text]  NULL,--特长 编号：ZZXS010104 解释/举例：指某一方面特殊的能力或技能 
	[XSLXDH]  [nvarchar(30)]  NULL,--学生联系电话 编号：ZZXS010105 解释/举例：本人的联系电话号码 引用自JCTB010104 YDDH 移动电话 C 30 NULL NULL NULL NULL
	[WLDZ]  [nvarchar(60)]  NULL,--网络地址 编号：JCTB010107 引用自JCTB010107 WLDZ 网络地址 C 60 NULL NULL 如主页、博客、微博网址 NULL
	[JSTXH]  [nvarchar(40)]  NULL,--即时通讯号 编号：JCTB010108 引用自JCTB010108 JSTXH 即时通讯号 C 40 NULL NULL 如MSN/QQ等号码 NULL
	[DZXX]  [nvarchar(40)]  NULL,--电子信箱 编号：JCTB010106 引用自JCTB010106 DZXX 电子信箱 C 40 NULL NULL 电子邮件地址 NULL
	[ZP]  [nvarchar(200)]  NULL,--照片 编号：JCTB020119 引用自JCTB020119 ZP 照片 B NULL NULL NULL 近期正面免冠证件照片 NULL
CONSTRAINT [PK_ZZXS0101] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[XH] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--学生指纹串信息数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZXS0102]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZXS0102](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[DYZWXX]  [nvarchar(15)]  NOT NULL,--第一指纹信息 编号：ZZXS010201 值空间：GA426.7 
	[DEZWXX]  [nvarchar(15)]  NULL,--第二指纹信息 编号：ZZXS010202 引用自ZZXS010201 DYZWXX 第一指纹信息 C 15 M GA426.7 NULL NULL
	[DSZWXX]  [nvarchar(15)]  NULL,--第三指纹信息 编号：ZZXS010203 引用自ZZXS010201 DYZWXX 第一指纹信息 C 15 M GA426.7 NULL NULL
	[CJRQ]  [nvarchar(8)]  NULL,--采集日期 编号：ZZXS010204 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[CJBZ]  [text]  NULL,--采集备注 编号：ZZXS010205 
CONSTRAINT [PK_ZZXS0102] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[DYZWXX] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--家庭基本数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZXS0201]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZXS0201](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[JTZZ]  [nvarchar(180)]  NOT NULL,--家庭住址 编号：JCTB020601 引用自JCTB010102 TXDZ 通信地址 C 180 NULL NULL 指包括省（自治区、直辖市）/地（市、州）/县（区、旗）/乡（镇）/街（村）/门牌号的详细地址 NULL
	[JTYZBM]  [nvarchar(6)]  NOT NULL,--家庭邮政编码 编号：JCTB020602 引用自JCTB010101 YZBM 邮政编码 C 6 NULL NULL NULL NULL
	[JTDH]  [nvarchar(30)]  NULL,--家庭电话 编号：JCTB020603 引用自JCTB010103 DH 电话 C 30 NULL NULL 即电话号码 NULL
	[JTLXR]  [nvarchar(36)]  NOT NULL,--家庭联系人 编号：ZZXS020101 引用自JCTB020101 XM 姓名 C 36 NULL NULL 例：张振华；买买提·阿不都热依木 NULL
	[JTDZXX]  [nvarchar(40)]  NULL,--家庭电子信箱 编号：JCTB020604 引用自JCTB010106 DZXX 电子信箱 C 40 NULL NULL 电子邮件地址 NULL
	[JTRK]  [decimal(2)]  NULL,--家庭人口 编号：JCTB020901 引用自JCTB020901 JTRK 家庭人口 N 2 O NULL 指本人家庭户口人口数 NULL
	[JTZYSRLY]  [nvarchar]  NULL,--家庭主要收入来源 编号：ZZXS020102 
	[JTYSRJE]  [money]  NULL,--家庭月收入金额 编号：ZZXS020103 
	[JTNSRJE]  [money]  NULL,--家庭年收入金额 编号：ZZXS020104 
	[LJZJHCZ]  [nvarchar(30)]  NULL,--离家最近火车站 编号：ZZXS020105 
CONSTRAINT [PK_ZZXS0201] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[JTZZ] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--家庭成员信息数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZXS0202]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZXS0202](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[XM]  [nvarchar(36)]  NOT NULL,--姓名 编号：JCTB020101 引用自JCTB020101 XM 姓名 C 36 NULL NULL 例：张振华；买买提·阿不都热依木 NULL
	[GXM]  [nvarchar(2)]  NOT NULL,--关系码 编号：JCTB020701 引用自JCTB020701 GXM 关系码 C 2 M NULL NULL NULL
	[JTCYZYM]  [nvarchar(3)]  NOT NULL,--家庭成员职业码 编号：ZZXS020201 值空间：GB/T6565 解释/举例：0国家机关、党群组织、企业、事业单位负责人；01中国共产党中央委员会和地方各级组织负责人；021国家权力机关及其工作机构负责人 
	[SZDW]  [nvarchar(60)]  NULL,--所在单位 编号：ZZXS020202 引用自JCTB010302 DWMC 单位名称 C 60 NULL NULL NULL NULL
	[ZZMMM]  [nvarchar(2)]  NULL,--政治面貌码 编号：JCTB020115 引用自JCTB020115 ZZMMM 政治面貌码 C 2 NULL GB/T4762 可采用简称，如：01中共党员，04民革会员 NULL
	[DH]  [nvarchar(30)]  NULL,--电话 编号：JCTB010103 引用自JCTB010103 DH 电话 C 30 NULL NULL 即电话号码 NULL
	[YDDH]  [nvarchar(30)]  NULL,--移动电话 编号：JCTB010104 引用自JCTB010104 YDDH 移动电话 C 30 NULL NULL NULL NULL
CONSTRAINT [PK_ZZXS0202] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[XM] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--学生成绩数据类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZXS06]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZXS06](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[KCH]  [nvarchar(6)]  NOT NULL,--课程号 编号：ZZJX010201 引用自ZZJX010201 KCH 课程号 C 6 M NULL 学校自编 NULL
	[KCMC]  [nvarchar(100)]  NOT NULL,--课程名称 编号：ZZJX010202 引用自ZZJX010202 KCMC 课程名称 C 100 M NULL NULL NULL
	[XF]  [decimal(2,1)]  NOT NULL,--学分 编号：ZZJX010206 引用自ZZJX010206 XF 学分 N 21 M NULL 如：2.5 NULL
	[XQMC]  [nvarchar(10)]  NOT NULL,--学期名称 编号：ZZJX010301 引用自ZZJX010301 XQMC 学期名称 C 10 M NULL 学校自编。例如：2010年春季学期；2009年秋季学期 NULL
	[PSCJ]  [decimal(5,1)]  NULL,--平时成绩 编号：ZZXS060101 
	[CJ]  [decimal(5,1)]  NOT NULL,--成绩 编号：ZZXS060102 
	[KSXZ]  [nvarchar(2)]  NULL,--考试性质 编号：ZZXS060103 值空间：JY/T1001KSXZ考试性质代码表 
	[RKJGH]  [nvarchar(20)]  NULL,--任课教工号 编号：ZZXS060104 引用自JCTB020120 RYH 人员号 C 20 NULL NULL 学号或工号 NULL
	[CJLRJGH]  [nvarchar(20)]  NULL,--成绩录入教工号 编号：ZZXS060105 引用自JCTB020120 RYH 人员号 C 20 NULL NULL 学号或工号 NULL
	[CJLRRQ]  [nvarchar(8)]  NOT NULL,--成绩录入日期 编号：ZZXS060106 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
CONSTRAINT [PK_ZZXS06] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[KCH] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--学籍异动数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZXS0702]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZXS0702](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[YDLBM]  [nvarchar(2)]  NOT NULL,--异动类别码 编号：JCXS020201 引用自JCXS020201 YDLBM 异动类别码 C 2 M JY/T1001XJYDLB学籍异动类别代码 NULL NULL
	[YDRQ]  [nvarchar(8)]  NOT NULL,--异动日期 编号：JCXS020202 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[YDYYM]  [nvarchar(2)]  NOT NULL,--异动原因码 编号：JCXS020203 引用自JCXS020203 YDYYM 异动原因码 C 2 M JY/T1001XJYDYY学籍异动原因代码 NULL NULL
	[SPRQ]  [nvarchar(8)]  NULL,--审批日期 编号：JCXS020204 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[SPWH]  [nvarchar(24)]  NULL,--审批文号 编号：JCXS020205 引用自JCXS020205 SPWH 审批文号 C 24 O NULL 审批的正式文号，无正式文号不填 NULL
	[JBRGH]  [nvarchar(20)]  NULL,--经办人工号 编号：ZZXS070201 引用自JCTB020120 RYH 人员号 C 20 NULL NULL 学号或工号 NULL
	[YDLYXXM]  [nvarchar(10)]  NULL,--异动来源学校码 编号：JCXS020206 引用自JCXX010101 XXDM 学校代码 C 10 M 学校（机构）标识码 NULL NULL
	[YDQXXXM]  [nvarchar(10)]  NULL,--异动去向学校码 编号：JCXS020207 引用自JCXX010101 XXDM 学校代码 C 10 M 学校（机构）标识码 NULL NULL
	[YDSM]  [text]  NULL,--异动说明 编号：JCXS020208 引用自JCXS020208 YDSM 异动说明 T NULL O NULL NULL NULL
	[YZYM]  [nvarchar(6)]  NOT NULL,--原专业码 编号：JCXS020210 引用自JCTB010407 ZYM 专业码 C 6 NULL 学位授予和人才培养学科目录专业学位授予和人才培养目录普通高等学校本科专业目录普通高等学校高职高专教育指导性专业目录（试行）中等职业学校专业目录 NULL NULL
	[YBH]  [nvarchar(10)]  NOT NULL,--原班号 编号：JCXS020211 引用自JCXX020001 BH 班号 C 10 M NULL 学校自编 NULL
	[YNJ]  [nvarchar(10)]  NOT NULL,--原年级 编号：JCXS020212 引用自JCTB010401 NJ 年级 C 10 NULL NULL NULL NULL
	[XZYM]  [nvarchar(6)]  NOT NULL,--现专业码 编号：JCXS020215 引用自JCTB010407 ZYM 专业码 C 6 NULL 学位授予和人才培养学科目录专业学位授予和人才培养目录普通高等学校本科专业目录普通高等学校高职高专教育指导性专业目录（试行）中等职业学校专业目录 NULL NULL
	[XBH]  [nvarchar(10)]  NOT NULL,--现班号 编号：JCXS020216 引用自JCXX020001 BH 班号 C 10 M NULL 学校自编 NULL
	[XNJ]  [nvarchar(10)]  NOT NULL,--现年级 编号：JCXS020217 引用自JCTB010401 NJ 年级 C 10 NULL NULL NULL NULL
CONSTRAINT [PK_ZZXS0702] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[YDLBM] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--学生注册信息数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZXS0703]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZXS0703](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[ZCZKM]  [nvarchar(1)]  NOT NULL,--注册状况码 编号：ZZXS070301 值空间：JY/T1001ZCZK注册状况代码 解释/举例：1注册2报到3未报到 
	[ZCRQ]  [nvarchar(8)]  NOT NULL,--注册日期 编号：ZZXS070302 
	[BDRQ]  [nvarchar(8)]  NOT NULL,--报到日期 编号：ZZXS070303 
	[WZCYY]  [nvarchar(100)]  NOT NULL,--未注册原因 编号：ZZXS070304 
	[WZCWBDQX]  [nvarchar(40)]  NOT NULL,--未注册/未报到去向 编号：ZZXS070305 
	[SFQJ]  [nvarchar(1)]  NOT NULL,--是否请假 编号：ZZXS070306 值空间：JY/T1001SFBZ是否标志代码 
	[WASZCXQM]  [nvarchar(1)]  NOT NULL,--未按时注册学期码 编号：ZZXS070307 引用自JCTB010206 XQM 学期码 C 1 NULL JY/T1001XQ学期代码 NULL NULL
CONSTRAINT [PK_ZZXS0703] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[ZCZKM] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--学生资助经费发放过程数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZXS1001]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZXS1001](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[SFZJH]  [nvarchar(20)]  NOT NULL,--身份证件号 编号：JCTB020112 引用自JCTB020112 SFZJH 身份证件号 C 20 NULL NULL 如：公民身份号码 NULL
	[SZRQ]  [nvarchar(8)]  NOT NULL,--受助日期 编号：ZZXS100101 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[SZLX]  [nvarchar(1)]  NOT NULL,--受助类型 编号：ZZXS100102 值空间：XSSZLX学生受资助类型码 
	[ZZJFLYM]  [nvarchar(1)]  NOT NULL,--资助经费来源码 编号：ZZXS100103 值空间：JY/T1001JLZZZJLY奖励资助资金来源代码 
	[ZZJE]  [money]  NULL,--资助金额 编号：ZZXS100104 
	[ZZDWHGR]  [nvarchar(60)]  NULL,--资助单位或个人 编号：ZZXS100105 
	[YHKH]  [nvarchar(30)]  NULL,--银行卡号 编号：ZZXS100106 
	[FFFSSM]  [nvarchar(200)]  NULL,--发放方式说明 编号：ZZXS100107 解释/举例：如果没使用银行卡，需要说明发放方式 
CONSTRAINT [PK_ZZXS1001] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[SFZJH] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--奖学金数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZXS1002]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZXS1002](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[JXJMC]  [nvarchar(30)]  NOT NULL,--奖学金名称 编号：ZZXS100201 
	[JXJBH]  [nvarchar(2)]  NOT NULL,--奖学金编号 编号：ZZXS100202 
	[JXJDJ]  [nvarchar(20)]  NOT NULL,--奖学金等级 编号：ZZXS100203 
	[JXJLXM]  [nvarchar(2)]  NOT NULL,--奖学金类型码 编号：ZZXS100204 值空间：JY/T1001JXJLX奖学金类型代码 
	[JXJE]  [money]  NOT NULL,--奖学金额 编号：ZZXS100205 解释/举例：单位：元 
	[HJNY]  [nvarchar(6)]  NOT NULL,--获奖年月 编号：ZZXS100206 引用自JCTB010202 NY 年月 C 6 NULL GB/T7408 格式：YYYYMM，如：200604表示2006年4月 NULL
	[ZZDWHGR]  [nvarchar(60)]  NULL,--资助单位或个人 编号：ZZXS100105 解释/举例：授予奖学金的单位或人名 引用自ZZXS100105 ZZDWHGR 资助单位或个人 C 60 O NULL NULL NULL
	[JXJLYM]  [nvarchar(1)]  NULL,--奖学金来源码 编号：ZZXS100207 值空间：JY/T1001JLZZZJLY奖励资助资金来源代码 
CONSTRAINT [PK_ZZXS1002] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[JXJMC] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--助学金数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZXS1003]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZXS1003](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[ZKBMH]  [nvarchar(10)]  NULL,--中考报名号 编号：ZZXS100301 
	[YHKH]  [nvarchar(30)]  NOT NULL,--银行卡号 编号：ZZXS100106 引用自ZZXS100106 YHKH 银行卡号 C 30 O NULL NULL NULL
	[ZXJE]  [money]  NOT NULL,--助学金额 编号：ZZXS100302 解释/举例：单位：元 
	[SFNY]  [nvarchar(6)]  NOT NULL,--始发年月 编号：ZZXS100303 引用自JCTB010202 NY 年月 C 6 NULL GB/T7408 格式：YYYYMM，如：200604表示2006年4月 NULL
	[TFNY]  [nvarchar(6)]  NOT NULL,--停发年月 编号：ZZXS100304 引用自JCTB010202 NY 年月 C 6 NULL GB/T7408 格式：YYYYMM，如：200604表示2006年4月 NULL
	[TFYY]  [nvarchar(80)]  NOT NULL,--停发原因 编号：ZZXS100305 解释/举例：停发原因说明 
	[ZXJMC]  [nvarchar(60)]  NOT NULL,--助学金名称 编号：ZZXS100306 
	[ZZDWHGR]  [nvarchar(60)]  NULL,--资助单位或个人 编号：ZZXS100105 引用自ZZXS100105 ZZDWHGR 资助单位或个人 C 60 O NULL NULL NULL
	[ZXJLX]  [nvarchar(1)]  NOT NULL,--助学金类型 编号：ZZXS100307 值空间：ZXJFL助学金分类代码 
CONSTRAINT [PK_ZZXS1003] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--助学贷款信息数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZXS1004]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZXS1004](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[DKSQNY]  [nvarchar(6)]  NOT NULL,--贷款申请年月 编号：ZZXS100401 引用自JCTB010202 NY 年月 C 6 NULL GB/T7408 格式：YYYYMM，如：200604表示2006年4月 NULL
	[DKHTH]  [nvarchar(12)]  NOT NULL,--贷款合同号 编号：ZZXS100402 
	[DKZJE]  [money]  NOT NULL,--贷款总金额 编号：ZZXS100403 解释/举例：单位：元 
	[DKNS]  [decimal(3,1)]  NOT NULL,--贷款年数 编号：ZZXS100404 
	[SQHKR]  [nvarchar(8)]  NOT NULL,--首期还款日 编号：ZZXS100405 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[HKZZR]  [nvarchar(8)]  NOT NULL,--还款终止日 编号：ZZXS100406 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[JKYTM]  [nvarchar(1)]  NOT NULL,--借款用途码 编号：ZZXS100407 解释/举例：学校自行编码学费/生活费/学费生活费 
	[DKYH]  [nvarchar(60)]  NOT NULL,--贷款银行 编号：ZZXS100408 
	[QYR]  [nvarchar(8)]  NOT NULL,--签约日 编号：ZZXS100409 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[SFYCXCH]  [nvarchar(1)]  NOT NULL,--是否一次性偿还 编号：ZZXS100410 值空间：JY/T1001SFBZ是否标志代码 解释/举例：1一次性偿还0分期偿还 
	[DBFS]  [nvarchar(10)]  NOT NULL,--担保方式 编号：ZZXS100411 值空间：信用/担保 
	[SFYQ]  [nvarchar(1)]  NOT NULL,--是否延期 编号：ZZXS100412 值空间：JY/T1001SFBZ是否标志代码 
	[YQNX]  [decimal(2)]  NOT NULL,--延期年限 编号：ZZXS100413 
	[HDRQ]  [nvarchar(8)]  NOT NULL,--获贷日期 编号：ZZXS100414 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
CONSTRAINT [PK_ZZXS1004] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[DKSQNY] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--免学费数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZXS1005]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZXS1005](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[MXFXSSFZHM]  [nvarchar(20)]  NOT NULL,--免学费学生身份证号码 编号：ZZXS100501 引用自JCTB020112 SFZJH 身份证件号 C 20 NULL NULL 如：公民身份号码 NULL
	[JMYY]  [nvarchar(60)]  NOT NULL,--减免原因 编号：ZZXS100502 
	[JMJE]  [money]  NOT NULL,--减免金额 编号：ZZXS100503 
	[MXFSFNY]  [nvarchar(6)]  NOT NULL,--免学费始发年月 编号：ZZXS100504 引用自JCTB010202 NY 年月 C 6 NULL GB/T7408 格式：YYYYMM，如：200604表示2006年4月 NULL
	[MXFTFNY]  [nvarchar(6)]  NULL,--免学费停发年月 编号：ZZXS100505 引用自JCTB010202 NY 年月 C 6 NULL GB/T7408 格式：YYYYMM，如：200604表示2006年4月 NULL
	[JFLYM]  [nvarchar(1)]  NOT NULL,--经费来源码 编号：ZZXS100506 值空间：JY/T1001JLZZZJLY奖励资助资金来源代码表 
CONSTRAINT [PK_ZZXS1005] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[MXFXSSFZHM] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--临时困难补助数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZXS1006]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZXS1006](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[BZSQRQ]  [nvarchar(8)]  NOT NULL,--补助申请日期 编号：ZZXS100601 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[SQYY]  [nvarchar(200)]  NOT NULL,--申请原因 编号：ZZXS100602 
	[BZJE]  [money]  NOT NULL,--补助金额 编号：ZZXS100603 
	[BZRQ]  [nvarchar(8)]  NOT NULL,--补助日期 编号：ZZXS100604 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
CONSTRAINT [PK_ZZXS1006] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[BZSQRQ] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--毕业数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZXS1101]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZXS1101](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[SHRQ]  [nvarchar(8)]  NOT NULL,--审核日期 编号：ZZXS110101 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[CZZGH]  [nvarchar(20)]  NOT NULL,--操作者工号 编号：ZZXS110102 引用自JCTB020120 RYH 人员号 C 20 NULL NULL 学号或工号 NULL
	[JSXYNY]  [nvarchar(6)]  NOT NULL,--结束学业年月 编号：JCXS030101 引用自JCTB010202 NY 年月 C 6 NULL GB/T7408 格式：YYYYMM，如：200604表示2006年4月 NULL
	[JSXYM]  [nvarchar(1)]  NOT NULL,--结束学业码 编号：JCXS030102 引用自JCXS030102 JSXYM 结束学业码 C 1 M GB/T14946.1－2009附录A.27 NULL NULL
	[BYZSH]  [nvarchar(20)]  NULL,--毕业证书号 编号：JCXS030104 引用自JCTB020508 XLZSH 学历证书号 C 20 O NULL NULL NULL
	[FFRQ]  [nvarchar(8)]  NULL,--发放日期 编号：ZZXS110103 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[SFZSLQ]  [nvarchar(1)]  NULL,--是否证书领取 编号：ZZXS110104 值空间：JY/T1001SFBZ是否标志代码 解释/举例：１领取０未领取 
CONSTRAINT [PK_ZZXS1101] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[SHRQ] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--就业数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZXS1102]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZXS1102](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[XYSBH]  [nvarchar(10)]  NULL,--协议书编号 编号：JCXS030201 引用自JCXS030201 XYSBH 协议书编号 C 10 O NULL 学校自编 NULL
	[XYQDRQ]  [nvarchar(8)]  NOT NULL,--协议签订日期 编号：JCXS030202 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[XYNX]  [nvarchar(1)]  NOT NULL,--协议年限 编号：JCXS030203 引用自JCXS030203 XYNX 协议年限 C 1 O NULL NULL NULL
	[BDRQ]  [nvarchar(8)]  NULL,--报到日期 编号：JCXS030204 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[BYQXM]  [nvarchar(2)]  NOT NULL,--毕业去向码 编号：JCXS030206 引用自JCXS030206 BYQXM 毕业去向码 C 2 M JY/T1001BYQX毕业去向代码JY/T1001GXBYQX高校毕业去向代码 中小学、中职学生采用BYQX毕业去向代码，高校毕业生采用GXBYQX高校毕业去向代码 NULL
	[JSDW]  [nvarchar(60)]  NULL,--接收单位 编号：JCXS030207 引用自JCTB010302 DWMC 单位名称 C 60 NULL NULL NULL NULL
	[DWSZDQHM]  [nvarchar(6)]  NULL,--单位所在地区划码 编号：JCXS030208 引用自JCXS030208 DWSZDQHM 单位所在地区划码 C 6 O GB/T2260 接收单位所在地区划码 NULL
	[DWZGBM]  [nvarchar(60)]  NULL,--单位主管部门 编号：JCXS030209 引用自JCTB010302 DWMC 单位名称 C 60 NULL NULL NULL NULL
	[DWLXDH]  [nvarchar(30)]  NULL,--单位联系电话 编号：ZZXS110201 引用自JCTB010103 DH 电话 C 30 NULL NULL 即电话号码 NULL
	[SHDWXZM]  [nvarchar(2)]  NULL,--社会单位性质码 编号：JCXS030210 引用自JCXS030210 SHDWXZM 社会单位性质码 C 2 O JY/T1001SHDWXZ社会单位性质代码 NULL NULL
	[DWJJXZM]  [nvarchar(3)]  NULL,--单位经济性质码 编号：JCXS030211 引用自JCXS030211 DWJJXZM 单位经济性质码 C 3 O GB/T12402 NULL NULL
	[DWTGDDY]  [text]  NULL,--单位提供的待遇 编号：JCXS030212 引用自JCXS030212 DWTGDDY 单位提供的待遇 T NULL O NULL NULL NULL
	[DAJSDZ]  [nvarchar(60)]  NOT NULL,--档案接收地址 编号：JCXS030213 引用自JCXS030213 DAJSDZ 档案接收地址 C 60 O NULL NULL NULL
	[JSDYM]  [nvarchar(6)]  NOT NULL,--接收地邮码 编号：JCXS030214 引用自JCTB010101 YZBM 邮政编码 C 6 NULL NULL NULL NULL
	[GZGWXZM]  [nvarchar(1)]  NULL,--工作岗位性质码 编号：JCXS030215 引用自JCXS030215 GZGWXZM 工作岗位性质码 C 1 O JY/T1001GZGWXZ工作岗位性质代码 NULL NULL
	[DWHYM]  [nvarchar(4)]  NULL,--单位行业码 编号：JCXS030216 引用自JCXS030216 DWHYM 单位行业码 C 4 O GB/T4754 NULL NULL
	[BDZH]  [nvarchar(11)]  NULL,--报到证号 编号：JCXS030217 引用自JCXS030217 BDZH 报到证号 C 11 O NULL NULL NULL
CONSTRAINT [PK_ZZXS1102] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--社团基本数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZXS1201]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZXS1201](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[STMC]  [nvarchar(30)]  NOT NULL,--社团名称 编号：ZZXS120101 
	[STBH]  [nvarchar(4)]  NOT NULL,--社团编号 编号：ZZXS120102 解释/举例：学校自编 
	[CLRQ]  [nvarchar(8)]  NOT NULL,--成立日期 编号：ZZXS120103 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[CLMD]  [nvarchar(60)]  NULL,--成立目的 编号：ZZXS120104 
	[ZYHDXS]  [nvarchar(60)]  NOT NULL,--主要活动形式 编号：ZZXS120105 
	[CSR]  [nvarchar(36)]  NOT NULL,--创始人 编号：ZZXS120106 引用自JCTB020101 XM 姓名 C 36 NULL NULL 例：张振华；买买提·阿不都热依木 NULL
	[PZBM]  [nvarchar(30)]  NOT NULL,--批准部门 编号：ZZXS120107 
	[STXZ]  [nvarchar(30)]  NOT NULL,--社团性质 编号：ZZXS120108 
	[RS]  [decimal(3)]  NOT NULL,--人数 编号：ZZXS120109 
	[DQFZR]  [nvarchar(36)]  NOT NULL,--当前负责人 编号：ZZXS120110 引用自JCTB020101 XM 姓名 C 36 NULL NULL 例：张振华；买买提·阿不都热依木 NULL
	[FZRDH]  [nvarchar(30)]  NOT NULL,--负责人电话 编号：ZZXS120111 引用自JCTB010104 YDDH 移动电话 C 30 NULL NULL NULL NULL
CONSTRAINT [PK_ZZXS1201] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[STMC] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--学生参与社团情况数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZXS1202]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZXS1202](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[STBH]  [nvarchar(4)]  NULL,--社团编号 编号：ZZXS120102 引用自ZZXS120102 STBH 社团编号 C 4 M NULL 学校自编 NULL
	[XM]  [nvarchar(36)]  NOT NULL,--姓名 编号：JCTB020101 引用自JCTB020101 XM 姓名 C 36 NULL NULL 例：张振华；买买提·阿不都热依木 NULL
	[CDRQ]  [nvarchar(8)]  NOT NULL,--参团日期 编号：ZZXS120201 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[STZW]  [nvarchar(50)]  NOT NULL,--社团职务 编号：ZZXS120202 
	[GZNR]  [text]  NOT NULL,--工作内容 编号：ZZXS120203 
	[STPJ]  [text]  NOT NULL,--社团评价 编号：ZZXS120204 
	[DQZT]  [nvarchar(1)]  NOT NULL,--当前状态 编号：ZZXS120205 值空间：JY/T1001SFBZ是否标志代码 解释/举例：1在职0离职 
CONSTRAINT [PK_ZZXS1202] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--考生数据类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZZS01]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZZS01](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[ZKZH]  [nvarchar(15)]  NOT NULL,--准考证号 编号：ZZZS010001 解释/举例：目前采用的是9位号 
	[KSH]  [nvarchar(20)]  NOT NULL,--考生号 编号：ZZZS010002 解释/举例：目前采用的是14位号 
	[KQXZQHM]  [nvarchar(6)]  NULL,--考区行政区划码 编号：ZZZS010003 值空间：GB/T2260 
	[RXNY]  [nvarchar(6)]  NOT NULL,--入学年月 编号：ZZZS010004 引用自JCTB010202 NY 年月 C 6 NULL GB/T7408 格式：YYYYMM，如：200604表示2006年4月 NULL
	[YSWGYZM]  [nvarchar(2)]  NOT NULL,--应试外国语种码 编号：ZZZS010005 值空间：GB/T4880.1 解释/举例：采用代码第1部分：2字母代码；en英语，de德语 
	[BKZYM1]  [nvarchar(6)]  NULL,--报考专业码1 编号：ZZZS010006 值空间：中等职业学校专业目录 
	[BKZYM2]  [nvarchar(6)]  NULL,--报考专业码2 编号：ZZZS010007 值空间：中等职业学校专业目录 
	[BKZYM3]  [nvarchar(6)]  NULL,--报考专业码3 编号：ZZZS010008 值空间：中等职业学校专业目录 
	[BKZYM4]  [nvarchar(6)]  NULL,--报考专业码4 编号：ZZZS010009 值空间：中等职业学校专业目录 
	[BKZYM5]  [nvarchar(6)]  NULL,--报考专业码5 编号：ZZZS010010 值空间：中等职业学校专业目录 
	[BKZYM6]  [nvarchar(6)]  NULL,--报考专业码6 编号：ZZZS010011 值空间：中等职业学校专业目录 
	[KSFSM]  [nvarchar(2)]  NOT NULL,--考试方式码 编号：ZZZS010012 值空间：JY/T1001KSFS考试方式代码 
	[BYZX]  [nvarchar(10)]  NOT NULL,--毕业中学 编号：ZZZS010013 解释/举例：学校自行编号 
	[BYZXYZBM]  [nvarchar(6)]  NOT NULL,--毕业中学邮政编码 编号：ZZZS010014 引用自JCTB010101 YZBM 邮政编码 C 6 NULL NULL NULL NULL
	[KSTC]  [nvarchar(100)]  NULL,--考生特长 编号：ZZZS010015 
	[JLYCC]  [nvarchar(200)]  NULL,--奖励与惩处 编号：ZZZS010016 
	[JSHJ]  [nvarchar(200)]  NULL,--竞赛获奖 编号：ZZZS010017 解释/举例：各类竞赛获奖信息 
	[SHGZ]  [nvarchar(200)]  NULL,--社会工作 编号：ZZZS010018 解释/举例：社会工作等信息 
	[TJJL]  [nvarchar(20)]  NULL,--体检结论 编号：ZZZS010019 解释/举例：合格/专业受限 
	[JZBS]  [nvarchar(20)]  NULL,--家族病史 编号：ZZZS010020 解释/举例：精神病/癫痫/肿瘤/心脏病 
	[KSJWBS]  [nvarchar(100)]  NULL,--考生既往病史 编号：ZZZS010021 
	[SG]  [decimal(5,1)]  NULL,--身高 编号：ZZZS010022 解释/举例：单位：厘米 
	[KSSL]  [decimal(3,1)]  NULL,--考生视力 编号：ZZZS010023 
CONSTRAINT [PK_ZZZS01] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[ZKZH] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--考生总分数据类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZZS02]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZZS02](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[RXZF]  [decimal(5,1)]  NULL,--入学总分 编号：ZZZS020001 解释/举例：中考总分＋附加分 
	[GKZF]  [decimal(5,1)]  NULL,--中考总分 编号：ZZZS020002 
	[FJF]  [decimal(5,1)]  NULL,--附加分 编号：ZZZS020003 
	[FJFLBM]  [nvarchar(1)]  NULL,--附加分类别码 编号：ZZZS020004 值空间：JY/T1001FJFLB附加分类别代码 解释/举例：指少数民族学生、国内外获奖学生或文体特长生等类别 
CONSTRAINT [PK_ZZZS02] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--考生科目成绩数据类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZZS03]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZZS03](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[KMM]  [decimal(2)]  NOT NULL,--科目码 编号：ZZZS030001 值空间：ZKKM中考科目代码 
	[ZKFS]  [decimal(5,1)]  NOT NULL,--中考分数 编号：ZZZS030002 
CONSTRAINT [PK_ZZZS03] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[KMM] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--考生录取数据类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZZS04]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZZS04](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[TZSH]  [nvarchar(30)]  NOT NULL,--通知书号 编号：ZZZS040001 
	[LQZY]  [nvarchar(1)]  NULL,--录取志愿 编号：ZZZS040002 解释/举例：第几志愿专业录取：1第1志愿录取9调剂专业录取 
	[SYDXZQHM]  [nvarchar(6)]  NULL,--生源地行政区划码 编号：ZZZS040003 值空间：GB/T2260 
	[BXZYH]  [decimal(4)]  NOT NULL,--本校专业号 编号：ZZZS040004 解释/举例：学校自行编号 引用自ZZJX010101 ZYBH 专业编号 N 4 M NULL 学校自编 NULL
	[XZ]  [decimal(3,1)]  NOT NULL,--学制 编号：JCTB010402 引用自JCTB010402 XZ 学制 N 31 NULL NULL 以年为单位 NULL
	[SFGFYL]  [nvarchar(1)]  NOT NULL,--是否公费医疗 编号：ZZZS040005 值空间：JY/T1001SFBZ是否标志代码 解释/举例：学籍管理部门提供 
	[XZBDM]  [nvarchar(10)]  NOT NULL,--行政班代码 编号：ZZJX020201 引用自JCXX020001 BH 班号 C 10 M NULL 学校自编 NULL
	[ZSDX]  [nvarchar(3)]  NULL,--招生对象 编号：ZZZS040006 值空间：JY/T1001ZSDX招生对象代码 
CONSTRAINT [PK_ZZZS04] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[TZSH] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--教职工基本数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZJG0101]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZJG0101](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[GH]  [nvarchar(20)]  NOT NULL,--工号 编号：JCJG010101 引用自JCTB020120 RYH 人员号 C 20 NULL NULL 学号或工号 NULL
	[XM]  [nvarchar(36)]  NOT NULL,--姓名 编号：JCTB020101 引用自JCTB020101 XM 姓名 C 36 NULL NULL 例：张振华；买买提·阿不都热依木 NULL
	[YWXM]  [nvarchar(60)]  NULL,--英文姓名 编号：JCTB020102 引用自JCTB020102 YWXM 英文姓名 C 60 NULL NULL 例：ChristopherFrancisPatten NULL
	[XMPY]  [nvarchar(60)]  NOT NULL,--姓名拼音 编号：JCTB020103 引用自JCTB020103 XMPY 姓名拼音 C 60 NULL NULL 例：ZHANGZhenhua， NULL
	[CYM]  [nvarchar(36)]  NULL,--曾用名 编号：JCTB020104 引用自JCTB020104 CYM 曾用名 C 36 NULL NULL 指曾经正式使用过的姓名 NULL
	[SFZJLXM]  [nvarchar(1)]  NOT NULL,--身份证件类型码 编号：JCTB020111 引用自JCTB020111 SFZJLXM 身份证件类型码 C 1 NULL JY/T1001SFZJLX身份证件类型代码 NULL NULL
	[SFZJH]  [nvarchar(20)]  NOT NULL,--身份证件号 编号：JCTB020112 引用自JCTB020112 SFZJH 身份证件号 C 20 NULL NULL 如：公民身份号码 NULL
	[CSRQ]  [nvarchar(8)]  NOT NULL,--出生日期 编号：JCTB020106 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[XBM]  [nvarchar(1)]  NOT NULL,--性别码 编号：JCTB020105 引用自JCTB020105 XBM 性别码 C 1 NULL GB/T2261.1 NULL NULL
	[MZM]  [nvarchar(2)]  NOT NULL,--民族码 编号：JCTB020109 引用自JCTB020109 MZM 民族码 C 2 NULL GB/T3304 取用2位数字代码，如：01汉族，02蒙古族 NULL
	[XXM]  [nvarchar(1)]  NULL,--血型码 编号：JCTB020118 引用自JCTB020118 XXM 血型码 C 1 NULL JY/T1001XX血型代码 NULL NULL
	[JKZKM]  [nvarchar(1)]  NULL,--健康状况码 编号：JCTB020116 引用自JCTB020116 JKZKM 健康状况码 C 1 NULL GB/T2261.3 采用1位数字代码 NULL
	[HYZTM]  [nvarchar(2)]  NOT NULL,--婚姻状态码 编号：JCTB020113 引用自JCTB020113 HYZKM 婚姻状况码 C 2 NULL GB/T2261.2 NULL NULL
	[ZZMMM]  [nvarchar(2)]  NOT NULL,--政治面貌码 编号：JCTB020115 引用自JCTB020115 ZZMMM 政治面貌码 C 2 NULL GB/T4762 可采用简称，如：01中共党员，04民革会员 NULL
	[GATQWM]  [nvarchar(2)]  NULL,--港澳台侨外码 编号：JCTB020114 引用自JCTB020114 GATQWM 港澳台侨外码 C 2 NULL JY/T1001GATQW港澳台侨外代码 NULL NULL
	[JG]  [nvarchar(20)]  NOT NULL,--籍贯 编号：JCTB020108 引用自JCTB020108 JG 籍贯 C 20 NULL NULL NULL NULL
	[GJDQM]  [nvarchar(3)]  NULL,--国籍/地区码 编号：JCTB020110 引用自JCTB020110 GJDQM 国籍/地区码 C 3 NULL GB/T2659 采用三字母代码，如：CHN中国，USA美国 NULL
	[CSDXZQHM]  [nvarchar(6)]  NOT NULL,--出生地行政区划码 编号：ZZJG010101 引用自JCXX010106 XZQHM 行政区划码 C 6 M GB/T2260 学校所在地行政区划码 NULL
	[XYZJM]  [nvarchar(2)]  NULL,--信仰宗教码 编号：JCTB020117 引用自JCTB020117 XYZJM 信仰宗教码 C 2 NULL GA214.12 NULL NULL
	[JZGHKSZDXZQHM]  [nvarchar(6)]  NOT NULL,--教职工户口所在地行政区划码 编号：ZZJG010102 引用自ZZXS010101 HKSZDXZQHM 户口所在地行政区划码 C 6 M GB/T2260 NULL NULL
	[HKLBM]  [nvarchar(1)]  NOT NULL,--户口类别码 编号：ZZJG010103 值空间：GA324.1 
	[DQZZ]  [nvarchar(180)]  NOT NULL,--当前住址 编号：ZZJG010104 引用自JCTB010102 TXDZ 通信地址 C 180 NULL NULL 指包括省（自治区、直辖市）/地（市、州）/县（区、旗）/乡（镇）/街（村）/门牌号的详细地址 NULL
	[DQZZYZBM]  [nvarchar(6)]  NOT NULL,--当前住址邮政编码 编号：ZZJG010105 引用自JCTB010101 YZBM 邮政编码 C 6 NULL NULL NULL NULL
	[CJGZNY]  [nvarchar(6)]  NOT NULL,--参加工作年月 编号：ZZJG010106 引用自JCTB010202 NY 年月 C 6 NULL GB/T7408 格式：YYYYMM，如：200604表示2006年4月 NULL
	[CJNY]  [nvarchar(6)]  NULL,--从教年月 编号：ZZJG010107 引用自JCTB010202 NY 年月 C 6 NULL GB/T7408 格式：YYYYMM，如：200604表示2006年4月 NULL
	[LXNY]  [nvarchar(6)]  NOT NULL,--来校年月 编号：ZZJG010108 引用自JCTB010202 NY 年月 C 6 NULL GB/T7408 格式：YYYYMM，如：200604表示2006年4月 NULL
	[BZLBM]  [nvarchar(2)]  NOT NULL,--编制类别码 编号：ZZJG010109 值空间：JY/T1001BZLB编制类别代码 解释/举例：如:10教学类20行政类30教辅类 
	[JZGLBM]  [nvarchar(2)]  NOT NULL,--教职工类别码 编号：ZZJG010110 值空间：JY/T1001JZGLB教职工类别代码 解释/举例：如：10校本部教职工11专任教师12教辅人员 
	[GWLBM]  [nvarchar(1)]  NOT NULL,--岗位类别码 编号：ZZJG010111 值空间：JY/T1001GWLB岗位类别代码 解释/举例：如：1基础课2专业课3实践技术指导9其他 
	[SFJZJS]  [nvarchar(1)]  NOT NULL,--是否兼职教师 编号：ZZJG010112 值空间：JY/T1001SFBZ是否标志代码 解释/举例：0否1是 
	[SFSSXJS]  [nvarchar(1)]  NOT NULL,--是否双师型教师 编号：ZZJG010113 值空间：JY/T1001SFBZ是否标志代码 解释/举例：0否1是 
	[ZP]  [nvarchar(200)]  NULL,--照片 编号：JCTB020119 引用自JCTB020119 ZP 照片 B NULL NULL NULL 近期正面免冠证件照片 NULL
	[DQZTM]  [nvarchar(2)]  NOT NULL,--当前状态码 编号：ZZJG010114 值空间：JY/T1001JZGDQZT教职工当前状态代码 解释/举例：如：11在职01退休 
CONSTRAINT [PK_ZZJG0101] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[GH] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--教职工联系方式数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZJG0201]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZJG0201](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[GH]  [nvarchar(20)]  NOT NULL,--工号 编号：JCJG010101 引用自JCTB020120 RYH 人员号 C 20 NULL NULL 学号或工号 NULL
	[XM]  [nvarchar(36)]  NOT NULL,--姓名 编号：JCTB020101 引用自JCTB020101 XM 姓名 C 36 NULL NULL 例：张振华；买买提·阿不都热依木 NULL
	[YDDH]  [nvarchar(30)]  NOT NULL,--移动电话 编号：JCTB010104 引用自JCTB010104 YDDH 移动电话 C 30 NULL NULL NULL NULL
	[GDDH]  [nvarchar(30)]  NULL,--固定电话 编号：ZZJG020101 引用自JCTB010103 DH 电话 C 30 NULL NULL 即电话号码 NULL
	[YZBM]  [nvarchar(6)]  NULL,--邮政编码 编号：JCTB010101 引用自JCTB010101 YZBM 邮政编码 C 6 NULL NULL NULL NULL
	[TXDZ]  [nvarchar(180)]  NULL,--通信地址 编号：JCTB010102 引用自JCTB010102 TXDZ 通信地址 C 180 NULL NULL 指包括省（自治区、直辖市）/地（市、州）/县（区、旗）/乡（镇）/街（村）/门牌号的详细地址 NULL
	[DZXX]  [nvarchar(40)]  NOT NULL,--电子信箱 编号：JCTB010106 引用自JCTB010106 DZXX 电子信箱 C 40 NULL NULL 电子邮件地址 NULL
	[WLDZ]  [nvarchar(60)]  NULL,--网络地址 编号：JCTB010107 引用自JCTB010107 WLDZ 网络地址 C 60 NULL NULL 如主页、博客、微博网址 NULL
	[JSTXH]  [nvarchar(40)]  NULL,--即时通讯号 编号：JCTB010108 引用自JCTB010108 JSTXH 即时通讯号 C 40 NULL NULL 如MSN/QQ等号码 NULL
CONSTRAINT [PK_ZZJG0201] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[GH] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--校内岗位数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZJG0202]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZJG0202](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[GWQSNY]  [nvarchar(6)]  NOT NULL,--岗位起始年月 编号：ZZJG020201 引用自JCTB010202 NY 年月 C 6 NULL GB/T7408 格式：YYYYMM，如：200604表示2006年4月 NULL
	[GWJSNY]  [nvarchar(6)]  NOT NULL,--岗位结束年月 编号：ZZJG020202 引用自JCTB010202 NY 年月 C 6 NULL GB/T7408 格式：YYYYMM，如：200604表示2006年4月 NULL
	[SFZG]  [nvarchar(1)]  NOT NULL,--是否在岗 编号：ZZJG020203 值空间：JY/T1001SFBZ是否标志代码 解释/举例：0否（不在岗）1是（在岗） 
	[ZWMC]  [nvarchar(10)]  NOT NULL,--职务名称 编号：ZZJG020204 
	[JGH]  [nvarchar(6)]  NOT NULL,--机构号 编号：ZZXX030001 引用自ZZXX030001 JGH 机构号 C 6 M NULL 学校自编 NULL
CONSTRAINT [PK_ZZJG0202] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[GWQSNY] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--教职工指纹信息数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZJG0203]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZJG0203](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[XM]  [nvarchar(36)]  NOT NULL,--姓名 编号：JCTB020101 引用自JCTB020101 XM 姓名 C 36 NULL NULL 例：张振华；买买提·阿不都热依木 NULL
	[GH]  [nvarchar(20)]  NOT NULL,--工号 编号：JCJG010101 引用自JCTB020120 RYH 人员号 C 20 NULL NULL 学号或工号 NULL
	[DYZWXX]  [nvarchar(15)]  NOT NULL,--第一指纹信息 编号：ZZXS010201 引用自ZZXS010201 DYZWXX 第一指纹信息 C 15 M GA426.7 NULL NULL
	[DEZWXX]  [nvarchar(15)]  NULL,--第二指纹信息 编号：ZZXS010201 引用自ZZXS010201 DYZWXX 第一指纹信息 C 15 M GA426.7 NULL NULL
	[DSZWXX]  [nvarchar(15)]  NULL,--第三指纹信息 编号：ZZXS010201 引用自ZZXS010201 DYZWXX 第一指纹信息 C 15 M GA426.7 NULL NULL
	[CJRQ]  [nvarchar(8)]  NULL,--采集日期 编号：ZZJG020304 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[CJBZ]  [text]  NULL,--采集备注 编号：ZZXS010205 引用自ZZXS010205 CJBZ 采集备注 T NULL O NULL NULL NULL
CONSTRAINT [PK_ZZJG0203] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[XM] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--家庭情况数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZJG0301]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZJG0301](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[JTZZ]  [nvarchar(180)]  NOT NULL,--家庭住址 编号：JCTB020601 引用自JCTB010102 TXDZ 通信地址 C 180 NULL NULL 指包括省（自治区、直辖市）/地（市、州）/县（区、旗）/乡（镇）/街（村）/门牌号的详细地址 NULL
	[JTYZBM]  [nvarchar(6)]  NOT NULL,--家庭邮政编码 编号：JCTB020602 引用自JCTB010101 YZBM 邮政编码 C 6 NULL NULL NULL NULL
	[JTDH]  [nvarchar(30)]  NULL,--家庭电话 编号：JCTB020603 引用自JCTB010103 DH 电话 C 30 NULL NULL 即电话号码 NULL
	[JTLXR]  [nvarchar(36)]  NOT NULL,--家庭联系人 编号：ZZJG030101 引用自ZZXS020101 JTLXR 家庭联系人 C 36 M NULL NULL JCTB020101
	[JTRK]  [decimal(2)]  NOT NULL,--家庭人口 编号：JCTB020901 引用自JCTB020901 JTRK 家庭人口 N 2 O NULL 指本人家庭户口人口数 NULL
	[JTZYSRLY]  [nvarchar]  NULL,--家庭主要收入来源 编号：ZZXS020102 引用自ZZXS020102 JTZYSRLY 家庭主要收入来源 C NULL O NULL NULL NULL
	[JTYSRJE]  [money]  NULL,--家庭月收入金额 编号：ZZXS020103 引用自ZZXS020103 JTYSRJE 家庭月收入金额 M NULL 0.0 NULL NULL NULL
	[JTNSRJE]  [money]  NULL,--家庭年收入金额 编号：ZZXS020104 引用自ZZXS020104 JTNSRJE 家庭年收入金额 M NULL 0.0 NULL NULL NULL
CONSTRAINT [PK_ZZJG0301] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[JTZZ] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--教职工专业能力与资格证书数据类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZJG07]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZJG07](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[ZSMC]  [nvarchar(40)]  NOT NULL,--证书名称 编号：ZZJG070001 引用自JCJG020301 GWZSMC 岗位证书名称 C 40 M NULL 由具有岗位评定资格单位考核并批准的岗位证书名称 NULL
	[ZSBH]  [nvarchar(20)]  NULL,--证书编号 编号：ZZJG070002 引用自JCJG020302 GWZSBH 岗位证书编号 C 20 O NULL NULL NULL
	[ZSBFDW]  [nvarchar(60)]  NULL,--证书颁发单位 编号：ZZJG070003 引用自JCTB010302 DWMC 单位名称 C 60 NULL NULL NULL NULL
	[ZSBFRQ]  [nvarchar(8)]  NOT NULL,--证书颁发日期 编号：ZZJG070004 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[ZSBZ]  [text]  NULL,--证书备注 编号：ZZJG070005 
	[SFSZYZGZS]  [nvarchar(1)]  NOT NULL,--是否是职业资格证书 编号：ZZJG070006 值空间：JY/T1001SFBZ是否标志代码 
CONSTRAINT [PK_ZZJG07] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[ZSMC] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--外籍教师聘用数据类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZJG17]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZJG17](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[GNTJH]  [nvarchar(20)]  NOT NULL,--国内体检号 编号：ZZJG170001 
	[GWTJH]  [nvarchar(20)]  NOT NULL,--国外体检号 编号：ZZJG170002 
	[GNTJRQ]  [nvarchar(8)]  NOT NULL,--国内体检日期 编号：ZZJG170003 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[GWTJRQ]  [nvarchar(8)]  NOT NULL,--国外体检日期 编号：ZZJG170004 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[QZZLM]  [nvarchar(1)]  NOT NULL,--签证种类码 编号：ZZJG170005 值空间：GA/T704.8 
	[LSZSDJ]  [nvarchar(20)]  NOT NULL,--临时住宿登记 编号：ZZJG170006 
	[ZSDZ]  [nvarchar(180)]  NOT NULL,--住宿地址 编号：ZZJG170007 引用自JCTB010102 TXDZ 通信地址 C 180 NULL NULL 指包括省（自治区、直辖市）/地（市、州）/县（区、旗）/乡（镇）/街（村）/门牌号的详细地址 NULL
	[ZJZH]  [nvarchar(20)]  NOT NULL,--专家证号 编号：ZZJG170008 
	[JLXKH]  [nvarchar(20)]  NOT NULL,--居留许可号 编号：ZZJG170009 
	[JLKSRQ]  [nvarchar(8)]  NOT NULL,--居留开始日期 编号：ZZJG170010 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
CONSTRAINT [PK_ZZJG17] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[GNTJH] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--“双师型”教师聘用数据类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZJG18]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZJG18](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[SSLX]  [nvarchar(20)]  NOT NULL,--双师类型 编号：ZZJG180001 
	[HDSSRQ]  [nvarchar(8)]  NOT NULL,--获得双师日期 编号：ZZJG180002 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[ZSBFJG]  [nvarchar(30)]  NOT NULL,--证书颁发机构 编号：ZZJG180003 
	[ZYZGZS]  [nvarchar(40)]  NOT NULL,--职业资格证书 编号：ZZJG180004 
	[ZYJSZWM]  [nvarchar(3)]  NOT NULL,--专业技术职务码 编号：ZZJG180005 引用自JCTB020306 CRZYJSZWM 曾任专业技术职务码 C 3 O GB/T8561 例：011教授 NULL
	[ZYZGZSBH]  [nvarchar(30)]  NOT NULL,--职业资格证书编号 编号：ZZJG180006 
	[ZYJSZCQDRQ]  [nvarchar(8)]  NOT NULL,--专业技术职称取得日期 编号：ZZJG180007 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[ZYZSMC]  [nvarchar(40)]  NOT NULL,--专业证书名称 编号：ZZJG180008 
	[ZYZSBH]  [nvarchar(30)]  NOT NULL,--专业证书编号 编号：ZZJG180009 
	[ZYZSQDRQ]  [nvarchar(8)]  NOT NULL,--专业证书取得日期 编号：ZZJG180010 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[ZYYJFX]  [nvarchar(30)]  NOT NULL,--主要研究方向 编号：ZZJG180011 
CONSTRAINT [PK_ZZJG18] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[SSLX] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--兼职教师聘用数据类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZJG19]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZJG19](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[QZGZDW]  [nvarchar(60)]  NULL,--全职工作单位 编号：ZZJG190001 引用自JCTB010302 DWMC 单位名称 C 60 NULL NULL NULL NULL
	[PYQSRQ]  [nvarchar(8)]  NOT NULL,--聘用起始日期 编号：ZZJG190002 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[PYZZRQ]  [nvarchar(8)]  NOT NULL,--聘用终止日期 编号：ZZJG190003 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[JZGWM]  [nvarchar(1)]  NOT NULL,--兼职岗位码 编号：ZZJG190004 值空间：JZJSGW兼职教师岗位代码 
	[HTBH]  [nvarchar(10)]  NOT NULL,--合同编号 编号：ZZJG190005 
CONSTRAINT [PK_ZZJG19] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--教学科研成果数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZJG2001]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZJG2001](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[KYXMBH]  [nvarchar(10)]  NOT NULL,--科研项目编号 编号：ZZJG200201 
	[KYXMMC]  [nvarchar(60)]  NOT NULL,--科研项目名称 编号：ZZJG200202 
	[XMFZR]  [nvarchar(36)]  NOT NULL,--项目负责人 编号：ZZJG200203 引用自JCTB020101 XM 姓名 C 36 NULL NULL 例：张振华；买买提·阿不都热依木 NULL
	[ZXBH]  [nvarchar(10)]  NOT NULL,--专项编号 编号：ZZJG200204 
	[HJRY]  [nvarchar(150)]  NOT NULL,--获奖人员 编号：ZZJG200205 
	[BFJG]  [nvarchar(30)]  NOT NULL,--颁发机构 编号：ZZJG200206 
	[HJRQ]  [nvarchar(8)]  NOT NULL,--获奖日期 编号：ZZJG200207 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[LXRQ]  [nvarchar(8)]  NOT NULL,--立项日期 编号：ZZJG200208 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[JTRQ]  [nvarchar(8)]  NOT NULL,--结题日期 编号：ZZJG200209 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[HJDJM]  [nvarchar(10)]  NULL,--获奖等级码 编号：ZZJG200210 值空间：JY/T1001JSHJLB教师获奖类别代码表 
CONSTRAINT [PK_ZZJG2001] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[KYXMBH] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--发表论文数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZJG2002]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZJG2002](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[FBLWMC]  [nvarchar(80)]  NOT NULL,--发表论文名称 编号：ZZJG200301 
	[FBRQ]  [nvarchar(8)]  NOT NULL,--发表日期 编号：ZZJG200302 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[FBR]  [nvarchar(36)]  NOT NULL,--发表人 编号：ZZJG200303 引用自JCTB020101 XM 姓名 C 36 NULL NULL 例：张振华；买买提·阿不都热依木 NULL
	[KWMC]  [nvarchar(50)]  NOT NULL,--刊物名称 编号：ZZJG200304 
	[KWDJ]  [nvarchar(2)]  NULL,--刊物等级 编号：ZZJG200305 值空间：JY/T1001KWJB刊物级别代码 解释/举例：10国际学术刊物；20全国性学术刊物 
	[ZS]  [decimal(6)]  NOT NULL,--字数 编号：ZZJG200306 
	[SMCX]  [decimal(1)]  NOT NULL,--署名次序 编号：ZZJG200307 
CONSTRAINT [PK_ZZJG2002] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[FBLWMC] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--专著、教材、教参数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZJG2003]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZJG2003](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[LZLBM]  [nvarchar(2)]  NOT NULL,--论著类别码 编号：ZZJG200401 值空间：JY/T1001LZLB论著类别代码 解释/举例：10著作11专著 
	[ZZZWM]  [nvarchar(60)]  NOT NULL,--著作中文名 编号：ZZJG200402 
	[ISBN]  [nvarchar(21)]  NOT NULL,--ISBN号 编号：ZZJG200403 
	[CBRQ]  [nvarchar(8)]  NOT NULL,--出版日期 编号：ZZJG200404 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[SJZZ]  [nvarchar(36)]  NOT NULL,--书籍作者 编号：ZZJG200405 引用自JCTB020101 XM 姓名 C 36 NULL NULL 例：张振华；买买提·阿不都热依木 NULL
	[SJZZS]  [decimal(8)]  NULL,--书籍总字数 编号：ZZJG200406 
	[CBS]  [nvarchar(40)]  NOT NULL,--出版社 编号：ZZJG200407 
	[ZZYWM]  [nvarchar(100)]  NULL,--著作英文名 编号：ZZJG200408 
	[BRFZBFZS]  [decimal(8)]  NULL,--本人负责部分字数 编号：ZZJG200409 
	[BRJS]  [nvarchar(20)]  NULL,--本人角色 编号：ZZJG200409 解释/举例：主编、参编等 
CONSTRAINT [PK_ZZJG2003] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[LZLBM] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--专利成果数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZJG2004]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZJG2004](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[ZLCGBH]  [nvarchar(8)]  NOT NULL,--专利成果编号 编号：ZZJG200501 
	[ZLCGMC]  [nvarchar(60)]  NOT NULL,--专利成果名称 编号：ZZJG200502 
	[PZRQ]  [nvarchar(8)]  NOT NULL,--批准日期 编号：ZZJG200503 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[ZLFMR]  [nvarchar(36)]  NOT NULL,--专利发明人 编号：ZZJG200504 引用自JCTB020101 XM 姓名 C 36 NULL NULL 例：张振华；买买提·阿不都热依木 NULL
	[ZLZSBH]  [nvarchar(20)]  NOT NULL,--专利证书编号 编号：ZZJG200505 
CONSTRAINT [PK_ZZJG2004] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[ZLCGBH] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--专业基本信息数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZJX0101]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZJX0101](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[ZYBH]  [decimal(4)]  NOT NULL,--专业编号 编号：ZZJX010101 解释/举例：学校自编 
	[ZYDM]  [nvarchar(6)]  NOT NULL,--专业代码 编号：ZZJX010102 值空间：中等职业学校专业目录 
	[ZYMC]  [nvarchar(50)]  NOT NULL,--专业名称 编号：ZZJX010103 
	[ZYYWMC]  [nvarchar(100)]  NULL,--专业英文名称 编号：ZZJX010104 
	[XZ]  [decimal(3,1)]  NOT NULL,--学制 编号：JCTB010402 引用自JCTB010402 XZ 学制 N 31 NULL NULL 以年为单位 NULL
	[ZYFXMC]  [nvarchar(100)]  NOT NULL,--专业方向名称 编号：ZZJX010105 
	[ZYJC]  [nvarchar(100)]  NOT NULL,--专业简称 编号：ZZJX010106 
	[JLNY]  [nvarchar(6)]  NOT NULL,--建立年月 编号：ZZJX010107 解释/举例：专业设立年月 引用自JCTB010202 NY 年月 C 6 NULL GB/T7408 格式：YYYYMM，如：200604表示2006年4月 NULL
	[ZYJSS]  [decimal(2)]  NULL,--专业教师数 编号：ZZJX010108 
	[KSJGH]  [nvarchar(6)]  NOT NULL,--开设机构号 编号：ZZJX010109 解释/举例：学校的组织机构部门编号 引用自ZZXX030001 JGH 机构号 C 6 M NULL 学校自编 NULL
	[ZXF]  [nvarchar(10)]  NOT NULL,--总学分 编号：ZZJX010110 解释/举例：此专业毕业时所需的总学分 
CONSTRAINT [PK_ZZJX0101] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[ZYBH] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--课程数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZJX0102]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZJX0102](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[KCH]  [nvarchar(6)]  NOT NULL,--课程号 编号：ZZJX010201 解释/举例：学校自编 
	[KCMC]  [nvarchar(100)]  NOT NULL,--课程名称 编号：ZZJX010202 
	[KCYWM]  [nvarchar(100)]  NULL,--课程英文名 编号：ZZJX010203 
	[KCBM]  [nvarchar(100)]  NULL,--课程别名 编号：ZZJX010204 
	[KCJS]  [nvarchar(200)]  NULL,--课程介绍 编号：ZZJX010205 
	[XF]  [decimal(2,1)]  NOT NULL,--学分 编号：ZZJX010206 解释/举例：如：2.5 
	[ZXS]  [decimal(2)]  NOT NULL,--总学时 编号：ZZJX010207 解释/举例：单位：学时 
	[LLXS]  [decimal(2)]  NOT NULL,--理论学时 编号：ZZJX010208 
	[SJXS]  [decimal(2)]  NOT NULL,--实践学时 编号：ZZJX010209 
	[QTXS]  [decimal(2)]  NOT NULL,--其他学时 编号：ZZJX010210 
	[CKSM]  [text]  NULL,--参考书目 编号：ZZJX010211 
	[KKDW]  [nvarchar(6)]  NULL,--开课单位 编号：ZZJX010212 解释/举例：校内机构号 引用自ZZXX030001 JGH 机构号 C 6 M NULL 学校自编 NULL
	[KSXS]  [nvarchar(1)]  NOT NULL,--考试形式 编号：ZZJX010213 值空间：JY/T1001KSXS考试形式代码 解释/举例：1考试2考查 
	[SKFSM]  [nvarchar(1)]  NOT NULL,--授课方式码 编号：ZZJX010214 值空间：JY/T1001SKFS授课方式代码 
	[KCFY]  [money]  NULL,--课程费用 编号：ZZJX010215 解释/举例：学习课程所需费用 
CONSTRAINT [PK_ZZJX0102] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[KCH] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--学期数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZJX0103]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZJX0103](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[XN]  [nvarchar(9)]  NOT NULL,--学年（度） 编号：JCTB010205 引用自JCTB010205 XN 学年（度） C 9 NULL NULL 格式：YYYY-YYYY，如：2001-2002 NULL
	[XQM]  [nvarchar(1)]  NOT NULL,--学期码 编号：JCTB010206 引用自JCTB010206 XQM 学期码 C 1 NULL JY/T1001XQ学期代码 NULL NULL
	[XQMC]  [nvarchar(10)]  NOT NULL,--学期名称 编号：ZZJX010301 解释/举例：学校自编。例如：2010年春季学期；2009年秋季学期 
	[XQKSRQ]  [nvarchar(8)]  NULL,--学期开始日期 编号：ZZJX010302 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[XQJSRQ]  [nvarchar(8)]  NULL,--学期结束日期 编号：ZZJX010303 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
CONSTRAINT [PK_ZZJX0103] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[XN] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--学校年级数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZJX0201]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZJX0201](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[NJDM]  [nvarchar(4)]  NOT NULL,--年级代码 编号：ZZJX020101 解释/举例：根据年份来编号 
	[NJMC]  [nvarchar(10)]  NOT NULL,--年级名称 编号：ZZJX020102 
	[SSNF]  [nvarchar(4)]  NOT NULL,--所属年份 编号：ZZJX020103 引用自JCTB010201 ND 年度（年份、年） C 4 NULL GB/T7408 格式：YYYY，如：2008 NULL
	[NJZT]  [nvarchar(1)]  NOT NULL,--年级状态 编号：ZZJX020104 值空间：JY/T1001SFBZ是否标志代码 解释/举例：0过期1未过期 
CONSTRAINT [PK_ZZJX0201] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[NJDM] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--学校班级数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZJX0202]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZJX0202](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[XZBDM]  [nvarchar(10)]  NOT NULL,--行政班代码 编号：ZZJX020201 引用自JCXX020001 BH 班号 C 10 M NULL 学校自编 NULL
	[NJDM]  [nvarchar(4)]  NOT NULL,--年级代码 编号：ZZJX020101 引用自ZZJX020101 NJDM 年级代码 C 4 M NULL 根据年份来编号 NULL
	[XZBMC]  [nvarchar(50)]  NOT NULL,--行政班名称 编号：ZZJX020202 
	[ZYDM]  [nvarchar(6)]  NOT NULL,--专业代码 编号：ZZJX020203 值空间：中等职业学校专业目录 
	[JBNY]  [nvarchar(6)]  NOT NULL,--建班年月 编号：ZZJX020204 引用自JCTB010202 NY 年月 C 6 NULL GB/T7408 格式：YYYYMM，如：200604表示2006年4月 NULL
	[BZRGH]  [nvarchar(20)]  NULL,--班主任工号 编号：ZZJX020205 引用自JCTB020120 RYH 人员号 C 20 NULL NULL 学号或工号 NULL
	[JSBH]  [nvarchar(10)]  NULL,--教室编号 编号：ZZFC090002 引用自ZZFC090002 JSBH 教室编号 C 10 M NULL 学校自编 NULL
	[NANSRS]  [decimal(4)]  NULL,--男生人数 编号：ZZJX020206 
	[NVSRS]  [decimal(4)]  NULL,--女生人数 编号：ZZJX020207 
	[ZRS]  [decimal(4)]  NULL,--总人数 编号：ZZJX020208 
	[BZXH]  [nvarchar(20)]  NULL,--班长学号 编号：ZZJX020209 引用自JCTB020120 RYH 人员号 C 20 NULL NULL 学号或工号 NULL
	[JXJH]  [nvarchar(5)]  NOT NULL,--教学计划 编号：ZZJX020210 引用自ZZJX030101 JHBH 计划编号 C 5 M NULL 学校自行编号 NULL
	[JGH]  [nvarchar(6)]  NOT NULL,--机构号 编号：ZZXX030001 解释/举例：学生班级所属的学校机构号 引用自ZZXX030001 JGH 机构号 C 6 M NULL 学校自编 NULL
	[XQDM]  [nvarchar(2)]  NOT NULL,--校区代码 编号：ZZXX020001 解释/举例：学生班级所在校区代码 引用自ZZXX020001 XQDM 校区代码 C 2 M NULL NULL JCXX010201
CONSTRAINT [PK_ZZJX0202] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[XZBDM] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--总体教学计划数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZJX0301]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZJX0301](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[JHBH]  [nvarchar(5)]  NOT NULL,--计划编号 编号：ZZJX030101 解释/举例：学校自行编号 
	[JHNJ]  [nvarchar(4)]  NOT NULL,--计划年级 编号：ZZJX030102 引用自JCTB010201 ND 年度（年份、年） C 4 NULL GB/T7408 格式：YYYY，如：2008 NULL
	[JHZYMC]  [nvarchar(50)]  NOT NULL,--计划专业名称 编号：ZZJX030103 引用自ZZJX010103 ZYMC 专业名称 C 50 M NULL NULL NULL
	[ZXFYQ]  [decimal(3)]  NOT NULL,--总学分要求 编号：ZZJX030104 
	[JLNY]  [nvarchar(6)]  NULL,--建立年月 编号：ZZJX030105 引用自JCTB010202 NY 年月 C 6 NULL GB/T7408 格式：YYYYMM，如：200604表示2006年4月 NULL
	[SYXZ]  [decimal(3,1)]  NULL,--适用学制 编号：ZZJX030106 引用自JCTB010402 XZ 学制 N 31 NULL NULL 以年为单位 NULL
	[PYMB]  [text]  NULL,--培养目标 编号：ZZJX030107 解释/举例：对计划的描述 
	[SFKY]  [nvarchar(3)]  NOT NULL,--是否可用 编号：ZZJX030108 值空间：JY/T1001SFBZ是否标志代码 
	[FJ]  [text]  NULL,--附件 编号：ZZJX030109 解释/举例：存放和该计划相关的文件 
CONSTRAINT [PK_ZZJX0301] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[JHBH] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--教学计划分类学分要求数据子类
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZJX0302]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZJX0302](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[KCFLM]  [nvarchar(1)]  NOT NULL,--课程分类码 编号：ZZJX030201 值空间：KCFL课程分类代码 
	[XFYQ]  [decimal(21)]  NOT NULL,--学分要求 编号：ZZJX030202 引用自ZZJX010206 XF 学分 N 21 M NULL 如：2.5 NULL
	[JHBH]  [nvarchar(5)]  NOT NULL,--计划编号 编号：ZZJX030101 引用自ZZJX030101 JHBH 计划编号 C 5 M NULL 学校自行编号 NULL
CONSTRAINT [PK_ZZJX0302] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[KCFLM] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--教学计划课程清单数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZJX0303]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZJX0303](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[KCH]  [nvarchar(6)]  NOT NULL,--课程号 编号：ZZJX010201 引用自ZZJX010201 KCH 课程号 C 6 M NULL 学校自编 NULL
	[KCMC]  [nvarchar(100)]  NOT NULL,--课程名称 编号：ZZJX010202 引用自ZZJX010202 KCMC 课程名称 C 100 M NULL NULL NULL
	[YXKC]  [nvarchar(200)]  NULL,--预修课程 编号：ZZJX030301 解释/举例：需预修的课程名称，多个课程用逗号隔开 
	[SFHXKC]  [nvarchar(1)]  NULL,--是否核心（骨干）课程 编号：ZZJX030302 值空间：JY/T1001SFBZ是否标志代码 
	[KCFLM]  [nvarchar(1)]  NOT NULL,--课程分类码 编号：ZZJX030201 值空间：KCFL课程分类代码 
	[KCSXM]  [nvarchar(1)]  NOT NULL,--课程属性码 编号：ZZJX030203 值空间：JY/T1001KCSX课程属性代码 
	[ZXXQ]  [decimal(2)]  NOT NULL,--执行学期 编号：ZZJX030304 解释/举例：范围：1-14 
CONSTRAINT [PK_ZZJX0303] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[KCH] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--排课数据信息数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZJX0304]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZJX0304](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[KXH]  [nvarchar(10)]  NOT NULL,--课序号 编号：ZZJX030401 解释/举例：“课序号”--为了区分多个老师开同一门课，或某教师开的某门课程对不同专业学生在不同时间上课而编排的课程顺序号。 
	[KKDW]  [nvarchar(6)]  NOT NULL,--开课单位 编号：ZZJX010212 引用自ZZJX010212 KKDW 开课单位 C 6 O NULL 校内机构号 ZZXX030001
	[XQMC]  [nvarchar(10)]  NOT NULL,--学期名称 编号：ZZJX010301 引用自ZZJX010301 XQMC 学期名称 C 10 M NULL 学校自编。例如：2010年春季学期；2009年秋季学期 NULL
	[SKSJ]  [nvarchar(50)]  NULL,--上课时间 编号：ZZJX030402 解释/举例：周上课的具体时间，每节课逐一填写 
	[JXDD]  [nvarchar(30)]  NULL,--教学地点 编号：ZZJX030403 解释/举例：教学活动安排地点 
	[JXZY]  [nvarchar(200)]  NULL,--教学资源 编号：ZZJX030404 解释/举例：教学的辅助工具、设备等资源 
	[JHRS]  [decimal(4)]  NOT NULL,--计划人数 编号：ZZJX030405 解释/举例：指该课程的计划最大人数 
	[YXRS]  [decimal(4)]  NOT NULL,--已选人数 编号：ZZJX030406 
	[JXBSZXQ]  [nvarchar(2)]  NULL,--教学班所在校区 编号：ZZJX030407 解释/举例：指可选课的校区代码，若允许多个校区用“，”分隔 引用自ZZXX020001 XQDM 校区代码 C 2 M NULL NULL JCXX010201
	[XKNJ]  [nvarchar(4)]  NULL,--选课年级 编号：ZZJX030408 引用自ZZJX020101 NJDM 年级代码 C 4 M NULL 根据年份来编号 NULL
	[QSZ]  [decimal(2)]  NULL,--起始周 编号：ZZJX030409 
	[ZZZ]  [decimal(2)]  NULL,--终止周 编号：ZZJX030410 
	[JSJGH]  [nvarchar(20)]  NULL,--教师教工号 编号：ZZJX030411 引用自JCTB020120 RYH 人员号 C 20 NULL NULL 学号或工号 NULL
	[JSXM]  [nvarchar(36)]  NULL,--教师姓名 编号：ZZJX030412 引用自JCTB020101 XM 姓名 C 36 NULL NULL 例：张振华；买买提·阿不都热依木 NULL
	[ZXS]  [decimal(2)]  NOT NULL,--周学时 编号：ZZJX030413 
	[SKXZBDM]  [nvarchar(10)]  NOT NULL,--上课行政班代码 编号：ZZJX030414 解释/举例：多个班级用“，”分隔 引用自JCXX020001 BH 班号 C 10 M NULL 学校自编 NULL
	[JXBMC]  [nvarchar(30)]  NOT NULL,--教学班名称 编号：ZZJX030415 解释/举例：如高等数学-2班 
	[KCSM]  [text]  NULL,--开课说明 编号：ZZJX030416 
CONSTRAINT [PK_ZZJX0304] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[KXH] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--教材基本信息数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZJX0401]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZJX0401](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[JCDM]  [nvarchar(13)]  NOT NULL,--教材代码 编号：ZZJX040101 
	[JCMC]  [nvarchar(60)]  NOT NULL,--教材名称 编号：ZZJX040102 
	[CBH]  [nvarchar(30)]  NULL,--出版号 编号：ZZJX040103 引用自JCBX040107 TSCBH 图书出版号 C 30 M NULL 图书相应的ISBN等标准出版号 NULL
	[DYZZ]  [nvarchar(30)]  NOT NULL,--第一作者 编号：JCBX040108 引用自JCBX040108 DYZZ 第一作者 C 30 M NULL 图书第一作者名称 NULL
	[QTZZ]  [nvarchar(90)]  NULL,--其他作者 编号：JCBX040109 引用自JCBX040109 QTZZ 其他作者 C 90 O NULL 图书其他作者名称 NULL
	[BC]  [nvarchar(30)]  NOT NULL,--版次 编号：JCBX040118 引用自JCBX040118 BC 版次 C 30 O NULL NULL NULL
	[YC]  [nvarchar(2)]  NULL,--印次 编号：ZZJX040104 
	[JG]  [money]  NULL,--价格 编号：JCBX040110 引用自JCBX040110 JG 价格 M NULL O NULL 图书的单价，外币按汇价折算成人民币，取两位小数，单位：元 NULL
	[CBS]  [nvarchar(180)]  NULL,--出版社 编号：JCBX040122 引用自JCBX040122 CBS 出版社 C 180 O NULL 出版社名称，多个出版社可并列 NULL
	[CBRQ]  [nvarchar(8)]  NULL,--出版日期 编号：JCBX040125 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[SFYLXC]  [nvarchar(1)]  NULL,--是否有练习册 编号：ZZJX040105 值空间：JY/T1001SFBZ是否标志代码 
	[SFYJCJF]  [nvarchar(1)]  NULL,--是否有教参教辅 编号：ZZJX040106 值空间：JY/T1001SFBZ是否标志代码 
	[NRJJ]  [text]  NULL,--内容简介 编号：ZZJX040107 
CONSTRAINT [PK_ZZJX0401] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[JCDM] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--教材选用信息数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZJX0402]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZJX0402](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[XQM]  [nvarchar(1)]  NOT NULL,--学期码 编号：JCTB010206 引用自JCTB010206 XQM 学期码 C 1 NULL JY/T1001XQ学期代码 NULL NULL
	[ZYMC]  [nvarchar(50)]  NOT NULL,--专业名称 编号：ZZJX010103 引用自ZZJX010103 ZYMC 专业名称 C 50 M NULL NULL NULL
	[NJDM]  [nvarchar(4)]  NOT NULL,--年级代码 编号：ZZJX020101 引用自ZZJX020101 NJDM 年级代码 C 4 M NULL 根据年份来编号 NULL
	[KCMC]  [nvarchar(100)]  NOT NULL,--课程名称 编号：ZZJX010202 引用自ZZJX010202 KCMC 课程名称 C 100 M NULL NULL NULL
	[JCDM]  [nvarchar(13)]  NULL,--教材代码 编号：ZZJX040101 引用自ZZJX040101 JCDM 教材代码 C 13 M NULL NULL NULL
	[XYSL]  [decimal(5)]  NOT NULL,--选用数量 编号：ZZJX040201 
CONSTRAINT [PK_ZZJX0402] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[XQM] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--学生选课情况数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZJX0501]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZJX0501](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[XH]  [nvarchar(20)]  NOT NULL,--学号 编号：JCXS010101 引用自JCTB020120 RYH 人员号 C 20 NULL NULL 学号或工号 NULL
	[KXH]  [nvarchar(10)]  NOT NULL,--课序号 编号：ZZJX030401 引用自ZZJX030401 KXH 课序号 C 10 M NULL “课序号”--为了区分多个老师开同一门课，或某教师开的某门课程对不同专业学生在不同时间上课而编排的课程顺序号。 NULL
	[SFDX]  [nvarchar(1)]  NOT NULL,--是否代选 编号：ZZJX050101 值空间：JY/T1001SFBZ是否标志代码 
	[XKSHZT]  [nvarchar(1)]  NOT NULL,--选课审核状态 编号：ZZJX050102 值空间：XKSH学生选课审核状态代码 解释/举例：中职学校信息化标准自编，如：1审核中2审核通过3审核未通过 
	[XKSJ]  [nvarchar(6)]  NOT NULL,--选课时间 编号：ZZJX050103 引用自JCTB010204 SJ 时间 C 6 NULL GB/T7408 格式：hhmmss，如：141503表示下午2时15分3秒 NULL
	[SHRQ]  [nvarchar(8)]  NOT NULL,--审核日期 编号：ZZJX050104 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[SHR]  [nvarchar(20)]  NOT NULL,--审核人 编号：ZZJX050105 引用自JCTB020120 RYH 人员号 C 20 NULL NULL 学号或工号 NULL
CONSTRAINT [PK_ZZJX0501] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[XH] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--教师教学工作量统计数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZJX0502]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZJX0502](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[XQMC]  [nvarchar(10)]  NOT NULL,--学期名称 编号：ZZJX010301 引用自ZZJX010301 XQMC 学期名称 C 10 M NULL 学校自编。例如：2010年春季学期；2009年秋季学期 NULL
	[JSXM]  [nvarchar(36)]  NOT NULL,--教师姓名 编号：ZZJX020412 引用自JCTB020101 XM 姓名 C 36 NULL NULL 例：张振华；买买提·阿不都热依木 NULL
	[RJKCMS]  [decimal(4)]  NOT NULL,--任教课程门数 编号：ZZJX050201 
	[LLZXS]  [decimal(4)]  NOT NULL,--理论总学时 编号：ZZJX050202 
	[SJZXS]  [decimal(4)]  NOT NULL,--实践总学时 编号：ZZJX050203 
	[QTZXS]  [decimal(4)]  NOT NULL,--其他总学时 编号：ZZJX050204 
	[XSZS]  [decimal(4)]  NOT NULL,--学生总数 编号：ZZJX050205 
	[ZXFS]  [decimal(5,1)]  NOT NULL,--总学分数 编号：ZZJX050206 
CONSTRAINT [PK_ZZJX0502] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[XQMC] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--教师考勤情况数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZJX0601]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZJX0601](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[XQMC]  [nvarchar(10)]  NOT NULL,--学期名称 编号：ZZJX010301 引用自ZZJX010301 XQMC 学期名称 C 10 M NULL 学校自编。例如：2010年春季学期；2009年秋季学期 NULL
	[JSXM]  [nvarchar(36)]  NOT NULL,--教师姓名 编号：ZZJX020412 引用自JCTB020101 XM 姓名 C 36 NULL NULL 例：张振华；买买提·阿不都热依木 NULL
	[CQCS]  [decimal(3)]  NULL,--出勤次数 编号：ZZJX060101 
	[KKCS]  [decimal(3)]  NULL,--旷课次数 编号：ZZJX060102 
	[CDCS]  [decimal(3)]  NULL,--迟到次数 编号：ZZJX060103 
	[ZTCS]  [decimal(3)]  NULL,--早退次数 编号：ZZJX060104 
	[QJCS]  [decimal(3)]  NULL,--请假次数 编号：ZZJX060105 
	[JQCS]  [decimal(3)]  NULL,--记勤次数 编号：ZZJX060106 
CONSTRAINT [PK_ZZJX0601] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[XQMC] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--学生考勤情况数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZJX0602]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZJX0602](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[XQMC]  [nvarchar(10)]  NOT NULL,--学期名称 编号：ZZJX010301 引用自ZZJX010301 XQMC 学期名称 C 10 M NULL 学校自编。例如：2010年春季学期；2009年秋季学期 NULL
	[XZBMC]  [nvarchar(50)]  NOT NULL,--行政班名称 编号：ZZJX020202 引用自ZZJX020202 XZBMC 行政班名称 C 50 M NULL NULL NULL
	[XH]  [nvarchar(20)]  NOT NULL,--学号 编号：JCXS010101 引用自JCTB020120 RYH 人员号 C 20 NULL NULL 学号或工号 NULL
	[KKCS]  [decimal(3)]  NULL,--旷课次数 编号：ZZJX060102 引用自ZZJX060102 KKCS 旷课次数 N 3 O NULL NULL NULL
	[CDCS]  [decimal(3)]  NULL,--迟到次数 编号：ZZJX060103 引用自ZZJX060103 CDCS 迟到次数 N 3 O NULL NULL NULL
	[ZTCS]  [decimal(3)]  NULL,--早退次数 编号：ZZJX060104 引用自ZZJX060104 ZTCS 早退次数 N 3 O NULL NULL NULL
	[QJCS]  [decimal(3)]  NULL,--请假次数 编号：ZZJX060105 引用自ZZJX060105 QJCS 请假次数 N 3 O NULL NULL NULL
CONSTRAINT [PK_ZZJX0602] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[XQMC] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--校外实习基地信息数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZJX0701]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZJX0701](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[QYBH]  [nvarchar(20)]  NOT NULL,--企业编号 编号：ZZJX070101 解释/举例：企业注册时的编号 
	[JDHZHTBH]  [nvarchar(20)]  NOT NULL,--基地合作合同编号 编号：ZZJX070102 
	[JDHZHTMC]  [nvarchar(50)]  NOT NULL,--基地合作合同名称 编号：ZZJX070103 
	[JDLBM]  [nvarchar(1)]  NOT NULL,--基地类别码 编号：ZZJX070104 值空间：SXJDLB实习基地类别代码 
	[DWMC]  [nvarchar(50)]  NOT NULL,--单位名称 编号：ZZJX070105 解释/举例：企业注册时的全称 
	[QYXZQ]  [nvarchar(6)]  NOT NULL,--企业行政区 编号：ZZJX070106 引用自JCXX010106 XZQHM 行政区划码 C 6 M GB/T2260 学校所在地行政区划码 NULL
	[QYDZ]  [nvarchar(180)]  NULL,--企业地址 编号：ZZJX070107 引用自JCTB010102 TXDZ 通信地址 C 180 NULL NULL 指包括省（自治区、直辖市）/地（市、州）/县（区、旗）/乡（镇）/街（村）/门牌号的详细地址 NULL
	[QYXZ]  [nvarchar(2)]  NULL,--企业性质 编号：ZZJX070108 值空间：GB/T12402 
	[FRDB]  [nvarchar(36)]  NULL,--法人代表 编号：ZZJX070109 引用自JCTB020101 XM 姓名 C 36 NULL NULL 例：张振华；买买提·阿不都热依木 NULL
	[QYLXR]  [nvarchar(36)]  NULL,--企业联系人 编号：ZZJX070110 引用自JCTB020101 XM 姓名 C 36 NULL NULL 例：张振华；买买提·阿不都热依木 NULL
	[QYYZBM]  [nvarchar(6)]  NULL,--企业邮政编码 编号：ZZJX070111 引用自JCTB010101 YZBM 邮政编码 C 6 NULL NULL NULL NULL
	[QYLXDH]  [nvarchar(30)]  NULL,--企业联系电话 编号：ZZJX070112 引用自JCTB010103 DH 电话 C 30 NULL NULL 即电话号码 NULL
CONSTRAINT [PK_ZZJX0701] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[QYBH] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--校外实习基地接纳情况数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZJX0702]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZJX0702](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[QYBH]  [nvarchar(20)]  NOT NULL,--企业编号 编号：ZZJX070101 引用自ZZJX070101 QYBH 企业编号 C 20 M NULL 企业注册时的编号 NULL
	[JNRQ]  [nvarchar(8)]  NOT NULL,--接纳日期 编号：ZZJX070201 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[ZDJNSXSRS]  [nvarchar(1)]  NOT NULL,--最大接纳实习生人数 编号：ZZJX070202 值空间：SXJDJNSXSSL实习基地接纳实习生数量代码 
	[SJJNSXSRS]  [decimal(5)]  NOT NULL,--实际接纳实习生人数 编号：ZZJX070203 
	[SXSLJDJYRS]  [decimal(5)]  NULL,--实习生留基地就业人数 编号：ZZJX070204 
	[SXSDY]  [nvarchar(100)]  NULL,--实习生待遇 编号：ZZJX070205 
CONSTRAINT [PK_ZZJX0702] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[QYBH] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--学生校外实习情况数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZJX0703]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZJX0703](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[SXQSRQ]  [nvarchar(8)]  NOT NULL,--受训起始日期 编号：ZZJX070301 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[SXJSRQ]  [nvarchar(8)]  NULL,--受训结束日期 编号：ZZJX070302 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[QYBH]  [nvarchar(20)]  NOT NULL,--企业编号 编号：ZZJX070101 引用自ZZJX070101 QYBH 企业编号 C 20 M NULL 企业注册时的编号 NULL
	[SXGWMC]  [nvarchar(50)]  NULL,--受训岗位名称 编号：ZZJX070303 
	[SXDS]  [nvarchar(36)]  NULL,--实训导师 编号：ZZJX070304 引用自JCTB020101 XM 姓名 C 36 NULL NULL 例：张振华；买买提·阿不都热依木 NULL
	[SFGMSXZRBX]  [nvarchar(1)]  NOT NULL,--是否购买实习责任保险 编号：ZZJX070305 值空间：JY/T1001SFBZ是否标志代码 
	[BXFZFZ]  [nvarchar(50)]  NULL,--保险费支付者 编号：ZZJX070306 
	[SXXC]  [money]  NULL,--实习薪酬 编号：ZZJX070307 
	[SFSDGSX]  [nvarchar(1)]  NOT NULL,--是否是顶岗实习 编号：ZZJX070308 值空间：JY/T1001SFBZ是否标志代码 
	[XSHJXZM]  [nvarchar(1)]  NOT NULL,--学生户籍性质码 编号：ZZJX070309 值空间：HJXZ户籍性质代码 
CONSTRAINT [PK_ZZJX0703] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[SXQSRQ] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--校内实习基地数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZJX0704]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZJX0704](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[XNJDMC]  [nvarchar(50)]  NOT NULL,--校内基地名称 编号：ZZJX070401 
	[JDDZ]  [nvarchar(180)]  NOT NULL,--基地地址 编号：ZZJX070402 引用自JCTB010102 TXDZ 通信地址 C 180 NULL NULL 指包括省（自治区、直辖市）/地（市、州）/县（区、旗）/乡（镇）/街（村）/门牌号的详细地址 NULL
	[JDYZBM]  [nvarchar(6)]  NOT NULL,--基地邮政编码 编号：ZZJX070403 引用自JCTB010101 YZBM 邮政编码 C 6 NULL NULL NULL NULL
	[JDDH]  [nvarchar(30)]  NOT NULL,--基地电话 编号：ZZJX070404 引用自JCTB010103 DH 电话 C 30 NULL NULL 即电话号码 NULL
	[JDFZR]  [nvarchar(36)]  NOT NULL,--基地负责人 编号：ZZJX070405 引用自JCTB020101 XM 姓名 C 36 NULL NULL 例：张振华；买买提·阿不都热依木 NULL
	[LJJNRS]  [decimal(5)]  NULL,--累计接纳人数 编号：ZZJX070406 
CONSTRAINT [PK_ZZJX0704] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[XNJDMC] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--学生校内实习情况数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZJX0705]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZJX0705](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[XH]  [nvarchar(20)]  NOT NULL,--学号 编号：JCXS010101 引用自JCTB020120 RYH 人员号 C 20 NULL NULL 学号或工号 NULL
	[XM]  [nvarchar(36)]  NOT NULL,--姓名 编号：JCTB020101 引用自JCTB020101 XM 姓名 C 36 NULL NULL 例：张振华；买买提·阿不都热依木 NULL
	[SXIKSRQ]  [nvarchar(8)]  NOT NULL,--实习开始日期 编号：ZZJX070501 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[SXIJSRQ]  [nvarchar(8)]  NOT NULL,--实习结束日期 编号：ZZJX070502 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[XNJDMC]  [nvarchar(6)]  NOT NULL,--校内基地名称 编号：ZZJX070403 引用自ZZJX070403 JDYZBM 基地邮政编码 C 6 M NULL NULL JCTB010101
	[SXNR]  [text]  NULL,--实习内容 编号：ZZJX070504 
	[SXIGWMC]  [nvarchar(50)]  NULL,--实习岗位名称 编号：ZZJX070505 引用自ZZJX070303 SXGWMC 受训岗位名称 C 50 O NULL NULL NULL
	[SXIDSXM]  [nvarchar(36)]  NULL,--实习导师姓名 编号：ZZJX070506 引用自JCTB020101 XM 姓名 C 36 NULL NULL 例：张振华；买买提·阿不都热依木 NULL
	[SXCJ]  [decimal(5,1)]  NULL,--实习成绩 编号：ZZJX070507 
CONSTRAINT [PK_ZZJX0705] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[XH] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--建筑物基本数据类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZFC02]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZFC02](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[JZWH]  [nvarchar(6)]  NOT NULL,--建筑物号 编号：JCBX020201 引用自JCBX020201 JZWH 建筑物号 C 6 M NULL 学校自编 NULL
	[JZWMC]  [nvarchar(30)]  NOT NULL,--建筑物名称 编号：JCBX020202 引用自JCBX020202 JZWMC 建筑物名称 C 30 M NULL 指建筑物的汉字名称 NULL
	[SYZKM]  [nvarchar(1)]  NOT NULL,--使用状况码 编号：JCBX020204 引用自JCBX020204 SYZKM 使用状况码 C 1 M JY/T1001SYZK使用状况代码 NULL NULL
	[FWCQ]  [nvarchar(1)]  NOT NULL,--房屋产权 编号：JCBX020203 引用自JCBX020203 FWCQM 房屋产权码 C 1 M JY/T1001CQ产权代码 NULL NULL
	[XQH]  [nvarchar(2)]  NULL,--校区号 编号：JCXX010201 引用自JCXX010201 XQH 校区号 C 2 M NULL 学校自编 NULL
	[JZWFLM]  [nvarchar(1)]  NOT NULL,--建筑物分类码 编号：JCBX020205 引用自JCBX020205 JZWFLM 建筑物分类码 C 1 M JY/T1001JZWFL建筑物分类代码 NULL NULL
	[JZWJGM]  [nvarchar(1)]  NOT NULL,--建筑物结构码 编号：JCBX020206 引用自JCBX020206 JZWJGM 建筑物结构码 C 1 O JY/T1001JZWJG建筑物结构代码 NULL NULL
	[JZWCS]  [decimal(2)]  NOT NULL,--建筑物层数 编号：JCBX020207 引用自JCBX020207 JZWCS 建筑物层数 N 2 O NULL 含地下室，单位：层 NULL
	[JCNY]  [nvarchar(6)]  NULL,--建成年月 编号：JCBX020208 引用自JCTB010202 NY 年月 C 6 NULL GB/T7408 格式：YYYYMM，如：200604表示2006年4月 NULL
	[JZWTZZE]  [money]  NULL,--建筑物投资总额 编号：JCBX020209 引用自JCBX020209 JZWTZZE 建筑物投资总额 M NULL M NULL 单位：元 NULL
	[JFLYM]  [nvarchar(1)]  NULL,--经费来源码 编号：JCBX020210 引用自JCBX020210 JFLYM 经费来源码 C 1 M JY/T1001JFLY经费来源代码 NULL NULL
	[ZJZMJ]  [decimal(102)]  NOT NULL,--总建筑面积 编号：JCBX020211 引用自JCBX020211 ZJZMJ 总建筑面积 N 102 M NULL 单位：平方米 NULL
	[ZSYMJ]  [decimal(102)]  NOT NULL,--总使用面积 编号：JCBX020212 引用自JCBX020212 ZSYMJ 总使用面积 N 102 O NULL 单位：平方米 NULL
	[KZSFLDM]  [nvarchar(1)]  NOT NULL,--抗震设防烈度码 编号：JCBX020213 引用自JCBX020213 KZSFLDM 抗震设防烈度码 C 1 M JY/T1001KZSFLD抗震设防烈度代码 NULL NULL
	[KZSFBZM]  [nvarchar(1)]  NOT NULL,--抗震设防标准码 编号：JCBX020214 引用自JCBX020214 KZSFBZM 抗震设防标准码 C 1 M JY/T1001KZSFBZ抗震设防标准代码 NULL NULL
	[JZWDZ]  [nvarchar(180)]  NOT NULL,--建筑物地址 编号：JCBX020215 引用自JCTB010102 TXDZ 通信地址 C 180 NULL NULL 指包括省（自治区、直辖市）/地（市、州）/县（区、旗）/乡（镇）/街（村）/门牌号的详细地址 NULL
	[JZWZKM]  [nvarchar(2)]  NOT NULL,--建筑物状况码 编号：JCBX020216 引用自JCBX020216 JZWZKM 建筑物状况码 C 2 M JY/T1001JZWZK建筑物状况代码 NULL NULL
	[JZWTP]  [nvarchar(200)]  NULL,--建筑物图片 编号：JCBX020217 引用自JCBX020217 JZWTP 建筑物图片 B NULL O NULL 指建筑物的照片 NULL
	[JZWPMT]  [nvarchar(200)]  NULL,--建筑物平面图 编号：JCBX020218 引用自JCBX020218 JZWPMT 建筑物平面图 B NULL O NULL 指建筑物的建筑平面图 NULL
	[XXDWCCM]  [nvarchar(1)]  NULL,--学校单位层次码 编号：ZZFC020001 值空间：JY/T1001XXDWCC学校单位层次代码 
	[JZWWZZK]  [nvarchar(1)]  NOT NULL,--建筑物位置状况 编号：ZZFC020002 值空间：JY/T1001SFBZ是否标志代码 解释/举例：1校内0校外 
	[GHSPWH]  [nvarchar(24)]  NOT NULL,--规划审批文号 编号：ZZFC020003 
	[ZHFZNL]  [nvarchar(60)]  NULL,--综合防灾能力 编号：ZZFC020004 
	[GHSYNX]  [decimal(3)]  NULL,--规划使用年限 编号：ZZFC020005 
	[SFYYJBXCS]  [nvarchar(1)]  NULL,--是否有预警避险措施 编号：ZZFC020006 值空间：JY/T1001SFBZ是否标志代码 
	[SFKYYYJBNCS]  [nvarchar(1)]  NULL,--是否可用于应急避难场所 编号：ZZFC020007 值空间：JY/T1001SFBZ是否标志代码 
	[CQZH]  [nvarchar(20)]  NOT NULL,--产权证号 编号：ZZFC020008 
	[JZWYTM]  [nvarchar(2)]  NULL,--建筑物用途码 编号：ZZFC020009 值空间：JY/T1001JZWYT建筑物用途代码 
	[JZWZGD]  [decimal(3)]  NULL,--建筑物总高度 编号：ZZFC020010 解释/举例：单位：米 
	[WFJDBM]  [nvarchar(60)]  NULL,--危房鉴定部门 编号：ZZFC020012 引用自JCTB010302 DWMC 单位名称 C 60 NULL NULL NULL NULL
	[WFJDWH]  [nvarchar(20)]  NULL,--危房鉴定文号 编号：ZZFC020013 
	[WFJDRQ]  [nvarchar(8)]  NULL,--危房鉴定日期 编号：ZZFC020014 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[GNFSM]  [nvarchar(1)]  NULL,--供暖方式码 编号：ZZFC020015 值空间：JY/T1001GNFS供暖方式代码 
	[JZWJCXSM]  [nvarchar(1)]  NULL,--建筑物基础形式码 编号：ZZFC020016 值空间：JY/T1001JZWJCXS建筑物基础形式代码 
	[JZWPMXSM]  [nvarchar(1)]  NULL,--建筑物平面形式码 编号：ZZFC020017 值空间：JY/T1001JZWPMXS建筑物平面形式代码 
	[JZWLBXSM]  [nvarchar(1)]  NULL,--建筑物楼板形式码 编号：ZZFC020018 值空间：JY/T1001JZWLBXS建筑物楼板形式代码 
	[SFYGZZ]  [nvarchar(1)]  NOT NULL,--是否有构造柱 编号：ZZFC020019 值空间：JY/T1001SFBZ是否标志代码 
	[QL]  [nvarchar(1)]  NOT NULL,--圈梁 编号：ZZFC020020 值空间：JY/T1001SFBZ是否标志代码 
	[ZJAQGZWCRQ]  [nvarchar(8)]  NULL,--最近安全改造完成日期 编号：ZZFC020021 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[ZJAQGZHYJSYNX]  [decimal(2)]  NULL,--最近安全改造后预计使用年限 编号：ZZFC020022 解释/举例：单位：年 
	[ZXLXM]  [nvarchar(1)]  NULL,--专项类型 编号：ZZFC020023 值空间：JY/T1001SFBZ是否标志代码 解释/举例：1中央专项项目0非中央专项项目 
	[ZYZXTZBZMCM]  [nvarchar(2)]  NULL,--中央专项投资补助名称码 编号：ZZFC020024 值空间：JY/T1001ZYZXTZBZMC中央专项投资补助名称代码 
	[WWJZDJM]  [nvarchar(1)]  NULL,--文物建筑等级码 编号：ZZFC020025 值空间：JY/T1001WWJZDJ文物建筑等级代码 
	[JXJFZYF]  [decimal(8)]  NOT NULL,--教学及辅助用房 编号：ZZFC020026 解释/举例：该数据项为教室、实验室、图书室、微机室、语音室、体育活动室及其他教辅用房的总和，单位：平方米 
	[QZJS]  [decimal(8)]  NOT NULL,--其中教室 编号：ZZFC020027 解释/举例：单位：平方米 
	[QZSYS]  [decimal(8)]  NOT NULL,--其中实验室 编号：ZZFC020028 解释/举例：单位：平方米 
	[QZTSS]  [decimal(8)]  NOT NULL,--其中图书室 编号：ZZFC020029 解释/举例：单位：平方米 
	[QZWJS]  [decimal(8)]  NOT NULL,--其中微机室 编号：ZZFC020030 解释/举例：单位：平方米 
	[QZYYS]  [decimal(8)]  NOT NULL,--其中语音室 编号：ZZFC020031 解释/举例：单位：平方米 
	[QZTYHDS]  [decimal(8)]  NOT NULL,--其中体育活动室 编号：ZZFC020032 解释/举例：单位：平方米 
	[QZQTJFYF]  [decimal(8)]  NOT NULL,--其中其他教辅用房 编号：ZZFC020033 解释/举例：单位：平方米 
	[SHYF]  [decimal(8)]  NOT NULL,--生活用房 编号：ZZFC020034 解释/举例：该数据项为学生宿舍、食堂、厕所、锅炉房（开水房）、浴室、教工宿舍及其他生活用房的总和，单位：平方米 
	[QZXSSS]  [decimal(8)]  NOT NULL,--其中学生宿舍 编号：ZZFC020035 解释/举例：单位：平方米 
	[QZST]  [decimal(8)]  NOT NULL,--其中食堂 编号：ZZFC020036 解释/举例：单位：平方米 
	[QZCS]  [decimal(8)]  NOT NULL,--其中厕所 编号：ZZFC020037 解释/举例：单位：平方米 
	[QZGLF]  [decimal(8)]  NOT NULL,--其中锅炉房(开水房) 编号：ZZFC020038 解释/举例：单位：平方米 
	[QZYS]  [decimal(8)]  NOT NULL,--其中浴室 编号：ZZFC020039 解释/举例：单位：平方米 
	[QZJGSS]  [decimal(8)]  NOT NULL,--其中教工宿舍 编号：ZZFC020040 解释/举例：单位：平方米 
	[QZQTSHYF]  [decimal(8)]  NOT NULL,--其中其他生活用房 编号：ZZFC020041 解释/举例：单位：平方米 
	[XZBGYF]  [decimal(8)]  NOT NULL,--行政办公用房 编号：ZZFC020042 解释/举例：该数据项为教职工办公室、卫生保健室及其他行政办公用房的总和，单位：平方米 
	[QZJSBGS]  [decimal(8)]  NOT NULL,--其中教职工办公室 编号：ZZFC020043 解释/举例：单位：平方米 
	[QZWSBJS]  [decimal(8)]  NOT NULL,--其中卫生保健室 编号：ZZFC020044 解释/举例：单位：平方米 
	[QZQTXZBGYF]  [decimal(8)]  NOT NULL,--其中其他行政办公用房 编号：ZZFC020045 解释/举例：单位：平方米 
	[QTYF]  [decimal(8)]  NOT NULL,--其他用房 编号：ZZFC020046 解释/举例：非教学及辅助用房、生活用房、行政办公用房的用房总和，单位：平方米 
CONSTRAINT [PK_ZZFC02] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[JZWH] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--建筑物档案数据类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZFC03]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZFC03](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[TZJHSPDW]  [nvarchar(60)]  NULL,--投资计划审批单位 编号：ZZFC030001 引用自JCTB010302 DWMC 单位名称 C 60 NULL NULL NULL NULL
	[TZJHSPWH]  [nvarchar(30)]  NULL,--投资计划审批文号 编号：ZZFC030002 
	[LXPFDW]  [nvarchar(60)]  NULL,--立项批复单位 编号：ZZFC030003 引用自JCTB010302 DWMC 单位名称 C 60 NULL NULL NULL NULL
	[LXPFWH]  [nvarchar(30)]  NULL,--立项批复文号 编号：ZZFC030004 
	[KXXYJBGPFDW]  [nvarchar(60)]  NULL,--可行性研究报告批复单位 编号：ZZFC030005 引用自JCTB010302 DWMC 单位名称 C 60 NULL NULL NULL NULL
	[KXXYJBGPFWH]  [nvarchar(30)]  NULL,--可行性研究报告批复文号 编号：ZZFC030006 
	[GHXKZH]  [nvarchar(30)]  NULL,--规划(建设)许可证号 编号：ZZFC030007 
	[JSDW]  [nvarchar(60)]  NULL,--建设单位 编号：ZZFC030008 引用自JCTB010302 DWMC 单位名称 C 60 NULL NULL NULL NULL
	[JSDWFZR]  [nvarchar(36)]  NULL,--建设单位负责人 编号：ZZFC030009 引用自JCTB020101 XM 姓名 C 36 NULL NULL 例：张振华；买买提·阿不都热依木 NULL
	[DKDWMC]  [nvarchar(60)]  NULL,--地勘单位名称 编号：ZZFC030010 引用自JCTB010302 DWMC 单位名称 C 60 NULL NULL NULL NULL
	[DKDWFRDB]  [nvarchar(36)]  NULL,--地勘单位法人代表 编号：ZZFC030011 引用自JCTB020101 XM 姓名 C 36 NULL NULL 例：张振华；买买提·阿不都热依木 NULL
	[DKDWZZM]  [nvarchar(1)]  NULL,--地勘单位资质码 编号：ZZFC030012 值空间：JY/T1001DKDWZZ地勘单位资质代码 
	[DKDWKCHTH]  [nvarchar(30)]  NULL,--地勘单位勘察合同号 编号：ZZFC030013 
	[SJDWMC]  [nvarchar(60)]  NULL,--设计单位名称 编号：ZZFC030014 引用自JCTB010302 DWMC 单位名称 C 60 NULL NULL NULL NULL
	[SJDWFRDB]  [nvarchar(36)]  NULL,--设计单位法人代表 编号：ZZFC030015 引用自JCTB020101 XM 姓名 C 36 NULL NULL 例：张振华；买买提·阿不都热依木 NULL
	[SJDWZZM]  [nvarchar(1)]  NULL,--设计单位资质码 编号：ZZFC030016 值空间：JY/T1001SJDWZZ设计单位资质代码 
	[SJDWTZSJHTH]  [nvarchar(30)]  NULL,--设计单位图纸设计合同号 编号：ZZFC030017 
	[SGTZSCDWMC]  [nvarchar(60)]  NULL,--施工图纸审查单位名称 编号：ZZFC030018 引用自JCTB010302 DWMC 单位名称 C 60 NULL NULL NULL NULL
	[SGTZSCDWFRDB]  [nvarchar(36)]  NULL,--施工图纸审查单位法人代表 编号：ZZFC030019 引用自JCTB020101 XM 姓名 C 36 NULL NULL 例：张振华；买买提·阿不都热依木 NULL
	[SGTZSCDWZZM]  [nvarchar(1)]  NULL,--施工图纸审查单位资质码 编号：ZZFC030020 值空间：JY/T1001SGTZSCZZ施工图纸审查资质代码 
	[SGTZSCHTH]  [nvarchar(30)]  NULL,--施工图纸审查合同号 编号：ZZFC030021 
	[ZTBXSM]  [nvarchar(1)]  NULL,--招投标形式码 编号：ZZFC030022 值空间：JY/T1001ZTBXS招投标形式代码 
	[GCJLDWMC]  [nvarchar(60)]  NULL,--工程监理单位名称 编号：ZZFC030023 引用自JCTB010302 DWMC 单位名称 C 60 NULL NULL NULL NULL
	[GCJLDWFRDB]  [nvarchar(36)]  NULL,--工程监理单位法人代表 编号：ZZFC030024 引用自JCTB020101 XM 姓名 C 36 NULL NULL 例：张振华；买买提·阿不都热依木 NULL
	[GCJLDWZZM]  [nvarchar(1)]  NULL,--工程监理单位资质码 编号：ZZFC030025 值空间：JY/T1001JLDWZZ监理单位资质代码 
	[GCJLDWJLHTH]  [nvarchar(30)]  NULL,--工程监理单位监理合同号 编号：ZZFC030026 
	[SGDWMC]  [nvarchar(60)]  NULL,--施工单位名称 编号：ZZFC030027 引用自JCTB010302 DWMC 单位名称 C 60 NULL NULL NULL NULL
	[SGDWFRDB]  [nvarchar(36)]  NULL,--施工单位法人代表 编号：ZZFC030028 引用自JCTB020101 XM 姓名 C 36 NULL NULL 例：张振华；买买提·阿不都热依木 NULL
	[SGDWZZDJM]  [nvarchar(1)]  NULL,--施工单位资质等级码 编号：ZZFC030029 值空间：JY/T1001SGDWZZDJ施工单位资质等级代码 
	[SGDWSGHTH]  [nvarchar(30)]  NULL,--施工单位施工合同号 编号：ZZFC030030 
	[ZJDWMC]  [nvarchar(60)]  NULL,--质监单位名称 编号：ZZFC030031 引用自JCTB010302 DWMC 单位名称 C 60 NULL NULL NULL NULL
	[ZJDWFRDB]  [nvarchar(36)]  NULL,--质监单位法人代表 编号：ZZFC030032 引用自JCTB020101 XM 姓名 C 36 NULL NULL 例：张振华；买买提·阿不都热依木 NULL
	[SGXKZH]  [nvarchar(30)]  NULL,--施工许可证号 编号：ZZFC030033 
	[JGYSJG]  [nvarchar(1)]  NULL,--竣工验收结果 编号：ZZFC030034 值空间：JY/T1001SFBZ是否标志代码 解释/举例：1验收通过0验收不通过 
	[JGYSBAH]  [nvarchar(30)]  NULL,--竣工验收备案号 编号：ZZFC030035 
	[SJDWMC]  [nvarchar(60)]  NULL,--审计单位名称 编号：ZZFC030036 引用自JCTB010302 DWMC 单位名称 C 60 NULL NULL NULL NULL
	[SJDWFRDB]  [nvarchar(36)]  NULL,--审计单位法人代表 编号：ZZFC030037 引用自JCTB020101 XM 姓名 C 36 NULL NULL 例：张振华；买买提·阿不都热依木 NULL
	[SJDWZZ]  [nvarchar(50)]  NULL,--审计单位资质 编号：ZZFC030038 
	[SJDWSJBGH]  [nvarchar(36)]  NULL,--审计单位审计报告号 编号：ZZFC030039 引用自JCTB020101 XM 姓名 C 36 NULL NULL 例：张振华；买买提·阿不都热依木 NULL
	[SJJSGJSZLSFWZCD]  [nvarchar(1)]  NULL,--设计及施工技术资料是否完整存档 编号：ZZFC030040 值空间：JY/T1001SFBZ是否标志代码 
	[BZ]  [text]  NULL,--备注 编号：ZZFC030041 
CONSTRAINT [PK_ZZFC03] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--建筑物安全排查数据类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZFC04]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZFC04](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[PCRQ]  [nvarchar(8)]  NOT NULL,--排查日期 编号：ZZFC040001 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[WJQKKCZL]  [nvarchar(1)]  NULL,--文件情况勘察资料 编号：ZZFC040002 值空间：JY/T1001SFBZ是否标志代码 解释/举例：文件情况：是否完整 
	[WJQKSJWJ]  [nvarchar(1)]  NULL,--文件情况设计文件 编号：ZZFC040003 值空间：JY/T1001SFBZ是否标志代码 解释/举例：文件情况：是否完整 
	[WJQKSGZL]  [nvarchar(1)]  NULL,--文件情况施工资料 编号：ZZFC040004 值空间：JY/T1001SFBZ是否标志代码 解释/举例：文件情况：是否完整 
	[WJQKJCWJ]  [nvarchar(1)]  NULL,--文件情况检查文件 编号：ZZFC040005 值空间：JY/T1001SFBZ是否标志代码 解释/举例：文件情况:是否完整 
	[WJQKJGZL]  [nvarchar(1)]  NULL,--文件情况竣工资料 编号：ZZFC040006 值空间：JY/T1001SFBZ是否标志代码 解释/举例：文件情况:是否完整 
	[XFNHDJM]  [nvarchar(1)]  NULL,--消防耐火等级码 编号：ZZFC040007 值空间：JY/T1001XFNHDJ消防耐火等级代码 
	[XFNHDJSFFHGFYQ]  [nvarchar(1)]  NULL,--消防耐火等级是否符合规范要求 编号：ZZFC040008 值空间：JY/T1001SFBZ是否标志代码 
	[XFPTSSSFWHYX]  [nvarchar(1)]  NULL,--消防配套设施是否完好有效 编号：ZZFC040009 值空间：JY/T1001SFBZ是否标志代码 
	[XFAQSSSFFHGFYQ]  [nvarchar(1)]  NULL,--消防安全疏散是否符合规范要求 编号：ZZFC040010 值空间：JY/T1001SFBZ是否标志代码 
	[SFYDZWX]  [nvarchar(1)]  NULL,--是否有地震威胁 编号：ZZFC040011 值空间：JY/T1001SFBZ是否标志代码 
	[DZWXFZBZ]  [nvarchar(200)]  NULL,--地震威胁防灾标准 编号：ZZFC040012 
	[DZLSSZQK]  [nvarchar(200)]  NULL,--地震历史受灾情况 编号：ZZFC040013 
	[SFYHSWX]  [nvarchar(1)]  NULL,--是否有洪水威胁 编号：ZZFC040014 值空间：JY/T1001SFBZ是否标志代码 
	[HSWXFZBZ]  [nvarchar(200)]  NULL,--洪水威胁防灾标准 编号：ZZFC040015 
	[HSLSSZQK]  [nvarchar(200)]  NULL,--洪水历史受灾情况 编号：ZZFC040016 
	[SFYTFWX]  [nvarchar(1)]  NULL,--是否有台风威胁 编号：ZZFC040017 值空间：JY/T1001SFBZ是否标志代码 
	[TFWXFZBZ]  [nvarchar(200)]  NULL,--台风威胁防灾标准 编号：ZZFC040018 
	[TFLSSZQK]  [nvarchar(200)]  NULL,--台风历史受灾情况 编号：ZZFC040019 
	[SFYLJWX]  [nvarchar(1)]  NULL,--是否有雷击威胁 编号：ZZFC040020 值空间：JY/T1001SFBZ是否标志代码 
	[LJWXFYBZ]  [nvarchar(200)]  NULL,--雷击威胁防御标准 编号：ZZFC040021 
	[LJLSSZQK]  [nvarchar(200)]  NULL,--雷击历史受灾情况 编号：ZZFC040022 
	[SFYKBHCWX]  [nvarchar(1)]  NULL,--是否有库坝湖池威胁 编号：ZZFC040023 值空间：JY/T1001SFBZ是否标志代码 
	[KBHCWXFZBZ]  [nvarchar(200)]  NULL,--库坝湖池威胁防灾标准 编号：ZZFC040024 
	[KBHCLSSZQK]  [nvarchar(200)]  NULL,--库坝湖池历史受灾情况 编号：ZZFC040025 
	[SFYQTYDAQWX]  [nvarchar(1)]  NULL,--是否有其他用地安全威胁 编号：ZZFC040026 值空间：JY/T1001SFBZ是否标志代码 
	[QTYDAQWXQKHLSSZQK]  [nvarchar(200)]  NULL,--其他用地安全威胁情况和历史受灾情况 编号：ZZFC040027 
	[LSSYHWXGZQK]  [nvarchar(200)]  NULL,--历史使用和维修改造情况 编号：ZZFC040028 
	[XCJCQK]  [nvarchar(200)]  NULL,--现场检查情况 编号：ZZFC040029 
	[CZDZYWTHAQYH]  [nvarchar(200)]  NULL,--存在的主要问题和安全隐患 编号：ZZFC040030 
	[JZWAQPCJLM]  [nvarchar(1)]  NULL,--建筑物安全排查结论码 编号：ZZFC040031 值空间：JY/T1001JZWAQPCJL建筑物安全排查结论代码 
	[PCDW]  [nvarchar(60)]  NULL,--排查单位 编号：ZZFC040032 引用自JCTB010302 DWMC 单位名称 C 60 NULL NULL NULL NULL
	[PCR]  [nvarchar(36)]  NULL,--排查人 编号：ZZFC040033 引用自JCTB020101 XM 姓名 C 36 NULL NULL 例：张振华；买买提·阿不都热依木 NULL
CONSTRAINT [PK_ZZFC04] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[PCRQ] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--建筑物鉴定数据类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZFC05]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZFC05](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[JZWJDNRM]  [nvarchar(1)]  NULL,--建筑物鉴定内容码 编号：ZZFC050001 值空间：JY/T1001JZWJDNR建筑物鉴定内容代码 
	[KZJDDW]  [nvarchar(60)]  NULL,--抗震鉴定单位 编号：ZZFC050002 引用自JCTB010302 DWMC 单位名称 C 60 NULL NULL NULL NULL
	[KZJDDWZZ]  [nvarchar(50)]  NULL,--抗震鉴定单位资质 编号：ZZFC050003 
	[KZJDKZSFLDM]  [nvarchar(1)]  NULL,--抗震鉴定抗震设防烈度码 编号：ZZFC050004 值空间：JY/T1001KZSFLD抗震设防烈度代码 
	[KZJDJL]  [nvarchar(1)]  NULL,--抗震鉴定结论 编号：ZZFC050005 值空间：JY/T1001SFBZ是否标志代码 解释/举例：1符合抗震要求0不符合抗震要求 
	[KZJDJZDC]  [nvarchar(200)]  NULL,--抗震鉴定减灾对策和处理意见 编号：ZZFC050006 
	[KZJDBGBH]  [nvarchar(200)]  NULL,--抗震鉴定报告编号 编号：ZZFC050007 
	[KZJDBGRQ]  [nvarchar(8)]  NULL,--抗震鉴定报告日期 编号：ZZFC050008 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[KZJDZCY]  [nvarchar(200)]  NULL,--抗震鉴定组成员 编号：ZZFC050009 
	[KZJDZRR]  [nvarchar(36)]  NULL,--抗震鉴定责任人 编号：ZZFC050010 引用自JCTB020101 XM 姓名 C 36 NULL NULL 例：张振华；买买提·阿不都热依木 NULL
	[KZJDFY]  [decimal(82)]  NULL,--抗震鉴定费用 编号：ZZFC050011 解释/举例：单位：元 
	[JZWAQJDDW]  [nvarchar(60)]  NULL,--建筑物安全鉴定单位 编号：ZZFC050012 引用自JCTB010302 DWMC 单位名称 C 60 NULL NULL NULL NULL
	[JZWAQJDDWZZ]  [nvarchar(50)]  NULL,--建筑物安全鉴定单位资质 编号：ZZFC050013 
	[JZWAQJDJL]  [nvarchar(50)]  NULL,--建筑物安全鉴定结论 编号：ZZFC050014 
	[JZWAQJDBGBH]  [nvarchar(30)]  NULL,--建筑物安全鉴定报告编号 编号：ZZFC050015 
	[XSAQJDBGRQ]  [nvarchar(8)]  NULL,--校舍安全鉴定报告日期 编号：ZZFC050016 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[XSAQJDZCY]  [nvarchar(200)]  NULL,--校舍安全鉴定组成员 编号：ZZFC050017 
	[XSAQJDZRR]  [nvarchar(36)]  NULL,--校舍安全鉴定责任人 编号：ZZFC050018 引用自JCTB020101 XM 姓名 C 36 NULL NULL 例：张振华；买买提·阿不都热依木 NULL
	[XSAQJDFY]  [decimal(82)]  NULL,--校舍安全鉴定费用 编号：ZZFC050019 解释/举例：单位：元 
	[KHKYJDDW]  [nvarchar(60)]  NULL,--抗洪抗淹鉴定单位 编号：ZZFC050020 引用自JCTB010302 DWMC 单位名称 C 60 NULL NULL NULL NULL
	[KHKYJDDWZZ]  [nvarchar(50)]  NULL,--抗洪抗淹鉴定单位资质 编号：ZZFC050021 
	[KHKYJDYWZBCS]  [nvarchar(1)]  NULL,--抗洪抗淹鉴定有无自保措施 编号：ZZFC050022 值空间：JY/T1001SFBZ是否标志代码 
	[KHKYJDYWBXCS]  [nvarchar(1)]  NULL,--抗洪抗淹鉴定有无避险措施 编号：ZZFC050023 值空间：JY/T1001SFBZ是否标志代码 
	[KHKYJDJL]  [nvarchar(1)]  NULL,--抗洪抗淹鉴定结论 编号：ZZFC050024 值空间：JY/T1001SFBZ是否标志代码 解释/举例：1符合0不符合 
	[KHKYJDBGBH]  [nvarchar(30)]  NULL,--抗洪抗淹鉴定报告编号 编号：ZZFC050025 
	[KHKYJDBGRQ]  [nvarchar(8)]  NULL,--抗洪抗淹鉴定报告日期 编号：ZZFC050026 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[KHKYJDZCY]  [nvarchar(200)]  NULL,--抗洪抗淹鉴定组成员 编号：ZZFC050027 
	[KHKYJDZRR]  [nvarchar(36)]  NULL,--抗洪抗淹鉴定责任人 编号：ZZFC050028 引用自JCTB020101 XM 姓名 C 36 NULL NULL 例：张振华；买买提·阿不都热依木 NULL
	[KHKYJDFY]  [decimal(82)]  NULL,--抗洪抗淹鉴定费用 编号：ZZFC050029 解释/举例：单位：元 
	[KFYSDW]  [nvarchar(60)]  NULL,--抗风验算单位 编号：ZZFC050030 引用自JCTB010302 DWMC 单位名称 C 60 NULL NULL NULL NULL
	[KFYSDWZZ]  [nvarchar(50)]  NULL,--抗风验算单位资质 编号：ZZFC050031 
	[KFYSJL]  [nvarchar(1)]  NULL,--抗风验算结论 编号：ZZFC050032 值空间：JY/T1001SFBZ是否标志代码 解释/举例：1符合0不符合 
	[KFYSBGBH]  [nvarchar(30)]  NULL,--抗风验算报告编号 编号：ZZFC050033 
	[KFYSBGRQ]  [nvarchar(8)]  NULL,--抗风验算报告日期 编号：ZZFC050034 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[KFYSZCY]  [nvarchar(200)]  NULL,--抗风验算组成员 编号：ZZFC050035 
	[KFYSZRR]  [nvarchar(36)]  NULL,--抗风验算责任人 编号：ZZFC050036 引用自JCTB020101 XM 姓名 C 36 NULL NULL 例：张振华；买买提·阿不都热依木 NULL
	[KFYSFY]  [decimal(82)]  NULL,--抗风验算费用 编号：ZZFC050037 解释/举例：单位：元 
	[QTJDMC]  [nvarchar(60)]  NULL,--其他鉴定名称 编号：ZZFC050038 
	[QTJDDW]  [nvarchar(60)]  NULL,--其他鉴定单位 编号：ZZFC050039 引用自JCTB010302 DWMC 单位名称 C 60 NULL NULL NULL NULL
	[QTJDDWZZ]  [nvarchar(50)]  NULL,--其他鉴定单位资质 编号：ZZFC050040 
	[QTJDJL]  [nvarchar(1)]  NULL,--其他鉴定结论 编号：ZZFC050041 值空间：JY/T1001SFBZ是否标志代码 解释/举例：1符合0不符合 
	[QTJDBGBH]  [nvarchar(30)]  NULL,--其他鉴定报告编号 编号：ZZFC050042 
	[QTJDBGRQ]  [nvarchar(8)]  NULL,--其他鉴定报告日期 编号：ZZFC050043 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[QTJDZCY]  [nvarchar(200)]  NULL,--其他鉴定组成员 编号：ZZFC050044 
	[QTJDZRR]  [nvarchar(36)]  NULL,--其他鉴定责任人 编号：ZZFC050045 引用自JCTB020101 XM 姓名 C 36 NULL NULL 例：张振华；买买提·阿不都热依木 NULL
	[QTJDFY]  [decimal(82)]  NULL,--其他鉴定费用 编号：ZZFC050046 解释/举例：单位：元 
	[ZHFZPJ]  [nvarchar(200)]  NULL,--综合防灾评价 编号：ZZFC050047 
	[ZHJDJL]  [nvarchar(1)]  NULL,--综合鉴定结论 编号：ZZFC050048 值空间：JY/T1001SFBZ是否标志代码 解释/举例：1安全0不安全 
	[HXSYNX]  [decimal(2)]  NULL,--后续使用年限 编号：ZZFC050049 
	[CLYJ]  [nvarchar(1)]  NULL,--处理意见 编号：ZZFC050050 解释/举例：1加固改造2拆除 
	[QTJY]  [nvarchar(200)]  NULL,--其他建议 编号：ZZFC050051 
	[QBJDFY]  [decimal(82)]  NULL,--全部鉴定费用 编号：ZZFC050052 解释/举例：单位：元 
CONSTRAINT [PK_ZZFC05] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--学生宿舍数据类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZFC08]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZFC08](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[SSLBM]  [nvarchar(6)]  NOT NULL,--宿舍楼编号 编号：ZZFC080001 引用自JCBX020201 JZWH 建筑物号 C 6 M NULL 学校自编 NULL
	[FJBM]  [nvarchar(10)]  NOT NULL,--房间编号 编号：ZZFC080002 
	[RZXB]  [nvarchar(1)]  NOT NULL,--入住性别 编号：ZZFC080003 值空间：GB/T2261.1 解释/举例：1男性2女性 
	[SFKY]  [nvarchar(1)]  NOT NULL,--是否可用 编号：ZZFC080004 值空间：JY/T1001SFBZ是否标志代码 解释/举例：1可用0不可用 
	[KZRS]  [decimal(2)]  NOT NULL,--可住人数 编号：ZZFC080005 
	[WLDK]  [nvarchar(20)]  NULL,--网络端口 编号：ZZFC080006 
	[AZDSJ]  [nvarchar(1)]  NULL,--安装电视机 编号：ZZFC080007 值空间：JY/T1001SFBZ是否标志代码 解释/举例：1已安装0未安装 
	[DHDK]  [nvarchar(20)]  NULL,--电话端口 编号：ZZFC080008 
	[DHHM]  [nvarchar(20)]  NULL,--电话号码 编号：ZZFC080009 
	[SBDS]  [decimal(10)]  NULL,--水表底数 编号：ZZFC080010 
	[DBDS]  [decimal(10)]  NULL,--电表底数 编号：ZZFC080011 
	[SSBZ]  [text]  NULL,--宿舍备注 编号：ZZFC080012 
CONSTRAINT [PK_ZZFC08] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[SSLBM] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--教室数据类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZFC09]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZFC09](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[XQDM]  [nvarchar(2)]  NOT NULL,--校区代码 编号：ZZXX020001 引用自ZZXX020001 XQDM 校区代码 C 2 M NULL NULL JCXX010201
	[JZWH]  [nvarchar(6)]  NOT NULL,--建筑物号 编号：ZZFC090001 引用自JCBX020201 JZWH 建筑物号 C 6 M NULL 学校自编 NULL
	[JSBH]  [nvarchar(10)]  NOT NULL,--教室编号 编号：ZZFC090002 解释/举例：学校自编 
	[JSLXDM]  [nvarchar(1)]  NOT NULL,--教室类型代码 编号：ZZFC090003 值空间：JY/T1001JSLX教室类型代码 
	[SJRL]  [decimal(4)]  NOT NULL,--实际容量 编号：ZZFC090004 解释/举例：教室的实际容量 
	[ZDPKRL]  [decimal(4)]  NOT NULL,--最大排课容量 编号：ZZFC090005 解释/举例：排课时的教室的最大容量 
	[WLZT]  [nvarchar(1)]  NOT NULL,--网络状态 编号：ZZFC090006 值空间：JY/T1001SFBZ是否标志代码 解释/举例：0不通1通 
	[SFDMTJS]  [nvarchar(1)]  NOT NULL,--是否多媒体教室 编号：ZZFC090007 值空间：JY/T1001SFBZ是否标志代码 
	[PMT]  [nvarchar(200)]  NULL,--平面图 编号：ZZFC090008 
	[TP]  [nvarchar(200)]  NULL,--图片 编号：ZZFC090009 
	[SFKY]  [nvarchar(1)]  NOT NULL,--是否可用 编号：ZZFC090010 值空间：JY/T1001SFBZ是否标志代码 解释/举例：1可用0不可用 
	[JSBZ]  [text]  NULL,--教室备注 编号：ZZFC090011 
CONSTRAINT [PK_ZZFC09] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[XQDM] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--仪器设备基本数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZBX0101]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZBX0101](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[XQDM]  [nvarchar(2)]  NOT NULL,--校区代码 编号：ZZXX020001 引用自ZZXX020001 XQDM 校区代码 C 2 M NULL NULL JCXX010201
	[YQBH]  [nvarchar(80)]  NOT NULL,--仪器设备编号 编号：ZZBX010101 
	[YQZWMC]  [nvarchar(100)]  NOT NULL,--仪器设备中文名称 编号：ZZBX010102 解释/举例：产品标牌上的汉字名称，进口产品用英译汉名称，包括仪器、设备、教具和玩具等 
	[YQYWMC]  [nvarchar(100)]  NOT NULL,--仪器设备英文名称 编号：ZZBX010103 
	[CQM]  [nvarchar(1)]  NOT NULL,--产权码 编号：JCBX030105 引用自JCBX030105 CQM 产权码 C 1 M JY/T1001CQ产权代码 NULL NULL
	[YQXH]  [nvarchar(80)]  NOT NULL,--仪器设备型号 编号：ZZBX010104 
	[SCCJ]  [nvarchar(180)]  NOT NULL,--生产厂家 编号：JCBX030112 引用自JCBX030112 SCCJ 生产厂家 C 180 M NULL 指生产厂家的汉字名，进口产品用英译汉名或外文名 NULL
	[CCH]  [nvarchar(30)]  NULL,--出厂号 编号：JCBX030113 引用自JCBX030113 CCH 出厂号 C 30 M NULL 厂家标注在产品上的唯一号 NULL
	[CCRQ]  [nvarchar(8)]  NULL,--出厂日期 编号：JCBX030108 引用自JCBX030108 CCRQ 出厂日期 C 8 M NULL NULL JCTB010203
	[SCGBDQM]  [nvarchar(3)]  NULL,--生产国别/地区码 编号：JCBX030109 引用自JCBX030109 SCGBDQM 生产国别/地区码 C 3 M GB/T2659 指仪器的生产国，用三位字母代码 NULL
	[JFKMM]  [nvarchar(1)]  NULL,--经费科目码 编号：JCBX030110 引用自JCBX030110 JFKMM 经费科目码 C 1 M JY/T1001JFKM经费科目代码 NULL NULL
	[JGBZ]  [nvarchar(3)]  NULL,--价格币种 编号：JCBX030120 引用自JCBX030120 JGBZ 价格币种 C 3 O GB/T12406 NULL NULL
	[YQJG]  [money]  NULL,--仪器价格 编号：JCBX030121 引用自JCBX030121 YQJG 仪器价格 M NULL O NULL NULL NULL
	[GZRQ]  [nvarchar(8)]  NOT NULL,--购置日期 编号：ZZBX010105 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[BFNX]  [decimal(2)]  NULL,--报废年限 编号：ZZBX010106 
	[DJH]  [nvarchar(16)]  NULL,--单据号 编号：JCBX030114 引用自JCBX030114 DJH 单据号 C 16 M NULL 采购凭证单据号或进口产品订货合同号 NULL
	[TP]  [nvarchar(200)]  NULL,--图片 编号：JCBX030115 引用自JCBX030115 TP 图片 B NULL M NULL 指仪器设备的图片 NULL
	[YQDD]  [nvarchar(60)]  NULL,--仪器地点 编号：JCBX030116 引用自JCBX030116 YQDD 仪器地点 C 60 M NULL NULL NULL
	[SBFZRH]  [nvarchar(20)]  NULL,--设备负责人号 编号：JCBX030117 引用自JCTB020120 RYH 人员号 C 20 NULL NULL 学号或工号 NULL
	[JSZB]  [text]  NULL,--技术指标 编号：JCBX030118 引用自JCBX030118 JSZB 技术指标 T NULL M NULL NULL NULL
	[YQPZ]  [text]  NULL,--仪器配置 编号：JCBX030119 引用自JCBX030119 YQPZ 仪器配置 T NULL M NULL NULL NULL
	[YQSM]  [text]  NULL,--仪器说明 编号：JCBX030122 引用自JCBX030122 YQSM 仪器说明 T NULL O NULL NULL NULL
	[CWZH]  [nvarchar(20)]  NULL,--财务帐号 编号：JCBX030123 引用自JCBX030123 CWZH 财务帐号 C 20 O NULL 指校内财务帐号 NULL
	[GHS]  [nvarchar(60)]  NULL,--供货商 编号：JCBX030124 引用自JCBX030124 GHS 供货商 C 60 O NULL 供货商的名称 NULL
	[SYZT]  [nvarchar(1)]  NOT NULL,--使用状态 编号：ZZBX010107 值空间：JY/T1001SFBZ是否标志代码 解释/举例：1可用2不可用 
	[BFZT码]  [nvarchar(1)]  NOT NULL,--报废状态码 编号：ZZBX010108 值空间：JY/T1001YQXZ仪器现状代码 
CONSTRAINT [PK_ZZBX0101] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[XQDM] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--仪器设备使用信息数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZBX0102]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZBX0102](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[XQDM]  [nvarchar(2)]  NULL,--校区代码 编号：ZZXX020001 引用自ZZXX020001 XQDM 校区代码 C 2 M NULL NULL JCXX010201
	[YQBH]  [nvarchar(80)]  NOT NULL,--仪器设备编号 编号：ZZBX010101 引用自ZZBX010101 YQBH 仪器设备编号 C 80 M NULL NULL JCBX030001
	[YQXZDM]  [nvarchar(1)]  NOT NULL,--仪器现状代码 编号：ZZBX010201 值空间：JY/T1001YQXZ仪器现状代码 
	[YQSYFXDM]  [nvarchar(1)]  NOT NULL,--仪器使用方向代码 编号：ZZBX010202 值空间：JY/T1001YQSYFX仪器使用方向代码 
	[SYJGH]  [nvarchar(6)]  NOT NULL,--使用机构号 编号：ZZBX010203 
	[JSRGH]  [nvarchar(20)]  NULL,--经手人工号 编号：ZZBX010204 解释/举例：校内首次办理使用手续人工号 引用自JCTB020120 RYH 人员号 C 20 NULL NULL 学号或工号 NULL
	[LYDW]  [nvarchar(60)]  NULL,--领用单位 编号：ZZBX010205 解释/举例：仪器设备校内调动后，新使用单位名称 
	[LYRGH]  [nvarchar(20)]  NULL,--领用人工号 编号：ZZBX010206 解释/举例：仪器设备校内调动后，新使用单位办理领用手续人工号 引用自JCTB020120 RYH 人员号 C 20 NULL NULL 学号或工号 NULL
	[WHRS]  [decimal(2)]  NULL,--维护人数 编号：ZZBX010207 解释/举例：仪器设备专职操作维护人员数量，兼职按工作量折算为全时人员数时只取整数，单位：人 
	[SYRSS]  [decimal(8)]  NULL,--使用人时数 编号：ZZBX010208 解释/举例：单位：人时 
	[KSSYGS]  [decimal(6)]  NULL,--开设实验个数 编号：ZZBX010209 解释/举例：单位：个 
	[KSSYSS]  [decimal(8)]  NULL,--开设实验时数 编号：ZZBX010210 解释/举例：单位：小时 
	[JXSS]  [decimal(8)]  NULL,--教学时数 编号：ZZBX010211 解释/举例：单位：小时 
	[KYSS]  [decimal(8)]  NULL,--科研时数 编号：ZZBX010212 解释/举例：单位：小时 
	[SHXMSS]  [decimal(8)]  NULL,--社会项目时数 编号：ZZBX010213 解释/举例：单位：小时 
	[BGRGH]  [nvarchar(20)]  NULL,--保管人工号 编号：ZZBX010214 解释/举例：指日常保管人工号 引用自JCTB020120 RYH 人员号 C 20 NULL NULL 学号或工号 NULL
CONSTRAINT [PK_ZZBX0102] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--图书数据类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZBX02]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZBX02](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[TSBH]  [nvarchar(10)]  NOT NULL,--图书编号 编号：JCBX040101 引用自JCBX040101 TSBH 图书编号 C 10 M NULL 指校内图书资料的编号，包括图书、磁带、录象带、磁盘、光盘等，学校自编 NULL
	[ZBT]  [nvarchar(180)]  NOT NULL,--正标题 编号：JCBX040103 引用自JCBX040103 ZBT 正标题 C 180 M NULL 填写中文或英文 NULL
	[BLBT]  [nvarchar(180)]  NULL,--并列标题 编号：JCBX040104 引用自JCBX040104 BLBT 并列标题 C 180 O NULL 填写中文或英文 NULL
	[FBT]  [nvarchar(180)]  NULL,--副标题 编号：JCBX040105 引用自JCBX040105 FBT 副标题 C 180 O NULL 填写中文或英文 NULL
	[TSCBH]  [nvarchar(30)]  NULL,--图书出版号 编号：JCBX040107 引用自JCBX040107 TSCBH 图书出版号 C 30 M NULL 图书相应的ISBN等标准出版号 NULL
	[DYZZ]  [nvarchar(30)]  NOT NULL,--第一作者 编号：JCBX040108 引用自JCBX040108 DYZZ 第一作者 C 30 M NULL 图书第一作者名称 NULL
	[QTZZ]  [nvarchar(90)]  NULL,--其他作者 编号：JCBX040109 引用自JCBX040109 QTZZ 其他作者 C 90 O NULL 图书其他作者名称 NULL
	[RGRQ]  [nvarchar(8)]  NOT NULL,--入馆日期 编号：ZZBX020001 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[RGRYGH]  [nvarchar(20)]  NOT NULL,--入馆人员工号 编号：ZZBX020002 引用自JCTB020120 RYH 人员号 C 20 NULL NULL 学号或工号 NULL
	[WXLXM]  [nvarchar(2)]  NOT NULL,--文献类型码 编号：JCBX040111 引用自JCBX040111 WXLXM 文献类型码 C 2 O GB/T3469 NULL NULL
	[FLH]  [nvarchar(20)]  NOT NULL,--分类号 编号：JCBX040113 引用自JCBX040113 FLH 分类号 C 20 O NULL 按《中国图书馆分类法》进行分类的编号 NULL
	[ZGYZM]  [nvarchar(3)]  NULL,--中国语种码 编号：JCBX040114 引用自JCBX040114 ZGYZM 中国语种码 C 3 O GB/T4881 NULL NULL
	[YZM]  [nvarchar(2)]  NULL,--语种码 编号：JCBX040115 引用自JCBX040115 YZM 语种码 C 2 O GB/T4880.1 NULL NULL
	[BC]  [nvarchar(30)]  NULL,--版次 编号：JCBX040118 引用自JCBX040118 BC 版次 C 30 O NULL NULL NULL
	[CSMC]  [nvarchar(180)]  NULL,--丛书名称 编号：JCBX040120 引用自JCBX040120 CSMC 丛书名称 C 180 O NULL 指系列丛书的名称 NULL
	[CSBZ]  [nvarchar(180)]  NULL,--丛书编者 编号：JCBX040121 引用自JCBX040121 CSBZ 丛书编者 C 180 O NULL 指系列丛书的编者名称 NULL
	[CBS]  [nvarchar(180)]  NOT NULL,--出版社 编号：JCBX040122 引用自JCBX040122 CBS 出版社 C 180 O NULL 出版社名称，多个出版社可并列 NULL
	[CBSJBM]  [nvarchar(1)]  NULL,--出版社级别码 编号：JCBX040123 引用自JCBX040123 CBSJBM 出版社级别码 C 1 O JY/T1001CBSJB出版社级别代码 多个出版社以第一个出版社为准 NULL
	[CBD]  [nvarchar(60)]  NULL,--出版地 编号：JCBX040124 引用自JCBX040124 CBD 出版地 C 60 O NULL NULL NULL
	[CBRQ]  [nvarchar(8)]  NOT NULL,--出版日期 编号：JCBX040125 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[FXDW]  [nvarchar(60)]  NULL,--发行单位 编号：JCBX040126 引用自JCTB010302 DWMC 单位名称 C 60 NULL NULL NULL NULL
CONSTRAINT [PK_ZZBX02] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[TSBH] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--文件基本数据类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZBG01]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZBG01](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[WJBH]  [nvarchar(10)]  NOT NULL,--文件编号 编号：ZZBG010001 解释/举例：学校自编的文件序号 
	[WJWH]  [nvarchar(24)]  NOT NULL,--文件文号 编号：ZZBG010002 解释/举例：收、发文的文号 
	[BT]  [nvarchar(60)]  NOT NULL,--标题 编号：ZZBG010003 解释/举例：文件的标题名称 
	[ZTC]  [text]  NOT NULL,--主题词 编号：ZZBG010004 解释/举例：文件的主题词，多个主题词用逗号隔开 
	[MJM]  [nvarchar(1)]  NOT NULL,--密级码 编号：ZZBG010005 值空间：GB/T7156 
	[JJCDM]  [nvarchar(1)]  NOT NULL,--紧急程度码 编号：ZZBG010006 值空间：JY/T1001JJCD紧急程度代码 
	[YS]  [decimal(6)]  NULL,--页数 编号：ZZBG010007 解释/举例：文件的总页数，单位：页 
	[WJFLM]  [nvarchar(2)]  NOT NULL,--文件分类码 编号：ZZBG010008 值空间：JY/T1001WJFL文件分类代码 
	[ZW]  [text]  NOT NULL,--正文 编号：ZZBG010009 解释/举例：文件的具体内容 
	[FJ]  [text]  NOT NULL,--附件 编号：ZZBG010010 解释/举例：文件所带附件的具体内容 
	[FWRQ]  [nvarchar(8)]  NOT NULL,--发文日期 编号：ZZBG010011 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[CSDW]  [text]  NOT NULL,--抄送单位 编号：ZZBG010012 解释/举例：多个单位用逗号隔开 
CONSTRAINT [PK_ZZBG01] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[WJBH] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--收文处理子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZBG0201]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZBG0201](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[QSRGH]  [nvarchar(20)]  NOT NULL,--签收人工号 编号：ZZBG020101 引用自JCTB020120 RYH 人员号 C 20 NULL NULL 学号或工号 NULL
	[CFRGH]  [nvarchar(20)]  NOT NULL,--拆封人工号 编号：ZZBG020102 引用自JCTB020120 RYH 人员号 C 20 NULL NULL 学号或工号 NULL
	[DJRGH]  [nvarchar(20)]  NOT NULL,--登记人工号 编号：ZZBG020103 引用自JCTB020120 RYH 人员号 C 20 NULL NULL 学号或工号 NULL
	[SWRQ]  [nvarchar(8)]  NOT NULL,--收文日期 编号：ZZBG020104 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[LWDW]  [nvarchar(60)]  NOT NULL,--来文单位 编号：ZZBG020105 引用自JCTB010302 DWMC 单位名称 C 60 NULL NULL NULL NULL
	[FS]  [decimal(3)]  NOT NULL,--份数 编号：ZZBG020106 解释/举例：收到文件的份数，单位：份 
	[CLQK]  [text]  NOT NULL,--处理情况 编号：ZZBG020107 解释/举例：填写文件需要处理的情况和结果，包括领导批示、承办部门等 
	[FYFS]  [decimal(4)]  NULL,--翻印份数 编号：ZZBG020108 解释/举例：复印或翻印文件的份数，单位：份 
CONSTRAINT [PK_ZZBG0201] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[QSRGH] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--文件阅办子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZBG0202]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZBG0202](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[YBLBM]  [nvarchar(1)]  NULL,--阅办类别码 编号：ZZBG020201 值空间：JY/T1001YBLB阅办类别代码 
	[YBJB]  [nvarchar(30)]  NULL,--阅办级别 编号：ZZBG020202 解释/举例：指文件阅办指定的级别和范围 
	[YBDW]  [nvarchar(60)]  NULL,--阅办单位 编号：ZZBG020203 引用自JCTB010302 DWMC 单位名称 C 60 NULL NULL NULL NULL
	[YBDWBH]  [nvarchar(10)]  NULL,--阅办单位编号 编号：ZZBG020204 解释/举例：阅办单位机构号 引用自JCTB010301 DWH 单位号 C 10 NULL NULL 自行编码 NULL
	[YBRGH]  [nvarchar(17)]  NULL,--阅办人工号 编号：ZZBG020205 引用自JCTB010207 YXQ 有效期 C 17 NULL NULL 格式：YYYYMMDD-YYYYMMDD NULL
	[YBYJ]  [text]  NOT NULL,--阅办意见 编号：ZZBG020206 解释/举例：文件阅办后填写的相关意见 
	[YBRQ]  [nvarchar(8)]  NULL,--阅办日期 编号：ZZBG020207 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
CONSTRAINT [PK_ZZBG0202] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--发文处理子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZBG0301]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZBG0301](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[NGRGH]  [nvarchar(17)]  NOT NULL,--拟稿人工号 编号：ZZBG030101 引用自JCTB010207 YXQ 有效期 C 17 NULL NULL 格式：YYYYMMDD-YYYYMMDD NULL
	[NGRQ]  [nvarchar(8)]  NULL,--拟稿日期 编号：ZZBG030102 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[QFRGH]  [nvarchar(20)]  NOT NULL,--签发人工号 编号：ZZBG030103 引用自JCTB020120 RYH 人员号 C 20 NULL NULL 学号或工号 NULL
	[QFRQ]  [nvarchar(8)]  NOT NULL,--签发日期 编号：ZZBG030104 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[FSFW]  [nvarchar(60)]  NOT NULL,--发送范围 编号：ZZBG030105 解释/举例：签发文件的指定发送范围 
	[FSFSM]  [nvarchar(1)]  NOT NULL,--发送方式码 编号：ZZBG030106 值空间：JY/T1001FSFS发送方式代码 
	[DJRGH]  [nvarchar(20)]  NOT NULL,--登记人工号 编号：ZZBG030107 引用自JCTB020120 RYH 人员号 C 20 NULL NULL 学号或工号 NULL
	[DJRQ]  [nvarchar(8)]  NOT NULL,--登记日期 编号：ZZBG030108 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[FWJS]  [decimal(4)]  NOT NULL,--发文件数 编号：ZZBG030109 解释/举例：发送文件的数量，单位：份 
	[GWFWRQ]  [nvarchar(8)]  NOT NULL,--公文发文日期 编号：ZZBG030110 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[CLQK]  [text]  NOT NULL,--处理情况 编号：ZZBG030111 解释/举例：指对新制发的文件进行合理的处理 
	[DZRGH]  [nvarchar(20)]  NULL,--打字人工号 编号：ZZBG030112 引用自JCTB020120 RYH 人员号 C 20 NULL NULL 学号或工号 NULL
	[JDRGH]  [nvarchar(20)]  NULL,--校对人工号 编号：ZZBG030113 引用自JCTB020120 RYH 人员号 C 20 NULL NULL 学号或工号 NULL
	[FZFSM]  [nvarchar(1)]  NOT NULL,--封装方式码 编号：ZZBG030114 值空间：JY/T1001GWFZFS封装方式代码 
CONSTRAINT [PK_ZZBG0301] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[NGRGH] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--核稿子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZBG0302]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZBG0302](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[HGRGH]  [nvarchar(20)]  NOT NULL,--核稿人工号 编号：ZZBG030201 引用自JCTB020120 RYH 人员号 C 20 NULL NULL 学号或工号 NULL
	[HGDW]  [nvarchar(60)]  NOT NULL,--核稿单位 编号：ZZBG030202 引用自JCTB010302 DWMC 单位名称 C 60 NULL NULL NULL NULL
	[HGYJ]  [text]  NOT NULL,--核稿意见 编号：ZZBG030203 解释/举例：核对文件的相关意见 
	[HGRQ]  [nvarchar(8)]  NOT NULL,--核稿日期 编号：ZZBG030204 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
CONSTRAINT [PK_ZZBG0302] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[HGRGH] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--会签子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZBG0303]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZBG0303](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[HQR]  [nvarchar(36)]  NOT NULL,--会签人 编号：ZZBG030301 解释/举例：会签人姓名 引用自JCTB020101 XM 姓名 C 36 NULL NULL 例：张振华；买买提·阿不都热依木 NULL
	[HQDW]  [nvarchar(60)]  NOT NULL,--会签单位 编号：ZZBG030302 解释/举例：多个单位会签可逐个填写 引用自JCTB010302 DWMC 单位名称 C 60 NULL NULL NULL NULL
	[HQYJ]  [text]  NOT NULL,--会签意见 编号：ZZBG030303 解释/举例：会签文件的相关意见 
	[HQRQ]  [nvarchar(8)]  NOT NULL,--会签日期 编号：ZZBG030304 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
CONSTRAINT [PK_ZZBG0303] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[HQR] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--呈批子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZBG0304]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZBG0304](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[PFR]  [nvarchar(36)]  NOT NULL,--批复人 编号：ZZBG030401 解释/举例：批复人姓名 引用自JCTB020101 XM 姓名 C 36 NULL NULL 例：张振华；买买提·阿不都热依木 NULL
	[PFDW]  [nvarchar(60)]  NOT NULL,--批复单位 编号：ZZBG030402 引用自JCTB010302 DWMC 单位名称 C 60 NULL NULL NULL NULL
	[PFYJ]  [text]  NOT NULL,--批复意见 编号：ZZBG030403 解释/举例：文件批复的具体意见 
	[PFRQ]  [nvarchar(8)]  NOT NULL,--批复日期 编号：ZZBG030404 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
CONSTRAINT [PK_ZZBG0304] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[PFR] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--文件清退数据类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZBG04]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZBG04](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[QTRQ]  [nvarchar(8)]  NOT NULL,--清退日期 编号：ZZBG040001 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[QTFW]  [nvarchar(180)]  NOT NULL,--清退范围 编号：ZZBG040002 解释/举例：文件清退所指定的范围 
	[QTSM]  [text]  NULL,--清退说明 编号：ZZBG040003 解释/举例：文件清退相关说明或结果 
	[JBRGH]  [nvarchar(20)]  NOT NULL,--经办人工号 编号：ZZBG040004 引用自JCTB020120 RYH 人员号 C 20 NULL NULL 学号或工号 NULL
CONSTRAINT [PK_ZZBG04] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[QTRQ] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--文件销毁数据类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZBG05]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZBG05](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[XHRQ]  [nvarchar(8)]  NOT NULL,--销毁日期 编号：ZZBG050001 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[XHSPRGH]  [nvarchar(20)]  NOT NULL,--销毁审批人工号 编号：ZZBG050002 引用自JCTB020120 RYH 人员号 C 20 NULL NULL 学号或工号 NULL
	[XHSM]  [text]  NULL,--销毁说明 编号：ZZBG050003 解释/举例：销毁文件的相关说明 
	[JBRGH]  [nvarchar(20)]  NOT NULL,--经办人工号 编号：ZZBG050004 引用自JCTB020120 RYH 人员号 C 20 NULL NULL 学号或工号 NULL
CONSTRAINT [PK_ZZBG05] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[XHRQ] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--文件借阅数据类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZBG06]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZBG06](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[JYR]  [nvarchar(36)]  NOT NULL,--借阅人 编号：ZZBG060001 引用自JCTB020101 XM 姓名 C 36 NULL NULL 例：张振华；买买提·阿不都热依木 NULL
	[JYRQ]  [nvarchar(8)]  NOT NULL,--借阅日期 编号：ZZBG060002 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[JYSPRGH]  [nvarchar(20)]  NOT NULL,--借阅审批人工号 编号：ZZBG060003 引用自JCTB020120 RYH 人员号 C 20 NULL NULL 学号或工号 NULL
	[JYJBRGH]  [nvarchar(20)]  NOT NULL,--借阅经办人工号 编号：ZZBG060004 解释/举例：借阅文件的经手人员或保管人员的工号 引用自JCTB020120 RYH 人员号 C 20 NULL NULL 学号或工号 NULL
	[JYYY]  [nvarchar(80)]  NULL,--借阅原因 编号：ZZBG060005 
CONSTRAINT [PK_ZZBG06] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[JYR] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--文件归档数据类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZBG07]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZBG07](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[GDRGH]  [nvarchar(20)]  NOT NULL,--归档人工号 编号：ZZBG070001 引用自JCTB020120 RYH 人员号 C 20 NULL NULL 学号或工号 NULL
	[GDRQ]  [nvarchar(8)]  NOT NULL,--归档日期 编号：ZZBG070002 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[BZ]  [text]  NULL,--备注 编号：ZZBG070003 解释/举例：文件归档的相关说明 
	[WJQZH]  [nvarchar(10)]  NOT NULL,--文件全宗号 编号：ZZBG070004 解释/举例：是单位对全部档案自编的全宗编号，长期固定不变 
	[WJMLH]  [nvarchar(5)]  NOT NULL,--文件目录号 编号：ZZBG070005 解释/举例：是全宗内每一案卷目录的编号 
	[WJAJH]  [nvarchar(5)]  NOT NULL,--文件案卷号 编号：ZZBG070006 解释/举例：是案卷目录内每一案卷的编号 
CONSTRAINT [PK_ZZBG07] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[GDRGH] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--档案登记数据类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZBG08]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZBG08](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[QZH]  [nvarchar(10)]  NOT NULL,--全宗号 编号：ZZBG080001 
	[ND]  [nvarchar(4)]  NOT NULL,--年度 编号：ZZBG080002 解释/举例：档案登记的年度 引用自JCTB010201 ND 年度（年份、年） C 4 NULL GB/T7408 格式：YYYY，如：2008 NULL
	[MLH]  [nvarchar(5)]  NOT NULL,--目录号 编号：ZZBG080003 
	[AJH]  [nvarchar(5)]  NOT NULL,--案卷号 编号：ZZBG080004 
	[TM]  [nvarchar(120)]  NOT NULL,--题名 编号：ZZBG080005 解释/举例：文件的标题名称 
	[ZTC]  [text]  NOT NULL,--主题词 编号：ZZBG080006 解释/举例：文件的主题词，多个主题词用逗号隔开 
	[QSRQ]  [nvarchar(8)]  NULL,--起始日期 编号：ZZBG080007 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[JZRQ]  [nvarchar(8)]  NULL,--截止日期 编号：ZZBG080008 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[BGQXM]  [nvarchar(1)]  NOT NULL,--保管期限码 编号：ZZBG080009 值空间：JY/T1001BGQX保管期限代码 
	[MJM]  [nvarchar(1)]  NULL,--密级码 编号：ZZBG080010 值空间：GB/T7156 
	[YS]  [decimal(6)]  NOT NULL,--页数 编号：ZZBG080011 解释/举例：文件的总页数，单位：页 
	[FS]  [decimal(8)]  NOT NULL,--份数 编号：ZZBG080012 解释/举例：文件的份数，单位：份 
	[BZDW]  [nvarchar(60)]  NULL,--编制单位 编号：ZZBG080013 解释/举例：完成档案登记的单位名称 引用自JCTB010302 DWMC 单位名称 C 60 NULL NULL NULL NULL
	[CFWZ]  [nvarchar(60)]  NOT NULL,--存放位置 编号：ZZBG080014 解释/举例：指文件存放的地点或架号 
	[DAFLM]  [nvarchar(2)]  NOT NULL,--档案分类码 编号：ZZBG080015 值空间：JY/T1001附录C高等学校档案实体分类法 解释/举例：取前两位 
CONSTRAINT [PK_ZZBG08] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[QZH] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--会议管理数据类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZBG09]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZBG09](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[HYBH]  [nvarchar(10)]  NOT NULL,--会议编号 编号：ZZBG090001 解释/举例：由教育行政部门自编 
	[HYMC]  [nvarchar(60)]  NOT NULL,--会议名称 编号：ZZBG090002 
	[HYFW]  [text]  NOT NULL,--会议范围 编号：ZZBG090003 解释/举例：对参会人员的范围要求 
	[HYZYNR]  [text]  NOT NULL,--会议主要内容 编号：ZZBG090004 
	[HYZCR]  [nvarchar(30)]  NOT NULL,--会议主持人 编号：ZZBG090005 
	[HYKSSJ]  [nvarchar(12)]  NOT NULL,--会议开始时间 编号：ZZBG090006 解释/举例：格式：CCYYMMDDhhmm 
	[HYJSSJ]  [nvarchar(12)]  NULL,--会议结束时间 编号：ZZBG090007 解释/举例：格式：CCYYMMDDhhmm 
	[HYDD]  [nvarchar(60)]  NOT NULL,--会议地点 编号：ZZBG090008 
	[HYJY]  [text]  NOT NULL,--会议纪要 编号：ZZBG090009 
CONSTRAINT [PK_ZZBG09] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[HYBH] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--制章类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZBG10]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZBG10](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[GZBH]  [nvarchar(4)]  NOT NULL,--公章编号 编号：ZZBG100001 
	[ZZMC]  [nvarchar(60)]  NOT NULL,--制章名称 编号：ZZBG100002 
	[BGDWMC]  [nvarchar(60)]  NOT NULL,--保管单位名称 编号：ZZBG100003 引用自JCTB010302 DWMC 单位名称 C 60 NULL NULL NULL NULL
	[BGRGH]  [nvarchar(20)]  NOT NULL,--保管人工号 编号：ZZBG100004 引用自JCTB020120 RYH 人员号 C 20 NULL NULL 学号或工号 NULL
	[PZDW]  [nvarchar(60)]  NOT NULL,--批准单位 编号：ZZBG100005 引用自JCTB010302 DWMC 单位名称 C 60 NULL NULL NULL NULL
	[PZRGH]  [nvarchar(20)]  NOT NULL,--批准人工号 编号：ZZBG100006 引用自JCTB020120 RYH 人员号 C 20 NULL NULL 学号或工号 NULL
	[PZWH]  [nvarchar(10)]  NOT NULL,--批准文号 编号：ZZBG100007 
	[PZRQ]  [nvarchar(8)]  NOT NULL,--批准日期 编号：ZZBG100008 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[SXRQ]  [nvarchar(8)]  NOT NULL,--生效日期 编号：ZZBG100009 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[ZFPZWH]  [nvarchar(10)]  NOT NULL,--作废批准文号 编号：ZZBG100010 
	[ZFRQ]  [nvarchar(8)]  NULL,--作废日期 编号：ZZBG100011 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[ZFPZRH]  [nvarchar(20)]  NOT NULL,--作废批准人号 编号：ZZBG100012 引用自JCTB020120 RYH 人员号 C 20 NULL NULL 学号或工号 NULL
	[YZTY]  [nvarchar(200)]  NOT NULL,--印章图样 编号：ZZBG100013 
CONSTRAINT [PK_ZZBG10] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[GZBH] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--用印类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZBG11]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZBG11](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[YYDJH]  [nvarchar(15)]  NOT NULL,--用印登记号 编号：ZZBG110001 解释/举例：YYYY-ZZZZ-LLLLL年号-印号-流水号 
	[GZBH]  [nvarchar(4)]  NOT NULL,--公章编号 编号：ZZBG110002 
	[YYSY]  [nvarchar(200)]  NULL,--用印事由 编号：ZZBG110003 
	[SYGLH]  [nvarchar(50)]  NULL,--事由关联号 编号：ZZBG110004 解释/举例：发文,放发文号，开介绍信放介绍信号等等 
	[YYCS]  [decimal(5)]  NULL,--用印次数 编号：ZZBG110005 解释/举例：批量用印，如发毕业证时一次用印次数 
	[YRPZRH]  [nvarchar(20)]  NOT NULL,--用印批准人号 编号：ZZBG110006 引用自JCTB020120 RYH 人员号 C 20 NULL NULL 学号或工号 NULL
	[YYPZRQ]  [nvarchar(8)]  NOT NULL,--用印批准日期 编号：ZZBG110007 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[YYRQ]  [nvarchar(8)]  NOT NULL,--用印日期 编号：ZZBG110008 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[YYSQRQ]  [nvarchar(8)]  NOT NULL,--用印申请日期 编号：ZZBG110009 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[SQRGH]  [nvarchar(20)]  NOT NULL,--申请人工号 编号：ZZBG110010 引用自JCTB020120 RYH 人员号 C 20 NULL NULL 学号或工号 NULL
	[ZSRGH]  [nvarchar(20)]  NOT NULL,--执行人工号 编号：ZZBG110011 引用自JCTB020120 RYH 人员号 C 20 NULL NULL 学号或工号 NULL
CONSTRAINT [PK_ZZBG11] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[YYDJH] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--学校办学经费拨入情况数据类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZJF01]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZJF01](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[JFKMM]  [nvarchar(1)]  NOT NULL,--经费科目码 编号：ZZJF010001 值空间：JY/T1001JFKM经费科目代码 
	[JFLYM]  [nvarchar(1)]  NOT NULL,--经费来源码 编号：ZZJF010002 值空间：JY/T1001JFLY经费来源代码 
	[JFBRE]  [money]  NOT NULL,--经费拨入额 编号：ZZJF010003 解释/举例：单位：万元 
	[BRRQ]  [nvarchar(8)]  NOT NULL,--拨入日期 编号：ZZJF010004 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[JFXDYTMS]  [text]  NULL,--经费限定用途描述 编号：ZZJF010005 解释/举例：拨入的经费主要用途 
	[JFBRJBR]  [nvarchar(36)]  NOT NULL,--经费拨入经办人 编号：ZZJF010006 引用自JCTB020101 XM 姓名 C 36 NULL NULL 例：张振华；买买提·阿不都热依木 NULL
CONSTRAINT [PK_ZZJF01] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[JFKMM] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--学校办学经费使用情况数据类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ZZJF02]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZJF02](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[JFZCXM]  [nvarchar(100)]  NOT NULL,--经费支出项目 编号：ZZJF020001 解释/举例：学校或教育部门填写 
	[JFZCE]  [money]  NOT NULL,--经费支出额 编号：ZZJF020002 解释/举例：单位：万元 
	[ZCRQ]  [nvarchar(8)]  NOT NULL,--支出日期 编号：ZZJF020003 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[JFYTMS]  [text]  NULL,--经费用途描述 编号：ZZJF020004 解释/举例：学校对此次经费的用途进行描述 
CONSTRAINT [PK_ZZJF02] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[JFZCXM] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

