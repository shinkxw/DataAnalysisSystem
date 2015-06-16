--空间名：EDU_SYS  生成器：SqlBuilder0.1

if exists (select 1 from  sysobjects where  id = object_id('EDU_SYS_01_CONFIG')
            and   type = 'U')
   drop table EDU_SYS_01_CONFIG
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_SYS_01_XN')
            and   type = 'U')
   drop table EDU_SYS_01_XN
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_SYS_01_MODULE')
            and   type = 'U')
   drop table EDU_SYS_01_MODULE
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_SYS_01_MICROMODULE')
            and   type = 'U')
   drop table EDU_SYS_01_MICROMODULE
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_SYS_19_BZSJLX')
            and   type = 'U')
   drop table EDU_SYS_19_BZSJLX
go

if exists (select 1 from  sysobjects where  id = object_id('EDU_SYS_19_BZSJ')
            and   type = 'U')
   drop table EDU_SYS_19_BZSJ
go
--全局配置表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_SYS_01_CONFIG]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_SYS_01_CONFIG](
	[ID]  int  NOT NULL,--配置ID
	[VALUE]  nvarchar(200)  NOT NULL,--配置值
CONSTRAINT [PK_EDU_SYS_01_CONFIG] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

INSERT INTO [EDU_SYS_01_CONFIG]([ID] ,[VALUE]) VALUES('1001', 'http://www.114school.com/yxt/index.html')
INSERT INTO [EDU_SYS_01_CONFIG]([ID] ,[VALUE]) VALUES('1002', 'http://sso.114school.com/cas/')
INSERT INTO [EDU_SYS_01_CONFIG]([ID] ,[VALUE]) VALUES('1003', 'http://www2.114school.com/203S/api4LoginUser.do')
INSERT INTO [EDU_SYS_01_CONFIG]([ID] ,[VALUE]) VALUES('1004', 'http://122.229.30.151:8888/MsgService/SiServer')
INSERT INTO [EDU_SYS_01_CONFIG]([ID] ,[VALUE]) VALUES('1005', '0573')
INSERT INTO [EDU_SYS_01_CONFIG]([ID] ,[VALUE]) VALUES('1006', '83572000')
INSERT INTO [EDU_SYS_01_CONFIG]([ID] ,[VALUE]) VALUES('1007', '83572499')
INSERT INTO [EDU_SYS_01_CONFIG]([ID] ,[VALUE]) VALUES('2001', '600')
INSERT INTO [EDU_SYS_01_CONFIG]([ID] ,[VALUE]) VALUES('9001', '关闭性能检测')
INSERT INTO [EDU_SYS_01_CONFIG]([ID] ,[VALUE]) VALUES('9002', '开启性能检测')

--学年表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_SYS_01_XN]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_SYS_01_XN](
	[ID]  int  NOT NULL,--编号
	[SCHOOLID]  int  NOT NULL,--学校名
	[XN]  nvarchar(9)  NOT NULL,--学年
CONSTRAINT [PK_EDU_SYS_01_XN] PRIMARY KEY CLUSTERED
(
	[ID] ASC,
	[SCHOOLID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO


--导航表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_SYS_01_MODULE]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_SYS_01_MODULE](
	[ID]  int  NOT NULL,--
	[APPID]  int  NOT NULL,--
	[NAME]  nvarchar(20)  NOT NULL,--
	[Depth]  int  NOT NULL,--
	[PID]  int  NOT NULL,--
	[MenuDisp]  int  NOT NULL,--
	[MenuUserType]  int  NOT NULL,--
	[Link]  nvarchar(100)  NOT NULL,--
	[OrderIndex]  int  NOT NULL,--
CONSTRAINT [PK_EDU_SYS_01_MODULE] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO


--微导航表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_SYS_01_MICROMODULE]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_SYS_01_MICROMODULE](
	[ID]  int  NOT NULL,--编号
	[MODULEID]  int  NOT NULL,--模块ID
	[NAME]  nvarchar(20)  NOT NULL,--名称
	[URL]  nvarchar(300)  NOT NULL,--网址
	[PICTYPE]  int  NOT NULL,--图片类型
	[PIC1]  nvarchar(300)  NOT NULL,--图片一
	[PIC2]  nvarchar(300)  NOT NULL,--图片二
CONSTRAINT [PK_EDU_SYS_01_MICROMODULE] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO


--标准数据类型表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_SYS_19_BZSJLX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_SYS_19_BZSJLX](
	[ID]  int  NOT NULL,--编号
	[SJLXMC]  nvarchar(50)  NOT NULL,--数据类型名称
CONSTRAINT [PK_EDU_SYS_19_BZSJLX] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

INSERT INTO [EDU_SYS_19_BZSJLX]([ID] ,[SJLXMC]) VALUES('1', '国家标准')
INSERT INTO [EDU_SYS_19_BZSJLX]([ID] ,[SJLXMC]) VALUES('2', '教育标准')
INSERT INTO [EDU_SYS_19_BZSJLX]([ID] ,[SJLXMC]) VALUES('3', '中职标准')
INSERT INTO [EDU_SYS_19_BZSJLX]([ID] ,[SJLXMC]) VALUES('4', '自建标准')

--标准数据表
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EDU_SYS_19_BZSJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EDU_SYS_19_BZSJ](
	[ID]  int  NOT NULL,--编号
	[BZSJMC]  nvarchar(50)  NOT NULL,--标准数据名称
	[SJLXID]  int  NOT NULL,--数据类型ID
	[GLLJ]  nvarchar(200)  NOT NULL,--管理链接
CONSTRAINT [PK_EDU_SYS_19_BZSJ] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO

INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('1', '政治面貌代码', '1', '/gb/zzmm/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('2', '专业技术职务代码', '1', '/gb/zyjszw/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('3', '职业分类与代码', '1', '/gb/zyfl/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('4', '职务级别代码', '1', '/gb/zwjbdm/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('5', '宗教信仰代码', '1', '/gb/zjxy/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('6', '中华人民共和国行政区划代码', '1', '/gb/zhrmghgxzqh/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('7', '中国语种代码', '1', '/gb/zgyz/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('8', '中国各民族名称的罗马字母拼写法和代码', '1', '/gb/zggmzmcdlmzmpxf/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('9', '语种名称代码2字母代码', '1', '/gb/yzmcezm/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('10', '学历代码', '1', '/gb/xl/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('11', '文献保密等级代码与标识', '1', '/gb/wxbmzj/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('12', '世界各国和地区名称代码', '1', '/gb/sjgghdqmc/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('13', '人的性别代码', '1', '/gb/rdxb/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('14', '教育培训结果代码', '1', '/gb/jypxjg/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('15', '家庭关系代码', '1', '/gb/jtgx/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('16', '健康状况1位数字代码', '1', '/gb/jkzkywsz/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('17', '婚姻状况代码', '1', '/gb/hyzz/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('18', '户口类别代码', '1', '/gb/hklb/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('19', '两位高等学校档案实体分类码', '1', '/gb/lwgdxxdastfl/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('20', '从业状况（个人身份）代码', '1', '/gb/cyzk/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('21', '中央专项投资补助名称代码', '2', '/jy/zyzxtzbzmc/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('22', '中小学课程等级代码', '2', '/jy/zxxkcdj/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('23', '中小学课程代码', '2', '/jy/zxxkc/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('24', '中小学编制类别代码', '2', '/jy/zxxbzlb/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('25', '中小学班级类型代码', '2', '/jy/zxxbjlx/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('26', '注册状况代码', '2', '/jy/zczk/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('27', '阅办类别代码', '2', '/jy/yblb/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('28', '学校（教育机构）举办者代码', '2', '/jy/xxjyjgjbz/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('29', '学校单位层次代码', '2', '/jy/xxdwcc/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('30', '学校办别代码', '2', '/jy/xxbb/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('31', '血型代码', '2', '/jy/xx/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('32', '学生类别代码', '2', '/jy/xslb/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('33', '学生当前状态代码', '2', '/jy/xsdqzt/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('34', '学期代码', '2', '/jy/xq/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('35', '学籍异动原因代码', '2', '/jy/xjydyy/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('36', '学籍异动类别代码', '2', '/jy/xjydlb/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('37', '文物建筑等级代码', '2', '/jy/wwjzdj/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('38', '文件分类代码', '2', '/jy/wjfl/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('39', '所在地区经济属性代码', '2', '/jy/szdqjjsx/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('40', '所在地城乡类型代码', '2', '/jy/szdcxlx/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('41', '使用状况代码', '2', '/jy/syzk/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('42', '少数民族双语教学模式代码', '2', '/jy/ssmzsyjxms/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('43', '授课方式代码', '2', '/jy/skfs/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('44', '身份证件类型代码', '2', '/jy/sfzjlx/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('45', '是否标志代码', '2', '/jy/sfbz/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('46', '任课学段代码', '2', '/jy/rkxd/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('47', '任课角色代码', '2', '/jy/rkjs/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('48', '抗震设防烈度代码', '2', '/jy/kzsfld/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('49', '抗震设防标准代码', '2', '/jy/kzsfbz/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('50', '考试性质代码', '2', '/jy/ksxz/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('51', '考试形式代码', '2', '/jy/ksxs/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('52', '考试方式代码', '2', '/jy/ksfs/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('53', '困难原因代码', '2', '/jy/knyy/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('54', '困难程度代码', '2', '/jy/kncd/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('55', '课程属性代码', '2', '/jy/kcsx/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('56', '建筑物状况代码', '2', '/jy/jzwzk/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('57', '建筑物用途代码', '2', '/jy/jzwyt/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('58', '建筑物平面形式代码', '2', '/jy/jzwpmxs/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('59', '建筑物楼板形式代码', '2', '/jy/jzwlbxs/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('60', '建筑物结构代码', '2', '/jy/jzwjg/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('61', '建筑物基础形式代码', '2', '/jy/jzwjcxs/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('62', '建筑物分类代码', '2', '/jy/jzwfl/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('63', '教职工类别代码', '2', '/jy/jzglb/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('64', '教职工当前状态代码', '2', '/jy/jzgdqzt/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('65', '奖学金类型代码', '2', '/jy/jxjlx/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('66', '家庭类别代码', '2', '/jy/jtlb/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('67', '奖励资助资金来源代码', '2', '/jy/jlzzzjly/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('68', '紧急程度代码', '2', '/jy/jjcd/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('69', '经费来源代码', '2', '/jy/jfly/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('70', '岗位职业代码', '2', '/jy/gwzy/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('71', '岗位类别代码', '2', '/jy/gwlb/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('72', '公文封装方式代码', '2', '/jy/gwfzfs/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('73', '供暖方式代码', '2', '/jy/gnfs/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('74', '港澳台侨外代码', '2', '/jy/gatqw/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('75', '发送方式代码', '2', '/jy/fsfs/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('76', '附加分类别代码', '2', '/jy/fjflb/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('77', '一位档案保管期限代码', '2', '/jy/ywdabgqx/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('78', '产权代码', '2', '/jy/cq/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('79', '编制类别代码', '2', '/jy/bzlb/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('80', '办学类型代码', '2', '/jy/bxlx/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('81', '考评主体代码', '4', '/zj/kpzt/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('82', '调课类型代码', '4', '/zj/tklx/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('83', '专业目录代码', '4', '/zj/zyml/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('84', '自建专业代码', '4', '/zj/zjzy/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('85', '户籍性质代码', '4', '/zj/hjxz/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('86', '毕业生类型代码', '4', '/zj/byslx/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('87', '加班类型代码', '4', '/zj/jblx/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('88', '助学金分类代码', '3', '/zz/zxjfl/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('89', '评估情况代码', '3', '/zz/pgqk/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('90', '课程分类代码', '3', '/zz/kcfl/index')
INSERT INTO [EDU_SYS_19_BZSJ]([ID] ,[BZSJMC] ,[SJLXID] ,[GLLJ]) VALUES('91', '驾考科目代码', '3', '/zz/jkkm/index')

--以下为添加注释语句
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'全局配置表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_SYS_01_CONFIG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'配置ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_SYS_01_CONFIG', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'配置值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_SYS_01_CONFIG', @level2type=N'COLUMN',@level2name=N'VALUE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学年表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_SYS_01_XN'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_SYS_01_XN', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学校名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_SYS_01_XN', @level2type=N'COLUMN',@level2name=N'SCHOOLID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'学年' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_SYS_01_XN', @level2type=N'COLUMN',@level2name=N'XN'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'导航表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_SYS_01_MODULE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微导航表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_SYS_01_MICROMODULE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_SYS_01_MICROMODULE', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'模块ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_SYS_01_MICROMODULE', @level2type=N'COLUMN',@level2name=N'MODULEID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_SYS_01_MICROMODULE', @level2type=N'COLUMN',@level2name=N'NAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'网址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_SYS_01_MICROMODULE', @level2type=N'COLUMN',@level2name=N'URL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图片类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_SYS_01_MICROMODULE', @level2type=N'COLUMN',@level2name=N'PICTYPE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图片一' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_SYS_01_MICROMODULE', @level2type=N'COLUMN',@level2name=N'PIC1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图片二' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_SYS_01_MICROMODULE', @level2type=N'COLUMN',@level2name=N'PIC2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标准数据类型表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_SYS_19_BZSJLX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_SYS_19_BZSJLX', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据类型名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_SYS_19_BZSJLX', @level2type=N'COLUMN',@level2name=N'SJLXMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标准数据表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_SYS_19_BZSJ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_SYS_19_BZSJ', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标准数据名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_SYS_19_BZSJ', @level2type=N'COLUMN',@level2name=N'BZSJMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据类型ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_SYS_19_BZSJ', @level2type=N'COLUMN',@level2name=N'SJLXID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'管理链接' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EDU_SYS_19_BZSJ', @level2type=N'COLUMN',@level2name=N'GLLJ'
GO
