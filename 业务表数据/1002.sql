--空间名：STAnalyzer  生成器：SqlBuilder0.1
--通用通讯数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCTB0101]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCTB0101](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[YZBM]  [nvarchar(6)]  NULL,--邮政编码 编号：JCTB010101 
	[TXDZ]  [nvarchar(180)]  NULL,--通信地址 编号：JCTB010102 解释/举例：指包括省（自治区、直辖市）/地（市、州）/县（区、旗）/乡（镇）/街（村）/门牌号的详细地址 
	[DH]  [nvarchar(30)]  NULL,--电话 编号：JCTB010103 解释/举例：即电话号码 
	[YDDH]  [nvarchar(30)]  NULL,--移动电话 编号：JCTB010104 
	[CZDH]  [nvarchar(30)]  NULL,--传真电话 编号：JCTB010105 
	[DZXX]  [nvarchar(40)]  NULL,--电子信箱 编号：JCTB010106 解释/举例：电子邮件地址 
	[WLDZ]  [nvarchar(60)]  NULL,--网络地址 编号：JCTB010107 解释/举例：如主页、博客、微博网址 
	[JSTXH]  [nvarchar(40)]  NULL,--即时通讯号 编号：JCTB010108 解释/举例：如MSN/QQ等号码 
CONSTRAINT [PK_JCTB0101] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--通用时间数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCTB0102]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCTB0102](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[ND]  [nvarchar(4)]  NULL,--年度（年份、年） 编号：JCTB010201 值空间：GB/T7408 解释/举例：格式：YYYY，如：2008 
	[NY]  [nvarchar(6)]  NULL,--年月 编号：JCTB010202 值空间：GB/T7408 解释/举例：格式：YYYYMM，如：200604表示2006年4月 
	[RQ]  [nvarchar(8)]  NULL,--日期 编号：JCTB010203 值空间：GB/T7408 解释/举例：格式：YYYYMMDD，如：20060412表示2006年4月12日 
	[SJ]  [nvarchar(6)]  NULL,--时间 编号：JCTB010204 值空间：GB/T7408 解释/举例：格式：hhmmss，如：141503表示下午2时15分3秒 
	[XN]  [nvarchar(9)]  NULL,--学年（度） 编号：JCTB010205 解释/举例：格式：YYYY-YYYY，如：2001-2002 
	[XQM]  [nvarchar(1)]  NULL,--学期码 编号：JCTB010206 值空间：JY/T1001XQ学期代码 
	[YXQ]  [nvarchar(17)]  NULL,--有效期 编号：JCTB010207 解释/举例：格式：YYYYMMDD-YYYYMMDD 
CONSTRAINT [PK_JCTB0102] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--单位基本数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCTB0103]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCTB0103](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[DWH]  [nvarchar(10)]  NULL,--单位号 编号：JCTB010301 解释/举例：自行编码 
	[DWMC]  [nvarchar(60)]  NULL,--单位名称 编号：JCTB010302 
	[DWYWMC]  [nvarchar(180)]  NULL,--单位英文名称 编号：JCTB010303 
	[DWJC]  [nvarchar(12)]  NULL,--单位简称 编号：JCTB010304 
	[DWYWJC]  [nvarchar(8)]  NULL,--单位英文简称 编号：JCTB010305 
	[DWJP]  [nvarchar(6)]  NULL,--单位简拼 编号：JCTB010306 
	[DWDZ]  [nvarchar(180)]  NULL,--单位地址 编号：JCTB010307 引用自JCTB010102 TXDZ 通信地址 C 180 NULL NULL 指包括省（自治区、直辖市）/地（市、州）/县（区、旗）/乡（镇）/街（村）/门牌号的详细地址 NULL
	[LSDWH]  [nvarchar(10)]  NULL,--隶属单位号 编号：JCTB010308 引用自JCTB010301 DWH 单位号 C 10 NULL NULL 自行编码 NULL
	[DWLBM]  [nvarchar(1)]  NULL,--单位类别码 编号：JCTB010309 值空间：JY/T1001DWLB单位类别代码 
	[DWBBM]  [nvarchar(1)]  NULL,--单位办别码 编号：JCTB010310 值空间：JY/T1001DWBB单位办别代码 
	[DWYXBS]  [nvarchar(1)]  NULL,--单位有效标识 编号：JCTB010311 值空间：JY/T1001SFBZ是否标志代码 解释/举例：1是(有效)0否(失效) 
	[SXRQ]  [nvarchar(8)]  NULL,--失效日期 编号：JCTB010312 解释/举例：指单位失效日期 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[SFST]  [nvarchar(1)]  NULL,--是否实体 编号：JCTB010313 值空间：JY/T1001SFBZ是否标志代码 解释/举例：1是0否（即虚体） 
	[JLNY]  [nvarchar(6)]  NULL,--建立年月 编号：JCTB010314 解释/举例：格式：YYYYMM指单位最初建立的年月 引用自JCTB010202 NY 年月 C 6 NULL GB/T7408 格式：YYYYMM，如：200604表示2006年4月 NULL
	[DWFZRH]  [nvarchar(20)]  NULL,--单位负责人号 编号：JCTB010315 解释/举例：单位负责人工号 引用自JCTB020120 RYH 人员号 C 20 NULL NULL 学号或工号 NULL
CONSTRAINT [PK_JCTB0103] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--通用教学数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCTB0104]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCTB0104](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[NJ]  [nvarchar(10)]  NULL,--年级 编号：JCTB010401 
	[XZ]  [decimal(3,1)]  NULL,--学制 编号：JCTB010402 解释/举例：以年为单位 
	[KCH]  [nvarchar(10)]  NULL,--课程号 编号：JCTB010403 解释/举例：学校自编 
	[KCMC]  [nvarchar(60)]  NULL,--课程名称 编号：JCTB010404 
	[KCYWMC]  [nvarchar(180)]  NULL,--课程英文名称 编号：JCTB010405 
	[KSFSM]  [nvarchar(1)]  NULL,--考试方式码 编号：JCTB010406 值空间：JY/T1001KSFS考试方式代码 
	[ZYM]  [nvarchar(6)]  NULL,--专业码 编号：JCTB010407 值空间：学位授予和人才培养学科目录专业学位授予和人才培养目录普通高等学校本科专业目录普通高等学校高职高专教育指导性专业目录（试行）中等职业学校专业目录 
	[ZYMC]  [nvarchar(60)]  NULL,--专业名称 编号：JCTB010408 
CONSTRAINT [PK_JCTB0104] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--人员基本数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCTB0201]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCTB0201](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[XM]  [nvarchar(36)]  NULL,--姓名 编号：JCTB020101 解释/举例：例：张振华；买买提·阿不都热依木 
	[YWXM]  [nvarchar(60)]  NULL,--英文姓名 编号：JCTB020102 解释/举例：例：ChristopherFrancisPatten 
	[XMPY]  [nvarchar(60)]  NULL,--姓名拼音 编号：JCTB020103 解释/举例：例：ZHANGZhenhua， 
	[CYM]  [nvarchar(36)]  NULL,--曾用名 编号：JCTB020104 解释/举例：指曾经正式使用过的姓名 
	[XBM]  [nvarchar(1)]  NULL,--性别码 编号：JCTB020105 值空间：GB/T2261.1 
	[CSRQ]  [nvarchar(8)]  NULL,--出生日期 编号：JCTB020106 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[CSDM]  [nvarchar(6)]  NULL,--出生地码 编号：JCTB020107 值空间：GB/T2260 
	[JG]  [nvarchar(20)]  NULL,--籍贯 编号：JCTB020108 
	[MZM]  [nvarchar(2)]  NULL,--民族码 编号：JCTB020109 值空间：GB/T3304 解释/举例：取用2位数字代码，如：01汉族，02蒙古族 
	[GJDQM]  [nvarchar(3)]  NULL,--国籍/地区码 编号：JCTB020110 值空间：GB/T2659 解释/举例：采用三字母代码，如：CHN中国，USA美国 
	[SFZJLXM]  [nvarchar(1)]  NULL,--身份证件类型码 编号：JCTB020111 值空间：JY/T1001SFZJLX身份证件类型代码 
	[SFZJH]  [nvarchar(20)]  NULL,--身份证件号 编号：JCTB020112 解释/举例：如：公民身份号码 
	[HYZKM]  [nvarchar(2)]  NULL,--婚姻状况码 编号：JCTB020113 值空间：GB/T2261.2 
	[GATQWM]  [nvarchar(2)]  NULL,--港澳台侨外码 编号：JCTB020114 值空间：JY/T1001GATQW港澳台侨外代码 
	[ZZMMM]  [nvarchar(2)]  NULL,--政治面貌码 编号：JCTB020115 值空间：GB/T4762 解释/举例：可采用简称，如：01中共党员，04民革会员 
	[JKZKM]  [nvarchar(1)]  NULL,--健康状况码 编号：JCTB020116 值空间：GB/T2261.3 解释/举例：采用1位数字代码 
	[XYZJM]  [nvarchar(2)]  NULL,--信仰宗教码 编号：JCTB020117 值空间：GA214.12 
	[XXM]  [nvarchar(1)]  NULL,--血型码 编号：JCTB020118 值空间：JY/T1001XX血型代码 
	[ZP]  [nvarchar(200)]  NULL,--照片 编号：JCTB020119 解释/举例：近期正面免冠证件照片 
	[RYH]  [nvarchar(20)]  NULL,--人员号 编号：JCTB020120 解释/举例：学号或工号 
	[SFZJYXQ]  [nvarchar(17)]  NULL,--身份证件有效期 编号：JCTB020121 引用自JCTB010207 YXQ 有效期 C 17 NULL NULL 格式：YYYYMMDD-YYYYMMDD NULL
	[SFDSZN]  [nvarchar(1)]  NULL,--是否独生子女 编号：JCTB020122 值空间：JY/T1001SFBZ是否标志代码 解释/举例：1是独生子女0不是独生子女 
CONSTRAINT [PK_JCTB0201] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--学习简历数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCTB0202]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCTB0202](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[XXQSRQ]  [nvarchar(8)]  NOT NULL,--学习起始日期 编号：JCTB020201 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[XXZZRQ]  [nvarchar(8)]  NOT NULL,--学习终止日期 编号：JCTB020202 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[XXDW]  [nvarchar(60)]  NOT NULL,--学习单位 编号：JCTB020203 解释/举例：学习单位名称 引用自JCTB010302 DWMC 单位名称 C 60 NULL NULL NULL NULL
	[XXNR]  [nvarchar(80)]  NULL,--学习内容 编号：JCTB020204 
	[SXZYMC]  [nvarchar(60)]  NULL,--所学专业名称 编号：JCTB020205 引用自JCTB010408 ZYMC 专业名称 C 60 NULL NULL NULL NULL
	[SHXWM]  [nvarchar(3)]  NULL,--所获学位码 编号：JCTB020206 值空间：GB/T6864 
	[XXZMR]  [nvarchar(36)]  NULL,--学习证明人 编号：JCTB020207 解释/举例：能够证明本人该阶段学习经历的人员姓名 引用自JCTB020101 XM 姓名 C 36 NULL NULL 例：张振华；买买提·阿不都热依木 NULL
	[XXJLBZ]  [text]  NULL,--学习简历备注 编号：JCTB020208 解释/举例：简历相关的补充内容 
CONSTRAINT [PK_JCTB0202] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[XXQSRQ] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--工作简历数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCTB0203]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCTB0203](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[GZQSRQ]  [nvarchar(8)]  NOT NULL,--工作起始日期 编号：JCTB020301 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[GZZZRQ]  [nvarchar(8)]  NOT NULL,--工作终止日期 编号：JCTB020302 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[GZDW]  [nvarchar(60)]  NOT NULL,--工作单位 编号：JCTB020303 解释/举例：所在单位名称 引用自JCTB010302 DWMC 单位名称 C 60 NULL NULL NULL NULL
	[GZNR]  [nvarchar(80)]  NULL,--工作内容 编号：JCTB020304 
	[CRDZZW]  [nvarchar(40)]  NULL,--曾任党政职务 编号：JCTB020305 
	[CRZYJSZWM]  [nvarchar(3)]  NULL,--曾任专业技术职务码 编号：JCTB020306 值空间：GB/T8561 解释/举例：例：011教授 
	[GZZMR]  [nvarchar(36)]  NULL,--工作证明人 编号：JCTB020307 解释/举例：能够证明本人该阶段工作经历的人员姓名 引用自JCTB020101 XM 姓名 C 36 NULL NULL 例：张振华；买买提·阿不都热依木 NULL
	[GZJLBZ]  [text]  NULL,--工作简历备注 编号：JCTB020308 解释/举例：简历相关的补充内容 
CONSTRAINT [PK_JCTB0203] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[GZQSRQ] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--政治面貌数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCTB0204]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCTB0204](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[ZZMMM]  [nvarchar(2)]  NOT NULL,--政治面貌码 编号：JCTB020115 引用自JCTB020115 ZZMMM 政治面貌码 C 2 NULL GB/T4762 可采用简称，如：01中共党员，04民革会员 NULL
	[CJRQ]  [nvarchar(8)]  NOT NULL,--参加日期 编号：JCTB020401 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[CJSZDW]  [nvarchar(60)]  NULL,--参加所在单位 编号：JCTB020402 解释/举例：参加党派时所在单位 引用自JCTB010302 DWMC 单位名称 C 60 NULL NULL NULL NULL
	[JSR]  [nvarchar(36)]  NULL,--介绍人 编号：JCTB020403 解释/举例：介绍人姓名 引用自JCTB020101 XM 姓名 C 36 NULL NULL 例：张振华；买买提·阿不都热依木 NULL
	[ZZRQ]  [nvarchar(8)]  NULL,--转正日期 编号：JCTB020404 解释/举例：指按照该党派章程规定批准的转正日期 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[YCLBM]  [nvarchar(2)]  NULL,--异常类别码 编号：JCTB020405 值空间：GB/T14946.1－2009附录A.17 
	[YCYY]  [nvarchar(80)]  NULL,--异常原因 编号：JCTB020406 解释/举例：异常的原因说明 
	[YCRQ]  [nvarchar(8)]  NULL,--异常日期 编号：JCTB020407 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[ZRRQ]  [nvarchar(8)]  NULL,--转入日期 编号：JCTB020408 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[ZRQDW]  [nvarchar(60)]  NULL,--转入前单位 编号：JCTB020409 引用自JCTB010302 DWMC 单位名称 C 60 NULL NULL NULL NULL
	[ZCRQ]  [nvarchar(8)]  NULL,--转出日期 编号：JCTB020410 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[ZCDW]  [nvarchar(60)]  NULL,--转出单位 编号：JCTB020411 解释/举例：转出后到的单位名 引用自JCTB010302 DWMC 单位名称 C 60 NULL NULL NULL NULL
CONSTRAINT [PK_JCTB0204] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[ZZMMM] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--学历学位数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCTB0205]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCTB0205](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[RXNY]  [nvarchar(6)]  NOT NULL,--入学年月 编号：JCTB020501 引用自JCTB010202 NY 年月 C 6 NULL GB/T7408 格式：YYYYMM，如：200604表示2006年4月 NULL
	[XZ]  [decimal(3,1)]  NOT NULL,--学制 编号：JCTB010402 引用自JCTB010402 XZ 学制 N 31 NULL NULL 以年为单位 NULL
	[XXFSM]  [nvarchar(1)]  NOT NULL,--学习方式码 编号：JCTB020502 值空间：GB/T14946.1－2009附录A.25 
	[XXXSM]  [nvarchar(2)]  NULL,--学习形式码 编号：JCTB020503 值空间：GB/T14946.1－2009附录A.3 
	[XLM]  [nvarchar(2)]  NOT NULL,--学历码 编号：JCTB020504 值空间：GB/T4658 
	[SXZYM]  [nvarchar(6)]  NULL,--所学专业码 编号：JCTB020505 解释/举例：取得学历所学习的专业码 引用自JCTB010407 ZYM 专业码 C 6 NULL 学位授予和人才培养学科目录专业学位授予和人才培养目录普通高等学校本科专业目录普通高等学校高职高专教育指导性专业目录（试行）中等职业学校专业目录 NULL NULL
	[JSXYNY]  [nvarchar(6)]  NOT NULL,--结束学业年月 编号：JCTB020506 引用自JCTB010202 NY 年月 C 6 NULL GB/T7408 格式：YYYYMM，如：200604表示2006年4月 NULL
	[BYYXXHDW]  [nvarchar(60)]  NOT NULL,--毕肄业学校或单位 编号：JCTB020507 解释/举例：从事学历教育并获得证书的毕肄业学校或科研单位名称 引用自JCTB010302 DWMC 单位名称 C 60 NULL NULL NULL NULL
	[XLZSH]  [nvarchar(20)]  NULL,--学历证书号 编号：JCTB020508 
	[HDXWM]  [nvarchar(3)]  NULL,--获得学位码 编号：JCTB020509 值空间：GB/T6864 
	[SXWDWMC]  [nvarchar(60)]  NULL,--授学位单位名称 编号：JCTB020510 解释/举例：颁发学位证书的单位名称 引用自JCTB010302 DWMC 单位名称 C 60 NULL NULL NULL NULL
	[SXWGJDQM]  [nvarchar(3)]  NULL,--授学位国家/地区码 编号：JCTB020511 值空间：GB/T2659 
	[HXWZYM]  [nvarchar(6)]  NULL,--获学位专业码 编号：JCTB020512 解释/举例：取得学历所学习的专业码 引用自JCTB010407 ZYM 专业码 C 6 NULL 学位授予和人才培养学科目录专业学位授予和人才培养目录普通高等学校本科专业目录普通高等学校高职高专教育指导性专业目录（试行）中等职业学校专业目录 NULL NULL
	[HXWRQ]  [nvarchar(8)]  NULL,--获学位日期 编号：JCTB020513 解释/举例：以学位证书的签发日期为准 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[XWZSH]  [nvarchar(20)]  NULL,--学位证书号 编号：JCTB020514 
CONSTRAINT [PK_JCTB0205] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[RXNY] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--家庭通讯方式数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCTB0206]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCTB0206](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[JTZZ]  [nvarchar(180)]  NOT NULL,--家庭住址 编号：JCTB020601 引用自JCTB010102 TXDZ 通信地址 C 180 NULL NULL 指包括省（自治区、直辖市）/地（市、州）/县（区、旗）/乡（镇）/街（村）/门牌号的详细地址 NULL
	[JTYZBM]  [nvarchar(6)]  NULL,--家庭邮政编码 编号：JCTB020602 引用自JCTB010101 YZBM 邮政编码 C 6 NULL NULL NULL NULL
	[JTDH]  [nvarchar(30)]  NULL,--家庭电话 编号：JCTB020603 引用自JCTB010103 DH 电话 C 30 NULL NULL 即电话号码 NULL
	[JTDZXX]  [nvarchar(40)]  NULL,--家庭电子信箱 编号：JCTB020604 引用自JCTB010106 DZXX 电子信箱 C 40 NULL NULL 电子邮件地址 NULL
CONSTRAINT [PK_JCTB0206] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[JTZZ] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--家庭成员数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCTB0207]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCTB0207](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[GXM]  [nvarchar(2)]  NOT NULL,--关系码 编号：JCTB020701 
	[CYXM]  [nvarchar(36)]  NOT NULL,--成员姓名 编号：JCTB020702 引用自JCTB020101 XM 姓名 C 36 NULL NULL 例：张振华；买买提·阿不都热依木 NULL
	[CSNY]  [nvarchar(6)]  NULL,--出生年月 编号：JCTB020703 引用自JCTB010202 NY 年月 C 6 NULL GB/T7408 格式：YYYYMM，如：200604表示2006年4月 NULL
	[MZM]  [nvarchar(2)]  NULL,--民族码 编号：JCTB020109 引用自JCTB020109 MZM 民族码 C 2 NULL GB/T3304 取用2位数字代码，如：01汉族，02蒙古族 NULL
	[GJDQM]  [nvarchar(3)]  NULL,--国籍/地区码 编号：JCTB020110 引用自JCTB020110 GJDQM 国籍/地区码 C 3 NULL GB/T2659 采用三字母代码，如：CHN中国，USA美国 NULL
	[JKZKM]  [nvarchar(1)]  NULL,--健康状况码 编号：JCTB020116 引用自JCTB020116 JKZKM 健康状况码 C 1 NULL GB/T2261.3 采用1位数字代码 NULL
	[CYGZDW]  [nvarchar(60)]  NULL,--成员工作单位 编号：JCTB020704 解释/举例：家庭成员工作的单位名称 引用自JCTB010302 DWMC 单位名称 C 60 NULL NULL NULL NULL
	[CYEM]  [nvarchar(2)]  NULL,--从业码 编号：JCTB020705 值空间：GB/T2261.4 
	[ZYJSZWM]  [nvarchar(3)]  NULL,--专业技术职务码 编号：JCTB020706 值空间：GB/T8561 
	[ZWJBM]  [nvarchar(2)]  NULL,--职务级别码 编号：JCTB020707 值空间：GB/T12407 
	[DH]  [nvarchar(30)]  NULL,--电话 编号：JCTB010103 引用自JCTB010103 DH 电话 C 30 NULL NULL 即电话号码 NULL
	[DZXX]  [nvarchar(40)]  NULL,--电子信箱 编号：JCTB010106 引用自JCTB010106 DZXX 电子信箱 C 40 NULL NULL 电子邮件地址 NULL
CONSTRAINT [PK_JCTB0207] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[GXM] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--联系人数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCTB0208]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCTB0208](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[GXM]  [nvarchar(2)]  NOT NULL,--关系码 编号：JCTB020701 引用自JCTB020701 GXM 关系码 C 2 M NULL NULL NULL
	[LXRXM]  [nvarchar(36)]  NOT NULL,--联系人姓名 编号：JCTB020801 引用自JCTB020101 XM 姓名 C 36 NULL NULL 例：张振华；买买提·阿不都热依木 NULL
	[YZBM]  [nvarchar(6)]  NULL,--邮政编码 编号：JCTB010101 引用自JCTB010101 YZBM 邮政编码 C 6 NULL NULL NULL NULL
	[TXDZ]  [nvarchar(180)]  NULL,--通信地址 编号：JCTB010102 引用自JCTB010102 TXDZ 通信地址 C 180 NULL NULL 指包括省（自治区、直辖市）/地（市、州）/县（区、旗）/乡（镇）/街（村）/门牌号的详细地址 NULL
	[DH]  [nvarchar(30)]  NOT NULL,--电话 编号：JCTB010103 引用自JCTB010103 DH 电话 C 30 NULL NULL 即电话号码 NULL
	[YDDH]  [nvarchar(30)]  NULL,--移动电话 编号：JCTB010104 引用自JCTB010104 YDDH 移动电话 C 30 NULL NULL NULL NULL
	[CZDH]  [nvarchar(30)]  NULL,--传真电话 编号：JCTB010105 引用自JCTB010105 CZDH 传真电话 C 30 NULL NULL NULL NULL
	[DZXX]  [nvarchar(40)]  NULL,--电子信箱 编号：JCTB010106 引用自JCTB010106 DZXX 电子信箱 C 40 NULL NULL 电子邮件地址 NULL
	[WLDZ]  [nvarchar(60)]  NULL,--网络地址 编号：JCTB010107 引用自JCTB010107 WLDZ 网络地址 C 60 NULL NULL 如主页、博客、微博网址 NULL
	[JSTXH]  [nvarchar(40)]  NULL,--即时通讯号 编号：JCTB010108 引用自JCTB010108 JSTXH 即时通讯号 C 40 NULL NULL 如MSN/QQ等号码 NULL
CONSTRAINT [PK_JCTB0208] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[GXM] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--家庭经济情况数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCTB0209]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCTB0209](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[JTRK]  [decimal(2)]  NULL,--家庭人口 编号：JCTB020901 解释/举例：指本人家庭户口人口数 
	[SYRK]  [decimal(2)]  NULL,--赡养人口 编号：JCTB020902 解释/举例：指本人(家庭)经济上负担赡养的人口数 
	[LDLRK]  [decimal(2)]  NULL,--劳动力人口 编号：JCTB020903 解释/举例：指家庭劳动力人口数 
	[JTRJYSR]  [money]  NOT NULL,--家庭人均月收入 编号：JCTB020904 解释/举例：家庭月均人收入 
	[JTZYSRLY]  [nvarchar(100)]  NOT NULL,--家庭主要收入来源 编号：JCTB020905 解释/举例：家庭主要收入来源 
	[JTLBM]  [nvarchar(1)]  NULL,--家庭类别码 编号：JCTB020906 值空间：JY/T1001JTLB家庭类别代码 
	[KNYYM]  [nvarchar(1)]  NULL,--困难原因码 编号：JCTB020907 值空间：JY/T1001KNYY困难原因代码 
	[KNCDM]  [nvarchar(2)]  NULL,--困难程度码 编号：JCTB020908 值空间：JY/T1001KNCD困难程度代码 
	[SFDB]  [nvarchar(1)]  NULL,--是否低保 编号：JCTB020909 值空间：JY/T1001SFBZ是否标志代码 
	[RXQHKLBM]  [nvarchar(1)]  NULL,--入学前户口类别码 编号：JCTB020910 值空间：GA324.1 
	[JXDDBX]  [money]  NULL,--就学地低保线 编号：JCTB020911 解释/举例：单位：元/月 
CONSTRAINT [PK_JCTB0209] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--学校基本数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCXX0101]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCXX0101](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[XXDM]  [nvarchar(10)]  NOT NULL,--学校代码 编号：JCXX010101 值空间：学校（机构）标识码 
	[XXMC]  [nvarchar(60)]  NOT NULL,--学校名称 编号：JCXX010102 解释/举例：标准中文名称，与公章一致 引用自JCTB010302 DWMC 单位名称 C 60 NULL NULL NULL NULL
	[XXYWMC]  [nvarchar(180)]  NULL,--学校英文名称 编号：JCXX010103 引用自JCTB010303 DWYWMC 单位英文名称 C 180 NULL NULL NULL NULL
	[XXDZ]  [nvarchar(180)]  NOT NULL,--学校地址 编号：JCXX010104 解释/举例：详细到门牌号 引用自JCTB010102 TXDZ 通信地址 C 180 NULL NULL 指包括省（自治区、直辖市）/地（市、州）/县（区、旗）/乡（镇）/街（村）/门牌号的详细地址 NULL
	[XXYZBM]  [nvarchar(6)]  NOT NULL,--学校邮政编码 编号：JCXX010105 引用自JCTB010101 YZBM 邮政编码 C 6 NULL NULL NULL NULL
	[XZQHM]  [nvarchar(6)]  NOT NULL,--行政区划码 编号：JCXX010106 值空间：GB/T2260 解释/举例：学校所在地行政区划码 
	[JXNY]  [nvarchar(6)]  NOT NULL,--建校年月 编号：JCXX010107 引用自JCTB010202 NY 年月 C 6 NULL GB/T7408 格式：YYYYMM，如：200604表示2006年4月 NULL
	[XQR]  [nvarchar(60)]  NULL,--校庆日 编号：JCXX010108 解释/举例：指学校的校庆日或校庆的时间段 
	[XXBXLXM]  [nvarchar(3)]  NOT NULL,--学校办学类型码 编号：JCXX010109 值空间：JY/T1001BXLX办学类型代码 
	[XXJBZM]  [nvarchar(3)]  NOT NULL,--学校举办者码 编号：JCXX010110 值空间：JY/T1001XXJYJGJBZ学校（教育机构）举办者代码 
	[XXZGBMM]  [nvarchar(3)]  NOT NULL,--学校主管部门码 编号：JCXX010111 值空间：JY/T1001XXJYJGJBZ学校（教育机构）举办者代码 
	[FDDBRH]  [nvarchar(20)]  NULL,--法定代表人号 编号：JCXX010112 解释/举例：法定代表人的工号 引用自JCTB020120 RYH 人员号 C 20 NULL NULL 学号或工号 NULL
	[FRZSH]  [nvarchar(20)]  NOT NULL,--法人证书号 编号：JCXX010113 
	[XZGH]  [nvarchar(20)]  NULL,--校长工号 编号：JCXX010114 引用自JCTB020120 RYH 人员号 C 20 NULL NULL 学号或工号 NULL
	[XZXM]  [nvarchar(36)]  NOT NULL,--校长姓名 编号：JCXX010115 引用自JCTB020101 XM 姓名 C 36 NULL NULL 例：张振华；买买提·阿不都热依木 NULL
	[DWFZRH]  [nvarchar(20)]  NULL,--党委负责人号 编号：JCXX010116 解释/举例：学校中共党组织负责人的工号 引用自JCTB020120 RYH 人员号 C 20 NULL NULL 学号或工号 NULL
	[ZZJGM]  [nvarchar(10)]  NULL,--组织机构码 编号：JCXX010117 解释/举例：学校组织机构代码(中华人民共和国事业法人代码)，由八位本体代码和一位校验码组成 
	[LXDH]  [nvarchar(30)]  NOT NULL,--联系电话 编号：JCXX010118 引用自JCTB010103 DH 电话 C 30 NULL NULL 即电话号码 NULL
	[CZDH]  [nvarchar(30)]  NOT NULL,--传真电话 编号：JCXX010119 引用自JCTB010105 CZDH 传真电话 C 30 NULL NULL NULL NULL
	[DZXX]  [nvarchar(40)]  NOT NULL,--电子信箱 编号：JCXX010120 引用自JCTB010106 DZXX 电子信箱 C 40 NULL NULL 电子邮件地址 NULL
	[ZYDZ]  [nvarchar(60)]  NULL,--主页地址 编号：JCXX010121 引用自JCTB010107 WLDZ 网络地址 C 60 NULL NULL 如主页、博客、微博网址 NULL
	[LSYG]  [text]  NULL,--历史沿革 编号：JCXX010122 解释/举例：指学校发展过程中的重大变化或事件 
CONSTRAINT [PK_JCXX0101] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[XXDM] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--校区基本数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCXX0102]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCXX0102](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[XQH]  [nvarchar(2)]  NOT NULL,--校区号 编号：JCXX010201 解释/举例：学校自编 
	[XQMC]  [nvarchar(30)]  NOT NULL,--校区名称 编号：JCXX010202 
	[XQDZ]  [nvarchar(180)]  NULL,--校区地址 编号：JCXX010203 引用自JCTB010102 TXDZ 通信地址 C 180 NULL NULL 指包括省（自治区、直辖市）/地（市、州）/县（区、旗）/乡（镇）/街（村）/门牌号的详细地址 NULL
	[XQYZBM]  [nvarchar(6)]  NOT NULL,--校区邮政编码 编号：JCXX010204 引用自JCTB010101 YZBM 邮政编码 C 6 NULL NULL NULL NULL
	[XQLXDH]  [nvarchar(30)]  NOT NULL,--校区联系电话 编号：JCXX010205 引用自JCTB010103 DH 电话 C 30 NULL NULL 即电话号码 NULL
	[XQCZDH]  [nvarchar(30)]  NULL,--校区传真电话 编号：JCXX010206 引用自JCTB010105 CZDH 传真电话 C 30 NULL NULL NULL NULL
	[XQFZRH]  [nvarchar(20)]  NULL,--校区负责人号 编号：JCXX010207 解释/举例：校区负责人的工号 引用自JCTB020120 RYH 人员号 C 20 NULL NULL 学号或工号 NULL
CONSTRAINT [PK_JCXX0102] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[XQH] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--班级数据类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCXX02]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCXX02](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[BH]  [nvarchar(10)]  NOT NULL,--班号 编号：JCXX020001 解释/举例：学校自编 
	[BJMC]  [nvarchar(20)]  NOT NULL,--班级名称 编号：JCXX020002 解释/举例：学校自编 
	[JBNY]  [nvarchar(6)]  NULL,--建班年月 编号：JCXX020003 引用自JCTB010202 NY 年月 C 6 NULL GB/T7408 格式：YYYYMM，如：200604表示2006年4月 NULL
	[SSNJ]  [nvarchar(10)]  NULL,--所属年级 编号：JCXX020004 引用自JCTB010401 NJ 年级 C 10 NULL NULL NULL NULL
	[BZRGH]  [nvarchar(20)]  NULL,--班主任工号 编号：JCXX020005 引用自JCTB020120 RYH 人员号 C 20 NULL NULL 学号或工号 NULL
	[BZXH]  [nvarchar(20)]  NULL,--班长学号 编号：JCXX020006 引用自JCTB020120 RYH 人员号 C 20 NULL NULL 学号或工号 NULL
CONSTRAINT [PK_JCXX02] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[BH] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--学生基本数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCXS0101]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCXS0101](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[XH]  [nvarchar(20)]  NOT NULL,--学号 编号：JCXS010101 解释/举例：学校自编 引用自JCTB020120 RYH 人员号 C 20 NULL NULL 学号或工号 NULL
	[XM]  [nvarchar(36)]  NOT NULL,--姓名 编号：JCTB020101 引用自JCTB020101 XM 姓名 C 36 NULL NULL 例：张振华；买买提·阿不都热依木 NULL
	[YWXM]  [nvarchar(60)]  NULL,--英文姓名 编号：JCTB020102 引用自JCTB020102 YWXM 英文姓名 C 60 NULL NULL 例：ChristopherFrancisPatten NULL
	[XMPY]  [nvarchar(60)]  NULL,--姓名拼音 编号：JCTB020103 引用自JCTB020103 XMPY 姓名拼音 C 60 NULL NULL 例：ZHANGZhenhua， NULL
	[CYM]  [nvarchar(36)]  NULL,--曾用名 编号：JCTB020104 引用自JCTB020104 CYM 曾用名 C 36 NULL NULL 指曾经正式使用过的姓名 NULL
	[XBM]  [nvarchar(1)]  NOT NULL,--性别码 编号：JCTB020105 引用自JCTB020105 XBM 性别码 C 1 NULL GB/T2261.1 NULL NULL
	[CSRQ]  [nvarchar(8)]  NOT NULL,--出生日期 编号：JCTB020106 引用自JCTB020106 CSRQ 出生日期 C 8 NULL NULL NULL JCTB010203
	[CSDM]  [nvarchar(6)]  NOT NULL,--出生地码 编号：JCTB020107 引用自JCTB020107 CSDM 出生地码 C 6 NULL GB/T2260 NULL NULL
	[JG]  [nvarchar(20)]  NULL,--籍贯 编号：JCTB020108 引用自JCTB020108 JG 籍贯 C 20 NULL NULL NULL NULL
	[MZM]  [nvarchar(2)]  NULL,--民族码 编号：JCTB020109 引用自JCTB020109 MZM 民族码 C 2 NULL GB/T3304 取用2位数字代码，如：01汉族，02蒙古族 NULL
	[GJDQM]  [nvarchar(3)]  NOT NULL,--国籍/地区码 编号：JCTB020110 引用自JCTB020110 GJDQM 国籍/地区码 C 3 NULL GB/T2659 采用三字母代码，如：CHN中国，USA美国 NULL
	[SFZJLXM]  [nvarchar(1)]  NULL,--身份证件类型码 编号：JCTB020111 引用自JCTB020111 SFZJLXM 身份证件类型码 C 1 NULL JY/T1001SFZJLX身份证件类型代码 NULL NULL
	[SFZJH]  [nvarchar(20)]  NULL,--身份证件号 编号：JCTB020112 引用自JCTB020112 SFZJH 身份证件号 C 20 NULL NULL 如：公民身份号码 NULL
	[HYZKM]  [nvarchar(2)]  NULL,--婚姻状况码 编号：JCTB020113 引用自JCTB020113 HYZKM 婚姻状况码 C 2 NULL GB/T2261.2 NULL NULL
	[GATQWM]  [nvarchar(2)]  NULL,--港澳台侨外码 编号：JCTB020114 引用自JCTB020114 GATQWM 港澳台侨外码 C 2 NULL JY/T1001GATQW港澳台侨外代码 NULL NULL
	[ZZMMM]  [nvarchar(2)]  NOT NULL,--政治面貌码 编号：JCTB020115 引用自JCTB020115 ZZMMM 政治面貌码 C 2 NULL GB/T4762 可采用简称，如：01中共党员，04民革会员 NULL
	[JKZKM]  [nvarchar(1)]  NOT NULL,--健康状况码 编号：JCTB020116 引用自JCTB020116 JKZKM 健康状况码 C 1 NULL GB/T2261.3 采用1位数字代码 NULL
	[XYZJM]  [nvarchar(2)]  NULL,--信仰宗教码 编号：JCTB020117 引用自JCTB020117 XYZJM 信仰宗教码 C 2 NULL GA214.12 NULL NULL
	[XXM]  [nvarchar(1)]  NULL,--血型码 编号：JCTB020118 引用自JCTB020118 XXM 血型码 C 1 NULL JY/T1001XX血型代码 NULL NULL
	[ZP]  [nvarchar(200)]  NULL,--照片 编号：JCTB020119 引用自JCTB020119 ZP 照片 B NULL NULL NULL 近期正面免冠证件照片 NULL
	[SFZJYXQ]  [nvarchar(17)]  NULL,--身份证件有效期 编号：JCTB020121 引用自JCTB020121 SFZJYXQ 身份证件有效期 C 17 NULL NULL NULL JCTB010207
	[SFDSZN]  [nvarchar(1)]  NULL,--是否独生子女 编号：JCTB020122 引用自JCTB020122 SFDSZN 是否独生子女 C 1 NULL JY/T1001SFBZ是否标志代码 1是独生子女0不是独生子女 NULL
CONSTRAINT [PK_JCXS0101] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[XH] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--学生来源数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCXS0110]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCXS0110](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[YXXMC]  [nvarchar(60)]  NULL,--原学校名称 编号：JCXS011001 解释/举例：入学前所在学校名称 引用自JCTB010302 DWMC 单位名称 C 60 NULL NULL NULL NULL
	[YXH]  [nvarchar(20)]  NULL,--原学号 编号：JCXS011002 引用自JCTB020120 RYH 人员号 C 20 NULL NULL 学号或工号 NULL
	[RXFSM]  [nvarchar(2)]  NOT NULL,--入学方式码 编号：JCXS011003 值空间：JY/T1001RXFS入学方式代码JY/T1001YJSRXFS研究生入学方式代码 
	[LYDQM]  [nvarchar(6)]  NOT NULL,--来源地区码 编号：JCXS011004 值空间：GB/T2260 
	[XSLYM]  [nvarchar(3)]  NOT NULL,--学生来源码 编号：JCXS011005 值空间：JY/T1001XSLY学生来源代码JY/T1001ZXXXSLY中小学学生来源代码 
	[JDFSM]  [nvarchar(1)]  NOT NULL,--就读方式码 编号：JCXS011006 值空间：JY/T1001JDFS就读方式代码 
CONSTRAINT [PK_JCXS0110] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--学籍基本数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCXS0201]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCXS0201](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[RXNY]  [nvarchar(6)]  NOT NULL,--入学年月 编号：JCXS020101 引用自JCTB010202 NY 年月 C 6 NULL GB/T7408 格式：YYYYMM，如：200604表示2006年4月 NULL
	[XSLBM]  [nvarchar(5)]  NOT NULL,--学生类别码 编号：JCXS020102 值空间：JY/T1001XSLB学生类别代码 
	[XZ]  [decimal(3,1)]  NOT NULL,--学制 编号：JCTB010402 引用自JCTB010402 XZ 学制 N 31 NULL NULL 以年为单位 NULL
	[ZYM]  [nvarchar(6)]  NULL,--专业码 编号：JCTB010407 引用自JCTB010407 ZYM 专业码 C 6 NULL 学位授予和人才培养学科目录专业学位授予和人才培养目录普通高等学校本科专业目录普通高等学校高职高专教育指导性专业目录（试行）中等职业学校专业目录 NULL NULL
	[SZBH]  [nvarchar(10)]  NULL,--所在班号 编号：JCXS020103 引用自JCXX020001 BH 班号 C 10 M NULL 学校自编 NULL
	[SZNJ]  [nvarchar(10)]  NULL,--所在年级 编号：JCXS020104 引用自JCTB010401 NJ 年级 C 10 NULL NULL NULL NULL
	[XSDQZTM]  [nvarchar(2)]  NOT NULL,--学生当前状态码 编号：JCXS020105 值空间：JY/T1001XSDQZT学生当前状态代码 
CONSTRAINT [PK_JCXS0201] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[RXNY] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--学籍异动数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCXS0202]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCXS0202](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[YDLBM]  [nvarchar(2)]  NOT NULL,--异动类别码 编号：JCXS020201 值空间：JY/T1001XJYDLB学籍异动类别代码 
	[YDRQ]  [nvarchar(8)]  NOT NULL,--异动日期 编号：JCXS020202 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[YDYYM]  [nvarchar(2)]  NOT NULL,--异动原因码 编号：JCXS020203 值空间：JY/T1001XJYDYY学籍异动原因代码 
	[SPRQ]  [nvarchar(8)]  NULL,--审批日期 编号：JCXS020204 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[SPWH]  [nvarchar(24)]  NULL,--审批文号 编号：JCXS020205 解释/举例：审批的正式文号，无正式文号不填 
	[YDLYXXM]  [nvarchar(10)]  NULL,--异动来源学校码 编号：JCXS020206 引用自JCXX010101 XXDM 学校代码 C 10 M 学校（机构）标识码 NULL NULL
	[YDQXXXM]  [nvarchar(10)]  NULL,--异动去向学校码 编号：JCXS020207 引用自JCXX010101 XXDM 学校代码 C 10 M 学校（机构）标识码 NULL NULL
	[YDSM]  [text]  NULL,--异动说明 编号：JCXS020208 
	[YYXSH]  [nvarchar(10)]  NULL,--原院系所号 编号：JCXS020209 引用自JCTB010301 DWH 单位号 C 10 NULL NULL 自行编码 NULL
	[YZYM]  [nvarchar(6)]  NULL,--原专业码 编号：JCXS020210 引用自JCTB010407 ZYM 专业码 C 6 NULL 学位授予和人才培养学科目录专业学位授予和人才培养目录普通高等学校本科专业目录普通高等学校高职高专教育指导性专业目录（试行）中等职业学校专业目录 NULL NULL
	[YBH]  [nvarchar(10)]  NULL,--原班号 编号：JCXS020211 引用自JCXX020001 BH 班号 C 10 M NULL 学校自编 NULL
	[YNJ]  [nvarchar(10)]  NULL,--原年级 编号：JCXS020212 引用自JCTB010401 NJ 年级 C 10 NULL NULL NULL NULL
	[YXZ]  [decimal(3,1)]  NULL,--原学制 编号：JCXS020213 引用自JCTB010402 XZ 学制 N 31 NULL NULL 以年为单位 NULL
	[XYXSH]  [nvarchar(10)]  NULL,--现院系所号 编号：JCXS020214 引用自JCTB010301 DWH 单位号 C 10 NULL NULL 自行编码 NULL
	[XZYM]  [nvarchar(6)]  NULL,--现专业码 编号：JCXS020215 引用自JCTB010407 ZYM 专业码 C 6 NULL 学位授予和人才培养学科目录专业学位授予和人才培养目录普通高等学校本科专业目录普通高等学校高职高专教育指导性专业目录（试行）中等职业学校专业目录 NULL NULL
	[XBH]  [nvarchar(10)]  NULL,--现班号 编号：JCXS020216 引用自JCXX020001 BH 班号 C 10 M NULL 学校自编 NULL
	[XNJ]  [nvarchar(10)]  NULL,--现年级 编号：JCXS020217 引用自JCTB010401 NJ 年级 C 10 NULL NULL NULL NULL
	[XXZ]  [decimal(3,1)]  NULL,--现学制 编号：JCXS020218 引用自JCTB010402 XZ 学制 N 31 NULL NULL 以年为单位 NULL
CONSTRAINT [PK_JCXS0202] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[YDLBM] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--成绩数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCXS0203]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCXS0203](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[XN]  [nvarchar(9)]  NOT NULL,--学年（度） 编号：JCTB010205 引用自JCTB010205 XN 学年（度） C 9 NULL NULL 格式：YYYY-YYYY，如：2001-2002 NULL
	[XQM]  [nvarchar(1)]  NOT NULL,--学期码 编号：JCTB010206 引用自JCTB010206 XQM 学期码 C 1 NULL JY/T1001XQ学期代码 NULL NULL
	[KSRQ]  [nvarchar(8)]  NOT NULL,--考试日期 编号：JCXS020301 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[KCH]  [nvarchar(10)]  NOT NULL,--课程号 编号：JCTB010403 引用自JCTB010403 KCH 课程号 C 10 NULL NULL 学校自编 NULL
	[PSCJ]  [decimal(5,1)]  NULL,--平时成绩 编号：JCXS020302 
	[KSFSM]  [nvarchar(1)]  NULL,--考试方式码 编号：JCTB010406 引用自JCTB010406 KSFSM 考试方式码 C 1 NULL JY/T1001KSFS考试方式代码 NULL NULL
	[KSXZM]  [nvarchar(2)]  NULL,--考试性质码 编号：JCXS020303 值空间：JY/T1001KSXZ考试性质代码 
	[KSXSM]  [nvarchar(1)]  NULL,--考试形式码 编号：JCXS020304 值空间：JY/T1001KSXS考试形式代码 
	[FSLKSCJ]  [decimal(5,1)]  NULL,--分数类考试成绩 编号：JCXS020305 
	[DJLKSCJ]  [nvarchar(1)]  NULL,--等级类考试成绩 编号：JCXS020306 解释/举例：学校自编 
	[KCCJ]  [decimal(5,1)]  NOT NULL,--课程成绩 编号：JCXS020307 解释/举例：指课程综合成绩 
	[KCDJCJM]  [nvarchar(1)]  NULL,--课程等级成绩码 编号：JCXS020308 解释/举例：学校自编 
	[RKJSGH]  [nvarchar(20)]  NULL,--任课教师工号 编号：JCXS020309 引用自JCTB020120 RYH 人员号 C 20 NULL NULL 学号或工号 NULL
	[CJLRRH]  [nvarchar(20)]  NULL,--成绩录入人号 编号：JCXS020310 解释/举例：录入人的工号 引用自JCTB020120 RYH 人员号 C 20 NULL NULL 学号或工号 NULL
	[CJLRRQ]  [nvarchar(8)]  NULL,--成绩录入日期 编号：JCXS020311 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[CJLRSJ]  [nvarchar(6)]  NULL,--成绩录入时间 编号：JCXS020312 引用自JCTB010204 SJ 时间 C 6 NULL GB/T7408 格式：hhmmss，如：141503表示下午2时15分3秒 NULL
CONSTRAINT [PK_JCXS0203] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[XN] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--奖励数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCXS0204]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCXS0204](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[JLMC]  [nvarchar(60)]  NOT NULL,--奖励名称 编号：JCXS020401 
	[JLJBM]  [nvarchar(2)]  NOT NULL,--奖励级别码 编号：JCXS020402 值空间：JY/T1001JB级别代码 
	[JLDJM]  [nvarchar(1)]  NOT NULL,--奖励等级码 编号：JCXS020403 值空间：JY/T1001JLDJ奖励等级代码 
	[HJLBM]  [nvarchar(1)]  NOT NULL,--获奖类别码 编号：JCXS020404 值空间：JY/T1001XSHJLB学生获奖类别代码 
	[JLYY]  [nvarchar(100)]  NULL,--奖励原因 编号：JCXS020405 
	[JLJE]  [money]  NULL,--奖励金额 编号：JCXS020406 解释/举例：单位：元 
	[JLWH]  [nvarchar(24)]  NULL,--奖励文号 编号：JCXS020407 解释/举例：指获奖的正式文号，无正式文号不填 
	[JLXND]  [nvarchar(9)]  NOT NULL,--奖励学年度 编号：JCXS020408 引用自JCTB010205 XN 学年（度） C 9 NULL NULL 格式：YYYY-YYYY，如：2001-2002 NULL
	[BJDW]  [nvarchar(60)]  NOT NULL,--颁奖单位 编号：JCXS020409 解释/举例：授予奖励的单位名称 引用自JCTB010302 DWMC 单位名称 C 60 NULL NULL NULL NULL
	[JLLXM]  [nvarchar(1)]  NULL,--奖励类型码 编号：JCXS020410 值空间：JY/T1001HJLX获奖类型代码 
	[JLFSM]  [nvarchar(1)]  NULL,--奖励方式码 编号：JCXS020411 值空间：JY/T1001JLFS奖励方式代码 
CONSTRAINT [PK_JCXS0204] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[JLMC] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--惩处数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCXS0205]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCXS0205](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[WJRQ]  [nvarchar(8)]  NULL,--违纪日期 编号：JCXS020501 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[WJJK]  [nvarchar(100)]  NULL,--违纪简况 编号：JCXS020502 
	[WJLBM]  [nvarchar(2)]  NOT NULL,--违纪类别码 编号：JCXS020503 值空间：JY/T1001WJLB违纪类别代码 
	[CFMCM]  [nvarchar(1)]  NOT NULL,--处分名称码 编号：JCXS020504 值空间：JY/T1001CFMC处分名称代码 
	[CFYY]  [nvarchar(100)]  NULL,--处分原因 编号：JCXS020505 
	[CFRQ]  [nvarchar(8)]  NULL,--处分日期 编号：JCXS020506 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[CFWH]  [nvarchar(24)]  NULL,--处分文号 编号：JCXS020507 解释/举例：处分的正式文号，无正式文号不填 
	[CFCXRQ]  [nvarchar(8)]  NULL,--处分撤消日期 编号：JCXS020508 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[CFCXWH]  [nvarchar(24)]  NULL,--处分撤消文号 编号：JCXS020509 解释/举例：撤消的正式文号，无正式文号不填 
CONSTRAINT [PK_JCXS0205] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--毕业数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCXS0301]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCXS0301](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[JSXYNY]  [nvarchar(6)]  NOT NULL,--结束学业年月 编号：JCXS030101 引用自JCTB010202 NY 年月 C 6 NULL GB/T7408 格式：YYYYMM，如：200604表示2006年4月 NULL
	[JSXYM]  [nvarchar(1)]  NOT NULL,--结束学业码 编号：JCXS030102 值空间：GB/T14946.1－2009附录A.27 
	[JSXYYYSM]  [nvarchar(100)]  NULL,--结束学业原因说明 编号：JCXS030103 
	[BYZSH]  [nvarchar(20)]  NULL,--毕业证书号 编号：JCXS030104 引用自JCTB020508 XLZSH 学历证书号 C 20 O NULL NULL NULL
	[XWZSH]  [nvarchar(20)]  NULL,--学位证书号 编号：JCXS030105 引用自JCTB020514 XWZSH 学位证书号 C 20 O NULL NULL NULL
	[JYZSH]  [nvarchar(20)]  NULL,--结业证书号 编号：JCXS030106 
	[HBYZSRQ]  [nvarchar(8)]  NULL,--获毕业证书日期 编号：JCXS030107 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[HXWZSRQ]  [nvarchar(8)]  NULL,--获学位证书日期 编号：JCXS030108 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[HJYZSRQ]  [nvarchar(8)]  NULL,--获结业证书日期 编号：JCXS030109 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
CONSTRAINT [PK_JCXS0301] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[JSXYNY] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--就业数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCXS0302]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCXS0302](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[XYSBH]  [nvarchar(10)]  NULL,--协议书编号 编号：JCXS030201 解释/举例：学校自编 
	[XYQDRQ]  [nvarchar(8)]  NULL,--协议签订日期 编号：JCXS030202 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[XYNX]  [nvarchar(1)]  NULL,--协议年限 编号：JCXS030203 
	[BDRQ]  [nvarchar(8)]  NULL,--报到日期 编号：JCXS030204 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[JYLSFSM]  [nvarchar(1)]  NULL,--就业落实方式码 编号：JCXS030205 值空间：JY/T1001JYLSFS就业落实方式代码 
	[BYQXM]  [nvarchar(2)]  NOT NULL,--毕业去向码 编号：JCXS030206 值空间：JY/T1001BYQX毕业去向代码JY/T1001GXBYQX高校毕业去向代码 解释/举例：中小学、中职学生采用BYQX毕业去向代码，高校毕业生采用GXBYQX高校毕业去向代码 
	[JSDW]  [nvarchar(60)]  NOT NULL,--接收单位 编号：JCXS030207 引用自JCTB010302 DWMC 单位名称 C 60 NULL NULL NULL NULL
	[DWSZDQHM]  [nvarchar(6)]  NULL,--单位所在地区划码 编号：JCXS030208 值空间：GB/T2260 解释/举例：接收单位所在地区划码 
	[DWZGBM]  [nvarchar(60)]  NULL,--单位主管部门 编号：JCXS030209 引用自JCTB010302 DWMC 单位名称 C 60 NULL NULL NULL NULL
	[SHDWXZM]  [nvarchar(2)]  NULL,--社会单位性质码 编号：JCXS030210 值空间：JY/T1001SHDWXZ社会单位性质代码 
	[DWJJXZM]  [nvarchar(3)]  NULL,--单位经济性质码 编号：JCXS030211 值空间：GB/T12402 
	[DWTGDDY]  [text]  NULL,--单位提供的待遇 编号：JCXS030212 
	[DAJSDZ]  [nvarchar(60)]  NULL,--档案接收地址 编号：JCXS030213 
	[JSDYZBM]  [nvarchar(6)]  NULL,--接收地邮政编码 编号：JCXS030214 引用自JCTB010101 YZBM 邮政编码 C 6 NULL NULL NULL NULL
	[GZGWXZM]  [nvarchar(1)]  NULL,--工作岗位性质码 编号：JCXS030215 值空间：JY/T1001GZGWXZ工作岗位性质代码 
	[DWHYM]  [nvarchar(4)]  NULL,--单位行业码 编号：JCXS030216 值空间：GB/T4754 
	[BDZH]  [nvarchar(11)]  NULL,--报到证号 编号：JCXS030217 
	[YRDWYRXSM]  [nvarchar(2)]  NULL,--用人单位用人形式码 编号：JCXS030218 值空间：GB/T16502 
	[PQF]  [money]  NULL,--派遣费 编号：JCXS030219 
CONSTRAINT [PK_JCXS0302] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--教职工基本数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCJG0101]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCJG0101](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[GH]  [nvarchar(20)]  NOT NULL,--工号 编号：JCJG010101 引用自JCTB020120 RYH 人员号 C 20 NULL NULL 学号或工号 NULL
	[XM]  [nvarchar(36)]  NOT NULL,--姓名 编号：JCTB020101 引用自JCTB020101 XM 姓名 C 36 NULL NULL 例：张振华；买买提·阿不都热依木 NULL
	[YWXM]  [nvarchar(60)]  NULL,--英文姓名 编号：JCTB020102 引用自JCTB020102 YWXM 英文姓名 C 60 NULL NULL 例：ChristopherFrancisPatten NULL
	[XMPY]  [nvarchar(60)]  NULL,--姓名拼音 编号：JCTB020103 引用自JCTB020103 XMPY 姓名拼音 C 60 NULL NULL 例：ZHANGZhenhua， NULL
	[CYM]  [nvarchar(36)]  NULL,--曾用名 编号：JCTB020104 引用自JCTB020104 CYM 曾用名 C 36 NULL NULL 指曾经正式使用过的姓名 NULL
	[XBM]  [nvarchar(1)]  NOT NULL,--性别码 编号：JCTB020105 引用自JCTB020105 XBM 性别码 C 1 NULL GB/T2261.1 NULL NULL
	[CSRQ]  [nvarchar(8)]  NOT NULL,--出生日期 编号：JCTB020106 引用自JCTB020106 CSRQ 出生日期 C 8 NULL NULL NULL JCTB010203
	[CSDM]  [nvarchar(6)]  NOT NULL,--出生地码 编号：JCTB020107 引用自JCTB020107 CSDM 出生地码 C 6 NULL GB/T2260 NULL NULL
	[JG]  [nvarchar(20)]  NULL,--籍贯 编号：JCTB020108 引用自JCTB020108 JG 籍贯 C 20 NULL NULL NULL NULL
	[MZM]  [nvarchar(2)]  NULL,--民族码 编号：JCTB020109 引用自JCTB020109 MZM 民族码 C 2 NULL GB/T3304 取用2位数字代码，如：01汉族，02蒙古族 NULL
	[GJDQM]  [nvarchar(3)]  NOT NULL,--国籍/地区码 编号：JCTB020110 引用自JCTB020110 GJDQM 国籍/地区码 C 3 NULL GB/T2659 采用三字母代码，如：CHN中国，USA美国 NULL
	[SFZJLXM]  [nvarchar(1)]  NOT NULL,--身份证件类型码 编号：JCTB020111 引用自JCTB020111 SFZJLXM 身份证件类型码 C 1 NULL JY/T1001SFZJLX身份证件类型代码 NULL NULL
	[SFZJH]  [nvarchar(20)]  NOT NULL,--身份证件号 编号：JCTB020112 引用自JCTB020112 SFZJH 身份证件号 C 20 NULL NULL 如：公民身份号码 NULL
	[HYZKM]  [nvarchar(2)]  NULL,--婚姻状况码 编号：JCTB020113 引用自JCTB020113 HYZKM 婚姻状况码 C 2 NULL GB/T2261.2 NULL NULL
	[GATQWM]  [nvarchar(2)]  NULL,--港澳台侨外码 编号：JCTB020114 引用自JCTB020114 GATQWM 港澳台侨外码 C 2 NULL JY/T1001GATQW港澳台侨外代码 NULL NULL
	[ZZMMM]  [nvarchar(2)]  NOT NULL,--政治面貌码 编号：JCTB020115 引用自JCTB020115 ZZMMM 政治面貌码 C 2 NULL GB/T4762 可采用简称，如：01中共党员，04民革会员 NULL
	[JKZKM]  [nvarchar(1)]  NULL,--健康状况码 编号：JCTB020116 引用自JCTB020116 JKZKM 健康状况码 C 1 NULL GB/T2261.3 采用1位数字代码 NULL
	[XYZJM]  [nvarchar(2)]  NULL,--信仰宗教码 编号：JCTB020117 引用自JCTB020117 XYZJM 信仰宗教码 C 2 NULL GA214.12 NULL NULL
	[XXM]  [nvarchar(1)]  NULL,--血型码 编号：JCTB020118 引用自JCTB020118 XXM 血型码 C 1 NULL JY/T1001XX血型代码 NULL NULL
	[ZP]  [nvarchar(200)]  NULL,--照片 编号：JCTB020119 引用自JCTB020119 ZP 照片 B NULL NULL NULL 近期正面免冠证件照片 NULL
	[SFZJYXQ]  [nvarchar(17)]  NULL,--身份证件有效期 编号：JCTB020121 引用自JCTB020121 SFZJYXQ 身份证件有效期 C 17 NULL NULL NULL JCTB010207
CONSTRAINT [PK_JCJG0101] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[GH] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--奖励数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCJG0110]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCJG0110](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[HJXM]  [nvarchar(60)]  NULL,--获奖项目 编号：JCJG011001 解释/举例：获得奖励的项目名称 
	[JLJBM]  [nvarchar(2)]  NOT NULL,--奖励级别码 编号：JCJG011002 值空间：JY/T1001JB级别代码 
	[JLDJM]  [nvarchar(1)]  NOT NULL,--奖励等级码 编号：JCJG011003 值空间：JY/T1001JLDJ奖励等级代码 
	[HJLBM]  [nvarchar(1)]  NULL,--获奖类别码 编号：JCJG011004 值空间：JY/T1001JSHJLB教师获奖类别代码 
	[JLFSM]  [nvarchar(1)]  NULL,--奖励方式码 编号：JCJG011005 值空间：JY/T1001JLFS奖励方式代码 解释/举例：给予荣誉或物质奖励的形式 
	[JLMC]  [nvarchar(60)]  NOT NULL,--奖励名称 编号：JCJG011006 
	[JLMCM]  [nvarchar(4)]  NULL,--奖励名称码 编号：JCJG011007 值空间：GB/T8563.1 
	[HJYY]  [text]  NULL,--获奖原因 编号：JCJG011008 
	[JLNR]  [text]  NULL,--奖励内容 编号：JCJG011009 解释/举例：获得奖励的具体内容描述 
	[BJDW]  [nvarchar(60)]  NULL,--颁奖单位 编号：JCJG011010 解释/举例：授予奖励的单位名称 引用自JCTB010302 DWMC 单位名称 C 60 NULL NULL NULL NULL
	[HJRQ]  [nvarchar(8)]  NULL,--获奖日期 编号：JCJG011011 解释/举例：颁布奖励的日期 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[RYCHM]  [nvarchar(3)]  NULL,--荣誉称号码 编号：JCJG011012 值空间：GB/T8563.2 
	[HJJSM]  [nvarchar(3)]  NOT NULL,--获奖角色码 编号：JCJG011013 值空间：JY/T1001JS角色代码 解释/举例：本人在获奖项目中的角色 
CONSTRAINT [PK_JCJG0110] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--惩处数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCJG0111]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCJG0111](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[CCMC]  [nvarchar(20)]  NOT NULL,--惩处名称 编号：JCJG011101 解释/举例：指受到党和国家某级组织或司法行政部门给予处分的名称 
	[JLCFM]  [nvarchar(2)]  NULL,--纪律处分码 编号：JCJG011102 值空间：GB/T8563.3 
	[CCYY]  [nvarchar(80)]  NULL,--惩处原因 编号：JCJG011103 
	[CCNR]  [nvarchar(80)]  NULL,--惩处内容 编号：JCJG011104 解释/举例：处分包括的具体内容 
	[CCDW]  [nvarchar(60)]  NOT NULL,--惩处单位 编号：JCJG011105 解释/举例：给予处分的组织机构名称 引用自JCTB010302 DWMC 单位名称 C 60 NULL NULL NULL NULL
	[CCWH]  [nvarchar(24)]  NULL,--惩处文号 编号：JCJG011106 解释/举例：给予处分的发文文号 
	[CCRQ]  [nvarchar(8)]  NOT NULL,--惩处日期 编号：JCJG011107 解释/举例：给予处分的日期 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[CCCXRQ]  [nvarchar(8)]  NOT NULL,--惩处撤销日期 编号：JCJG011108 解释/举例：处分的撤消日期 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[CCCXWH]  [nvarchar(24)]  NULL,--惩处撤消文号 编号：JCJG011109 解释/举例：撤消处分的发文文号 
	[CCCXYY]  [nvarchar(80)]  NULL,--惩处撤消原因 编号：JCJG011110 
CONSTRAINT [PK_JCJG0111] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[CCMC] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--语言能力数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCJG0201]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCJG0201](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[WGYZM]  [nvarchar(2)]  NULL,--外国语种码 编号：JCJG020101 值空间：GB/T4880.1 解释/举例：例：en英语，de德语 
	[WGYZSLCDM]  [nvarchar(1)]  NULL,--外国语种熟练程度码 编号：JCJG020102 值空间：GB/T6865 
	[ZGYZM]  [nvarchar(3)]  NULL,--中国语种码 编号：JCJG020103 值空间：GB/T4881 解释/举例：用三位数字代码 
	[ZGYZSLCDM]  [nvarchar(1)]  NULL,--中国语种熟练程度码 编号：JCJG020104 值空间：GB/T6865 
	[PTHSPDJM]  [nvarchar(30)]  NULL,--普通话水平等级码 编号：JCJG020105 值空间：JY/T1001PTHSPDJ普通话水平等级代码 解释/举例：参加普通话水平测试所达到的等级 
CONSTRAINT [PK_JCJG0201] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--专业技术职务数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCJG0202]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCJG0202](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[RZZGMCM]  [nvarchar(3)]  NULL,--任职资格名称码 编号：JCJG020201 值空间：GB/T8561 解释/举例：例：011教授 
	[QDZGTJM]  [nvarchar(1)]  NULL,--取得资格途径码 编号：JCJG020202 值空间：GB/T14946.1－2009附录A.11 解释/举例：指通过专业技术职务任职资格评审委员会评审或参加国家统一专业技术资格考试 
	[PSDW]  [nvarchar(60)]  NULL,--评审单位 编号：JCJG020203 解释/举例：专业技术职务任职资格评审委员会或其授权的组织机构名称 引用自JCTB010302 DWMC 单位名称 C 60 NULL NULL NULL NULL
	[PDRQ]  [nvarchar(8)]  NULL,--评定日期 编号：JCJG020204 解释/举例：经专业技术职务任职资格评审委员会评审或参加国家统一专业技术资格考试合格而取得的专业技术资格的日期 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[PRZWM]  [nvarchar(3)]  NOT NULL,--聘任职务码 编号：JCJG020205 值空间：GB/T8561 解释/举例：空白为未任任何专业技术职务 
	[PRDW]  [nvarchar(60)]  NULL,--聘任单位 编号：JCJG020206 解释/举例：聘任专业技术职务的具体单位名称 引用自JCTB010302 DWMC 单位名称 C 60 NULL NULL NULL NULL
	[PRQSRQ]  [nvarchar(8)]  NOT NULL,--聘任起始日期 编号：JCJG020207 解释/举例：专业技术职务聘任通知和聘书所认定的聘任开始日期 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[PRZZRQ]  [nvarchar(8)]  NOT NULL,--聘任终止日期 编号：JCJG020208 解释/举例：专业技术职务聘任通知和聘书所认定的聘任终止日期 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[PRQKM]  [nvarchar(1)]  NULL,--聘任情况码 编号：JCJG020209 值空间：JY/T1001PRQK聘任情况代码 解释/举例：当前专业技术职务的聘任情况 
	[JPRQ]  [nvarchar(8)]  NULL,--解聘日期 编号：JCJG020210 解释/举例：指非正常情况终止聘任的日期 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[JPYY]  [nvarchar(80)]  NULL,--解聘原因 编号：JCJG020211 解释/举例：解除聘任专业技术职务的原因 
CONSTRAINT [PK_JCJG0202] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--岗位证书数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCJG0203]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCJG0203](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[GWZSMC]  [nvarchar(40)]  NOT NULL,--岗位证书名称 编号：JCJG020301 解释/举例：由具有岗位评定资格单位考核并批准的岗位证书名称 
	[GWZSBH]  [nvarchar(20)]  NULL,--岗位证书编号 编号：JCJG020302 
	[BFDW]  [nvarchar(60)]  NOT NULL,--颁发单位 编号：JCJG020303 解释/举例：批准并签发岗位证书的组织机构名称 引用自JCTB010302 DWMC 单位名称 C 60 NULL NULL NULL NULL
	[BFRQ]  [nvarchar(8)]  NULL,--颁发日期 编号：JCJG020304 解释/举例：批准并签发岗位证书的日期 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
CONSTRAINT [PK_JCJG0203] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[GWZSMC] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--工人技术等级及职务数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCJG0204]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCJG0204](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[GRJSDJM]  [nvarchar(1)]  NOT NULL,--工人技术等级码 编号：JCJG020401 值空间：GB/T14946.1－2009附录A.13 解释/举例：指经工人技术考评组织评审并正式批准或经国家统一的职业技能鉴定机构考核合格取得的技术等级名称 
	[GRJSZWM]  [nvarchar(1)]  NULL,--工人技术职务码 编号：JCJG020402 值空间：GB/T14946.1－2009附录A.13 解释/举例：指正式聘任的工人技术职务名称 
	[GRGZM]  [nvarchar(2)]  NULL,--工人工种码 编号：JCJG020403 值空间：JY/T1001HYGZLB行业工种类别代码 
	[DJFZJG]  [nvarchar(60)]  NULL,--等级发证机关 编号：JCJG020404 引用自JCTB010302 DWMC 单位名称 C 60 NULL NULL NULL NULL
	[DJPDRQ]  [nvarchar(8)]  NULL,--等级评定日期 编号：JCJG020405 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
CONSTRAINT [PK_JCJG0204] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[GRJSDJM] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--党政职务数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCJG0205]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCJG0205](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[ZWMC]  [nvarchar(60)]  NOT NULL,--职务名称 编号：JCJG020501 
	[ZWMCM]  [nvarchar(4)]  NULL,--职务名称码 编号：JCJG020502 值空间：GB/T12403 
	[ZWLBM]  [nvarchar(2)]  NULL,--职务类别码 编号：JCJG020503 值空间：JY/T1001ZWLB职务类别代码 
	[ZWFLM]  [nvarchar(4)]  NULL,--职位分类码 编号：JCJG020504 值空间：GB/T14946.1－2009附录A.6 
	[ZWJBM]  [nvarchar(2)]  NOT NULL,--职务级别码 编号：JCJG020505 值空间：GB/T12407 
	[RZRQ]  [nvarchar(8)]  NOT NULL,--任职日期 编号：JCJG020506 解释/举例：由某级党委、国家行政机关及其组织、人事管理部门正式任命通知时间，或由某级人民代表大会（或人大常委会）、某级政协及人民团体会议选举通过及决定职务的生效日期 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[RZBM]  [nvarchar(60)]  NULL,--任职部门 编号：JCJG020507 
	[RZFSM]  [nvarchar(1)]  NULL,--任职方式码 编号：JCJG020508 值空间：GB/T14946.1-2009附录A.4 
	[RZYY]  [nvarchar(80)]  NULL,--任职原因 编号：JCJG020509 
	[RZWH]  [nvarchar(24)]  NULL,--任职文号 编号：JCJG020510 解释/举例：按干部管理权限，由某级党委、国家行政机关及其组织、人事管理部门、人大常委会或人民团体会议决定颁发的职务任命书或公告的文件编号 
	[RZPZDW]  [nvarchar(60)]  NULL,--任职批准单位 编号：JCJG020511 解释/举例：批准任职并签发任职通知的组织机构名称 引用自JCTB010302 DWMC 单位名称 C 60 NULL NULL NULL NULL
	[ZWBDLBM]  [nvarchar(1)]  NULL,--职务变动类别码 编号：JCJG020512 值空间：GB/T14946.1－2009附录A.7 
	[DQRZZK]  [nvarchar(1)]  NOT NULL,--当前任职状况 编号：JCJG020513 值空间：GB/T14946.1－2009附录A.8 
	[ZWPX]  [nvarchar(2)]  NULL,--职务排序 编号：JCJG020514 解释/举例：指领导干部在领导班子内排列的顺序号 
	[ZGHCSDGZ]  [nvarchar(40)]  NULL,--主管或从事的工作 编号：JCJG020515 
	[MZRQ]  [nvarchar(8)]  NULL,--免职日期 编号：JCJG020516 解释/举例：按干部管理权限，由某级党委、国家行政机关及其组织、人事管理部门、人大常委会或人民团体会议批准免去职务生效日期 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[MZFSM]  [nvarchar(1)]  NULL,--免职方式码 编号：JCJG020517 值空间：GB/T14946.1－2009附录A.9 
	[MZYYM]  [nvarchar(2)]  NULL,--免职原因码 编号：JCJG020518 值空间：GB/T14946.1－2009附录A.10 
	[MZWH]  [nvarchar(24)]  NULL,--免职文号 编号：JCJG020519 解释/举例：按干部管理权限，由某级党委、国家行政机关及其组织、人事管理部门、人大常委会或人民团体会议决定颁发的职务免职书或公告的文件编号 
	[MZPZDW]  [nvarchar(60)]  NULL,--免职批准单位 编号：JCJG020520 解释/举例：批准免职并签发免职通知的组织机构名称 引用自JCTB010302 DWMC 单位名称 C 60 NULL NULL NULL NULL
CONSTRAINT [PK_JCJG0205] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[ZWMC] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--社会兼职职务数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCJG0301]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCJG0301](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[SHJZM]  [nvarchar(4)]  NOT NULL,--社会兼职码 编号：JCJG030101 值空间：GB/T12408 解释/举例：指县级以上人大、政协、民主党派、工会、共青团、妇联、侨联、科协，中国科学院和中国工程院院士的兼职职务 
	[SHJZQSRQ]  [nvarchar(8)]  NOT NULL,--社会兼职起始日期 编号：JCJG030102 解释/举例：兼职职务任命的批准日期 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[SHJZZZRQ]  [nvarchar(8)]  NULL,--社会兼职终止日期 编号：JCJG030103 解释/举例：兼职职务的终止日期 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[SHJZCZYYM]  [nvarchar(1)]  NULL,--社会兼职辞职原因码 编号：JCJG030104 值空间：JY/T1001CQSHJZHXSTTZWYY辞去社会兼职或学术团体职务原因代码 
CONSTRAINT [PK_JCJG0301] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[SHJZM] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--学术团体兼职数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCJG0302]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCJG0302](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[XSTTMC]  [nvarchar(60)]  NOT NULL,--学术团体名称 编号：JCJG030201 解释/举例：兼职的学术团体名称 
	[XSTTJBM]  [nvarchar(1)]  NULL,--学术团体级别码 编号：JCJG030202 值空间：JY/T1001XSTTJB学术团体级别代码 
	[XXTTLSHZGDW]  [nvarchar(60)]  NULL,--学术团体隶属或主管单位 编号：JCJG030203 解释/举例：学术团体隶属或主管单位的名称 引用自JCTB010302 DWMC 单位名称 C 60 NULL NULL NULL NULL
	[XSJZZW]  [nvarchar(20)]  NOT NULL,--学术兼职职务 编号：JCJG030204 解释/举例：本人在学术团体内兼任的职务 
	[XSJZQSRQ]  [nvarchar(8)]  NULL,--学术兼职起始日期 编号：JCJG030205 解释/举例：兼任职务的批准日期 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[XSJZZZRQ]  [nvarchar(8)]  NULL,--学术兼职终止日期 编号：JCJG030206 解释/举例：兼任职务的终止日期 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[XSJZCZYYM]  [nvarchar(1)]  NULL,--学术兼职辞职原因码 编号：JCJG030207 值空间：JY/T1001CQSHJZHXSTTZWYY辞去社会兼职或学术团体职务原因代码 
CONSTRAINT [PK_JCJG0302] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[XSTTMC] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--国内进修学习数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCJG0401]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCJG0401](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[JXXZM]  [nvarchar(1)]  NOT NULL,--进修性质码 编号：JCJG040101 值空间：GB/T14946.1－2009附录A.24 
	[XXFSM]  [nvarchar(1)]  NOT NULL,--学习方式码 编号：JCJG040102 值空间：GB/T14946.1－2009附录A.25 
	[XXQSNY]  [nvarchar(6)]  NOT NULL,--学习起始年月 编号：JCJG040103 引用自JCTB010202 NY 年月 C 6 NULL GB/T7408 格式：YYYYMM，如：200604表示2006年4月 NULL
	[XXZZNY]  [nvarchar(6)]  NULL,--学习终止年月 编号：JCJG040104 引用自JCTB010202 NY 年月 C 6 NULL GB/T7408 格式：YYYYMM，如：200604表示2006年4月 NULL
	[ZXS]  [decimal(3)]  NULL,--总学时 编号：JCJG040105 解释/举例：指实际学习的累计时间 
	[XXNR]  [nvarchar(80)]  NULL,--学习内容 编号：JCJG040106 
	[JXBMC]  [nvarchar(40)]  NOT NULL,--进修班名称 编号：JCJG040107 
	[ZBDW]  [nvarchar(60)]  NOT NULL,--主办单位 编号：JCJG040108 解释/举例：主办和组织学习的单位名称 引用自JCTB010302 DWMC 单位名称 C 60 NULL NULL NULL NULL
	[ZBDWXZM]  [nvarchar(1)]  NULL,--主办单位性质码 编号：JCJG040109 值空间：JY/T1001SHDWXZ社会单位性质代码 
	[ZXDW]  [nvarchar(60)]  NULL,--在学单位 编号：JCJG040110 引用自JCTB010302 DWMC 单位名称 C 60 NULL NULL NULL NULL
	[ZXDWLBM]  [nvarchar(1)]  NULL,--在学单位类别码 编号：JCJG040111 值空间：GB/T14946.1－2009附录A.26 
	[JXJGM]  [nvarchar(1)]  NULL,--进修结果码 编号：JCJG040112 值空间：GB/T14946.1－2009附录A.27 
CONSTRAINT [PK_JCJG0401] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[JXXZM] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--出国（境）进修学习数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCJG0402]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCJG0402](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[CGRQ]  [nvarchar(8)]  NOT NULL,--出国（境）日期 编号：JCJG040201 解释/举例：出国（境）日期 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[CGMDM]  [nvarchar(3)]  NULL,--出国（境）目的码 编号：JCJG040202 值空间：JY/T1001CGMD出国目的代码 
	[CGGBM]  [nvarchar(3)]  NOT NULL,--出国（境）国别码 编号：JCJG040203 值空间：GB/T2659 解释/举例：用三字母国别代码，如CHN中国 
	[SQDWYWMC]  [nvarchar(180)]  NOT NULL,--所去单位英文名称 编号：JCJG040204 引用自JCTB010303 DWYWMC 单位英文名称 C 180 NULL NULL NULL NULL
	[SQDWZWMC]  [nvarchar(60)]  NULL,--所去单位中文名称 编号：JCJG040205 引用自JCTB010302 DWMC 单位名称 C 60 NULL NULL NULL NULL
	[PCDW]  [nvarchar(60)]  NULL,--派出单位 编号：JCJG040206 解释/举例：派遣本人出国（境）学习、工作的单位名称 引用自JCTB010302 DWMC 单位名称 C 60 NULL NULL NULL NULL
	[TZMC]  [nvarchar(40)]  NULL,--团组名称 编号：JCJG040207 解释/举例：出国（境）工作或学习派出团组的具体名称 
	[CGJFLYM]  [nvarchar(1)]  NULL,--出国（境）经费来源码 编号：JCJG040208 值空间：GB/T14946.1－2009附录A.28 
	[SPDW]  [nvarchar(60)]  NULL,--审批单位 编号：JCJG040209 解释/举例：批准出国（境）并签发审批文件的上级主管部门名称 引用自JCTB010302 DWMC 单位名称 C 60 NULL NULL NULL NULL
	[SPRQ]  [nvarchar(8)]  NULL,--审批日期 编号：JCJG040210 解释/举例：批准出国（境）并签发审批文件的具体日期 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[SPWH]  [nvarchar(24)]  NULL,--审批文号 编号：JCJG040211 解释/举例：批准出国（境）学习工作的单位签发的批准文件编号 
	[PZQX]  [nvarchar(3)]  NULL,--批准期限 编号：JCJG040212 解释/举例：批准在国（境）外滞留的期限，单位：月 
	[XXGZNR]  [nvarchar(80)]  NULL,--学习工作内容 编号：JCJG040213 解释/举例：出国（境）学习工作的主要内容 
	[XXGZCJ]  [text]  NULL,--学习工作成绩 编号：JCJG040214 解释/举例：出国（境）学习工作的完成情况和主要成绩 
	[YHGRQ]  [nvarchar(8)]  NULL,--应回国日期 编号：JCJG040215 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[SHGRQ]  [nvarchar(8)]  NULL,--实回国日期 编号：JCJG040216 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[HZHTXZH]  [nvarchar(20)]  NULL,--护照号/通行证号 编号：JCJG040217 解释/举例：通行证即“往来港澳通行证” 
	[ZJYXQ]  [nvarchar(17)]  NULL,--证件有效期 编号：JCJG040218 引用自JCTB010207 YXQ 有效期 C 17 NULL NULL 格式：YYYYMMDD-YYYYMMDD NULL
CONSTRAINT [PK_JCJG0402] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[CGRQ] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--组织考察数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCJG0501]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCJG0501](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[KCLBM]  [nvarchar(1)]  NULL,--考察（考核）类别码 编号：JCJG050101 值空间：GB/T14946.1－2009附录A.18 
	[KCRQ]  [nvarchar(8)]  NOT NULL,--考察（考核）日期 编号：JCJG050102 解释/举例：组织、干部、人事部门组派的考察组进行考察（考核）的日期 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[KCYJ]  [text]  NOT NULL,--考察（考核）意见 编号：JCJG050103 解释/举例：组织、干部、人事部门组派的考察组对德、才、勤、绩诸方面的评价意见 
	[KCJGM]  [nvarchar(1)]  NOT NULL,--考察（考核）结果码 编号：JCJG050104 值空间：GB/T14946.1－2009附录A.19 解释/举例：经考核委员会或考察小组审核后，由部门负责人确定的考核结论 
	[KCZZJKCR]  [nvarchar(120)]  NOT NULL,--考察（考核）组织及考察人 编号：JCJG050105 解释/举例：组织、干部、人事部门组派的考察组名称及直接参与考核的考察组成员姓名，以及确定考察结论的部门负责人姓名 
CONSTRAINT [PK_JCJG0501] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--教职工考核数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCJG0502]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCJG0502](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[KHLBM]  [nvarchar(1)]  NULL,--考核类别码 编号：JCJG050201 值空间：GB/T14946.1－2009附录A.18 
	[KHRQ]  [nvarchar(8)]  NOT NULL,--考核日期 编号：JCJG050202 解释/举例：业务考核的具体日期 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[KHNR]  [nvarchar(80)]  NULL,--考核内容 编号：JCJG050203 解释/举例：业务考核的主要内容 
	[KHJGM]  [nvarchar(1)]  NOT NULL,--考核结果码 编号：JCJG050204 值空间：GB/T14946.1－2009附录A.19 
	[KHFZRGH]  [nvarchar(20)]  NULL,--考核负责人工号 编号：JCJG050205 解释/举例：负责业务考核的人员工号 引用自JCTB020120 RYH 人员号 C 20 NULL NULL 学号或工号 NULL
	[KHPY]  [text]  NULL,--考核评语 编号：JCJG050206 解释/举例：业务考核的结论和评语 
	[KHBM]  [nvarchar(60)]  NULL,--考核部门 编号：JCJG050207 解释/举例：负责考核的部门名称 
CONSTRAINT [PK_JCJG0502] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--工人考技考工数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCJG0503]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCJG0503](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[KGNY]  [nvarchar(6)]  NOT NULL,--考工年月 编号：JCJG050301 解释/举例：参加招工或技术级别考试的年月 引用自JCTB010202 NY 年月 C 6 NULL GB/T7408 格式：YYYYMM，如：200604表示2006年4月 NULL
	[KHGZM]  [nvarchar(2)]  NOT NULL,--考核工种码 编号：JCJG050302 值空间：JY/T1001HYGZLB行业工种类别代码 
	[KGBM]  [nvarchar(60)]  NOT NULL,--考工部门 编号：JCJG050303 解释/举例：主管考试的部门 
	[JSJB]  [nvarchar(20)]  NULL,--技术级别 编号：JCJG050304 解释/举例：报考的技术级别 
	[KGZSH]  [nvarchar(20)]  NULL,--考工证书号 编号：JCJG050305 解释/举例：考工考技获得的证书号 
	[KGPY]  [text]  NULL,--考工评语 编号：JCJG050306 解释/举例：考工考技的评语 
	[KGCJ]  [nvarchar(20)]  NULL,--考工成绩 编号：JCJG050307 解释/举例：分数类或等级类成绩 
CONSTRAINT [PK_JCJG0503] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[KGNY] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--来源数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCJG0601]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCJG0601](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[LDWRQ]  [nvarchar(8)]  NOT NULL,--来单位日期 编号：JCJG060101 解释/举例：来单位工作的实际报到年月，以人事部门记载为准 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[LYM]  [nvarchar(2)]  NOT NULL,--来源码 编号：JCJG060102 值空间：JY/T1001JZGLY教职工来源代码JY/T1001GXJZGLY高校教职工来源代码 解释/举例：中小学、中职和幼儿园采用JZGLY教职工来源代码，高校采用GXJZGLY高校教职工来源代码 
	[LYDQM]  [nvarchar(6)]  NOT NULL,--来源地区码 编号：JCJG060103 值空间：GB/T2260 
	[LDWYY]  [nvarchar(80)]  NULL,--来单位原因 编号：JCJG060104 
	[YDWMC]  [nvarchar(60)]  NULL,--原单位名称 编号：JCJG060105 引用自JCTB010302 DWMC 单位名称 C 60 NULL NULL NULL NULL
	[YDZZWM]  [nvarchar(4)]  NULL,--原党政职务码 编号：JCJG060106 值空间：GB/T12403 
	[YJSZWM]  [nvarchar(3)]  NULL,--原技术职务码 编号：JCJG060107 值空间：GB/T8561 解释/举例：空白为未任任何专业技术职务 
	[YCSXKM]  [nvarchar(5)]  NULL,--原从事学科码 编号：JCJG060108 值空间：GB/T13745 解释/举例：采用一、二级分类代码 
	[YGZZE]  [money]  NOT NULL,--原工资总额 编号：JCJG060109 
	[YJHLJT]  [money]  NULL,--原教护龄津贴 编号：JCJG060110 
CONSTRAINT [PK_JCJG0601] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[LDWRQ] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--部门调动数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCJG0602]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCJG0602](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[BMDDRQ]  [nvarchar(8)]  NOT NULL,--部门调动日期 编号：JCJG060201 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[BMDDYY]  [nvarchar(80)]  NULL,--部门调动原因 编号：JCJG060202 
	[ZZNDCBMH]  [nvarchar(10)]  NOT NULL,--组织内调出部门号 编号：JCJG060203 解释/举例：组织自行编号：组织内部调动后原院系所部中心号 
	[ZZNDRBMH]  [nvarchar(10)]  NOT NULL,--组织内调入部门号 编号：JCJG060204 解释/举例：组织自行编号：组织内部调动后现院系所部中心号 
	[GZZYRQ]  [nvarchar(8)]  NULL,--工资转移日期 编号：JCJG060205 解释/举例：个人劳资转移日期 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[WSDAH]  [nvarchar(10)]  NULL,--文书档案号 编号：JCJG060206 解释/举例：跟个人变动有关的文件档案编号 
CONSTRAINT [PK_JCJG0602] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[BMDDRQ] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--离岗数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCJG0603]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCJG0603](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[LGRQ]  [nvarchar(8)]  NULL,--离岗日期 编号：JCJG060301 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[LGYYM]  [nvarchar(1)]  NULL,--离岗原因码 编号：JCJG060302 值空间：JY/T1001LGYY离岗原因代码 
	[FGRQ]  [nvarchar(8)]  NULL,--返岗日期 编号：JCJG060303 解释/举例：返回工作岗位的日期 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[GZZYRQ]  [nvarchar(8)]  NULL,--工资转移日期 编号：JCJG060205 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[WSDAH]  [nvarchar(10)]  NULL,--文书档案号 编号：JCJG060206 引用自JCJG060206 WSDAH 文书档案号 C 10 O NULL 跟个人变动有关的文件档案编号 NULL
CONSTRAINT [PK_JCJG0603] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--病休数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCJG0604]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCJG0604](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[BXQSRQ]  [nvarchar(8)]  NOT NULL,--病休起始日期 编号：JCJG060401 解释/举例：因病休假的起始日期 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[BXZDYY]  [nvarchar(60)]  NULL,--病休诊断医院 编号：JCJG060402 解释/举例：病休诊断的医院名称 引用自JCTB010302 DWMC 单位名称 C 60 NULL NULL NULL NULL
	[BXZDZM]  [text]  NULL,--病休诊断证明 编号：JCJG060403 解释/举例：医院开据的病休诊断证明 
	[HFGZRQ]  [nvarchar(8)]  NOT NULL,--恢复工作日期 编号：JCJG060404 解释/举例：病休恢复工作的日期 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[KFZDYY]  [nvarchar(60)]  NULL,--康复诊断医院 编号：JCJG060405 解释/举例：进行康复诊断的医院名称 引用自JCTB010302 DWMC 单位名称 C 60 NULL NULL NULL NULL
	[KFZDZM]  [text]  NULL,--康复诊断证明 编号：JCJG060406 解释/举例：医院开具的康复诊断证明 
	[GZZYRQ]  [nvarchar(8)]  NULL,--工资转移日期 编号：JCJG060205 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[WSDAH]  [nvarchar(10)]  NULL,--文书档案号 编号：JCJG060206 引用自JCJG060206 WSDAH 文书档案号 C 10 O NULL 跟个人变动有关的文件档案编号 NULL
CONSTRAINT [PK_JCJG0604] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[BXQSRQ] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--离职数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCJG0701]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCJG0701](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[LZRQ]  [nvarchar(8)]  NOT NULL,--离职日期 编号：JCJG070101 解释/举例：离开本单位的日期 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[LZYYM]  [nvarchar(2)]  NOT NULL,--离职原因码 编号：JCJG070102 值空间：GB/T14946.1－2009附录A.10 
	[LZQX]  [nvarchar(60)]  NULL,--离职去向 编号：JCJG070103 解释/举例：离开本单位工作岗位后的去向 
CONSTRAINT [PK_JCJG0701] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[LZRQ] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--离退休数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCJG0702]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCJG0702](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[LTLBM]  [nvarchar(1)]  NOT NULL,--离退类别码 编号：JCJG070201 值空间：GB/T14946.1-2009附录A.62 
	[LTQSRQ]  [nvarchar(8)]  NOT NULL,--离退起始日期 编号：JCJG070202 解释/举例：由组织、人事部门批准的离退休日期 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[LTHXSJBM]  [nvarchar(3)]  NOT NULL,--离退后享受级别码 编号：JCJG070203 值空间：GB/T12407 
	[LTXFZFDW]  [nvarchar(60)]  NULL,--离退休费支付单位 编号：JCJG070204 解释/举例：离退休后，支付离退休费的单位名称 引用自JCTB010302 DWMC 单位名称 C 60 NULL NULL NULL NULL
	[LTHGLDW]  [nvarchar(60)]  NULL,--离退后管理单位 编号：JCJG070205 解释/举例：离退后的具体管理单位名称 
	[YDAZDD]  [nvarchar(60)]  NULL,--异地安置地点 编号：JCJG070206 解释/举例：离退后安置到异地生活的地点 
CONSTRAINT [PK_JCJG0702] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[LTLBM] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--返聘数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCJG0703]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCJG0703](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[FPQSRQ]  [nvarchar(8)]  NULL,--返聘起始日期 编号：JCJG070301 解释/举例：离退休后被重新聘任工作的起始日期 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[FPZZRQ]  [nvarchar(8)]  NULL,--返聘终止日期 编号：JCJG070302 解释/举例：离退休后被重新聘任工作的终止日期 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[FPDWH]  [nvarchar(10)]  NOT NULL,--返聘单位号 编号：JCJG070303 解释/举例：重新聘任的工作单位号，学校自编 引用自JCTB010301 DWH 单位号 C 10 NULL NULL 自行编码 NULL
	[FPGW]  [nvarchar(20)]  NULL,--返聘岗位 编号：JCJG070304 解释/举例：重新聘任的工作岗位 
	[FPCJ]  [money]  NULL,--返聘酬金 编号：JCJG070305 解释/举例：重新聘任工作的劳动报酬，单位：元/月 
	[FPJLY]  [nvarchar(20)]  NULL,--返聘金来源 编号：JCJG070306 解释/举例：返聘资金的经费来源 
	[FPGZL]  [decimal(4)]  NULL,--返聘工作量 编号：JCJG070307 解释/举例：单位：小时/月 
CONSTRAINT [PK_JCJG0703] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--补助性收入数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCBX0101]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCBX0101](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[JYSYFBK]  [money]  NULL,--教育事业费拨款 编号：JCBX010101 解释/举例：单位：元 
	[QTBK]  [money]  NULL,--其他拨款 编号：JCBX010102 解释/举例：单位：元 
	[JYFFJ]  [money]  NULL,--教育费附加 编号：JCBX010103 解释/举例：单位：元 
	[DFJYFFJ]  [money]  NULL,--地方教育费附加 编号：JCBX010104 解释/举例：单位：元 
	[DFJJ]  [money]  NULL,--地方基金 编号：JCBX010105 解释/举例：单位：元 
	[JBJSBK]  [money]  NULL,--基本建设拨款 编号：JCBX010106 解释/举例：单位：元 
CONSTRAINT [PK_JCBX0101] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--经营性收入数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCBX0102]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCBX0102](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[XZFSR]  [money]  NULL,--学杂费收入 编号：JCBX010201 解释/举例：单位：元 
	[JYSR]  [money]  NULL,--经营收入 编号：JCBX010202 解释/举例：单位：元 
	[FSDWSJSR]  [money]  NULL,--附属单位上缴收入 编号：JCBX010203 解释/举例：单位：元 
CONSTRAINT [PK_JCBX0102] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--其他收入数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCBX0103]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCBX0103](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[GATJHWJKSR]  [money]  NULL,--港澳台及海外捐款收入 编号：JCBX010301 解释/举例：单位：元 
	[QTJKSR]  [money]  NULL,--其他捐款收入 编号：JCBX010302 解释/举例：单位：元 
	[ZCCZSR]  [money]  NULL,--资产处置收入 编号：JCBX010303 解释/举例：单位：元 
	[LHBXSR]  [money]  NULL,--联合办学（班）收入 编号：JCBX010304 解释/举例：单位：元 
	[QTPXBKSR]  [money]  NULL,--其他培训拨款收入 编号：JCBX010305 解释/举例：指从非本级财政或其他政府部门取得的用于农民工培训、复转军人培训、岗前培训等的财政拨款，单位：元 
CONSTRAINT [PK_JCBX0103] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--工资福利支出数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCBX0104]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCBX0104](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[JBGZ]  [money]  NULL,--基本工资 编号：JCBX010401 解释/举例：单位：元 
	[JTBT]  [money]  NULL,--津贴补贴 编号：JCBX010402 解释/举例：单位：元 
	[JJJXGZ]  [money]  NULL,--奖金及绩效工资 编号：JCBX010403 解释/举例：单位：元 
	[SHBZJF]  [money]  NULL,--社会保障缴费 编号：JCBX010404 解释/举例：单位：元 
	[QTGZFLXZC]  [money]  NULL,--其他工资福利性支出 编号：JCBX010405 解释/举例：单位：元 
CONSTRAINT [PK_JCBX0104] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--对个人和家庭的补助性支出数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCBX0105]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCBX0105](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[LTXF]  [money]  NULL,--离退休费 编号：JCBX010501 解释/举例：单位：元 
	[YLF]  [money]  NULL,--医疗费 编号：JCBX010502 解释/举例：单位：元 
	[ZXJ]  [money]  NULL,--助学金 编号：JCBX010503 解释/举例：单位：元 
	[QTBZXZC]  [money]  NULL,--其他补助性支出 编号：JCBX010504 解释/举例：其他对个人和家庭的补助性支出，单位：元 
CONSTRAINT [PK_JCBX0105] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--商品和服务性支出数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCBX0106]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCBX0106](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[BGF]  [money]  NULL,--办公费 编号：JCBX010601 解释/举例：单位：元 
	[SF]  [money]  NULL,--水费 编号：JCBX010602 解释/举例：单位：元 
	[DF]  [money]  NULL,--电费 编号：JCBX010603 解释/举例：单位：元 
	[YDF]  [money]  NULL,--邮电费 编号：JCBX010604 解释/举例：单位：元 
	[QNF]  [money]  NULL,--取暖费 编号：JCBX010605 解释/举例：单位：元 
	[CLF]  [money]  NULL,--差旅费 编号：JCBX010606 解释/举例：单位：元 
	[WXF]  [money]  NULL,--维修（护）费 编号：JCBX010607 解释/举例：单位：元 
	[PXF]  [money]  NULL,--培训费 编号：JCBX010608 解释/举例：单位：元 
	[ZYCLF]  [money]  NULL,--专用材料费 编号：JCBX010609 解释/举例：单位：元 
	[LWF]  [money]  NULL,--劳务费 编号：JCBX010610 解释/举例：单位：元 
	[FLF]  [money]  NULL,--福利费 编号：JCBX010611 解释/举例：单位：元 
	[QTSPHFWXFY]  [money]  NULL,--其他商品和服务性费用 编号：JCBX010612 解释/举例：单位：元 
CONSTRAINT [PK_JCBX0106] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--债务利息支出数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCBX0107]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCBX0107](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[XGJYHJKFX]  [money]  NULL,--向国家银行借款付息 编号：JCBX010701 解释/举例：单位：元 
	[QTGNJKFX]  [money]  NULL,--其他国内借款付息 编号：JCBX010702 解释/举例：单位：元 
	[XGWZFJKFX]  [money]  NULL,--向国外政府借款付息 编号：JCBX010703 解释/举例：单位：元 
	[XGJZZJKFX]  [money]  NULL,--向国际组织借款付息 编号：JCBX010704 解释/举例：单位：元 
	[QTGWJKFX]  [money]  NULL,--其他国外借款付息 编号：JCBX010705 解释/举例：单位：元 
CONSTRAINT [PK_JCBX0107] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--其他资本性支出数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCBX0108]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCBX0108](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[BGSBGZF]  [money]  NULL,--办公设备购置费 编号：JCBX010801 解释/举例：单位：元 
	[ZYSBGZF]  [money]  NULL,--专用设备购置费 编号：JCBX010802 解释/举例：单位：元 
	[JTGJGZF]  [money]  NULL,--交通工具购置费 编号：JCBX010803 解释/举例：单位：元 
	[XXWLGJF]  [money]  NULL,--信息网络购建费 编号：JCBX010804 解释/举例：单位：元 
	[FWJZGJF]  [money]  NULL,--房屋建筑物购建费 编号：JCBX010805 解释/举例：单位：元 
	[DXXSF]  [money]  NULL,--大型修缮费 编号：JCBX010806 解释/举例：单位：元 
	[JBJSZCF]  [money]  NULL,--基本建设支出费 编号：JCBX010807 解释/举例：单位：元 
CONSTRAINT [PK_JCBX0108] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--债务资金来源数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCBX0109]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCBX0109](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[GWJRJGDK]  [money]  NULL,--国外金融机构贷款 编号：JCBX010901 解释/举例：不含世界银行贷款，单位：元 
	[GNJRJGDK]  [money]  NULL,--国内金融机构贷款 编号：JCBX010902 解释/举例：单位：元 
	[QSGDWGCK]  [money]  NULL,--欠施工单位工程款 编号：JCBX010903 解释/举例：单位：元 
	[JGRK]  [money]  NULL,--借（欠）个人款 编号：JCBX010904 解释/举例：单位：元 
	[JQTDWK]  [money]  NULL,--借（欠）其他单位款 编号：JCBX010905 解释/举例：单位：元 
	[QQTLYK]  [money]  NULL,--欠其他来源款 编号：JCBX010906 解释/举例：单位：元 
CONSTRAINT [PK_JCBX0109] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--学校用地数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCBX0201]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCBX0201](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[FWJZWGJHDXXSZW]  [money]  NULL,--房屋建筑物购建和大型修缮债务 编号：JCBX011001 解释/举例：单位：元 
	[TDZYFZW]  [money]  NULL,--土地征用费债务 编号：JCBX011002 解释/举例：单位：元 
	[SBGZZW]  [money]  NULL,--设备购置债务 编号：JCBX011003 解释/举例：单位：元 
	[QTYTZW]  [money]  NULL,--其他用途债务 编号：JCBX011004 解释/举例：单位：元 
	[YDBH]  [nvarchar(2)]  NOT NULL,--用地编号 编号：JCBX020101 解释/举例：学校自编 
	[TDCQM]  [nvarchar(1)]  NOT NULL,--土地产权码 编号：JCBX020102 值空间：JY/T1001CQ产权代码 
	[TDSYZKM]  [nvarchar(1)]  NOT NULL,--土地使用状况码 编号：JCBX020103 值空间：JY/T1001SYZK使用状况代码 
	[XQH]  [nvarchar(2)]  NULL,--校区号 编号：JCXX010201 引用自JCXX010201 XQH 校区号 C 2 M NULL 学校自编 NULL
	[ZDYTM]  [nvarchar(2)]  NOT NULL,--占地用途码 编号：JCBX020104 值空间：JY/T1001ZDYT占地用途代码 
	[ZDMJ]  [decimal(8)]  NOT NULL,--占地面积 编号：JCBX020105 解释/举例：单位：平方米 
	[YDDZ]  [text]  NULL,--用地地址 编号：JCBX020106 解释/举例：对用地地址等的说明 
	[YDBZ]  [text]  NULL,--用地备注 编号：JCBX020106 解释/举例：有关学校用地的其他说明 
	[TDZH]  [nvarchar(60)]  NULL,--土地证号 编号：JCBX020107 
CONSTRAINT [PK_JCBX0201] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--学校建筑物基本数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCBX0202]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCBX0202](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[JZWH]  [nvarchar(6)]  NOT NULL,--建筑物号 编号：JCBX020201 解释/举例：学校自编 
	[JZWMC]  [nvarchar(30)]  NOT NULL,--建筑物名称 编号：JCBX020202 解释/举例：指建筑物的汉字名称 
	[FWCQM]  [nvarchar(1)]  NOT NULL,--房屋产权码 编号：JCBX020203 值空间：JY/T1001CQ产权代码 
	[SYZKM]  [nvarchar(1)]  NOT NULL,--使用状况码 编号：JCBX020204 值空间：JY/T1001SYZK使用状况代码 
	[XQH]  [nvarchar(2)]  NULL,--校区号 编号：JCXX010201 引用自JCXX010201 XQH 校区号 C 2 M NULL 学校自编 NULL
	[JZWFLM]  [nvarchar(1)]  NOT NULL,--建筑物分类码 编号：JCBX020205 值空间：JY/T1001JZWFL建筑物分类代码 
	[JZWJGM]  [nvarchar(1)]  NULL,--建筑物结构码 编号：JCBX020206 值空间：JY/T1001JZWJG建筑物结构代码 
	[JZWCS]  [decimal(2)]  NULL,--建筑物层数 编号：JCBX020207 解释/举例：含地下室，单位：层 
	[JCNY]  [nvarchar(6)]  NULL,--建成年月 编号：JCBX020208 引用自JCTB010202 NY 年月 C 6 NULL GB/T7408 格式：YYYYMM，如：200604表示2006年4月 NULL
	[JZWTZZE]  [money]  NOT NULL,--建筑物投资总额 编号：JCBX020209 解释/举例：单位：元 
	[JFLYM]  [nvarchar(1)]  NOT NULL,--经费来源码 编号：JCBX020210 值空间：JY/T1001JFLY经费来源代码 
	[ZJZMJ]  [decimal(102)]  NOT NULL,--总建筑面积 编号：JCBX020211 解释/举例：单位：平方米 
	[ZSYMJ]  [decimal(102)]  NULL,--总使用面积 编号：JCBX020212 解释/举例：单位：平方米 
	[KZSFLDM]  [nvarchar(1)]  NOT NULL,--抗震设防烈度码 编号：JCBX020213 值空间：JY/T1001KZSFLD抗震设防烈度代码 
	[KZSFBZM]  [nvarchar(1)]  NOT NULL,--抗震设防标准码 编号：JCBX020214 值空间：JY/T1001KZSFBZ抗震设防标准代码 
	[JZWDZ]  [nvarchar(180)]  NULL,--建筑物地址 编号：JCBX020215 解释/举例：指建筑物的详细地址 引用自JCTB010102 TXDZ 通信地址 C 180 NULL NULL 指包括省（自治区、直辖市）/地（市、州）/县（区、旗）/乡（镇）/街（村）/门牌号的详细地址 NULL
	[JZWZKM]  [nvarchar(2)]  NOT NULL,--建筑物状况码 编号：JCBX020216 值空间：JY/T1001JZWZK建筑物状况代码 
	[JZWTP]  [nvarchar(200)]  NULL,--建筑物图片 编号：JCBX020217 解释/举例：指建筑物的照片 
	[JZWPMT]  [nvarchar(200)]  NULL,--建筑物平面图 编号：JCBX020218 解释/举例：指建筑物的建筑平面图 
	[QSZH]  [nvarchar(60)]  NULL,--权属证号 编号：JCBX020219 
	[JZWZDMJ]  [decimal(8)]  NULL,--建筑物占地面积 编号：JCBX020220 解释/举例：单位：平方米 
	[SJSYNX]  [decimal(3)]  NULL,--设计使用年限 编号：JCBX020221 解释/举例：单位：年 
CONSTRAINT [PK_JCBX0202] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[JZWH] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--建筑物房间子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCBX0203]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCBX0203](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[FJH]  [nvarchar(12)]  NOT NULL,--房间号 编号：JCBX020301 解释/举例：学校自编，建议前6位为建筑物编号，后6位为房间在该建筑物内的编号 
	[FJMC]  [nvarchar(30)]  NOT NULL,--房间名称 编号：JCBX020302 解释/举例：指房间的汉字名称 
	[FJYTM]  [nvarchar(2)]  NOT NULL,--房间用途码 编号：JCBX020303 值空间：JY/T1001FJYT房间用途代码 
	[FJLC]  [nvarchar(3)]  NULL,--房间楼层 编号：JCBX020304 解释/举例：指房间所在的楼层，地上楼层直接用阿拉伯数字表示，地下楼层在阿拉伯数字前加“B”，如“2”表示地上2层，“B2”表示地下2层 
	[FJJZMJ]  [decimal(82)]  NOT NULL,--房间建筑面积 编号：JCBX020305 值空间：取二位小数 解释/举例：单位：平方米 
	[FJSYMJ]  [decimal(82)]  NULL,--房间使用面积 编号：JCBX020306 值空间：取二位小数 解释/举例：单位：平方米 
CONSTRAINT [PK_JCBX0203] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[FJH] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--建筑物修缮子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCBX0204]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCBX0204](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[JZWH]  [nvarchar(6)]  NOT NULL,--建筑物号 编号：JCBX020201 引用自JCBX020201 JZWH 建筑物号 C 6 M NULL 学校自编 NULL
	[FJH]  [nvarchar(12)]  NULL,--房间号 编号：JCBX020301 引用自JCBX020301 FJH 房间号 C 12 M NULL 学校自编，建议前6位为建筑物编号，后6位为房间在该建筑物内的编号 NULL
	[XSKSRQ]  [nvarchar(8)]  NULL,--修缮开始日期 编号：JCBX020401 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[XSJSRQ]  [nvarchar(8)]  NULL,--修缮结束日期 编号：JCBX020402 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[XSNR]  [text]  NULL,--修缮内容 编号：JCBX020403 解释/举例：修缮的主要内容描述 
	[XSJF]  [money]  NOT NULL,--修缮经费 编号：JCBX020404 解释/举例：指修缮涉及的经费总额，单位：元 
	[XSDW]  [nvarchar(60)]  NULL,--修缮单位 编号：JCBX020405 解释/举例：承担修缮任务的单位名称 
	[JFLYM]  [nvarchar(1)]  NULL,--经费来源码 编号：JCBX020210 引用自JCBX020210 JFLYM 经费来源码 C 1 M JY/T1001JFLY经费来源代码 NULL NULL
	[JBRH]  [nvarchar(20)]  NULL,--经办人号 编号：JCBX020406 解释/举例：办理修缮手续及相关事宜的人员的工号 引用自JCTB020120 RYH 人员号 C 20 NULL NULL 学号或工号 NULL
	[XSSM]  [text]  NULL,--修缮说明 编号：JCBX020407 解释/举例：与修缮相关的情况说明 
CONSTRAINT [PK_JCBX0204] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[JZWH] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--学校设施数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCBX0205]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCBX0205](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[SSH]  [nvarchar(6)]  NULL,--设施号 编号：JCBX020501 解释/举例：学校自编 
	[SSCQM]  [nvarchar(1)]  NOT NULL,--设施产权码 编号：JCBX020502 值空间：JY/T1001CQ产权代码 
	[SSSYZKM]  [nvarchar(1)]  NOT NULL,--设施使用状况码 编号：JCBX020503 值空间：JY/T1001SYZK使用状况代码 
	[SSXXDWCCM]  [nvarchar(1)]  NULL,--所属学校单位层次码 编号：JCBX020504 值空间：JY/T1001XXDWCC学校单位层次代码 
	[SSMC]  [nvarchar(60)]  NULL,--设施名称 编号：JCBX020505 
	[JSNY]  [nvarchar(6)]  NULL,--建设年月 编号：JCBX020506 引用自JCTB010202 NY 年月 C 6 NULL GB/T7408 格式：YYYYMM，如：200604表示2006年4月 NULL
	[JSFY]  [money]  NULL,--建设费用 编号：JCBX020507 解释/举例：指建成设施的总经费，单位：元 
	[XSNY]  [nvarchar(6)]  NULL,--修缮年月 编号：JCBX020508 引用自JCTB010202 NY 年月 C 6 NULL GB/T7408 格式：YYYYMM，如：200604表示2006年4月 NULL
	[XSFY]  [money]  NULL,--修缮费用 编号：JCBX020509 解释/举例：指修缮设施的总经费，单位：元 
	[SYSFZC]  [nvarchar(1)]  NULL,--使用是否正常 编号：JCBX020510 值空间：JY/T1001SFBZ是否标志代码 解释/举例：0不正常1正常 
CONSTRAINT [PK_JCBX0205] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--仪器设备基本数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCBX0301]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCBX0301](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[YQH]  [nvarchar(10)]  NOT NULL,--仪器号 编号：JCBX030101 解释/举例：学校自编 
	[YQMC]  [nvarchar(60)]  NOT NULL,--仪器名称 编号：JCBX030102 解释/举例：产品标牌上的汉字名称，进口产品用英译汉名称，包括仪器、设备、教具和玩具等 
	[YQYWMC]  [nvarchar(180)]  NOT NULL,--仪器英文名称 编号：JCBX030103 
	[XXDWCCM]  [nvarchar(1)]  NULL,--学校单位层次码 编号：JCBX030104 值空间：JY/T1001XXDWCC学校单位层次代码 
	[CQM]  [nvarchar(1)]  NOT NULL,--产权码 编号：JCBX030105 值空间：JY/T1001CQ产权代码 
	[SYZKM]  [nvarchar(1)]  NULL,--使用状况码 编号：JCBX020204 引用自JCBX020204 SYZKM 使用状况码 C 1 M JY/T1001SYZK使用状况代码 NULL NULL
	[FLM]  [nvarchar(8)]  NOT NULL,--分类码 编号：JCBX030106 值空间：高等学校固定资产分类及编码教学仪器设备产品（物资）分类与代码 解释/举例：高等学校采用高等学校固定资产分类及编码，其他学校采用教学仪器设备产品（物资）分类与代码 
	[YQXH]  [nvarchar(40)]  NOT NULL,--仪器型号 编号：JCBX030107 
	[CCRQ]  [nvarchar(8)]  NOT NULL,--出厂日期 编号：JCBX030108 
	[SCGBDQM]  [nvarchar(3)]  NOT NULL,--生产国别/地区码 编号：JCBX030109 值空间：GB/T2659 解释/举例：指仪器的生产国，用三位字母代码 
	[JFKMM]  [nvarchar(1)]  NOT NULL,--经费科目码 编号：JCBX030110 值空间：JY/T1001JFKM经费科目代码 
	[GZRQ]  [nvarchar(8)]  NOT NULL,--购置日期 编号：JCBX030111 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[SCCJ]  [nvarchar(180)]  NOT NULL,--生产厂家 编号：JCBX030112 解释/举例：指生产厂家的汉字名，进口产品用英译汉名或外文名 
	[CCH]  [nvarchar(30)]  NOT NULL,--出厂号 编号：JCBX030113 解释/举例：厂家标注在产品上的唯一号 
	[DJH]  [nvarchar(16)]  NOT NULL,--单据号 编号：JCBX030114 解释/举例：采购凭证单据号或进口产品订货合同号 
	[TP]  [nvarchar(200)]  NOT NULL,--图片 编号：JCBX030115 解释/举例：指仪器设备的图片 
	[YQDD]  [nvarchar(60)]  NOT NULL,--仪器地点 编号：JCBX030116 
	[SBFZRH]  [nvarchar(20)]  NOT NULL,--设备负责人号 编号：JCBX030117 解释/举例：设备负责人的工号 引用自JCTB020120 RYH 人员号 C 20 NULL NULL 学号或工号 NULL
	[JSZB]  [text]  NOT NULL,--技术指标 编号：JCBX030118 
	[YQPZ]  [text]  NOT NULL,--仪器配置 编号：JCBX030119 
	[JGBZ]  [nvarchar(3)]  NULL,--价格币种 编号：JCBX030120 值空间：GB/T12406 
	[YQJG]  [money]  NULL,--仪器价格 编号：JCBX030121 
	[YQSM]  [text]  NULL,--仪器说明 编号：JCBX030122 
	[CWZH]  [nvarchar(20)]  NULL,--财务帐号 编号：JCBX030123 解释/举例：指校内财务帐号 
	[GHS]  [nvarchar(60)]  NULL,--供货商 编号：JCBX030124 解释/举例：供货商的名称 
	[BXJZRQ]  [nvarchar(8)]  NOT NULL,--保修截止日期 编号：JCBX030125 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[SBLY]  [nvarchar(4)]  NOT NULL,--设备来源 编号：JCBX030126 解释/举例：如：盘盈、外购、调入、转入、捐赠、自制自建、其他 
	[SFJMGZYQ]  [nvarchar(1)]  NOT NULL,--是否精密贵重仪器 编号：JCBX030127 值空间：JY/T1001SFBZ是否标志代码 
CONSTRAINT [PK_JCBX0301] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[YQH] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--仪器设备附件数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCBX0302]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCBX0302](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[FJBH]  [nvarchar(6)]  NOT NULL,--附件编号 编号：JCBX030201 解释/举例：学校自编 
	[FJSL]  [decimal(3)]  NOT NULL,--附件数量 编号：JCBX030202 解释/举例：某仪器设备附件的总数量，单位：个 
	[FUJMC]  [nvarchar(60)]  NOT NULL,--附件名称 编号：JCBX030203 解释/举例：汉字全称或汉字缩写 
	[FJXHGG]  [nvarchar(100)]  NOT NULL,--附件型号规格 编号：JCBX030204 
	[FJJG]  [money]  NULL,--附件价格 编号：JCBX030205 
	[FJYWMC]  [nvarchar(180)]  NULL,--附件英文名称 编号：JCBX030206 
	[RMBZJ]  [money]  NULL,--人民币总价 编号：JCBX030207 
	[CCRQ]  [nvarchar(8)]  NOT NULL,--出厂日期 编号：JCBX030108 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[SCGBDQM]  [nvarchar(3)]  NOT NULL,--生产国别/地区码 编号：JCBX030109 引用自JCBX030109 SCGBDQM 生产国别/地区码 C 3 M GB/T2659 指仪器的生产国，用三位字母代码 NULL
	[GZRQ]  [nvarchar(8)]  NOT NULL,--购置日期 编号：JCBX030111 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[SCCJ]  [nvarchar(180)]  NOT NULL,--生产厂家 编号：JCBX030112 引用自JCBX030112 SCCJ 生产厂家 C 180 M NULL 指生产厂家的汉字名，进口产品用英译汉名或外文名 NULL
	[CCH]  [nvarchar(30)]  NOT NULL,--出厂号 编号：JCBX030113 引用自JCBX030113 CCH 出厂号 C 30 M NULL 厂家标注在产品上的唯一号 NULL
	[GHS]  [nvarchar(60)]  NULL,--供货商 编号：JCBX030124 引用自JCBX030124 GHS 供货商 C 60 O NULL 供货商的名称 NULL
CONSTRAINT [PK_JCBX0302] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[FJBH] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--仪器设备管理数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCBX0303]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCBX0303](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[XZM]  [nvarchar(1)]  NOT NULL,--现状码 编号：JCBX030301 值空间：JY/T1001YQXZ仪器现状代码 
	[SYFXM]  [nvarchar(1)]  NOT NULL,--使用方向码 编号：JCBX030302 值空间：JY/T1001YQSYFX仪器使用方向代码 
	[SYDWH]  [nvarchar(10)]  NULL,--使用单位号 编号：JCBX030303 解释/举例：学校自编 引用自JCTB010301 DWH 单位号 C 10 NULL NULL 自行编码 NULL
	[JSRH]  [nvarchar(20)]  NULL,--经手人号 编号：JCBX030304 解释/举例：校内首次办理使用手续人的工号 引用自JCTB020120 RYH 人员号 C 20 NULL NULL 学号或工号 NULL
	[LYDW]  [nvarchar(10)]  NULL,--领用单位 编号：JCBX030305 解释/举例：仪器设备校内调动后，新使用单位名称 引用自JCTB010301 DWH 单位号 C 10 NULL NULL 自行编码 NULL
	[LYRH]  [nvarchar(20)]  NULL,--领用人号 编号：JCBX030306 解释/举例：仪器设备校内调动后，新使用单位办理领用手续人的工号 引用自JCTB020120 RYH 人员号 C 20 NULL NULL 学号或工号 NULL
	[WHRS]  [decimal(2)]  NULL,--维护人数 编号：JCBX030307 解释/举例：仪器设备专职操作维护人员数量，兼职按工作量折算为全时人员数时只取整数，单位：人 
	[SYRSS]  [decimal(8)]  NULL,--使用人时数 编号：JCBX030308 解释/举例：单位：人时 
	[KSSYGS]  [decimal(6)]  NULL,--开设实验个数 编号：JCBX030309 解释/举例：单位：个 
	[KSSYSS]  [decimal(8)]  NULL,--开设实验时数 编号：JCBX030310 解释/举例：单位：小时 
	[JXSS]  [decimal(8)]  NULL,--教学时数 编号：JCBX030311 解释/举例：单位：小时 
	[KYSS]  [decimal(8)]  NULL,--科研时数 编号：JCBX030312 解释/举例：单位：小时 
	[SHXMSS]  [decimal(8)]  NULL,--社会项目时数 编号：JCBX030313 解释/举例：单位：小时 
	[BGRH]  [nvarchar(20)]  NULL,--保管人号 编号：JCBX030314 解释/举例：日常保管人工号 引用自JCTB020120 RYH 人员号 C 20 NULL NULL 学号或工号 NULL
CONSTRAINT [PK_JCBX0303] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[XZM] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--仪器设备报损、报废数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCBX0304]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCBX0304](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[BSBFRQ]  [nvarchar(8)]  NOT NULL,--报损报废日期 编号：JCBX030401 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[BSBFYY]  [nvarchar(80)]  NOT NULL,--报损报废原因 编号：JCBX030402 
	[CLJG]  [text]  NOT NULL,--处理结果 编号：JCBX030403 解释/举例：指对仪器报损报废处理的结果 
	[JBRH]  [nvarchar(20)]  NOT NULL,--经办人号 编号：JCBX020406 解释/举例：指办理仪器报损报废手续人的工号 引用自JCTB020120 RYH 人员号 C 20 NULL NULL 学号或工号 NULL
	[SFSM]  [text]  NOT NULL,--损废说明 编号：JCBX030404 解释/举例：与仪器报损报废有关的情况说明 
CONSTRAINT [PK_JCBX0304] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[BSBFRQ] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--软件资源数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCBX0305]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCBX0305](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[RJBH]  [nvarchar(16)]  NOT NULL,--软件编号 编号：JCBX030501 解释/举例：学校自编 
	[RJMC]  [nvarchar(60)]  NOT NULL,--软件名称 编号：JCBX030502 
	[RJFLM]  [nvarchar(8)]  NOT NULL,--软件分类码 编号：JCBX030503 值空间：教学仪器设备产品（物资）分类与代码 
	[BBH]  [nvarchar(40)]  NOT NULL,--版本号 编号：JCBX030504 
	[JZLX]  [nvarchar(20)]  NULL,--介质类型 编号：JCBX030505 
	[JZSL]  [decimal(3)]  NULL,--介质数量 编号：JCBX030506 
	[SQFW]  [nvarchar(200)]  NULL,--授权范围 编号：JCBX030507 解释/举例：许可权证书数量或描述 
	[SCGBDQM]  [nvarchar(3)]  NOT NULL,--生产国别/地区码 编号：JCBX030109 引用自JCBX030109 SCGBDQM 生产国别/地区码 C 3 M GB/T2659 指仪器的生产国，用三位字母代码 NULL
	[JFKMM]  [nvarchar(1)]  NOT NULL,--经费科目码 编号：JCBX030110 引用自JCBX030110 JFKMM 经费科目码 C 1 M JY/T1001JFKM经费科目代码 NULL NULL
	[GZRQ]  [nvarchar(8)]  NOT NULL,--购置日期 编号：JCBX030111 引用自JCBX030111 GZRQ 购置日期 C 8 M NULL NULL JCTB010203
	[SCCJ]  [nvarchar(180)]  NOT NULL,--生产厂家 编号：JCBX030112 引用自JCBX030112 SCCJ 生产厂家 C 180 M NULL 指生产厂家的汉字名，进口产品用英译汉名或外文名 NULL
	[CCH]  [nvarchar(30)]  NOT NULL,--出厂号 编号：JCBX030113 引用自JCBX030113 CCH 出厂号 C 30 M NULL 厂家标注在产品上的唯一号 NULL
	[DJH]  [nvarchar(16)]  NOT NULL,--单据号 编号：JCBX030114 引用自JCBX030114 DJH 单据号 C 16 M NULL 采购凭证单据号或进口产品订货合同号 NULL
	[DJ]  [money]  NOT NULL,--单价 编号：JCBX030508 解释/举例：软件（包括附件、专用工具、数据库费、备件及保险费用等）购置的人民币价格（原值），取二位小数，进口仪器设备按当时汇率折算人民币价，单位：元 
	[AZTSF]  [money]  NOT NULL,--安装调试费 编号：JCBX030509 解释/举例：安装、调试与原系统集成和验收费用 
	[PXJJSZCF]  [money]  NOT NULL,--培训及技术支持费 编号：JCBX030510 解释/举例：培训及质保期内服务和技术支持费 
CONSTRAINT [PK_JCBX0305] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[RJBH] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--实验室基本数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCBX0307]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCBX0307](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[SYSH]  [nvarchar(10)]  NOT NULL,--实验室号 编号：JCBX030701 解释/举例：校内实验室唯一编号，建议与院系所单位统一编号 引用自JCTB010301 DWH 单位号 C 10 NULL NULL 自行编码 NULL
	[SYSMC]  [nvarchar(60)]  NOT NULL,--实验室名称 编号：JCBX030702 
	[JLRQ]  [nvarchar(8)]  NOT NULL,--建立日期 编号：JCBX030703 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[JZMJ]  [decimal(82)]  NULL,--建筑面积 编号：JCBX030704 解释/举例：单位：平方米 
	[SYMJ]  [decimal(82)]  NULL,--使用面积 编号：JCBX030705 解释/举例：单位：平方米 
	[SYSWZ]  [nvarchar(60)]  NULL,--实验室位置 编号：JCBX030706 解释/举例：指实验室所在的具体楼号和房间号 
	[FZRH]  [nvarchar(20)]  NOT NULL,--负责人号 编号：JCBX030707 引用自JCTB020120 RYH 人员号 C 20 NULL NULL 学号或工号 NULL
	[SYSLBM]  [nvarchar(1)]  NOT NULL,--实验室类别码 编号：JCBX030708 值空间：JY/T1001SYSLB实验室类别代码 
	[SYSDH]  [nvarchar(30)]  NULL,--实验室电话 编号：JCBX030709 引用自JCTB010103 DH 电话 C 30 NULL NULL 即电话号码 NULL
	[SYSJS]  [text]  NULL,--实验室介绍 编号：JCBX030710 解释/举例：实验室的情况介绍 
CONSTRAINT [PK_JCBX0307] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[SYSH] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--实验项目数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCBX0308]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCBX0308](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[SYXH]  [nvarchar(15)]  NULL,--实验序号 编号：JCBX030801 解释/举例：学校自编 
	[SYMC]  [nvarchar(60)]  NULL,--实验名称 编号：JCBX030802 
	[LSKCH]  [nvarchar(10)]  NULL,--隶属课程号 编号：JCBX030803 解释/举例：非教学实验不填 引用自JCTB010403 KCH 课程号 C 10 NULL NULL 学校自编 NULL
	[SYLBM]  [nvarchar(1)]  NULL,--实验类别码 编号：JCBX030804 值空间：JY/T1001SYLB实验类别代码JY/T1001ZXXSYLB中小学实验类别代码 
	[ZYFLM]  [nvarchar(6)]  NULL,--专业分类码 编号：JCBX030805 解释/举例：本实验项目所属的专业码 引用自JCTB010407 ZYM 专业码 C 6 NULL 学位授予和人才培养学科目录专业学位授予和人才培养目录普通高等学校本科专业目录普通高等学校高职高专教育指导性专业目录（试行）中等职业学校专业目录 NULL NULL
	[SYYQM]  [nvarchar(1)]  NULL,--实验要求码 编号：JCBX030806 值空间：JY/T1001SYYQ实验要求代码 
	[SYZLBM]  [nvarchar(1)]  NULL,--实验者类别码 编号：JCBX030807 值空间：JY/T1001SYZLB实验者类别代码 
	[SYZRS]  [decimal(4)]  NULL,--实验者人数 编号：JCBX030808 解释/举例：参加实验的总人数，单位：人 
	[MZRS]  [decimal(3)]  NULL,--每组人数 编号：JCBX030809 解释/举例：指每套仪器设备上作实验的人数，非教学实验不填，单位：人 
	[SYSS]  [decimal(3)]  NULL,--实验时数 编号：JCBX030810 解释/举例：指完成本实验的时数，单位：小时 
	[HJJBM]  [nvarchar(2)]  NULL,--获奖级别码 编号：JCBX030811 值空间：JY/T1001JB级别代码 
	[DKJSH]  [nvarchar(20)]  NULL,--带课教师号 编号：JCBX030812 引用自JCTB020120 RYH 人员号 C 20 NULL NULL 学号或工号 NULL
	[SYDD]  [nvarchar(60)]  NULL,--实验地点 编号：JCBX030813 
CONSTRAINT [PK_JCBX0308] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--图书基本数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCBX0401]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCBX0401](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[TSBH]  [nvarchar(10)]  NOT NULL,--图书编号 编号：JCBX040101 解释/举例：指校内图书资料的编号，包括图书、磁带、录象带、磁盘、光盘等，学校自编 
	[TSTXM]  [nvarchar(14)]  NOT NULL,--图书条形码 编号：JCBX040102 解释/举例：图书对应的条形码 
	[ZBT]  [nvarchar(180)]  NOT NULL,--正标题 编号：JCBX040103 解释/举例：填写中文或英文 
	[BLBT]  [nvarchar(180)]  NULL,--并列标题 编号：JCBX040104 解释/举例：填写中文或英文 
	[FBT]  [nvarchar(180)]  NULL,--副标题 编号：JCBX040105 解释/举例：填写中文或英文 
	[JSGJZ]  [nvarchar(60)]  NULL,--检索关键字 编号：JCBX040106 解释/举例：图书检索的关键字 
	[TSCBH]  [nvarchar(30)]  NOT NULL,--图书出版号 编号：JCBX040107 解释/举例：图书相应的ISBN等标准出版号 
	[DYZZ]  [nvarchar(30)]  NOT NULL,--第一作者 编号：JCBX040108 解释/举例：图书第一作者名称 
	[QTZZ]  [nvarchar(90)]  NULL,--其他作者 编号：JCBX040109 解释/举例：图书其他作者名称 
	[JG]  [money]  NULL,--价格 编号：JCBX040110 解释/举例：图书的单价，外币按汇价折算成人民币，取两位小数，单位：元 
	[WXLXM]  [nvarchar(2)]  NULL,--文献类型码 编号：JCBX040111 值空间：GB/T3469 
	[ZDM]  [nvarchar(1)]  NULL,--装订码 编号：JCBX040112 值空间：JY/T1001KWZD刊物装订代码 
	[FLH]  [nvarchar(20)]  NULL,--分类号 编号：JCBX040113 解释/举例：按《中国图书馆分类法》进行分类的编号 
	[ZGYZM]  [nvarchar(3)]  NULL,--中国语种码 编号：JCBX040114 值空间：GB/T4881 
	[YZM]  [nvarchar(2)]  NULL,--语种码 编号：JCBX040115 值空间：GB/T4880.1 
	[KB]  [nvarchar(30)]  NULL,--开本 编号：JCBX040116 
	[YS]  [decimal(6)]  NULL,--页数 编号：JCBX040117 解释/举例：图书的总页数，单位：页 
	[BC]  [nvarchar(30)]  NULL,--版次 编号：JCBX040118 
	[TSFJMC]  [nvarchar(180)]  NULL,--图书附件名称 编号：JCBX040119 解释/举例：图书相关的附件名称 
	[CSMC]  [nvarchar(180)]  NULL,--丛书名称 编号：JCBX040120 解释/举例：指系列丛书的名称 
	[CSBZ]  [nvarchar(180)]  NULL,--丛书编者 编号：JCBX040121 解释/举例：指系列丛书的编者名称 
	[CBS]  [nvarchar(180)]  NULL,--出版社 编号：JCBX040122 解释/举例：出版社名称，多个出版社可并列 
	[CBSJBM]  [nvarchar(1)]  NULL,--出版社级别码 编号：JCBX040123 值空间：JY/T1001CBSJB出版社级别代码 解释/举例：多个出版社以第一个出版社为准 
	[CBD]  [nvarchar(60)]  NULL,--出版地 编号：JCBX040124 
	[CBRQ]  [nvarchar(8)]  NULL,--出版日期 编号：JCBX040125 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
	[FXDW]  [nvarchar(60)]  NULL,--发行单位 编号：JCBX040126 引用自JCTB010302 DWMC 单位名称 C 60 NULL NULL NULL NULL
	[BZ]  [text]  NULL,--备注 编号：JCBX040127 解释/举例：与图书相关的其他情况说明 
	[TSZTM]  [nvarchar(1)]  NULL,--图书状态码 编号：JCBX040128 值空间：JY/T1001TSQKZT图书期刊状态代码 
CONSTRAINT [PK_JCBX0401] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[TSBH] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

--期刊基本数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[JCBX0402]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JCBX0402](
	[SCHOOLID]  [int]  NOT NULL,--学校ID
	[QKBH]  [nvarchar(10)]  NOT NULL,--期刊编号 编号：JCBX040201 解释/举例：指校内期刊的编号，学校自编 
	[QKTXM]  [nvarchar(14)]  NULL,--期刊条形码 编号：JCBX040202 解释/举例：期刊对应的条形码 
	[QKZWMC]  [nvarchar(60)]  NOT NULL,--期刊中文名称 编号：JCBX040203 
	[QKYWMC]  [nvarchar(180)]  NULL,--期刊英文名称 编号：JCBX040204 
	[QKCBH]  [nvarchar(30)]  NOT NULL,--期刊出版号 编号：JCBX040205 解释/举例：期刊相应的ISSN等标准出版号 
	[BJB]  [nvarchar(60)]  NULL,--编辑部 编号：JCBX040206 解释/举例：编辑期刊的编辑部名称 
	[ZB]  [nvarchar(36)]  NULL,--主编 编号：JCBX040207 解释/举例：期刊主编姓名 引用自JCTB020101 XM 姓名 C 36 NULL NULL 例：张振华；买买提·阿不都热依木 NULL
	[MQDJ]  [money]  NULL,--每期单价 编号：JCBX040208 解释/举例：每期期刊的单价，外币按汇价折算成人民币，取一位小数，单位：元 
	[CKNY]  [nvarchar(6)]  NULL,--创刊年月 编号：JCBX040209 引用自JCTB010202 NY 年月 C 6 NULL GB/T7408 格式：YYYYMM，如：200604表示2006年4月 NULL
	[NH]  [nvarchar(4)]  NULL,--年号 编号：JCBX040210 引用自JCTB010201 ND 年度（年份、年） C 4 NULL GB/T7408 格式：YYYY，如：2008 NULL
	[JH]  [nvarchar(10)]  NULL,--卷号 编号：JCBX040211 
	[QH]  [nvarchar(10)]  NULL,--期号 编号：JCBX040212 
	[ZQH]  [nvarchar(10)]  NULL,--总期号 编号：JCBX040213 
	[FLH]  [nvarchar(20)]  NULL,--分类号 编号：JCBX040113 解释/举例：按《中国图书馆分类法》进行分类的编号 
	[ZGYZM]  [nvarchar(3)]  NULL,--中国语种码 编号：JCBX040114 值空间：GB/T4881 引用自JCBX040114 ZGYZM 中国语种码 C 3 O GB/T4881 NULL NULL
	[YZM]  [nvarchar(2)]  NULL,--语种码 编号：JCBX040115 值空间：GB/T4880.1 引用自JCBX040115 YZM 语种码 C 2 O GB/T4880.1 NULL NULL
	[QKLBM]  [nvarchar(5)]  NULL,--期刊类别码 编号：JCBX040214 值空间：GB/T13745 
	[QKZTM]  [nvarchar(1)]  NULL,--期刊状态码 编号：JCBX040215 值空间：JY/T1001TSQKZT图书期刊状态代码 
CONSTRAINT [PK_JCBX0402] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[QKBH] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

END
GO

