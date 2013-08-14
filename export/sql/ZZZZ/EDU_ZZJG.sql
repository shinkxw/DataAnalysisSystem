--空间名：EDU_ZZJG  生成器：SqlBuilder0.1

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJG_01_01_JZGJBSJ')
            and   type = 'U')
   drop table EDU_ZZJG_01_01_JZGJBSJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJG_02_01_JZGLXFS')
            and   type = 'U')
   drop table EDU_ZZJG_02_01_JZGLXFS
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJG_02_02_XNGWSJ')
            and   type = 'U')
   drop table EDU_ZZJG_02_02_XNGWSJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJG_07_01_JZGZYNL')
            and   type = 'U')
   drop table EDU_ZZJG_07_01_JZGZYNL
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJG_04_A01_JBDJ')
            and   type = 'U')
   drop table EDU_ZZJG_04_A01_JBDJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZJG_01_A01_JZGKZ')
            and   type = 'U')
   drop table EDU_ZZJG_01_A01_JZGKZ
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
	[SFSSXJS]  nvarchar(1)  NOT NULL,--是否双师型教
	[ZP]  nvarchar(100)  NULL,--照片(路径)
	[DQZTM]  nvarchar(2)  NOT NULL,--当前状态码
CONSTRAINT [PK_EDU_ZZJG_01_01_JZGJBSJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--教职工联系方式数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZJG_02_01_JZGLXFS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZJG_02_01_JZGLXFS](
	[SCHOOLID]  int  NOT NULL,--学校名
	[JZGJBSJID]  int  NOT NULL,--教职工ID
	[GH]  nvarchar(20)  NOT NULL,--工号
	[XM]  nvarchar(36)  NOT NULL,--姓名
	[YDDH]  nvarchar(30)  NOT NULL,--移动电话
	[GDDH]  nvarchar(30)  NULL,--固定电话
	[YZBM]  nvarchar(6)  NULL,--邮政编码
	[TXDZ]  nvarchar(180)  NULL,--通信地址
	[DZXX]  nvarchar(40)  NOT NULL,--电子信箱
	[WLDZ]  nvarchar(60)  NULL,--网络地址
	[JSTXH]  nvarchar(40)  NULL,--即时通讯号
CONSTRAINT [PK_EDU_ZZJG_02_01_JZGLXFS] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[JZGJBSJID] ASC
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
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否双师型教' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'SFSSXJS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'照片(路径)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'ZP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'当前状态码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'DQZTM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教职工联系方式数据子类表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_02_01_JZGLXFS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_02_01_JZGLXFS', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教职工ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_02_01_JZGLXFS', @level2type=N'COLUMN',@level2name=N'JZGJBSJID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_02_01_JZGLXFS', @level2type=N'COLUMN',@level2name=N'GH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_02_01_JZGLXFS', @level2type=N'COLUMN',@level2name=N'XM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'移动电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_02_01_JZGLXFS', @level2type=N'COLUMN',@level2name=N'YDDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'固定电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_02_01_JZGLXFS', @level2type=N'COLUMN',@level2name=N'GDDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'邮政编码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_02_01_JZGLXFS', @level2type=N'COLUMN',@level2name=N'YZBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'通信地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_02_01_JZGLXFS', @level2type=N'COLUMN',@level2name=N'TXDZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电子信箱' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_02_01_JZGLXFS', @level2type=N'COLUMN',@level2name=N'DZXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'网络地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_02_01_JZGLXFS', @level2type=N'COLUMN',@level2name=N'WLDZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'即时通讯号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZJG_02_01_JZGLXFS', @level2type=N'COLUMN',@level2name=N'JSTXH'
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
