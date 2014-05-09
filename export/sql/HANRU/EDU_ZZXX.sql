--空间名：EDU_ZZXX  生成器：SqlBuilder0.1

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZXX_01_01_ZZXX')
            and   type = 'U')
   drop table EDU_ZZXX_01_01_ZZXX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZXX_02_01_ZZXQSJ')
            and   type = 'U')
   drop table EDU_ZZXX_02_01_ZZXQSJ
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZXX_03_01_XNJG')
            and   type = 'U')
   drop table EDU_ZZXX_03_01_XNJG
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZZXX_10_A01_XYAQSJ')
            and   type = 'U')
   drop table EDU_ZZXX_10_A01_XYAQSJ
go
--学校基本数据表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZXX_01_01_ZZXX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZXX_01_01_ZZXX](
	[ID]  int  NOT NULL,--编号
	[XXDM]  nvarchar(10)  NOT NULL,--学校代码
	[XXMC]  nvarchar(60)  NOT NULL,--学校名称
	[XXYWMC]  nvarchar(60)  NULL,--学校英文名称
	[XXJBZM]  nvarchar(3)  NOT NULL,--学校举办者码
	[XXZGBMM]  nvarchar(3)  NOT NULL,--学校主管部门码
	[XXDZ]  nvarchar(180)  NOT NULL,--学校地址
	[XXYZBM]  nvarchar(6)  NOT NULL,--学校邮政编码
	[XZQHM]  nvarchar(6)  NOT NULL,--行政区划码
	[JXNY]  nvarchar(6)  NOT NULL,--建校年月
	[XQR]  nvarchar(60)  NOT NULL,--校庆日
	[CLBJ]  text  NULL,--成立背景
	[LSYG]  text  NULL,--历史沿革
	[XXXQS]  decimal(2, 0)  NOT NULL,--学校校区数
	[XXPGLX]  nvarchar(1)  NULL,--学校评估类型
	[XXPGQKSM]  text  NOT NULL,--学校评估情况说明
	[ZYDZ]  nvarchar(60)  NOT NULL,--主页地址
	[FDDBRH]  nvarchar(30)  NOT NULL,--法定代表人号
	[FRZSH]  nvarchar(20)  NOT NULL,--法人证书号
	[LXDH]  nvarchar(30)  NOT NULL,--联系电话
	[CZDH]  nvarchar(30)  NOT NULL,--传真电话
	[DZXX]  nvarchar(40)  NOT NULL,--电子信箱
CONSTRAINT [PK_EDU_ZZXX_01_01_ZZXX] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--校区数据表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZXX_02_01_ZZXQSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZXX_02_01_ZZXQSJ](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校名
	[XQDM]  nvarchar(2)  NOT NULL,--校区代码
	[XQMC]  nvarchar(30)  NOT NULL,--校区名称
	[XQDZ]  nvarchar(180)  NOT NULL,--校区地址
	[XQLXDH]  nvarchar(30)  NOT NULL,--校区联系电话
	[XQFZRH]  nvarchar(20)  NOT NULL,--校区负责人号
	[DZYJ]  nvarchar(40)  NOT NULL,--电子邮件
	[XQYZBM]  nvarchar(6)  NOT NULL,--校区邮政编码
	[XQSZDXZQHM]  nvarchar(6)  NULL,--校区所在地行政区划码
	[XQMJ]  decimal(20, 0)  NOT NULL,--校区面积
	[XQJZMJ]  decimal(20, 0)  NULL,--校区建筑面积
	[XQJXKYSBZZ]  decimal(10, 2)  NULL,--校区教学科研仪器设备总值
	[XQGDZCZZ]  decimal(10, 2)  NULL,--校区固定资产总值
CONSTRAINT [PK_EDU_ZZXX_02_01_ZZXQSJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--校内机构数据类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZXX_03_01_XNJG]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZXX_03_01_XNJG](
	[JGH]  nvarchar(6)  NOT NULL,--机构号
	[SCHOOLID]  int  NOT NULL,--学校名
	[JGMC]  nvarchar(100)  NOT NULL,--机构名称
	[JGYWMC]  nvarchar(100)  NULL,--机构英文名称
	[JGJC]  nvarchar(50)  NOT NULL,--机构简称
	[JGJP]  nvarchar(20)  NOT NULL,--机构简拼
	[JGDZ]  nvarchar(180)  NOT NULL,--机构地址
	[LSSJJGH]  nvarchar(6)  NOT NULL,--隶属上级机构号
	[LSXQH]  nvarchar(2)  NOT NULL,--隶属校区号
	[JGYXBS]  nvarchar(1)  NOT NULL,--机构有效标识
	[SFST]  nvarchar(1)  NOT NULL,--是否实体
	[JLNY]  nvarchar(6)  NULL,--建立年月
	[JGYZBM]  nvarchar(6)  NULL,--机构邮政编码
	[FZRH]  nvarchar(20)  NOT NULL,--负责人号
CONSTRAINT [PK_EDU_ZZXX_03_01_XNJG] PRIMARY KEY CLUSTERED
(
	[JGH] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--校园安全数据表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZZXX_10_A01_XYAQSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZZXX_10_A01_XYAQSJ](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校
	[BT]  nvarchar(100)  NOT NULL,--标题
	[NR]  text  NOT NULL,--内容
	[FBSJ]  datetime  NULL,--发布时间
	[FBRID]  nvarchar(20)  NOT NULL,--发布人ID
	[FBDW]  nvarchar(100)  NOT NULL,--发布单位
	[SFXS]  nvarchar(1)  NOT NULL,--是否显示
CONSTRAINT [PK_EDU_ZZXX_10_A01_XYAQSJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--以下为添加注释语句
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校基本数据表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_01_01_ZZXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_01_01_ZZXX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校代码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_01_01_ZZXX', @level2type=N'COLUMN',@level2name=N'XXDM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_01_01_ZZXX', @level2type=N'COLUMN',@level2name=N'XXMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校英文名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_01_01_ZZXX', @level2type=N'COLUMN',@level2name=N'XXYWMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校举办者码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_01_01_ZZXX', @level2type=N'COLUMN',@level2name=N'XXJBZM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校主管部门码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_01_01_ZZXX', @level2type=N'COLUMN',@level2name=N'XXZGBMM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_01_01_ZZXX', @level2type=N'COLUMN',@level2name=N'XXDZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校邮政编码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_01_01_ZZXX', @level2type=N'COLUMN',@level2name=N'XXYZBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'行政区划码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_01_01_ZZXX', @level2type=N'COLUMN',@level2name=N'XZQHM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建校年月' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_01_01_ZZXX', @level2type=N'COLUMN',@level2name=N'JXNY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'校庆日' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_01_01_ZZXX', @level2type=N'COLUMN',@level2name=N'XQR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'成立背景' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_01_01_ZZXX', @level2type=N'COLUMN',@level2name=N'CLBJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'历史沿革' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_01_01_ZZXX', @level2type=N'COLUMN',@level2name=N'LSYG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校校区数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_01_01_ZZXX', @level2type=N'COLUMN',@level2name=N'XXXQS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校评估类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_01_01_ZZXX', @level2type=N'COLUMN',@level2name=N'XXPGLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校评估情况说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_01_01_ZZXX', @level2type=N'COLUMN',@level2name=N'XXPGQKSM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主页地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_01_01_ZZXX', @level2type=N'COLUMN',@level2name=N'ZYDZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'法定代表人号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_01_01_ZZXX', @level2type=N'COLUMN',@level2name=N'FDDBRH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'法人证书号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_01_01_ZZXX', @level2type=N'COLUMN',@level2name=N'FRZSH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_01_01_ZZXX', @level2type=N'COLUMN',@level2name=N'LXDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'传真电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_01_01_ZZXX', @level2type=N'COLUMN',@level2name=N'CZDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电子信箱' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_01_01_ZZXX', @level2type=N'COLUMN',@level2name=N'DZXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'校区数据表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_02_01_ZZXQSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_02_01_ZZXQSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_02_01_ZZXQSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'校区代码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_02_01_ZZXQSJ', @level2type=N'COLUMN',@level2name=N'XQDM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'校区名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_02_01_ZZXQSJ', @level2type=N'COLUMN',@level2name=N'XQMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'校区地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_02_01_ZZXQSJ', @level2type=N'COLUMN',@level2name=N'XQDZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'校区联系电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_02_01_ZZXQSJ', @level2type=N'COLUMN',@level2name=N'XQLXDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'校区负责人号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_02_01_ZZXQSJ', @level2type=N'COLUMN',@level2name=N'XQFZRH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电子邮件' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_02_01_ZZXQSJ', @level2type=N'COLUMN',@level2name=N'DZYJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'校区邮政编码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_02_01_ZZXQSJ', @level2type=N'COLUMN',@level2name=N'XQYZBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'校区所在地行政区划码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_02_01_ZZXQSJ', @level2type=N'COLUMN',@level2name=N'XQSZDXZQHM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'校区面积' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_02_01_ZZXQSJ', @level2type=N'COLUMN',@level2name=N'XQMJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'校区建筑面积' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_02_01_ZZXQSJ', @level2type=N'COLUMN',@level2name=N'XQJZMJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'校区教学科研仪器设备总值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_02_01_ZZXQSJ', @level2type=N'COLUMN',@level2name=N'XQJXKYSBZZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'校区固定资产总值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_02_01_ZZXQSJ', @level2type=N'COLUMN',@level2name=N'XQGDZCZZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'校内机构数据类表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_03_01_XNJG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'机构号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_03_01_XNJG', @level2type=N'COLUMN',@level2name=N'JGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_03_01_XNJG', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'机构名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_03_01_XNJG', @level2type=N'COLUMN',@level2name=N'JGMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'机构英文名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_03_01_XNJG', @level2type=N'COLUMN',@level2name=N'JGYWMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'机构简称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_03_01_XNJG', @level2type=N'COLUMN',@level2name=N'JGJC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'机构简拼' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_03_01_XNJG', @level2type=N'COLUMN',@level2name=N'JGJP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'机构地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_03_01_XNJG', @level2type=N'COLUMN',@level2name=N'JGDZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'隶属上级机构号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_03_01_XNJG', @level2type=N'COLUMN',@level2name=N'LSSJJGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'隶属校区号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_03_01_XNJG', @level2type=N'COLUMN',@level2name=N'LSXQH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'机构有效标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_03_01_XNJG', @level2type=N'COLUMN',@level2name=N'JGYXBS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否实体' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_03_01_XNJG', @level2type=N'COLUMN',@level2name=N'SFST'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'建立年月' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_03_01_XNJG', @level2type=N'COLUMN',@level2name=N'JLNY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'机构邮政编码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_03_01_XNJG', @level2type=N'COLUMN',@level2name=N'JGYZBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'负责人号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_03_01_XNJG', @level2type=N'COLUMN',@level2name=N'FZRH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'校园安全数据表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_10_A01_XYAQSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_10_A01_XYAQSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_10_A01_XYAQSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_10_A01_XYAQSJ', @level2type=N'COLUMN',@level2name=N'BT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_10_A01_XYAQSJ', @level2type=N'COLUMN',@level2name=N'NR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发布时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_10_A01_XYAQSJ', @level2type=N'COLUMN',@level2name=N'FBSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发布人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_10_A01_XYAQSJ', @level2type=N'COLUMN',@level2name=N'FBRID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发布单位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_10_A01_XYAQSJ', @level2type=N'COLUMN',@level2name=N'FBDW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否显示' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZZXX_10_A01_XYAQSJ', @level2type=N'COLUMN',@level2name=N'SFXS'
GO
