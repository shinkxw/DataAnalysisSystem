--空间名：EDU_JPXT  生成器：SqlBuilder0.1

if exists (select 1 from  sysobjects where  id = object_id('EDU_JPXT_01_01_JLCSJ')
            and   type = 'U')
   drop table EDU_JPXT_01_01_JLCSJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_JPXT_01_02_JLCBGLL')
            and   type = 'U')
   drop table EDU_JPXT_01_02_JLCBGLL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_JPXT_01_03_JLCWXQK')
            and   type = 'U')
   drop table EDU_JPXT_01_03_JLCWXQK
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_JPXT_01_04_JLCJYQK')
            and   type = 'U')
   drop table EDU_JPXT_01_04_JLCJYQK
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_JPXT_01_05_JLCYHQK')
            and   type = 'U')
   drop table EDU_JPXT_01_05_JLCYHQK
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_JPXT_01_06_JLCCLXH')
            and   type = 'U')
   drop table EDU_JPXT_01_06_JLCCLXH
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_JPXT_02_01_JLYSJ')
            and   type = 'U')
   drop table EDU_JPXT_02_01_JLYSJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_JPXT_02_02_JLYWJQK')
            and   type = 'U')
   drop table EDU_JPXT_02_02_JLYWJQK
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_JPXT_02_03_JLYAQQK')
            and   type = 'U')
   drop table EDU_JPXT_02_03_JLYAQQK
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_JPXT_02_04_JLYJCQK')
            and   type = 'U')
   drop table EDU_JPXT_02_04_JLYJCQK
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_JPXT_03_01_XYSJ')
            and   type = 'U')
   drop table EDU_JPXT_03_01_XYSJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_JPXT_03_02_XYKSJG')
            and   type = 'U')
   drop table EDU_JPXT_03_02_XYKSJG
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_JPXT_03_03_XYHFXX')
            and   type = 'U')
   drop table EDU_JPXT_03_03_XYHFXX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_JPXT_04_01_KMKS')
            and   type = 'U')
   drop table EDU_JPXT_04_01_KMKS
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_JPXT_05_01_CLXH')
            and   type = 'U')
   drop table EDU_JPXT_05_01_CLXH
go
--教练车数据表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_JPXT_01_01_JLCSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_JPXT_01_01_JLCSJ](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校ID
	[GMSJ]  datetime  NOT NULL,--购买时间
	[CLXHID]  int  NOT NULL,--车辆型号ID
	[PP]  nvarchar(100)  NOT NULL,--品牌
	[CPH]  nvarchar(50)  NOT NULL,--车牌号
	[FDJH]  nvarchar(100)  NULL,--发动机号
	[CJH]  nvarchar(100)  NOT NULL,--车架号
	[BFSJ]  datetime  NOT NULL,--报废时间
	[EBRQ]  datetime  NOT NULL,--二保日期
	[DQZT]  int  NOT NULL,--当前状态
	[DQJLYID]  int  NOT NULL,--当前教练员ID
	[BZ]  text  NULL,--备注
CONSTRAINT [PK_EDU_JPXT_01_01_JLCSJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--教练车保管履历表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_JPXT_01_02_JLCBGLL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_JPXT_01_02_JLCBGLL](
	[ID]  int  identity,--编号
	[SCHOOLID]  int  NOT NULL,--学校ID
	[JLCID]  int  NOT NULL,--教练车ID
	[JLYID]  int  NOT NULL,--教练员ID
	[BGKSSJ]  datetime  NOT NULL,--保管开始时间
	[BGJSSJ]  datetime  NULL,--保管结束时间
	[BGZT]  text  NOT NULL,--保管状态
CONSTRAINT [PK_EDU_JPXT_01_02_JLCBGLL] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--教练车维修情况表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_JPXT_01_03_JLCWXQK]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_JPXT_01_03_JLCWXQK](
	[ID]  int  identity,--编号
	[SCHOOLID]  int  NOT NULL,--学校ID
	[JLCID]  int  NOT NULL,--教练车ID
	[GZXX]  text  NOT NULL,--故障现象
	[SXSJ]  datetime  NOT NULL,--送修时间
	[WCSJ]  datetime  NOT NULL,--完成时间
	[WXJG]  text  NOT NULL,--维修结果
	[BZ]  text  NOT NULL,--备注
CONSTRAINT [PK_EDU_JPXT_01_03_JLCWXQK] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--教练车检验情况表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_JPXT_01_04_JLCJYQK]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_JPXT_01_04_JLCJYQK](
	[ID]  int  identity,--编号
	[SCHOOLID]  int  NOT NULL,--学校ID
	[JLCID]  int  NOT NULL,--教练车ID
	[JYNR]  text  NOT NULL,--检验内容
	[JYSJ]  datetime  NOT NULL,--检验时间
	[WCSJ]  datetime  NOT NULL,--完成时间
	[JYJG]  text  NOT NULL,--检验结果
	[BZ]  text  NOT NULL,--备注
CONSTRAINT [PK_EDU_JPXT_01_04_JLCJYQK] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--教练车油耗情况表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_JPXT_01_05_JLCYHQK]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_JPXT_01_05_JLCYHQK](
	[ID]  int  identity,--编号
	[SCHOOLID]  int  NOT NULL,--学校ID
	[JLCID]  int  NOT NULL,--教练车ID
	[JLYID]  int  NOT NULL,--教练员ID
	[LRSJ]  datetime  NOT NULL,--录入时间
	[YLCZ]  decimal(8, 3)  NOT NULL,--充值油量
	[BZ]  text  NOT NULL,--备注
CONSTRAINT [PK_EDU_JPXT_01_05_JLCYHQK] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--教练车材料消耗表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_JPXT_01_06_JLCCLXH]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_JPXT_01_06_JLCCLXH](
	[ID]  int  identity,--编号
	[SCHOOLID]  int  NOT NULL,--学校ID
	[JLCID]  int  NOT NULL,--教练车ID
	[JLYID]  int  NOT NULL,--教练员ID
	[LRSJ]  datetime  NOT NULL,--录入时间
	[XHQK]  decimal(8, 2)  NOT NULL,--消耗情况
	[BZ]  text  NOT NULL,--备注
CONSTRAINT [PK_EDU_JPXT_01_06_JLCCLXH] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--教练员数据表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_JPXT_02_01_JLYSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_JPXT_02_01_JLYSJ](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校ID
	[XM]  nvarchar(36)  NOT NULL,--姓名
	[XBM]  nvarchar(1)  NOT NULL,--性别码
	[SFZH]  nvarchar(50)  NOT NULL,--身份证号
	[JSZH]  nvarchar(50)  NOT NULL,--驾驶证号
	[JSZYXQ]  datetime  NOT NULL,--驾驶证有效期
	[JLZH]  nvarchar(50)  NOT NULL,--教练证号
	[JLZYXQ]  datetime  NOT NULL,--教练证有效期
	[XL]  nvarchar(50)  NOT NULL,--学历
	[ZC]  nvarchar(50)  NOT NULL,--职称
	[JXSJ]  datetime  NOT NULL,--进校时间
	[LXDH]  nvarchar(30)  NOT NULL,--联系电话
	[ZZ]  nvarchar(200)  NOT NULL,--住址
	[JSDJ]  nvarchar(100)  NOT NULL,--技术等级
	[JTCHYXM]  nvarchar(36)  NOT NULL,--家庭成员一姓名
	[JTCYYGX]  nvarchar(36)  NOT NULL,--家庭成员一关系
	[JTCYYXBM]  nvarchar(1)  NOT NULL,--家庭成员一性别码
	[JTCYYCSRQ]  datetime  NOT NULL,--家庭成员一出生日期
	[JTCYYZZ]  nvarchar(200)  NOT NULL,--家庭成员一住址
	[JTCYYLXDH]  nvarchar(30)  NOT NULL,--家庭成员一联系电话
	[JTCYYCSGZ]  nvarchar(200)  NOT NULL,--家庭成员一从事工作
	[JTCYEXM]  nvarchar(36)  NOT NULL,--家庭成员二姓名
	[JTCYEGX]  nvarchar(36)  NOT NULL,--家庭成员二关系
	[JTCYEXBM]  nvarchar(1)  NOT NULL,--家庭成员二性别码
	[JTCYECSRQ]  datetime  NOT NULL,--家庭成员二出生日期
	[JTCYEZZ]  nvarchar(200)  NOT NULL,--家庭成员二住址
	[JTCYELXDH]  nvarchar(30)  NOT NULL,--家庭成员二联系电话
	[JTCYECSGZ]  nvarchar(200)  NOT NULL,--家庭成员二从事工作
CONSTRAINT [PK_EDU_JPXT_02_01_JLYSJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--教练员违纪情况表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_JPXT_02_02_JLYWJQK]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_JPXT_02_02_JLYWJQK](
	[ID]  int  identity,--编号
	[SCHOOLID]  int  NOT NULL,--学校ID
	[JLYID]  int  NOT NULL,--教练员ID
	[TSR]  nvarchar(50)  NOT NULL,--投诉人
	[TSSJ]  datetime  NOT NULL,--投诉时间
	[LXDH]  nvarchar(30)  NOT NULL,--联系电话
	[TSNR]  text  NOT NULL,--投诉内容
	[CLJG]  text  NOT NULL,--处理结果
	[BZ]  text  NOT NULL,--备注
CONSTRAINT [PK_EDU_JPXT_02_02_JLYWJQK] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--教练员安全情况表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_JPXT_02_03_JLYAQQK]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_JPXT_02_03_JLYAQQK](
	[ID]  int  identity,--编号
	[SCHOOLID]  int  NOT NULL,--学校ID
	[JLYID]  int  NOT NULL,--教练员ID
	[LRSJ]  datetime  NOT NULL,--录入时间
	[AQQK]  text  NOT NULL,--安全情况
	[BZ]  text  NOT NULL,--备注
CONSTRAINT [PK_EDU_JPXT_02_03_JLYAQQK] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--教练员奖惩情况表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_JPXT_02_04_JLYJCQK]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_JPXT_02_04_JLYJCQK](
	[ID]  int  identity,--编号
	[SCHOOLID]  int  NOT NULL,--学校ID
	[JLYID]  int  NOT NULL,--教练员ID
	[LRSJ]  datetime  NOT NULL,--录入时间
	[JCQK]  text  NOT NULL,--奖惩情况
	[BZ]  text  NOT NULL,--备注
CONSTRAINT [PK_EDU_JPXT_02_04_JLYJCQK] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--学员数据表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_JPXT_03_01_XYSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_JPXT_03_01_XYSJ](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校ID
	[XM]  nvarchar(36)  NOT NULL,--姓名
	[SFZH]  nvarchar(30)  NOT NULL,--身份证号
	[XBM]  nvarchar(1)  NOT NULL,--性别码
	[LXDH]  nvarchar(30)  NOT NULL,--联系电话
	[ZZ]  nvarchar(200)  NOT NULL,--住址
	[BMSJ]  datetime  NOT NULL,--报名时间
	[SFQK]  nvarchar(200)  NOT NULL,--缴费情况
	[SXCXID]  int  NOT NULL,--所选车型ID
	[ZJQK]  nvarchar(200)  NOT NULL,--增加情况
	[SZJLCID]  int  NOT NULL,--所属教练员ID
	[YJJLYID]  int  NOT NULL,--引荐教练员ID
	[DQZT]  int  NOT NULL,--当前状态
	[BYSJ]  datetime  NOT NULL,--毕业时间
CONSTRAINT [PK_EDU_JPXT_03_01_XYSJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--学员考试结果表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_JPXT_03_02_XYKSJG]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_JPXT_03_02_XYKSJG](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校ID
	[XYID]  int  NOT NULL,--学员ID
	[KMKSID]  int  NOT NULL,--科目考试ID
	[KSJG]  int  NOT NULL,--考试结果
CONSTRAINT [PK_EDU_JPXT_03_02_XYKSJG] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--学员回访信息表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_JPXT_03_03_XYHFXX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_JPXT_03_03_XYHFXX](
	[ID]  int  identity,--编号
	[SCHOOLID]  int  NOT NULL,--学校ID
	[XYID]  int  NOT NULL,--学员ID
	[HFSJ]  datetime  NOT NULL,--回访时间
	[HFJG]  text  NOT NULL,--回访结果
	[BZ]  text  NOT NULL,--备注
CONSTRAINT [PK_EDU_JPXT_03_03_XYHFXX] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--科目考试表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_JPXT_04_01_KMKS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_JPXT_04_01_KMKS](
	[ID]  int  identity,--编号
	[SCHOOLID]  int  NOT NULL,--学校ID
	[KMDM]  nvarchar(1)  NOT NULL,--科目代码
	[KSSJ]  datetime  NOT NULL,--考试时间
	[BZ]  text  NOT NULL,--备注
CONSTRAINT [PK_EDU_JPXT_04_01_KMKS] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--车辆型号数据表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_JPXT_05_01_CLXH]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_JPXT_05_01_CLXH](
	[ID]  int  identity,--编号
	[SCHOOLID]  int  NOT NULL,--学校ID
	[CLXHMC]  nvarchar(30)  NOT NULL,--车辆型号名称
	[BZ]  text  NOT NULL,--备注
CONSTRAINT [PK_EDU_JPXT_05_01_CLXH] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--以下为添加注释语句
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教练车数据表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_01_JLCSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_01_JLCSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_01_JLCSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'购买时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_01_JLCSJ', @level2type=N'COLUMN',@level2name=N'GMSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'车辆型号ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_01_JLCSJ', @level2type=N'COLUMN',@level2name=N'CLXHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'品牌' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_01_JLCSJ', @level2type=N'COLUMN',@level2name=N'PP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'车牌号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_01_JLCSJ', @level2type=N'COLUMN',@level2name=N'CPH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发动机号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_01_JLCSJ', @level2type=N'COLUMN',@level2name=N'FDJH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'车架号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_01_JLCSJ', @level2type=N'COLUMN',@level2name=N'CJH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'报废时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_01_JLCSJ', @level2type=N'COLUMN',@level2name=N'BFSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'二保日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_01_JLCSJ', @level2type=N'COLUMN',@level2name=N'EBRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'当前状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_01_JLCSJ', @level2type=N'COLUMN',@level2name=N'DQZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'当前教练员ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_01_JLCSJ', @level2type=N'COLUMN',@level2name=N'DQJLYID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_01_JLCSJ', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教练车保管履历表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_02_JLCBGLL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_02_JLCBGLL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_02_JLCBGLL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教练车ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_02_JLCBGLL', @level2type=N'COLUMN',@level2name=N'JLCID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教练员ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_02_JLCBGLL', @level2type=N'COLUMN',@level2name=N'JLYID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'保管开始时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_02_JLCBGLL', @level2type=N'COLUMN',@level2name=N'BGKSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'保管结束时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_02_JLCBGLL', @level2type=N'COLUMN',@level2name=N'BGJSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'保管状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_02_JLCBGLL', @level2type=N'COLUMN',@level2name=N'BGZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教练车维修情况表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_03_JLCWXQK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_03_JLCWXQK', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_03_JLCWXQK', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教练车ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_03_JLCWXQK', @level2type=N'COLUMN',@level2name=N'JLCID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'故障现象' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_03_JLCWXQK', @level2type=N'COLUMN',@level2name=N'GZXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'送修时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_03_JLCWXQK', @level2type=N'COLUMN',@level2name=N'SXSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'完成时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_03_JLCWXQK', @level2type=N'COLUMN',@level2name=N'WCSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'维修结果' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_03_JLCWXQK', @level2type=N'COLUMN',@level2name=N'WXJG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_03_JLCWXQK', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教练车检验情况表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_04_JLCJYQK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_04_JLCJYQK', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_04_JLCJYQK', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教练车ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_04_JLCJYQK', @level2type=N'COLUMN',@level2name=N'JLCID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'检验内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_04_JLCJYQK', @level2type=N'COLUMN',@level2name=N'JYNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'检验时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_04_JLCJYQK', @level2type=N'COLUMN',@level2name=N'JYSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'完成时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_04_JLCJYQK', @level2type=N'COLUMN',@level2name=N'WCSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'检验结果' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_04_JLCJYQK', @level2type=N'COLUMN',@level2name=N'JYJG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_04_JLCJYQK', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教练车油耗情况表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_05_JLCYHQK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_05_JLCYHQK', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_05_JLCYHQK', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教练车ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_05_JLCYHQK', @level2type=N'COLUMN',@level2name=N'JLCID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教练员ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_05_JLCYHQK', @level2type=N'COLUMN',@level2name=N'JLYID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'录入时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_05_JLCYHQK', @level2type=N'COLUMN',@level2name=N'LRSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'充值油量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_05_JLCYHQK', @level2type=N'COLUMN',@level2name=N'YLCZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_05_JLCYHQK', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教练车材料消耗表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_06_JLCCLXH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_06_JLCCLXH', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_06_JLCCLXH', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教练车ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_06_JLCCLXH', @level2type=N'COLUMN',@level2name=N'JLCID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教练员ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_06_JLCCLXH', @level2type=N'COLUMN',@level2name=N'JLYID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'录入时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_06_JLCCLXH', @level2type=N'COLUMN',@level2name=N'LRSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'消耗情况' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_06_JLCCLXH', @level2type=N'COLUMN',@level2name=N'XHQK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_01_06_JLCCLXH', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教练员数据表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_01_JLYSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_01_JLYSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_01_JLYSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_01_JLYSJ', @level2type=N'COLUMN',@level2name=N'XM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'性别码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_01_JLYSJ', @level2type=N'COLUMN',@level2name=N'XBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'身份证号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_01_JLYSJ', @level2type=N'COLUMN',@level2name=N'SFZH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'驾驶证号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_01_JLYSJ', @level2type=N'COLUMN',@level2name=N'JSZH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'驾驶证有效期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_01_JLYSJ', @level2type=N'COLUMN',@level2name=N'JSZYXQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教练证号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_01_JLYSJ', @level2type=N'COLUMN',@level2name=N'JLZH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教练证有效期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_01_JLYSJ', @level2type=N'COLUMN',@level2name=N'JLZYXQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学历' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_01_JLYSJ', @level2type=N'COLUMN',@level2name=N'XL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'职称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_01_JLYSJ', @level2type=N'COLUMN',@level2name=N'ZC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'进校时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_01_JLYSJ', @level2type=N'COLUMN',@level2name=N'JXSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_01_JLYSJ', @level2type=N'COLUMN',@level2name=N'LXDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'住址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_01_JLYSJ', @level2type=N'COLUMN',@level2name=N'ZZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'技术等级' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_01_JLYSJ', @level2type=N'COLUMN',@level2name=N'JSDJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'家庭成员一姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_01_JLYSJ', @level2type=N'COLUMN',@level2name=N'JTCHYXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'家庭成员一关系' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_01_JLYSJ', @level2type=N'COLUMN',@level2name=N'JTCYYGX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'家庭成员一性别码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_01_JLYSJ', @level2type=N'COLUMN',@level2name=N'JTCYYXBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'家庭成员一出生日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_01_JLYSJ', @level2type=N'COLUMN',@level2name=N'JTCYYCSRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'家庭成员一住址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_01_JLYSJ', @level2type=N'COLUMN',@level2name=N'JTCYYZZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'家庭成员一联系电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_01_JLYSJ', @level2type=N'COLUMN',@level2name=N'JTCYYLXDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'家庭成员一从事工作' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_01_JLYSJ', @level2type=N'COLUMN',@level2name=N'JTCYYCSGZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'家庭成员二姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_01_JLYSJ', @level2type=N'COLUMN',@level2name=N'JTCYEXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'家庭成员二关系' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_01_JLYSJ', @level2type=N'COLUMN',@level2name=N'JTCYEGX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'家庭成员二性别码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_01_JLYSJ', @level2type=N'COLUMN',@level2name=N'JTCYEXBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'家庭成员二出生日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_01_JLYSJ', @level2type=N'COLUMN',@level2name=N'JTCYECSRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'家庭成员二住址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_01_JLYSJ', @level2type=N'COLUMN',@level2name=N'JTCYEZZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'家庭成员二联系电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_01_JLYSJ', @level2type=N'COLUMN',@level2name=N'JTCYELXDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'家庭成员二从事工作' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_01_JLYSJ', @level2type=N'COLUMN',@level2name=N'JTCYECSGZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教练员违纪情况表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_02_JLYWJQK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_02_JLYWJQK', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_02_JLYWJQK', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教练员ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_02_JLYWJQK', @level2type=N'COLUMN',@level2name=N'JLYID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'投诉人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_02_JLYWJQK', @level2type=N'COLUMN',@level2name=N'TSR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'投诉时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_02_JLYWJQK', @level2type=N'COLUMN',@level2name=N'TSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_02_JLYWJQK', @level2type=N'COLUMN',@level2name=N'LXDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'投诉内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_02_JLYWJQK', @level2type=N'COLUMN',@level2name=N'TSNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'处理结果' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_02_JLYWJQK', @level2type=N'COLUMN',@level2name=N'CLJG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_02_JLYWJQK', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教练员安全情况表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_03_JLYAQQK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_03_JLYAQQK', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_03_JLYAQQK', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教练员ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_03_JLYAQQK', @level2type=N'COLUMN',@level2name=N'JLYID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'录入时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_03_JLYAQQK', @level2type=N'COLUMN',@level2name=N'LRSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'安全情况' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_03_JLYAQQK', @level2type=N'COLUMN',@level2name=N'AQQK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_03_JLYAQQK', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教练员奖惩情况表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_04_JLYJCQK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_04_JLYJCQK', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_04_JLYJCQK', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教练员ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_04_JLYJCQK', @level2type=N'COLUMN',@level2name=N'JLYID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'录入时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_04_JLYJCQK', @level2type=N'COLUMN',@level2name=N'LRSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'奖惩情况' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_04_JLYJCQK', @level2type=N'COLUMN',@level2name=N'JCQK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_02_04_JLYJCQK', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学员数据表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_03_01_XYSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_03_01_XYSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_03_01_XYSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_03_01_XYSJ', @level2type=N'COLUMN',@level2name=N'XM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'身份证号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_03_01_XYSJ', @level2type=N'COLUMN',@level2name=N'SFZH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'性别码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_03_01_XYSJ', @level2type=N'COLUMN',@level2name=N'XBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_03_01_XYSJ', @level2type=N'COLUMN',@level2name=N'LXDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'住址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_03_01_XYSJ', @level2type=N'COLUMN',@level2name=N'ZZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'报名时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_03_01_XYSJ', @level2type=N'COLUMN',@level2name=N'BMSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'缴费情况' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_03_01_XYSJ', @level2type=N'COLUMN',@level2name=N'SFQK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所选车型ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_03_01_XYSJ', @level2type=N'COLUMN',@level2name=N'SXCXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'增加情况' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_03_01_XYSJ', @level2type=N'COLUMN',@level2name=N'ZJQK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属教练员ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_03_01_XYSJ', @level2type=N'COLUMN',@level2name=N'SZJLCID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'引荐教练员ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_03_01_XYSJ', @level2type=N'COLUMN',@level2name=N'YJJLYID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'当前状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_03_01_XYSJ', @level2type=N'COLUMN',@level2name=N'DQZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'毕业时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_03_01_XYSJ', @level2type=N'COLUMN',@level2name=N'BYSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学员考试结果表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_03_02_XYKSJG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_03_02_XYKSJG', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_03_02_XYKSJG', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学员ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_03_02_XYKSJG', @level2type=N'COLUMN',@level2name=N'XYID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'科目考试ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_03_02_XYKSJG', @level2type=N'COLUMN',@level2name=N'KMKSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'考试结果' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_03_02_XYKSJG', @level2type=N'COLUMN',@level2name=N'KSJG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学员回访信息表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_03_03_XYHFXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_03_03_XYHFXX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_03_03_XYHFXX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学员ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_03_03_XYHFXX', @level2type=N'COLUMN',@level2name=N'XYID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'回访时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_03_03_XYHFXX', @level2type=N'COLUMN',@level2name=N'HFSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'回访结果' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_03_03_XYHFXX', @level2type=N'COLUMN',@level2name=N'HFJG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_03_03_XYHFXX', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'科目考试表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_04_01_KMKS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_04_01_KMKS', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_04_01_KMKS', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'科目代码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_04_01_KMKS', @level2type=N'COLUMN',@level2name=N'KMDM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'考试时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_04_01_KMKS', @level2type=N'COLUMN',@level2name=N'KSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_04_01_KMKS', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'车辆型号数据表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_05_01_CLXH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_05_01_CLXH', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_05_01_CLXH', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'车辆型号名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_05_01_CLXH', @level2type=N'COLUMN',@level2name=N'CLXHMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_JPXT_05_01_CLXH', @level2type=N'COLUMN',@level2name=N'BZ'
GO
