--空间名：EDU_ZXJZ  生成器：SqlBuilder0.1

if exists (select 1 from  sysobjects where  id = object_id('EDU_ZXJZ_01_01_JZGJBSJ')
            and   type = 'U')
   drop table EDU_ZXJZ_01_01_JZGJBSJ
go
--教职工基本数据子类表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_ZXJZ_01_01_JZGJBSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_ZXJZ_01_01_JZGJBSJ](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校名
	[GH]  nvarchar(20)  NOT NULL,--工号
	[XM]  nvarchar(36)  NOT NULL,--姓名
	[YWXM]  nvarchar(60)  NULL,--英文姓名
	[XMPY]  nvarchar(60)  NULL,--姓名拼音
	[CYM]  nvarchar(36)  NULL,--曾用名
	[XBM]  nvarchar(1)  NOT NULL,--性别码
	[CSRQ]  nvarchar(8)  NOT NULL,--出生日期
	[CSDM]  nvarchar(6)  NOT NULL,--出生地码
	[JG]  nvarchar(20)  NULL,--籍贯
	[MZM]  nvarchar(2)  NULL,--民族码
	[GJDQM]  nvarchar(3)  NOT NULL,--国籍/地区码
	[SFZJLXM]  nvarchar(1)  NOT NULL,--身份证件类型码
	[SFZJH]  nvarchar(20)  NOT NULL,--身份证件号
	[HYZKM]  nvarchar(2)  NULL,--婚姻状况码
	[GATQWM]  nvarchar(2)  NULL,--港澳台侨外码
	[ZZMMM]  nvarchar(2)  NOT NULL,--政治面貌码
	[JKZKM]  nvarchar(1)  NULL,--健康状况码
	[XYZJM]  nvarchar(2)  NULL,--信仰宗教码
	[XXM]  nvarchar(1)  NULL,--血型码
	[ZP]  nvarchar(200)  NULL,--照片
	[SFZJYXQ]  nvarchar(1)  NULL,--身份证件有效期
	[JGH]  nvarchar(40)  NOT NULL,--机构号
	[JTZZ]  nvarchar(180)  NULL,--家庭住址
	[XZZ]  nvarchar(180)  NULL,--现住址
	[HKSZD]  nvarchar(180)  NULL,--户口所在地
	[HKXZM]  nvarchar(1)  NULL,--户口性质码
	[XLM]  nvarchar(2)  NOT NULL,--学历码
	[GZNY]  nvarchar(6)  NULL,--参加工作年月
	[LXNY]  nvarchar(6)  NULL,--来校年月
	[CJNY]  nvarchar(6)  NULL,--从教年月
	[BZLBM]  nvarchar(1)  NOT NULL,--编制类别码
	[DABH]  nvarchar(10)  NOT NULL,--档案编号
	[DAWB]  text  NULL,--档案文本
	[TXDZ]  nvarchar(180)  NULL,--通信地址
	[LXDH]  nvarchar(30)  NULL,--联系电话
	[YZBM]  nvarchar(6)  NULL,--邮政编码
	[DZXX]  nvarchar(40)  NULL,--电子信箱
	[ZYDZ]  nvarchar(60)  NULL,--主页地址
	[TC]  text  NULL,--特长
	[GWZYM]  nvarchar(2)  NOT NULL,--岗位职业码
	[ZYRKXD]  nvarchar(1)  NOT NULL,--主要任课学段
CONSTRAINT [PK_EDU_ZXJZ_01_01_JZGJBSJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

--以下为添加注释语句
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教职工基本数据子类表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'GH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'XM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'英文姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'YWXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'姓名拼音' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'XMPY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'曾用名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'CYM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'性别码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'XBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'出生日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'CSRQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'出生地码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'CSDM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'籍贯' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'JG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'民族码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'MZM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'国籍/地区码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'GJDQM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'身份证件类型码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'SFZJLXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'身份证件号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'SFZJH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'婚姻状况码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'HYZKM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'港澳台侨外码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'GATQWM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'政治面貌码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'ZZMMM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'健康状况码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'JKZKM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'信仰宗教码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'XYZJM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'血型码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'XXM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'照片' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'ZP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'身份证件有效期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'SFZJYXQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'机构号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'JGH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'家庭住址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'JTZZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'现住址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'XZZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'户口所在地' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'HKSZD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'户口性质码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'HKXZM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学历码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'XLM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'参加工作年月' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'GZNY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'来校年月' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'LXNY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'从教年月' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'CJNY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编制类别码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'BZLBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'档案编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'DABH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'档案文本' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'DAWB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'通信地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'TXDZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'LXDH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'邮政编码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'YZBM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电子信箱' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'DZXX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主页地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'ZYDZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'特长' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'TC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'岗位职业码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'GWZYM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主要任课学段' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_ZXJZ_01_01_JZGJBSJ', @level2type=N'COLUMN',@level2name=N'ZYRKXD'
GO
