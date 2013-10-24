--空间名：EDU_ZZJX  生成器：SqlBuilder0.1

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_01_01_ZYXX')
            and   type = 'U')
   drop table EDU_ZZJX_01_01_ZYXX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_01_A01_KCPJ')
            and   type = 'U')
   drop table EDU_ZZJX_01_A01_KCPJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_01_02_KC')
            and   type = 'U')
   drop table EDU_ZZJX_01_02_KC
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_01_A02_JSRK')
            and   type = 'U')
   drop table EDU_ZZJX_01_A02_JSRK
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_02_01_ZZNJ')
            and   type = 'U')
   drop table EDU_ZZJX_02_01_ZZNJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_02_02_ZZBJ')
            and   type = 'U')
   drop table EDU_ZZJX_02_02_ZZBJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_03_01_ZTJXJH')
            and   type = 'U')
   drop table EDU_ZZJX_03_01_ZTJXJH
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_03_A01_XQXFGL')
            and   type = 'U')
   drop table EDU_ZZJX_03_A01_XQXFGL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_03_02_JXJHFLXFYQ')
            and   type = 'U')
   drop table EDU_ZZJX_03_02_JXJHFLXFYQ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_03_03_JXJHKCQD')
            and   type = 'U')
   drop table EDU_ZZJX_03_03_JXJHKCQD
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_05_02_JSJXGZLTJ')
            and   type = 'U')
   drop table EDU_ZZJX_05_02_JSJXGZLTJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_08_A01_DGFSQ')
            and   type = 'U')
   drop table EDU_ZZJX_08_A01_DGFSQ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_09_A01_TKSQSJ')
            and   type = 'U')
   drop table EDU_ZZJX_09_A01_TKSQSJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_10_A01_LWSJ')
            and   type = 'U')
   drop table EDU_ZZJX_10_A01_LWSJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_10_A02_KYHDSJ')
            and   type = 'U')
   drop table EDU_ZZJX_10_A02_KYHDSJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_10_A03_CPXXSJ')
            and   type = 'U')
   drop table EDU_ZZJX_10_A03_CPXXSJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_10_A04_KTSJ')
            and   type = 'U')
   drop table EDU_ZZJX_10_A04_KTSJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_10_A05_KTJDSJ')
            and   type = 'U')
   drop table EDU_ZZJX_10_A05_KTJDSJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_20_A01_QYGL')
            and   type = 'U')
   drop table EDU_ZZJX_20_A01_QYGL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_20_A02_XQHD')
            and   type = 'U')
   drop table EDU_ZZJX_20_A02_XQHD
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_20_A03_GWXX')
            and   type = 'U')
   drop table EDU_ZZJX_20_A03_GWXX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_21_A01_SXBJGL')
            and   type = 'U')
   drop table EDU_ZZJX_21_A01_SXBJGL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_21_A02_SXSGL')
            and   type = 'U')
   drop table EDU_ZZJX_21_A02_SXSGL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_21_A03_SXGW')
            and   type = 'U')
   drop table EDU_ZZJX_21_A03_SXGW
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_22_A01_SXJL')
            and   type = 'U')
   drop table EDU_ZZJX_22_A01_SXJL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_22_A02_SXDWBG')
            and   type = 'U')
   drop table EDU_ZZJX_22_A02_SXDWBG
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_22_A03_SXWZJL')
            and   type = 'U')
   drop table EDU_ZZJX_22_A03_SXWZJL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_22_A04_SXJD')
            and   type = 'U')
   drop table EDU_ZZJX_22_A04_SXJD
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_22_A05_SXTS')
            and   type = 'U')
   drop table EDU_ZZJX_22_A05_SXTS
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJX_22_A06_SXJC')
            and   type = 'U')
   drop table EDU_ZZJX_22_A06_SXJC
go
--专业基本信息数据表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_01_01_ZYXX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_01_01_ZYXX](
	[ZYBH]  int  NOT NULL,--专业编号
	[SCHOOLID]  int  NOT NULL,--学校名
	[ZYDM]  nvarchar(6)  NULL,--专业代码
	[ZYMC]  nvarchar(50)  NOT NULL,--专业名称
	[ZYYWMC]  nvarchar(100)  NULL,--专业英文名称
	[XZ]  nvarchar(20)  NOT NULL,--学制
	[ZYFXMC]  nvarchar(100)  NOT NULL,--专业方向名称
	[ZYJC]  nvarchar(100)  NOT NULL,--专业简称
	[JLNY]  nvarchar(6)  NOT NULL,--建立年月
	[ZYJSS]  decimal(2, 0)  NULL,--专业教师数
	[KSJGH]  nvarchar(6)  NOT NULL,--开设机构号
	[ZXF]  nvarchar(10)  NOT NULL,--总学分
	[SSZYML]  nvarchar(1)  NULL,--所属专业目录
	[ZYLB]  nvarchar(50)  NOT NULL,--专业类别名称
CONSTRAINT [PK_EDU_ZZJX_01_01_ZYXX] PRIMARY KEY CLUSTERED
(
	[ZYBH] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--课程评价表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_01_A01_KCPJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_01_A01_KCPJ](
	[SCHOOLID]  int  NOT NULL,--学校ID
	[PJID]  int  NOT NULL,--评价ID
	[KXH]  int  NOT NULL,--课序号
	[PJR]  nvarchar(20)  NOT NULL,--评价人
	[PJSJ]  datetime  NOT NULL,--评价时间
	[PJNR]  text  NOT NULL,--评价内容
	[HF]  text  NOT NULL,--回复
CONSTRAINT [PK_EDU_ZZJX_01_A01_KCPJ] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[PJID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--课程数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_01_02_KC]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_01_02_KC](
	[KCH]  nvarchar(6)  NOT NULL,--课程号
	[SCHOOLID]  int  NOT NULL,--学校ID
	[KCMC]  nvarchar(100)  NOT NULL,--课程名称
	[KCYWM]  nvarchar(100)  NULL,--课程英文名
	[KCBM]  nvarchar(100)  NULL,--课程别名
	[KCJS]  nvarchar(200)  NULL,--课程介绍
	[XF]  decimal(2, 1)  NOT NULL,--学分
	[ZXS]  decimal(2, 0)  NOT NULL,--总学时
	[LLXS]  decimal(2, 0)  NOT NULL,--理论学时
	[SJXS]  decimal(2, 0)  NOT NULL,--实践学时
	[QTXS]  decimal(2, 0)  NOT NULL,--其他学时
	[CKSM]  text  NULL,--参考书目
	[KKDW]  nvarchar(6)  NULL,--开课单位
	[KSXS]  nvarchar(1)  NOT NULL,--考试形式
	[SKFSM]  nvarchar(1)  NOT NULL,--授课方式码
	[KCFY]  money  NULL,--课程费用
CONSTRAINT [PK_EDU_ZZJX_01_02_KC] PRIMARY KEY CLUSTERED
(
	[KCH] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--教师任课表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_01_A02_JSRK]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_01_A02_JSRK](
	[SCHOOLID]  int  NOT NULL,--学校ID
	[KXH]  int  NOT NULL,--课序号
	[JSID]  int  NOT NULL,--教师表ID
	[KCH]  nvarchar(6)  NOT NULL,--课程号
	[JHBH]  nvarchar(5)  NOT NULL,--计划编号
	[XQID]  int  NOT NULL,--学期ID
	[JXDG]  text  NOT NULL,--教学大纲
CONSTRAINT [PK_EDU_ZZJX_01_A02_JSRK] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[KXH] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--学校年级数据表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_02_01_ZZNJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_02_01_ZZNJ](
	[NJDM]  nvarchar(4)  NOT NULL,--年级代码
	[SCHOOLID]  int  NOT NULL,--学校名
	[NJMC]  nvarchar(10)  NOT NULL,--年级名称
	[SSNF]  nvarchar(4)  NOT NULL,--所属年份
	[NJZT]  nvarchar(1)  NOT NULL,--年级状态
CONSTRAINT [PK_EDU_ZZJX_02_01_ZZNJ] PRIMARY KEY CLUSTERED
(
	[NJDM] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--学校班级数据表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_02_02_ZZBJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_02_02_ZZBJ](
	[XZBDM]  nvarchar(10)  NOT NULL,--行政班代码
	[SCHOOLID]  int  NOT NULL,--学校名
	[ZYXXID]  int  NOT NULL,--专业基本信息
	[ZZNJID]  nvarchar(4)  NOT NULL,--学校年级数据表
	[XZBMC]  nvarchar(50)  NOT NULL,--行政班名称
	[JBNY]  nvarchar(6)  NOT NULL,--建班年月
	[BZRGH]  nvarchar(20)  NULL,--班主任工号
	[JSBH]  nvarchar(10)  NULL,--教室编号
	[NANSRS]  decimal(4, 0)  NULL,--男生人数
	[NVSRS]  decimal(4, 0)  NULL,--女生人数
	[ZRS]  decimal(4, 0)  NULL,--总人数
	[BZXH]  nvarchar(20)  NULL,--班长学号
	[JXJH]  text  NOT NULL,--教学计划
	[JGH]  nvarchar(6)  NOT NULL,--机构号
	[XQDM]  nvarchar(2)  NOT NULL,--校区代码
CONSTRAINT [PK_EDU_ZZJX_02_02_ZZBJ] PRIMARY KEY CLUSTERED
(
	[XZBDM] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--总体教学计划数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_03_01_ZTJXJH]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_03_01_ZTJXJH](
	[SCHOOLID]  int  NOT NULL,--学校ID
	[JHBH]  nvarchar(5)  NOT NULL,--计划编号
	[JHNJ]  nvarchar(4)  NOT NULL,--计划年级
	[ZYXXID]  int  NOT NULL,--专业编号
	[JHZYMC]  nvarchar(50)  NULL,--计划专业名称
	[ZXFYQ]  decimal(3, 0)  NOT NULL,--总学分要求
	[JLNY]  nvarchar(6)  NULL,--建立年月
	[SYXZ]  decimal(3, 1)  NULL,--适用学制
	[PYMB]  text  NULL,--培养目标
	[SFKY]  nvarchar(1)  NOT NULL,--是否可用
	[FJ]  text  NULL,--附件
CONSTRAINT [PK_EDU_ZZJX_03_01_ZTJXJH] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[JHBH] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--学期学分管理表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_03_A01_XQXFGL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_03_A01_XQXFGL](
	[SCHOOLID]  int  NOT NULL,--学校ID
	[XQID]  int  NOT NULL,--学期ID
	[JHBH]  nvarchar(5)  NOT NULL,--计划编号
	[ZDXF]  decimal(3, 1)  NULL,--最高学分
	[ZGXF]  decimal(3, 1)  NOT NULL,--最低学分
CONSTRAINT [PK_EDU_ZZJX_03_A01_XQXFGL] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[XQID] ASC,
	[JHBH] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--教学计划分类学分要求数据子类
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_03_02_JXJHFLXFYQ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_03_02_JXJHFLXFYQ](
	[SCHOOLID]  int  NOT NULL,--学校ID
	[KCFLM]  nvarchar(1)  NOT NULL,--课程分类码
	[XFYQ]  decimal(2, 1)  NOT NULL,--学分要求
	[JHBH]  nvarchar(5)  NOT NULL,--计划编号
CONSTRAINT [PK_EDU_ZZJX_03_02_JXJHFLXFYQ] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[KCFLM] ASC,
	[JHBH] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--教学计划课程清单数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_03_03_JXJHKCQD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_03_03_JXJHKCQD](
	[SCHOOLID]  int  NOT NULL,--学校ID
	[KCH]  nvarchar(6)  NOT NULL,--课程号
	[JHBH]  nvarchar(5)  NOT NULL,--计划编号
	[XQID]  int  NOT NULL,--学期ID
	[KCMC]  nvarchar(100)  NOT NULL,--课程名称
	[YXKC]  nvarchar(200)  NULL,--预修课程
	[SFHXKC]  nvarchar(1)  NULL,--是否核心（骨干）
	[KCFLM]  nvarchar(1)  NOT NULL,--课程分类码
	[KCSXM]  nvarchar(1)  NOT NULL,--课程属性码
	[ZXXQ]  decimal(2, 0)  NOT NULL,--执行学期
CONSTRAINT [PK_EDU_ZZJX_03_03_JXJHKCQD] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[KCH] ASC,
	[JHBH] ASC,
	[XQID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--教师教学工作量统计数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_05_02_JSJXGZLTJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_05_02_JSJXGZLTJ](
	[SCHOOLID]  int  NOT NULL,--学校ID
	[JSID]  int  NOT NULL,--教师ID
	[XQID]  int  NOT NULL,--学期ID
	[XQMC]  nvarchar(10)  NOT NULL,--学期名称
	[JSXM]  nvarchar(36)  NOT NULL,--教师姓名
	[RJKCMS]  decimal(4, 0)  NOT NULL,--任教课程门数
	[LLZXS]  decimal(4, 0)  NOT NULL,--理论总学时
	[SJZXS]  decimal(4, 0)  NOT NULL,--实践总学时
	[QTZXS]  decimal(4, 0)  NOT NULL,--其他总学时
	[XSZS]  decimal(4, 0)  NOT NULL,--学生总数
	[ZXFS]  decimal(5, 1)  NOT NULL,--总学分数
CONSTRAINT [PK_EDU_ZZJX_05_02_JSJXGZLTJ] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[JSID] ASC,
	[XQID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--代管费收取表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_08_A01_DGFSQ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_08_A01_DGFSQ](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校ID
	[XSXXID]  int  NOT NULL,--学生ID
	[XNID]  int  NOT NULL,--学年ID
	[XQID]  int  NOT NULL,--学期ID
	[YJJE]  decimal(10, 3)  NOT NULL,--已缴金额
	[JFRQ]  datetime  NULL,--缴费日期
	[SFYSH]  nvarchar(1)  NOT NULL,--是否已审核
	[SHRID]  int  NOT NULL,--审核人员ID
CONSTRAINT [PK_EDU_ZZJX_08_A01_DGFSQ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--调课申请数据表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_09_A01_TKSQSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_09_A01_TKSQSJ](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校ID
	[JSID]  int  NOT NULL,--教师
	[KCID]  nvarchar(6)  NOT NULL,--课程
	[TKLXID]  int  NOT NULL,--调课类型ID
	[TKQQSZ]  int  NOT NULL,--调课前起始周
	[TKQJSZ]  int  NOT NULL,--调课前结束周
	[TKQXQ]  int  NOT NULL,--调课前星期
	[TKQSD]  int  NOT NULL,--调课前时段
	[TKQJC]  int  NOT NULL,--调课前节次
	[TKHQSZ]  int  NOT NULL,--调课后起始周
	[TKHJSZ]  int  NOT NULL,--调课后结束周
	[TKHXQ]  int  NOT NULL,--调课后星期
	[TKHSD]  int  NOT NULL,--调课后时段
	[TKHJC]  int  NOT NULL,--调课后节次
	[ZT]  int  NOT NULL,--当前状态
	[BZ]  text  NOT NULL,--备注
CONSTRAINT [PK_EDU_ZZJX_09_A01_TKSQSJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--论文数据表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_10_A01_LWSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_10_A01_LWSJ](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[XNID]  int  NOT NULL,--学年ID
	[XQID]  int  NOT NULL,--学期ID
	[LWMC]  nvarchar(100)  NOT NULL,--论文名称
	[LWZY]  nvarchar(100)  NOT NULL,--论文摘要
	[LWNR]  text  NOT NULL,--论文内容
	[SCJSID]  int  NOT NULL,--上传教师ID
	[SCSJ]  datetime  NOT NULL,--上传时间
CONSTRAINT [PK_EDU_ZZJX_10_A01_LWSJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--科研活动数据表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_10_A02_KYHDSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_10_A02_KYHDSJ](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[XNID]  int  NOT NULL,--学年ID
	[XQID]  int  NOT NULL,--学期ID
	[HDMC]  nvarchar(50)  NOT NULL,--活动名称
	[HDNR]  text  NOT NULL,--活动内容
	[SFFB]  nvarchar(1)  NOT NULL,--是否发布
	[SCJSID]  int  NOT NULL,--上传教师ID
	[SCSJ]  datetime  NOT NULL,--上传时间
CONSTRAINT [PK_EDU_ZZJX_10_A02_KYHDSJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--参评信息数据表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_10_A03_CPXXSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_10_A03_CPXXSJ](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[XNID]  int  NOT NULL,--学年ID
	[XQID]  int  NOT NULL,--学期ID
	[XXMC]  nvarchar(50)  NOT NULL,--信息名称
	[XXNR]  text  NOT NULL,--信息内容
	[SFFB]  nvarchar(1)  NOT NULL,--是否发布
	[SCJSID]  int  NOT NULL,--上传教师ID
	[SCSJ]  datetime  NOT NULL,--上传时间
CONSTRAINT [PK_EDU_ZZJX_10_A03_CPXXSJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--课题数据表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_10_A04_KTSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_10_A04_KTSJ](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[XNID]  int  NOT NULL,--学年ID
	[XQID]  int  NOT NULL,--学期ID
	[KTMC]  nvarchar(50)  NOT NULL,--课题名称
	[KTZT]  nvarchar(200)  NOT NULL,--课题主题
	[KTNR]  text  NOT NULL,--课题内容
	[SQJSID]  int  NOT NULL,--申请教师ID
	[SQSJ]  datetime  NOT NULL,--申请时间
	[SHZT]  int  NOT NULL,--审核状态
	[SHJSID]  int  NOT NULL,--审核教师ID
	[SHSJ]  datetime  NOT NULL,--审核时间
	[JXZT]  int  NOT NULL,--节项状态
	[JXSJ]  datetime  NOT NULL,--节项时间
CONSTRAINT [PK_EDU_ZZJX_10_A04_KTSJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--课题阶段数据表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_10_A05_KTJDSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_10_A05_KTJDSJ](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[KTID]  int  NOT NULL,--课题ID
	[JDMC]  nvarchar(50)  NOT NULL,--阶段名称
	[JDGZNR]  text  NOT NULL,--阶段工作内容
	[SCSJ]  datetime  NOT NULL,--上传时间
CONSTRAINT [PK_EDU_ZZJX_10_A05_KTJDSJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--企业管理表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_20_A01_QYGL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_20_A01_QYGL](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[Name]  nvarchar(50)  NOT NULL,--企业名称
	[UserName]  nvarchar(50)  NOT NULL,--用户名
	[Password]  nvarchar(64)  NOT NULL,--密码
	[UserID]  int  NOT NULL,--用户表id(预留)
	[QYXZ]  nvarchar(200)  NOT NULL,--企业性质
	[QYGM]  nvarchar(200)  NOT NULL,--组织规模
	[ZZJG]  nvarchar(200)  NOT NULL,--组织机构
	[ZYJYFW]  nvarchar(500)  NOT NULL,--主要经营范围
	[License]  nvarchar(50)  NOT NULL,--营业执照
	[CompanyType]  int  NOT NULL,--企业类型
	[QYRS]  nvarchar(50)  NOT NULL,--企业人数
	[Regcapital]  nvarchar(50)  NOT NULL,--注册资金
	[PostNum]  nvarchar(50)  NOT NULL,--邮编
	[Fox]  nvarchar(50)  NOT NULL,--传真
	[Manager]  nvarchar(50)  NOT NULL,--负责人
	[Job]  nvarchar(50)  NOT NULL,--职位
	[Cellphone]  nvarchar(50)  NOT NULL,--手机号码
	[OfficNum]  nvarchar(50)  NOT NULL,--公司电话
	[Email]  nvarchar(50)  NOT NULL,--电子邮件
	[qq]  nvarchar(50)  NOT NULL,--qq
	[MSN]  nvarchar(100)  NOT NULL,--msn
	[Address]  nvarchar(200)  NOT NULL,--公司地址
	[Website]  nvarchar(200)  NOT NULL,--网址
	[GSJJ]  nvarchar(500)  NOT NULL,--公司简介
	[Status]  int  NOT NULL,--审核状态
CONSTRAINT [PK_EDU_ZZJX_20_A01_QYGL] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--校企互动表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_20_A02_XQHD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_20_A02_XQHD](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[ComID]  int  NOT NULL,--企业ID
	[ReactionTime]  datetime  NOT NULL,--反馈时间
	[AdviseToSchool]  text  NOT NULL,--企业对学校工作建议
	[AdviseToArt]  text  NOT NULL,--企业对学生职业技能建议
	[OtherAdvise]  text  NOT NULL,--其他建议
	[Retroaction]  text  NOT NULL,--反馈内容
	[AdviseToStudent]  text  NOT NULL,--实习生管理工作的建议
CONSTRAINT [PK_EDU_ZZJX_20_A02_XQHD] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--岗位信息表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_20_A03_GWXX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_20_A03_GWXX](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[ComID]  int  NOT NULL,--企业ID
	[JobName]  nvarchar(50)  NOT NULL,--岗位名称
	[PubTime]  datetime  NOT NULL,--招聘开始时间
	[EndTime]  datetime  NOT NULL,--招聘结束时间
	[WorkType]  nvarchar(100)  NOT NULL,--工作形式
	[Sex]  nvarchar(100)  NOT NULL,--性别要求
	[monthlypay]  nvarchar(100)  NOT NULL,--岗位薪酬
	[LanguageRequire]  nvarchar(100)  NOT NULL,--语言要求
	[WorkPlace]  nvarchar(100)  NOT NULL,--工作地点
	[Computer]  nvarchar(100)  NOT NULL,--计算机水平
	[ZPRS]  nvarchar(100)  NOT NULL,--招聘人数
	[education]  nvarchar(100)  NOT NULL,--学历要求
	[Age]  nvarchar(100)  NOT NULL,--年龄要求
	[GWJJ]  text  NOT NULL,--岗位简介
	[Major]  nvarchar(100)  NOT NULL,--专业要求
	[Base]  text  NOT NULL,--基本情况
	[experience]  nvarchar(200)  NOT NULL,--工作经验
	[GWSHZT]  int  NOT NULL,--岗位审核状态
	[Status]  int  NOT NULL,--岗位当前状态
CONSTRAINT [PK_EDU_ZZJX_20_A03_GWXX] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--实习班级管理表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_21_A01_SXBJGL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_21_A01_SXBJGL](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[XNID]  int  NOT NULL,--学年ID
	[XQID]  int  NOT NULL,--学期ID
	[BJMC]  nvarchar(50)  NOT NULL,--班级名称
	[BZRID]  int  NOT NULL,--班主任ID
CONSTRAINT [PK_EDU_ZZJX_21_A01_SXBJGL] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--实习生管理表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_21_A02_SXSGL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_21_A02_SXSGL](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[SZBID]  int  NOT NULL,--实习班ID
	[StuID]  int  NOT NULL,--学生ID
	[Resume]  text  NOT NULL,--简历
	[Status]  int  NOT NULL,--实习生状态
CONSTRAINT [PK_EDU_ZZJX_21_A02_SXSGL] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--实习岗位表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_21_A03_SXGW]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_21_A03_SXGW](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[SXSID]  int  NOT NULL,--实习生ID
	[JobID]  int  NOT NULL,--岗位ID
	[GSSHZT]  int  NOT NULL,--公司审核状态
	[TypeID]  int  NOT NULL,--录取类型
	[Status]  int  NOT NULL,--实习生状态
CONSTRAINT [PK_EDU_ZZJX_21_A03_SXGW] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--实习记录表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_22_A01_SXJL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_22_A01_SXJL](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[StuID]  int  NOT NULL,--学生ID
	[KSSJ]  datetime  NOT NULL,--开始时间
	[JSSJ]  datetime  NOT NULL,--结束时间
	[SXNR]  text  NOT NULL,--实习内容
	[SXFS]  text  NOT NULL,--实习反思
	[ZWPD]  int  NOT NULL,--自我评定
	[ZDSFXM]  nvarchar(50)  NOT NULL,--指导师傅姓名
	[ZDSFPY]  text  NOT NULL,--指导师傅评语
	[ZDSFPDSJ]  datetime  NOT NULL,--指导师傅评定时间
	[ZFPD]  int  NOT NULL,--师傅评定
	[ZDJSXM]  nvarchar(50)  NOT NULL,--指导教师姓名
	[ZDJSPY]  text  NOT NULL,--指导教师评语
	[ZDJSPDSJ]  datetime  NOT NULL,--指导教师评定时间
	[JSPD]  int  NOT NULL,--教师评定
CONSTRAINT [PK_EDU_ZZJX_22_A01_SXJL] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--实习单位变更表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_22_A02_SXDWBG]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_22_A02_SXDWBG](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[StuID]  int  NOT NULL,-- 变更学生ID
	[OrgJobID]  int  NOT NULL,--变更前岗位ID
	[OrgComID]  int  NOT NULL,--变更前企业ID
	[NowJobID]  int  NOT NULL,--变更后岗位ID
	[NowComID]  int  NOT NULL,--变更后企业ID
CONSTRAINT [PK_EDU_ZZJX_22_A02_SXDWBG] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--实习违章纪录表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_22_A03_SXWZJL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_22_A03_SXWZJL](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[ComID]  int  NOT NULL,--企业ID
	[StuID]  int  NOT NULL,--学生ID
	[WzTime]  datetime  NOT NULL,--违章时间
	[WGWZJL]  nvarchar(300)  NOT NULL,--违规违章记录
	[JYJXJGJCS]  nvarchar(300)  NOT NULL,--经验教训及改进措施
CONSTRAINT [PK_EDU_ZZJX_22_A03_SXWZJL] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--实习鉴定表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_22_A04_SXJD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_22_A04_SXJD](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[StuID]  int  NOT NULL,--学生ID
	[XF]  int  NOT NULL,--学分
	[SFHZ]  int  NOT NULL,--是否汇总
	[JDRID]  int  NOT NULL,--鉴定人ID
CONSTRAINT [PK_EDU_ZZJX_22_A04_SXJD] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--实习投诉表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_22_A05_SXTS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_22_A05_SXTS](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[ComID]  int  NOT NULL,--企业ID
	[StuID]  int  NOT NULL,--学生ID
	[TsTime]  datetime  NOT NULL,--投诉时间
	[TsReason]  text  NOT NULL,--投诉原因
	[TsResult]  text  NOT NULL,--投诉结果
	[ComSuggest]  text  NOT NULL,--投诉建议
	[TypeID]  int  NOT NULL,--投诉类型
CONSTRAINT [PK_EDU_ZZJX_22_A05_SXTS] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--实习奖惩表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJX_22_A06_SXJC]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJX_22_A06_SXJC](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[StuID]  int  NOT NULL,--学生ID
	[XNID]  int  NOT NULL,--学年ID
	[XQID]  int  NOT NULL,--学期ID
	[typeid]  int  NOT NULL,--奖惩类型
	[Apprail]  text  NOT NULL,--处理结果
	[Remark]  text  NOT NULL,--备注
	[AppraierID]  int  NOT NULL,--添加人ID
CONSTRAINT [PK_EDU_ZZJX_22_A06_SXJC] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--以下为添加注释语句
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'专业基本信息数据表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_01_ZYXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'专业编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_01_ZYXX', @level2type=N'COLUMN',@level2name=N'ZYBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_01_ZYXX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'专业代码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_01_ZYXX', @level2type=N'COLUMN',@level2name=N'ZYDM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'专业名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_01_ZYXX', @level2type=N'COLUMN',@level2name=N'ZYMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'专业英文名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_01_ZYXX', @level2type=N'COLUMN',@level2name=N'ZYYWMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学制' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_01_ZYXX', @level2type=N'COLUMN',@level2name=N'XZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'专业方向名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_01_ZYXX', @level2type=N'COLUMN',@level2name=N'ZYFXMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'专业简称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_01_ZYXX', @level2type=N'COLUMN',@level2name=N'ZYJC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建立年月' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_01_ZYXX', @level2type=N'COLUMN',@level2name=N'JLNY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'专业教师数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_01_ZYXX', @level2type=N'COLUMN',@level2name=N'ZYJSS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开设机构号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_01_ZYXX', @level2type=N'COLUMN',@level2name=N'KSJGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'总学分' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_01_ZYXX', @level2type=N'COLUMN',@level2name=N'ZXF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属专业目录' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_01_ZYXX', @level2type=N'COLUMN',@level2name=N'SSZYML'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'专业类别名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_01_ZYXX', @level2type=N'COLUMN',@level2name=N'ZYLB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程评价表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_A01_KCPJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_A01_KCPJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'评价ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_A01_KCPJ', @level2type=N'COLUMN',@level2name=N'PJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_A01_KCPJ', @level2type=N'COLUMN',@level2name=N'KXH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'评价人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_A01_KCPJ', @level2type=N'COLUMN',@level2name=N'PJR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'评价时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_A01_KCPJ', @level2type=N'COLUMN',@level2name=N'PJSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'评价内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_A01_KCPJ', @level2type=N'COLUMN',@level2name=N'PJNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'回复' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_A01_KCPJ', @level2type=N'COLUMN',@level2name=N'HF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程数据子类表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_02_KC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_02_KC', @level2type=N'COLUMN',@level2name=N'KCH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_02_KC', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_02_KC', @level2type=N'COLUMN',@level2name=N'KCMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程英文名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_02_KC', @level2type=N'COLUMN',@level2name=N'KCYWM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程别名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_02_KC', @level2type=N'COLUMN',@level2name=N'KCBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程介绍' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_02_KC', @level2type=N'COLUMN',@level2name=N'KCJS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学分' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_02_KC', @level2type=N'COLUMN',@level2name=N'XF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'总学时' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_02_KC', @level2type=N'COLUMN',@level2name=N'ZXS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'理论学时' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_02_KC', @level2type=N'COLUMN',@level2name=N'LLXS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实践学时' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_02_KC', @level2type=N'COLUMN',@level2name=N'SJXS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'其他学时' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_02_KC', @level2type=N'COLUMN',@level2name=N'QTXS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'参考书目' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_02_KC', @level2type=N'COLUMN',@level2name=N'CKSM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开课单位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_02_KC', @level2type=N'COLUMN',@level2name=N'KKDW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'考试形式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_02_KC', @level2type=N'COLUMN',@level2name=N'KSXS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'授课方式码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_02_KC', @level2type=N'COLUMN',@level2name=N'SKFSM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程费用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_02_KC', @level2type=N'COLUMN',@level2name=N'KCFY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教师任课表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_A02_JSRK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_A02_JSRK', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_A02_JSRK', @level2type=N'COLUMN',@level2name=N'KXH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教师表ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_A02_JSRK', @level2type=N'COLUMN',@level2name=N'JSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_A02_JSRK', @level2type=N'COLUMN',@level2name=N'KCH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'计划编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_A02_JSRK', @level2type=N'COLUMN',@level2name=N'JHBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学期ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_A02_JSRK', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教学大纲' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_01_A02_JSRK', @level2type=N'COLUMN',@level2name=N'JXDG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校年级数据表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_02_01_ZZNJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'年级代码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_02_01_ZZNJ', @level2type=N'COLUMN',@level2name=N'NJDM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_02_01_ZZNJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'年级名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_02_01_ZZNJ', @level2type=N'COLUMN',@level2name=N'NJMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属年份' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_02_01_ZZNJ', @level2type=N'COLUMN',@level2name=N'SSNF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'年级状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_02_01_ZZNJ', @level2type=N'COLUMN',@level2name=N'NJZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校班级数据表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_02_02_ZZBJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'行政班代码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_02_02_ZZBJ', @level2type=N'COLUMN',@level2name=N'XZBDM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_02_02_ZZBJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'专业基本信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_02_02_ZZBJ', @level2type=N'COLUMN',@level2name=N'ZYXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校年级数据表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_02_02_ZZBJ', @level2type=N'COLUMN',@level2name=N'ZZNJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'行政班名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_02_02_ZZBJ', @level2type=N'COLUMN',@level2name=N'XZBMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建班年月' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_02_02_ZZBJ', @level2type=N'COLUMN',@level2name=N'JBNY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'班主任工号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_02_02_ZZBJ', @level2type=N'COLUMN',@level2name=N'BZRGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教室编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_02_02_ZZBJ', @level2type=N'COLUMN',@level2name=N'JSBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'男生人数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_02_02_ZZBJ', @level2type=N'COLUMN',@level2name=N'NANSRS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'女生人数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_02_02_ZZBJ', @level2type=N'COLUMN',@level2name=N'NVSRS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'总人数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_02_02_ZZBJ', @level2type=N'COLUMN',@level2name=N'ZRS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'班长学号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_02_02_ZZBJ', @level2type=N'COLUMN',@level2name=N'BZXH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教学计划' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_02_02_ZZBJ', @level2type=N'COLUMN',@level2name=N'JXJH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'机构号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_02_02_ZZBJ', @level2type=N'COLUMN',@level2name=N'JGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'校区代码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_02_02_ZZBJ', @level2type=N'COLUMN',@level2name=N'XQDM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'总体教学计划数据子类表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_01_ZTJXJH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_01_ZTJXJH', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'计划编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_01_ZTJXJH', @level2type=N'COLUMN',@level2name=N'JHBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'计划年级' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_01_ZTJXJH', @level2type=N'COLUMN',@level2name=N'JHNJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'专业编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_01_ZTJXJH', @level2type=N'COLUMN',@level2name=N'ZYXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'计划专业名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_01_ZTJXJH', @level2type=N'COLUMN',@level2name=N'JHZYMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'总学分要求' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_01_ZTJXJH', @level2type=N'COLUMN',@level2name=N'ZXFYQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建立年月' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_01_ZTJXJH', @level2type=N'COLUMN',@level2name=N'JLNY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'适用学制' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_01_ZTJXJH', @level2type=N'COLUMN',@level2name=N'SYXZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'培养目标' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_01_ZTJXJH', @level2type=N'COLUMN',@level2name=N'PYMB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否可用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_01_ZTJXJH', @level2type=N'COLUMN',@level2name=N'SFKY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'附件' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_01_ZTJXJH', @level2type=N'COLUMN',@level2name=N'FJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学期学分管理表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_A01_XQXFGL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_A01_XQXFGL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学期ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_A01_XQXFGL', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'计划编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_A01_XQXFGL', @level2type=N'COLUMN',@level2name=N'JHBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最高学分' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_A01_XQXFGL', @level2type=N'COLUMN',@level2name=N'ZDXF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最低学分' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_A01_XQXFGL', @level2type=N'COLUMN',@level2name=N'ZGXF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教学计划分类学分要求数据子类' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_02_JXJHFLXFYQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_02_JXJHFLXFYQ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程分类码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_02_JXJHFLXFYQ', @level2type=N'COLUMN',@level2name=N'KCFLM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学分要求' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_02_JXJHFLXFYQ', @level2type=N'COLUMN',@level2name=N'XFYQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'计划编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_02_JXJHFLXFYQ', @level2type=N'COLUMN',@level2name=N'JHBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教学计划课程清单数据子类表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_03_JXJHKCQD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_03_JXJHKCQD', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_03_JXJHKCQD', @level2type=N'COLUMN',@level2name=N'KCH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'计划编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_03_JXJHKCQD', @level2type=N'COLUMN',@level2name=N'JHBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学期ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_03_JXJHKCQD', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_03_JXJHKCQD', @level2type=N'COLUMN',@level2name=N'KCMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'预修课程' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_03_JXJHKCQD', @level2type=N'COLUMN',@level2name=N'YXKC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否核心（骨干）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_03_JXJHKCQD', @level2type=N'COLUMN',@level2name=N'SFHXKC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程分类码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_03_JXJHKCQD', @level2type=N'COLUMN',@level2name=N'KCFLM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程属性码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_03_JXJHKCQD', @level2type=N'COLUMN',@level2name=N'KCSXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'执行学期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_03_03_JXJHKCQD', @level2type=N'COLUMN',@level2name=N'ZXXQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教师教学工作量统计数据子类表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_05_02_JSJXGZLTJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_05_02_JSJXGZLTJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教师ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_05_02_JSJXGZLTJ', @level2type=N'COLUMN',@level2name=N'JSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学期ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_05_02_JSJXGZLTJ', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学期名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_05_02_JSJXGZLTJ', @level2type=N'COLUMN',@level2name=N'XQMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教师姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_05_02_JSJXGZLTJ', @level2type=N'COLUMN',@level2name=N'JSXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'任教课程门数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_05_02_JSJXGZLTJ', @level2type=N'COLUMN',@level2name=N'RJKCMS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'理论总学时' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_05_02_JSJXGZLTJ', @level2type=N'COLUMN',@level2name=N'LLZXS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实践总学时' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_05_02_JSJXGZLTJ', @level2type=N'COLUMN',@level2name=N'SJZXS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'其他总学时' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_05_02_JSJXGZLTJ', @level2type=N'COLUMN',@level2name=N'QTZXS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生总数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_05_02_JSJXGZLTJ', @level2type=N'COLUMN',@level2name=N'XSZS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'总学分数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_05_02_JSJXGZLTJ', @level2type=N'COLUMN',@level2name=N'ZXFS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'代管费收取表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_08_A01_DGFSQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_08_A01_DGFSQ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_08_A01_DGFSQ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_08_A01_DGFSQ', @level2type=N'COLUMN',@level2name=N'XSXXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学年ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_08_A01_DGFSQ', @level2type=N'COLUMN',@level2name=N'XNID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学期ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_08_A01_DGFSQ', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'已缴金额' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_08_A01_DGFSQ', @level2type=N'COLUMN',@level2name=N'YJJE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'缴费日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_08_A01_DGFSQ', @level2type=N'COLUMN',@level2name=N'JFRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否已审核' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_08_A01_DGFSQ', @level2type=N'COLUMN',@level2name=N'SFYSH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核人员ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_08_A01_DGFSQ', @level2type=N'COLUMN',@level2name=N'SHRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'调课申请数据表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_09_A01_TKSQSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_09_A01_TKSQSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_09_A01_TKSQSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教师' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_09_A01_TKSQSJ', @level2type=N'COLUMN',@level2name=N'JSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课程' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_09_A01_TKSQSJ', @level2type=N'COLUMN',@level2name=N'KCID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'调课类型ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_09_A01_TKSQSJ', @level2type=N'COLUMN',@level2name=N'TKLXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'调课前起始周' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_09_A01_TKSQSJ', @level2type=N'COLUMN',@level2name=N'TKQQSZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'调课前结束周' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_09_A01_TKSQSJ', @level2type=N'COLUMN',@level2name=N'TKQJSZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'调课前星期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_09_A01_TKSQSJ', @level2type=N'COLUMN',@level2name=N'TKQXQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'调课前时段' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_09_A01_TKSQSJ', @level2type=N'COLUMN',@level2name=N'TKQSD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'调课前节次' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_09_A01_TKSQSJ', @level2type=N'COLUMN',@level2name=N'TKQJC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'调课后起始周' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_09_A01_TKSQSJ', @level2type=N'COLUMN',@level2name=N'TKHQSZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'调课后结束周' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_09_A01_TKSQSJ', @level2type=N'COLUMN',@level2name=N'TKHJSZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'调课后星期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_09_A01_TKSQSJ', @level2type=N'COLUMN',@level2name=N'TKHXQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'调课后时段' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_09_A01_TKSQSJ', @level2type=N'COLUMN',@level2name=N'TKHSD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'调课后节次' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_09_A01_TKSQSJ', @level2type=N'COLUMN',@level2name=N'TKHJC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'当前状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_09_A01_TKSQSJ', @level2type=N'COLUMN',@level2name=N'ZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_09_A01_TKSQSJ', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'论文数据表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A01_LWSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A01_LWSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A01_LWSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学年ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A01_LWSJ', @level2type=N'COLUMN',@level2name=N'XNID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学期ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A01_LWSJ', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'论文名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A01_LWSJ', @level2type=N'COLUMN',@level2name=N'LWMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'论文摘要' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A01_LWSJ', @level2type=N'COLUMN',@level2name=N'LWZY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'论文内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A01_LWSJ', @level2type=N'COLUMN',@level2name=N'LWNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上传教师ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A01_LWSJ', @level2type=N'COLUMN',@level2name=N'SCJSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上传时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A01_LWSJ', @level2type=N'COLUMN',@level2name=N'SCSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'科研活动数据表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A02_KYHDSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A02_KYHDSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A02_KYHDSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学年ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A02_KYHDSJ', @level2type=N'COLUMN',@level2name=N'XNID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学期ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A02_KYHDSJ', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'活动名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A02_KYHDSJ', @level2type=N'COLUMN',@level2name=N'HDMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'活动内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A02_KYHDSJ', @level2type=N'COLUMN',@level2name=N'HDNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否发布' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A02_KYHDSJ', @level2type=N'COLUMN',@level2name=N'SFFB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上传教师ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A02_KYHDSJ', @level2type=N'COLUMN',@level2name=N'SCJSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上传时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A02_KYHDSJ', @level2type=N'COLUMN',@level2name=N'SCSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'参评信息数据表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A03_CPXXSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A03_CPXXSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A03_CPXXSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学年ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A03_CPXXSJ', @level2type=N'COLUMN',@level2name=N'XNID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学期ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A03_CPXXSJ', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'信息名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A03_CPXXSJ', @level2type=N'COLUMN',@level2name=N'XXMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'信息内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A03_CPXXSJ', @level2type=N'COLUMN',@level2name=N'XXNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否发布' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A03_CPXXSJ', @level2type=N'COLUMN',@level2name=N'SFFB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上传教师ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A03_CPXXSJ', @level2type=N'COLUMN',@level2name=N'SCJSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上传时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A03_CPXXSJ', @level2type=N'COLUMN',@level2name=N'SCSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课题数据表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A04_KTSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A04_KTSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A04_KTSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学年ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A04_KTSJ', @level2type=N'COLUMN',@level2name=N'XNID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学期ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A04_KTSJ', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课题名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A04_KTSJ', @level2type=N'COLUMN',@level2name=N'KTMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课题主题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A04_KTSJ', @level2type=N'COLUMN',@level2name=N'KTZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课题内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A04_KTSJ', @level2type=N'COLUMN',@level2name=N'KTNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请教师ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A04_KTSJ', @level2type=N'COLUMN',@level2name=N'SQJSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A04_KTSJ', @level2type=N'COLUMN',@level2name=N'SQSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A04_KTSJ', @level2type=N'COLUMN',@level2name=N'SHZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核教师ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A04_KTSJ', @level2type=N'COLUMN',@level2name=N'SHJSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A04_KTSJ', @level2type=N'COLUMN',@level2name=N'SHSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'节项状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A04_KTSJ', @level2type=N'COLUMN',@level2name=N'JXZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'节项时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A04_KTSJ', @level2type=N'COLUMN',@level2name=N'JXSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课题阶段数据表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A05_KTJDSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A05_KTJDSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A05_KTJDSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'课题ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A05_KTJDSJ', @level2type=N'COLUMN',@level2name=N'KTID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'阶段名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A05_KTJDSJ', @level2type=N'COLUMN',@level2name=N'JDMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'阶段工作内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A05_KTJDSJ', @level2type=N'COLUMN',@level2name=N'JDGZNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上传时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_10_A05_KTJDSJ', @level2type=N'COLUMN',@level2name=N'SCSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'企业管理表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_20_A01_QYGL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_20_A01_QYGL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_20_A01_QYGL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'企业名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_20_A01_QYGL', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_20_A01_QYGL', @level2type=N'COLUMN',@level2name=N'UserName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'密码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_20_A01_QYGL', @level2type=N'COLUMN',@level2name=N'Password'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户表id(预留)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_20_A01_QYGL', @level2type=N'COLUMN',@level2name=N'UserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'企业性质' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_20_A01_QYGL', @level2type=N'COLUMN',@level2name=N'QYXZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'组织规模' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_20_A01_QYGL', @level2type=N'COLUMN',@level2name=N'QYGM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'组织机构' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_20_A01_QYGL', @level2type=N'COLUMN',@level2name=N'ZZJG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主要经营范围' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_20_A01_QYGL', @level2type=N'COLUMN',@level2name=N'ZYJYFW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'营业执照' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_20_A01_QYGL', @level2type=N'COLUMN',@level2name=N'License'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'企业类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_20_A01_QYGL', @level2type=N'COLUMN',@level2name=N'CompanyType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'企业人数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_20_A01_QYGL', @level2type=N'COLUMN',@level2name=N'QYRS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'注册资金' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_20_A01_QYGL', @level2type=N'COLUMN',@level2name=N'Regcapital'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'邮编' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_20_A01_QYGL', @level2type=N'COLUMN',@level2name=N'PostNum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'传真' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_20_A01_QYGL', @level2type=N'COLUMN',@level2name=N'Fox'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'负责人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_20_A01_QYGL', @level2type=N'COLUMN',@level2name=N'Manager'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'职位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_20_A01_QYGL', @level2type=N'COLUMN',@level2name=N'Job'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'手机号码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_20_A01_QYGL', @level2type=N'COLUMN',@level2name=N'Cellphone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公司电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_20_A01_QYGL', @level2type=N'COLUMN',@level2name=N'OfficNum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电子邮件' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_20_A01_QYGL', @level2type=N'COLUMN',@level2name=N'Email'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'qq' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_20_A01_QYGL', @level2type=N'COLUMN',@level2name=N'qq'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'msn' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_20_A01_QYGL', @level2type=N'COLUMN',@level2name=N'MSN'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公司地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_20_A01_QYGL', @level2type=N'COLUMN',@level2name=N'Address'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'网址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_20_A01_QYGL', @level2type=N'COLUMN',@level2name=N'Website'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公司简介' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_20_A01_QYGL', @level2type=N'COLUMN',@level2name=N'GSJJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_20_A01_QYGL', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'校企互动表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_20_A02_XQHD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_20_A02_XQHD', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_20_A02_XQHD', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'企业ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_20_A02_XQHD', @level2type=N'COLUMN',@level2name=N'ComID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'反馈时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_20_A02_XQHD', @level2type=N'COLUMN',@level2name=N'ReactionTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'企业对学校工作建议' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_20_A02_XQHD', @level2type=N'COLUMN',@level2name=N'AdviseToSchool'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'企业对学生职业技能建议' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_20_A02_XQHD', @level2type=N'COLUMN',@level2name=N'AdviseToArt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'其他建议' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_20_A02_XQHD', @level2type=N'COLUMN',@level2name=N'OtherAdvise'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'反馈内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_20_A02_XQHD', @level2type=N'COLUMN',@level2name=N'Retroaction'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实习生管理工作的建议' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_20_A02_XQHD', @level2type=N'COLUMN',@level2name=N'AdviseToStudent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'岗位信息表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_20_A03_GWXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_20_A03_GWXX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_20_A03_GWXX', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'企业ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_20_A03_GWXX', @level2type=N'COLUMN',@level2name=N'ComID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'岗位名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_20_A03_GWXX', @level2type=N'COLUMN',@level2name=N'JobName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'招聘开始时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_20_A03_GWXX', @level2type=N'COLUMN',@level2name=N'PubTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'招聘结束时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_20_A03_GWXX', @level2type=N'COLUMN',@level2name=N'EndTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工作形式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_20_A03_GWXX', @level2type=N'COLUMN',@level2name=N'WorkType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'性别要求' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_20_A03_GWXX', @level2type=N'COLUMN',@level2name=N'Sex'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'岗位薪酬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_20_A03_GWXX', @level2type=N'COLUMN',@level2name=N'monthlypay'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'语言要求' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_20_A03_GWXX', @level2type=N'COLUMN',@level2name=N'LanguageRequire'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工作地点' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_20_A03_GWXX', @level2type=N'COLUMN',@level2name=N'WorkPlace'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'计算机水平' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_20_A03_GWXX', @level2type=N'COLUMN',@level2name=N'Computer'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'招聘人数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_20_A03_GWXX', @level2type=N'COLUMN',@level2name=N'ZPRS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学历要求' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_20_A03_GWXX', @level2type=N'COLUMN',@level2name=N'education'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'年龄要求' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_20_A03_GWXX', @level2type=N'COLUMN',@level2name=N'Age'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'岗位简介' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_20_A03_GWXX', @level2type=N'COLUMN',@level2name=N'GWJJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'专业要求' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_20_A03_GWXX', @level2type=N'COLUMN',@level2name=N'Major'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'基本情况' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_20_A03_GWXX', @level2type=N'COLUMN',@level2name=N'Base'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工作经验' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_20_A03_GWXX', @level2type=N'COLUMN',@level2name=N'experience'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'岗位审核状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_20_A03_GWXX', @level2type=N'COLUMN',@level2name=N'GWSHZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'岗位当前状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_20_A03_GWXX', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实习班级管理表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_21_A01_SXBJGL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_21_A01_SXBJGL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_21_A01_SXBJGL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学年ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_21_A01_SXBJGL', @level2type=N'COLUMN',@level2name=N'XNID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学期ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_21_A01_SXBJGL', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'班级名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_21_A01_SXBJGL', @level2type=N'COLUMN',@level2name=N'BJMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'班主任ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_21_A01_SXBJGL', @level2type=N'COLUMN',@level2name=N'BZRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实习生管理表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_21_A02_SXSGL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_21_A02_SXSGL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_21_A02_SXSGL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实习班ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_21_A02_SXSGL', @level2type=N'COLUMN',@level2name=N'SZBID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_21_A02_SXSGL', @level2type=N'COLUMN',@level2name=N'StuID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'简历' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_21_A02_SXSGL', @level2type=N'COLUMN',@level2name=N'Resume'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实习生状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_21_A02_SXSGL', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实习岗位表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_21_A03_SXGW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_21_A03_SXGW', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_21_A03_SXGW', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实习生ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_21_A03_SXGW', @level2type=N'COLUMN',@level2name=N'SXSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'岗位ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_21_A03_SXGW', @level2type=N'COLUMN',@level2name=N'JobID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公司审核状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_21_A03_SXGW', @level2type=N'COLUMN',@level2name=N'GSSHZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'录取类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_21_A03_SXGW', @level2type=N'COLUMN',@level2name=N'TypeID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实习生状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_21_A03_SXGW', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实习记录表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A01_SXJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A01_SXJL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A01_SXJL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A01_SXJL', @level2type=N'COLUMN',@level2name=N'StuID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开始时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A01_SXJL', @level2type=N'COLUMN',@level2name=N'KSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'结束时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A01_SXJL', @level2type=N'COLUMN',@level2name=N'JSSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实习内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A01_SXJL', @level2type=N'COLUMN',@level2name=N'SXNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实习反思' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A01_SXJL', @level2type=N'COLUMN',@level2name=N'SXFS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自我评定' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A01_SXJL', @level2type=N'COLUMN',@level2name=N'ZWPD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'指导师傅姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A01_SXJL', @level2type=N'COLUMN',@level2name=N'ZDSFXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'指导师傅评语' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A01_SXJL', @level2type=N'COLUMN',@level2name=N'ZDSFPY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'指导师傅评定时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A01_SXJL', @level2type=N'COLUMN',@level2name=N'ZDSFPDSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'师傅评定' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A01_SXJL', @level2type=N'COLUMN',@level2name=N'ZFPD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'指导教师姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A01_SXJL', @level2type=N'COLUMN',@level2name=N'ZDJSXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'指导教师评语' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A01_SXJL', @level2type=N'COLUMN',@level2name=N'ZDJSPY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'指导教师评定时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A01_SXJL', @level2type=N'COLUMN',@level2name=N'ZDJSPDSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教师评定' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A01_SXJL', @level2type=N'COLUMN',@level2name=N'JSPD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实习单位变更表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A02_SXDWBG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A02_SXDWBG', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A02_SXDWBG', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N' 变更学生ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A02_SXDWBG', @level2type=N'COLUMN',@level2name=N'StuID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'变更前岗位ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A02_SXDWBG', @level2type=N'COLUMN',@level2name=N'OrgJobID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'变更前企业ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A02_SXDWBG', @level2type=N'COLUMN',@level2name=N'OrgComID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'变更后岗位ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A02_SXDWBG', @level2type=N'COLUMN',@level2name=N'NowJobID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'变更后企业ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A02_SXDWBG', @level2type=N'COLUMN',@level2name=N'NowComID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实习违章纪录表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A03_SXWZJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A03_SXWZJL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A03_SXWZJL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'企业ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A03_SXWZJL', @level2type=N'COLUMN',@level2name=N'ComID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A03_SXWZJL', @level2type=N'COLUMN',@level2name=N'StuID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'违章时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A03_SXWZJL', @level2type=N'COLUMN',@level2name=N'WzTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'违规违章记录' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A03_SXWZJL', @level2type=N'COLUMN',@level2name=N'WGWZJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'经验教训及改进措施' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A03_SXWZJL', @level2type=N'COLUMN',@level2name=N'JYJXJGJCS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实习鉴定表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A04_SXJD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A04_SXJD', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A04_SXJD', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A04_SXJD', @level2type=N'COLUMN',@level2name=N'StuID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学分' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A04_SXJD', @level2type=N'COLUMN',@level2name=N'XF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否汇总' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A04_SXJD', @level2type=N'COLUMN',@level2name=N'SFHZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'鉴定人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A04_SXJD', @level2type=N'COLUMN',@level2name=N'JDRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实习投诉表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A05_SXTS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A05_SXTS', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A05_SXTS', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'企业ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A05_SXTS', @level2type=N'COLUMN',@level2name=N'ComID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A05_SXTS', @level2type=N'COLUMN',@level2name=N'StuID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'投诉时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A05_SXTS', @level2type=N'COLUMN',@level2name=N'TsTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'投诉原因' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A05_SXTS', @level2type=N'COLUMN',@level2name=N'TsReason'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'投诉结果' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A05_SXTS', @level2type=N'COLUMN',@level2name=N'TsResult'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'投诉建议' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A05_SXTS', @level2type=N'COLUMN',@level2name=N'ComSuggest'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'投诉类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A05_SXTS', @level2type=N'COLUMN',@level2name=N'TypeID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实习奖惩表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A06_SXJC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A06_SXJC', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A06_SXJC', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A06_SXJC', @level2type=N'COLUMN',@level2name=N'StuID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学年ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A06_SXJC', @level2type=N'COLUMN',@level2name=N'XNID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学期ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A06_SXJC', @level2type=N'COLUMN',@level2name=N'XQID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'奖惩类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A06_SXJC', @level2type=N'COLUMN',@level2name=N'typeid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'处理结果' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A06_SXJC', @level2type=N'COLUMN',@level2name=N'Apprail'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A06_SXJC', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJX_22_A06_SXJC', @level2type=N'COLUMN',@level2name=N'AppraierID'
GO
