--空间名：EDU_ZZJG  生成器：SqlBuilder0.1

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJG_01_01_JZGJBSJ')
            and   type = 'U')
   drop table EDU_ZZJG_01_01_JZGJBSJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJG_01_A01_JZGKZ')
            and   type = 'U')
   drop table EDU_ZZJG_01_A01_JZGKZ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJG_02_02_XNGWSJ')
            and   type = 'U')
   drop table EDU_ZZJG_02_02_XNGWSJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJG_04_A01_JBDJ')
            and   type = 'U')
   drop table EDU_ZZJG_04_A01_JBDJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJG_07_01_JZGZYNL')
            and   type = 'U')
   drop table EDU_ZZJG_07_01_JZGZYNL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJG_11_A01_KPFZ')
            and   type = 'U')
   drop table EDU_ZZJG_11_A01_KPFZ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJG_11_A02_KPXX')
            and   type = 'U')
   drop table EDU_ZZJG_11_A02_KPXX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJG_11_A03_KPFS')
            and   type = 'U')
   drop table EDU_ZZJG_11_A03_KPFS
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJG_11_A04_KPSJ')
            and   type = 'U')
   drop table EDU_ZZJG_11_A04_KPSJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJG_11_A05_KPNRSJ')
            and   type = 'U')
   drop table EDU_ZZJG_11_A05_KPNRSJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJG_11_A06_KPNRXM')
            and   type = 'U')
   drop table EDU_ZZJG_11_A06_KPNRXM
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJG_11_A07_KPBHNR')
            and   type = 'U')
   drop table EDU_ZZJG_11_A07_KPBHNR
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJG_11_A08_KPRY')
            and   type = 'U')
   drop table EDU_ZZJG_11_A08_KPRY
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJG_11_A09_KPJG')
            and   type = 'U')
   drop table EDU_ZZJG_11_A09_KPJG
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJG_12_A01_XCLX')
            and   type = 'U')
   drop table EDU_ZZJG_12_A01_XCLX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJG_12_A02_XC')
            and   type = 'U')
   drop table EDU_ZZJG_12_A02_XC
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJG_13_A01_KSLX')
            and   type = 'U')
   drop table EDU_ZZJG_13_A01_KSLX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJG_13_A02_KS')
            and   type = 'U')
   drop table EDU_ZZJG_13_A02_KS
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJG_14_A01_BKLX')
            and   type = 'U')
   drop table EDU_ZZJG_14_A01_BKLX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJG_14_A02_BK')
            and   type = 'U')
   drop table EDU_ZZJG_14_A02_BK
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJG_15_A01_ZYPGLX')
            and   type = 'U')
   drop table EDU_ZZJG_15_A01_ZYPGLX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJG_15_A02_ZYPG')
            and   type = 'U')
   drop table EDU_ZZJG_15_A02_ZYPG
go
--教职工基本数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJG_01_01_JZGJBSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJG_01_01_JZGJBSJ](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校名
	[GH]  nvarchar(20)  NULL,--工号
	[XM]  nvarchar(36)  NOT NULL,--姓名
	[YWXM]  nvarchar(60)  NULL,--英文姓名
	[XMPY]  nvarchar(60)  NOT NULL,--姓名拼音
	[CYM]  nvarchar(36)  NULL,--曾用名
	[SFZJLXM]  nvarchar(1)  NOT NULL,--身份证件类型码
	[SFZJH]  nvarchar(20)  NOT NULL,--身份证件号
	[CSRQ]  nvarchar(8)  NOT NULL,--出生日期
	[XBM]  nvarchar(1)  NOT NULL,--性别码
	[MZM]  nvarchar(2)  NOT NULL,--民族码
	[XXM]  nvarchar(1)  NULL,--血型码
	[JKZKM]  nvarchar(1)  NULL,--健康状况码
	[HYZTM]  nvarchar(2)  NOT NULL,--婚姻状态码
	[ZZMMM]  nvarchar(2)  NOT NULL,--政治面貌码
	[GATQWM]  nvarchar(2)  NULL,--港澳台侨外码
	[JG]  nvarchar(20)  NOT NULL,--籍贯
	[GJDQM]  nvarchar(3)  NULL,--国籍/地区码
	[CSDXZQHM]  nvarchar(6)  NOT NULL,--出生地行政区划码
	[XYZJM]  nvarchar(2)  NULL,--信仰宗教码
	[JZGHKSZDXZQHM]  nvarchar(6)  NOT NULL,--教职工户口所在地行政区划码
	[HKLBM]  nvarchar(1)  NOT NULL,--户口类别码
	[DQZZ]  nvarchar(180)  NOT NULL,--当前住址
	[DQZZYZBM]  nvarchar(6)  NOT NULL,--当前住址邮政编码
	[CJGZNY]  nvarchar(6)  NOT NULL,--参加工作年月
	[CJNY]  nvarchar(6)  NOT NULL,--从教年月
	[LXNY]  nvarchar(6)  NOT NULL,--来校年月
	[BZLBM]  nvarchar(2)  NOT NULL,--编制类别码
	[JZGLBM]  nvarchar(2)  NOT NULL,--教职工类别码
	[GWLBM]  nvarchar(1)  NOT NULL,--岗位类别码
	[SFJZJS]  nvarchar(1)  NOT NULL,--是否兼职教师
	[SFSSXJS]  nvarchar(1)  NOT NULL,--是否双师型教师
	[ZP]  nvarchar(100)  NULL,--照片(路径)
	[DQZTM]  nvarchar(2)  NOT NULL,--当前状态码
	[YDDH]  nvarchar(30)  NOT NULL,--移动电话
	[GDDH]  nvarchar(30)  NULL,--固定电话
	[TXDZYZBM]  nvarchar(6)  NULL,--通信地址邮政编码
	[TXDZ]  nvarchar(180)  NULL,--通信地址
	[DZXX]  nvarchar(40)  NOT NULL,--电子信箱
	[WLDZ]  nvarchar(60)  NULL,--网络地址
	[JSTXH]  nvarchar(40)  NULL,--即时通讯号
CONSTRAINT [PK_EDU_ZZJG_01_01_JZGJBSJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--教职工扩展表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJG_01_A01_JZGKZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJG_01_A01_JZGKZ](
	[JZGJBSJID]  int  NOT NULL,--教工基本信息ID
	[SCHOOLID]  int  NOT NULL,--学校ID
	[JL]  int  NOT NULL,--教龄
	[GL]  int  NOT NULL,--工龄
	[GZJY]  text  NOT NULL,--工作经验
	[LDJN]  text  NOT NULL,--劳动技能
	[XXJL]  text  NOT NULL,--学习经历
CONSTRAINT [PK_EDU_ZZJG_01_A01_JZGKZ] PRIMARY KEY CLUSTERED
(
	[JZGJBSJID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--校内岗位数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJG_02_02_XNGWSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJG_02_02_XNGWSJ](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校名
	[GWID]  int  NOT NULL,--岗位表ID
	[JZGJBSJID]  int  NOT NULL,--教职工基本数据子类表
	[GWQSNY]  nvarchar(6)  NOT NULL,--岗位起始年月
	[GWJSNY]  nvarchar(6)  NOT NULL,--岗位结束年月
	[SFZG]  nvarchar(1)  NOT NULL,--是否在岗
	[ZWMC]  nvarchar(10)  NOT NULL,--职务名称
	[JGH]  nvarchar(6)  NOT NULL,--机构号
CONSTRAINT [PK_EDU_ZZJG_02_02_XNGWSJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--加班登记表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJG_04_A01_JBDJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJG_04_A01_JBDJ](
	[ID]  int  NOT NULL,--加班登记表ID
	[SCHOOLID]  int  NOT NULL,--学校ID
	[JZGJBSJID]  int  NOT NULL,--教职工ID
	[KSSJ]  datetime  NOT NULL,--开始时间
	[JSSJ]  datetime  NOT NULL,--结束时间
	[JBLX]  int  NOT NULL,--加班类型
CONSTRAINT [PK_EDU_ZZJG_04_A01_JBDJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--教职工专业能力与资格证书数据类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJG_07_01_JZGZYNL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJG_07_01_JZGZYNL](
	[SCHOOLID]  int  NOT NULL,--学校名
	[JZGJBSJID]  int  NOT NULL,--教职工ID
	[ZSMC]  nvarchar(40)  NOT NULL,--证书名称
	[ZSBH]  nvarchar(20)  NULL,--证书编号
	[ZSBFDW]  nvarchar(60)  NULL,--证书颁发单位
	[ZSBFRQ]  nvarchar(8)  NOT NULL,--证书颁发日期
	[ZSBZ]  text  NULL,--证书备注
	[SFSZYZGZS]  nvarchar(1)  NOT NULL,--是否是职业资格证书
CONSTRAINT [PK_EDU_ZZJG_07_01_JZGZYNL] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[JZGJBSJID] ASC,
	[ZSMC] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--考评分值表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJG_11_A01_KPFZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJG_11_A01_KPFZ](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[FZMC]  nvarchar(20)  NOT NULL,--分值名称
	[FSZ]  int  NOT NULL,--分数值
CONSTRAINT [PK_EDU_ZZJG_11_A01_KPFZ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--考评选项表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJG_11_A02_KPXX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJG_11_A02_KPXX](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[XXMC]  nvarchar(20)  NOT NULL,--选项名称
	[KPFSID]  int  NOT NULL,--考评方式ID
	[KPFZID]  int  NOT NULL,--考评分值ID
CONSTRAINT [PK_EDU_ZZJG_11_A02_KPXX] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--考评方式表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJG_11_A03_KPFS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJG_11_A03_KPFS](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[KPFSMC]  nvarchar(20)  NOT NULL,--考评方式名称
CONSTRAINT [PK_EDU_ZZJG_11_A03_KPFS] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--考评数据表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJG_11_A04_KPSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJG_11_A04_KPSJ](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[XNID]  int  NOT NULL,--学年ID
	[XQID]  int  NOT NULL,--学期ID
	[KPMC]  nvarchar(20)  NOT NULL,--考评名称
	[BPRIDLB]  text  NOT NULL,--被评人ID列表
	[KSSJ]  datetime  NOT NULL,--开始时间
	[JSSJ]  datetime  NOT NULL,--结束时间
	[ZT]  int  NOT NULL,--状态
CONSTRAINT [PK_EDU_ZZJG_11_A04_KPSJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--考评内容数据表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJG_11_A05_KPNRSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJG_11_A05_KPNRSJ](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[KPNRMC]  nvarchar(20)  NOT NULL,--考评内容名称
	[KPNRLX]  int  NOT NULL,--考评内容类型
	[KPZTID]  int  NOT NULL,--考评主体ID
CONSTRAINT [PK_EDU_ZZJG_11_A05_KPNRSJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--考评内容项目表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJG_11_A06_KPNRXM]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJG_11_A06_KPNRXM](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[XMMC]  nvarchar(20)  NOT NULL,--项目名称
	[XMXX]  text  NOT NULL,--项目信息
	[KPNRID]  int  NOT NULL,--考评内容ID
	[KPFSID]  int  NOT NULL,--考评方式ID
	[QZ]  int  NOT NULL,--权重
CONSTRAINT [PK_EDU_ZZJG_11_A06_KPNRXM] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--考评包含内容表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJG_11_A07_KPBHNR]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJG_11_A07_KPBHNR](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[KPID]  int  NOT NULL,--考评ID
	[KPNRID]  int  NOT NULL,--考评内容ID
	[QZ]  int  NOT NULL,--权重
	[XSFS]  int  NOT NULL,--显示方式
CONSTRAINT [PK_EDU_ZZJG_11_A07_KPBHNR] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--考评人员表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJG_11_A08_KPRY]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJG_11_A08_KPRY](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[KPBHNRID]  int  NOT NULL,--考评包含内容表ID
	[KPRIDLB]  text  NOT NULL,--考评人ID列表
	[BPRIDLB]  text  NOT NULL,--被评人ID列表
	[KPZTID]  int  NOT NULL,--考评主体ID
CONSTRAINT [PK_EDU_ZZJG_11_A08_KPRY] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--考评结果表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJG_11_A09_KPJG]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJG_11_A09_KPJG](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[KPBHNRID]  int  NOT NULL,--考评包含内容表ID
	[KPNRXMID]  int  NOT NULL,--考评内容项目ID
	[KPFSID]  int  NOT NULL,--考评方式ID
	[KPRID]  int  NOT NULL,--考评人ID
	[BPRID]  int  NOT NULL,--被评人ID
	[KPZTID]  int  NOT NULL,--考评主体ID
	[KPFZ]  int  NOT NULL,--考评分值
CONSTRAINT [PK_EDU_ZZJG_11_A09_KPJG] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--薪酬类型表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJG_12_A01_XCLX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJG_12_A01_XCLX](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[XCLXMC]  nvarchar(30)  NOT NULL,--类型名称
CONSTRAINT [PK_EDU_ZZJG_12_A01_XCLX] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--薪酬表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJG_12_A02_XC]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJG_12_A02_XC](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[JZGJBSJID]  int  NOT NULL,--教工基本信息ID
	[KSSJ]  datetime  NOT NULL,--开始时间
	[JSSJ]  datetime  NOT NULL,--结束时间
	[XCLXID]  int  NOT NULL,--薪酬类型ID
	[JE]  decimal(8, 2)  NOT NULL,--金额
	[FFSJ]  datetime  NOT NULL,--发放时间
CONSTRAINT [PK_EDU_ZZJG_12_A02_XC] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--课时类型表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJG_13_A01_KSLX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJG_13_A01_KSLX](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[KSLXMC]  nvarchar(30)  NOT NULL,--类型名称
CONSTRAINT [PK_EDU_ZZJG_13_A01_KSLX] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--课时表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJG_13_A02_KS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJG_13_A02_KS](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[JZGJBSJID]  int  NOT NULL,--教工基本信息ID
	[KSSJ]  datetime  NOT NULL,--开始时间
	[JSSJ]  datetime  NOT NULL,--结束时间
	[KSLXID]  int  NOT NULL,--课时类型ID
	[SL]  int  NOT NULL,--数量
	[TJSJ]  datetime  NOT NULL,--添加时间
CONSTRAINT [PK_EDU_ZZJG_13_A02_KS] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--备课类型表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJG_14_A01_BKLX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJG_14_A01_BKLX](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[BKLXMC]  nvarchar(30)  NOT NULL,--类型名称
CONSTRAINT [PK_EDU_ZZJG_14_A01_BKLX] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--备课表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJG_14_A02_BK]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJG_14_A02_BK](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[JZGJBSJID]  int  NOT NULL,--教工基本信息ID
	[KSSJ]  datetime  NOT NULL,--开始时间
	[JSSJ]  datetime  NOT NULL,--结束时间
	[BKLXID]  int  NOT NULL,--备课类型ID
	[SL]  int  NOT NULL,--数量
	[TJSJ]  datetime  NOT NULL,--添加时间
CONSTRAINT [PK_EDU_ZZJG_14_A02_BK] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--作业批改类型表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJG_15_A01_ZYPGLX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJG_15_A01_ZYPGLX](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[PGLXMC]  nvarchar(30)  NOT NULL,--类型名称
CONSTRAINT [PK_EDU_ZZJG_15_A01_ZYPGLX] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--作业批改表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJG_15_A02_ZYPG]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJG_15_A02_ZYPG](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[JZGJBSJID]  int  NOT NULL,--教工基本信息ID
	[KSSJ]  datetime  NOT NULL,--开始时间
	[JSSJ]  datetime  NOT NULL,--结束时间
	[PGLXID]  int  NOT NULL,--批改类型ID
	[SL]  int  NOT NULL,--数量
	[TJSJ]  datetime  NOT NULL,--添加时间
CONSTRAINT [PK_EDU_ZZJG_15_A02_ZYPG] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--以下为添加注释语句
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教职工基本数据子类表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'GH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'XM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'英文姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'YWXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'姓名拼音' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'XMPY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'曾用名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'CYM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'身份证件类型码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'SFZJLXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'身份证件号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'SFZJH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'出生日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'CSRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'性别码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'XBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'民族码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'MZM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'血型码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'XXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'健康状况码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'JKZKM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'婚姻状态码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'HYZTM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'政治面貌码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'ZZMMM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'港澳台侨外码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'GATQWM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'籍贯' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'JG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'国籍/地区码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'GJDQM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'出生地行政区划码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'CSDXZQHM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'信仰宗教码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'XYZJM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教职工户口所在地行政区划码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'JZGHKSZDXZQHM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'户口类别码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'HKLBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'当前住址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'DQZZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'当前住址邮政编码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'DQZZYZBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'参加工作年月' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'CJGZNY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'从教年月' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'CJNY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'来校年月' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'LXNY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编制类别码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'BZLBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教职工类别码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'JZGLBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'岗位类别码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'GWLBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否兼职教师' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'SFJZJS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否双师型教师' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'SFSSXJS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'照片(路径)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'ZP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'当前状态码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'DQZTM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'移动电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'YDDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'固定电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'GDDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'通信地址邮政编码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'TXDZYZBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'通信地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'TXDZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电子信箱' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'DZXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'网络地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'WLDZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'即时通讯号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'JSTXH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教职工扩展表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_A01_JZGKZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教工基本信息ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_A01_JZGKZ', @level2type=N'COLUMN',@level2name=N'JZGJBSJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_A01_JZGKZ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教龄' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_A01_JZGKZ', @level2type=N'COLUMN',@level2name=N'JL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工龄' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_A01_JZGKZ', @level2type=N'COLUMN',@level2name=N'GL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工作经验' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_A01_JZGKZ', @level2type=N'COLUMN',@level2name=N'GZJY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'劳动技能' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_A01_JZGKZ', @level2type=N'COLUMN',@level2name=N'LDJN'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学习经历' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_A01_JZGKZ', @level2type=N'COLUMN',@level2name=N'XXJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'校内岗位数据子类表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_02_02_XNGWSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_02_02_XNGWSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_02_02_XNGWSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'岗位表ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_02_02_XNGWSJ', @level2type=N'COLUMN',@level2name=N'GWID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教职工基本数据子类表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_02_02_XNGWSJ', @level2type=N'COLUMN',@level2name=N'JZGJBSJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'岗位起始年月' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_02_02_XNGWSJ', @level2type=N'COLUMN',@level2name=N'GWQSNY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'岗位结束年月' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_02_02_XNGWSJ', @level2type=N'COLUMN',@level2name=N'GWJSNY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否在岗' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_02_02_XNGWSJ', @level2type=N'COLUMN',@level2name=N'SFZG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'职务名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_02_02_XNGWSJ', @level2type=N'COLUMN',@level2name=N'ZWMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'机构号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_02_02_XNGWSJ', @level2type=N'COLUMN',@level2name=N'JGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'加班登记表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_04_A01_JBDJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'加班登记表ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_04_A01_JBDJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_04_A01_JBDJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教职工ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_04_A01_JBDJ', @level2type=N'COLUMN',@level2name=N'JZGJBSJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开始时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_04_A01_JBDJ', @level2type=N'COLUMN',@level2name=N'KSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'结束时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_04_A01_JBDJ', @level2type=N'COLUMN',@level2name=N'JSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'加班类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_04_A01_JBDJ', @level2type=N'COLUMN',@level2name=N'JBLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教职工专业能力与资格证书数据类表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_07_01_JZGZYNL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_07_01_JZGZYNL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教职工ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_07_01_JZGZYNL', @level2type=N'COLUMN',@level2name=N'JZGJBSJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'证书名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_07_01_JZGZYNL', @level2type=N'COLUMN',@level2name=N'ZSMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'证书编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_07_01_JZGZYNL', @level2type=N'COLUMN',@level2name=N'ZSBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'证书颁发单位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_07_01_JZGZYNL', @level2type=N'COLUMN',@level2name=N'ZSBFDW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'证书颁发日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_07_01_JZGZYNL', @level2type=N'COLUMN',@level2name=N'ZSBFRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'证书备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_07_01_JZGZYNL', @level2type=N'COLUMN',@level2name=N'ZSBZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否是职业资格证书' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_07_01_JZGZYNL', @level2type=N'COLUMN',@level2name=N'SFSZYZGZS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'考评分值表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_11_A01_KPFZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_11_A01_KPFZ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_11_A01_KPFZ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分值名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_11_A01_KPFZ', @level2type=N'COLUMN',@level2name=N'FZMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分数值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_11_A01_KPFZ', @level2type=N'COLUMN',@level2name=N'FSZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'考评选项表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_11_A02_KPXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_11_A02_KPXX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_11_A02_KPXX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'选项名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_11_A02_KPXX', @level2type=N'COLUMN',@level2name=N'XXMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'考评方式ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_11_A02_KPXX', @level2type=N'COLUMN',@level2name=N'KPFSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'考评分值ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_11_A02_KPXX', @level2type=N'COLUMN',@level2name=N'KPFZID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'考评方式表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_11_A03_KPFS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_11_A03_KPFS', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_11_A03_KPFS', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'考评方式名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_11_A03_KPFS', @level2type=N'COLUMN',@level2name=N'KPFSMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'考评数据表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_11_A04_KPSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_11_A04_KPSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_11_A04_KPSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学年ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_11_A04_KPSJ', @level2type=N'COLUMN',@level2name=N'XNID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学期ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_11_A04_KPSJ', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'考评名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_11_A04_KPSJ', @level2type=N'COLUMN',@level2name=N'KPMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'被评人ID列表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_11_A04_KPSJ', @level2type=N'COLUMN',@level2name=N'BPRIDLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开始时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_11_A04_KPSJ', @level2type=N'COLUMN',@level2name=N'KSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'结束时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_11_A04_KPSJ', @level2type=N'COLUMN',@level2name=N'JSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_11_A04_KPSJ', @level2type=N'COLUMN',@level2name=N'ZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'考评内容数据表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_11_A05_KPNRSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_11_A05_KPNRSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_11_A05_KPNRSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'考评内容名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_11_A05_KPNRSJ', @level2type=N'COLUMN',@level2name=N'KPNRMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'考评内容类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_11_A05_KPNRSJ', @level2type=N'COLUMN',@level2name=N'KPNRLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'考评主体ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_11_A05_KPNRSJ', @level2type=N'COLUMN',@level2name=N'KPZTID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'考评内容项目表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_11_A06_KPNRXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_11_A06_KPNRXM', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_11_A06_KPNRXM', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'项目名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_11_A06_KPNRXM', @level2type=N'COLUMN',@level2name=N'XMMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'项目信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_11_A06_KPNRXM', @level2type=N'COLUMN',@level2name=N'XMXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'考评内容ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_11_A06_KPNRXM', @level2type=N'COLUMN',@level2name=N'KPNRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'考评方式ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_11_A06_KPNRXM', @level2type=N'COLUMN',@level2name=N'KPFSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'权重' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_11_A06_KPNRXM', @level2type=N'COLUMN',@level2name=N'QZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'考评包含内容表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_11_A07_KPBHNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_11_A07_KPBHNR', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_11_A07_KPBHNR', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'考评ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_11_A07_KPBHNR', @level2type=N'COLUMN',@level2name=N'KPID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'考评内容ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_11_A07_KPBHNR', @level2type=N'COLUMN',@level2name=N'KPNRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'权重' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_11_A07_KPBHNR', @level2type=N'COLUMN',@level2name=N'QZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'显示方式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_11_A07_KPBHNR', @level2type=N'COLUMN',@level2name=N'XSFS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'考评人员表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_11_A08_KPRY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_11_A08_KPRY', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_11_A08_KPRY', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'考评包含内容表ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_11_A08_KPRY', @level2type=N'COLUMN',@level2name=N'KPBHNRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'考评人ID列表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_11_A08_KPRY', @level2type=N'COLUMN',@level2name=N'KPRIDLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'被评人ID列表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_11_A08_KPRY', @level2type=N'COLUMN',@level2name=N'BPRIDLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'考评主体ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_11_A08_KPRY', @level2type=N'COLUMN',@level2name=N'KPZTID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'考评结果表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_11_A09_KPJG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_11_A09_KPJG', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_11_A09_KPJG', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'考评包含内容表ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_11_A09_KPJG', @level2type=N'COLUMN',@level2name=N'KPBHNRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'考评内容项目ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_11_A09_KPJG', @level2type=N'COLUMN',@level2name=N'KPNRXMID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'考评方式ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_11_A09_KPJG', @level2type=N'COLUMN',@level2name=N'KPFSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'考评人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_11_A09_KPJG', @level2type=N'COLUMN',@level2name=N'KPRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'被评人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_11_A09_KPJG', @level2type=N'COLUMN',@level2name=N'BPRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'考评主体ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_11_A09_KPJG', @level2type=N'COLUMN',@level2name=N'KPZTID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'考评分值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_11_A09_KPJG', @level2type=N'COLUMN',@level2name=N'KPFZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'薪酬类型表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_12_A01_XCLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_12_A01_XCLX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_12_A01_XCLX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_12_A01_XCLX', @level2type=N'COLUMN',@level2name=N'XCLXMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'薪酬表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_12_A02_XC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_12_A02_XC', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_12_A02_XC', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教工基本信息ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_12_A02_XC', @level2type=N'COLUMN',@level2name=N'JZGJBSJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开始时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_12_A02_XC', @level2type=N'COLUMN',@level2name=N'KSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'结束时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_12_A02_XC', @level2type=N'COLUMN',@level2name=N'JSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'薪酬类型ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_12_A02_XC', @level2type=N'COLUMN',@level2name=N'XCLXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'金额' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_12_A02_XC', @level2type=N'COLUMN',@level2name=N'JE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发放时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_12_A02_XC', @level2type=N'COLUMN',@level2name=N'FFSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课时类型表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_13_A01_KSLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_13_A01_KSLX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_13_A01_KSLX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_13_A01_KSLX', @level2type=N'COLUMN',@level2name=N'KSLXMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课时表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_13_A02_KS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_13_A02_KS', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_13_A02_KS', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教工基本信息ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_13_A02_KS', @level2type=N'COLUMN',@level2name=N'JZGJBSJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开始时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_13_A02_KS', @level2type=N'COLUMN',@level2name=N'KSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'结束时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_13_A02_KS', @level2type=N'COLUMN',@level2name=N'JSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课时类型ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_13_A02_KS', @level2type=N'COLUMN',@level2name=N'KSLXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_13_A02_KS', @level2type=N'COLUMN',@level2name=N'SL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_13_A02_KS', @level2type=N'COLUMN',@level2name=N'TJSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备课类型表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_14_A01_BKLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_14_A01_BKLX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_14_A01_BKLX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_14_A01_BKLX', @level2type=N'COLUMN',@level2name=N'BKLXMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备课表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_14_A02_BK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_14_A02_BK', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_14_A02_BK', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教工基本信息ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_14_A02_BK', @level2type=N'COLUMN',@level2name=N'JZGJBSJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开始时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_14_A02_BK', @level2type=N'COLUMN',@level2name=N'KSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'结束时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_14_A02_BK', @level2type=N'COLUMN',@level2name=N'JSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备课类型ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_14_A02_BK', @level2type=N'COLUMN',@level2name=N'BKLXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_14_A02_BK', @level2type=N'COLUMN',@level2name=N'SL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_14_A02_BK', @level2type=N'COLUMN',@level2name=N'TJSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'作业批改类型表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_15_A01_ZYPGLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_15_A01_ZYPGLX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_15_A01_ZYPGLX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_15_A01_ZYPGLX', @level2type=N'COLUMN',@level2name=N'PGLXMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'作业批改表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_15_A02_ZYPG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_15_A02_ZYPG', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_15_A02_ZYPG', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教工基本信息ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_15_A02_ZYPG', @level2type=N'COLUMN',@level2name=N'JZGJBSJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开始时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_15_A02_ZYPG', @level2type=N'COLUMN',@level2name=N'KSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'结束时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_15_A02_ZYPG', @level2type=N'COLUMN',@level2name=N'JSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'批改类型ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_15_A02_ZYPG', @level2type=N'COLUMN',@level2name=N'PGLXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_15_A02_ZYPG', @level2type=N'COLUMN',@level2name=N'SL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_15_A02_ZYPG', @level2type=N'COLUMN',@level2name=N'TJSJ'
GO
