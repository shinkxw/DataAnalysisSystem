--空间名：EDU_ZZXS  生成器：SqlBuilder0.1

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZXS_01_01_XSXX')
            and   type = 'U')
   drop table EDU_ZZXS_01_01_XSXX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZXS_01_A01_XSXX')
            and   type = 'U')
   drop table EDU_ZZXS_01_A01_XSXX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZXS_02_01_XSJTXX')
            and   type = 'U')
   drop table EDU_ZZXS_02_01_XSJTXX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZXS_02_A01_XSLXR')
            and   type = 'U')
   drop table EDU_ZZXS_02_A01_XSLXR
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZXS_02_02_XSJTCY')
            and   type = 'U')
   drop table EDU_ZZXS_02_02_XSJTCY
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZXS_02_A02_XSJTJJ')
            and   type = 'U')
   drop table EDU_ZZXS_02_A02_XSJTJJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZXS_06_01_XSCJ')
            and   type = 'U')
   drop table EDU_ZZXS_06_01_XSCJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZXS_07_01_XJSJ')
            and   type = 'U')
   drop table EDU_ZZXS_07_01_XJSJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZXS_07_02_XJYD')
            and   type = 'U')
   drop table EDU_ZZXS_07_02_XJYD
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZXS_07_03_XSZCXX')
            and   type = 'U')
   drop table EDU_ZZXS_07_03_XSZCXX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZXS_10_02_JXJSJ')
            and   type = 'U')
   drop table EDU_ZZXS_10_02_JXJSJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZXS_10_03_ZXJSJ')
            and   type = 'U')
   drop table EDU_ZZXS_10_03_ZXJSJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZXS_14_A01_XSKHXM')
            and   type = 'U')
   drop table EDU_ZZXS_14_A01_XSKHXM
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZXS_14_A02_XSKHBSJ')
            and   type = 'U')
   drop table EDU_ZZXS_14_A02_XSKHBSJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZXS_14_A03_XSRCXWGFKHSJ')
            and   type = 'U')
   drop table EDU_ZZXS_14_A03_XSRCXWGFKHSJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZXS_14_A04_XSWWYTZQSJ')
            and   type = 'U')
   drop table EDU_ZZXS_14_A04_XSWWYTZQSJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZXS_14_A05_XSWWYTZQXM')
            and   type = 'U')
   drop table EDU_ZZXS_14_A05_XSWWYTZQXM
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZXS_14_A06_XSWWYTZQRYAP')
            and   type = 'U')
   drop table EDU_ZZXS_14_A06_XSWWYTZQRYAP
go
--学生信息数据表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZXS_01_01_XSXX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZXS_01_01_XSXX](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校名
	[XH]  nvarchar(30)  NOT NULL,--学号
	[XM]  nvarchar(36)  NOT NULL,--姓名
	[YWXM]  nvarchar(60)  NULL,--英文姓名
	[XMPY]  nvarchar(60)  NOT NULL,--姓名拼音
	[CYM]  nvarchar(36)  NULL,--曾用名
	[SFZJLXM]  nvarchar(1)  NOT NULL,--身份证件类型码
	[SFZJH]  nvarchar(20)  NOT NULL,--身份证件号
	[XBM]  nvarchar(1)  NOT NULL,--性别码
	[XXM]  nvarchar(1)  NULL,--血型码
	[CSRQ]  nvarchar(8)  NOT NULL,--出生日期
	[CSDM]  nvarchar(6)  NOT NULL,--出生地码
	[JG]  nvarchar(20)  NOT NULL,--籍贯
	[MZM]  nvarchar(2)  NOT NULL,--民族码
	[HYZKM]  nvarchar(2)  NOT NULL,--婚姻状况码
	[XYZJM]  nvarchar(2)  NULL,--信仰宗教码
	[GATQWM]  nvarchar(2)  NULL,--港澳台侨外码
	[JKZKM]  nvarchar(1)  NULL,--健康状况码
	[ZZMMM]  nvarchar(2)  NOT NULL,--政治面貌码
	[HKSZDXZQHM]  nvarchar(6)  NOT NULL,--户口所在地行政区划码
	[HKLBM]  nvarchar(1)  NOT NULL,--户口类别码
	[SFSLDRK]  nvarchar(1)  NOT NULL,--是否是流动人口
	[GJDQM]  nvarchar(3)  NULL,--国籍/地区
	[TC]  text  NULL,--特长
	[XSLXDH]  nvarchar(30)  NULL,--学生联系电话
	[WLDZ]  nvarchar(60)  NULL,--网络地址
	[JSTXH]  nvarchar(40)  NULL,--即时通讯号
	[DZXX]  nvarchar(40)  NULL,--电子信箱
	[ZP]  nvarchar(100)  NULL,--照片(路径)
CONSTRAINT [PK_EDU_ZZXS_01_01_XSXX] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--学生扩展数据表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZXS_01_A01_XSXX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZXS_01_A01_XSXX](
	[XSXXID]  int  NOT NULL,--学生信息数据表
	[SCHOOLID]  int  NOT NULL,--学校名
	[ZYXXID]  int  NOT NULL,--专业基本信息
	[XNID]  int  NOT NULL,--学年
	[ZZXQID]  int  NOT NULL,--学期表
	[JTDZQH]  nvarchar(6)  NULL,--家庭地址区划码
	[JTXXDZ]  nvarchar(50)  NULL,--家庭详细地址
	[HJXXDZ]  nvarchar(50)  NULL,--户籍详细地址
	[HJXZ]  nvarchar(1)  NULL,--户籍性质代码
	[BYJX]  nvarchar(1)  NULL,--不宜军训
	[CSBZR]  nvarchar(10)  NULL,--初三班主任
	[DRZW]  text  NULL,--曾担任何种职务
	[YYDR]  text  NULL,--愿意担任班干部，何职
	[BZ]  text  NULL,--备注
	[BYLX]  nvarchar(1)  NOT NULL,--毕业生类型
	[XSLX]  nvarchar(5)  NOT NULL,--学生类型
	[SFZS]  nvarchar(1)  NOT NULL,--是否住宿
	[XSBMSJ]  nvarchar(8)  NULL,--学生报名时间
CONSTRAINT [PK_EDU_ZZXS_01_A01_XSXX] PRIMARY KEY CLUSTERED
(
	[XSXXID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--学生家庭信息数据表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZXS_02_01_XSJTXX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZXS_02_01_XSJTXX](
	[XSXXID]  int  NOT NULL,--学生信息数据表
	[SCHOOLID]  int  NOT NULL,--学校名
	[JTZZ]  nvarchar(180)  NOT NULL,--家庭住址
	[JTYZBM]  nvarchar(6)  NOT NULL,--家庭邮政编码
	[JTDH]  nvarchar(30)  NULL,--家庭电话
	[JTLXR]  nvarchar(36)  NOT NULL,--家庭联系人
	[JTDZXX]  nvarchar(40)  NULL,--家庭电子信箱
	[JTRK]  int  NULL,--家庭人口
	[JTZYSRLY]  nvarchar(180)  NULL,--家庭主要收入来源
	[JTYSRJE]  money  NULL,--家庭月收入金额
	[JTNSRJE]  money  NULL,--家庭年收入金额
	[LJZJHCZ]  nvarchar(30)  NULL,--离家最近火车站
CONSTRAINT [PK_EDU_ZZXS_02_01_XSJTXX] PRIMARY KEY CLUSTERED
(
	[XSXXID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--学生联系人数据表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZXS_02_A01_XSLXR]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZXS_02_A01_XSLXR](
	[ID]  int  identity,--编号
	[SCHOOLID]  int  NOT NULL,--学校名
	[XSXXID]  int  NOT NULL,--学生信息数据表
	[GXM]  nvarchar(2)  NOT NULL,--关系码
	[LXRXM]  nvarchar(36)  NOT NULL,--联系人姓名
	[YZBM]  nvarchar(6)  NULL,--邮政编码
	[TXDZ]  nvarchar(180)  NULL,--通信地址
	[DH]  nvarchar(30)  NOT NULL,--电话
	[YDDH]  nvarchar(30)  NULL,--移动电话
	[CZDH]  nvarchar(60)  NULL,--传真电话
	[DZXX]  nvarchar(40)  NULL,--电子信箱
	[WLDZ]  nvarchar(60)  NULL,--网络地址
	[JSTXH]  nvarchar(40)  NULL,--即时通讯号
CONSTRAINT [PK_EDU_ZZXS_02_A01_XSLXR] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--学生家庭成员数据表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZXS_02_02_XSJTCY]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZXS_02_02_XSJTCY](
	[ID]  int  identity,--编号
	[SCHOOLID]  int  NOT NULL,--学校名
	[XSXXID]  int  NOT NULL,--学生信息数据表
	[XM]  nvarchar(36)  NOT NULL,--姓名
	[GXM]  nvarchar(2)  NOT NULL,--关系码
	[JTCYZYM]  nvarchar(3)  NOT NULL,--家庭成员职业码
	[SZDW]  nvarchar(60)  NULL,--所在单位
	[ZZMMM]  nvarchar(2)  NULL,--政治面貌码
	[DH]  nvarchar(30)  NULL,--电话
	[YDDH]  nvarchar(30)  NULL,--移动电话
CONSTRAINT [PK_EDU_ZZXS_02_02_XSJTCY] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--学生家庭经济情况数据表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZXS_02_A02_XSJTJJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZXS_02_A02_XSJTJJ](
	[XSXXID]  int  NOT NULL,--学生信息数据表
	[SCHOOLID]  int  NOT NULL,--学校名
	[SYRK]  decimal(2, 0)  NULL,--赡养人口
	[LDLRK]  decimal(2, 0)  NULL,--劳动力人口
	[JTRJYSR]  money  NOT NULL,--家庭人均月收入
	[JTLBM]  nvarchar(1)  NULL,--家庭类别码
	[KNYYM]  nvarchar(1)  NULL,--困难原因码
	[KNCDM]  nvarchar(2)  NULL,--困难程度码
	[SFDB]  nvarchar(1)  NULL,--是否低保
	[RXQHKLBM]  nvarchar(1)  NULL,--入学前户口类别码
	[JXDDBX]  money  NULL,--就学地低保线
CONSTRAINT [PK_EDU_ZZXS_02_A02_XSJTJJ] PRIMARY KEY CLUSTERED
(
	[XSXXID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--学生成绩数据类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZXS_06_01_XSCJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZXS_06_01_XSCJ](
	[XSXXID]  int  NOT NULL,--学生ID
	[SCHOOLID]  int  NOT NULL,--学校ID
	[KCH]  nvarchar(6)  NOT NULL,--课程号
	[XQID]  int  NOT NULL,--学期ID
	[KCMC]  nvarchar(100)  NOT NULL,--课程名称
	[XF]  decimal(2, 1)  NOT NULL,--学分
	[XQMC]  nvarchar(10)  NOT NULL,--学期名称
	[PSCJ]  decimal(5, 1)  NULL,--平时成绩
	[CJ]  decimal(5, 1)  NOT NULL,--成绩
	[KSXZ]  nvarchar(2)  NULL,--考试性质
	[RKJGID]  int  NULL,--任课教工ID
	[RKJGH]  nvarchar(20)  NULL,--任课教工号
	[CJLRJGID]  int  NULL,--成绩录入教工ID
	[CJLRJGH]  nvarchar(20)  NULL,--成绩录入教工号
	[CJLRRQ]  nvarchar(8)  NOT NULL,--成绩录入日期
	[QZCJ]  decimal(5, 1)  NULL,--期中成绩
	[QMCJ]  decimal(5, 1)  NULL,--期末成绩
	[KCQDID]  int  NOT NULL,--课程清单ID
CONSTRAINT [PK_EDU_ZZXS_06_01_XSCJ] PRIMARY KEY CLUSTERED
(
	[XSXXID] ASC,
	[SCHOOLID] ASC,
	[KCH] ASC,
	[XQID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--学籍基本数据表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZXS_07_01_XJSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZXS_07_01_XJSJ](
	[XSXXID]  int  NOT NULL,--学生信息数据表
	[SCHOOLID]  int  NOT NULL,--学校名
	[ZYXXID]  int  NOT NULL,--专业基本信息
	[ZZBJID]  nvarchar(10)  NOT NULL,--学校班级数据表
	[ZZNJID]  nvarchar(4)  NOT NULL,--学校年级数据表
	[RXNY]  nvarchar(6)  NOT NULL,--入学年月
	[XSLBM]  nvarchar(5)  NOT NULL,--学生类别码
	[XZ]  nvarchar(20)  NOT NULL,--学制
	[ZYM]  nvarchar(6)  NULL,--专业码
	[XSDQZTM]  nvarchar(2)  NOT NULL,--学生当前状态码
CONSTRAINT [PK_EDU_ZZXS_07_01_XJSJ] PRIMARY KEY CLUSTERED
(
	[XSXXID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--学籍异动数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZXS_07_02_XJYD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZXS_07_02_XJYD](
	[ID]  int  NOT NULL,--学籍异动表编号
	[XSXXID]  int  NOT NULL,--学生ID
	[SCHOOLID]  int  NOT NULL,--学校ID
	[YDLBM]  nvarchar(2)  NOT NULL,--异动类别码
	[YDRQ]  nvarchar(8)  NOT NULL,--异动日期
	[YDYYM]  nvarchar(2)  NOT NULL,--异动原因码
	[SPRQ]  nvarchar(8)  NULL,--审批日期
	[SPWH]  nvarchar(24)  NULL,--审批文号
	[JBRID]  int  NULL,--经办人ID
	[JBRGH]  nvarchar(20)  NULL,--经办人工号
	[YDLYXXM]  nvarchar(10)  NULL,--异动来源学校码
	[YDQXXXM]  nvarchar(10)  NULL,--异动去向学校码
	[YDSM]  text  NULL,--异动说明
	[YZYM]  nvarchar(6)  NULL,--原专业码
	[YZYID]  int  NOT NULL,--原专业ID
	[YBH]  nvarchar(10)  NOT NULL,--原班号
	[YNJ]  nvarchar(4)  NOT NULL,--原年级
	[XZYM]  nvarchar(6)  NULL,--现专业码
	[XZYID]  int  NOT NULL,--现专业ID
	[XBH]  nvarchar(10)  NOT NULL,--现班号
	[XNJ]  nvarchar(4)  NOT NULL,--现年级
CONSTRAINT [PK_EDU_ZZXS_07_02_XJYD] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--学生注册信息数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZXS_07_03_XSZCXX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZXS_07_03_XSZCXX](
	[XSXXID]  int  NOT NULL,--学生ID
	[SCHOOLID]  int  NOT NULL,--学校ID
	[XQID]  int  NOT NULL,--学期ID
	[ZCZKM]  nvarchar(1)  NOT NULL,--注册状况码
	[ZCRQ]  nvarchar(8)  NOT NULL,--注册日期
	[BDRQ]  nvarchar(8)  NOT NULL,--报到日期
	[WZCYY]  nvarchar(100)  NOT NULL,--未注册原因
	[WZCWBDQX]  nvarchar(40)  NOT NULL,--未注册/未报到去向
	[SFQJ]  nvarchar(1)  NOT NULL,--是否请假
	[WASZCXQM]  nvarchar(1)  NOT NULL,--未按时注册学期码
CONSTRAINT [PK_EDU_ZZXS_07_03_XSZCXX] PRIMARY KEY CLUSTERED
(
	[XSXXID] ASC,
	[SCHOOLID] ASC,
	[XQID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--奖学金数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZXS_10_02_JXJSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZXS_10_02_JXJSJ](
	[XSXXID]  int  NOT NULL,--学生ID
	[SCHOOLID]  int  NOT NULL,--学校名
	[JXJMC]  nvarchar(30)  NOT NULL,--奖学金名称
	[JXJBH]  nvarchar(2)  NOT NULL,--奖学金编号
	[JXJDJ]  nvarchar(20)  NOT NULL,--奖学金等级
	[JXJLXM]  nvarchar(2)  NOT NULL,--奖学金类型码
	[JXJE]  decimal(8, 2)  NOT NULL,--奖学金额
	[HJSJ]  datetime  NOT NULL,--获奖时间
	[ZZDWHGR]  nvarchar(60)  NULL,--资助单位或个人
	[JXJLYM]  nvarchar(1)  NULL,--奖学金来源码
	[SFSH]  nvarchar(1)  NOT NULL,--是否审核
	[XQID]  int  NOT NULL,--学期ID
CONSTRAINT [PK_EDU_ZZXS_10_02_JXJSJ] PRIMARY KEY CLUSTERED
(
	[XSXXID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--助学金数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZXS_10_03_ZXJSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZXS_10_03_ZXJSJ](
	[XSXXID]  int  NOT NULL,--学生ID
	[SCHOOLID]  int  NOT NULL,--学校名
	[ZKBMH]  nvarchar(10)  NULL,--中考报名号
	[YHKH]  nvarchar(30)  NOT NULL,--银行卡号
	[ZXJE]  decimal(8, 2)  NOT NULL,--助学金额
	[SFSJ]  datetime  NOT NULL,--始发时间
	[TFSJ]  datetime  NOT NULL,--停发时间
	[TFYY]  nvarchar(80)  NOT NULL,--停发原因
	[ZXJMC]  nvarchar(60)  NOT NULL,--助学金名称
	[ZZDWHGR]  nvarchar(60)  NULL,--资助单位或个人
	[ZXJLX]  nvarchar(1)  NOT NULL,--助学金类型
	[SFSH]  nvarchar(1)  NOT NULL,--是否审核
	[XQID]  int  NOT NULL,--学期ID
CONSTRAINT [PK_EDU_ZZXS_10_03_ZXJSJ] PRIMARY KEY CLUSTERED
(
	[XSXXID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--学生考核项目表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZXS_14_A01_XSKHXM]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZXS_14_A01_XSKHXM](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[XMMC]  nvarchar(20)  NOT NULL,--项目名称
CONSTRAINT [PK_EDU_ZZXS_14_A01_XSKHXM] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--学生考核表数据表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZXS_14_A02_XSKHBSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZXS_14_A02_XSKHBSJ](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[KHBMC]  nvarchar(20)  NOT NULL,--考核表名称
	[KHBJDMLB]  text  NOT NULL,--考核班级代码列表
	[KHXMIDLB]  text  NOT NULL,--考核项目ID列表
	[KHJSMCLB]  text  NOT NULL,--考核教师名称列表
	[KHJSIDLB]  text  NOT NULL,--考核教师ID列表
CONSTRAINT [PK_EDU_ZZXS_14_A02_XSKHBSJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--学生日常行为规范考核数据表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZXS_14_A03_XSRCXWGFKHSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZXS_14_A03_XSRCXWGFKHSJ](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[KHBJDM]  nvarchar(10)  NOT NULL,--考核班级代码
	[KHBID]  int  NOT NULL,--考核表ID
	[KHXMID]  int  NOT NULL,--考核项目ID
	[KHFZ]  int  NOT NULL,--考核分值
	[KHSJ]  datetime  NOT NULL,--考核时间
	[JLJSID]  int  NOT NULL,--记录教师ID
CONSTRAINT [PK_EDU_ZZXS_14_A03_XSRCXWGFKHSJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--学生五位一体值勤数据表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZXS_14_A04_XSWWYTZQSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZXS_14_A04_XSWWYTZQSJ](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[ZQXMID]  int  NOT NULL,--值勤项目ID
	[JXBMC]  nvarchar(36)  NOT NULL,--教学部名称
	[ZQRYLX]  int  NOT NULL,--值勤人员类型
	[ZQRYID]  int  NOT NULL,--值勤人员ID
	[ZQNR]  text  NOT NULL,--值勤内容
	[ZQSJ]  datetime  NOT NULL,--值勤时间
	[TJSJ]  datetime  NOT NULL,--添加时间
CONSTRAINT [PK_EDU_ZZXS_14_A04_XSWWYTZQSJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--学生五位一体值勤项目表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZXS_14_A05_XSWWYTZQXM]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZXS_14_A05_XSWWYTZQXM](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[ZQXMMC]  nvarchar(36)  NOT NULL,--值勤项目名称
CONSTRAINT [PK_EDU_ZZXS_14_A05_XSWWYTZQXM] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--学生五位一体值勤人员安排表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZXS_14_A06_XSWWYTZQRYAP]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZXS_14_A06_XSWWYTZQRYAP](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[ZQXMID]  int  NOT NULL,--值勤项目ID
	[ZQRYLX]  int  NOT NULL,--值勤人员类型
	[ZQRYID]  int  NOT NULL,--值勤人员ID
	[ZQKSSJ]  datetime  NOT NULL,--值勤开始时间
	[ZQJSSJ]  datetime  NOT NULL,--值勤结束时间
CONSTRAINT [PK_EDU_ZZXS_14_A06_XSWWYTZQRYAP] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--以下为添加注释语句
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生信息数据表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_01_XSXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'XH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'XM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'英文姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'YWXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'姓名拼音' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'XMPY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'曾用名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'CYM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'身份证件类型码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'SFZJLXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'身份证件号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'SFZJH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'性别码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'XBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'血型码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'XXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'出生日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'CSRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'出生地码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'CSDM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'籍贯' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'JG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'民族码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'MZM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'婚姻状况码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'HYZKM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'信仰宗教码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'XYZJM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'港澳台侨外码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'GATQWM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'健康状况码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'JKZKM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'政治面貌码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'ZZMMM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'户口所在地行政区划码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'HKSZDXZQHM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'户口类别码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'HKLBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否是流动人口' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'SFSLDRK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'国籍/地区' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'GJDQM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'特长' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'TC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生联系电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'XSLXDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'网络地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'WLDZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'即时通讯号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'JSTXH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电子信箱' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'DZXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'照片(路径)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_01_XSXX', @level2type=N'COLUMN',@level2name=N'ZP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生扩展数据表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_A01_XSXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生信息数据表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_A01_XSXX', @level2type=N'COLUMN',@level2name=N'XSXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_A01_XSXX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'专业基本信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_A01_XSXX', @level2type=N'COLUMN',@level2name=N'ZYXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学年' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_A01_XSXX', @level2type=N'COLUMN',@level2name=N'XNID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学期表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_A01_XSXX', @level2type=N'COLUMN',@level2name=N'ZZXQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'家庭地址区划码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_A01_XSXX', @level2type=N'COLUMN',@level2name=N'JTDZQH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'家庭详细地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_A01_XSXX', @level2type=N'COLUMN',@level2name=N'JTXXDZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'户籍详细地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_A01_XSXX', @level2type=N'COLUMN',@level2name=N'HJXXDZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'户籍性质代码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_A01_XSXX', @level2type=N'COLUMN',@level2name=N'HJXZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'不宜军训' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_A01_XSXX', @level2type=N'COLUMN',@level2name=N'BYJX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'初三班主任' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_A01_XSXX', @level2type=N'COLUMN',@level2name=N'CSBZR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'曾担任何种职务' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_A01_XSXX', @level2type=N'COLUMN',@level2name=N'DRZW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'愿意担任班干部，何职' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_A01_XSXX', @level2type=N'COLUMN',@level2name=N'YYDR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_A01_XSXX', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'毕业生类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_A01_XSXX', @level2type=N'COLUMN',@level2name=N'BYLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_A01_XSXX', @level2type=N'COLUMN',@level2name=N'XSLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否住宿' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_A01_XSXX', @level2type=N'COLUMN',@level2name=N'SFZS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生报名时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_01_A01_XSXX', @level2type=N'COLUMN',@level2name=N'XSBMSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生家庭信息数据表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_01_XSJTXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生信息数据表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_01_XSJTXX', @level2type=N'COLUMN',@level2name=N'XSXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_01_XSJTXX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'家庭住址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_01_XSJTXX', @level2type=N'COLUMN',@level2name=N'JTZZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'家庭邮政编码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_01_XSJTXX', @level2type=N'COLUMN',@level2name=N'JTYZBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'家庭电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_01_XSJTXX', @level2type=N'COLUMN',@level2name=N'JTDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'家庭联系人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_01_XSJTXX', @level2type=N'COLUMN',@level2name=N'JTLXR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'家庭电子信箱' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_01_XSJTXX', @level2type=N'COLUMN',@level2name=N'JTDZXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'家庭人口' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_01_XSJTXX', @level2type=N'COLUMN',@level2name=N'JTRK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'家庭主要收入来源' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_01_XSJTXX', @level2type=N'COLUMN',@level2name=N'JTZYSRLY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'家庭月收入金额' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_01_XSJTXX', @level2type=N'COLUMN',@level2name=N'JTYSRJE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'家庭年收入金额' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_01_XSJTXX', @level2type=N'COLUMN',@level2name=N'JTNSRJE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'离家最近火车站' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_01_XSJTXX', @level2type=N'COLUMN',@level2name=N'LJZJHCZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生联系人数据表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_A01_XSLXR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_A01_XSLXR', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_A01_XSLXR', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生信息数据表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_A01_XSLXR', @level2type=N'COLUMN',@level2name=N'XSXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'关系码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_A01_XSLXR', @level2type=N'COLUMN',@level2name=N'GXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系人姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_A01_XSLXR', @level2type=N'COLUMN',@level2name=N'LXRXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'邮政编码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_A01_XSLXR', @level2type=N'COLUMN',@level2name=N'YZBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'通信地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_A01_XSLXR', @level2type=N'COLUMN',@level2name=N'TXDZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_A01_XSLXR', @level2type=N'COLUMN',@level2name=N'DH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'移动电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_A01_XSLXR', @level2type=N'COLUMN',@level2name=N'YDDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'传真电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_A01_XSLXR', @level2type=N'COLUMN',@level2name=N'CZDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电子信箱' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_A01_XSLXR', @level2type=N'COLUMN',@level2name=N'DZXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'网络地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_A01_XSLXR', @level2type=N'COLUMN',@level2name=N'WLDZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'即时通讯号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_A01_XSLXR', @level2type=N'COLUMN',@level2name=N'JSTXH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生家庭成员数据表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_02_XSJTCY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_02_XSJTCY', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_02_XSJTCY', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生信息数据表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_02_XSJTCY', @level2type=N'COLUMN',@level2name=N'XSXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_02_XSJTCY', @level2type=N'COLUMN',@level2name=N'XM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'关系码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_02_XSJTCY', @level2type=N'COLUMN',@level2name=N'GXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'家庭成员职业码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_02_XSJTCY', @level2type=N'COLUMN',@level2name=N'JTCYZYM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所在单位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_02_XSJTCY', @level2type=N'COLUMN',@level2name=N'SZDW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'政治面貌码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_02_XSJTCY', @level2type=N'COLUMN',@level2name=N'ZZMMM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_02_XSJTCY', @level2type=N'COLUMN',@level2name=N'DH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'移动电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_02_XSJTCY', @level2type=N'COLUMN',@level2name=N'YDDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生家庭经济情况数据表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_A02_XSJTJJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生信息数据表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_A02_XSJTJJ', @level2type=N'COLUMN',@level2name=N'XSXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_A02_XSJTJJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'赡养人口' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_A02_XSJTJJ', @level2type=N'COLUMN',@level2name=N'SYRK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'劳动力人口' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_A02_XSJTJJ', @level2type=N'COLUMN',@level2name=N'LDLRK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'家庭人均月收入' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_A02_XSJTJJ', @level2type=N'COLUMN',@level2name=N'JTRJYSR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'家庭类别码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_A02_XSJTJJ', @level2type=N'COLUMN',@level2name=N'JTLBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'困难原因码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_A02_XSJTJJ', @level2type=N'COLUMN',@level2name=N'KNYYM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'困难程度码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_A02_XSJTJJ', @level2type=N'COLUMN',@level2name=N'KNCDM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否低保' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_A02_XSJTJJ', @level2type=N'COLUMN',@level2name=N'SFDB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'入学前户口类别码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_A02_XSJTJJ', @level2type=N'COLUMN',@level2name=N'RXQHKLBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'就学地低保线' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_02_A02_XSJTJJ', @level2type=N'COLUMN',@level2name=N'JXDDBX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生成绩数据类表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_06_01_XSCJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_06_01_XSCJ', @level2type=N'COLUMN',@level2name=N'XSXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_06_01_XSCJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_06_01_XSCJ', @level2type=N'COLUMN',@level2name=N'KCH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学期ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_06_01_XSCJ', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_06_01_XSCJ', @level2type=N'COLUMN',@level2name=N'KCMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学分' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_06_01_XSCJ', @level2type=N'COLUMN',@level2name=N'XF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学期名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_06_01_XSCJ', @level2type=N'COLUMN',@level2name=N'XQMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'平时成绩' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_06_01_XSCJ', @level2type=N'COLUMN',@level2name=N'PSCJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'成绩' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_06_01_XSCJ', @level2type=N'COLUMN',@level2name=N'CJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'考试性质' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_06_01_XSCJ', @level2type=N'COLUMN',@level2name=N'KSXZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'任课教工ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_06_01_XSCJ', @level2type=N'COLUMN',@level2name=N'RKJGID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'任课教工号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_06_01_XSCJ', @level2type=N'COLUMN',@level2name=N'RKJGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'成绩录入教工ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_06_01_XSCJ', @level2type=N'COLUMN',@level2name=N'CJLRJGID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'成绩录入教工号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_06_01_XSCJ', @level2type=N'COLUMN',@level2name=N'CJLRJGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'成绩录入日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_06_01_XSCJ', @level2type=N'COLUMN',@level2name=N'CJLRRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'期中成绩' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_06_01_XSCJ', @level2type=N'COLUMN',@level2name=N'QZCJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'期末成绩' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_06_01_XSCJ', @level2type=N'COLUMN',@level2name=N'QMCJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程清单ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_06_01_XSCJ', @level2type=N'COLUMN',@level2name=N'KCQDID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学籍基本数据表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_01_XJSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生信息数据表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_01_XJSJ', @level2type=N'COLUMN',@level2name=N'XSXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_01_XJSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'专业基本信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_01_XJSJ', @level2type=N'COLUMN',@level2name=N'ZYXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校班级数据表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_01_XJSJ', @level2type=N'COLUMN',@level2name=N'ZZBJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校年级数据表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_01_XJSJ', @level2type=N'COLUMN',@level2name=N'ZZNJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'入学年月' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_01_XJSJ', @level2type=N'COLUMN',@level2name=N'RXNY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生类别码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_01_XJSJ', @level2type=N'COLUMN',@level2name=N'XSLBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学制' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_01_XJSJ', @level2type=N'COLUMN',@level2name=N'XZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'专业码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_01_XJSJ', @level2type=N'COLUMN',@level2name=N'ZYM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生当前状态码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_01_XJSJ', @level2type=N'COLUMN',@level2name=N'XSDQZTM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学籍异动数据子类表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_02_XJYD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学籍异动表编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_02_XJYD', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_02_XJYD', @level2type=N'COLUMN',@level2name=N'XSXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_02_XJYD', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'异动类别码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_02_XJYD', @level2type=N'COLUMN',@level2name=N'YDLBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'异动日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_02_XJYD', @level2type=N'COLUMN',@level2name=N'YDRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'异动原因码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_02_XJYD', @level2type=N'COLUMN',@level2name=N'YDYYM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审批日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_02_XJYD', @level2type=N'COLUMN',@level2name=N'SPRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审批文号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_02_XJYD', @level2type=N'COLUMN',@level2name=N'SPWH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'经办人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_02_XJYD', @level2type=N'COLUMN',@level2name=N'JBRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'经办人工号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_02_XJYD', @level2type=N'COLUMN',@level2name=N'JBRGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'异动来源学校码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_02_XJYD', @level2type=N'COLUMN',@level2name=N'YDLYXXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'异动去向学校码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_02_XJYD', @level2type=N'COLUMN',@level2name=N'YDQXXXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'异动说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_02_XJYD', @level2type=N'COLUMN',@level2name=N'YDSM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'原专业码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_02_XJYD', @level2type=N'COLUMN',@level2name=N'YZYM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'原专业ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_02_XJYD', @level2type=N'COLUMN',@level2name=N'YZYID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'原班号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_02_XJYD', @level2type=N'COLUMN',@level2name=N'YBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'原年级' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_02_XJYD', @level2type=N'COLUMN',@level2name=N'YNJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'现专业码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_02_XJYD', @level2type=N'COLUMN',@level2name=N'XZYM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'现专业ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_02_XJYD', @level2type=N'COLUMN',@level2name=N'XZYID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'现班号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_02_XJYD', @level2type=N'COLUMN',@level2name=N'XBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'现年级' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_02_XJYD', @level2type=N'COLUMN',@level2name=N'XNJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生注册信息数据子类表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_03_XSZCXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_03_XSZCXX', @level2type=N'COLUMN',@level2name=N'XSXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_03_XSZCXX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学期ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_03_XSZCXX', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'注册状况码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_03_XSZCXX', @level2type=N'COLUMN',@level2name=N'ZCZKM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'注册日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_03_XSZCXX', @level2type=N'COLUMN',@level2name=N'ZCRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'报到日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_03_XSZCXX', @level2type=N'COLUMN',@level2name=N'BDRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'未注册原因' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_03_XSZCXX', @level2type=N'COLUMN',@level2name=N'WZCYY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'未注册/未报到去向' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_03_XSZCXX', @level2type=N'COLUMN',@level2name=N'WZCWBDQX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否请假' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_03_XSZCXX', @level2type=N'COLUMN',@level2name=N'SFQJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'未按时注册学期码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_07_03_XSZCXX', @level2type=N'COLUMN',@level2name=N'WASZCXQM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'奖学金数据子类表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_10_02_JXJSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_10_02_JXJSJ', @level2type=N'COLUMN',@level2name=N'XSXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_10_02_JXJSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'奖学金名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_10_02_JXJSJ', @level2type=N'COLUMN',@level2name=N'JXJMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'奖学金编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_10_02_JXJSJ', @level2type=N'COLUMN',@level2name=N'JXJBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'奖学金等级' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_10_02_JXJSJ', @level2type=N'COLUMN',@level2name=N'JXJDJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'奖学金类型码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_10_02_JXJSJ', @level2type=N'COLUMN',@level2name=N'JXJLXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'奖学金额' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_10_02_JXJSJ', @level2type=N'COLUMN',@level2name=N'JXJE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'获奖时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_10_02_JXJSJ', @level2type=N'COLUMN',@level2name=N'HJSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资助单位或个人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_10_02_JXJSJ', @level2type=N'COLUMN',@level2name=N'ZZDWHGR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'奖学金来源码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_10_02_JXJSJ', @level2type=N'COLUMN',@level2name=N'JXJLYM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否审核' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_10_02_JXJSJ', @level2type=N'COLUMN',@level2name=N'SFSH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学期ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_10_02_JXJSJ', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'助学金数据子类表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_10_03_ZXJSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_10_03_ZXJSJ', @level2type=N'COLUMN',@level2name=N'XSXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_10_03_ZXJSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中考报名号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_10_03_ZXJSJ', @level2type=N'COLUMN',@level2name=N'ZKBMH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'银行卡号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_10_03_ZXJSJ', @level2type=N'COLUMN',@level2name=N'YHKH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'助学金额' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_10_03_ZXJSJ', @level2type=N'COLUMN',@level2name=N'ZXJE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'始发时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_10_03_ZXJSJ', @level2type=N'COLUMN',@level2name=N'SFSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'停发时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_10_03_ZXJSJ', @level2type=N'COLUMN',@level2name=N'TFSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'停发原因' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_10_03_ZXJSJ', @level2type=N'COLUMN',@level2name=N'TFYY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'助学金名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_10_03_ZXJSJ', @level2type=N'COLUMN',@level2name=N'ZXJMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资助单位或个人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_10_03_ZXJSJ', @level2type=N'COLUMN',@level2name=N'ZZDWHGR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'助学金类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_10_03_ZXJSJ', @level2type=N'COLUMN',@level2name=N'ZXJLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否审核' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_10_03_ZXJSJ', @level2type=N'COLUMN',@level2name=N'SFSH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学期ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_10_03_ZXJSJ', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生考核项目表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_14_A01_XSKHXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_14_A01_XSKHXM', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_14_A01_XSKHXM', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'项目名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_14_A01_XSKHXM', @level2type=N'COLUMN',@level2name=N'XMMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生考核表数据表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_14_A02_XSKHBSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_14_A02_XSKHBSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_14_A02_XSKHBSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'考核表名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_14_A02_XSKHBSJ', @level2type=N'COLUMN',@level2name=N'KHBMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'考核班级代码列表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_14_A02_XSKHBSJ', @level2type=N'COLUMN',@level2name=N'KHBJDMLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'考核项目ID列表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_14_A02_XSKHBSJ', @level2type=N'COLUMN',@level2name=N'KHXMIDLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'考核教师名称列表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_14_A02_XSKHBSJ', @level2type=N'COLUMN',@level2name=N'KHJSMCLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'考核教师ID列表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_14_A02_XSKHBSJ', @level2type=N'COLUMN',@level2name=N'KHJSIDLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生日常行为规范考核数据表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_14_A03_XSRCXWGFKHSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_14_A03_XSRCXWGFKHSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_14_A03_XSRCXWGFKHSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'考核班级代码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_14_A03_XSRCXWGFKHSJ', @level2type=N'COLUMN',@level2name=N'KHBJDM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'考核表ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_14_A03_XSRCXWGFKHSJ', @level2type=N'COLUMN',@level2name=N'KHBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'考核项目ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_14_A03_XSRCXWGFKHSJ', @level2type=N'COLUMN',@level2name=N'KHXMID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'考核分值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_14_A03_XSRCXWGFKHSJ', @level2type=N'COLUMN',@level2name=N'KHFZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'考核时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_14_A03_XSRCXWGFKHSJ', @level2type=N'COLUMN',@level2name=N'KHSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录教师ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_14_A03_XSRCXWGFKHSJ', @level2type=N'COLUMN',@level2name=N'JLJSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生五位一体值勤数据表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_14_A04_XSWWYTZQSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_14_A04_XSWWYTZQSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_14_A04_XSWWYTZQSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'值勤项目ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_14_A04_XSWWYTZQSJ', @level2type=N'COLUMN',@level2name=N'ZQXMID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教学部名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_14_A04_XSWWYTZQSJ', @level2type=N'COLUMN',@level2name=N'JXBMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'值勤人员类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_14_A04_XSWWYTZQSJ', @level2type=N'COLUMN',@level2name=N'ZQRYLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'值勤人员ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_14_A04_XSWWYTZQSJ', @level2type=N'COLUMN',@level2name=N'ZQRYID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'值勤内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_14_A04_XSWWYTZQSJ', @level2type=N'COLUMN',@level2name=N'ZQNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'值勤时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_14_A04_XSWWYTZQSJ', @level2type=N'COLUMN',@level2name=N'ZQSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_14_A04_XSWWYTZQSJ', @level2type=N'COLUMN',@level2name=N'TJSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生五位一体值勤项目表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_14_A05_XSWWYTZQXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_14_A05_XSWWYTZQXM', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_14_A05_XSWWYTZQXM', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'值勤项目名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_14_A05_XSWWYTZQXM', @level2type=N'COLUMN',@level2name=N'ZQXMMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生五位一体值勤人员安排表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_14_A06_XSWWYTZQRYAP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_14_A06_XSWWYTZQRYAP', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_14_A06_XSWWYTZQRYAP', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'值勤项目ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_14_A06_XSWWYTZQRYAP', @level2type=N'COLUMN',@level2name=N'ZQXMID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'值勤人员类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_14_A06_XSWWYTZQRYAP', @level2type=N'COLUMN',@level2name=N'ZQRYLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'值勤人员ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_14_A06_XSWWYTZQRYAP', @level2type=N'COLUMN',@level2name=N'ZQRYID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'值勤开始时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_14_A06_XSWWYTZQRYAP', @level2type=N'COLUMN',@level2name=N'ZQKSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'值勤结束时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXS_14_A06_XSWWYTZQRYAP', @level2type=N'COLUMN',@level2name=N'ZQJSSJ'
GO
