--空间名：EDU_ZZFC  生成器：SqlBuilder0.1

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZFC_02_01_JZWJBSJ')
            and   type = 'U')
   drop table EDU_ZZFC_02_01_JZWJBSJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZFC_08_01_XSSS')
            and   type = 'U')
   drop table EDU_ZZFC_08_01_XSSS
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZFC_08_A01_SSCW')
            and   type = 'U')
   drop table EDU_ZZFC_08_A01_SSCW
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZFC_08_A03_ZWHCY')
            and   type = 'U')
   drop table EDU_ZZFC_08_A03_ZWHCY
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZFC_08_A02_YHZSJL')
            and   type = 'U')
   drop table EDU_ZZFC_08_A02_YHZSJL
go
--建筑物基本数据类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZFC_02_01_JZWJBSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZFC_02_01_JZWJBSJ](
	[SCHOOLID]  int  NOT NULL,--学校名
	[ID]  int  NOT NULL,--建筑物ID
	[JZWH]  nvarchar(6)  NOT NULL,--建筑物号
	[JZWMC]  nvarchar(30)  NOT NULL,--建筑物名称
	[SYZKM]  nvarchar(1)  NOT NULL,--使用状况码
	[FWCQ]  nvarchar(1)  NOT NULL,--房屋产权
	[XQH]  nvarchar(2)  NULL,--校区号
	[JZWFLM]  nvarchar(1)  NOT NULL,--建筑物分类码
	[JZWJGM]  nvarchar(1)  NOT NULL,--建筑物结构码
	[JZWCS]  decimal(2)  NOT NULL,--建筑物层数
	[JCNY]  nvarchar(6)  NULL,--建成年月
	[JZWTZZE]  money  NULL,--建筑物投资总额
	[JFLYM]  nvarchar(1)  NULL,--经费来源码
	[ZJZMJ]  decimal(10, 2)  NOT NULL,--总建筑面积
	[ZSYMJ]  decimal(10, 2)  NOT NULL,--总使用面积
	[KZSFLDM]  nvarchar(1)  NULL,--抗震设防烈度码
	[KZSFBZM]  nvarchar(1)  NOT NULL,--抗震设防标准码
	[JZWDZ]  nvarchar(180)  NOT NULL,--建筑物地址
	[JZWZKM]  nvarchar(2)  NOT NULL,--建筑物状况码
	[JZWTP]  nvarchar(200)  NULL,--建筑物图片
	[JZWPMT]  nvarchar(200)  NULL,--建筑物平面图
	[XXDWCCM]  nvarchar(1)  NULL,--学校单位层次码
	[JZWWZZK]  nvarchar(1)  NOT NULL,--建筑物位置状况
	[GHSPWH]  nvarchar(24)  NOT NULL,--规划审批文号
	[ZHFZNL]  nvarchar(60)  NULL,--综合防灾能力
	[GHSYNX]  decimal(3)  NULL,--规划使用年限
	[SFYYJBXCS]  nvarchar(1)  NULL,--是否有预警避险措施
	[SFKYYYJBNCS]  nvarchar(1)  NULL,--是否可用于应急避难场所
	[CQZH]  nvarchar(20)  NOT NULL,--产权证号
	[JZWYTM]  nvarchar(2)  NULL,--建筑物用途码
	[JZWZGD]  decimal(3)  NULL,--建筑物总高度
	[WFJDBM]  nvarchar(60)  NULL,--危房鉴定部门
	[WFJDWH]  nvarchar(20)  NULL,--危房鉴定文号
	[WFJDRQ]  nvarchar(8)  NULL,--危房鉴定日期
	[GNFSM]  nvarchar(1)  NULL,--供暖方式码
	[JZWJCXSM]  nvarchar(2)  NULL,--建筑物基础形式码
	[JZWPMXSM]  nvarchar(1)  NULL,--建筑物平面形式码
	[JZWLBXSM]  nvarchar(1)  NULL,--建筑物楼板形式码
	[SFYGZZ]  nvarchar(1)  NOT NULL,--是否有构造柱
	[QL]  nvarchar(1)  NOT NULL,--圈梁
	[ZJAQGZWCRQ]  nvarchar(8)  NULL,--最近安全改造完成日期
	[ZJAQGZHYJSYNX]  decimal(2)  NULL,--最近安全改造后预计使用年限
	[ZXLXM]  nvarchar(1)  NULL,--专项类型
	[ZYZXTZBZMCM]  nvarchar(1)  NULL,--中央专项投资补助名称码
	[WWJZDJM]  nvarchar(1)  NULL,--文物建筑等级码
	[JXJFZYF]  decimal(8)  NOT NULL,--教学及辅助用房
	[QZJS]  decimal(8)  NOT NULL,--其中教室
	[QZSYS]  decimal(8)  NOT NULL,--其中实验室
	[QZTSS]  decimal(8)  NOT NULL,--其中图书室
	[QZWJS]  decimal(8)  NOT NULL,--其中微机室
	[QZYYS]  decimal(8)  NOT NULL,--其中语音室
	[QZTYHDS]  decimal(8)  NOT NULL,--其中体育活动室
	[QZQTJFYF]  decimal(8)  NOT NULL,--其中其他教辅用房
	[SHYF]  decimal(8)  NOT NULL,--生活用房
	[QZXSSS]  decimal(8)  NOT NULL,--其中学生宿舍
	[QZST]  decimal(8)  NOT NULL,--其中食堂
	[QZCS]  decimal(8)  NOT NULL,--其中厕所
	[QZGLF]  decimal(8)  NOT NULL,--其中锅炉房(开水房)
	[QZYS]  decimal(8)  NOT NULL,--其中浴室
	[QZJGSS]  decimal(8)  NOT NULL,--其中教工宿舍
	[QZQTSHYF]  decimal(8)  NOT NULL,--其中其他生活用房
	[XZBGYF]  decimal(8)  NOT NULL,--行政办公用房
	[QZJSBGS]  decimal(8)  NOT NULL,--其中教职工办公室
	[QZWSBJS]  decimal(8)  NOT NULL,--其中卫生保健室
	[QZQTXZBGYF]  decimal(8)  NOT NULL,--其中其他行政办公用房
	[QTYF]  decimal(8)  NOT NULL,--其他用房
CONSTRAINT [PK_EDU_ZZFC_02_01_JZWJBSJ] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--学生宿舍数据类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZFC_08_01_XSSS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZFC_08_01_XSSS](
	[SCHOOLID]  int  NOT NULL,--学校名
	[ID]  int  NOT NULL,--宿舍ID
	[SSLID]  int  NOT NULL,--宿舍楼ID
	[SSLBM]  nvarchar(6)  NOT NULL,--宿舍楼编号
	[FJBM]  nvarchar(10)  NOT NULL,--房间编号
	[RZXB]  nvarchar(1)  NOT NULL,--入住性别
	[SFKY]  nvarchar(1)  NOT NULL,--是否可用
	[KZRS]  decimal(2)  NOT NULL,--可住人数
	[WLDK]  nvarchar(20)  NULL,--网络端口
	[AZDSJ]  nvarchar(1)  NULL,--安装电视机
	[DHDK]  nvarchar(20)  NULL,--电话端口
	[DHHM]  nvarchar(20)  NULL,--电话号码
	[SBDS]  decimal(10)  NULL,--水表底数
	[DBDS]  decimal(10)  NULL,--电表底数
	[SSBZ]  text  NULL,--宿舍备注
	[SZLZ]  int  NOT NULL,--所在楼层
	[SSM]  nvarchar(128)  NOT NULL,--宿舍名
CONSTRAINT [PK_EDU_ZZFC_08_01_XSSS] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--宿舍床位表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZFC_08_A01_SSCW]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZFC_08_A01_SSCW](
	[SCHOOLID]  int  NOT NULL,--学校ID
	[ID]  int  NOT NULL,--床位ID
	[SSLID]  int  NOT NULL,--宿舍楼ID
	[SSID]  int  NOT NULL,--宿舍ID
	[CWM]  nvarchar(128)  NOT NULL,--床位名
	[BZ]  text  NOT NULL,--备注
	[SFRZ]  nvarchar(1)  NOT NULL,--是否入住
CONSTRAINT [PK_EDU_ZZFC_08_A01_SSCW] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--住委会成员表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZFC_08_A03_ZWHCY]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZFC_08_A03_ZWHCY](
	[SCHOOLID]  int  NOT NULL,--学校ID
	[ID]  int  NOT NULL,--成员ID
	[YHID]  int  NOT NULL,--用户ID
	[YHLX]  int  NOT NULL,--用户类型
	[CYXM]  nvarchar(128)  NULL,--成员姓名
	[TJSJ]  datetime  NOT NULL,--添加时间
	[ZWMC]  nvarchar(128)  NOT NULL,--职位名称
	[GZNR]  nvarchar(500)  NOT NULL,--工作内容
CONSTRAINT [PK_EDU_ZZFC_08_A03_ZWHCY] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--用户住宿记录表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZFC_08_A02_YHZSJL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZFC_08_A02_YHZSJL](
	[SCHOOLID]  int  NOT NULL,--学校ID
	[ID]  int  NOT NULL,--住宿记录ID
	[YHID]  int  NOT NULL,--用户ID
	[SSLID]  int  NOT NULL,--宿舍楼ID
	[SSID]  int  NOT NULL,--宿舍ID
	[CWID]  int  NOT NULL,--床位ID
	[YHXM]  nvarchar(128)  NULL,--用户姓名
	[RZRLX]  int  NOT NULL,--入住人类型
	[RZSJ]  datetime  NOT NULL,--入住时间
	[SHZT]  int  NOT NULL,--审核状态
	[SHSJ]  datetime  NOT NULL,--审核时间
	[SHR]  nvarchar(128)  NOT NULL,--审核人
CONSTRAINT [PK_EDU_ZZFC_08_A02_YHZSJL] PRIMARY KEY CLUSTERED
(
	[SCHOOLID] ASC,
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--以下为添加注释语句
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建筑物基本数据类表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建筑物ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建筑物号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'JZWH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建筑物名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'JZWMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'使用状况码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'SYZKM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'房屋产权' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'FWCQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'校区号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'XQH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建筑物分类码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'JZWFLM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建筑物结构码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'JZWJGM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建筑物层数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'JZWCS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建成年月' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'JCNY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建筑物投资总额' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'JZWTZZE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'经费来源码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'JFLYM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'总建筑面积' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'ZJZMJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'总使用面积' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'ZSYMJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'抗震设防烈度码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'KZSFLDM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'抗震设防标准码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'KZSFBZM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建筑物地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'JZWDZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建筑物状况码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'JZWZKM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建筑物图片' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'JZWTP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建筑物平面图' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'JZWPMT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校单位层次码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'XXDWCCM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建筑物位置状况' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'JZWWZZK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'规划审批文号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'GHSPWH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'综合防灾能力' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'ZHFZNL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'规划使用年限' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'GHSYNX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否有预警避险措施' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'SFYYJBXCS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否可用于应急避难场所' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'SFKYYYJBNCS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'产权证号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'CQZH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建筑物用途码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'JZWYTM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建筑物总高度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'JZWZGD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'危房鉴定部门' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'WFJDBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'危房鉴定文号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'WFJDWH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'危房鉴定日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'WFJDRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'供暖方式码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'GNFSM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建筑物基础形式码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'JZWJCXSM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建筑物平面形式码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'JZWPMXSM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建筑物楼板形式码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'JZWLBXSM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否有构造柱' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'SFYGZZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'圈梁' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'QL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最近安全改造完成日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'ZJAQGZWCRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最近安全改造后预计使用年限' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'ZJAQGZHYJSYNX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'专项类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'ZXLXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中央专项投资补助名称码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'ZYZXTZBZMCM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文物建筑等级码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'WWJZDJM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教学及辅助用房' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'JXJFZYF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'其中教室' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'QZJS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'其中实验室' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'QZSYS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'其中图书室' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'QZTSS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'其中微机室' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'QZWJS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'其中语音室' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'QZYYS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'其中体育活动室' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'QZTYHDS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'其中其他教辅用房' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'QZQTJFYF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'生活用房' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'SHYF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'其中学生宿舍' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'QZXSSS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'其中食堂' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'QZST'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'其中厕所' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'QZCS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'其中锅炉房(开水房)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'QZGLF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'其中浴室' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'QZYS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'其中教工宿舍' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'QZJGSS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'其中其他生活用房' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'QZQTSHYF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'行政办公用房' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'XZBGYF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'其中教职工办公室' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'QZJSBGS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'其中卫生保健室' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'QZWSBJS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'其中其他行政办公用房' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'QZQTXZBGYF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'其他用房' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_02_01_JZWJBSJ', @level2type=N'COLUMN',@level2name=N'QTYF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学生宿舍数据类表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_01_XSSS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_01_XSSS', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'宿舍ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_01_XSSS', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'宿舍楼ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_01_XSSS', @level2type=N'COLUMN',@level2name=N'SSLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'宿舍楼编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_01_XSSS', @level2type=N'COLUMN',@level2name=N'SSLBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'房间编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_01_XSSS', @level2type=N'COLUMN',@level2name=N'FJBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'入住性别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_01_XSSS', @level2type=N'COLUMN',@level2name=N'RZXB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否可用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_01_XSSS', @level2type=N'COLUMN',@level2name=N'SFKY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'可住人数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_01_XSSS', @level2type=N'COLUMN',@level2name=N'KZRS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'网络端口' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_01_XSSS', @level2type=N'COLUMN',@level2name=N'WLDK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'安装电视机' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_01_XSSS', @level2type=N'COLUMN',@level2name=N'AZDSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电话端口' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_01_XSSS', @level2type=N'COLUMN',@level2name=N'DHDK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电话号码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_01_XSSS', @level2type=N'COLUMN',@level2name=N'DHHM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'水表底数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_01_XSSS', @level2type=N'COLUMN',@level2name=N'SBDS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电表底数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_01_XSSS', @level2type=N'COLUMN',@level2name=N'DBDS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'宿舍备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_01_XSSS', @level2type=N'COLUMN',@level2name=N'SSBZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所在楼层' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_01_XSSS', @level2type=N'COLUMN',@level2name=N'SZLZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'宿舍名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_01_XSSS', @level2type=N'COLUMN',@level2name=N'SSM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'宿舍床位表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_A01_SSCW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_A01_SSCW', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'床位ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_A01_SSCW', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'宿舍楼ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_A01_SSCW', @level2type=N'COLUMN',@level2name=N'SSLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'宿舍ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_A01_SSCW', @level2type=N'COLUMN',@level2name=N'SSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'床位名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_A01_SSCW', @level2type=N'COLUMN',@level2name=N'CWM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_A01_SSCW', @level2type=N'COLUMN',@level2name=N'BZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否入住' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_A01_SSCW', @level2type=N'COLUMN',@level2name=N'SFRZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'住委会成员表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_A03_ZWHCY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_A03_ZWHCY', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'成员ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_A03_ZWHCY', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_A03_ZWHCY', @level2type=N'COLUMN',@level2name=N'YHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_A03_ZWHCY', @level2type=N'COLUMN',@level2name=N'YHLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'成员姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_A03_ZWHCY', @level2type=N'COLUMN',@level2name=N'CYXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_A03_ZWHCY', @level2type=N'COLUMN',@level2name=N'TJSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'职位名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_A03_ZWHCY', @level2type=N'COLUMN',@level2name=N'ZWMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工作内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_A03_ZWHCY', @level2type=N'COLUMN',@level2name=N'GZNR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户住宿记录表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_A02_YHZSJL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_A02_YHZSJL', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'住宿记录ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_A02_YHZSJL', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_A02_YHZSJL', @level2type=N'COLUMN',@level2name=N'YHID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'宿舍楼ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_A02_YHZSJL', @level2type=N'COLUMN',@level2name=N'SSLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'宿舍ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_A02_YHZSJL', @level2type=N'COLUMN',@level2name=N'SSID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'床位ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_A02_YHZSJL', @level2type=N'COLUMN',@level2name=N'CWID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_A02_YHZSJL', @level2type=N'COLUMN',@level2name=N'YHXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'入住人类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_A02_YHZSJL', @level2type=N'COLUMN',@level2name=N'RZRLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'入住时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_A02_YHZSJL', @level2type=N'COLUMN',@level2name=N'RZSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_A02_YHZSJL', @level2type=N'COLUMN',@level2name=N'SHZT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_A02_YHZSJL', @level2type=N'COLUMN',@level2name=N'SHSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZFC_08_A02_YHZSJL', @level2type=N'COLUMN',@level2name=N'SHR'
GO
