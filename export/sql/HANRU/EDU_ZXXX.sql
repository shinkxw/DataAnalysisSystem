--空间名：EDU_ZXXX  生成器：SqlBuilder0.1

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXXX_01_01_ZXXX')
            and   type = 'U')
   drop table EDU_ZXXX_01_01_ZXXX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXXX_02_01_NJ')
            and   type = 'U')
   drop table EDU_ZXXX_02_01_NJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXXX_03_01_BJ')
            and   type = 'U')
   drop table EDU_ZXXX_03_01_BJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXXX_03_A01_BJLB')
            and   type = 'U')
   drop table EDU_ZXXX_03_A01_BJLB
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXXX_04_01_JG')
            and   type = 'U')
   drop table EDU_ZXXX_04_01_JG
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXXX_10_A01_SCSZ')
            and   type = 'U')
   drop table EDU_ZXXX_10_A01_SCSZ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXXX_10_A02_YCDJ')
            and   type = 'U')
   drop table EDU_ZXXX_10_A02_YCDJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXXX_11_A01_RKJL')
            and   type = 'U')
   drop table EDU_ZXXX_11_A01_RKJL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXXX_11_A02_JSLYJL')
            and   type = 'U')
   drop table EDU_ZXXX_11_A02_JSLYJL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXXX_11_A03_BJLYJL')
            and   type = 'U')
   drop table EDU_ZXXX_11_A03_BJLYJL
go
--学校基本数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXXX_01_01_ZXXX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXXX_01_01_ZXXX](
	[ID]  int  NOT NULL,--学校ID
	[XXDM]  nvarchar(10)  NOT NULL,--学校代码
	[XXMC]  nvarchar(60)  NOT NULL,--学校名称
	[XXYWMC]  nvarchar(60)  NULL,--学校英文名称
	[XXDZ]  nvarchar(180)  NOT NULL,--学校地址
	[XXYZBM]  nvarchar(6)  NOT NULL,--学校邮政编码
	[XZQHM]  nvarchar(6)  NOT NULL,--行政区划码
	[JXNY]  nvarchar(6)  NOT NULL,--建校年月
	[XQR]  nvarchar(60)  NOT NULL,--校庆日
	[XXBXLXM]  nvarchar(3)  NOT NULL,--学校办学类型码
	[XXZGBMM]  nvarchar(3)  NOT NULL,--学校主管部门码
	[FDDBRH]  nvarchar(20)  NULL,--法定代表人号
	[FRZSH]  nvarchar(20)  NOT NULL,--法人证书号
	[XZGH]  nvarchar(20)  NULL,--校长工号
	[XZXM]  nvarchar(36)  NOT NULL,--校长姓名
	[DWFZRH]  nvarchar(20)  NULL,--党委负责人号
	[ZZJGM]  nvarchar(10)  NULL,--组织机构码
	[LXDH]  nvarchar(30)  NOT NULL,--联系电话
	[CZDH]  nvarchar(30)  NOT NULL,--传真电话
	[DZXX]  nvarchar(40)  NOT NULL,--电子信箱
	[ZYDZ]  nvarchar(60)  NOT NULL,--主页地址
	[LSYG]  text  NOT NULL,--历史沿革
	[XXBBM]  nvarchar(2)  NOT NULL,--学校办别码
	[SSZGDWM]  nvarchar(3)  NOT NULL,--所属主管单位码
	[SZDCXLXM]  nvarchar(3)  NOT NULL,--所在地城乡类型码
	[SZDJJSXM]  nvarchar(1)  NOT NULL,--所在地经济属性码
	[SZDMZSX]  nvarchar(1)  NOT NULL,--所在地民族属性
	[XXXZ]  decimal(3, 1)  NOT NULL,--小学学制
	[XXRXNL]  decimal(1, 0)  NOT NULL,--小学入学年龄
	[CZXZ]  decimal(3, 1)  NOT NULL,--初中学制
	[CZRXNL]  decimal(2, 0)  NOT NULL,--初中入学年龄
	[GZXZ]  decimal(3, 1)  NOT NULL,--高中学制
	[ZJXYYM]  nvarchar(3)  NOT NULL,--主教学语言码
	[FJXYYM]  nvarchar(3)  NOT NULL,--辅教学语言码
	[ZSBJ]  nvarchar(30)  NULL,--招生半径
CONSTRAINT [PK_EDU_ZXXX_01_01_ZXXX] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--年级数据类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXXX_02_01_NJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXXX_02_01_NJ](
	[SCHOOLID]  int  NOT NULL,--学校名
	[NJ]  nvarchar(10)  NOT NULL,--年级号
	[NJMC]  nvarchar(30)  NOT NULL,--年级名称
	[ZT]  int  NOT NULL,--状态
	[PLSX]  int  NOT NULL,--排列顺序
CONSTRAINT [PK_EDU_ZXXX_02_01_NJ] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[NJ] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--班级数据类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXXX_03_01_BJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXXX_03_01_BJ](
	[SCHOOLID]  int  NOT NULL,--学校名
	[BH]  nvarchar(10)  NOT NULL,--班号
	[NJ]  nvarchar(10)  NOT NULL,--年级号
	[BJ]  nvarchar(20)  NULL,--班级名称
	[JBNY]  nvarchar(6)  NULL,--建班年月
	[BZRGH]  nvarchar(20)  NULL,--班主任工号
	[BZXH]  nvarchar(20)  NULL,--班长学号
	[BJRYCH]  nvarchar(40)  NULL,--班级荣誉称号
	[XZ]  decimal(3, 1)  NULL,--学制
	[BJLXM]  nvarchar(2)  NULL,--班级类型码
	[WLLX]  nvarchar(2)  NULL,--文理类型
	[BYRQ]  nvarchar(8)  NULL,--毕业日期
	[SFSSMZSYJXB]  nvarchar(1)  NOT NULL,--是否少数民族双语教学班
	[SYJXMSM]  nvarchar(1)  NOT NULL,--双语教学模式码
	[BZRID]  int  NOT NULL,--班主任ID
	[ZT]  int  NOT NULL,--状态
	[PLSX]  int  NOT NULL,--排列顺序
	[BJLBID]  int  NOT NULL,--班级类别ID
	[FBZRID]  int  NOT NULL,--副班主任ID
CONSTRAINT [PK_EDU_ZXXX_03_01_BJ] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[BH] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--班级类别表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXXX_03_A01_BJLB]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXXX_03_A01_BJLB](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[LBMC]  nvarchar(50)  NOT NULL,--类别名称
CONSTRAINT [PK_EDU_ZXXX_03_A01_BJLB] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--机构数据类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXXX_04_01_JG]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXXX_04_01_JG](
	[SCHOOLID]  int  NOT NULL,--学校名
	[JGH]  nvarchar(10)  NOT NULL,--机构号
	[LSJGH]  nvarchar(10)  NOT NULL,--隶属机构号
	[JGMC]  nvarchar(60)  NOT NULL,--机构名称
	[JGJC]  nvarchar(10)  NOT NULL,--机构简称
	[FZRGH]  nvarchar(20)  NULL,--负责人工号
CONSTRAINT [PK_EDU_ZXXX_04_01_JG] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[JGH] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--三餐设置表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXXX_10_A01_SCSZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXXX_10_A01_SCSZ](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[MC]  nvarchar(50)  NOT NULL,--名称
	[JG]  decimal(8, 2)  NOT NULL,--价格
CONSTRAINT [PK_EDU_ZXXX_10_A01_SCSZ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--用餐登记表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXXX_10_A02_YCDJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXXX_10_A02_YCDJ](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[XSID]  int  NOT NULL,--学生ID
	[SCID]  int  NOT NULL,--三餐ID
	[RQ]  datetime  NOT NULL,--日期
	[SFJC]  nvarchar(1)  NOT NULL,--是否就餐
CONSTRAINT [PK_EDU_ZXXX_10_A02_YCDJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--入库记录表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXXX_11_A01_RKJL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXXX_11_A01_RKJL](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[ZCM]  nvarchar(50)  NOT NULL,--资产名
	[SL]  int  NOT NULL,--数量
	[DJ]  decimal(8, 2)  NOT NULL,--单价
	[RKSJ]  datetime  NOT NULL,--入库时间
CONSTRAINT [PK_EDU_ZXXX_11_A01_RKJL] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--教师领用记录表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXXX_11_A02_JSLYJL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXXX_11_A02_JSLYJL](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[LYJSID]  int  NOT NULL,--领用教师ID
	[ZCID]  int  NOT NULL,--资产ID
	[LYSL]  int  NOT NULL,--领用数量
	[LYSJ]  datetime  NOT NULL,--领用时间
	[SHZT]  int  NOT NULL,--审核状态
	[SHYHID]  nvarchar(20)  NOT NULL,--审核用户ID
CONSTRAINT [PK_EDU_ZXXX_11_A02_JSLYJL] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--班级领用记录表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXXX_11_A03_BJLYJL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXXX_11_A03_BJLYJL](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[BJID]  nvarchar(10)  NOT NULL,--班级ID
	[ZCID]  int  NOT NULL,--资产ID
	[LYR]  nvarchar(50)  NOT NULL,--领用人
	[LYSL]  int  NOT NULL,--领用数量
	[LYSJ]  datetime  NOT NULL,--领用时间
	[SHZT]  int  NOT NULL,--审核状态
	[SHYHID]  nvarchar(20)  NOT NULL,--审核用户ID
CONSTRAINT [PK_EDU_ZXXX_11_A03_BJLYJL] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--以下为添加注释语句
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校基本数据子类表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校代码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'XXDM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'XXMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校英文名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'XXYWMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'XXDZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校邮政编码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'XXYZBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'行政区划码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'XZQHM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建校年月' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'JXNY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'校庆日' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'XQR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校办学类型码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'XXBXLXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校主管部门码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'XXZGBMM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'法定代表人号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'FDDBRH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'法人证书号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'FRZSH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'校长工号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'XZGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'校长姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'XZXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'党委负责人号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'DWFZRH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'组织机构码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'ZZJGM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'LXDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'传真电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'CZDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电子信箱' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'DZXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主页地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'ZYDZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'历史沿革' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'LSYG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校办别码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'XXBBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属主管单位码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'SSZGDWM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所在地城乡类型码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'SZDCXLXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所在地经济属性码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'SZDJJSXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所在地民族属性' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'SZDMZSX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'小学学制' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'XXXZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'小学入学年龄' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'XXRXNL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'初中学制' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'CZXZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'初中入学年龄' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'CZRXNL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'高中学制' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'GZXZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主教学语言码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'ZJXYYM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'辅教学语言码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'FJXYYM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'招生半径' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_01_01_ZXXX', @level2type=N'COLUMN',@level2name=N'ZSBJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'年级数据类表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_02_01_NJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_02_01_NJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'年级号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_02_01_NJ', @level2type=N'COLUMN',@level2name=N'NJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'年级名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_02_01_NJ', @level2type=N'COLUMN',@level2name=N'NJMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_02_01_NJ', @level2type=N'COLUMN',@level2name=N'ZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排列顺序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_02_01_NJ', @level2type=N'COLUMN',@level2name=N'PLSX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'班级数据类表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_03_01_BJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_03_01_BJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'班号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_03_01_BJ', @level2type=N'COLUMN',@level2name=N'BH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'年级号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_03_01_BJ', @level2type=N'COLUMN',@level2name=N'NJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'班级名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_03_01_BJ', @level2type=N'COLUMN',@level2name=N'BJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建班年月' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_03_01_BJ', @level2type=N'COLUMN',@level2name=N'JBNY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'班主任工号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_03_01_BJ', @level2type=N'COLUMN',@level2name=N'BZRGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'班长学号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_03_01_BJ', @level2type=N'COLUMN',@level2name=N'BZXH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'班级荣誉称号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_03_01_BJ', @level2type=N'COLUMN',@level2name=N'BJRYCH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学制' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_03_01_BJ', @level2type=N'COLUMN',@level2name=N'XZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'班级类型码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_03_01_BJ', @level2type=N'COLUMN',@level2name=N'BJLXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文理类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_03_01_BJ', @level2type=N'COLUMN',@level2name=N'WLLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'毕业日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_03_01_BJ', @level2type=N'COLUMN',@level2name=N'BYRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否少数民族双语教学班' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_03_01_BJ', @level2type=N'COLUMN',@level2name=N'SFSSMZSYJXB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'双语教学模式码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_03_01_BJ', @level2type=N'COLUMN',@level2name=N'SYJXMSM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'班主任ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_03_01_BJ', @level2type=N'COLUMN',@level2name=N'BZRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_03_01_BJ', @level2type=N'COLUMN',@level2name=N'ZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排列顺序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_03_01_BJ', @level2type=N'COLUMN',@level2name=N'PLSX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'班级类别ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_03_01_BJ', @level2type=N'COLUMN',@level2name=N'BJLBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'副班主任ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_03_01_BJ', @level2type=N'COLUMN',@level2name=N'FBZRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'班级类别表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_03_A01_BJLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_03_A01_BJLB', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_03_A01_BJLB', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类别名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_03_A01_BJLB', @level2type=N'COLUMN',@level2name=N'LBMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'机构数据类表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_04_01_JG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_04_01_JG', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'机构号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_04_01_JG', @level2type=N'COLUMN',@level2name=N'JGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'隶属机构号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_04_01_JG', @level2type=N'COLUMN',@level2name=N'LSJGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'机构名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_04_01_JG', @level2type=N'COLUMN',@level2name=N'JGMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'机构简称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_04_01_JG', @level2type=N'COLUMN',@level2name=N'JGJC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'负责人工号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_04_01_JG', @level2type=N'COLUMN',@level2name=N'FZRGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'三餐设置表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_10_A01_SCSZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_10_A01_SCSZ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_10_A01_SCSZ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_10_A01_SCSZ', @level2type=N'COLUMN',@level2name=N'MC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'价格' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_10_A01_SCSZ', @level2type=N'COLUMN',@level2name=N'JG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用餐登记表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_10_A02_YCDJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_10_A02_YCDJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_10_A02_YCDJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_10_A02_YCDJ', @level2type=N'COLUMN',@level2name=N'XSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'三餐ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_10_A02_YCDJ', @level2type=N'COLUMN',@level2name=N'SCID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_10_A02_YCDJ', @level2type=N'COLUMN',@level2name=N'RQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否就餐' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_10_A02_YCDJ', @level2type=N'COLUMN',@level2name=N'SFJC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'入库记录表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_11_A01_RKJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_11_A01_RKJL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_11_A01_RKJL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资产名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_11_A01_RKJL', @level2type=N'COLUMN',@level2name=N'ZCM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_11_A01_RKJL', @level2type=N'COLUMN',@level2name=N'SL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单价' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_11_A01_RKJL', @level2type=N'COLUMN',@level2name=N'DJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'入库时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_11_A01_RKJL', @level2type=N'COLUMN',@level2name=N'RKSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教师领用记录表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_11_A02_JSLYJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_11_A02_JSLYJL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_11_A02_JSLYJL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'领用教师ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_11_A02_JSLYJL', @level2type=N'COLUMN',@level2name=N'LYJSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资产ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_11_A02_JSLYJL', @level2type=N'COLUMN',@level2name=N'ZCID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'领用数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_11_A02_JSLYJL', @level2type=N'COLUMN',@level2name=N'LYSL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'领用时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_11_A02_JSLYJL', @level2type=N'COLUMN',@level2name=N'LYSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_11_A02_JSLYJL', @level2type=N'COLUMN',@level2name=N'SHZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_11_A02_JSLYJL', @level2type=N'COLUMN',@level2name=N'SHYHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'班级领用记录表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_11_A03_BJLYJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_11_A03_BJLYJL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_11_A03_BJLYJL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'班级ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_11_A03_BJLYJL', @level2type=N'COLUMN',@level2name=N'BJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资产ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_11_A03_BJLYJL', @level2type=N'COLUMN',@level2name=N'ZCID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'领用人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_11_A03_BJLYJL', @level2type=N'COLUMN',@level2name=N'LYR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'领用数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_11_A03_BJLYJL', @level2type=N'COLUMN',@level2name=N'LYSL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'领用时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_11_A03_BJLYJL', @level2type=N'COLUMN',@level2name=N'LYSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_11_A03_BJLYJL', @level2type=N'COLUMN',@level2name=N'SHZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXXX_11_A03_BJLYJL', @level2type=N'COLUMN',@level2name=N'SHYHID'
GO
